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

Edit `Config.toml` to point at your backend:

```toml
port = 9092
serverUrl = "http://localhost:9092/backend"
```

## Running

```bash
bal run
```
