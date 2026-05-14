// Inbound request payload for the Savings Account Opening workflow.
// This is the entry-point contract between the API caller and the orchestration workflow.
// All fields are required; the workflow does not apply defaults for missing values.
// TODO: Extend with additional fields as eligibility and compliance requirements evolve
//       (e.g., dateOfBirth, nationalId, employmentStatus, preferredChannel).
public type AccountOpeningRequest record {
    // Full legal name of the customer as it should appear on the account. Used for
    // party registration (Steps 2/8) and correspondence (Step 21).
    string customerName;

    // Customer segment classification. Accepted values: "Retail", "Corporate", "SME".
    // Drives party lifecycle stage, compliance rule set selection (Step 9), and
    // product eligibility criteria (Step 5).
    string customerType;

    // Customer's contact information for correspondence and notification delivery.
    // Expected format: a structured value containing at minimum an email address
    // or mobile number; used in Steps 2, 9, and 21.
    // TODO: Replace with a structured ContactDetails record type for type safety.
    string contactDetails;

    // The type of savings account the customer is requesting (e.g., "SAVINGS_STANDARD",
    // "SAVINGS_YOUTH", "SAVINGS_PREMIUM"). Used in Steps 5, 6, 10, 11, and 14 to
    // resolve product directory references and configure the account accordingly.
    string accountType;

    // The opening deposit amount the customer intends to fund the account with.
    // Used in regulatory compliance screening (Step 9 — high amounts trigger EDD),
    // position keeping initialisation (Step 14), and financial accounting (Step 15).
    decimal initialDeposit;

    // ISO 4217 currency code for the account (e.g., "USD", "EUR", "LKR").
    // Propagated to the savings account facility, position log, and accounting entries.
    string currency;
};

// Outbound response payload returned by the Savings Account Opening workflow on success.
// Returned only after all 22 workflow steps complete without error.
// TODO: Extend with additional fields to improve caller observability (e.g., accountOpeningDate,
//       productType, agreementReference, complianceStatus).
public type AccountOpeningResponse record {
    // Unique identifier for this workflow execution instance.
    // TODO: Replace the hardcoded placeholder with a generated UUID or workflow trace ID.
    string workflowId;

    // The bank-assigned account number for the newly opened savings account.
    // TODO: Derive from the SavingsAccountFacility response (savingsResult) rather than
    //       using the hardcoded placeholder value.
    string accountNumber;

    // Outcome status of the workflow. Set to "SUCCESS" on completion.
    // Error cases are returned as HTTPError and do not reach this response type.
    string status;

    // Human-readable summary message confirming the outcome.
    string message;
};

