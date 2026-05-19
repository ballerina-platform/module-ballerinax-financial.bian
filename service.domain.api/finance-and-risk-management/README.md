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

Edit `Config.toml` to set the listener port, the backend base URL, and the backend endpoint paths:

```toml
port = 9094
serverUrl = "http://localhost:9191/backend"
regulatoryComplianceEvaluateUrl = "/RegulatoryCompliance/Evaluate"
guidelineComplianceEvaluateUrl = "/GuidelineCompliance/Evaluate"
```

| Key | Description |
|-----|-------------|
| `port` | HTTP listener port for this service |
| `serverUrl` | Base URL of the backend system this service delegates to |
| `regulatoryComplianceEvaluateUrl` | Backend path for the RegulatoryCompliance Evaluate endpoint |
| `guidelineComplianceEvaluateUrl` | Backend path for the GuidelineCompliance Evaluate endpoint |

The full backend URL for each call is `serverUrl + <endpoint path>`. Update the path values to match your backend's API contract.

## Running

```bash
bal run
```
