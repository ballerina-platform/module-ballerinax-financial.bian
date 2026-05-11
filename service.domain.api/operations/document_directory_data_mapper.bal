import ballerinax/financial.bian.attribute.groups.common as common;

isolated function transformDocumentDirectoryInitiateResponse(json response) returns common:DocumentDirectoryEntry|error => {
    "DocumentDirectoryEntryIdentification": check response?.DocumentDirectoryEntryIdentification,
    "DirectoryEntryDateType": check response?.DirectoryEntryDateType,
    "DirectoryEntryDate": {
        "DateContent": check response?.DirectoryEntryDate?.DateContent
    },
    "DirectoryEntryStatus": {
        "StatusReason": check response?.DirectoryEntryStatus?.StatusReason,
        "StatusDateTime": {
            "DateTimeContent": check response?.DirectoryEntryStatus?.StatusDateTime?.DateTimeContent,
            "TimeZoneCode": check response?.DirectoryEntryStatus?.StatusDateTime?.TimeZoneCode,
            "DaylightSavingIndicator": check response?.DirectoryEntryStatus?.StatusDateTime?.DaylightSavingIndicator,
            "DateTimeType": check response?.DirectoryEntryStatus?.StatusDateTime?.DateTimeType
        },
        "StatusValidityPeriod": {
            "FromDateTime": {
                "DateTimeContent": check response?.DirectoryEntryStatus?.StatusValidityPeriod?.FromDateTime?.DateTimeContent,
                "TimeZoneCode": check response?.DirectoryEntryStatus?.StatusValidityPeriod?.FromDateTime?.TimeZoneCode,
                "DaylightSavingIndicator": check response?.DirectoryEntryStatus?.StatusValidityPeriod?.FromDateTime?.DaylightSavingIndicator,
                "DateTimeType": check response?.DirectoryEntryStatus?.StatusValidityPeriod?.FromDateTime?.DateTimeType
            },
            "ToDateTime": {
                "DateTimeContent": check response?.DirectoryEntryStatus?.StatusValidityPeriod?.ToDateTime?.DateTimeContent,
                "TimeZoneCode": check response?.DirectoryEntryStatus?.StatusValidityPeriod?.ToDateTime?.TimeZoneCode,
                "DaylightSavingIndicator": check response?.DirectoryEntryStatus?.StatusValidityPeriod?.ToDateTime?.DaylightSavingIndicator,
                "DateTimeType": check response?.DirectoryEntryStatus?.StatusValidityPeriod?.ToDateTime?.DateTimeType
            }
        },
        "StatusInvolvedPartyReference": {
            "PartyReference": check response?.DirectoryEntryStatus?.StatusInvolvedPartyReference?.PartyReference,
            "InvolvementReference": check response?.DirectoryEntryStatus?.StatusInvolvedPartyReference?.InvolvementReference
        }
    }
};
