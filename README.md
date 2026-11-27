# Ballerina BIAN Implementation

Ballerina implementation of the [Banking Industry Architecture Network (BIAN)](https://bian.org/) v14 service domain model. This repository provides the BIAN type library, HTTP service domain APIs, and end-to-end business workflow orchestrations for Ballerina-based financial services integrations.

## Overview

The repository is organised into three layers that build on each other:

| Layer | Directory | Ballerina package | Purpose |
|-------|-----------|-------------------|---------|
| Types | [`attribute.groups.v14`](./attribute.groups.v14) | `ballerinax/financial.bian.attribute.groups` | ~2,700 public record and type definitions covering BIAN v14 attribute groups, organised into domain-specific modules |
| Service APIs | [`service.domain.api`](./service.domain.api) | one package per domain | BIAN-compliant HTTP services that expose service domain operations and delegate to a configurable backend |
| Workflows | [`workflows`](./workflows) | `ballerinax/financial.bian.business.workflows` | Business process orchestrations that sequence calls across multiple service domain APIs |

A typical deployment runs the service domain APIs in front of an existing core banking system, and the workflow service in front of those APIs.

## Repository Structure

```
module-ballerinax-financial.bian/
├── attribute.groups.v14/          # BIAN v14 attribute group type library
│   ├── Ballerina.toml
│   ├── main.bal
│   └── modules/
│       ├── common/                # Shared attribute group types
│       ├── business_development/
│       ├── business_management/
│       ├── channels/
│       ├── customers/
│       ├── finance_risk_management/
│       ├── operations/
│       ├── products/
│       └── resource_management/
│
├── service.domain.api/            # BIAN service domain HTTP APIs
│   ├── business-development/      # Product directory (port 9090)
│   ├── business-management/       # Legal compliance (port 9091)
│   ├── channels/                  # Financial gateway, session dialogue, correspondence (port 9092)
│   ├── customers/                 # Customer lifecycle, credit rating, offers, eligibility (port 9093)
│   ├── finance-and-risk-management/ # Regulatory & guideline compliance (port 9094)
│   ├── operations/                # Accounts, payments, documents, position keeping (port 9095)
│   ├── products/                  # Current/savings accounts, payment initiation, payroll (port 9096)
│   └── resource-management/       # Resource management services (port 9097)
│
└── workflows/                     # BIAN business workflow orchestrations (port 9080)
    ├── automation.bal             # HTTP service exposing the workflow entry points
    ├── modules/
    │   ├── common/                # Shared config, connections, types, utilities
    │   ├── savings_account_opening/
    │   ├── outgoing_credit_transfer/
    │   ├── corporate_customer_onboarding/
    │   └── corporate_payroll_service_agreement/
    └── recources/                 # Reference workflow sequence diagrams (PNG)
```

## Service Domains

Each domain is an independent Ballerina package exposing its services under `/bian/<ServiceDomain>/v14`.

| Domain | Port | BIAN Services |
|--------|------|---------------|
| [business-development](service.domain.api/business-development/) | 9090 | ProductDirectory/v14 |
| [business-management](service.domain.api/business-management/) | 9091 | LegalCompliance/v14 |
| [channels](service.domain.api/channels/) | 9092 | FinancialGateway/v14, SessionDialogue/v14, Correspondence/v14 |
| [customers](service.domain.api/customers/) | 9093 | CustomerOffer/v14, CustomerProductAndServiceDirectory/v14, CustomerProductAndServiceEligibility/v14, PartyLifecycleManagement/v14, PartyReferenceDataDirectory/v14, LegalEntityDirectory/v14, CustomerCreditRating/v14, SalesProductAgreement/v14 |
| [finance-and-risk-management](service.domain.api/finance-and-risk-management/) | 9094 | RegulatoryCompliance/v14, GuidelineCompliance/v14 |
| [operations](service.domain.api/operations/) | 9095 | PositionKeeping/v14, CorrespondentBankDirectory/v14, CorrespondentBankOperations/v14, InternalBankAccount/v14, IssuedDeviceAdministration/v14, FinancialAccounting/v14, DocumentDirectory/v14, DocumentServices/v14, PaymentExecution/v14, PaymentOrder/v14, ACHOperations/v14 |
| [products](service.domain.api/products/) | 9096 | PaymentInitiation/v14, CurrentAccount/v14, SavingsAccount/v14, CorporatePayrollServices/v14 |
| [resource-management](service.domain.api/resource-management/) | 9097 | *(in development)* |

## Business Workflows

The [`workflows`](./workflows) package orchestrates BIAN service calls into complete banking business processes. Workflows are fail-fast — any service call failure halts the workflow and returns an error.

| Workflow | Endpoint | Steps |
|----------|----------|-------|
| [Handle Request to Open Savings Account](workflows/modules/savings_account_opening/README.md) | `POST /api/savingsAccountOpening` | 22 |
| [Handle Request for Outgoing Credit Transfer](workflows/modules/outgoing_credit_transfer/README.md) | `POST /api/outgoingCreditTransfer` | up to 13 |
| [Initiate Corporate Customer Onboarding](workflows/modules/corporate_customer_onboarding/README.md) | `POST /api/corporateCustomerOnboarding` | 9 |
| [Establish Corporate Payroll Service Agreement](workflows/modules/corporate_payroll_service_agreement/README.md) | `POST /api/corporatePayrollServiceAgreement` | 12 |

A health check is available at `GET /api/health`. Reference sequence diagrams for each workflow are in [`workflows/recources`](./workflows/recources).

## Getting Started

### Prerequisites

- [Ballerina Swan Lake 2201.13.1](https://ballerina.io/downloads/) or compatible

### 1. Build and publish the type library

The service domain APIs and the workflows package both depend on `ballerinax/financial.bian.attribute.groups` from the local repository, so build it first:

```bash
cd attribute.groups.v14
bal pack
bal push --repository=local
```

### 2. Run a service domain API

```bash
cd service.domain.api/products
bal run
```

Each domain reads its configuration from `Config.toml`:

| Config key | Description |
|------------|-------------|
| `port` | HTTP listener port for this service |
| `serverUrl` | Base URL of the backend service this domain delegates to |
| `*Url` | Backend path for each BIAN operation |

Values can also be overridden on the command line:

```bash
bal run -- --port=<port> --serverUrl=<backend-url>
```

### 3. Run the workflow service

```bash
cd workflows
bal run
```

The workflow service resolves each BIAN domain through a configurable base URL. Defaults point at the service domain APIs running locally; override them in a `Config.toml` at the `workflows` package root.

| Configurable | Default | BIAN Domain |
|---|---|---|
| `businessDevBianServiceUrl` | `http://localhost:9090` | Business Development |
| `businessManBianServiceUrl` | `http://localhost:9091` | Business Management |
| `channelsBianServiceUrl` | `http://localhost:9092` | Channels |
| `customersBianServiceUrl` | `http://localhost:9093` | Customers |
| `frMgmtBianServiceUrl` | `http://localhost:9094` | Finance & Risk Management |
| `operationsBianServiceUrl` | `http://localhost:9095` | Operations |
| `productsBianServiceUrl` | `http://localhost:9096` | Products |
| `servicePort` | `9080` | Port the workflow service listens on |

### Using the type library directly

```ballerina
import ballerinax/financial.bian.attribute.groups.common as common;
import ballerinax/financial.bian.attribute.groups.products as products;
```

See the [`attribute.groups.v14` README](./attribute.groups.v14/README.md) for the full module listing and usage examples.

## Architecture

Each service domain package follows the same pattern:

1. **`main.bal`** — configures the HTTP listener, attaches service objects to their BIAN path prefixes, and starts the listener.
2. **`*_service.bal`** — defines the HTTP service object with resource functions matching BIAN operation contracts (Initiate, Retrieve, Update, Execute, etc.).
3. **`*_data_mapper.bal`** — transformation functions that map backend responses to BIAN-typed return values.

All services proxy requests to a single configurable `serverUrl` backend, making it straightforward to wire this layer in front of any existing core banking system.

Each workflow module follows a matching pattern:

1. **`<workflow>.bal`** — the orchestration function that sequences the BIAN service calls.
2. **`functions.bal`** — per-step helper functions wrapping individual BIAN service calls.
3. **`data_mappings.bal`** — request/response mapping between the workflow API and BIAN payloads.
4. **`types.bal`** — the workflow's own request and response records.

Shared HTTP clients, configuration, and error types live in `workflows/modules/common`.

## Contributing

Please read the [pull request template](./pull_request_template.md) and [issue template](./issue_template.md) before contributing.

## License

This project is licensed under the Apache License 2.0. See [LICENSE](./LICENSE) for details.
