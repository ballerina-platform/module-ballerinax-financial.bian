import ballerinax/financial.bian.attribute.groups.operations as operations;

isolated function transfromFinancialAccountingInitiateResponse(json response) returns operations:FinancialBookingLog|error => {
    "FinancialAccountType": check response?.FinancialAccountType,
    "ProductandServiceReference": {
        "ProductIdentification": {
            "ProductIdentification": {
                "IdentifierValue": check response?.ProductandServiceReference?.ProductIdentification?.ProductIdentification?.IdentifierValue,
                "IdentifierIssuerReference": {
                    "PartyReference": check response?.ProductandServiceReference?.ProductIdentification?.ProductIdentification?.IdentifierIssuerReference?.PartyReference,
                    "InvolvementReference": check response?.ProductandServiceReference?.ProductIdentification?.ProductIdentification?.IdentifierIssuerReference?.InvolvementReference
                },
                "IdentifierStartDate": {
                    "DateTimeContent": check response?.ProductandServiceReference?.ProductIdentification?.ProductIdentification?.IdentifierStartDate?.DateTimeContent,
                    "TimeZoneCode": check response?.ProductandServiceReference?.ProductIdentification?.ProductIdentification?.IdentifierStartDate?.TimeZoneCode,
                    "DaylightSavingIndicator": check response?.ProductandServiceReference?.ProductIdentification?.ProductIdentification?.IdentifierStartDate?.DaylightSavingIndicator,
                    "DateTimeType": check response?.ProductandServiceReference?.ProductIdentification?.ProductIdentification?.IdentifierStartDate?.DateTimeType
                },
                "IdentifierEndDate": {
                    "DateTimeContent": check response?.ProductandServiceReference?.ProductIdentification?.ProductIdentification?.IdentifierEndDate?.DateTimeContent,
                    "TimeZoneCode": check response?.ProductandServiceReference?.ProductIdentification?.ProductIdentification?.IdentifierEndDate?.TimeZoneCode,
                    "DaylightSavingIndicator": check response?.ProductandServiceReference?.ProductIdentification?.ProductIdentification?.IdentifierEndDate?.DaylightSavingIndicator,
                    "DateTimeType": check response?.ProductandServiceReference?.ProductIdentification?.ProductIdentification?.IdentifierEndDate?.DateTimeType
                }
            },
            "ProductIdentificationType": check response?.ProductandServiceReference?.ProductIdentification?.ProductIdentificationType
        },
        "ProductType": check response?.ProductandServiceReference?.ProductType,
        "ProductLifecycleStatus": {
            "ProductStatus": {
                "StatusReason": check response?.ProductandServiceReference?.ProductLifecycleStatus?.ProductStatus?.StatusReason,
                "StatusDateTime": {
                    "DateTimeContent": check response?.ProductandServiceReference?.ProductLifecycleStatus?.ProductStatus?.StatusDateTime?.DateTimeContent,
                    "TimeZoneCode": check response?.ProductandServiceReference?.ProductLifecycleStatus?.ProductStatus?.StatusDateTime?.TimeZoneCode,
                    "DaylightSavingIndicator": check response?.ProductandServiceReference?.ProductLifecycleStatus?.ProductStatus?.StatusDateTime?.DaylightSavingIndicator,
                    "DateTimeType": check response?.ProductandServiceReference?.ProductLifecycleStatus?.ProductStatus?.StatusDateTime?.DateTimeType
                },
                "StatusValidityPeriod": {
                    "FromDateTime": {
                        "DateTimeContent": check response?.ProductandServiceReference?.ProductLifecycleStatus?.ProductStatus?.StatusValidityPeriod?.FromDateTime?.DateTimeContent,
                        "TimeZoneCode": check response?.ProductandServiceReference?.ProductLifecycleStatus?.ProductStatus?.StatusValidityPeriod?.FromDateTime?.TimeZoneCode,
                        "DaylightSavingIndicator": check response?.ProductandServiceReference?.ProductLifecycleStatus?.ProductStatus?.StatusValidityPeriod?.FromDateTime?.DaylightSavingIndicator,
                        "DateTimeType": check response?.ProductandServiceReference?.ProductLifecycleStatus?.ProductStatus?.StatusValidityPeriod?.FromDateTime?.DateTimeType
                    },
                    "ToDateTime": {
                        "DateTimeContent": check response?.ProductandServiceReference?.ProductLifecycleStatus?.ProductStatus?.StatusValidityPeriod?.ToDateTime?.DateTimeContent,
                        "TimeZoneCode": check response?.ProductandServiceReference?.ProductLifecycleStatus?.ProductStatus?.StatusValidityPeriod?.ToDateTime?.TimeZoneCode,
                        "DaylightSavingIndicator": check response?.ProductandServiceReference?.ProductLifecycleStatus?.ProductStatus?.StatusValidityPeriod?.ToDateTime?.DaylightSavingIndicator,
                        "DateTimeType": check response?.ProductandServiceReference?.ProductLifecycleStatus?.ProductStatus?.StatusValidityPeriod?.ToDateTime?.DateTimeType
                    }
                },
                "StatusInvolvedPartyReference": {
                    "PartyReference": check response?.ProductandServiceReference?.ProductLifecycleStatus?.ProductStatus?.StatusInvolvedPartyReference?.PartyReference,
                    "InvolvementReference": check response?.ProductandServiceReference?.ProductLifecycleStatus?.ProductStatus?.StatusInvolvedPartyReference?.InvolvementReference
                }
            },
            "ProductStatusType": check response?.ProductandServiceReference?.ProductLifecycleStatus?.ProductStatusType
        },
        "ProductPriority": check response?.ProductandServiceReference?.ProductPriority,
        "ProductDescription": check response?.ProductandServiceReference?.ProductDescription,
        "ProductVersion": check response?.ProductandServiceReference?.ProductVersion,
        "ProductName": {
            "Name": check response?.ProductandServiceReference?.ProductName?.Name
        },
        "FinancialInstrumentType": check response?.ProductandServiceReference?.FinancialInstrumentType,
        "FinancialInstrumentIdentification": {
            "FinancialInstrumentIdentification": {
                "IdentifierValue": check response?.ProductandServiceReference?.FinancialInstrumentIdentification?.FinancialInstrumentIdentification?.IdentifierValue,
                "IdentifierIssuerReference": {
                    "PartyReference": check response?.ProductandServiceReference?.FinancialInstrumentIdentification?.FinancialInstrumentIdentification?.IdentifierIssuerReference?.PartyReference,
                    "InvolvementReference": check response?.ProductandServiceReference?.FinancialInstrumentIdentification?.FinancialInstrumentIdentification?.IdentifierIssuerReference?.InvolvementReference
                },
                "IdentifierStartDate": {
                    "DateTimeContent": check response?.ProductandServiceReference?.FinancialInstrumentIdentification?.FinancialInstrumentIdentification?.IdentifierStartDate?.DateTimeContent,
                    "TimeZoneCode": check response?.ProductandServiceReference?.FinancialInstrumentIdentification?.FinancialInstrumentIdentification?.IdentifierStartDate?.TimeZoneCode,
                    "DaylightSavingIndicator": check response?.ProductandServiceReference?.FinancialInstrumentIdentification?.FinancialInstrumentIdentification?.IdentifierStartDate?.DaylightSavingIndicator,
                    "DateTimeType": check response?.ProductandServiceReference?.FinancialInstrumentIdentification?.FinancialInstrumentIdentification?.IdentifierStartDate?.DateTimeType
                },
                "IdentifierEndDate": {
                    "DateTimeContent": check response?.ProductandServiceReference?.FinancialInstrumentIdentification?.FinancialInstrumentIdentification?.IdentifierEndDate?.DateTimeContent,
                    "TimeZoneCode": check response?.ProductandServiceReference?.FinancialInstrumentIdentification?.FinancialInstrumentIdentification?.IdentifierEndDate?.TimeZoneCode,
                    "DaylightSavingIndicator": check response?.ProductandServiceReference?.FinancialInstrumentIdentification?.FinancialInstrumentIdentification?.IdentifierEndDate?.DaylightSavingIndicator,
                    "DateTimeType": check response?.ProductandServiceReference?.FinancialInstrumentIdentification?.FinancialInstrumentIdentification?.IdentifierEndDate?.DateTimeType
                }
            },
            "FinancialInstrumentIdentificationType": check response?.ProductandServiceReference?.FinancialInstrumentIdentification?.FinancialInstrumentIdentificationType
        },
        "FinancialInstrumentName": {
            "Name": check response?.ProductandServiceReference?.FinancialInstrumentName?.Name
        },
        "FinancialInstrumentDate": {
            "FinancialInstrumentDate": {
                "DateTimeContent": check response?.ProductandServiceReference?.FinancialInstrumentDate?.FinancialInstrumentDate?.DateTimeContent,
                "TimeZoneCode": check response?.ProductandServiceReference?.FinancialInstrumentDate?.FinancialInstrumentDate?.TimeZoneCode,
                "DaylightSavingIndicator": check response?.ProductandServiceReference?.FinancialInstrumentDate?.FinancialInstrumentDate?.DaylightSavingIndicator,
                "DateTimeType": check response?.ProductandServiceReference?.FinancialInstrumentDate?.FinancialInstrumentDate?.DateTimeType
            },
            "FinancialInstrumentDateType": check response?.ProductandServiceReference?.FinancialInstrumentDate?.FinancialInstrumentDateType
        },
        "AssetTitle": check response?.ProductandServiceReference?.AssetTitle,
        "AssetIdentification": {
            "IdentifierValue": check response?.ProductandServiceReference?.AssetIdentification?.IdentifierValue,
            "IdentifierIssuerReference": {
                "PartyReference": check response?.ProductandServiceReference?.AssetIdentification?.IdentifierIssuerReference?.PartyReference,
                "InvolvementReference": check response?.ProductandServiceReference?.AssetIdentification?.IdentifierIssuerReference?.InvolvementReference
            },
            "IdentifierStartDate": {
                "DateTimeContent": check response?.ProductandServiceReference?.AssetIdentification?.IdentifierStartDate?.DateTimeContent,
                "TimeZoneCode": check response?.ProductandServiceReference?.AssetIdentification?.IdentifierStartDate?.TimeZoneCode,
                "DaylightSavingIndicator": check response?.ProductandServiceReference?.AssetIdentification?.IdentifierStartDate?.DaylightSavingIndicator,
                "DateTimeType": check response?.ProductandServiceReference?.AssetIdentification?.IdentifierStartDate?.DateTimeType
            },
            "IdentifierEndDate": {
                "DateTimeContent": check response?.ProductandServiceReference?.AssetIdentification?.IdentifierEndDate?.DateTimeContent,
                "TimeZoneCode": check response?.ProductandServiceReference?.AssetIdentification?.IdentifierEndDate?.TimeZoneCode,
                "DaylightSavingIndicator": check response?.ProductandServiceReference?.AssetIdentification?.IdentifierEndDate?.DaylightSavingIndicator,
                "DateTimeType": check response?.ProductandServiceReference?.AssetIdentification?.IdentifierEndDate?.DateTimeType
            }
        },
        "AssetType": check response?.ProductandServiceReference?.AssetType,
        "AssetDescription": check response?.ProductandServiceReference?.AssetDescription,
        "AssetStatus": {
            "StatusReason": check response?.ProductandServiceReference?.AssetStatus?.StatusReason,
            "StatusDateTime": {
                "DateTimeContent": check response?.ProductandServiceReference?.AssetStatus?.StatusDateTime?.DateTimeContent,
                "TimeZoneCode": check response?.ProductandServiceReference?.AssetStatus?.StatusDateTime?.TimeZoneCode,
                "DaylightSavingIndicator": check response?.ProductandServiceReference?.AssetStatus?.StatusDateTime?.DaylightSavingIndicator,
                "DateTimeType": check response?.ProductandServiceReference?.AssetStatus?.StatusDateTime?.DateTimeType
            },
            "StatusValidityPeriod": {
                "FromDateTime": {
                    "DateTimeContent": check response?.ProductandServiceReference?.AssetStatus?.StatusValidityPeriod?.FromDateTime?.DateTimeContent,
                    "TimeZoneCode": check response?.ProductandServiceReference?.AssetStatus?.StatusValidityPeriod?.FromDateTime?.TimeZoneCode,
                    "DaylightSavingIndicator": check response?.ProductandServiceReference?.AssetStatus?.StatusValidityPeriod?.FromDateTime?.DaylightSavingIndicator,
                    "DateTimeType": check response?.ProductandServiceReference?.AssetStatus?.StatusValidityPeriod?.FromDateTime?.DateTimeType
                },
                "ToDateTime": {
                    "DateTimeContent": check response?.ProductandServiceReference?.AssetStatus?.StatusValidityPeriod?.ToDateTime?.DateTimeContent,
                    "TimeZoneCode": check response?.ProductandServiceReference?.AssetStatus?.StatusValidityPeriod?.ToDateTime?.TimeZoneCode,
                    "DaylightSavingIndicator": check response?.ProductandServiceReference?.AssetStatus?.StatusValidityPeriod?.ToDateTime?.DaylightSavingIndicator,
                    "DateTimeType": check response?.ProductandServiceReference?.AssetStatus?.StatusValidityPeriod?.ToDateTime?.DateTimeType
                }
            },
            "StatusInvolvedPartyReference": {
                "PartyReference": check response?.ProductandServiceReference?.AssetStatus?.StatusInvolvedPartyReference?.PartyReference,
                "InvolvementReference": check response?.ProductandServiceReference?.AssetStatus?.StatusInvolvedPartyReference?.InvolvementReference
            }
        },
        "AssetDate": {
            "DateTimeContent": check response?.ProductandServiceReference?.AssetDate?.DateTimeContent,
            "TimeZoneCode": check response?.ProductandServiceReference?.AssetDate?.TimeZoneCode,
            "DaylightSavingIndicator": check response?.ProductandServiceReference?.AssetDate?.DaylightSavingIndicator,
            "DateTimeType": check response?.ProductandServiceReference?.AssetDate?.DateTimeType
        },
        "AssetClassification": check response?.ProductandServiceReference?.AssetClassification,
        "AssetClassificationType": {
            "Assetclassificationtypevalues": check response?.ProductandServiceReference?.AssetClassificationType?.Assetclassificationtypevalues
        },
        "AssetSubClassificationType": check response?.ProductandServiceReference?.AssetSubClassificationType,
        "AssetSubClassification": check response?.ProductandServiceReference?.AssetSubClassification
    },
    "BusinessUnitReference": {
        "BusinessFunction": check response?.BusinessUnitReference?.BusinessFunction,
        "Goal": check response?.BusinessUnitReference?.Goal,
        "OrganisationStructureHierarchy": check response?.BusinessUnitReference?.OrganisationStructureHierarchy,
        "OrganisationIdentification": {
            "OrganisationIdentificationType": check response?.BusinessUnitReference?.OrganisationIdentification?.OrganisationIdentificationType,
            "OrganisationIdentification": {
                "IdentifierValue": check response?.BusinessUnitReference?.OrganisationIdentification?.OrganisationIdentification?.IdentifierValue,
                "IdentifierIssuerReference": {
                    "PartyReference": check response?.BusinessUnitReference?.OrganisationIdentification?.OrganisationIdentification?.IdentifierIssuerReference?.PartyReference,
                    "InvolvementReference": check response?.BusinessUnitReference?.OrganisationIdentification?.OrganisationIdentification?.IdentifierIssuerReference?.InvolvementReference
                },
                "IdentifierStartDate": {
                    "DateTimeContent": check response?.BusinessUnitReference?.OrganisationIdentification?.OrganisationIdentification?.IdentifierStartDate?.DateTimeContent,
                    "TimeZoneCode": check response?.BusinessUnitReference?.OrganisationIdentification?.OrganisationIdentification?.IdentifierStartDate?.TimeZoneCode,
                    "DaylightSavingIndicator": check response?.BusinessUnitReference?.OrganisationIdentification?.OrganisationIdentification?.IdentifierStartDate?.DaylightSavingIndicator,
                    "DateTimeType": check response?.BusinessUnitReference?.OrganisationIdentification?.OrganisationIdentification?.IdentifierStartDate?.DateTimeType
                },
                "IdentifierEndDate": {
                    "DateTimeContent": check response?.BusinessUnitReference?.OrganisationIdentification?.OrganisationIdentification?.IdentifierEndDate?.DateTimeContent,
                    "TimeZoneCode": check response?.BusinessUnitReference?.OrganisationIdentification?.OrganisationIdentification?.IdentifierEndDate?.TimeZoneCode,
                    "DaylightSavingIndicator": check response?.BusinessUnitReference?.OrganisationIdentification?.OrganisationIdentification?.IdentifierEndDate?.DaylightSavingIndicator,
                    "DateTimeType": check response?.BusinessUnitReference?.OrganisationIdentification?.OrganisationIdentification?.IdentifierEndDate?.DateTimeType
                }
            }
        },
        "OrganisationSector": check response?.BusinessUnitReference?.OrganisationSector,
        "LegalEntityIndicator": check response?.BusinessUnitReference?.LegalEntityIndicator,
        "OrganisationDate": {
            "OrganisatioDate": {
                "DateTimeContent": check response?.BusinessUnitReference?.OrganisationDate?.OrganisatioDate?.DateTimeContent,
                "TimeZoneCode": check response?.BusinessUnitReference?.OrganisationDate?.OrganisatioDate?.TimeZoneCode,
                "DaylightSavingIndicator": check response?.BusinessUnitReference?.OrganisationDate?.OrganisatioDate?.DaylightSavingIndicator,
                "DateTimeType": check response?.BusinessUnitReference?.OrganisationDate?.OrganisatioDate?.DateTimeType
            },
            "OrganisatioDateType": check response?.BusinessUnitReference?.OrganisationDate?.OrganisatioDateType
        },
        "OrganisationType": check response?.BusinessUnitReference?.OrganisationType,
        "OrganisationName": {
            "Name": {
                "Name": check response?.BusinessUnitReference?.OrganisationName?.Name?.Name
            },
            "NameType": check response?.BusinessUnitReference?.OrganisationName?.NameType
        },
        "OrganisationLegalStructure": check response?.BusinessUnitReference?.OrganisationLegalStructure
    },
    "ChartofAccountBookingRules": {
        "RuleSetDefinition": check response?.ChartofAccountBookingRules?.RuleSetDefinition,
        "RuleSetInterpretation": check response?.ChartofAccountBookingRules?.RuleSetInterpretation,
        "RuleSetType": check response?.ChartofAccountBookingRules?.RuleSetType,
        "RuleSetName": {
            "Name": check response?.ChartofAccountBookingRules?.RuleSetName?.Name
        },
        "RuleSetIdentification": {
            "IdentifierValue": check response?.ChartofAccountBookingRules?.RuleSetIdentification?.IdentifierValue,
            "IdentifierIssuerReference": {
                "PartyReference": check response?.ChartofAccountBookingRules?.RuleSetIdentification?.IdentifierIssuerReference?.PartyReference,
                "InvolvementReference": check response?.ChartofAccountBookingRules?.RuleSetIdentification?.IdentifierIssuerReference?.InvolvementReference
            },
            "IdentifierStartDate": {
                "DateTimeContent": check response?.ChartofAccountBookingRules?.RuleSetIdentification?.IdentifierStartDate?.DateTimeContent,
                "TimeZoneCode": check response?.ChartofAccountBookingRules?.RuleSetIdentification?.IdentifierStartDate?.TimeZoneCode,
                "DaylightSavingIndicator": check response?.ChartofAccountBookingRules?.RuleSetIdentification?.IdentifierStartDate?.DaylightSavingIndicator,
                "DateTimeType": check response?.ChartofAccountBookingRules?.RuleSetIdentification?.IdentifierStartDate?.DateTimeType
            },
            "IdentifierEndDate": {
                "DateTimeContent": check response?.ChartofAccountBookingRules?.RuleSetIdentification?.IdentifierEndDate?.DateTimeContent,
                "TimeZoneCode": check response?.ChartofAccountBookingRules?.RuleSetIdentification?.IdentifierEndDate?.TimeZoneCode,
                "DaylightSavingIndicator": check response?.ChartofAccountBookingRules?.RuleSetIdentification?.IdentifierEndDate?.DaylightSavingIndicator,
                "DateTimeType": check response?.ChartofAccountBookingRules?.RuleSetIdentification?.IdentifierEndDate?.DateTimeType
            }
        },
        "RuleSetLifecycleStatus": {
            "StatusReason": check response?.ChartofAccountBookingRules?.RuleSetLifecycleStatus?.StatusReason,
            "StatusDateTime": {
                "DateTimeContent": check response?.ChartofAccountBookingRules?.RuleSetLifecycleStatus?.StatusDateTime?.DateTimeContent,
                "TimeZoneCode": check response?.ChartofAccountBookingRules?.RuleSetLifecycleStatus?.StatusDateTime?.TimeZoneCode,
                "DaylightSavingIndicator": check response?.ChartofAccountBookingRules?.RuleSetLifecycleStatus?.StatusDateTime?.DaylightSavingIndicator,
                "DateTimeType": check response?.ChartofAccountBookingRules?.RuleSetLifecycleStatus?.StatusDateTime?.DateTimeType
            },
            "StatusValidityPeriod": {
                "FromDateTime": {
                    "DateTimeContent": check response?.ChartofAccountBookingRules?.RuleSetLifecycleStatus?.StatusValidityPeriod?.FromDateTime?.DateTimeContent,
                    "TimeZoneCode": check response?.ChartofAccountBookingRules?.RuleSetLifecycleStatus?.StatusValidityPeriod?.FromDateTime?.TimeZoneCode,
                    "DaylightSavingIndicator": check response?.ChartofAccountBookingRules?.RuleSetLifecycleStatus?.StatusValidityPeriod?.FromDateTime?.DaylightSavingIndicator,
                    "DateTimeType": check response?.ChartofAccountBookingRules?.RuleSetLifecycleStatus?.StatusValidityPeriod?.FromDateTime?.DateTimeType
                },
                "ToDateTime": {
                    "DateTimeContent": check response?.ChartofAccountBookingRules?.RuleSetLifecycleStatus?.StatusValidityPeriod?.ToDateTime?.DateTimeContent,
                    "TimeZoneCode": check response?.ChartofAccountBookingRules?.RuleSetLifecycleStatus?.StatusValidityPeriod?.ToDateTime?.TimeZoneCode,
                    "DaylightSavingIndicator": check response?.ChartofAccountBookingRules?.RuleSetLifecycleStatus?.StatusValidityPeriod?.ToDateTime?.DaylightSavingIndicator,
                    "DateTimeType": check response?.ChartofAccountBookingRules?.RuleSetLifecycleStatus?.StatusValidityPeriod?.ToDateTime?.DateTimeType
                }
            },
            "StatusInvolvedPartyReference": {
                "PartyReference": check response?.ChartofAccountBookingRules?.RuleSetLifecycleStatus?.StatusInvolvedPartyReference?.PartyReference,
                "InvolvementReference": check response?.ChartofAccountBookingRules?.RuleSetLifecycleStatus?.StatusInvolvedPartyReference?.InvolvementReference
            }
        }
    },
    "BaseCurrency": {
        "Currencycode": check response?.BaseCurrency?.Currencycode
    },
    "Status": {
        "StatusReason": check response?.Status?.StatusReason,
        "StatusDateTime": {
            "DateTimeContent": check response?.Status?.StatusDateTime?.DateTimeContent,
            "TimeZoneCode": check response?.Status?.StatusDateTime?.TimeZoneCode,
            "DaylightSavingIndicator": check response?.Status?.StatusDateTime?.DaylightSavingIndicator,
            "DateTimeType": check response?.Status?.StatusDateTime?.DateTimeType
        },
        "StatusValidityPeriod": {
            "FromDateTime": {
                "DateTimeContent": check response?.Status?.StatusValidityPeriod?.FromDateTime?.DateTimeContent,
                "TimeZoneCode": check response?.Status?.StatusValidityPeriod?.FromDateTime?.TimeZoneCode,
                "DaylightSavingIndicator": check response?.Status?.StatusValidityPeriod?.FromDateTime?.DaylightSavingIndicator,
                "DateTimeType": check response?.Status?.StatusValidityPeriod?.FromDateTime?.DateTimeType
            },
            "ToDateTime": {
                "DateTimeContent": check response?.Status?.StatusValidityPeriod?.ToDateTime?.DateTimeContent,
                "TimeZoneCode": check response?.Status?.StatusValidityPeriod?.ToDateTime?.TimeZoneCode,
                "DaylightSavingIndicator": check response?.Status?.StatusValidityPeriod?.ToDateTime?.DaylightSavingIndicator,
                "DateTimeType": check response?.Status?.StatusValidityPeriod?.ToDateTime?.DateTimeType
            }
        },
        "StatusInvolvedPartyReference": {
            "PartyReference": check response?.Status?.StatusInvolvedPartyReference?.PartyReference,
            "InvolvementReference": check response?.Status?.StatusInvolvedPartyReference?.InvolvementReference
        }
    }
};
