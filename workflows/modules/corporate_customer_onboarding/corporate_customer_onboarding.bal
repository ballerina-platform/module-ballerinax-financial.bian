import ballerinax/financial.bian.attribute.groups.common as common_attributes;
import ballerinax/financial.bian.attribute.groups.customers as customers;
import ballerinax/financial.bian.attribute.groups.finance_risk_management as finance_risk_management;
import ballerinax/financial.bian.business.workflows.common as common;
import ballerina/io;

// Initiate Corporate Customer Onboarding for New Customer
// Implements the sequence defined in Initiate-Corporate-Customer-Onboarding.png.
// Orchestrates 9 BIAN service calls across the following domains in order:
//   1.  Record Request to Register Party             → Party Lifecycle Management (Initiate)
//   2.  Analyse and Complete Onboarding Request      → Party Lifecycle Management (Qualification Retrieve)
//   3.  Verify Validity of Submitted Documents       → Document Services (Register)
//   4.  Retrieve Corporate Customer Reference Data   → Party Reference Data Directory (Associations Retrieve)
//   5.  Retrieve Corporate Customer Legal Structure  → Legal Entity Directory (Retrieve)
//   6.  Check Related Parties                        → Party Lifecycle Management (Qualification Update)
//   7.  Perform Customer Due Diligence Assessment    → Party Lifecycle Management (Qualification Update — CDD)
//   8.  Conduct Credit Process of Corporate Customer Onboarding → Customer Credit Rating (Initiate)
//   9.  Conduct Legal Process of Corporate Customer Onboarding  → Legal Compliance / Regulatory Compliance (Evaluate)
// Each step must succeed before the next is executed; any failure halts the workflow.
public isolated function handleCorporateCustomerOnboarding(CorporateCustomerOnboardingRequest request) returns CorporateCustomerOnboardingResponse|common:HTTPError {

    // Step 1: Record Request to Register Party (Party Lifecycle Management — Initiate)
    // Diagram: "Record Request to Register Party" → Party Lifecycle Management
    // Purpose: Create the corporate customer's party record in the bank's party lifecycle system,
    //          establishing the formal banking relationship reference and initialising the
    //          onboarding lifecycle. All subsequent steps are anchored to this party record.
    // Implementation: mapToRegisterPartyRequest must populate the party relationship type
    //          as "CorporateCustomer", set the entity name and registration number, and mark
    //          the relationship lifecycle status as "Pending" until all 9 steps complete.
    customers:PartyRelationshipAdministrativePlan registerPartyRequest = mapToRegisterPartyRequest(request);
    customers:PartyRelationshipAdministrativePlan|common_attributes:HTTPErrorBadRequest|common_attributes:HTTPErrorUnauthorized|common_attributes:HTTPErrorForbidden|
    common_attributes:HTTPErrorNotFound|common_attributes:HTTPErrorTooManyRequests|common_attributes:HTTPErrorInternalServerError registrationResult = registerParty(registerPartyRequest);

    if !(registrationResult is customers:PartyRelationshipAdministrativePlan) {
        io:println("Party Lifecycle Management RegisterParty error: ", registrationResult);
        return <common:HTTPError>registrationResult;
    }

    // Step 2: Analyse and Complete Onboarding Request (Party Lifecycle Management — Qualification Retrieve)
    // Diagram: "Analyse and Complete Onboarding Request" → Party Lifecycle Management
    // Purpose: Retrieve the qualification task record for this party, which defines the
    //          full set of checks, documents, and assessments required for the specific
    //          entity type (e.g., PrivateLimitedCompany vs FinancialInstitution) and
    //          risk classification. The qualification record is the onboarding checklist
    //          that ensures all regulatory requirements are captured before proceeding.
    // Implementation: extractPartyLifecycleManagementId must read the plan reference from
    //          registrationResult. extractQualificationId must read the qualification task
    //          reference from the maintenance task record in registrationResult.
    string partyLifecycleManagementId = extractPartyLifecycleManagementId(registrationResult);
    string qualificationId = extractQualificationId(registrationResult);
    customers:Qualification|common_attributes:HTTPErrorBadRequest|common_attributes:HTTPErrorUnauthorized|common_attributes:HTTPErrorForbidden|
    common_attributes:HTTPErrorNotFound|common_attributes:HTTPErrorTooManyRequests|common_attributes:HTTPErrorInternalServerError qualificationResult = retrieveOnboardingQualification(partyLifecycleManagementId, qualificationId);

    if !(qualificationResult is customers:Qualification) {
        io:println("Party Lifecycle Management Qualification Retrieve error: ", qualificationResult);
        return <common:HTTPError>qualificationResult;
    }

    // Step 3: Verify Validity of Submitted Documents (Document Services — Register)
    // Diagram: "Verify validity of submitted documents" → Document Services
    // Purpose: Register and verify the KYC/AML documents submitted by the corporate
    //          customer (certificate of incorporation, articles of association, audited
    //          accounts, UBO declaration). Each document is checked for authenticity,
    //          currency (not expired), and completeness against the regulatory checklist
    //          derived in Step 2. No subsequent CDD or compliance steps may proceed
    //          until document verification passes.
    // Implementation: mapToDocumentVerificationRequest must map each reference in
    //          request.documentReferences to a document instance record within the
    //          DocumentDirectoryEntry. The associated party reference from Step 1 must
    //          be included so the document records are linked to the party lifecycle record.
    common_attributes:DocumentDirectoryEntry documentRequest = mapToDocumentVerificationRequest(request, registrationResult);
    common_attributes:DocumentDirectoryEntry|common_attributes:HTTPErrorBadRequest|common_attributes:HTTPErrorUnauthorized|common_attributes:HTTPErrorForbidden|
    common_attributes:HTTPErrorNotFound|common_attributes:HTTPErrorTooManyRequests|common_attributes:HTTPErrorInternalServerError documentResult = verifyDocuments(documentRequest);

    if !(documentResult is common_attributes:DocumentDirectoryEntry) {
        io:println("DocumentDirectory Register error: ", documentResult);
        return <common:HTTPError>documentResult;
    }

    // Step 4: Retrieve Corporate Customer Reference Data (Party Reference Data Directory — Associations Retrieve)
    // Diagram: "Retrieve Corporate Customer Reference Data" → Party Reference Data Directory
    // Purpose: Retrieve the corporate entity's existing reference data associations from the
    //          bank's Party Reference Data Directory. This includes linked entities, prior
    //          banking relationships, and cross-references to external registries. Used to
    //          detect pre-existing relationships and populate the related party check in Step 6.
    // Implementation: extractPartyReferenceDataDirectoryId should derive the lookup ID from
    //          the party reference in registrationResult or from request.existingCustomerReference
    //          if the entity is a known customer. extractAssociationsId should return the
    //          appropriate associations sub-resource ID for corporate ownership data.
    string partyReferenceDataDirectoryId = extractPartyReferenceDataDirectoryId(request, registrationResult);
    string associationsId = extractAssociationsId(registrationResult);
    common_attributes:Associations|common_attributes:HTTPErrorBadRequest|common_attributes:HTTPErrorUnauthorized|common_attributes:HTTPErrorForbidden|
    common_attributes:HTTPErrorNotFound|common_attributes:HTTPErrorTooManyRequests|common_attributes:HTTPErrorInternalServerError referenceDataResult = retrievePartyReferenceData(partyReferenceDataDirectoryId, associationsId);

    if !(referenceDataResult is common_attributes:Associations) {
        io:println("PartyReferenceDataDirectory Associations Retrieve error: ", referenceDataResult);
        return <common:HTTPError>referenceDataResult;
    }

    // Step 5: Retrieve Corporate Customer Legal Structure (Legal Entity Directory — Retrieve)
    // Diagram: "Retrieve Corporate Customer Legal Structure" → Legal Entity Directory
    // Purpose: Retrieve the corporate entity's official legal structure from the Legal Entity
    //          Directory: registered directors, shareholders, beneficial owners (UBOs), group
    //          structure, and LEI-registered profile. This data is the authoritative source
    //          for the related party check (Step 6) and the CDD assessment (Step 7), ensuring
    //          the bank screens the full ownership chain down to UBOs ≥25% as required by AML
    //          regulations (FATF R.10, 4AMLD, 6AMLD).
    // Implementation: extractLegalEntityDirectoryId should use request.legalEntityIdentifier
    //          (LEI) as the primary lookup key, falling back to request.registrationNumber.
    string legalEntityDirectoryId = extractLegalEntityDirectoryId(request);
    customers:LegalEntityDirectoryEntry|common_attributes:HTTPErrorBadRequest|common_attributes:HTTPErrorUnauthorized|common_attributes:HTTPErrorForbidden|
    common_attributes:HTTPErrorNotFound|common_attributes:HTTPErrorTooManyRequests|common_attributes:HTTPErrorInternalServerError legalStructureResult = retrieveLegalEntityStructure(legalEntityDirectoryId);

    if !(legalStructureResult is customers:LegalEntityDirectoryEntry) {
        io:println("LegalEntityDirectory Retrieve error: ", legalStructureResult);
        return <common:HTTPError>legalStructureResult;
    }

    // Step 6: Check Related Parties (Party Lifecycle Management — Qualification Update)
    // Diagram: "Check Related Parties" → Party Lifecycle Management
    // Purpose: Update the qualification task with the related party data gathered in Steps 4
    //          and 5, and trigger the bank's related party screening pipeline. This screens
    //          every director, shareholder above the regulatory threshold (10% in many
    //          jurisdictions), UBO above 25%, and associated group entity against global
    //          sanctions lists (OFAC, EU, UN), PEP databases, and adverse media sources.
    //          A hit on any related party escalates the risk classification and may change
    //          the CDD level applied in Step 7.
    // Implementation: mapToRelatedPartyCheckRequest must construct the full list of
    //          related parties from both referenceDataResult (known bank relationships)
    //          and legalStructureResult (legal entity directory), combining both sources
    //          to give a complete picture of the ownership and control structure.
    customers:Qualification relatedPartyRequest = mapToRelatedPartyCheckRequest(request, referenceDataResult, legalStructureResult);
    customers:Qualification|common_attributes:HTTPErrorBadRequest|common_attributes:HTTPErrorUnauthorized|common_attributes:HTTPErrorForbidden|
    common_attributes:HTTPErrorNotFound|common_attributes:HTTPErrorTooManyRequests|common_attributes:HTTPErrorInternalServerError relatedPartyResult = checkRelatedParties(partyLifecycleManagementId, qualificationId, relatedPartyRequest);

    if !(relatedPartyResult is customers:Qualification) {
        io:println("PartyLifecycleManagement Qualification Update (RelatedParty) error: ", relatedPartyResult);
        return <common:HTTPError>relatedPartyResult;
    }

    // Step 7: Perform Customer Due Diligence Assessment (Party Lifecycle Management — Qualification Update — CDD)
    // Diagram: "Perform Customer Due Diligence Assessment" → Party Lifecycle Management
    // Purpose: Submit the consolidated due diligence evidence for the formal CDD assessment.
    //          The CDD depth is determined by request.riskClassification:
    //            Standard → Simplified CDD (identity verification and business purpose)
    //            Enhanced → Enhanced Due Diligence (source of funds, ownership chain detail)
    //            High     → Full EDD (senior compliance sign-off, periodic review schedule)
    //          This is the compliance gate that authorises the credit and legal processes.
    //          The qualification result from this step is the compliance sign-off required
    //          before Steps 8 and 9 can proceed.
    // Implementation: mapToDueDiligenceAssessmentRequest must combine the evidence from
    //          Steps 3–6 (document verification, reference data, legal structure, related party
    //          screening) into the qualification payload. The qualificationType must reflect
    //          the CDD level derived from request.riskClassification.
    customers:Qualification cddRequest = mapToDueDiligenceAssessmentRequest(request, relatedPartyResult, documentResult);
    customers:Qualification|common_attributes:HTTPErrorBadRequest|common_attributes:HTTPErrorUnauthorized|common_attributes:HTTPErrorForbidden|
    common_attributes:HTTPErrorNotFound|common_attributes:HTTPErrorTooManyRequests|common_attributes:HTTPErrorInternalServerError cddResult = performDueDiligenceAssessment(partyLifecycleManagementId, qualificationId, cddRequest);

    if !(cddResult is customers:Qualification) {
        io:println("PartyLifecycleManagement Qualification Update (CDD) error: ", cddResult);
        return <common:HTTPError>cddResult;
    }

    // Step 8: Conduct Credit Process of Corporate Customer Onboarding (Customer Credit Rating — Initiate)
    // Diagram: "Conduct Credit Process of Corporate Customer Onboarding" → Customer Credit Rating
    // Purpose: Initiate the ongoing credit monitoring programme for the newly onboarded corporate
    //          customer. This establishes the customer's initial credit rating baseline using
    //          publicly available financial data, credit bureau reports, and the bank's internal
    //          credit models. The rating determines credit facility limits, pricing tiers, and
    //          collateral requirements for all subsequent lending and treasury products.
    // Implementation: mapToCreditProcessRequest must populate the customer credit rating request
    //          with the corporate entity reference, industry sector (from request.industrySector),
    //          and the due diligence result as supporting evidence. The assessment type must be
    //          set to "InitialRating" for a newly onboarded customer.
    customers:CustomerCreditRatingState creditRequest = mapToCreditProcessRequest(request, cddResult);
    customers:CustomerCreditRatingState|common_attributes:HTTPErrorBadRequest|common_attributes:HTTPErrorUnauthorized|common_attributes:HTTPErrorForbidden|
    common_attributes:HTTPErrorNotFound|common_attributes:HTTPErrorTooManyRequests|common_attributes:HTTPErrorInternalServerError creditResult = initiateCreditProcess(creditRequest);

    if !(creditResult is customers:CustomerCreditRatingState) {
        io:println("CustomerCreditRating Initiate error: ", creditResult);
        return <common:HTTPError>creditResult;
    }

    // Step 9: Conduct Legal Process of Corporate Customer Onboarding (Regulatory Compliance — Evaluate)
    // Diagram: "Conduct Legal Process of Corporate Customer Onboarding" → Legal Compliance
    // Purpose: Evaluate all applicable legal and regulatory compliance requirements for the
    //          corporate customer: corporate governance checks, beneficial ownership reporting
    //          (FATCA/CRS/UBO register obligations), jurisdiction-specific AML/CTF requirements,
    //          and regulatory capital provisioning for financial institution customers.
    //          This is the final gate before the customer relationship is formally activated.
    //          A failed evaluation must halt onboarding and trigger a senior compliance review.
    // Implementation: mapToLegalProcessRequest must reference the applicable regulator derived
    //          from request.jurisdictionOfIncorporation and list all regulations that apply
    //          (FATCA if US nexus, CRS for OECD, 6AMLD, GDPR). The document verification
    //          reference from Step 3 must be included as evidence in the assessment payload.
    finance_risk_management:RegulatoryComplianceAssessment legalRequest = mapToLegalProcessRequest(request, creditResult);
    finance_risk_management:RegulatoryComplianceAssessment|common_attributes:HTTPErrorBadRequest|common_attributes:HTTPErrorUnauthorized|common_attributes:HTTPErrorForbidden|
    common_attributes:HTTPErrorNotFound|common_attributes:HTTPErrorTooManyRequests|common_attributes:HTTPErrorInternalServerError legalResult = conductLegalProcess(legalRequest);

    if !(legalResult is finance_risk_management:RegulatoryComplianceAssessment) {
        io:println("RegulatoryCompliance LegalProcess error: ", legalResult);
        return <common:HTTPError>legalResult;
    }

    io:println("Corporate Customer Onboarding workflow completed successfully for: ", request.corporateEntityName);

    CorporateCustomerOnboardingResponse response =  {
        workflowId: "corporate-onboarding-" + request.registrationNumber,
        partyReference: partyLifecycleManagementId,
        status: "SUCCESS",
        message: "Corporate customer onboarding completed successfully for " + request.corporateEntityName
    };
    return response;
}
