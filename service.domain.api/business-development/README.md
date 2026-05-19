# BIAN Business Development Service

Ballerina package implementing the BIAN **Business Development** service domain.

## Package

| Property | Value |
|----------|-------|
| Org | `ballerinax` |
| Name | `business.development` |
| Version | `0.1.0` |
| Default port | `9090` |
| BIAN version | v14 |

## Services

| BIAN Service | Base Path |
|--------------|-----------|
| ProductDirectory | `/bian/ProductDirectory/v14` |

## Configuration

Edit `Config.toml` to set the listener port, the backend base URL, and the backend endpoint paths for each active operation:

```toml
port = 9090
serverUrl = "http://localhost:9191/backend"
productDirectoryOperationRetrieveUrl = "/ProductDirectory/Operations/Retrieve"
productDirectorySalesMArketingRetrieveUrl = "/ProductDirectory/SalesandMarketing/Retrieve"
```

| Key | Description |
|-----|-------------|
| `port` | HTTP listener port for this service |
| `serverUrl` | Base URL of the backend system this service delegates to |
| `productDirectoryOperationRetrieveUrl` | Backend path appended to `serverUrl` for the ProductDirectory Operations Retrieve call |
| `productDirectorySalesMArketingRetrieveUrl` | Backend path appended to `serverUrl` for the ProductDirectory SalesandMarketing Retrieve call |

The full backend URL for each call is `serverUrl + <endpoint path>`. Add or remove endpoint path keys to match your backend's API contract.

## Customizing Data Mappers

Each `*_data_mapper.bal` file contains transformation functions that map backend JSON responses to BIAN-typed Ballerina records. Update the field references to match your backend's actual response structure.

**`product_directory_data_mapper.bal`** exposes:

| Function | Maps to |
|----------|---------|
| `transformProductSalesandMarketingResponse` | `business_development:SalesandMarketing` |
| `transfromProductDirectoryOperationsResponse` | `business_development:Operations` |

To adapt a mapping function:

1. Replace `response?.FieldName` references with the field names your backend actually returns.
2. For nested objects follow the same pattern — use `response?.Parent?.Child` to navigate the JSON hierarchy.
3. Leave any BIAN fields your backend does not provide as an empty record (`{}`), or remove them if the type allows `()`.
