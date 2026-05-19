# financial.bian.business.workflows

Ballerina package implementing BIAN business workflow orchestrations.

**Package:** `ballerinax/financial.bian.business.workflows`  
**Version:** `0.1.0`

## Overview

This package contains end-to-end BIAN-compliant business workflow implementations. Each workflow module orchestrates a sequence of BIAN service calls to fulfil a complete banking business process. Workflows are designed to be fail-fast — any service call failure halts the workflow and returns an error.

## Workflows

| Module | Workflow | BIAN Service Calls |
|--------|----------|-------------------|
| [`savings_account_opening`](modules/savings_account_opening/README.md) | Handle Request to Open Savings Account | 22 steps |
| [`outgoing_credit_transfer`](modules/outgoing_credit_transfer/README.md) | Handle Request for Outgoing Credit Transfer | Up to 13 steps |
| [`corporate_customer_onboarding`](modules/corporate_customer_onboarding/README.md) | Initiate Corporate Customer Onboarding | 9 steps |
| [`corporate_payroll_service_agreement`](modules/corporate_payroll_service_agreement/README.md) | Establish Corporate Payroll Service Agreement | 12 steps |

## Package Structure

```
workflows/
├── Ballerina.toml
├── main.bal                  # Entry points / HTTP listener
├── agents.bal                # Agent definitions
├── automation.bal            # Automation helpers
├── modules/
│   ├── common/               # Shared types, connections, config, utility functions
│   ├── savings_account_opening/
│   ├── outgoing_credit_transfer/
│   ├── corporate_customer_onboarding/
│   └── corporate_payroll_service_agreement/
└── recources/                # Reference workflow diagrams (PNG)
```

## Dependencies

- `ballerinax/financial.bian.attribute.groups` — BIAN attribute group types used across all BIAN service request/response payloads.

## Service Configuration

Each workflow module connects to external BIAN service domains via configurable base URLs. Override these in a `Config.toml` file at the project root before running.

| Configurable | Default | BIAN Domain |
|---|---|---|
| `businessDevBianServiceUrl` | `http://localhost:9090` | Business Development (Product Directory, Correspondent Bank Directory) |
| `businessManBianServiceUrl` | `http://localhost:9091` | Business Management |
| `channelsBianServiceUrl` | `http://localhost:9092` | Channels (Correspondence) |
| `customersBianServiceUrl` | `http://localhost:9093` | Customers (Party Lifecycle, Sales Product Agreement, Customer Offer, Legal Entity Directory, Customer Credit Rating) |
| `frMgmtBianServiceUrl` | `http://localhost:9094` | Finance & Risk Management (Regulatory Compliance, Guideline Compliance) |
| `operationsBianServiceUrl` | `http://localhost:9095` | Operations (Position Keeping, Financial Accounting, Issued Device Administration, Payment Execution, Financial Gateway) |
| `productsBianServiceUrl` | `http://localhost:9096` | Products (Savings Account, Current Account, Payment Initiation, Corporate Payroll Services) |
| `servicePort` | `9080` | Port on which this workflow service listens |

**Example `Config.toml`:**

```toml
customersBianServiceUrl   = "https://bian-customers.example.com"
productsBianServiceUrl    = "https://bian-products.example.com"
frMgmtBianServiceUrl      = "https://bian-risk.example.com"
operationsBianServiceUrl  = "https://bian-operations.example.com"
businessDevBianServiceUrl = "https://bian-bizdev.example.com"
channelsBianServiceUrl    = "https://bian-channels.example.com"
servicePort = 8080
```

Configuration values are defined in `modules/common/config.bal` and shared across all workflow modules via the `common` module.

## Reference Diagrams

Workflow sequence diagrams are located in `recources/`:

- `Handle-Request-to-Open-Savings-Account.png`
- `Handle-Request-for-Outgoing-Credit-Tansfer.png`
- `Initiate-Corporate-Customer-Onboarding.png`
- `Establish-Corporate-Payroll-Service.png`
