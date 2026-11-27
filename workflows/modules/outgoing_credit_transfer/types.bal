// Inbound request payload for the Outgoing Credit Transfer workflow.
// All fields are required unless marked optional (?).
// The paymentType and isSettlementViaCleaning fields drive the conditional branches
// in the workflow (SWIFT vs ACH vs domestic, clearing vs bilateral settlement).
// TODO: Extend with additional compliance fields as regulatory requirements evolve
//       (e.g., purposeCode, remittanceInfo, debtorAddress, creditorAddress).
public type OutgoingCreditTransferRequest record {
    // Source account number to be debited (customer's current account).
    // Used in Step 5 (Current Account retrieve) and Step 8a (debit booking).
    string fromAccount;

    // Destination/beneficiary account number to be credited.
    // Used in Step 4 (Payment Order) and Steps 8c-8d (credit booking).
    string toAccount;

    // Full legal name of the beneficiary as it should appear on the payment instruction.
    // Used in Step 6 (beneficiary compliance check) and the outgoing payment message (Step 10).
    string recipientName;

    // Transfer amount in the minor currency unit (e.g., cents for USD).
    // High-value transfers may trigger enhanced due diligence thresholds in Step 6.
    decimal transferAmount;

    // ISO 4217 currency code for the transfer (e.g., "USD", "EUR", "GBP").
    // Determines the correspondent bank routing and clearing rail used.
    string currency;

    // Payment reference or remittance description.
    // Included in the payment message sent to the beneficiary bank (Step 10).
    string description;

    // Payment routing type. Accepted values: "SWIFT", "ACH", "DOMESTIC".
    // Drives the conditional branches:
    //   "SWIFT"    → Steps 7, 10 (correspondent bank lookup and SWIFT execution)
    //   "ACH"      → Step 9 (clearing instruction via Financial Gateway)
    //   "DOMESTIC" → Steps 9-10 (domestic clearing rail)
    string paymentType;

    // Whether the settlement leg should be routed via a clearing network
    // (true) or settled bilaterally between banks (false).
    // Drives Step 9 (Send Payment Instruction via Financial Gateway).
    boolean isSettlementViaCleaning;

    // BIC/SWIFT code of the beneficiary's correspondent bank.
    // Required when paymentType = "SWIFT"; used in Step 7 to retrieve
    // correspondent bank settlement account details.
    string? correspondentBankBIC;
};

// Outbound response payload returned by the workflow on successful completion.
// Returned only after all applicable workflow steps complete without error.
// TODO: Extend with transactionReference, valueDate, and settlementStatus
//       to give callers full visibility into the completed transfer.
public type OutgoingCreditTransferResponse record {
    // Unique identifier for this workflow execution instance.
    // TODO: Replace the hardcoded placeholder with a generated UUID or trace ID.
    string workflowId;

    // The debited source account number, confirming which account was charged.
    string accountNumber;

    // Outcome status of the workflow. Set to "SUCCESS" on completion.
    // Error cases are returned as HTTPError and do not reach this response type.
    string status;

    // Human-readable summary message confirming the transfer outcome.
    string message;
};
