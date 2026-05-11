# BIAN Customers Service

Ballerina package implementing the BIAN **Customers** service domain.

## Package

| Property | Value |
|----------|-------|
| Org | `ballerinax` |
| Name | `customers` |
| Version | `0.1.0` |
| Default port | `9093` |
| BIAN version | v14 |

## Services

| BIAN Service | Base Path |
|--------------|-----------|
| CustomerOffer | `/bian/CustomerOffer/v14` |
| CustomerProductAndServiceDirectory | `/bian/CustomerProductAndServiceDirectory/v14` |
| CustomerProductAndServiceEligibility | `/bian/CustomerProductAndServiceEligibility/v14` |
| PartyLifecycleManagement | `/bian/PartyLifecycleManagement/v14` |
| PartyReferenceDataDirectory | `/bian/PartyReferenceDataDirectory/v14` |
| LegalEntityDirectory | `/bian/LegalEntityDirectory/v14` |
| CustomerCreditRating | `/bian/CustomerCreditRating/v14` |

## Configuration

Edit `Config.toml` to point at your backend:

```toml
port = 9093
serverUrl = "http://localhost:9092/backend"
```

## Running

```bash
bal run
```
