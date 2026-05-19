// Inbound request payload for the Corporate Customer Onboarding workflow.
// All fields are required unless marked optional (?).
// The riskClassification field drives the depth of due diligence performed:
//   "Standard" → Steps 1–9 (all steps)
//   "Enhanced" → Steps 1–9 with enhanced CDD in Step 7
//   "High"     → Steps 1–9 with full enhanced due diligence and escalation
// TODO: Extend with UBO (ultimate beneficial owner) disclosure fields,
//       sanctions screening identifiers, and correspondent bank details
//       as regulatory requirements (FATF, 4AMLD, 6AMLD) evolve.
public type CorporateCustomerOnboardingRequest record {
    // ── Corporate entity identifiers ──────────────────────────────────────────

    // Legal registered name of the corporate entity as it appears on the
    // certificate of incorporation. Used in Step 5 (legal structure lookup)
    // and the compliance screening in Steps 8–9.
    string corporateEntityName;

    // Company registration number issued by the jurisdiction's company registry
    // (e.g., Companies House UK, SEC CIK, German Handelsregister number).
    // Maps to the Legal Entity Directory lookup key in Step 5.
    string registrationNumber;

    // Tax identification number (TIN, EIN, UTR) used for AML/KYC reporting
    // and tax compliance assessment in Step 9 (Legal Process).
    string taxIdentificationNumber;

    // Legal Entity Identifier (LEI) code if the entity is registered under
    // the Global LEI System (ISO 17442). Drives the Step 5 lookup and
    // accelerates SWIFT/cross-border compliance checks.
    // Optional — not all entities have an LEI at time of onboarding.
    string? legalEntityIdentifier;

    // ── Corporate structure ───────────────────────────────────────────────────

    // Legal form of the entity. Accepted values: "PrivateLimitedCompany",
    // "PublicLimitedCompany", "Partnership", "LimitedLiabilityPartnership",
    // "SoleTrader", "TrustOrFoundation", "FinancialInstitution".
    // Drives the document requirements in Step 3 and the legal process in Step 9.
    string entityType;

    // Country (ISO 3166-1 alpha-2) or state where the entity is incorporated.
    // Determines the applicable sanctions list and AML jurisdiction in Steps 7–9.
    string jurisdictionOfIncorporation;

    // Industry sector classification code (NACE Rev. 2 or SIC code).
    // Used in the Customer Credit Rating (Step 8) and risk classification.
    string industrySector;

    // ── Contact and address ───────────────────────────────────────────────────

    // Registered office address (as per certificate of incorporation).
    // Used in document verification (Step 3) and legal structure lookup (Step 5).
    string registeredAddress;

    // Primary business operating address if different from registered address.
    // Used in the Party Reference Data lookup (Step 4).
    string operatingAddress;

    // Full name of the authorised signatory or primary relationship contact.
    // Used in the Party Lifecycle initiation (Step 1) and document verification.
    string primaryContactName;

    // Primary contact email for onboarding communications and document requests.
    string primaryContactEmail;

    // Primary contact telephone number (E.164 format).
    string primaryContactPhone;

    // ── Relationship classification ───────────────────────────────────────────

    // Classification of the proposed banking relationship.
    // Accepted values: "Corporate", "SME", "FinancialInstitution", "Government".
    // Drives the credit process (Step 8) and legal compliance (Step 9) scope.
    string relationshipType;

    // Reference to an existing customer record if the entity already holds
    // another product with the bank (e.g., FX account). Used in Step 4 to
    // retrieve existing reference data rather than creating a new party record.
    // Optional — absent for truly new customers.
    string? existingCustomerReference;

    // ── Document references ───────────────────────────────────────────────────

    // Array of references to KYC/AML documents uploaded to the document store
    // prior to calling this workflow. Each reference is passed to Step 3
    // (Document Services) for validity verification.
    // Required documents typically include: certificate of incorporation,
    // articles of association, audited accounts, and UBO declaration.
    string[] documentReferences;

    // ── Due diligence classification ──────────────────────────────────────────

    // Risk classification pre-assigned by the relationship manager.
    // Accepted values: "Standard", "Enhanced", "High".
    // "High" triggers escalation to senior compliance review in Step 7.
    string riskClassification;
};

// Outbound response payload returned by the workflow on successful completion.
// Returned only after all 9 workflow steps complete without error.
// TODO: Extend with creditRatingReference, complianceCheckReference,
//       and onboardingCompletionDate for full audit trail visibility.
public type CorporateCustomerOnboardingResponse record {
    // Unique identifier for this workflow execution instance.
    // TODO: Replace the hardcoded placeholder with a generated UUID or trace ID.
    string workflowId;

    // The BIAN party reference assigned to the newly onboarded corporate customer.
    // This is the bank-internal identifier used across all subsequent workflows
    // (account opening, credit facility, payments) for this customer.
    string partyReference;

    // Outcome status of the workflow. Set to "SUCCESS" on completion.
    // Error cases are returned as HTTPError and do not reach this response type.
    string status;

    // Human-readable summary message confirming the onboarding outcome.
    string message;
};
