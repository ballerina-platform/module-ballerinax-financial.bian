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

Edit `Config.toml` to set the listener port, the backend base URL, and the backend endpoint paths:

```toml
port = 9095
serverUrl = "http://localhost:9191/backend"
positionKeepingUrl = "/PositionKeeping"
correspondentBankDirectoryUrl = "/CorrespondentBankDirectory"
documentDirectoryRegisterUrl = "/DocumentDirectory/Register"
documentServicesInitiateUrl = "/DocumentServices/Initiate"
issuedDeviceAdministrationDeviceAssignmentUpdateUrl = "/IssuedDeviceAdministration/DeviceAssignment/Update"
financialAccountingInitiateUrl = "/FinancialAccounting/Initiate"
```

| Key | Description |
|-----|-------------|
| `port` | HTTP listener port for this service |
| `serverUrl` | Base URL of the backend system this service delegates to |
| `positionKeepingUrl` | Backend base path for PositionKeeping (operation suffix or ID appended at runtime) |
| `correspondentBankDirectoryUrl` | Backend base path for CorrespondentBankDirectory (directory ID appended at runtime) |
| `documentDirectoryRegisterUrl` | Backend path for the DocumentDirectory Register endpoint |
| `documentServicesInitiateUrl` | Backend path for the DocumentServices Initiate endpoint |
| `issuedDeviceAdministrationDeviceAssignmentUpdateUrl` | Backend path for the IssuedDeviceAdministration DeviceAssignment Update endpoint |
| `financialAccountingInitiateUrl` | Backend path for the FinancialAccounting Initiate endpoint |

The full backend URL for each call is `serverUrl + <endpoint path>`. Update the path values to match your backend's API contract.

## Running

```bash
bal run
```
