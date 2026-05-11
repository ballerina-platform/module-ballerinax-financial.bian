import ballerinax/financial.bian.attribute.groups.channels as channels;
import ballerinax/financial.bian.attribute.groups.common as common;

isolated function transfromCorrespondenceOutboundInitiateResponse(json response) returns common:Outbound|error => {
    "CorrespondenceSourceReference": check response?.CorrespondenceSourceReference,
    "CorrespondenceRecord": {
        "CorrespondenceType": check response?.CorrespondenceRecord?.CorrespondenceType,
        "CorrespondenceAddress": {
            "AddressType": check response?.CorrespondenceRecord?.CorrespondenceAddress?.AddressType,
            "AddressDescription": check response?.CorrespondenceRecord?.CorrespondenceAddress?.AddressDescription
        },
        "CorrespondenceDateTime": {
            "DateTimeContent": check response?.CorrespondenceRecord?.CorrespondenceDateTime?.DateTimeContent,
            "TimeZoneCode": check response?.CorrespondenceRecord?.CorrespondenceDateTime?.TimeZoneCode,
            "DaylightSavingIndicator": check response?.CorrespondenceRecord?.CorrespondenceDateTime?.DaylightSavingIndicator,
            "DateTimeType": check response?.CorrespondenceRecord?.CorrespondenceDateTime?.DateTimeType
        },
        "CorrespondenceContent": check response?.CorrespondenceRecord?.CorrespondenceContent,
        "CorrespondenceTemplate": check response?.CorrespondenceRecord?.CorrespondenceTemplate,
        "CorrespondenceCommunicationMethod": check response?.CorrespondenceRecord?.CorrespondenceCommunicationMethod,
        "CorrespondenceAddressType": check response?.CorrespondenceRecord?.CorrespondenceAddressType,
        "CorrespondenceMedium": check response?.CorrespondenceRecord?.CorrespondenceMedium
    },
    "CorrespondenceType": check response?.CorrespondenceType,
    "CorrespondenceTemplateReference": check response?.CorrespondenceTemplateReference,
    "CorrespondenceTemplateRecord": check response?.CorrespondenceTemplateRecord,
    "CorrespondenceContent": check response?.CorrespondenceContent,
    "CorrespondenceMediaorChannel": {
        "ChannelType": check response?.CorrespondenceMediaorChannel?.ChannelType
    },
    "CorrespondenceAddressee": {
        "AddressType": check response?.CorrespondenceAddressee?.AddressType,
        "AddressDescription": check response?.CorrespondenceAddressee?.AddressDescription
    },
    "CustomerReference": {
        "PartyReference": check response?.CustomerReference?.PartyReference,
        "InvolvementReference": check response?.CustomerReference?.InvolvementReference
    },
    "ChannelAccessPreferenceReference": {
        "ChannelType": "CommunicationChannel",
        "SystemAccessSchedule": {
            "ScheduleType": "string"
        },
        "SystemType": "string",
        "SystemIdentification": {
            "IdentifierValue": "string",
            "IdentifierIssuerReference": {
                "PartyReference": "string",
                "InvolvementReference": "string"
            },
            "IdentifierStartDate": {
                "DateTimeContent": "string",
                "TimeZoneCode": "string",
                "DaylightSavingIndicator": "string",
                "DateTimeType": "MaturityDate"
            },
            "IdentifierEndDate": {
                "DateTimeContent": "string",
                "TimeZoneCode": "string",
                "DaylightSavingIndicator": "string",
                "DateTimeType": "MaturityDate"
            }
        },
        "SystemIdentificationType": "Model",
        "SystemStatus": {
            "StatusReason": "string",
            "StatusDateTime": {
                "DateTimeContent": "string",
                "TimeZoneCode": "string",
                "DaylightSavingIndicator": "string",
                "DateTimeType": "MaturityDate"
            },
            "StatusValidityPeriod": {
                "FromDateTime": {
                    "DateTimeContent": "string",
                    "TimeZoneCode": "string",
                    "DaylightSavingIndicator": "string",
                    "DateTimeType": "MaturityDate"
                },
                "ToDateTime": {
                    "DateTimeContent": "string",
                    "TimeZoneCode": "string",
                    "DaylightSavingIndicator": "string",
                    "DateTimeType": "MaturityDate"
                }
            },
            "StatusInvolvedPartyReference": {
                "PartyReference": "string",
                "InvolvementReference": "string"
            }
        },
        "SystemStatusType": "Suspended",
        "SystemDateTime": {
            "DateTimeContent": "string",
            "TimeZoneCode": "string",
            "DaylightSavingIndicator": "string",
            "DateTimeType": "MaturityDate"
        },
        "SystemLanguage": "string"
    },
    "ChannelAccessPreferenceProfile": check response?.ChannelAccessPreferenceProfile,
    "ChannelAccessChannelorDeviceType": check response?.ChannelAccessChannelorDeviceType,
    "ChannelAccessChannelorDeviceTypePreference": check response?.ChannelAccessChannelorDeviceTypePreference,
    "ProductandServiceType": check response?.ProductandServiceType,
    "EmployeeorBusinessUnitReference": {
        "BusinessFunction": check response?.EmployeeorBusinessUnitReference?.BusinessFunction,
        "Goal": check response?.EmployeeorBusinessUnitReference?.Goal,
        "OrganisationStructureHierarchy": "string",
        "OrganisationIdentification": {
            "OrganisationIdentificationType": "LEI",
            "OrganisationIdentification": {
                "IdentifierValue": "string",
                "IdentifierIssuerReference": {
                    "PartyReference": "string",
                    "InvolvementReference": "string"
                },
                "IdentifierStartDate": {
                    "DateTimeContent": "string",
                    "TimeZoneCode": "string",
                    "DaylightSavingIndicator": "string",
                    "DateTimeType": "MaturityDate"
                },
                "IdentifierEndDate": {
                    "DateTimeContent": "string",
                    "TimeZoneCode": "string",
                    "DaylightSavingIndicator": "string",
                    "DateTimeType": "MaturityDate"
                }
            }
        },
        "OrganisationSector": "string",
        "LegalEntityIndicator": "string",
        "OrganisationDate": {
            "OrganisatioDate": {
                "DateTimeContent": "string",
                "TimeZoneCode": "string",
                "DaylightSavingIndicator": "string",
                "DateTimeType": "MaturityDate"
            },
            "OrganisatioDateType": "RegistrationDate"
        },
        "OrganisationType": "LegalEntity",
        "OrganisationName": {
            "Name": {
                "Name": "string"
            },
            "NameType": "ShortName"
        },
        "OrganisationLegalStructure": "Corporation"
    },
    "DateType": check response?.DateType,
    "Date": {
        "DateTimeContent": check response?.Date?.DateTimeContent,
        "TimeZoneCode": check response?.Date?.TimeZoneCode,
        "DaylightSavingIndicator": check response?.Date?.DaylightSavingIndicator,
        "DateTimeType": check response?.Date?.DateTimeType
    }
};

isolated function transfromCorrespondenceOutboundWithResponse(json response) returns channels:OutboundWithResponse|error => {
    ResponseDueDate: {
        DateTimeContent: check response?.ResponseDueDate?.DateTimeContent,
        TimeZoneCode: check response?.ResponseDueDate?.TimeZoneCode,
        DaylightSavingIndicator: check response?.ResponseDueDate?.DaylightSavingIndicator,
        DateTimeType: check response?.ResponseDueDate?.DateTimeType
    },
    ResponseCorrespondenceReference: {
        CorrespondenceType: check response?.ResponseCorrespondenceReference?.CorrespondenceType,
        CorrespondenceAddress: {
            AddressType: check response?.ResponseCorrespondenceReference?.CorrespondenceAddress?.AddressType,
            AddressDescription: check response?.ResponseCorrespondenceReference?.CorrespondenceAddress?.AddressDescription
        },
        CorrespondenceDateTime: {
            DateTimeContent: check response?.ResponseCorrespondenceReference?.CorrespondenceDateTime?.DateTimeContent,
            TimeZoneCode: check response?.ResponseCorrespondenceReference?.CorrespondenceDateTime?.TimeZoneCode,
            DaylightSavingIndicator: check response?.ResponseCorrespondenceReference?.CorrespondenceDateTime?.DaylightSavingIndicator,
            DateTimeType: check response?.ResponseCorrespondenceReference?.CorrespondenceDateTime?.DateTimeType
        },
        CorrespondenceContent: check response?.ResponseCorrespondenceReference?.CorrespondenceContent,
        CorrespondenceTemplate: check response?.ResponseCorrespondenceReference?.CorrespondenceTemplate,
        CorrespondenceCommunicationMethod: check response?.ResponseCorrespondenceReference?.CorrespondenceCommunicationMethod,
        CorrespondenceAddressType: check response?.ResponseCorrespondenceReference?.CorrespondenceAddressType,
        CorrespondenceMedium: check response?.ResponseCorrespondenceReference?.CorrespondenceMedium
    },
    ResponseCorrespondenceRecord: {
        CorrespondenceType: check response?.ResponseCorrespondenceRecord?.CorrespondenceType,
        CorrespondenceAddress: {
            AddressType: check response?.ResponseCorrespondenceRecord?.CorrespondenceAddress?.AddressType
            // AddressDescription: "string"
        },
        CorrespondenceDateTime: {
            DateTimeContent: check response?.ResponseCorrespondenceRecord?.CorrespondenceDateTime?.DateTimeContent,
            TimeZoneCode: check response?.ResponseCorrespondenceRecord?.CorrespondenceDateTime?.TimeZoneCode,
            DaylightSavingIndicator: check response?.ResponseCorrespondenceRecord?.CorrespondenceDateTime?.DaylightSavingIndicator,
            DateTimeType: check response?.ResponseCorrespondenceRecord?.CorrespondenceDateTime?.DateTimeType
        },
        CorrespondenceContent: check response?.ResponseCorrespondenceRecord?.CorrespondenceContent,
        CorrespondenceTemplate: check response?.ResponseCorrespondenceRecord?.CorrespondenceTemplate?.Text
,
        CorrespondenceCommunicationMethod: check response?.ResponseCorrespondenceRecord?.CorrespondenceCommunicationMethod,
        CorrespondenceAddressType: check response?.ResponseCorrespondenceRecord?.CorrespondenceAddressType,
        CorrespondenceMedium: check response?.ResponseCorrespondenceRecord?.CorrespondenceMedium
    }
};
