import ballerinax/financial.bian.attribute.groups.operations as operations;

isolated function transfromIssuedDeviceAdministrationResponse(json response) returns operations:DeviceAssignment|error => {
    "CustomerReference": {
        "PartyReference": {
        "PartyName": {
            "Name": check response?.CustomerReference?.PartyReference?.PartyName?.Name
        },
        "PartyType": check response?.CustomerReference?.PartyReference?.PartyType,
        "PartyDateTime": {
            "DateTimeContent": {
            "Text": check response?.CustomerReference?.PartyReference?.PartyDateTime?.DateTimeContent?.Text
            },
            "TimeZoneCode": {
            "Text": check response?.CustomerReference?.PartyReference?.PartyDateTime?.TimeZoneCode?.Text
            },
            "DaylightSavingIndicator": {
            "Text": check response?.CustomerReference?.PartyReference?.PartyDateTime?.DaylightSavingIndicator?.Text
            },
            "DateTimeType": check response?.CustomerReference?.PartyReference?.PartyDateTime?.DateTimeType
        },
        "PartyIdentification": {
            "PartyIdentificationType": check response?.CustomerReference?.PartyReference?.PartyIdentification?.PartyIdentificationType,
            "PartyIdentification": {
            "IdentifierValue": {
                "Value": check response?.CustomerReference?.PartyReference?.PartyIdentification?.PartyIdentification?.IdentifierValue?.Value
            },
            "IdentifierIssuingAuthority": check response?.CustomerReference?.PartyReference?.PartyIdentification?.PartyIdentification?.IdentifierIssuingAuthority,
            "IdentifierStartDate": {
                "DateTimeContent": {
                "Text": check response?.CustomerReference?.PartyReference?.PartyIdentification?.PartyIdentification?.IdentifierStartDate?.DateTimeContent?.Text
                },
                "TimeZoneCode": {
                "Text": check response?.CustomerReference?.PartyReference?.PartyIdentification?.PartyIdentification?.IdentifierStartDate?.TimeZoneCode?.Text
                },
                "DaylightSavingIndicator": {
                "Text": check response?.CustomerReference?.PartyReference?.PartyIdentification?.PartyIdentification?.IdentifierStartDate?.DaylightSavingIndicator?.Text
                },
                "DateTimeType": check response?.CustomerReference?.PartyReference?.PartyIdentification?.PartyIdentification?.IdentifierStartDate?.DateTimeType
            },
            "IdentifierEndDate": {
                "DateTimeContent": {
                "Text": check response?.CustomerReference?.PartyReference?.PartyIdentification?.PartyIdentification?.IdentifierEndDate?.DateTimeContent?.Text
                },
                "TimeZoneCode": {
                "Text": check response?.CustomerReference?.PartyReference?.PartyIdentification?.PartyIdentification?.IdentifierEndDate?.TimeZoneCode?.Text
                },
                "DaylightSavingIndicator": {
                "Text": check response?.CustomerReference?.PartyReference?.PartyIdentification?.PartyIdentification?.IdentifierEndDate?.DaylightSavingIndicator?.Text
                },
                "DateTimeType": check response?.CustomerReference?.PartyReference?.PartyIdentification?.PartyIdentification?.IdentifierEndDate?.DateTimeType
            }
            }
        },
        "PartyLegalStructureType": check response?.CustomerReference?.PartyReference?.PartyLegalStructureType
        },
        "PartyInvolvement": {
        "PartyRoleType": {
            "Text": check response?.CustomerReference?.PartyInvolvement?.PartyRoleType?.Text
        },
        "PartyRoleName": {
            "Name": check response?.CustomerReference?.PartyInvolvement?.PartyRoleName?.Name
        },
        "PartyRoleValidityPeriod": {
            "FromDateTime": {
            "DateTimeContent": {
                "Text": check response?.CustomerReference?.PartyInvolvement?.PartyRoleValidityPeriod?.FromDateTime?.DateTimeContent?.Text
            },
            "TimeZoneCode": {
                "Text": check response?.CustomerReference?.PartyInvolvement?.PartyRoleValidityPeriod?.FromDateTime?.TimeZoneCode?.Text
            },
            "DaylightSavingIndicator": {
                "Text": check response?.CustomerReference?.PartyInvolvement?.PartyRoleValidityPeriod?.FromDateTime?.DaylightSavingIndicator?.Text
            },
            "DateTimeType": check response?.CustomerReference?.PartyInvolvement?.PartyRoleValidityPeriod?.FromDateTime?.DateTimeType
            },
            "ToDateTime": {
            "DateTimeContent": {
                "Text": check response?.CustomerReference?.PartyInvolvement?.PartyRoleValidityPeriod?.ToDateTime?.DateTimeContent?.Text
            },
            "TimeZoneCode": {
                "Text": check response?.CustomerReference?.PartyInvolvement?.PartyRoleValidityPeriod?.ToDateTime?.TimeZoneCode?.Text
            },
            "DaylightSavingIndicator": {
                "Text": check response?.CustomerReference?.PartyInvolvement?.PartyRoleValidityPeriod?.ToDateTime?.DaylightSavingIndicator?.Text
            },
            "DateTimeType": check response?.CustomerReference?.PartyInvolvement?.PartyRoleValidityPeriod?.ToDateTime?.DateTimeType
            }
        },
        "PartyInvolvementType": check response?.CustomerReference?.PartyInvolvement?.PartyInvolvementType
        }
    },
    "ProductInstanceReference": {
        "ProductAgreementType": check response?.ProductInstanceReference?.ProductAgreementType
    },
    "IssuedDeviceType": check response?.IssuedDeviceType,
    "AssociatedPermissions": {
        "DeviceAccessArrangement": check response?.AssociatedPermissions?.DeviceAccessArrangement
    },
    "IssueDate": {
        "DateTimeContent": {
        "Text": check response?.IssueDate?.DateTimeContent?.Text
        },
        "TimeZoneCode": {
        "Text": check response?.IssueDate?.TimeZoneCode?.Text
        },
        "DaylightSavingIndicator": {
        "Text": check response?.IssueDate?.DaylightSavingIndicator?.Text
        },
        "DateTimeType": check response?.IssueDate?.DateTimeType
    },
    "ValidFrom-ToDate": {
        "FromDateTime": {
        "DateTimeContent": {
            "Text": check response?.'ValidFrom\-ToDate?.FromDateTime?.DateTimeContent?.Text
        },
        "TimeZoneCode": {
            "Text": check response?.'ValidFrom\-ToDate?.FromDateTime?.TimeZoneCode?.Text
        },
        "DaylightSavingIndicator": {
            "Text": check response?.'ValidFrom\-ToDate?.FromDateTime?.DaylightSavingIndicator?.Text
        },
        "DateTimeType": check response?.'ValidFrom\-ToDate?.FromDateTime?.DateTimeType
        },
        "ToDateTime": {
        "DateTimeContent": {
            "Text": check response?.'ValidFrom\-ToDate?.ToDateTime?.DateTimeContent?.Text
        },
        "TimeZoneCode": {
            "Text": check response?.'ValidFrom\-ToDate?.ToDateTime?.TimeZoneCode?.Text
        },
        "DaylightSavingIndicator": {
            "Text": check response?.'ValidFrom\-ToDate?.ToDateTime?.DaylightSavingIndicator?.Text
        },
        "DateTimeType": check response?.'ValidFrom\-ToDate?.ToDateTime?.DateTimeType
        }
    }
};