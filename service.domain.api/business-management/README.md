# BIAN Business Management Service

Ballerina package implementing the BIAN **Business Management** service domain.

## Package

| Property | Value |
|----------|-------|
| Org | `ballerinax` |
| Name | `business.management` |
| Version | `0.1.0` |
| Default port | `9091` |
| BIAN version | v14 |

## Services

| BIAN Service | Base Path |
|--------------|-----------|
| LegalCompliance | `/bian/LegalCompliance/v14` |

## Configuration

Edit `Config.toml` to set the listener port, the backend base URL, and the backend endpoint path:

```toml
port = 9091
serverUrl = "http://localhost:9191/backend"
legalComplianceEvaluateUrl = "/LegalCompliance/Evaluate"
```

| Key | Description |
|-----|-------------|
| `port` | HTTP listener port for this service |
| `serverUrl` | Base URL of the backend system this service delegates to |
| `legalComplianceEvaluateUrl` | Backend path for the LegalCompliance Evaluate endpoint |

The full backend URL for each call is `serverUrl + <endpoint path>`. Update the path values to match your backend's API contract.

## Customizing Data Mappers

Each `*_data_mapper.bal` file contains transformation functions that map backend JSON responses to BIAN-typed Ballerina records. Update the field references to match your backend's actual response structure.

**`legal_compliance_data_mapper.bal`** exposes:

| Function | Maps to |
|----------|---------|
| `transfromLegalComplianceAssessmentResponse` | `business_management:LegalComplianceAssessment` |

To adapt a mapping function:

1. Replace `response?.FieldName` references with the field names your backend actually returns.
2. For nested objects follow the same pattern — use `response?.Parent?.Child` to navigate the JSON hierarchy.
3. Leave any BIAN fields your backend does not provide as an empty record (`{}`), or remove them if the type allows `()`.
