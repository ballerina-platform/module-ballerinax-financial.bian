# BIAN Attribute Groups — Ballerina Type Library

**Package:** `ballerinax/financial.bian.attribute.groups`  
**Version:** `0.1.0`  
**Distribution:** Ballerina `2201.13.1`

A Ballerina type library that provides record and type definitions for the [Banking Industry Architecture Network (BIAN)](https://bian.org/) v14 service domain model. The package exposes public types organised into domain-specific modules, all built on a shared `common` module of reusable attribute groups.

---

## Module Structure

### `common`
Shared attribute group types (records and enumerations) referenced across all domain modules. All other modules import this module as:

```ballerina
import financial.bian.attribute.groups.common as common;
```

### `business_development`
| Source File | Service Domains |
|-------------|----------------|
| `business_development_types.bal` | Advanced Voice Services Management, Branch Currency/Location Management, Case Root Cause Analysis, Central Cash Handling, Contact Center Management, Credit Risk Models, Customer Behavior Models, Fraud Model, Intellectual Property Portfolio, IT Standards & Guidelines, Knowledge Exchange, Market Data Switch Operation, Product Deployment, Product Design, Product Inventory, Product Quality Assurance, Servicing Activity Analysis, System Development |

### `business_management`
| Source File | Service Domains |
|-------------|----------------|
| `business_management_types.bal` | Asset and Liability Management, Internal Audit, Legal Compliance |

### `channels`
| Source File | Service Domains |
|-------------|----------------|
| `channel_specific_types.bal` | Advanced Voice Services Operations, Branch Location Operations, Card Terminal Administration, eBranch Operations, Financial Gateway |
| `cross_channel_types.bal` | Channel Activity History, Contact Handler, Contact Routing, Customer Access Entitlement, Customer Workbench, Party Authentication, Processing Order, Session Dialogue, Transaction Authorization |
| `distribution_types.bal` | Cash Distribution, Correspondence |
| `information_provider_types.bal` | Financial Instrument Reference Data Management, Financial Market Analysis, Financial Market Research, Information Feed Operating Session, Market Data Switch Operation, Market Information Management, Public Reference Data Management |
| `servicing_types.bal` | Contact Center Operations, Point of Service, Service Directory, Servicing Event History, Servicing Issue |

### `customers`
| Source File | Service Domains |
|-------------|----------------|
| `customer_care_types.bal` | Card Case, Customer Case |
| `investment_services_types.bal` | Consumer Investments, eTrading Workbench, Investment Portfolio Analysis, Investment Portfolio Management |
| `party_reference_types.bal` | Legal Entity Directory, Location Data Management, Party Reference Data Directory |
| `relationship_management_types.bal` | Customer Behavior Insights, Customer Credit Rating, Customer Proposition, Customer Relationship Management, Loan Syndication |
| `sales_types.bal` | Customer Campaign Execution, Lead and Opportunity Management, Product Expert Sales Support, Product Matching, Special Pricing Conditions |

### `finance_risk_management`
| Source File | Service Domains |
|-------------|----------------|
| `compliance_types.bal` | Guideline Compliance, Regulatory Compliance, Regulatory Reporting |

### `operations`
| Source File | Service Domains |
|-------------|----------------|
| `accounting_services_types.bal` | Account Reconciliation, Commissions, Customer Position, Customer Tax Handling, Financial Accounting, Financial Statement Assessment, Fraud Diagnosis, Position Keeping, Reward Points Account, Securities Position Keeping |
| `clearing_and_settlement_types.bal` | Correspondent Bank Data Management |
| `custody_collateral_and_documents_types.bal` | Account Recovery, Archive Services, Collateral Allocation Management, Custody Arrangement, Document Services, Investment Account |
| `external_agency_types.bal` | Commission Agreement, Contractor and Supplier Agreement, Correspondent Bank Relationship Management, Interbank Relationship Management, Product Service Agency, Sub-Custodian Agreement, Syndicate Management |
| `operational_services_types.bal` | Internal Bank Account, Issued Device Administration |

### `products`
| Source File | Service Domains |
|-------------|----------------|
| `advisory_services_types.bal` | Consumer Advisory Services, Corporate Finance Advisory, Corporate Tax Advisory, Legal Advisory |
| `cards_types.bal` | Card Authorization, Card Network Participant Facility, Credit Card, Credit Card Position Keeping, Merchant Acquiring Facility, Merchant Relations |
| `consumer_banking_types.bal` | Brokered Product, Currency Exchange, Current Account, Payment Initiation, Sales Product, Trust Services |
| `corporate_banking_types.bal` | Cash Concentration, Cash Management and Account Services, Cheque Lock Box, Corporate Current Account, Corporate Payroll Services, Credit Facility, Direct Debit, Direct Debit Mandate, Factoring, Notional Pooling, Project Finance |
| `corporate_finance_types.bal` | ECM and DCM, Hedge Fund Administration, Mutual Fund Administration, Unit Trust Administration |
| `loans_and_deposits_types.bal` | Consumer Loan, Corporate Lease, Corporate Loan, Fiduciary Agreement, Leasing, Loan, Merchandising Loan, Mortgage Loan, Standing Order, Syndicated Loan, Term Deposit, Underwriting |
| `market_operations_types.bal` | Corporate Action, Financial Instrument Valuation, Securities Fails Processing, Trade and Price Reporting, Trade Clearing, Trade Confirmation Matching, Trade Settlement, Trading Book Oversight |
| `market_trading_types.bal` | Dealer Desk, Market Making, Market Order, Market Order Execution, Program Trading, Quote Management, Stock Lending and Repos, Suitability Checking, Trader Position Operations |
| `trade_banking_types.bal` | Bank Drafts, Bank Guarantee, Letter of Credit |

### `resource_management`
| Source File | Service Domains |
|-------------|----------------|
| `resource_management_types.bal` | Operational Gateway, System Development |

---

## Usage

### Prerequisites
- [Ballerina](https://ballerina.io/downloads/) `2201.13.1` or compatible

### Build
```bash
bal build
```

### Importing a Module
```ballerina
import financial.bian.attribute.groups.common as common;
import financial.bian.attribute.groups.products as products;
```

### Example
```ballerina
import financial.bian.attribute.groups.common as common;
import financial.bian.attribute.groups.products as products;

public function main() {
    products:ConsumerLoan loanFacility = {
        CustomerReference: <common:Involvedparty>{
            PartyReference: "CUST-001"
        }
    };
}
```

---

## Repository Layout

```
modules/
├── common/                                     # Shared attribute group types
│   ├── common_records.bal                      # Record type definitions
│   ├── common_types.bal                        # Enumeration / string union types
│   └── error_records.bal                       # HTTP error response types
├── business_development/
│   └── business_development_types.bal
├── business_management/
│   └── business_management_types.bal
├── channels/
│   ├── channel_specific_types.bal
│   ├── cross_channel_types.bal
│   ├── distribution_types.bal
│   ├── information_provider_types.bal
│   └── servicing_types.bal
├── customers/
│   ├── customer_care_types.bal
│   ├── investment_services_types.bal
│   ├── party_reference_types.bal
│   ├── relationship_management_types.bal
│   └── sales_types.bal
├── finance_risk_management/
│   └── compliance_types.bal
├── operations/
│   ├── accounting_services_types.bal
│   ├── clearing_and_settlement_types.bal
│   ├── custody_collateral_and_documents_types.bal
│   ├── external_agency_types.bal
│   └── operational_services_types.bal
├── products/
│   ├── advisory_services_types.bal
│   ├── cards_types.bal
│   ├── consumer_banking_types.bal
│   ├── corporate_banking_types.bal
│   ├── corporate_finance_types.bal
│   ├── loans_and_deposits_types.bal
│   ├── market_operations_types.bal
│   ├── market_trading_types.bal
│   └── trade_banking_types.bal
└── resource_management/
    └── resource_management_types.bal
```

---

## License

This package is part of the BIAN reference implementation. Refer to the repository root for license details.
