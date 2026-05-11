import ballerinax/financial.bian.attribute.groups.customers as customers;

isolated function transformLegalEntityDirectoryRetrievalResponse(json response) returns customers:LegalEntityDirectoryEntry|error => {
    "LegalEntityReference": {
        "OrganisationStructureHierarchy": check response?.LegalEntityReference?.OrganisationStructureHierarchy,
        "OrganisationIdentification": {
            "OrganisationIdentificationType": check response?.LegalEntityReference?.OrganisationIdentification?.OrganisationIdentificationType,
            "OrganisationIdentification": {
                "IdentifierValue": check response?.LegalEntityReference?.OrganisationIdentification?.OrganisationIdentification?.IdentifierValue,
                "IdentifierIssuerReference": {
                    "PartyReference": check response?.LegalEntityReference?.OrganisationIdentification?.OrganisationIdentification?.IdentifierIssuerReference?.PartyReference,
                    "InvolvementReference": check response?.LegalEntityReference?.OrganisationIdentification?.OrganisationIdentification?.IdentifierIssuerReference?.InvolvementReference
                },
                "IdentifierStartDate": {
                    "DateTimeContent": check response?.LegalEntityReference?.OrganisationIdentification?.OrganisationIdentification?.IdentifierStartDate?.DateTimeContent,
                    "TimeZoneCode": check response?.LegalEntityReference?.OrganisationIdentification?.OrganisationIdentification?.IdentifierStartDate?.TimeZoneCode,
                    "DaylightSavingIndicator": check response?.LegalEntityReference?.OrganisationIdentification?.OrganisationIdentification?.IdentifierStartDate?.DaylightSavingIndicator,
                    "DateTimeType": check response?.LegalEntityReference?.OrganisationIdentification?.OrganisationIdentification?.IdentifierStartDate?.DateTimeType
                },
                "IdentifierEndDate": {
                    "DateTimeContent": check response?.LegalEntityReference?.OrganisationIdentification?.OrganisationIdentification?.IdentifierEndDate?.DateTimeContent,
                    "TimeZoneCode": check response?.LegalEntityReference?.OrganisationIdentification?.OrganisationIdentification?.IdentifierEndDate?.TimeZoneCode,
                    "DaylightSavingIndicator": check response?.LegalEntityReference?.OrganisationIdentification?.OrganisationIdentification?.IdentifierEndDate?.DaylightSavingIndicator,
                    "DateTimeType": check response?.LegalEntityReference?.OrganisationIdentification?.OrganisationIdentification?.IdentifierEndDate?.DateTimeType
                }
            }
        },
        "OrganisationSector": check response?.LegalEntityReference?.OrganisationSector,
        "LegalEntityIndicator": check response?.LegalEntityReference?.LegalEntityIndicator,
        "OrganisationDate": {
            "OrganisatioDate": {
                "DateTimeContent": check response?.LegalEntityReference?.OrganisationDate?.OrganisatioDate?.DateTimeContent,
                "TimeZoneCode": check response?.LegalEntityReference?.OrganisationDate?.OrganisatioDate?.TimeZoneCode,
                "DaylightSavingIndicator": check response?.LegalEntityReference?.OrganisationDate?.OrganisatioDate?.DaylightSavingIndicator,
                "DateTimeType": check response?.LegalEntityReference?.OrganisationDate?.OrganisatioDate?.DateTimeType
            },
            "OrganisatioDateType": check response?.LegalEntityReference?.OrganisationDate?.OrganisatioDateType
        },
        "OrganisationType": check response?.LegalEntityReference?.OrganisationType,
        "OrganisationName": {
            "Name": {
                "Name": check response?.LegalEntityReference?.OrganisationName?.Name?.Name
            },
            "NameType": check response?.LegalEntityReference?.OrganisationName?.NameType
        },
        "OrganisationLegalStructure": check response?.LegalEntityReference?.OrganisationLegalStructure,
        "PartyName": {
            "Name": check response?.LegalEntityReference?.PartyName?.Name
        },
        "PartyType": check response?.LegalEntityReference?.PartyType,
        "PartyDateTime": {
            "DateTimeContent": check response?.LegalEntityReference?.PartyDateTime?.DateTimeContent,
            "TimeZoneCode": check response?.LegalEntityReference?.PartyDateTime?.TimeZoneCode,
            "DaylightSavingIndicator": check response?.LegalEntityReference?.PartyDateTime?.DaylightSavingIndicator,
            "DateTimeType": check response?.LegalEntityReference?.PartyDateTime?.DateTimeType
        },
        "PartyIdentification": {
            "PartyIdentificationType": check response?.LegalEntityReference?.PartyIdentification?.PartyIdentificationType,
            "PartyIdentification": {
                "IdentifierValue": check response?.LegalEntityReference?.PartyIdentification?.PartyIdentification?.IdentifierValue,
                "IdentifierIssuerReference": {
                    "PartyReference": check response?.LegalEntityReference?.PartyIdentification?.PartyIdentification?.IdentifierIssuerReference?.PartyReference,
                    "InvolvementReference": check response?.LegalEntityReference?.PartyIdentification?.PartyIdentification?.IdentifierIssuerReference?.InvolvementReference
                },
                "IdentifierStartDate": {
                    "DateTimeContent": check response?.LegalEntityReference?.PartyIdentification?.PartyIdentification?.IdentifierStartDate?.DateTimeContent,
                    "TimeZoneCode": check response?.LegalEntityReference?.PartyIdentification?.PartyIdentification?.IdentifierStartDate?.TimeZoneCode,
                    "DaylightSavingIndicator": check response?.LegalEntityReference?.PartyIdentification?.PartyIdentification?.IdentifierStartDate?.DaylightSavingIndicator,
                    "DateTimeType": check response?.LegalEntityReference?.PartyIdentification?.PartyIdentification?.IdentifierStartDate?.DateTimeType
                },
                "IdentifierEndDate": {
                    "DateTimeContent": check response?.LegalEntityReference?.PartyIdentification?.PartyIdentification?.IdentifierEndDate?.DateTimeContent,
                    "TimeZoneCode": check response?.LegalEntityReference?.PartyIdentification?.PartyIdentification?.IdentifierEndDate?.TimeZoneCode,
                    "DaylightSavingIndicator": check response?.LegalEntityReference?.PartyIdentification?.PartyIdentification?.IdentifierEndDate?.DaylightSavingIndicator,
                    "DateTimeType": check response?.LegalEntityReference?.PartyIdentification?.PartyIdentification?.IdentifierEndDate?.DateTimeType
                }
            }
        },
        "PartyLegalStructureType": check response?.LegalEntityReference?.PartyLegalStructureType,
        "PartyActivityIndicator": {
            "Industrycode": check response?.LegalEntityReference?.PartyActivityIndicator?.Industrycode
        }
    },
    "PartyReference": {
        "PartyName": {
            "Name": check response?.PartyReference?.PartyName?.Name
        },
        "PartyType": check response?.PartyReference?.PartyType,
        "PartyDateTime": {
            "DateTimeContent": check response?.PartyReference?.PartyDateTime?.DateTimeContent,
            "TimeZoneCode": check response?.PartyReference?.PartyDateTime?.TimeZoneCode,
            "DaylightSavingIndicator": check response?.PartyReference?.PartyDateTime?.DaylightSavingIndicator,
            "DateTimeType": check response?.PartyReference?.PartyDateTime?.DateTimeType
        },
        "PartyIdentification": {
            "PartyIdentificationType": check response?.PartyReference?.PartyIdentification?.PartyIdentificationType,
            "PartyIdentification": {
                "IdentifierValue": check response?.PartyReference?.PartyIdentification?.PartyIdentification?.IdentifierValue,
                "IdentifierIssuerReference": {
                    "PartyReference": check response?.PartyReference?.PartyIdentification?.PartyIdentification?.IdentifierIssuerReference?.PartyReference,
                    "InvolvementReference": check response?.PartyReference?.PartyIdentification?.PartyIdentification?.IdentifierIssuerReference?.InvolvementReference
                },
                "IdentifierStartDate": {
                    "DateTimeContent": check response?.PartyReference?.PartyIdentification?.PartyIdentification?.IdentifierStartDate?.DateTimeContent,
                    "TimeZoneCode": check response?.PartyReference?.PartyIdentification?.PartyIdentification?.IdentifierStartDate?.TimeZoneCode,
                    "DaylightSavingIndicator": check response?.PartyReference?.PartyIdentification?.PartyIdentification?.IdentifierStartDate?.DaylightSavingIndicator,
                    "DateTimeType": check response?.PartyReference?.PartyIdentification?.PartyIdentification?.IdentifierStartDate?.DateTimeType
                },
                "IdentifierEndDate": {
                    "DateTimeContent": check response?.PartyReference?.PartyIdentification?.PartyIdentification?.IdentifierEndDate?.DateTimeContent,
                    "TimeZoneCode": check response?.PartyReference?.PartyIdentification?.PartyIdentification?.IdentifierEndDate?.TimeZoneCode,
                    "DaylightSavingIndicator": check response?.PartyReference?.PartyIdentification?.PartyIdentification?.IdentifierEndDate?.DaylightSavingIndicator,
                    "DateTimeType": check response?.PartyReference?.PartyIdentification?.PartyIdentification?.IdentifierEndDate?.DateTimeType
                }
            }
        },
        "PartyLegalStructureType": check response?.PartyReference?.PartyLegalStructureType,
        "PartyActivityIndicator": {
            "Industrycode": check response?.PartyReference?.PartyActivityIndicator?.Industrycode
        }
    },
    "DirectoryEntryDateType": check response?.DirectoryEntryDateType,
    "DirectoryEntryDate": {
        "DateTimeContent": check response?.DirectoryEntryDate?.DateTimeContent,
        "TimeZoneCode": check response?.DirectoryEntryDate?.TimeZoneCode,
        "DaylightSavingIndicator": check response?.DirectoryEntryDate?.DaylightSavingIndicator,
        "DateTimeType": check response?.DirectoryEntryDate?.DateTimeType
    }
};
