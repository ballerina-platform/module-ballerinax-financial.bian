# BIAN Channels Service

Ballerina package implementing the BIAN **Channels** service domain.

## Package

| Property | Value |
|----------|-------|
| Org | `ballerinax` |
| Name | `channels` |
| Version | `0.1.0` |
| Default port | `9092` |
| BIAN version | v14 |

## Services

| BIAN Service | Base Path |
|--------------|-----------|
| FinancialGateway | `/bian/FinancialGateway/v14` |
| SessionDialogue | `/bian/SessionDialogue/v14` |
| Correspondence | `/bian/Correspondence/v14` |

## Configuration

Edit `Config.toml` to set the listener port, the backend base URL, and the backend endpoint paths:

```toml
port = 9092
serverUrl = "http://localhost:9191/backend"
financialGatewayOutboundInitiateUrl = "/FinancialGateway"
correspondenceOutboundInitiateUrl = "/Correspondence/Outbound/Initiate"
correspondenceOutboundWithResponseInitiateUrl = "/Correspondence/OutboundWithResponse/Initiate"
```

| Key | Description |
|-----|-------------|
| `port` | HTTP listener port for this service |
| `serverUrl` | Base URL of the backend system this service delegates to |
| `financialGatewayOutboundInitiateUrl` | Backend base path for FinancialGateway Outbound Initiate (gateway ID is appended at runtime) |
| `correspondenceOutboundInitiateUrl` | Backend path for the Correspondence Outbound Initiate endpoint |
| `correspondenceOutboundWithResponseInitiateUrl` | Backend path for the Correspondence OutboundWithResponse Initiate endpoint |

The full backend URL for each call is `serverUrl + <endpoint path>`. Update the path values to match your backend's API contract.

## Customizing Data Mappers

Each `*_data_mapper.bal` file contains transformation functions that map backend JSON responses to BIAN-typed Ballerina records. Update the field references to match your backend's actual response structure.

| File | Function | Maps to |
|------|----------|---------|
| `financial_gateway_data_mapper.bal` | `transformFinancialGatewayOutboundInitiateResponse` | `common:Outbound` |
| `correspondence_data_mapper.bal` | `transfromCorrespondenceOutboundInitiateResponse` | `common:Outbound` |
| `correspondence_data_mapper.bal` | `transfromCorrespondenceOutboundWithResponse` | `channels:OutboundWithResponse` |

To adapt a mapping function:

1. Replace `response?.FieldName` references with the field names your backend actually returns.
2. For nested objects follow the same pattern — use `response?.Parent?.Child` to navigate the JSON hierarchy.
3. Leave any BIAN fields your backend does not provide as an empty record (`{}`), or remove them if the type allows `()`.
