# module-ballerinax-financial.bian

Ballerina implementation of the [BIAN (Banking Industry Architecture Network)](https://bian.org) Service Domain APIs for financial services.

## Overview

This repository provides Ballerina-based HTTP service implementations for BIAN-compliant banking service domains. Each service domain is a self-contained Ballerina package that exposes REST APIs aligned with BIAN v14 specifications, delegating backend processing to a configurable backend service.

## Repository Structure

```
service.domain.api/
├── business-development/        # Product directory services (port 9090)
├── business-management/         # Legal compliance services (port 9091)
├── channels/                    # Financial gateway, session dialogue, correspondence (port 9092)
├── customers/                   # Customer lifecycle, credit rating, offers, eligibility (port 9093)
├── finance-and-risk-management/ # Regulatory & guideline compliance (port 9094)
├── operations/                  # Accounts, documents, position keeping (port 9095)
├── products/                    # Current/savings accounts, payment initiation, payroll (port 9096)
└── resource-management/         # Resource management services (port 9097)
```

## Service Domains

| Domain | Port | BIAN Services |
|--------|------|---------------|
| [business-development](service.domain.api/business-development/) | 9090 | ProductDirectory/v14 |
| [business-management](service.domain.api/business-management/) | 9091 | LegalCompliance/v14 |
| [channels](service.domain.api/channels/) | 9092 | FinancialGateway/v14, SessionDialogue/v14, Correspondence/v14 |
| [customers](service.domain.api/customers/) | 9093 | CustomerOffer/v14, CustomerProductAndServiceDirectory/v14, CustomerProductAndServiceEligibility/v14, PartyLifecycleManagement/v14, PartyReferenceDataDirectory/v14, LegalEntityDirectory/v14, CustomerCreditRating/v14 |
| [finance-and-risk-management](service.domain.api/finance-and-risk-management/) | 9094 | RegulatoryCompliance/v14, GuidelineCompliance/v14 |
| [operations](service.domain.api/operations/) | 9095 | PositionKeeping/v14, CorrespondentBankDirectory/v14, InternalBankAccount/v14, IssuedDeviceAdministration/v14, FinancialAccounting/v14, DocumentDirectory/v14, DocumentServices/v14 |
| [products](service.domain.api/products/) | 9096 | PaymentInitiation/v14, CurrentAccount/v14, SavingsAccount/v14, CorporatePayrollServices/v14 |
| [resource-management](service.domain.api/resource-management/) | 9097 | *(in development)* |

## Prerequisites

- [Ballerina Swan Lake 2201.13.1](https://ballerina.io/downloads/) or later
- `ballerinax/financial.bian.attribute.groups` package (version 0.1.0, local repository)

## Running a Service

Each service domain is an independent Ballerina package. To run one:

```bash
cd service.domain.api/<domain>
bal run -- --port=<port> --serverUrl=<backend-url>
```

Or using the provided `Config.toml` defaults:

```bash
cd service.domain.api/products
bal run
```

Each domain reads two configurable values:

| Config key | Description |
|------------|-------------|
| `port` | HTTP listener port for this service |
| `serverUrl` | Base URL of the backend service this domain delegates to |

## Architecture

Each service domain follows the same pattern:

1. **`main.bal`** — configures the HTTP listener, attaches service objects to their BIAN path prefixes, and starts the listener.
2. **`*_service.bal`** — defines the HTTP service object with resource functions matching BIAN operation contracts (Initiate, Retrieve, Update, Execute, etc.).
3. **`*_data_mapper.bal`** — contains transformation functions that map backend responses to BIAN-typed return values.

All services proxy requests to a single configurable `serverUrl` backend, making it straightforward to wire this layer in front of any existing core banking system.

## License

This project is licensed under the Apache License 2.0. See [LICENSE](LICENSE) for details.
