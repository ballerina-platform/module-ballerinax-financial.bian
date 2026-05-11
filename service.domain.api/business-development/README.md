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

Edit `Config.toml` to point at your backend:

```toml
port = 9090
serverUrl = "http://localhost:9092/backend"
```

## Running

```bash
bal run
```
