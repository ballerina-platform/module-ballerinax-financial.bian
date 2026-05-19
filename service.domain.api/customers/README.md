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
| SalesProductAgreement | `/bian/SalesProductAgreement/v14` |

## Configuration

Edit `Config.toml` to set the listener port, the backend base URL, and the backend endpoint paths:

```toml
port = 9093
serverUrl = "http://localhost:9191/backend"
customerCreditRatingInitiateUrl = "/CustomerCreditRating/Initiate"
customerOfferInitiateUrl = "/CustomerOffer/Initiate"
customerProductAndServiceDirectoryRetrieveUrl = "/CustomerProductandServiceDirectory/Retrieve"
customerProductAndServiceDirectoryRegisterUrl = "/CustomerProductandServiceDirectory/Register"
customerProductAndServiceEligibilityUrl = "/CustomerProductAndServiceEligibility"
legalEntityDirectoryUrl = "/LegalEntityDirectory"
partyLifecycleManagementUrl = "/PartyLifecycleManagement"
partyReferenceDataDirectoryAssociationsRetrieveUrl = "/PartyReferenceDataDirectory/Associations/Retrieve"
partyReferenceDataDirectoryUrl = "/PartyReferenceDataDirectory"
salesProductAgreementEvaluateUrl = "/SalesProductAgreement/Evaluate"
```

| Key | Description |
|-----|-------------|
| `port` | HTTP listener port for this service |
| `serverUrl` | Base URL of the backend system this service delegates to |
| `customerCreditRatingInitiateUrl` | Backend path for the CustomerCreditRating Initiate endpoint |
| `customerOfferInitiateUrl` | Backend path for the CustomerOffer Initiate endpoint |
| `customerProductAndServiceDirectoryRetrieveUrl` | Backend path for the CustomerProductAndServiceDirectory Retrieve endpoint |
| `customerProductAndServiceDirectoryRegisterUrl` | Backend path for the CustomerProductAndServiceDirectory Register endpoint |
| `customerProductAndServiceEligibilityUrl` | Backend base path for CustomerProductAndServiceEligibility (IDs are appended at runtime) |
| `legalEntityDirectoryUrl` | Backend base path for LegalEntityDirectory (directory ID is appended at runtime) |
| `partyLifecycleManagementUrl` | Backend base path for PartyLifecycleManagement (IDs and operation suffix are appended at runtime) |
| `partyReferenceDataDirectoryAssociationsRetrieveUrl` | Backend path for the PartyReferenceDataDirectory Associations Retrieve endpoint |
| `partyReferenceDataDirectoryUrl` | Backend base path for PartyReferenceDataDirectory (directory ID is appended at runtime) |
| `salesProductAgreementEvaluateUrl` | Backend path for the SalesProductAgreement Evaluate endpoint |

The full backend URL for each call is `serverUrl + <endpoint path>`. Update the path values to match your backend's API contract.

## Customizing Data Mappers

Each `*_data_mapper.bal` file contains transformation functions that map backend JSON responses to BIAN-typed Ballerina records. Update the field references to match your backend's actual response structure.

| File | Function | Maps to |
|------|----------|---------|
| `customer_credit_rating_data_mapper.bal` | `transformCustomerCreditRatingState` | `customers:CustomerCreditRatingState` |
| `customer_offer_data_mapper.bal` | `transformCustomerOfferProcedure` | `customers:CustomerOfferProcedure` |
| `customer_product_and_service_directory_data_mapper.bal` | `transfromCustomerProductandServiceDirectoryRegisterResponse` | `common:CustomerProductAndServiceDirectoryEntry` |
| `customer_product_and_service_directory_data_mapper.bal` | `transformCustomerProductandServiceDirectoryRetrievalResponse` | `common:CustomerProductAndServiceDirectoryEntry` |
| `customer_product_and_service_eligibility_data_mapper.bal` | `transformCustomerProductAndServiceEligibilityResponse` | `customers:EligibilityCheck` |
| `legal_entity_directory_data_mapper.bal` | `transformLegalEntityDirectoryRetrievalResponse` | `customers:LegalEntityDirectoryEntry` |
| `party_lifecycle_management_data_mapper.bal` | `transformPartyRelationshipPlan` | `customers:PartyRelationshipAdministrativePlan` |
| `party_lifecycle_management_data_mapper.bal` | `transformPartyRelationshipPlanUpdate` | `customers:PartyRelationshipAdministrativePlan` |
| `party_lifecycle_management_data_mapper.bal` | `transfromPartyLifecycleManagementQualificationsResponse` | `customers:Qualification` |
| `party_reference_data_directory_data_mapper.bal` | `transformPartyReferenceDataDirectoryAssociationResponse` | `common:Associations` |
| `party_reference_data_directory_data_mapper.bal` | `transformPartyReferenceDataDirectoryRetrievalResponse` | `customers:PartyReferenceDataDirectoryEntry` |
| `sales_product_agreement_data_mapper.bal` | `transfromSalesProductAgreementEvaluateResponse` | `customers:SalesProductAgreement` |

To adapt a mapping function:

1. Replace `response?.FieldName` references with the field names your backend actually returns.
2. For nested objects follow the same pattern — use `response?.Parent?.Child` to navigate the JSON hierarchy.
3. Leave any BIAN fields your backend does not provide as an empty record (`{}`), or remove them if the type allows `()`.
