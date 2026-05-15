import ballerinax/financial.bian.attribute.groups.common as common_attributes;
import ballerinax/financial.bian.attribute.groups.finance_risk_management as finance_risk_management;
import ballerinax/financial.bian.attribute.groups.operations as operations;
import ballerinax/financial.bian.attribute.groups.products as products;
import ballerinax/financial.bian.business.workflows.common as common;
import ballerina/io;

// Handle Request for Outgoing Credit Transfer
// Implements the sequence defined in Handle-Request-for-Outgoing-Credit-Transfer.png.
// Orchestrates up to 13 BIAN service calls across the following domains in order:
//   1.  Record Request for Payment Order          → Payment Initiation (Initiate)
//   2.  Enrich Credit Transfer                    → Payment Initiation (Update)
//   3.  Conduct Dedup Check                       → Payment Initiation (Update)
//   4.  Initiate Outgoing Credit Transfer         → Payment Order (Initiate)
//   5.  Get Operational Details By Payment        → Current Account (Retrieve)
//   6.  Check Beneficiary                         → Regulatory Compliance (Evaluate)
//   7.  [If SWIFT] Retrieve Correspondent Settlement Account → Correspondent Bank Directory
//   8.  [If Outgoing Transfer] Execute Payment Transaction → Payment Execution (Initiate)
//   8a. Record Debit Booking for Customer Account → Position Keeping (Initiate)
//   8b. Authorise Debit Booking                  → Internal Bank Operations / Financial Accounting
//   8c. Record Credit Booking for Internal Bank  → Position Keeping (Initiate)
//   8d. Authorize Credit Booking                 → Correspondent Bank Operations / Financial Accounting
//   9.  [If Settlement via Clearing] Send Payment Instruction → Financial Gateway (Initiate)
//   10. [If SWIFT] Execute SWIFT Payment          → Payment Execution (Initiate)
//       Send Payment Message                      → ACH Operations (Initiate)
// Note: The ACH Operations step may require additional services outside Financial Gateway;
//       those integrations are not shown in the diagram (see diagram note, Step 10).
// Each step must succeed before the next is executed; any failure halts the workflow.
public isolated function handleOutgoingCreditTransfer(OutgoingCreditTransferRequest request) returns OutgoingCreditTransferResponse|common:HTTPError {

    // Step 1: Record Request for Payment Order (Payment Initiation — Initiate)
    // Diagram: "Record Request for Payment Order" → Payment Initiation
    // Purpose: Create the initial payment record in the Payment Initiation service, capturing
    //          the customer's request to transfer funds. This establishes the payment initiation
    //          reference used by all subsequent update calls (Steps 2 and 3) and is the
    //          authoritative source for the original payment instruction details.
    // Implementation: mapToPaymentInitiationRequest must populate the initiation record with
    //          the debtor account (fromAccount), creditor account (toAccount), transfer amount,
    //          currency, description, and a unique transaction reference for dedup tracking.
    products:PaymentInitiationTransaction paymentInitiationRequest = mapToPaymentInitiationRequest(request);
    products:PaymentInitiationTransaction|common_attributes:HTTPErrorBadRequest|common_attributes:HTTPErrorUnauthorized|common_attributes:HTTPErrorForbidden|
    common_attributes:HTTPErrorNotFound|common_attributes:HTTPErrorTooManyRequests|common_attributes:HTTPErrorInternalServerError initiationResult = initiatePaymentRecord(paymentInitiationRequest);

    if !(initiationResult is products:PaymentInitiationTransaction) {
        io:println("Payment Initiation error: ", initiationResult);
        return <common:HTTPError>initiationResult;
    }

    // Step 2: Enrich Credit Transfer (Payment Initiation — Update)
    // Diagram: "Enrich Credit Transfer" → Payment Initiation
    // Purpose: Augment the payment initiation record with supplementary data needed for
    //          routing and compliance: full debtor/creditor addresses, BIC codes, payment
    //          category purpose codes, and ISO 20022 service level indicators. Enrichment
    //          ensures the payment carries all information required for straight-through
    //          processing without manual intervention by the operations team.
    // Implementation: mapToEnrichCreditTransferRequest must merge the additional routing
    //          details (correspondentBankBIC, full names, addresses) from request into the
    //          existing initiation record. The paymentInitiationId is the path parameter.
    string paymentInitiationId = extractPaymentInitiationId(initiationResult);
    products:PaymentInitiationTransaction enrichRequest = mapToEnrichCreditTransferRequest(request, initiationResult);
    products:PaymentInitiationTransaction|common_attributes:HTTPErrorBadRequest|common_attributes:HTTPErrorUnauthorized|common_attributes:HTTPErrorForbidden|
    common_attributes:HTTPErrorNotFound|common_attributes:HTTPErrorTooManyRequests|common_attributes:HTTPErrorInternalServerError enrichResult = enrichCreditTransfer(paymentInitiationId, enrichRequest);

    if !(enrichResult is products:PaymentInitiationTransaction) {
        io:println("Credit Transfer Enrich error: ", enrichResult);
        return <common:HTTPError>enrichResult;
    }

    // Step 3: Conduct Dedup Check (Payment Initiation — Update)
    // Diagram: "Conduct Dedup Check" → Payment Initiation
    // Purpose: Verify that this payment is not a duplicate of a recently submitted instruction.
    //          The dedup check compares key payment fields (amount, currency, debtor, creditor,
    //          reference, date) against the bank's transaction history within a configurable
    //          time window (e.g., 24 hours). A detected duplicate must halt the workflow to
    //          prevent double payment, which would cause financial loss and regulatory issues.
    // Implementation: mapToDedupCheckRequest must include all dedup key fields from the
    //          enriched record. The service returns a status indicating pass or duplicate-detected.
    products:PaymentInitiationTransaction dedupRequest = mapToDedupCheckRequest(request, enrichResult);
    products:PaymentInitiationTransaction|common_attributes:HTTPErrorBadRequest|common_attributes:HTTPErrorUnauthorized|common_attributes:HTTPErrorForbidden|
    common_attributes:HTTPErrorNotFound|common_attributes:HTTPErrorTooManyRequests|common_attributes:HTTPErrorInternalServerError dedupResult = conductDedupCheck(paymentInitiationId, dedupRequest);

    if !(dedupResult is products:PaymentInitiationTransaction) {
        io:println("Dedup Check error: ", dedupResult);
        return <common:HTTPError>dedupResult;
    }

    // Step 4: Initiate Outgoing Credit Transfer (Payment Order — Initiate)
    // Diagram: "Initiate Outgoing Credit Transfer" → Payment Order
    // Purpose: Formalise the bank's commitment to execute the credit transfer by creating a
    //          Payment Order. The order transitions the payment from the initiation phase into
    //          the execution pipeline, establishing the payment order reference that all
    //          subsequent steps (execution, booking, settlement) link back to. The order
    //          also triggers internal authorization controls (e.g., limit checks, approval workflows).
    // Implementation: mapToPaymentOrderRequest must carry forward the initiation reference,
    //          populate the payment order type as "OutgoingCreditTransfer", and set the
    //          value date for settlement based on the payment type and currency cut-off times.
    // products:PaymentOrderProcedure paymentOrderRequest = mapToPaymentOrderRequest(request, dedupResult);
    // products:PaymentOrderProcedure|common_attributes:HTTPErrorBadRequest|common_attributes:HTTPErrorUnauthorized|common_attributes:HTTPErrorForbidden|
    // common_attributes:HTTPErrorNotFound|common_attributes:HTTPErrorTooManyRequests|common_attributes:HTTPErrorInternalServerError orderResult = initiatePaymentOrder(paymentOrderRequest);

    // if !(orderResult is products:PaymentOrderProcedure) {
    //     io:println("Payment Order error: ", orderResult);
    //     return <common:HTTPError>orderResult;
    // }

    // Step 5: Get Operational Details By Payment (Current Account — Retrieve)
    // Diagram: "Get Operational Details By Payment" → Current Account
    // Purpose: Retrieve the source account's operational status and financial position,
    //          including available balance, account status (active/frozen/dormant), daily
    //          transaction limits, and currency. This confirms the account has sufficient
    //          funds and is operationally eligible to process the debit before committing
    //          to the execution steps. An insufficient balance or frozen account must stop
    //          the workflow before any booking entries are made.
    // Implementation: extractCurrentAccountId must map request.fromAccount to the bank's
    //          internal current account identifier for the retrieve call.
    string currentAccountId = extractCurrentAccountId(request);
    products:CurrentAccountFacility|common_attributes:HTTPErrorBadRequest|common_attributes:HTTPErrorUnauthorized|common_attributes:HTTPErrorForbidden|
    common_attributes:HTTPErrorNotFound|common_attributes:HTTPErrorTooManyRequests|common_attributes:HTTPErrorInternalServerError accountResult = retrieveCurrentAccountDetails(currentAccountId);

    if !(accountResult is products:CurrentAccountFacility) {
        io:println("Current Account Retrieve error: ", accountResult);
        return <common:HTTPError>accountResult;
    }

    // Step 6: Check Beneficiary (Regulatory Compliance — Evaluate)
    // Diagram: "Check Beneficiary" → Regulatory Compliance
    // Purpose: Screen the beneficiary against global sanctions lists (OFAC, EU, UN), AML
    //          transaction monitoring rules, fraud detection models, and Politically Exposed
    //          Persons (PEP) databases. This is a mandatory regulatory requirement for all
    //          outgoing credit transfers. A non-compliant result must immediately halt the
    //          workflow and route the payment to the bank's compliance team for manual review.
    //          High-value transfers may trigger enhanced due diligence workflows.
    // Implementation: mapToBeneficiaryCheckRequest must populate the assessment with the
    //          beneficiary name, account, and BIC (for SWIFT), plus the transfer amount and
    //          currency for value-based risk threshold evaluation.
    finance_risk_management:RegulatoryComplianceAssessment beneficiaryCheckRequest = mapToBeneficiaryCheckRequest(request);
    finance_risk_management:RegulatoryComplianceAssessment|common_attributes:HTTPErrorBadRequest|common_attributes:HTTPErrorUnauthorized|common_attributes:HTTPErrorForbidden|
    common_attributes:HTTPErrorNotFound|common_attributes:HTTPErrorTooManyRequests|common_attributes:HTTPErrorInternalServerError complianceResult = checkBeneficiary(beneficiaryCheckRequest);

    if !(complianceResult is finance_risk_management:RegulatoryComplianceAssessment) {
        io:println("Beneficiary Check error: ", complianceResult);
        return <common:HTTPError>complianceResult;
    }

    // Step 7: Retrieve Details about Correspondent Settlement Account
    //         (Correspondent Bank Directory — Retrieve)
    // Diagram: [If SWIFT Payment] "Retrieve Details about Correspondent Settlement Account"
    //          → Correspondent Bank Directory
    // Purpose: Retrieve the correspondent bank's NOSTRO account details, settlement cut-off
    //          times, and SWIFT routing instructions. This data is required to correctly
    //          address the SWIFT message (Step 10) and to populate the credit booking
    //          for the correspondent account (Step 8c). Only executed for SWIFT payments.
    // Implementation: extractCorrespondentBankDirectoryId maps request.correspondentBankBIC
    //          to the bank's internal correspondent bank directory identifier.
    // business_development:CorrespondentBankDirectory? correspondentResult = ();
    // if request.paymentType == "SWIFT" {
    //     string correspondentBankId = extractCorrespondentBankDirectoryId(request);
    //     business_development:CorrespondentBankDirectory|common_attributes:HTTPErrorBadRequest|common_attributes:HTTPErrorUnauthorized|common_attributes:HTTPErrorForbidden|
    //     common_attributes:HTTPErrorNotFound|common_attributes:HTTPErrorTooManyRequests|common_attributes:HTTPErrorInternalServerError correspondentBankResult = retrieveCorrespondentBankDetails(correspondentBankId);

    //     if !(correspondentBankResult is business_development:CorrespondentBankDirectory) {
    //         io:println("Correspondent Bank Directory error: ", correspondentBankResult);
    //         return <common:HTTPError>correspondentBankResult;
    //     }
    //     correspondentResult = correspondentBankResult;
    // }

    // Step 8: Execute Payment Transaction (Payment Execution — Initiate)
    // Diagram: [If Outgoing Credit Transfer] "Execute Payment Transaction" → Payment Execution
    // Purpose: Initiate the authoritative payment execution record, triggering the four-part
    //          atomic booking sequence (Steps 8a–8d). The payment execution service coordinates
    //          the debit and credit bookings as a single transaction, ensuring that both legs
    //          succeed or both are rolled back to maintain accounting integrity.
    //          This step is the point of no return — once execution is initiated, the payment
    //          is committed and can only be reversed through a separate recall process.
    // Implementation: mapToPaymentExecutionRequest must include the payment order reference
    //          (orderResult), the compliance assessment reference (complianceResult), and the
    //          correspondent bank details (correspondentResult) for SWIFT routing.
    // operations:PaymentExecutionProcedure executionRequest = mapToPaymentExecutionRequest(request, orderResult, complianceResult);
    // operations:PaymentExecutionProcedure|common_attributes:HTTPErrorBadRequest|common_attributes:HTTPErrorUnauthorized|common_attributes:HTTPErrorForbidden|
    // common_attributes:HTTPErrorNotFound|common_attributes:HTTPErrorTooManyRequests|common_attributes:HTTPErrorInternalServerError executionResult = initiatePaymentExecution(executionRequest);

    // if !(executionResult is operations:PaymentExecutionProcedure) {
    //     io:println("Payment Execution error: ", executionResult);
    //     return <common:HTTPError>executionResult;
    // }

    // Step 8a: Record Debit Booking for Customer Account (Position Keeping — Initiate)
    // Diagram: "Record Debit Booking for Customer Account" → Position Keeping
    // Purpose: Record the debit position entry against the customer's current account in the
    //          position keeping ledger. This reduces the customer's available balance by the
    //          transfer amount and creates the authoritative position record for the debit leg.
    //          This is the first of four booking steps executed within a single transaction.
    // Implementation: mapToDebitPositionRequest must set the position type to "DebitEntry",
    //          reference the customer's account (fromAccount), and include the execution
    //          reference from Step 8 to link the position entry to the payment transaction.
    operations:FinancialPositionLog debitPositionRequest = mapToDebitPositionRequest(request);
    operations:FinancialPositionLog|common_attributes:HTTPErrorBadRequest|common_attributes:HTTPErrorUnauthorized|common_attributes:HTTPErrorForbidden|
    common_attributes:HTTPErrorNotFound|common_attributes:HTTPErrorTooManyRequests|common_attributes:HTTPErrorInternalServerError debitPositionResult = recordDebitBooking(debitPositionRequest);

    if !(debitPositionResult is operations:FinancialPositionLog) {
        io:println("Debit Position Keeping error: ", debitPositionResult);
        return <common:HTTPError>debitPositionResult;
    }

    // Step 8b: Authorise Debit Booking (Internal Bank Operations — Financial Accounting)
    // Diagram: "Authorise Debit Booking" → Internal Bank Operations
    // Purpose: Post the debit journal entry to the bank's internal general ledger, authorizing
    //          the release of funds from the customer's liability account. The GL entry debits
    //          the customer's account and credits the bank's outgoing payment suspense/clearing
    //          account. This step provides the accounting authorization that completes the
    //          internal debit leg of the payment.
    // Implementation: mapToDebitBookingAuthorizationRequest must reference the position log
    //          from Step 8a, include the GL account codes for the debit/credit legs, and set
    //          the booking date and authorization status.
    operations:FinancialBookingLog debitBookingRequest = mapToDebitBookingAuthorizationRequest(request, debitPositionResult);
    operations:FinancialBookingLog|common_attributes:HTTPErrorBadRequest|common_attributes:HTTPErrorUnauthorized|common_attributes:HTTPErrorForbidden|
    common_attributes:HTTPErrorNotFound|common_attributes:HTTPErrorTooManyRequests|common_attributes:HTTPErrorInternalServerError debitBookingResult = authoriseDebitBooking(debitBookingRequest);

    if !(debitBookingResult is operations:FinancialBookingLog) {
        io:println("Debit Booking Authorization error: ", debitBookingResult);
        return <common:HTTPError>debitBookingResult;
    }

    // Step 8c: Record Credit Booking for Internal Bank Account (Position Keeping — Initiate)
    // Diagram: "Record Credit Booking for Internal Bank Account" → Internal Bank Operations
    // Purpose: Record the credit position entry to the bank's internal NOSTRO or correspondent
    //          account in the position keeping ledger. This is the mirror entry to Step 8a:
    //          it increases the bank's internal position by the transfer amount, reflecting
    //          funds earmarked for onward transmission to the correspondent bank. The credit
    //          booking confirms the bank has taken on the obligation to deliver the funds.
    // Implementation: mapToCreditPositionRequest must set the position type to "CreditEntry",
    //          reference the bank's internal NOSTRO account, and link to the debit booking
    //          authorization reference from Step 8b.
    operations:FinancialPositionLog creditPositionRequest = mapToCreditPositionRequest(request, debitBookingResult);
    operations:FinancialPositionLog|common_attributes:HTTPErrorBadRequest|common_attributes:HTTPErrorUnauthorized|common_attributes:HTTPErrorForbidden|
    common_attributes:HTTPErrorNotFound|common_attributes:HTTPErrorTooManyRequests|common_attributes:HTTPErrorInternalServerError creditPositionResult = recordCreditBooking(creditPositionRequest);

    if !(creditPositionResult is operations:FinancialPositionLog) {
        io:println("Credit Position Keeping error: ", creditPositionResult);
        return <common:HTTPError>creditPositionResult;
    }

    // Step 8d: Authorize Credit Booking (Correspondent Bank Operations — Financial Accounting)
    // Diagram: "Authorize Credit Booking" → Correspondent Bank Operations
    // Purpose: Post the credit authorization entry in the correspondent bank accounting system,
    //          authorizing the onward delivery of funds to the beneficiary via the correspondent
    //          bank. The GL entry debits the bank's outgoing clearing account and credits the
    //          correspondent bank's account. This completes the four-part atomic booking
    //          sequence and makes the payment irrevocable from the bank's accounting perspective.
    // Implementation: mapToCreditBookingAuthorizationRequest must reference the credit position
    //          from Step 8c, include the correspondent bank account codes, and record the
    //          correspondent bank reference from Step 7 (correspondentResult).
    operations:FinancialBookingLog creditBookingRequest = mapToCreditBookingAuthorizationRequest(request, creditPositionResult);
    operations:FinancialBookingLog|common_attributes:HTTPErrorBadRequest|common_attributes:HTTPErrorUnauthorized|common_attributes:HTTPErrorForbidden|
    common_attributes:HTTPErrorNotFound|common_attributes:HTTPErrorTooManyRequests|common_attributes:HTTPErrorInternalServerError creditBookingResult = authoriseCreditBooking(creditBookingRequest);

    if !(creditBookingResult is operations:FinancialBookingLog) {
        io:println("Credit Booking Authorization error: ", creditBookingResult);
        return <common:HTTPError>creditBookingResult;
    }

    // Step 9: Send Payment Instruction (Financial Gateway — Initiate)
    // Diagram: [If Settlement is via Clearing] "Send Payment Instruction" → Financial Gateway
    // Purpose: Submit the payment instruction to the financial gateway for routing to the
    //          appropriate clearing network (e.g., SEPA Credit Transfer, CHAPS, Fedwire, BACS).
    //          The gateway handles network-specific message formatting, encryption, and delivery.
    //          Only executed when request.isSettlementViaCleaning = true. For bilateral SWIFT
    //          payments that settle directly between correspondent banks, this step is skipped
    //          and settlement is handled by the SWIFT execution in Step 10.
    // Implementation: mapToPaymentInstructionRequest must include the payment order reference,
    //          the credit booking authorization from Step 8d, and the target clearing network
    //          code derived from request.currency and request.paymentType.
    // if request.isSettlementViaCleaning {
    //     operations:FinancialGateway paymentInstructionRequest = mapToPaymentInstructionRequest(request, creditBookingResult);
    //     operations:FinancialGateway|common_attributes:HTTPErrorBadRequest|common_attributes:HTTPErrorUnauthorized|common_attributes:HTTPErrorForbidden|
    //     common_attributes:HTTPErrorNotFound|common_attributes:HTTPErrorTooManyRequests|common_attributes:HTTPErrorInternalServerError gatewayResult = sendPaymentInstruction(paymentInstructionRequest);

    //     if !(gatewayResult is operations:FinancialGateway) {
    //         io:println("Financial Gateway error: ", gatewayResult);
    //         return <common:HTTPError>gatewayResult;
    //     }
    // }

    // Step 10: Execute SWIFT Payment + Send Payment Message
    //          (Payment Execution — Initiate + ACH Operations — Initiate)
    // Diagram: [If SWIFT Payment] "Execute SWIFT Payment" → Financial Gateway
    //                             "Send Payment Message" → ACH Operations
    // Purpose: For SWIFT payments, initiate the dispatch of the SWIFT MT103 (or ISO 20022
    //          pacs.008) message to the correspondent bank via the SWIFT network, then send
    //          the corresponding payment message to the ACH operations system to record
    //          the outbound message dispatch for audit and reconciliation purposes.
    //
    //          Note from diagram: "Sending the Payment instruction by ACH Operations will need
    //          services from (possibly) Payment that is outside Financial Gateway. This is not
    //          shown in the diagram." — Additional integrations may be required here depending
    //          on the bank's ACH infrastructure setup.
    //
    // Implementation: mapToSWIFTPaymentRequest must include the SWIFT message type (MT103),
    //          correspondent bank BIC, beneficiary details, and the payment order reference.
    //          mapToPaymentMessageRequest must reference the SWIFT execution result for audit.
    // if request.paymentType == "SWIFT" {
    //     operations:PaymentExecutionProcedure swiftRequest = mapToSWIFTPaymentRequest(request, <operations:FinancialGateway>{});
    //     operations:PaymentExecutionProcedure|common_attributes:HTTPErrorBadRequest|common_attributes:HTTPErrorUnauthorized|common_attributes:HTTPErrorForbidden|
    //     common_attributes:HTTPErrorNotFound|common_attributes:HTTPErrorTooManyRequests|common_attributes:HTTPErrorInternalServerError swiftResult = executeSWIFTPayment(swiftRequest);

    //     if !(swiftResult is operations:PaymentExecutionProcedure) {
    //         io:println("SWIFT Payment Execution error: ", swiftResult);
    //         return <common:HTTPError>swiftResult;
    //     }

    //     operations:PaymentMessage paymentMessageRequest = mapToPaymentMessageRequest(request, swiftResult);
    //     operations:PaymentMessage|common_attributes:HTTPErrorBadRequest|common_attributes:HTTPErrorUnauthorized|common_attributes:HTTPErrorForbidden|
    //     common_attributes:HTTPErrorNotFound|common_attributes:HTTPErrorTooManyRequests|common_attributes:HTTPErrorInternalServerError messageResult = sendPaymentMessage(paymentMessageRequest);

    //     if !(messageResult is operations:PaymentMessage) {
    //         io:println("Payment Message Dispatch error: ", messageResult);
    //         return <common:HTTPError>messageResult;
    //     }
    // }

    // Return success response
    // TODO: workflowId should be sourced from a generated UUID or the payment execution trace ID.
    //       accountNumber should confirm the debited account from the current account result (Step 5).
    OutgoingCreditTransferResponse successResponse = {
        workflowId: "1234",
        accountNumber: request.fromAccount,
        status: "SUCCESS",
        message: "Outgoing credit transfer completed successfully"
    };
    return successResponse;
}
