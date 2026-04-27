# BIAN Attribute Groups — Ballerina Type Library

**Package:** `ashirwadadayarathne/financial.bian.attribute.groups`  
**Version:** `0.1.0`  
**Distribution:** Ballerina `2201.13.1`

A Ballerina type library that provides record and type definitions for the [Banking Industry Architecture Network (BIAN)](https://bian.org/) v14 service domain model. The package exposes ~2,700 public types organised into domain-specific modules, all built on a shared `common` module of reusable attribute groups.

---

## Module Structure

### `common`
Shared attribute group types (records and enumerations) referenced across all domain modules. All other modules import this module as:

```ballerina
import financial.bian.attribute.groups.common as common;
```

### Business Development
| Module | Service Domains |
|--------|----------------|
| `business_development_channel_management` | Advanced Voice Services, Branch Currency/Location Management, Central Cash Handling, Channel Activity Analysis, Contact Center Management, eBranch Management, Market Data Switch, Product Inventory, Servicing Activity Analysis |
| `business_development_intellectual_property_and_knowledge` | Enterprise Architecture, Intellectual Property Portfolio, Knowledge Exchange, Management Manual |
| `business_development_models_and_analytics` | Credit Risk Models, Customer Behavior Models, Fraud Model |
| `business_development_product_management` | Case Root Cause Analysis, Product Deployment, Product Design, Product Directory, Product Quality Assurance, Product Training |
| `business_development_solution_development` | IT Standards & Guidelines, System Development |

### Business Management
| Module | Service Domains |
|--------|----------------|
| `business_management_business_direction` | Asset & Liability Management |
| `business_management_corporate_services` | Internal Audit |

### Channels
| Module | Service Domains |
|--------|----------------|
| `channels_channel_specific` | Channel-specific operations |
| `channels_cross_channel` | Channel Activity History, Contact Handler, Contact Routing, Customer Access Entitlement, Customer Workbench, Party Authentication, Party Routing Profile, Processing Order, Session Dialogue, Transaction Authorization |
| `channels_distribution` | Distribution channel types |
| `channels_information_provider` | Information provider types |
| `channels_servicing` | Servicing channel types |

### Customers
| Module | Service Domains |
|--------|----------------|
| `customers_customer_care` | Customer Case, Card Case |
| `customers_investment_services` | Investment service types |
| `customers_party_reference` | Party reference types |
| `customers_relationship_management` | Relationship management types |
| `customers_sales` | Sales types |

### Finance & Risk Management
| Module | Service Domains |
|--------|----------------|
| `finance_risk_management_compliance` | Compliance types |

### Operations
| Module | Service Domains |
|--------|----------------|
| `operations_accounting_services` | Account Reconciliation, Accounts Receivable, Commissions, Customer Position, Customer Tax Handling, Financial Accounting, Financial Statement Assessment, Fraud Diagnosis, Position Keeping, Reward Points Account, Securities Position Keeping |
| `operations_clearing_and_settlement` | Correspondent Bank Directory |
| `operations_custody_collateral_and_documents` | Account Recovery, Archive Services, Collateral Allocation Management, Collateral Asset Administration, Custody Administration, Document Directory, Document Services, Investment Account |
| `operations_external_agency` | Commission Agreement, Contractor & Supplier Agreement, Correspondent Bank Relationship Management, Interbank Relationship Management, Product Service Agency, Service Provider Operations, Sub-Custodian Agreement, Syndicate Management |
| `operations_operational_services` | Internal Bank Account, Issued Device Administration |

### Products
| Module | Service Domains |
|--------|----------------|
| `products_advisory_services` | Consumer Advisory Services, Corporate Finance Advisory, Corporate Tax Advisory, Legal Advisory |
| `products_cards` | Card Authorization, Card Network Participant Facility, Card Transaction Capture, Credit Card, Credit Card Position Keeping, Merchant Acquiring Facility, Merchant Relations |
| `products_consumer_banking` | Brokered Product, Currency Exchange, Current Account, Payment Initiation, Sales Product, Trust Services |
| `products_corporate_banking` | Cash Concentration, Cash Management & Account Services, Cheque Lock Box, Corporate Current Account, Corporate Payroll Services, Corporate Trust Services, Credit Facility, Direct Debit, Direct Debit Mandate, Direct Debits Service, Factoring, Notional Pooling, Project Finance, Virtual Account |
| `products_corporate_finance` | ECM & DCM, Hedge Fund Administration, Mutual Fund Administration, Unit Trust Administration |
| `products_loans_and_deposits` | Consumer Loan, Corporate Lease, Corporate Loan, Fiduciary Agreement, Leasing, Leasing Item Administration, Loan, Merchandising Loan, Mortgage Loan, Savings Account, Standing Order, Syndicated Loan, Term Deposit, Underwriting |
| `products_market_operations` | Corporate Action, Credit Risk Operations, Financial Instrument Valuation, Securities Fails Processing, Trade Clearing, Trade Confirmation Matching, Trade Settlement, Trade & Price Reporting, Trading Book Oversight |
| `products_market_trading` | Dealer Desk, Market Making, Market Order, Market Order Execution, Program Trading, Quote Management, Stock Lending & Repos, Suitability Checking, Trader Position Operations |
| `products_trade_banking` | Bank Drafts, Bank Guarantee, Letter of Credit |

### Resource Management
| Module | Service Domains |
|--------|----------------|
| `resource_management_platform_operations` | Operational Gateway, System Development |

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
import financial.bian.attribute.groups.products_cards as cards;
```

### Example
```ballerina
import financial.bian.attribute.groups.common as common;
import financial.bian.attribute.groups.products_loans_and_deposits as loans;

public function main() {
    loans:ConsumerLoanFacility loanFacility = {
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
├── common/                                          # Shared attribute group types
│   ├── common_records.bal                           # Record type definitions
│   ├── common_types.bal                             # Enumeration / string union types
│   └── error_records.bal                            # HTTP error response types
├── business_development_channel_management/
├── business_development_intellectual_property_and_knowledge/
├── business_development_models_and_analytics/
├── business_development_product_management/
├── business_development_solution_development/
├── business_management_business_direction/
├── business_management_corporate_services/
├── channels_channel_specific/
├── channels_cross_channel/
├── channels_distribution/
├── channels_information_provider/
├── channels_servicing/
├── customers_customer_care/
├── customers_investment_services/
├── customers_party_reference/
├── customers_relationship_management/
├── customers_sales/
├── finance_risk_management_compliance/
├── operations_accounting_services/
├── operations_clearing_and_settlement/
├── operations_custody_collateral_and_documents/
├── operations_external_agency/
├── operations_operational_services/
├── products_advisory_services/
├── products_cards/
├── products_consumer_banking/
├── products_corporate_banking/
├── products_corporate_finance/
├── products_loans_and_deposits/
├── products_market_operations/
├── products_market_trading/
├── products_trade_banking/
└── resource_management_platform_operations/
```

---

## License

This package is part of the BIAN reference implementation. Refer to the repository root for license details.
