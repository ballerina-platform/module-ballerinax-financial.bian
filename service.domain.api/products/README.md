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

Edit `Config.toml` to point at your backend:

```toml
port = 9096
serverUrl = "http://localhost:9191/backend"
```

## Running

```bash
bal run
```
