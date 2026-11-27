# Savings Account Opening Workflow

Ballerina implementation of the **Handle Request to Open Savings Account** BIAN business workflow.

## Overview

This module orchestrates the end-to-end process of opening a retail savings account. It sequences 22 BIAN service calls across customer management, product, compliance, accounting, and communication domains. Each step must succeed before the next is executed; any failure halts the workflow.

Reference diagram: `recources/Handle-Request-to-Open-Savings-Account.png`

## Workflow Steps

| # | Step | BIAN Service | Operation |
|---|------|-------------|-----------|
| 1 | Notify Retail Customer | Customer Offer | Initiate |
| 2 | Retrieve Data About Relevant Customers | Party Lifecycle Management | Initiate |
| 3 | Retrieve Current Products at This Customer | Party Reference Data Directory | Retrieve Associations |
| 4 | Retrieve Savings Account Products Customer is Eligible For | Customer Product & Service Directory | Retrieve |
| 5 | Product Eligibility Evaluation | *(internal logic — TODO)* | — |
| 6 | Get Product Details | Product Directory | Retrieve SalesandMarketing |
| 7 | Agree Conditions with Customer | *(internal session dialogue — TODO)* | — |
| 8 | For Each Signatory: Notify Retail Customer | Party Lifecycle Management | Initiate |
| 9 | Verify Regulatory Compliance | Regulatory Compliance | Evaluate |
| 10 | Open Savings Account | Savings Account | Initiate |
| 11 | Verify Completion of Customer Updates | Party Lifecycle Management | Retrieve Qualification |
| 12 | Get Operational Details | Product Directory | Retrieve Operations |
| 13 | Evaluate Sales Product Agreement | Sales Product Agreement | Evaluate |
| 14 | Set Up New Account | Position Keeping | Initiate |
| 15 | Set Up New Account | Financial Accounting | Initiate |
| 16 | Create Payment Order for Initial Funding | Payment Order | Initiate *(pending client)* |
| 17 | Adapt Savings Account to Customer ID Device | Issued Device Administration | Update DeviceAssignment |
| 18 | Create Payment Order for Fees and Charges | Payment Order | Initiate *(pending client)* |
| 19 | Activate Savings Account | Savings Account | Update/Execute *(TODO)* |
| 20 | Add Savings Account to Customer List of Products | Customer Product & Service Directory | Register |
| 21 | Inform Customer | Correspondence | Initiate Outbound |
| 22 | Verify Conduct Execution of Opening Process | Guideline Compliance | Evaluate |

## Entry Point

```ballerina
public isolated function handleSavingsAccountOpening(
    AccountOpeningRequest request
) returns AccountOpeningResponse|common:HTTPError
```

### Input — `AccountOpeningRequest`

| Field | Description |
|-------|-------------|
| `accountType` | Savings account product variant requested |
| `currency` | Account currency |
| `initialDeposit` | Opening deposit amount |
| Customer identity fields | Name, contact, customer type |

### Output — `AccountOpeningResponse`

| Field | Description |
|-------|-------------|
| `workflowId` | Unique identifier for this workflow execution |
| `accountNumber` | Assigned account number |
| `status` | `SUCCESS` or error indicator |
| `message` | Human-readable result description |

## Implementing Data Mappers

All mapper and extractor functions are defined in `data_mappings.bal`. Functions marked `TODO` return empty records or placeholder strings and must be implemented before the workflow can run end-to-end.

### Mapper functions

| Function | Step | Required fields to populate |
|----------|------|----------------------------|
| `mapToCustomerOfferRequest` | 1 | `customerReference` (from customer name/ID), `customerOfferType` → `"SavingsAccountOffer"`, `productInstanceReference` (from `accountType`), `proposedProductandServiceProperties` (accountType, currency, initialDeposit), `customerContactDetails`, `customerOfferStatus` → `"Pending"` |
| `mapToPartyLifecycleRequest` | 2, 8 | `partyReference`, `partyRelationshipType` (from `customerType`), `customerOfferReference` (from Step 1 result), `partyLifecycleStatus` → `"Onboarding"` (Step 2) / `"EligibilityVerification"` (Step 8), `contactDetails` |
| `mapToSavingsAccountRequest` | 10 | `productInstanceReference` (product code from `accountType`), `customerReference` (party reference from Step 2/8), `accountCurrency`, `openingBalance` (from `initialDeposit`), `accountStatus` → `"PendingActivation"`, `accountOpeningDate` |
| `mapToRegulatoryComplianceRequest` | 9 | `customerReference`, `regulatoryComplianceTestType` → `"AccountOpening"`, `productType` (from `accountType`), `transactionAmount` (from `initialDeposit`), `customerJurisdiction` (from contact details), `customerType` |
| `mapToSalesProductAgreementRequest` | 13 | `customerReference` (party reference from Steps 2/8), `productInstanceReference` (savings account ref from Step 10), `salesProductAgreementType`, `agreementOriginatorReference` (offer ref from Step 1), `agreementTermsandConditionsReference` (from Step 6), `qualificationReference` (from Step 11), `agreementDate`, `agreementValidFromDate` / `agreementValidToDate` |
| `mapToPositionKeepingRequest` | 14 | `financialPositionLogType` → `"SavingsAccountPosition"`, `productInstanceReference` (account ref from Step 10), `positionLimitSettings` (from Step 12 operational details), `openingBalance`, `positionCurrency`, `positionDate`, `customerReference` |
| `mapToFinancialAccountingRequest` | 15 | `financialBookingLogType` → `"AccountOpeningEntry"`, `productInstanceReference` (account number from Step 10), `positionKeepingReference` (from Step 14), `debitAccountReference` (clearing GL), `creditAccountReference` (savings liability GL), `transactionAmount`, `transactionCurrency`, `bookingDate` / `valueDate`, `transactionDescription` |
| `mapToDeviceAssignmentRequest` | 17 | `productInstanceReference` (new account number from Step 10), `issuedDeviceReference` (customer's existing device ID), `deviceAssignmentStatus` → `"Assigned"`, `deviceAssignmentPurpose`, `assignmentDate` |
| `mapToCustomerProductServiceEntryUpdate` | 20 | `customerReference`, `productInstanceReference` (new account ref), `productandServiceType` → `"SavingsAccount"`, `productInstanceStatus` → `"Active"`, `productInstanceStartDate`, `currency` — preserve existing product entries |
| `mapToCorrespondenceOutbound` | 21 | `correspondenceTemplateReference`, `customerReference`, `contactDetails` (customer's preferred channel), `correspondenceContent` (account number, type, opening date, currency), `correspondenceStatus` → `"Pending"`, `communicationChannel` |
| `mapToGuidelineComplianceAssessment` | 22 | `guidelineComplianceTestType` → `"SavingsAccountOpeningGuideline"`, `productInstanceReference`, `customerReference`, `customerType`, `salesProductAgreementReference` (from Step 13), `regulatoryComplianceReference` (from Step 9), `assessmentDate` |

### Extractor functions

| Function | Step | Implementation guidance |
|----------|------|------------------------|
| `extractPartyReferenceDataDirectoryId` | 3 | Read the directory reference from the Party Lifecycle result (Step 2); fall back to deriving from `accountRequest` if absent |
| `extractAssociationsId` | 3 | Read the associations reference field from the Party Lifecycle result (Step 2) |
| `extractCustomerProductAndServiceDirectoryId` | 4 | Read the customer product directory reference from the Associations result (Step 3) |
| `extractProductDirectoryId` | 6, 12 | Map `accountRequest.accountType` to the bank's product catalog identifier (e.g., `"SAVINGS_STANDARD"` → `"PD-001"`) |
| `extractSalesAndMarketingId` | 6 | Map `accountRequest.accountType` to the SalesandMarketing sub-entry ID within the Product Directory |
| `extractOperationsId` | 12 | Map `accountRequest.accountType` to the Operations sub-entry ID within the Product Directory |
| `extractPartyLifecycleManagementId` | 11 | Read the lifecycle management record identifier from the Step 8 Party Lifecycle result |
| `extractPartyLifecycleManagementQualificationId` | 11 | Read the qualification sub-record ID from the Step 8 Party Lifecycle result |
| `extractIssuedDeviceAdministrationId` | 17 | Look up the customer's device administration record ID using the customer reference |
| `extractDeviceAssignmentId` | 17 | Read the DeviceAssignment sub-record ID for the customer's primary device |
| `extractCorrespondenceId` | 21 | Return an active correspondence session ID, or construct one from the customer reference and current timestamp |

## Known Gaps / TODOs

- **Step 5** — Product eligibility logic not yet implemented.
- **Step 7** — Customer consent capture not yet implemented.
- **Steps 16 & 18** — Payment Order calls are commented out pending the `clearing_and_settlement` BIAN client dependency.
- **Step 19** — Savings account activation logic not yet implemented.
- `workflowId` and `accountNumber` in the success response are currently hardcoded placeholders.

## Module Files

| File | Purpose |
|------|---------|
| `savings_account_opening.bal` | Main workflow orchestration function |
| `functions.bal` | BIAN service client calls |
| `data_mappings.bal` | Request/response mapping functions |
| `types.bal` | Workflow-specific type definitions |
