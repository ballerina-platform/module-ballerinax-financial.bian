# Corporate Payroll Service Agreement Workflow

Ballerina implementation of the **Establish Corporate Payroll Service Agreement** BIAN business workflow.

## Overview

This module orchestrates the setup of a corporate payroll service agreement between a bank and a corporate customer. It sequences 12 BIAN service calls covering customer offer creation, verification, product lookup, agreement establishment, document management, authorisation, fee collection, and customer notification. Each step must succeed before the next is executed; any failure halts the workflow.

Reference diagram: `recources/Establish-Corporate-Payroll-Service.png`

## Workflow Steps

| # | Step | BIAN Service | Operation |
|---|------|-------------|-----------|
| 1 | Record Request to Open Corporate Payroll Service Agreement | Customer Offer | Initiate |
| 2 | Verify Corporate Customer | Party Lifecycle Management | Retrieve |
| 3 | Get Details of Salary Account Services | Product Directory | Retrieve |
| 4 | Retrieve List of Products of this Customer | Customer Product & Service Directory | Retrieve |
| — | Agree Conditions with Customer | *(internal advisory step — no API call)* | — |
| 5 | Open Corporate Payroll Services Agreement | Corporate Payroll Services | Initiate |
| 6 | Create Sales Product Agreement | Sales Product Agreement | Initiate |
| 7 | Get Customer Signatures | Correspondence | Initiate |
| 8 | File Sales Product Agreement | Document Directory | Register |
| 9 | Authorise Corporate Payroll Services Agreement | Corporate Payroll Services | Update |
| 10 | Create Payment Order for Fees and Charges | Payment Order | Initiate *(pending client)* |
| 11 | Inform Customer | Correspondence | Initiate |
| 12 | Add Payroll Services to Customer Products | Customer Product & Service Directory | Update |

## Entry Point

```ballerina
public isolated function handleCorporatePayrollServiceAgreement(
    CorporatePayrollServiceAgreementRequest request
) returns CorporatePayrollServiceAgreementResponse|common:HTTPError
```

### Input — `CorporatePayrollServiceAgreementRequest`

| Field | Description |
|-------|-------------|
| `customerId` | Corporate customer party reference (used as `partyLifecycleManagementId` in Step 2) |
| `customerName` | Corporate customer name (used in notifications) |
| `productDirectoryId` | Product Directory entry ID for Salary Account Services |
| `customerProductServiceDirectoryId` | Customer's product and service directory entry ID |
| `paymentAccountId` | Account from which setup fees are debited |
| `feeAmount` | Agreed setup / service fee amount |
| `feeCurrency` | Currency of the fee |
| Employee and service configuration fields | Payment frequency, employee count, service tier, etc. |

### Output — `CorporatePayrollServiceAgreementResponse`

| Field | Description |
|-------|-------------|
| `workflowId` | Unique identifier for this workflow execution |
| `payrollAgreementId` | Corporate Payroll Services facility ID |
| `salesProductAgreementId` | Sales Product Agreement ID |
| `status` | `SUCCESS` or error indicator |
| `message` | Human-readable result description |

## Implementing Data Mappers

All mapper and extractor functions are defined in `data_mappings.bal`. Functions marked `TODO` return empty records or placeholder strings and must be implemented before the workflow can run end-to-end.

### Mapper functions

| Function | Step | Required fields to populate |
|----------|------|----------------------------|
| `mapToCustomerOfferRequest` | 1 | `customerOfferType` → `"CorporatePayrollService"`, `customerReference` (from `request.customerId`), `productInstanceReference` (payroll service type), processing task parameters (payroll service type, employee count) |
| `mapToOpenAgreementRequest` | 5 | `employeePaymentServicesFacilityType` → `"CorporatePayrollService"`, `payrollServiceType` (from `request.payrollServiceType`), `employeeCount`, `paymentFrequency`, `paymentAccountId`, `productDirectoryReference` (from `productDetails`), `customerReference` (from `verificationResult`) |
| `mapToSalesProductAgreementRequest` | 6 | `salesProductAgreementType` → `"CorporatePayrollServiceAgreement"`, `customerReference` (from `request.customerId`), `productAgreementReference` (payroll facility from Step 5), `agreementFeeAmount` (from `request.feeAmount`), `agreementFeeCurrency` (from `request.feeCurrency`), `agreementServiceStartDate` |
| `mapToSignatureRequestCorrespondence` | 7 | `correspondenceType` → `"SignatureRequest"`, `recipientReference` (from `request.customerName` and `request.customerId`), `salesAgreementReference` (from Step 6 result), `communicationChannel` (customer's preferred channel) |
| `mapToFileSalesAgreementRequest` | 8 | `documentDirectoryEntryType` → `"SignedSalesProductAgreement"`, `salesAgreementReference` (from Step 6), `correspondenceReference` (from Step 7), `documentStatus` → `"Verified"` (only after signed documents are confirmed received) |
| `mapToAuthoriseAgreementRequest` | 9 | `employeePaymentServicesFacilityStatus` → `"Authorised"`, `documentReference` (filed agreement from Step 8), `salesAgreementReference`, `authorisationDate`, `authoriserReference`, any conditions attached to the approval |
| `mapToPaymentOrderForFeesRequest` *(commented)* | 10 | `paymentAmount` (from `request.feeAmount`), `paymentCurrency` (from `request.feeCurrency`), `debitAccountReference` (from `request.paymentAccountId`), `paymentPurpose` → `"PayrollServiceSetupFee"`, `payrollFacilityReference` (from Step 9 result) |
| `mapToCustomerNotificationCorrespondence` | 11 | `correspondenceType` → `"ServiceActivationConfirmation"`, `recipientReference` (customer name and ID), `payrollFacilityReference` (from Step 9), fee payment confirmation details, agreed payment schedule, instructions for submitting employee payment files |
| `mapToAddPayrollServiceRequest` | 12 | Preserve all existing product entries from Step 4 `customerProducts`; append new payroll service entry with `productDirectoryReference`, `productStatus` → `"Active"`, `payrollFacilityReference` (from Step 9) |

### Extractor functions

| Function | Step | Implementation guidance |
|----------|------|------------------------|
| `extractCustomerOfferId` | 1 | Read the offer procedure identifier from the Step 1 Customer Offer initiation response |
| `extractPartyLifecycleId` | 2 | Read the administrative plan identifier from the Step 2 Party Lifecycle retrieve response |
| `extractCorporatePayrollServicesId` | 5 | Read the facility identifier from the Step 5 Corporate Payroll Services initiation response; used as the path parameter in Step 9 |
| `extractSalesProductAgreementId` | 6 | Read the agreement identifier from the Step 6 Sales Product Agreement initiation response; returned in the workflow response |

## Agreement Lifecycle Gates

The workflow enforces a strict prerequisite chain before the payroll facility is authorised:

```
Customer Verified (Step 2)
    → Conditions Agreed (Step 5)
        → Agreement Signed (Steps 6–7)
            → Documents Filed (Step 8)
                → Facility Authorised (Step 9)
                    → Payments & Notifications (Steps 10–12)
```

The facility remains in a provisional state until Step 9 completes successfully.

## Known Gaps / TODOs

- **Step 10** — Payment Order initiation for fees is commented out pending the BIAN Payment Order client dependency.

## Module Files

| File | Purpose |
|------|---------|
| `corporate_payroll_service_agreement.bal` | Main workflow orchestration function |
| `functions.bal` | BIAN service client calls |
| `data_mappings.bal` | Request/response mapping functions |
| `types.bal` | Workflow-specific type definitions |
