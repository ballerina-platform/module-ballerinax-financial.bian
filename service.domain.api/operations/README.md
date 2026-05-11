# BIAN Operations Service

Ballerina package implementing the BIAN **Operations** service domain.

## Package

| Property | Value |
|----------|-------|
| Org | `ballerinax` |
| Name | `bian.operations.service` |
| Version | `0.1.0` |
| Default port | `9095` |
| BIAN version | v14 |

## Services

| BIAN Service | Base Path | Status |
|--------------|-----------|--------|
| PositionKeeping | `/bian/PositionKeeping/v14` | Active |
| CorrespondentBankDirectory | `/bian/CorrespondentBankDirectory/v14` | Active |
| InternalBankAccount | `/bian/InternalBankAccount/v14` | Active |
| IssuedDeviceAdministration | `/bian/IssuedDeviceAdministration/v14` | Active |
| FinancialAccounting | `/bian/FinancialAccounting/v14` | Active |
| DocumentDirectory | `/bian/DocumentDirectory/v14` | Active |
| DocumentServices | `/bian/DocumentServices/v14` | Active |
| ACHOperations | `/bian/ACHOperations/v14` | Disabled |
| CorrespondentBankOperations | `/bian/CorrespondentBankOperations/v14` | Disabled |
| PaymentOrder | `/bian/PaymentOrder/v14` | Disabled |
| PaymentExecution | `/bian/PaymentExecution/v14` | Disabled |

## Configuration

Edit `Config.toml` to point at your backend:

```toml
port = 9095
serverUrl = "http://localhost:9092/backend"
```

## Running

```bash
bal run
```
