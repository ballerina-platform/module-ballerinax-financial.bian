# Outgoing Credit Transfer Workflow

Ballerina implementation of the **Handle Request for Outgoing Credit Transfer** BIAN business workflow.

## Overview

This module orchestrates the processing of an outgoing credit transfer. It sequences up to 13 BIAN service calls covering payment initiation, duplicate detection, enrichment, beneficiary compliance screening, double-entry bookkeeping, and network-specific settlement dispatch (clearing or SWIFT). Each step must succeed before the next is executed; any failure halts the workflow.

Reference diagram: `recources/Handle-Request-for-Outgoing-Credit-Tansfer.png`

## Workflow Steps

| # | Step | BIAN Service | Operation | Condition |
|---|------|-------------|-----------|-----------|
| 1 | Record Request for Payment Order | Payment Initiation | Initiate | Always |
| 2 | Enrich Credit Transfer | Payment Initiation | Update | Always |
| 3 | Conduct Dedup Check | Payment Initiation | Update | Always |
| 4 | Initiate Outgoing Credit Transfer | Payment Order | Initiate | Always *(pending client)* |
| 5 | Get Operational Details By Payment | Current Account | Retrieve | Always |
| 6 | Check Beneficiary | Regulatory Compliance | Evaluate | Always |
| 7 | Retrieve Correspondent Settlement Account | Correspondent Bank Directory | Retrieve | SWIFT payments only *(pending client)* |
| 8 | Execute Payment Transaction | Payment Execution | Initiate | Outgoing transfers *(pending client)* |
| 8a | Record Debit Booking for Customer Account | Position Keeping | Initiate | Always |
| 8b | Authorise Debit Booking | Financial Accounting | Initiate | Always |
| 8c | Record Credit Booking for Internal Bank Account | Position Keeping | Initiate | Always |
| 8d | Authorize Credit Booking | Financial Accounting | Initiate | Always |
| 9 | Send Payment Instruction | Financial Gateway | Initiate | Settlement via clearing only *(pending client)* |
| 10 | Execute SWIFT Payment + Send Payment Message | Payment Execution + ACH Operations | Initiate | SWIFT payments only *(pending client)* |

## Entry Point

```ballerina
public isolated function handleOutgoingCreditTransfer(
    OutgoingCreditTransferRequest request
) returns OutgoingCreditTransferResponse|common:HTTPError
```

### Input — `OutgoingCreditTransferRequest`

| Field | Description |
|-------|-------------|
| `fromAccount` | Debtor account number |
| `toAccount` | Creditor/beneficiary account number |
| `amount` | Transfer amount |
| `currency` | Transfer currency |
| `description` | Payment reference or description |
| `paymentType` | `SWIFT` or domestic clearing type |
| `correspondentBankBIC` | BIC of the correspondent bank (SWIFT payments) |
| `isSettlementViaCleaning` | `true` routes Step 9 to Financial Gateway |

### Output — `OutgoingCreditTransferResponse`

| Field | Description |
|-------|-------------|
| `workflowId` | Unique identifier for this workflow execution |
| `accountNumber` | Confirmed debited account |
| `status` | `SUCCESS` or error indicator |
| `message` | Human-readable result description |

## Implementing Data Mappers

All mapper and extractor functions are defined in `data_mappings.bal`. Functions marked `TODO` return empty records or placeholder strings and must be implemented before the workflow can run end-to-end. Functions that are commented out are pending BIAN client dependencies.

### Mapper functions

| Function | Step | Required fields to populate |
|----------|------|----------------------------|
| `mapToPaymentInitiationRequest` | 1 | `paymentInitiationInstructionType` → `"CreditTransfer"`, `paymentTransactionInitiatorReference` (unique UUID), `payerReference` (from `fromAccount`), `payeeReference` (from `toAccount`), `payeeProductInstanceReference`, `paymentAmount`, `paymentCurrency`, `paymentDescription`, `paymentInitiationStatus` → `"Received"` |
| `mapToEnrichCreditTransferRequest` | 2 | `paymentInstructionDetail` (full debtor/creditor addresses), `payeeBankBIC` / `correspondentBankBIC` (from `request.correspondentBankBIC`), `paymentTypeInformation` (category purpose, priority, service level), `paymentInitiationStatus` → `"Enriched"` |
| `mapToDedupCheckRequest` | 3 | `paymentTransactionInitiatorReference` (original reference from Step 1), `paymentInitiationStatus` → `"DedupCheckPending"`, all dedup key fields (amount, currency, fromAccount, toAccount, date) |
| `mapToPaymentOrderRequest` *(commented)* | 4 | `paymentOrderType` → `"OutgoingCreditTransfer"`, `paymentTransactionInitiatorReference`, `paymentInitiationTransactionReference` (from Step 1), payer/payee references, `paymentAmount`, `paymentCurrency`, `paymentValueDate`, `paymentOrderStatus` → `"Initiated"` |
| `mapToBeneficiaryCheckRequest` | 6 | `regulatoryComplianceTestType` → `"BeneficiaryCheck"`, `payeeReference` (from `toAccount`), `payeePartyReference` (beneficiary name), `transactionAmount`, `transactionCurrency`, `payerReference` (from `fromAccount`), `customerJurisdiction` (from BIC country code) |
| `mapToPaymentExecutionRequest` *(commented)* | 8 | `paymentExecutionType` (from `paymentType`), `paymentOrderReference` (from Step 4), payer/payee, amount/currency, `paymentValueDate`, `correspondentBankReference` (SWIFT only), `paymentExecutionStatus` → `"Initiated"` |
| `mapToDebitPositionRequest` | 8a | `financialPositionLogType` → `"DebitEntry"`, `productInstanceReference` (from `fromAccount`), `transactionAmount` (as a debit), `transactionCurrency`, `transactionDate`, `paymentExecutionReference` (from Step 8), `transactionDescription` |
| `mapToDebitBookingAuthorizationRequest` | 8b | `financialBookingLogType` → `"DebitAuthorization"`, `productInstanceReference` (customer current account), `debitAccountReference` (customer GL liability), `creditAccountReference` (outgoing payment suspense/clearing GL), `transactionAmount`, `transactionCurrency`, `positionKeepingReference` (from Step 8a), `bookingDate`, `authorizationStatus` → `"Authorized"` |
| `mapToCreditPositionRequest` | 8c | `financialPositionLogType` → `"CreditEntry"`, `productInstanceReference` (bank NOSTRO/correspondent account), `transactionAmount` (as a credit), `transactionCurrency`, `transactionDate` (value date), `debitBookingReference` (from Step 8b) |
| `mapToCreditBookingAuthorizationRequest` | 8d | `financialBookingLogType` → `"CreditAuthorization"`, `productInstanceReference` (NOSTRO account), `debitAccountReference` (internal clearing GL), `creditAccountReference` (correspondent bank account code), `transactionAmount`, `transactionCurrency`, `positionKeepingReference` (from Step 8c), `bookingDate`, `correspondentBankReference` (from Step 7) |
| `mapToPaymentInstructionRequest` *(commented)* | 9 | `financialGatewayInstructionType` (network-specific: SEPA, Fedwire, CHAPS, BACS), `paymentOrderReference`, amount/currency, beneficiary details, `clearingNetwork`, `settlementDate`, `creditBookingReference` (from Step 8d) |
| `mapToSWIFTPaymentRequest` *(commented)* | 10 | `paymentExecutionType` → `"SWIFTMessage"`, `swiftMessageType` → `"MT103"`, `correspondentBankBIC`, amount/currency, `beneficiaryName`, `beneficiaryAccountNumber`, `senderReference`, `valueDate` |
| `mapToPaymentMessageRequest` *(commented)* | 10 | `paymentMessageType` (`"SWIFTMessage"` or `"ACHEntry"`), `paymentMessageStatus` → `"Dispatched"`, `paymentExecutionReference` (from SWIFT step), `recipientBankBIC`, amount/currency |

### Extractor functions

| Function | Step | Implementation guidance |
|----------|------|------------------------|
| `extractPaymentInitiationId` | 2, 3 | Read the record-level identifier from the Payment Initiation Initiate response (e.g., `paymentInitiationTransactionReference`) |
| `extractCurrentAccountId` | 5 | Map `request.fromAccount` to the bank's internal current account identifier; a registry lookup may be needed if the request carries a human-readable account number |
| `extractCorrespondentBankDirectoryId` | 7 | Derive from `request.correspondentBankBIC` using an internal BIC-to-directory mapping |
| `extractCorrespondentBankEntryId` | 7 | Same as above — used as the sub-resource path parameter |

## Booking Sequence (Steps 8a–8d)

Steps 8a–8d implement a four-part atomic double-entry booking:

```
Customer Account (Debit)  →  [8a Position Keeping] + [8b Financial Accounting GL]
Internal NOSTRO (Credit)  →  [8c Position Keeping] + [8d Financial Accounting GL]
```

All four entries must succeed. Step 8 (Payment Execution) is the intended coordinator for this atomic sequence; it is currently commented out pending client availability.

## Known Gaps / TODOs

- **Step 4** — `PaymentOrder` initiation is commented out pending BIAN client dependency.
- **Step 7** — Correspondent Bank Directory retrieval is commented out.
- **Step 8** — `PaymentExecution` coordinator is commented out; booking steps 8a–8d are called directly.
- **Steps 9 & 10** — Financial Gateway and SWIFT/ACH dispatch are commented out pending integration.
- `workflowId` in the success response is a hardcoded placeholder.

## Module Files

| File | Purpose |
|------|---------|
| `outgoing_credit_transfer.bal` | Main workflow orchestration function |
| `functions.bal` | BIAN service client calls |
| `data_mappings.bal` | Request/response mapping functions |
| `types.bal` | Workflow-specific type definitions |
