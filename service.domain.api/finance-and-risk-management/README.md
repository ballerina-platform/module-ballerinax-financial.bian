# BIAN Finance and Risk Management Service

Ballerina package implementing the BIAN **Finance and Risk Management** service domain.

## Package

| Property | Value |
|----------|-------|
| Org | `ballerinax` |
| Name | `finance_and_risk_management` |
| Version | `0.1.0` |
| Default port | `9094` |
| BIAN version | v14 |

## Services

| BIAN Service | Base Path |
|--------------|-----------|
| RegulatoryCompliance | `/bian/RegulatoryCompliance/v14` |
| GuidelineCompliance | `/bian/GuidelineCompliance/v14` |

## Configuration

Edit `Config.toml` to point at your backend:

```toml
port = 9094
serverUrl = "http://localhost:9191/backend"
```

## Running

```bash
bal run
```
