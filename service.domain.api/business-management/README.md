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

Edit `Config.toml` to point at your backend:

```toml
port = 9091
serverUrl = "http://localhost:9092/backend"
```

## Running

```bash
bal run
```
