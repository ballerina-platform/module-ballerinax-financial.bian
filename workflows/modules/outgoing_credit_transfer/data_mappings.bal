import ballerinax/financial.bian.attribute.groups.finance_risk_management as finance_risk_management;
import ballerinax/financial.bian.attribute.groups.operations as operations;
import ballerinax/financial.bian.attribute.groups.products as products;

// ─── Step 1: Record Request for Payment Order ────────────────────────────────

// Maps the OutgoingCreditTransferRequest to a PaymentInitiationTransaction payload
// for the initial payment record creation.
// Required fields to populate:
//   - paymentInitiationInstructionType: set to "CreditTransfer"
//   - paymentTransactionInitiatorReference: a unique reference for this initiation (e.g., UUID)
//   - payerReference: map from request.fromAccount (debtor account identifier)
//   - payeeReference: map from request.toAccount (creditor account identifier)
//   - payeeProductInstanceReference: beneficiary account for the credit
//   - paymentAmount: map from request.transferAmount
//   - paymentCurrency: map from request.currency
//   - paymentDescription: map from request.description
//   - paymentInitiationStatus: set to "Received" to indicate the request has been recorded
// TODO: Implement the data mapper
isolated function mapToPaymentInitiationRequest(OutgoingCreditTransferRequest request) returns products:PaymentInitiationTransaction => {
};

// ─── Step 2: Enrich Credit Transfer ─────────────────────────────────────────

// Maps the request and initial payment record to an enrichment update payload.
// Enrichment adds supplementary data not available at initiation time (e.g., BIC codes,
// correspondent bank routes, regulatory identifiers, and full address data).
// Required fields to populate:
//   - paymentInstructionDetail: include full debtor and creditor address details
//   - payeeBankBIC / correspondentBankBIC: map from request.correspondentBankBIC (for SWIFT)
//   - paymentTypeInformation: set payment category purpose, priority, and service level
//   - paymentInitiationStatus: update to "Enriched" to track the lifecycle stage
// TODO: Implement the data mapper
isolated function mapToEnrichCreditTransferRequest(OutgoingCreditTransferRequest request,
        products:PaymentInitiationTransaction initiationResult) returns products:PaymentInitiationTransaction => {
};

// ─── Step 3: Conduct Dedup Check ────────────────────────────────────────────

// Maps the enriched payment record to a deduplication check update payload.
// The dedup check verifies that an identical payment has not already been submitted
// within the bank's configurable dedup window (e.g., same amount, same beneficiary,
// same reference within the last 24 hours).
// Required fields to populate:
//   - paymentTransactionInitiatorReference: the original unique reference from Step 1
//   - paymentInitiationStatus: set to "DedupCheckPending"
//   - Any dedup key fields (amount, currency, fromAccount, toAccount, date) must be
//     present so the service can compare against existing records
// TODO: Implement the data mapper
isolated function mapToDedupCheckRequest(OutgoingCreditTransferRequest request,
        products:PaymentInitiationTransaction enrichResult) returns products:PaymentInitiationTransaction => {
};

// ─── Step 4: Initiate Outgoing Credit Transfer ───────────────────────────────

// Maps the deduplicated payment initiation to a PaymentOrderProcedure payload.
// The Payment Order formalises the bank's commitment to execute the transfer
// and transitions the payment from initiation to order status.
// Required fields to populate:
//   - paymentOrderType: set to "OutgoingCreditTransfer"
//   - paymentTransactionInitiatorReference: carry forward from initiation result
//   - paymentInitiationTransactionReference: the initiation record ID from Step 1
//   - payerReference: map from request.fromAccount
//   - payeeReference: map from request.toAccount
//   - payeeProductInstanceReference: beneficiary account reference
//   - paymentAmount: map from request.transferAmount
//   - paymentCurrency: map from request.currency
//   - paymentValueDate: set to the intended settlement date
//   - paymentOrderStatus: set to "Initiated"
// TODO: Implement the data mapper
// isolated function mapToPaymentOrderRequest(OutgoingCreditTransferRequest request,
//         products:PaymentInitiationTransaction dedupResult) returns products:PaymentOrderProcedure => {
// };

// ─── Step 5: Get Operational Details By Payment ──────────────────────────────

// Extracts the Current Account ID (fromAccount) for the operational details retrieve call.
// Implementation: map request.fromAccount to the bank's internal current account identifier.
// If the request carries a human-readable account number, a lookup against the account
// registry may be needed to resolve the internal account reference ID.
isolated function extractCurrentAccountId(OutgoingCreditTransferRequest request) returns string {
    return request.fromAccount;
}

// ─── Step 6: Check Beneficiary ──────────────────────────────────────────────

// Maps the request and payment order result to a RegulatoryComplianceAssessment for
// beneficiary screening (sanctions, AML, fraud, and PEP checks).
// Required fields to populate:
//   - regulatoryComplianceTestType: set to "BeneficiaryCheck" or "SanctionsScreening"
//   - payeeReference: map from request.toAccount (beneficiary account)
//   - payeePartyReference: map from request.recipientName (beneficiary name for OFAC/SDN check)
//   - transactionAmount: map from request.transferAmount (for value-based risk thresholds)
//   - transactionCurrency: map from request.currency
//   - payerReference: map from request.fromAccount (for both-party screening)
//   - customerJurisdiction: derive from request.correspondentBankBIC country code
//     to apply the correct jurisdictional sanctions list (OFAC, EU, UN)
// TODO: Implement the data mapper
isolated function mapToBeneficiaryCheckRequest(OutgoingCreditTransferRequest request) returns finance_risk_management:RegulatoryComplianceAssessment => {
};

// ─── Step 7: Retrieve Details about Correspondent Settlement Account ──────────

// Extracts the Correspondent Bank Directory ID for the SWIFT settlement account lookup.
// Implementation: derive the correspondent bank directory ID from request.correspondentBankBIC.
// The BIC code maps to a record in the Correspondent Bank Directory that holds the
// correspondent's NOSTRO account details, settlement instructions, and cut-off times.
// Only called when request.paymentType = "SWIFT".
isolated function extractCorrespondentBankDirectoryId(OutgoingCreditTransferRequest request) returns string {
    return request.correspondentBankBIC ?: "";
}

// ─── Step 8: Execute Payment Transaction ─────────────────────────────────────

// Maps the request, payment order, and compliance result to a PaymentExecutionProcedure.
// This initiates the actual execution of the payment transaction after all pre-execution
// checks (compliance, correspondent lookup) have passed.
// Required fields to populate:
//   - paymentExecutionType: set based on request.paymentType ("SWIFT", "ACH", "Domestic")
//   - paymentOrderReference: the payment order reference from Step 4 (orderResult)
//   - payerReference: map from request.fromAccount
//   - payeeReference: map from request.toAccount
//   - paymentAmount: map from request.transferAmount
//   - paymentCurrency: map from request.currency
//   - paymentValueDate: set to the settlement date (same day or next business day)
//   - correspondentBankReference: from Step 7 (correspondentResult), if SWIFT
//   - paymentExecutionStatus: set to "Initiated"
// TODO: Implement the data mapper
// isolated function mapToPaymentExecutionRequest(OutgoingCreditTransferRequest request,
//         products:PaymentOrderProcedure orderResult,
//         finance_risk_management:RegulatoryComplianceAssessment complianceResult) returns operations:PaymentExecutionProcedure => {
// };

// ─── Step 8a: Record Debit Booking for Customer Account ──────────────────────

// Maps the request and payment execution result to a FinancialPositionLog for the
// debit position entry against the customer's current account.
// Required fields to populate:
//   - financialPositionLogType: set to "DebitEntry" or "CustomerAccountDebit"
//   - productInstanceReference: the customer's current account (request.fromAccount)
//   - transactionAmount: map from request.transferAmount (as a debit — negative value)
//   - transactionCurrency: map from request.currency
//   - transactionDate: set to today's business date
//   - paymentExecutionReference: the execution reference from Step 8 (executionResult)
//   - transactionDescription: include the payment description and beneficiary name
// TODO: Implement the data mapper
isolated function mapToDebitPositionRequest(OutgoingCreditTransferRequest request) returns operations:FinancialPositionLog => {
};

// ─── Step 8b: Authorise Debit Booking ────────────────────────────────────────

// Maps the debit position log to an internal bank operations booking authorization.
// This step posts the debit journal entry to the bank's internal general ledger,
// confirming the debit against the customer's liability account.
// Required fields to populate:
//   - financialBookingLogType: set to "DebitAuthorization"
//   - productInstanceReference: the customer's current account reference
//   - debitAccountReference: the customer's GL liability account code
//   - creditAccountReference: the bank's outgoing payment suspense/clearing account code
//   - transactionAmount: map from request.transferAmount
//   - transactionCurrency: map from request.currency
//   - positionKeepingReference: the position log reference from Step 8a (debitPositionResult)
//   - bookingDate: set to today's business date
//   - authorizationStatus: set to "Authorized" on approval
// TODO: Implement the data mapper
isolated function mapToDebitBookingAuthorizationRequest(OutgoingCreditTransferRequest request,
        operations:FinancialPositionLog debitPositionResult) returns operations:FinancialBookingLog => {
};

// ─── Step 8c: Record Credit Booking for Internal Bank Account ────────────────

// Maps the request and debit booking result to a FinancialPositionLog for the
// credit position entry to the bank's internal correspondent/nostro account.
// This represents the bank's internal position tracking for funds transferred
// to the correspondent bank (the mirror entry to the customer debit in Step 8a).
// Required fields to populate:
//   - financialPositionLogType: set to "CreditEntry" or "InternalBankAccountCredit"
//   - productInstanceReference: the bank's internal NOSTRO/correspondent account reference
//   - transactionAmount: map from request.transferAmount (as a credit — positive value)
//   - transactionCurrency: map from request.currency
//   - transactionDate: set to the value date of the payment
//   - debitBookingReference: the booking log reference from Step 8b (debitBookingResult)
// TODO: Implement the data mapper
isolated function mapToCreditPositionRequest(OutgoingCreditTransferRequest request,
        operations:FinancialBookingLog debitBookingResult) returns operations:FinancialPositionLog => {
};

// ─── Step 8d: Authorize Credit Booking ───────────────────────────────────────

// Maps the credit position log to a correspondent bank operations booking authorization.
// This step posts the credit entry to the correspondent bank's accounting system,
// authorizing the funds to be made available to the beneficiary bank.
// Required fields to populate:
//   - financialBookingLogType: set to "CreditAuthorization"
//   - productInstanceReference: the correspondent/NOSTRO account reference
//   - debitAccountReference: the bank's internal outgoing clearing account code
//   - creditAccountReference: the correspondent bank's account code
//   - transactionAmount: map from request.transferAmount
//   - transactionCurrency: map from request.currency
//   - positionKeepingReference: the position log reference from Step 8c (creditPositionResult)
//   - bookingDate: set to the value date of the payment
//   - correspondentBankReference: the correspondent bank identifier from Step 7
// TODO: Implement the data mapper
isolated function mapToCreditBookingAuthorizationRequest(OutgoingCreditTransferRequest request,
        operations:FinancialPositionLog creditPositionResult) returns operations:FinancialBookingLog => {
};

// ─── Step 9: Send Payment Instruction ────────────────────────────────────────

// Maps the request and booking results to a FinancialGateway instruction payload.
// This step transmits the payment instruction to the financial gateway for routing
// to the appropriate clearing network (e.g., SEPA, CHAPS, Fedwire, BACS).
// Only called when request.isSettlementViaCleaning = true.
// Required fields to populate:
//   - financialGatewayInstructionType: set based on the clearing network
//     (e.g., "SEPACreditTransfer", "FedwireTransfer", "CHAPSPayment")
//   - paymentOrderReference: the payment order reference from Step 4
//   - paymentAmount: map from request.transferAmount
//   - paymentCurrency: map from request.currency
//   - beneficiaryDetails: map from request.toAccount, recipientName, correspondentBankBIC
//   - clearingNetwork: resolve from request.currency and request.paymentType
//   - settlementDate: the agreed value date for the payment
//   - creditBookingReference: the booking authorization reference from Step 8d
// TODO: Implement the data mapper
// isolated function mapToPaymentInstructionRequest(OutgoingCreditTransferRequest request,
//         operations:FinancialBookingLog creditBookingResult) returns operations:FinancialGateway => {
// };

// ─── Step 10: Execute SWIFT Payment ──────────────────────────────────────────

// Maps the request and gateway instruction to a SWIFT payment execution payload.
// This initiates the SWIFT message dispatch to the correspondent bank.
// Only called when request.paymentType = "SWIFT".
// Required fields to populate:
//   - paymentExecutionType: set to "SWIFTMessage"
//   - swiftMessageType: set to "MT103" for single customer credit transfer
//   - correspondentBankBIC: map from request.correspondentBankBIC
//   - paymentAmount: map from request.transferAmount
//   - paymentCurrency: map from request.currency
//   - beneficiaryName: map from request.recipientName
//   - beneficiaryAccountNumber: map from request.toAccount
//   - senderReference: the payment order reference from Step 4
//   - valueDate: the agreed settlement date
// TODO: Implement the data mapper
// isolated function mapToSWIFTPaymentRequest(OutgoingCreditTransferRequest request,
//         operations:FinancialGateway gatewayResult) returns operations:PaymentExecutionProcedure => {
// };

// ─── Step 10: Send Payment Message ───────────────────────────────────────────

// Maps the request and SWIFT execution result to a payment message dispatch payload.
// This sends the final outbound payment message to the ACH network or SWIFT gateway.
// Note: The diagram note states that ACH Operations may require additional services
//       outside of Financial Gateway; those integrations are not shown in the diagram.
// Required fields to populate:
//   - paymentMessageType: set to "SWIFTMessage" or "ACHEntry" based on request.paymentType
//   - paymentMessageStatus: set to "Dispatched"
//   - paymentExecutionReference: the SWIFT execution reference from Step 10 (swiftResult)
//   - recipientBankBIC: map from request.correspondentBankBIC
//   - paymentAmount: map from request.transferAmount
//   - paymentCurrency: map from request.currency
// TODO: Implement the data mapper
// isolated function mapToPaymentMessageRequest(OutgoingCreditTransferRequest request,
//         operations:PaymentExecutionProcedure swiftResult) returns operations:PaymentMessage => {
// };

// ─── ID Extractors ───────────────────────────────────────────────────────────

// Extracts the Payment Initiation ID from the initiation response.
// Implementation: read the record-level identifier returned by the Payment Initiation
// service (e.g., initiationResult.paymentInitiationTransactionReference) for use
// as the path parameter in Steps 2 and 3 (Update calls).
isolated function extractPaymentInitiationId(products:PaymentInitiationTransaction initiationResult) returns string {
    return "";
}

// Extracts the Correspondent Bank Directory Entry ID.
// Implementation: resolve from request.correspondentBankBIC using an internal BIC-to-directory
// mapping or by querying the directory index. Used as the path parameter in Step 7.
isolated function extractCorrespondentBankEntryId(OutgoingCreditTransferRequest request) returns string {
    return request.correspondentBankBIC ?: "";
}
