# Corporate Customer Onboarding Workflow

Ballerina implementation of the **Initiate Corporate Customer Onboarding** BIAN business workflow.

## Overview

This module orchestrates the end-to-end onboarding of a new corporate customer. It sequences 9 BIAN service calls covering party registration, document verification, reference data retrieval, related party screening, customer due diligence (CDD), credit rating, and regulatory compliance. Each step must succeed before the next is executed; any failure halts the workflow.

Reference diagram: `recources/Initiate-Corporate-Customer-Onboarding.png`

## Workflow Steps

| # | Step | BIAN Service | Operation |
|---|------|-------------|-----------|
| 1 | Record Request to Register Party | Party Lifecycle Management | Initiate |
| 2 | Analyse and Complete Onboarding Request | Party Lifecycle Management | Retrieve Qualification |
| 3 | Verify Validity of Submitted Documents | Document Services | Register |
| 4 | Retrieve Corporate Customer Reference Data | Party Reference Data Directory | Retrieve Associations |
| 5 | Retrieve Corporate Customer Legal Structure | Legal Entity Directory | Retrieve |
| 6 | Check Related Parties | Party Lifecycle Management | Update Qualification |
| 7 | Perform Customer Due Diligence Assessment | Party Lifecycle Management | Update Qualification (CDD) |
| 8 | Conduct Credit Process | Customer Credit Rating | Initiate |
| 9 | Conduct Legal Process | Regulatory Compliance | Evaluate |

## Entry Point

```ballerina
public isolated function handleCorporateCustomerOnboarding(
    CorporateCustomerOnboardingRequest request
) returns CorporateCustomerOnboardingResponse|common:HTTPError
```

### Input — `CorporateCustomerOnboardingRequest`

| Field | Description |
|-------|-------------|
| `corporateEntityName` | Registered name of the corporate entity |
| `registrationNumber` | Company registration number |
| `legalEntityIdentifier` | LEI code (primary lookup key for legal structure) |
| `jurisdictionOfIncorporation` | Determines applicable regulatory regime |
| `industrySector` | Used for initial credit rating baseline |
| `riskClassification` | `Standard`, `Enhanced`, or `High` — determines CDD depth |
| `documentReferences` | KYC/AML documents submitted (incorporation cert, UBO declaration, etc.) |
| `existingCustomerReference` | Optional — pre-existing banking relationship reference |

### Output — `CorporateCustomerOnboardingResponse`

| Field | Description |
|-------|-------------|
| `workflowId` | Unique identifier for this workflow execution |
| `partyReference` | Assigned party lifecycle management ID |
| `status` | `SUCCESS` or error indicator |
| `message` | Human-readable result description |

## Implementing Data Mappers

All mapper and extractor functions are defined in `data_mappings.bal`. Functions marked `TODO` return empty records or placeholder strings and must be implemented before the workflow can run end-to-end.

### Mapper functions

| Function | Step | Required fields to populate |
|----------|------|----------------------------|
| `mapToRegisterPartyRequest` | 1 | `partyReference` (from entity name + registration number), `partyRelationshipType` → `"CorporateCustomer"`, `customerReference` (from `existingCustomerReference` if present), `partyLifecycleMaintenanceTask` → `"CorporateCustomerOnboarding"`, `partyLifecycleMaintenanceTaskType` → `"InitialOnboarding"`, `partyRelationshipLifecycleStatus` → `"Pending"` |
| `mapToDocumentVerificationRequest` | 3 | `documentDirectoryEntryReference`, `documentDirectoryEntryType` → `"KYCDocumentSet"`, `documentDirectoryEntryStatus` → `"PendingVerification"`, `documentDirectoryEntryInstance` (one record per entry in `request.documentReferences`), `associatedPartyReference` (party reference from Step 1) |
| `mapToRelatedPartyCheckRequest` | 6 | `qualificationType` → `"RelatedPartyScreening"`, `qualificationTaskRecord` (all directors, shareholders ≥10%, UBOs ≥25%, and group entities from both `referenceDataResult` and `legalStructureResult`), `qualificationTaskDescription`, `specialistAgencyServiceReference` (sanctions screening service) |
| `mapToDueDiligenceAssessmentRequest` | 7 | `qualificationType` based on `riskClassification` (`"Standard"` → `"SimplifiedDueDiligence"`, `"Enhanced"` → `"EnhancedDueDiligence"`, `"High"` → `"FullEnhancedDueDiligence"`), `qualificationTaskRecord` (evidence from Steps 3–6), `qualificationTaskWorkProducts` (supporting documents and decision audit trail) |
| `mapToCreditProcessRequest` | 8 | `customerReference` (party reference from Step 1), `customerCreditRatingAssessment` → `"InitialRating"`, `customerCreditRatingNarrative` (entity type, industry sector, jurisdiction), `customerCreditRatingStandardMeasures` (review frequency, re-assessment thresholds), `businessUnit` → `"CorporateBanking"` |
| `mapToLegalProcessRequest` | 9 | `regulatoryComplianceTestType` → `"CorporateCustomerOnboarding"`, `businessUnitReference`, `customerReference`, `regulatoryAuthorityReference` (derived from `jurisdictionOfIncorporation`), `regulationReference` (FATCA if US nexus, CRS, AMLA, 6AMLD, GDPR), `regulationComplianceandReportingRequirements`, `documentReference` (from Step 3 result) |

### Extractor functions

| Function | Step | Implementation guidance |
|----------|------|------------------------|
| `extractPartyLifecycleManagementId` | 2, 6, 7 | Read the plan reference from the Step 1 initiation result (e.g., `partyRelationshipAdministrativePlanReference`) |
| `extractQualificationId` | 2, 6, 7 | Read the qualification task reference from the maintenance task record in the Step 1 result |
| `extractPartyReferenceDataDirectoryId` | 4 | Derive from the party reference in Step 1 result, or from `request.existingCustomerReference`; fall back to `registrationNumber` |
| `extractAssociationsId` | 4 | Derive from the party reference or use a well-known associations record type ID for corporate ownership data |
| `extractLegalEntityDirectoryId` | 5 | Use `request.legalEntityIdentifier` (LEI) as the primary key; fall back to `request.registrationNumber` combined with `jurisdictionOfIncorporation` |

## CDD Risk Levels

The depth of the due diligence assessment in Step 7 is driven by `riskClassification`:

| Level | CDD Type | Requirements |
|-------|----------|-------------|
| `Standard` | Simplified CDD | Identity verification and business purpose |
| `Enhanced` | Enhanced Due Diligence | Source of funds, full ownership chain |
| `High` | Full EDD | Senior compliance sign-off, periodic review schedule |

## Module Files

| File | Purpose |
|------|---------|
| `corporate_customer_onboarding.bal` | Main workflow orchestration function |
| `functions.bal` | BIAN service client calls |
| `data_mappings.bal` | Request/response mapping functions |
| `types.bal` | Workflow-specific type definitions |
