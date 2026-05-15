import ballerinax/financial.bian.attribute.groups.common as common_attributes;
import ballerinax/financial.bian.attribute.groups.customers as customers;
import ballerinax/financial.bian.attribute.groups.finance_risk_management as finance_risk_management;
import ballerinax/financial.bian.business.workflows.common as common;
import ballerina/io;

// ─── Step 1: Record Request to Register Party ────────────────────────────────

// Calls BIAN Party Lifecycle Management v14 — Initiate endpoint.
// BIAN domain: Customers | Service Domain: PartyLifecycleManagement
// Creates the corporate customer's party record in the bank's party lifecycle system,
// establishing the formal banking relationship. The returned administrative plan
// carries the party reference ID and qualification task references used by
// subsequent update calls (Steps 2, 6, and 7). Called first because all subsequent
// steps are anchored to this party record.
isolated function registerParty(customers:PartyRelationshipAdministrativePlan request)
        returns customers:PartyRelationshipAdministrativePlan|common_attributes:HTTPErrorBadRequest|common_attributes:HTTPErrorUnauthorized|common_attributes:HTTPErrorForbidden|
        common_attributes:HTTPErrorNotFound|common_attributes:HTTPErrorTooManyRequests|common_attributes:HTTPErrorInternalServerError {

    customers:PartyRelationshipAdministrativePlan|error response = common:customersBianClient->/bian/PartyLifecycleManagement/v14/PartyLifecycleManagement/Initiate.post(request);
    io:println("Received PartyLifecycleManagement RegisterParty Response");

    if response is error {
        return common:constructInternalServerError(response.message(), response.detail().toString());
    }
    return response;
}

// ─── Step 2: Analyse and Complete Onboarding Request ─────────────────────────

// Calls BIAN Party Lifecycle Management v14 — Retrieve Qualification endpoint.
// BIAN domain: Customers | Service Domain: PartyLifecycleManagement
// Retrieves the qualification task record for this party, which defines the set of
// checks, documents, and assessments required to complete the onboarding for the
// specific entity type and risk classification. The qualification record acts as the
// onboarding checklist that guides Steps 3–7.
isolated function retrieveOnboardingQualification(string partyLifecycleManagementId, string qualificationId)
        returns customers:Qualification|common_attributes:HTTPErrorBadRequest|common_attributes:HTTPErrorUnauthorized|common_attributes:HTTPErrorForbidden|
        common_attributes:HTTPErrorNotFound|common_attributes:HTTPErrorTooManyRequests|common_attributes:HTTPErrorInternalServerError {

    customers:Qualification|error response = common:customersBianClient->/bian/PartyLifecycleManagement/v14/PartyLifecycleManagement/[partyLifecycleManagementId]/Qualification/[qualificationId]/Retrieve.get();
    io:println("Received PartyLifecycleManagement Qualification Retrieve Response");

    if response is error {
        return common:constructInternalServerError(response.message(), response.detail().toString());
    }
    return response;
}

// ─── Step 3: Verify Validity of Submitted Documents ──────────────────────────

// Calls BIAN Document Directory v14 — Register endpoint.
// BIAN domain: Operations | Service Domain: DocumentDirectory
// Registers the submitted KYC/AML documents (certificate of incorporation,
// articles of association, audited accounts, UBO declaration) in the document
// directory and triggers the bank's document verification workflow. Returns a
// document directory entry with verification status for each submitted document.
// Required before reference data retrieval and due diligence assessment so that
// only validated documents are used as evidence in compliance decisions.
// TODO: Verify that operations:DocumentDirectoryEntry is the correct type for
//       the DocumentDirectory/Register endpoint in the attribute groups package.
isolated function verifyDocuments(common_attributes:DocumentDirectoryEntry request)
        returns common_attributes:DocumentDirectoryEntry|common_attributes:HTTPErrorBadRequest|common_attributes:HTTPErrorUnauthorized|common_attributes:HTTPErrorForbidden|
        common_attributes:HTTPErrorNotFound|common_attributes:HTTPErrorTooManyRequests|common_attributes:HTTPErrorInternalServerError {

    common_attributes:DocumentDirectoryEntry|error response = common:operationsBianClient->/bian/DocumentDirectory/v14/DocumentDirectory/Register.post(request);
    io:println("Received DocumentDirectory Register Response");

    if response is error {
        return common:constructInternalServerError(response.message(), response.detail().toString());
    }
    return response;
}

// ─── Step 4: Retrieve Corporate Customer Reference Data ───────────────────────

// Calls BIAN Party Reference Data Directory v14 — Retrieve Associations endpoint.
// BIAN domain: Customers | Service Domain: PartyReferenceDataDirectory
// Retrieves the corporate entity's existing reference data associations: linked entities,
// related parties, prior banking relationships, and cross-references to external
// registries. Used to detect pre-existing relationships, identify beneficial owners
// already known to the bank, and populate the related party check in Step 6.
isolated function retrievePartyReferenceData(string partyReferenceDataDirectoryId, string associationsId)
        returns common_attributes:Associations|common_attributes:HTTPErrorBadRequest|common_attributes:HTTPErrorUnauthorized|common_attributes:HTTPErrorForbidden|
        common_attributes:HTTPErrorNotFound|common_attributes:HTTPErrorTooManyRequests|common_attributes:HTTPErrorInternalServerError {

    common_attributes:Associations|error response = common:customersBianClient->/bian/PartyReferenceDataDirectory/v14/PartyReferenceDataDirectory/[partyReferenceDataDirectoryId]/Associations/[associationsId]/Retrieve.get();
    io:println("Received PartyReferenceDataDirectory Associations Retrieve Response");

    if response is error {
        return common:constructInternalServerError(response.message(), response.detail().toString());
    }
    return response;
}

// ─── Step 5: Retrieve Corporate Customer Legal Structure ──────────────────────

// Calls BIAN Legal Entity Directory v14 — Retrieve endpoint.
// BIAN domain: Customers | Service Domain: LegalEntityDirectory
// Retrieves the corporate entity's official legal structure from the Legal Entity
// Directory: registered directors, shareholders, beneficial owners (UBOs), group
// structure, and LEI-registered profile. This data is the authoritative source for
// the related party check (Step 6) and the due diligence assessment (Step 7),
// ensuring the bank screens the full ownership chain against sanctions lists and PEP databases.
// TODO: Verify that customers:LegalEntityDirectoryEntry is the correct type for
//       the LegalEntityDirectory/Retrieve endpoint in the attribute groups package.
isolated function retrieveLegalEntityStructure(string legalEntityDirectoryId)
        returns customers:LegalEntityDirectoryEntry|common_attributes:HTTPErrorBadRequest|common_attributes:HTTPErrorUnauthorized|common_attributes:HTTPErrorForbidden|
        common_attributes:HTTPErrorNotFound|common_attributes:HTTPErrorTooManyRequests|common_attributes:HTTPErrorInternalServerError {

    customers:LegalEntityDirectoryEntry|error response = common:customersBianClient->/bian/LegalEntityDirectory/v14/LegalEntityDirectory/[legalEntityDirectoryId]/Retrieve.get();
    io:println("Received LegalEntityDirectory Retrieve Response");

    if response is error {
        return common:constructInternalServerError(response.message(), response.detail().toString());
    }
    return response;
}

// ─── Step 6: Check Related Parties ───────────────────────────────────────────

// Calls BIAN Party Lifecycle Management v14 — Update Qualification endpoint.
// BIAN domain: Customers | Service Domain: PartyLifecycleManagement
// Updates the qualification task with the related party findings from Steps 4 and 5:
// beneficial owners, directors, shareholders, and group entities. This triggers the
// bank's related party screening pipeline, which checks each identified related party
// against global sanctions lists (OFAC, EU, UN), PEP databases, and adverse media.
// A hit on any related party elevates the risk classification and may escalate the CDD
// to Enhanced or High levels in Step 7.
isolated function checkRelatedParties(string partyLifecycleManagementId, string qualificationId,
        customers:Qualification request)
        returns customers:Qualification|common_attributes:HTTPErrorBadRequest|common_attributes:HTTPErrorUnauthorized|common_attributes:HTTPErrorForbidden|
        common_attributes:HTTPErrorNotFound|common_attributes:HTTPErrorTooManyRequests|common_attributes:HTTPErrorInternalServerError {

    customers:Qualification|error response = common:customersBianClient->/bian/PartyLifecycleManagement/v14/PartyLifecycleManagement/partyLifecycleManagementId/Update.put(request);
    io:println("Received PartyLifecycleManagement Qualification Update (RelatedParty) Response");

    if response is error {
        return common:constructInternalServerError(response.message(), response.detail().toString());
    }
    return response;
}

// ─── Step 7: Perform Customer Due Diligence Assessment ───────────────────────

// Calls BIAN Party Lifecycle Management v14 — Update Qualification endpoint (CDD).
// BIAN domain: Customers | Service Domain: PartyLifecycleManagement
// Submits the consolidated due diligence evidence (documents, reference data, legal
// structure, related party screening results) for the formal Customer Due Diligence
// assessment. The CDD level applied is determined by the riskClassification field:
//   Standard   → simplified CDD — verify identity and business purpose
//   Enhanced   → EDD — verify source of funds and ownership chain in detail
//   High       → Full EDD with senior compliance sign-off and periodic review
// The qualification result from this step is the compliance sign-off required
// before the credit and legal processes in Steps 8 and 9 can proceed.
isolated function performDueDiligenceAssessment(string partyLifecycleManagementId, string qualificationId,
        customers:Qualification request)
        returns customers:Qualification|common_attributes:HTTPErrorBadRequest|common_attributes:HTTPErrorUnauthorized|common_attributes:HTTPErrorForbidden|
        common_attributes:HTTPErrorNotFound|common_attributes:HTTPErrorTooManyRequests|common_attributes:HTTPErrorInternalServerError {

    customers:Qualification|error response = common:customersBianClient->/bian/PartyLifecycleManagement/v14/PartyLifecycleManagement/[partyLifecycleManagementId]/Control.put(request);
    io:println("Received PartyLifecycleManagement Qualification Update (CDD) Response");

    if response is error {
        return common:constructInternalServerError(response.message(), response.detail().toString());
    }
    return response;
}

// ─── Step 8: Conduct Credit Process of Corporate Customer Onboarding ──────────

// Calls BIAN Customer Credit Rating v14 — Initiate endpoint.
// BIAN domain: Customers | Service Domain: CustomerCreditRating
// Initiates the ongoing credit monitoring programme for the newly onboarded corporate
// customer. This establishes the customer's credit rating baseline using publicly
// available financial data, credit bureau reports, and internal credit models.
// The initial credit rating directly determines the credit facility limits, pricing
// tiers, and collateral requirements for any subsequent lending products.
// TODO: Verify that customers:CustomerCreditRatingState is the correct type for
//       the CustomerCreditRating/Initiate endpoint in the attribute groups package.
isolated function initiateCreditProcess(customers:CustomerCreditRatingState request)
        returns customers:CustomerCreditRatingState|common_attributes:HTTPErrorBadRequest|common_attributes:HTTPErrorUnauthorized|common_attributes:HTTPErrorForbidden|
        common_attributes:HTTPErrorNotFound|common_attributes:HTTPErrorTooManyRequests|common_attributes:HTTPErrorInternalServerError {

    customers:CustomerCreditRatingState|error response = common:customersBianClient->/bian/CustomerCreditRating/v14/CustomerCreditRating/Initiate.post(request);
    io:println("Received CustomerCreditRating Initiate Response");

    if response is error {
        return common:constructInternalServerError(response.message(), response.detail().toString());
    }
    return response;
}

// ─── Step 9: Conduct Legal Process of Corporate Customer Onboarding ───────────

// Calls BIAN Regulatory Compliance v14 — Evaluate endpoint.
// BIAN domain: FinanceRiskManagement | Service Domain: RegulatoryCompliance
// Evaluates all applicable legal and regulatory compliance requirements for the
// corporate customer: corporate governance checks, beneficial ownership reporting
// (FATCA/CRS/UBO register), jurisdiction-specific AML/CTF obligations, and
// regulatory capital provisioning requirements for financial institution customers.
// A failed evaluation must halt the onboarding and trigger a compliance review.
// This is the final gate before the customer relationship is formally activated.
isolated function conductLegalProcess(finance_risk_management:RegulatoryComplianceAssessment request)
        returns finance_risk_management:RegulatoryComplianceAssessment|common_attributes:HTTPErrorBadRequest|common_attributes:HTTPErrorUnauthorized|common_attributes:HTTPErrorForbidden|
        common_attributes:HTTPErrorNotFound|common_attributes:HTTPErrorTooManyRequests|common_attributes:HTTPErrorInternalServerError {

    finance_risk_management:RegulatoryComplianceAssessment|error response = common:frMgmtBianClient->/bian/RegulatoryCompliance/v14/RegulatoryCompliance/Evaluate.post(request);
    io:println("Received RegulatoryCompliance LegalProcess Response");

    if response is error {
        return common:constructInternalServerError(response.message(), response.detail().toString());
    }
    return response;
}
