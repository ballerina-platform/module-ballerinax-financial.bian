# BIAN Products Service

Ballerina package implementing the BIAN **Products** service domain.

## Package

| Property | Value |
|----------|-------|
| Org | `ballerinax` |
| Name | `bian.products.service` |
| Version | `0.1.0` |
| Default port | `9096` |
| BIAN version | v14 |

## Services

| BIAN Service | Base Path |
|--------------|-----------|
| PaymentInitiation | `/bian/PaymentInitiation/v14` |
| CurrentAccount | `/bian/CurrentAccount/v14` |
| SavingsAccount | `/bian/SavingsAccount/v14` |
| CorporatePayrollServices | `/bian/CorporatePayrollServices/v14` |

## Configuration

Edit `Config.toml` to set the listener port, the backend base URL, and the backend endpoint paths:

```toml
port = 9096
serverUrl = "http://localhost:9191/backend"
currentAccountUrl = "/CurrentAccount"
paymentInitiationUrl = "/PaymentInitiation"
corporatePayrollServicesUrl = "/CorporatePayrollServices"
savingsAccountInitiateUrl = "/SavingsAccount/Initiate"
```

| Key | Description |
|-----|-------------|
| `port` | HTTP listener port for this service |
| `serverUrl` | Base URL of the backend system this service delegates to |
| `currentAccountUrl` | Backend base path for CurrentAccount (account ID appended at runtime) |
| `paymentInitiationUrl` | Backend base path for PaymentInitiation (operation suffix or ID appended at runtime) |
| `corporatePayrollServicesUrl` | Backend base path for CorporatePayrollServices (operation suffix or ID appended at runtime) |
| `savingsAccountInitiateUrl` | Backend path for the SavingsAccount Initiate endpoint |

The full backend URL for each call is `serverUrl + <endpoint path>`. Update the path values to match your backend's API contract.

## Running

```bash
bal run
```
