# Ballerina BIAN Implementation

Ballerina implementation of the [Banking Industry Architecture Network (BIAN)](https://bian.org/) v14 service domain model. This repository provides type libraries and attribute group definitions for use in Ballerina-based financial services integrations.

---

## Packages

| Package | Description |
|---------|-------------|
| [`attribute.groups.v14`](./attribute.groups.v14) | ~2,700 public Ballerina record and type definitions covering all BIAN v14 service domains, organised into domain-specific modules |

---

## Repository Structure

```
module-ballerinax-financial.bian/
└── attribute.groups.v14/        # BIAN v14 attribute group type library
    ├── Ballerina.toml
    ├── main.bal
    └── modules/
        ├── common/              # Shared attribute group types
        ├── business_development_*/
        ├── business_management_*/
        ├── channels_*/
        ├── customers_*/
        ├── finance_risk_management_*/
        ├── operations_*/
        ├── products_*/
        └── resource_management_*/
```

---

## Getting Started

### Prerequisites
- [Ballerina](https://ballerina.io/downloads/) `2201.13.1` or compatible

### Build
```bash
cd attribute.groups.v14
bal build
```

### Import a Module
```ballerina
import financial.bian.attribute.groups.common as common;
import financial.bian.attribute.groups.products_loans_and_deposits as loans;
```

See the [`attribute.groups.v14` README](./attribute.groups.v14/README.md) for the full module listing and usage examples.

---

## Contributing

Please read the [pull request template](./pull_request_template.md) and [issue template](./issue_template.md) before contributing.

## License

See [LICENSE](./LICENSE) for details.
