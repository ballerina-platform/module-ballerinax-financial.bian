import ballerinax/financial.bian.attribute.groups.common as common_attributes;
import ballerinax/financial.bian.attribute.groups.finance_risk_management as finance_risk_management;
import ballerinax/financial.bian.attribute.groups.operations as operations;
import ballerinax/financial.bian.attribute.groups.products as products;
import ballerinax/financial.bian.business.workflows.common as common;
import ballerina/io;

// ─── Step 1: Record Request for Payment Order ────────────────────────────────

// Calls BIAN Payment Initiation v14 — Initiate endpoint.
// BIAN domain: Products | Service Domain: PaymentInitiation
// Creates the initial payment record in the Payment Initiation service, recording the
// customer's request to transfer funds. Returns a PaymentInitiationTransaction with a
// unique initiation reference used by subsequent update calls (Steps 2 and 3).
isolated function initiatePaymentRecord(products:PaymentInitiationTransaction request)
        returns products:PaymentInitiationTransaction|common_attributes:HTTPErrorBadRequest|common_attributes:HTTPErrorUnauthorized|common_attributes:HTTPErrorForbidden|
        common_attributes:HTTPErrorNotFound|common_attributes:HTTPErrorTooManyRequests|common_attributes:HTTPErrorInternalServerError {

    products:PaymentInitiationTransaction|error response = common:productsBianClient->/bian/PaymentInitiation/v14/PaymentInitiation/Initiate.post(request);
    io:println("Received PaymentInitiation Initiate Response");

    if response is error {
        return common:constructInternalServerError(response.message(), response.detail().toString());
    }
    return response;
}

// ─── Step 2: Enrich Credit Transfer ─────────────────────────────────────────

// Calls BIAN Payment Initiation v14 — Update endpoint.
// BIAN domain: Products | Service Domain: PaymentInitiation
// Updates the payment initiation record with enriched data: full debtor/creditor
// addresses, BIC codes, payment category purpose, and service level indicators.
// Enrichment is necessary before compliance screening and correspondent bank routing.
isolated function enrichCreditTransfer(string paymentInitiationId, products:PaymentInitiationTransaction request)
        returns products:PaymentInitiationTransaction|common_attributes:HTTPErrorBadRequest|common_attributes:HTTPErrorUnauthorized|common_attributes:HTTPErrorForbidden|
        common_attributes:HTTPErrorNotFound|common_attributes:HTTPErrorTooManyRequests|common_attributes:HTTPErrorInternalServerError {

    products:PaymentInitiationTransaction|error response = common:productsBianClient->/bian/PaymentInitiation/v14/PaymentInitiation/paymentInitiationId/Update.put(request);
    io:println("Received PaymentInitiation Enrich Response");

    if response is error {
        return common:constructInternalServerError(response.message(), response.detail().toString());
    }
    return response;
}

// ─── Step 3: Conduct Dedup Check ─────────────────────────────────────────────

// Calls BIAN Payment Initiation v14 — Update endpoint (deduplication action).
// BIAN domain: Products | Service Domain: PaymentInitiation
// Updates the payment record to trigger a duplicate detection check, verifying
// that no identical payment (same amount, currency, beneficiary, reference) has
// been submitted within the bank's configured dedup window. A duplicate result
// must halt the workflow to prevent double payment.
isolated function conductDedupCheck(string paymentInitiationId, products:PaymentInitiationTransaction request)
        returns products:PaymentInitiationTransaction|common_attributes:HTTPErrorBadRequest|common_attributes:HTTPErrorUnauthorized|common_attributes:HTTPErrorForbidden|
        common_attributes:HTTPErrorNotFound|common_attributes:HTTPErrorTooManyRequests|common_attributes:HTTPErrorInternalServerError {

    products:PaymentInitiationTransaction|error response = common:productsBianClient->/bian/PaymentInitiation/v14/PaymentInitiation/paymentInitiationId/Update.put(request);
    io:println("Received PaymentInitiation DedupCheck Response");

    if response is error {
        return common:constructInternalServerError(response.message(), response.detail().toString());
    }
    return response;
}

// ─── Step 4: Initiate Outgoing Credit Transfer ────────────────────────────────

// Calls BIAN Payment Order v14 — Initiate endpoint.
// BIAN domain: Payments | Service Domain: PaymentOrder
// Formalises the bank's commitment to execute the credit transfer by creating a
// Payment Order. The order transitions the payment from the initiation phase into
// the execution pipeline and is the authoritative reference for all subsequent steps.
// isolated function initiatePaymentOrder(products:PaymentOrderProcedure request)
//         returns products:PaymentOrderProcedure|common_attributes:HTTPErrorBadRequest|common_attributes:HTTPErrorUnauthorized|common_attributes:HTTPErrorForbidden|
//         common_attributes:HTTPErrorNotFound|common_attributes:HTTPErrorTooManyRequests|common_attributes:HTTPErrorInternalServerError {

//     products:PaymentOrderProcedure|error response = common:productsBianClient->/bian/PaymentOrder/v14/PaymentOrder/Initiate.post(request);
//     io:println("Received PaymentOrder Initiate Response");

//     if response is error {
//         return common:constructInternalServerError(response.message(), response.detail().toString());
//     }
//     return response;
// }

// ─── Step 5: Get Operational Details By Payment ───────────────────────────────

// Calls BIAN Current Account v14 — Retrieve endpoint.
// BIAN domain: Products | Service Domain: CurrentAccount
// Retrieves the source account's operational details including available balance,
// account status, daily transaction limits, and currency. This confirms the account
// has sufficient funds and is active before executing the debit in Step 8a.
isolated function retrieveCurrentAccountDetails(string currentAccountId)
        returns products:CurrentAccountFacility|common_attributes:HTTPErrorBadRequest|common_attributes:HTTPErrorUnauthorized|common_attributes:HTTPErrorForbidden|
        common_attributes:HTTPErrorNotFound|common_attributes:HTTPErrorTooManyRequests|common_attributes:HTTPErrorInternalServerError {

    products:CurrentAccountFacility|error response = common:productsBianClient->/bian/CurrentAccount/v14/CurrentAccount/currentAccountId/Retrieve.get();
    io:println("Received CurrentAccount Retrieve Response");

    if response is error {
        return common:constructInternalServerError(response.message(), response.detail().toString());
    }
    return response;
}

// ─── Step 6: Check Beneficiary ────────────────────────────────────────────────

// Calls BIAN Regulatory Compliance v14 — Evaluate endpoint.
// BIAN domain: FinanceRiskManagement | Service Domain: RegulatoryCompliance
// Screens the beneficiary against global sanctions lists (OFAC, EU, UN), AML
// transaction monitoring rules, fraud detection models, and PEP databases.
// A non-compliant result must halt the workflow immediately and flag the payment
// for manual review by the bank's compliance team.
isolated function checkBeneficiary(finance_risk_management:RegulatoryComplianceAssessment request)
        returns finance_risk_management:RegulatoryComplianceAssessment|common_attributes:HTTPErrorBadRequest|common_attributes:HTTPErrorUnauthorized|common_attributes:HTTPErrorForbidden|
        common_attributes:HTTPErrorNotFound|common_attributes:HTTPErrorTooManyRequests|common_attributes:HTTPErrorInternalServerError {

    finance_risk_management:RegulatoryComplianceAssessment|error response = common:frMgmtBianClient->/bian/RegulatoryCompliance/v14/RegulatoryCompliance/Evaluate.post(request);
    io:println("Received RegulatoryCompliance BeneficiaryCheck Response");

    if response is error {
        return common:constructInternalServerError(response.message(), response.detail().toString());
    }
    return response;
}

// ─── Step 7: Retrieve Details about Correspondent Settlement Account ──────────

// Calls BIAN Correspondent Bank Directory v14 — Retrieve endpoint.
// BIAN domain: BusinessDevelopment | Service Domain: CorrespondentBankDirectory
// Retrieves the correspondent bank's NOSTRO account details, settlement cut-off
// times, and routing instructions required to execute the SWIFT payment.
// Only called when request.paymentType = "SWIFT".
// isolated function retrieveCorrespondentBankDetails(string correspondentBankId)
//         returns business_development:CorrespondentBankDirectory|common_attributes:HTTPErrorBadRequest|common_attributes:HTTPErrorUnauthorized|common_attributes:HTTPErrorForbidden|
//         common_attributes:HTTPErrorNotFound|common_attributes:HTTPErrorTooManyRequests|common_attributes:HTTPErrorInternalServerError {

//     business_development:CorrespondentBankDirectory|error response = common:businessDevBianClient->/bian/CorrespondentBankDirectory/v14/CorrespondentBankDirectory/[correspondentBankId]/Retrieve.get();
//     io:println("Received CorrespondentBankDirectory Retrieve Response");

//     if response is error {
//         return common:constructInternalServerError(response.message(), response.detail().toString());
//     }
//     return response;
// }

// ─── Step 8: Execute Payment Transaction ──────────────────────────────────────

// Calls BIAN Payment Execution v14 — Initiate endpoint.
// BIAN domain: Operations | Service Domain: PaymentExecution
// Initiates the actual payment execution, triggering the four-part booking sequence
// (Steps 8a–8d: debit position, debit authorization, credit position, credit authorization).
// Only called when the payment type is "OutgoingCreditTransfer" (i.e., always in this workflow).
// isolated function initiatePaymentExecution(operations:PaymentExecutionProcedure request)
//         returns operations:PaymentExecutionProcedure|common_attributes:HTTPErrorBadRequest|common_attributes:HTTPErrorUnauthorized|common_attributes:HTTPErrorForbidden|
//         common_attributes:HTTPErrorNotFound|common_attributes:HTTPErrorTooManyRequests|common_attributes:HTTPErrorInternalServerError {

//     operations:PaymentExecutionProcedure|error response = common:operationsBianClient->/bian/PaymentExecution/v14/PaymentExecution/Initiate.post(request);
//     io:println("Received PaymentExecution Initiate Response");

//     if response is error {
//         return common:constructInternalServerError(response.message(), response.detail().toString());
//     }
//     return response;
// }

// ─── Step 8a: Record Debit Booking for Customer Account ───────────────────────

// Calls BIAN Position Keeping v14 — Initiate endpoint (debit entry).
// BIAN domain: Operations | Service Domain: PositionKeeping
// Records the debit position entry against the customer's current account balance.
// This is the first leg of the four-part booking: it reduces the customer's
// position by the transfer amount in the position keeping ledger.
isolated function recordDebitBooking(operations:FinancialPositionLog request)
        returns operations:FinancialPositionLog|common_attributes:HTTPErrorBadRequest|common_attributes:HTTPErrorUnauthorized|common_attributes:HTTPErrorForbidden|
        common_attributes:HTTPErrorNotFound|common_attributes:HTTPErrorTooManyRequests|common_attributes:HTTPErrorInternalServerError {

    operations:FinancialPositionLog|error response = common:operationsBianClient->/bian/PositionKeeping/v14/PositionKeeping/Initiate.post(request);
    io:println("Received PositionKeeping DebitBooking Response");

    if response is error {
        return common:constructInternalServerError(response.message(), response.detail().toString());
    }
    return response;
}

// ─── Step 8b: Authorise Debit Booking ─────────────────────────────────────────

// Calls BIAN Financial Accounting v14 — Initiate endpoint (internal bank debit authorization).
// BIAN domain: Operations | Service Domain: FinancialAccounting (Internal Bank Operations)
// Posts the debit journal entry to the bank's internal general ledger: debiting the
// customer's liability account and crediting the bank's outgoing payment suspense account.
// This authorizes the funds release from the customer's account in the accounting system.
isolated function authoriseDebitBooking(operations:FinancialBookingLog request)
        returns operations:FinancialBookingLog|common_attributes:HTTPErrorBadRequest|common_attributes:HTTPErrorUnauthorized|common_attributes:HTTPErrorForbidden|
        common_attributes:HTTPErrorNotFound|common_attributes:HTTPErrorTooManyRequests|common_attributes:HTTPErrorInternalServerError {

    operations:FinancialBookingLog|error response = common:operationsBianClient->/bian/FinancialAccounting/v14/FinancialAccounting/Initiate.post(request);
    io:println("Received FinancialAccounting DebitAuthorization Response");

    if response is error {
        return common:constructInternalServerError(response.message(), response.detail().toString());
    }
    return response;
}

// ─── Step 8c: Record Credit Booking for Internal Bank Account ─────────────────

// Calls BIAN Position Keeping v14 — Initiate endpoint (credit entry).
// BIAN domain: Operations | Service Domain: PositionKeeping
// Records the credit position entry to the bank's internal NOSTRO/correspondent account.
// This is the mirror entry to the customer debit recorded in Step 8a: it increases the
// bank's internal position by the transfer amount, reflecting funds held for onward
// transmission to the correspondent bank.
isolated function recordCreditBooking(operations:FinancialPositionLog request)
        returns operations:FinancialPositionLog|common_attributes:HTTPErrorBadRequest|common_attributes:HTTPErrorUnauthorized|common_attributes:HTTPErrorForbidden|
        common_attributes:HTTPErrorNotFound|common_attributes:HTTPErrorTooManyRequests|common_attributes:HTTPErrorInternalServerError {

    operations:FinancialPositionLog|error response = common:operationsBianClient->/bian/PositionKeeping/v14/PositionKeeping/Initiate.post(request);
    io:println("Received PositionKeeping CreditBooking Response");

    if response is error {
        return common:constructInternalServerError(response.message(), response.detail().toString());
    }
    return response;
}

// ─── Step 8d: Authorize Credit Booking ────────────────────────────────────────

// Calls BIAN Financial Accounting v14 — Initiate endpoint (correspondent bank credit authorization).
// BIAN domain: Operations | Service Domain: FinancialAccounting (Correspondent Bank Operations)
// Posts the credit journal entry in the correspondent bank accounting system: debiting
// the bank's outgoing clearing account and crediting the correspondent bank's account.
// This authorizes the onward transmission of funds to the beneficiary via the correspondent.
isolated function authoriseCreditBooking(operations:FinancialBookingLog request)
        returns operations:FinancialBookingLog|common_attributes:HTTPErrorBadRequest|common_attributes:HTTPErrorUnauthorized|common_attributes:HTTPErrorForbidden|
        common_attributes:HTTPErrorNotFound|common_attributes:HTTPErrorTooManyRequests|common_attributes:HTTPErrorInternalServerError {

    operations:FinancialBookingLog|error response = common:operationsBianClient->/bian/FinancialAccounting/v14/FinancialAccounting/Initiate.post(request);
    io:println("Received FinancialAccounting CreditAuthorization Response");

    if response is error {
        return common:constructInternalServerError(response.message(), response.detail().toString());
    }
    return response;
}

// ─── Step 9: Send Payment Instruction ─────────────────────────────────────────

// Calls BIAN Financial Gateway v14 — Initiate endpoint.
// BIAN domain: Operations | Service Domain: FinancialGateway
// Submits the payment instruction to the financial gateway for routing to the
// appropriate clearing network (e.g., SEPA, CHAPS, Fedwire, BACS).
// Only called when request.isSettlementViaCleaning = true.
// isolated function sendPaymentInstruction(operations:FinancialGateway request)
//         returns operations:FinancialGateway|common_attributes:HTTPErrorBadRequest|common_attributes:HTTPErrorUnauthorized|common_attributes:HTTPErrorForbidden|
//         common_attributes:HTTPErrorNotFound|common_attributes:HTTPErrorTooManyRequests|common_attributes:HTTPErrorInternalServerError {

//     operations:FinancialGateway|error response = common:operationsBianClient->/bian/FinancialGateway/v14/FinancialGateway/Initiate.post(request);
//     io:println("Received FinancialGateway SendPaymentInstruction Response");

//     if response is error {
//         return common:constructInternalServerError(response.message(), response.detail().toString());
//     }
//     return response;
// }

// ─── Step 10: Execute SWIFT Payment ───────────────────────────────────────────

// Calls BIAN Payment Execution v14 — Initiate endpoint (SWIFT message dispatch).
// BIAN domain: Operations | Service Domain: PaymentExecution
// Initiates the dispatch of the SWIFT MT103 (or equivalent ISO 20022 pacs.008)
// message to the correspondent bank via the SWIFT network.
// Only called when request.paymentType = "SWIFT".
// isolated function executeSWIFTPayment(operations:PaymentExecutionProcedure request)
//         returns operations:PaymentExecutionProcedure|common_attributes:HTTPErrorBadRequest|common_attributes:HTTPErrorUnauthorized|common_attributes:HTTPErrorForbidden|
//         common_attributes:HTTPErrorNotFound|common_attributes:HTTPErrorTooManyRequests|common_attributes:HTTPErrorInternalServerError {

//     operations:PaymentExecutionProcedure|error response = common:operationsBianClient->/bian/PaymentExecution/v14/PaymentExecution/Initiate.post(request);
//     io:println("Received PaymentExecution SWIFT Response");

//     if response is error {
//         return common:constructInternalServerError(response.message(), response.detail().toString());
//     }
//     return response;
// }

// ─── Step 10: Send Payment Message ─────────────────────────────────────────────

// Calls BIAN ACH Operations / Financial Gateway — Initiate endpoint (message dispatch).
// BIAN domain: Operations | Service Domain: ACH Operations
// Dispatches the final outbound payment message to the ACH network or SWIFT gateway.
// Note: The diagram states that ACH Operations may require additional services outside
// Financial Gateway; those integrations are not shown in the diagram and will need
// separate implementation when the ACH client dependency is available.
// isolated function sendPaymentMessage(operations:PaymentMessage request)
//         returns operations:PaymentMessage|common_attributes:HTTPErrorBadRequest|common_attributes:HTTPErrorUnauthorized|common_attributes:HTTPErrorForbidden|
//         common_attributes:HTTPErrorNotFound|common_attributes:HTTPErrorTooManyRequests|common_attributes:HTTPErrorInternalServerError {

//     operations:PaymentMessage|error response = common:operationsBianClient->/bian/ACHOperations/v14/ACHOperations/Initiate.post(request);
//     io:println("Received ACHOperations SendPaymentMessage Response");

//     if response is error {
//         return common:constructInternalServerError(response.message(), response.detail().toString());
//     }
//     return response;
// }
