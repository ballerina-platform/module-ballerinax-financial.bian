import ballerinax/financial.bian.attribute.groups.products as products;

isolated function transformSavingsAccountInitiateResponse(json response) returns products:SavingsAccountFacility|error =>
    {
    //     ProductInstanceReference: {
    //         "SavingsAccountAgreementIdentification": {
    //             "IdentifierValue": {
    //                 "Value": check response?.ProductInstanceReference?.SavingsAccountAgreementIdentification?.IdentifierValue?.Value
    //             },
    //         "IdentifierIssuerReference": {
    //             "PartyReference": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementIdentification?.IdentifierIssuerReference?.PartyReference,
    //             "InvolvementReference": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementIdentification?.IdentifierIssuerReference?.InvolvementReference
    //         },
    //         "IdentifierStartDate": {
    //             "DateTimeContent": {
    //                 "Text": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementIdentification?.IdentifierStartDate?.DateTimeContent?.Text
    //             },
    //             "TimeZoneCode": {
    //                 "Text": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementIdentification?.IdentifierStartDate?.TimeZoneCode?.Text
    //             },
    //             "DaylightSavingIndicator": {
    //                 "Text": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementIdentification?.IdentifierStartDate?.DaylightSavingIndicator?.Text
    //             },
    //             "DateTimeType": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementIdentification?.IdentifierStartDate?.DateTimeType
    //         },
    //         "IdentifierEndDate": {
    //             "DateTimeContent": {
    //                 "Text": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementIdentification?.IdentifierEndDate?.DateTimeContent?.Text
    //             },
    //             "TimeZoneCode": {
    //                 "Text": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementIdentification?.IdentifierEndDate?.TimeZoneCode?.Text
    //             },
    //             "DaylightSavingIndicator": {
    //                 "Text": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementIdentification?.IdentifierEndDate?.DaylightSavingIndicator?.Text
    //             },
    //             "DateTimeType": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementIdentification?.IdentifierEndDate?.DateTimeType
    //         }
    //     },
    //     "SavingsAccountAgreementCurrency": {
    //         "AccountCurrencyType": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementCurrency?.AccountCurrencyType,
    //         "AccountCurrency": {
    //             "Currencycode": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementCurrency?.AccountCurrency?.Currencycode
    //         }
    //     },
    //     "SavingsAccountAgreementTaxRegime": {
    //         "TaxType": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxType,
    //         "TaxAmount": {
    //             "AmountValue": {
    //                 "Value": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxAmount?.AmountValue?.Value
    //             },
    //             "AmountCurrency": {
    //                 "Currencycode": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxAmount?.AmountCurrency?.Currencycode
    //             },
    //             "DecimalPointPosition": {
    //                 "Text": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxAmount?.DecimalPointPosition?.Text
    //             },
    //             "AmountType": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxAmount?.AmountType
    //         },
    //         "TaxRate": {
    //             "RateValue": {
    //                 "Value": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxRate?.RateValue?.Value
    //             },
    //             "RateUnit": {
    //                 "Text": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxRate?.RateUnit?.Text
    //             },
    //             "RatePeriod": {
    //                 "FromDateTime": {
    //                     "DateTimeContent": {
    //                         "Text": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxRate?.RatePeriod?.FromDateTime?.DateTimeContent?.Text
    //                     },
    //                     "TimeZoneCode": {
    //                         "Text": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxRate?.RatePeriod?.FromDateTime?.TimeZoneCode?.Text
    //                     },
    //                     "DaylightSavingIndicator": {
    //                         "Text": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxRate?.RatePeriod?.FromDateTime?.DaylightSavingIndicator?.Text
    //                     },
    //                     "DateTimeType": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxRate?.RatePeriod?.FromDateTime?.DateTimeType
    //                 },
    //                 "ToDateTime": {
    //                     "DateTimeContent": {
    //                         "Text": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxRate?.RatePeriod?.ToDateTime?.DateTimeContent?.Text
    //                     },
    //                     "TimeZoneCode": {
    //                         "Text": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxRate?.RatePeriod?.ToDateTime?.TimeZoneCode?.Text
    //                     },
    //                     "DaylightSavingIndicator": {
    //                         "Text": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxRate?.RatePeriod?.ToDateTime?.DaylightSavingIndicator?.Text
    //                     },
    //                     "DateTimeType": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxRate?.RatePeriod?.ToDateTime?.DateTimeType
    //                 }
    //             },
    //             "RateCapitalUnit": {
    //                 "Text": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxRate?.RateCapitalUnit?.Text
    //             }
    //         },
    //         "TaxRateType": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxRateType,
    //         "PlaceOfTaxation": {
    //             "LocationDescription": {
    //                 "Text": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.PlaceOfTaxation?.LocationDescription?.Text
    //             },
    //             "LocationDateTime": {
    //                 "DateTimeContent": {
    //                     "Text": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.PlaceOfTaxation?.LocationDateTime?.DateTimeContent?.Text
    //                 },
    //                 "TimeZoneCode": {
    //                     "Text": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.PlaceOfTaxation?.LocationDateTime?.TimeZoneCode?.Text
    //                 },
    //                 "DaylightSavingIndicator": {
    //                     "Text": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.PlaceOfTaxation?.LocationDateTime?.DaylightSavingIndicator?.Text
    //                 },
    //                 "DateTimeType": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.PlaceOfTaxation?.LocationDateTime?.DateTimeType
    //             },
    //             "LocationStatus": {
    //                 "StatusReason": {
    //                     "Text": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.PlaceOfTaxation?.LocationStatus?.StatusReason?.Text
    //                 },
    //                 "StatusDateTime": {
    //                     "DateTimeContent": {
    //                         "Text": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.PlaceOfTaxation?.LocationStatus?.StatusDateTime?.DateTimeContent?.Text
    //                     },
    //                     "TimeZoneCode": {
    //                         "Text": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.PlaceOfTaxation?.LocationStatus?.StatusDateTime?.TimeZoneCode?.Text
    //                     },
    //                     "DaylightSavingIndicator": {
    //                         "Text": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.PlaceOfTaxation?.LocationStatus?.StatusDateTime?.DaylightSavingIndicator?.Text
    //                     },
    //                     "DateTimeType": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.PlaceOfTaxation?.LocationStatus?.StatusDateTime?.DateTimeType
    //                 },
    //                 "StatusValidityPeriod": {
    //                     "FromDateTime": {
    //                         "DateTimeContent": {
    //                             "Text": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.PlaceOfTaxation?.LocationStatus?.StatusValidityPeriod?.FromDateTime?.DateTimeContent?.Text
    //                         },
    //                         "TimeZoneCode": {
    //                             "Text": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.PlaceOfTaxation?.LocationStatus?.StatusValidityPeriod?.FromDateTime?.TimeZoneCode?.Text
    //                         },
    //                         "DaylightSavingIndicator": {
    //                             "Text": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.PlaceOfTaxation?.LocationStatus?.StatusValidityPeriod?.FromDateTime?.DaylightSavingIndicator?.Text
    //                         },
    //                         "DateTimeType": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.PlaceOfTaxation?.LocationStatus?.StatusValidityPeriod?.FromDateTime?.DateTimeType
    //                     },
    //                     "ToDateTime": {
    //                         "DateTimeContent": {
    //                             "Text": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.PlaceOfTaxation?.LocationStatus?.StatusValidityPeriod?.ToDateTime?.DateTimeContent?.Text
    //                         },
    //                         "TimeZoneCode": {
    //                             "Text": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.PlaceOfTaxation?.LocationStatus?.StatusValidityPeriod?.ToDateTime?.TimeZoneCode?.Text
    //                         },
    //                         "DaylightSavingIndicator": {
    //                             "Text": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.PlaceOfTaxation?.LocationStatus?.StatusValidityPeriod?.ToDateTime?.DaylightSavingIndicator?.Text
    //                         },
    //                         "DateTimeType": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.PlaceOfTaxation?.LocationStatus?.StatusValidityPeriod?.ToDateTime?.DateTimeType
    //                     }
    //                 },
    //                 "StatusInvolvedPartyReference": {
    //                     "PartyReference": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.PlaceOfTaxation?.LocationStatus?.StatusInvolvedPartyReference?.PartyReference,
    //                     "InvolvementReference": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.PlaceOfTaxation?.LocationStatus?.StatusInvolvedPartyReference?.InvolvementReference
    //                 }
    //             },
    //             "LocationType": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.PlaceOfTaxation?.LocationType,
    //             "LocationZoningType": {
    //                 "Text": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.PlaceOfTaxation?.LocationZoningType?.Text
    //             },
    //             "LocationNeighborhoodType": {
    //                 "Text": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.PlaceOfTaxation?.LocationNeighborhoodType?.Text
    //             },
    //             "LocationConstructionType": {
    //                 "Text": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.PlaceOfTaxation?.LocationConstructionType?.Text
    //             },
    //             "LocationOccupancyType": {
    //                 "Text": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.PlaceOfTaxation?.LocationOccupancyType?.Text
    //             },
    //             "LocationValue": {
    //                 "Value": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.PlaceOfTaxation?.LocationValue?.Value
    //             },
    //             "LocationCapacity": {
    //                 "Text": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.PlaceOfTaxation?.LocationCapacity?.Text
    //             },
    //             "LocationIdentification": {
    //                 "IdentifierValue": {
    //                     "Value": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.PlaceOfTaxation?.LocationIdentification?.IdentifierValue?.Value
    //                 },
    //                 "IdentifierIssuerReference": {
    //                     "PartyReference": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.PlaceOfTaxation?.LocationIdentification?.IdentifierIssuerReference?.PartyReference,
    //                     "InvolvementReference": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.PlaceOfTaxation?.LocationIdentification?.IdentifierIssuerReference?.InvolvementReference
    //                 },
    //                 "IdentifierStartDate": {
    //                     "DateTimeContent": {
    //                         "Text": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.PlaceOfTaxation?.LocationIdentification?.IdentifierStartDate?.DateTimeContent?.Text
    //                     },
    //                     "TimeZoneCode": {
    //                         "Text": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.PlaceOfTaxation?.LocationIdentification?.IdentifierStartDate?.TimeZoneCode?.Text
    //                     },
    //                     "DaylightSavingIndicator": {
    //                         "Text": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.PlaceOfTaxation?.LocationIdentification?.IdentifierStartDate?.DaylightSavingIndicator?.Text
    //                     },
    //                     "DateTimeType": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.PlaceOfTaxation?.LocationIdentification?.IdentifierStartDate?.DateTimeType
    //                 },
    //                 "IdentifierEndDate": {
    //                     "DateTimeContent": {
    //                         "Text": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.PlaceOfTaxation?.LocationIdentification?.IdentifierEndDate?.DateTimeContent?.Text
    //                     },
    //                     "TimeZoneCode": {
    //                         "Text": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.PlaceOfTaxation?.LocationIdentification?.IdentifierEndDate?.TimeZoneCode?.Text
    //                     },
    //                     "DaylightSavingIndicator": {
    //                         "Text": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.PlaceOfTaxation?.LocationIdentification?.IdentifierEndDate?.DaylightSavingIndicator?.Text
    //                     },
    //                     "DateTimeType": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.PlaceOfTaxation?.LocationIdentification?.IdentifierEndDate?.DateTimeType
    //                 }
    //             },
    //             "LocationAddress": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.PlaceOfTaxation?.LocationAddress,
    //             "LocationName": {
    //                 "Name": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.PlaceOfTaxation?.LocationName?.Name
    //             },
    //             "LocationTimeZone": {
    //                 "Text": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.PlaceOfTaxation?.LocationTimeZone?.Text
    //             }
    //         },
    //         "TaxableParty": {
    //             "PartyReference": {
    //                 "PartyName": {
    //                     "Name": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxableParty?.PartyReference?.PartyName?.Name
    //                 },
    //                 "PartyType": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxableParty?.PartyReference?.PartyType,
    //                 "PartyDateTime": {
    //                     "DateTimeContent": {
    //                         "Text": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxableParty?.PartyReference?.PartyDateTime?.DateTimeContent?.Text
    //                     },
    //                     "TimeZoneCode": {
    //                         "Text": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxableParty?.PartyReference?.PartyDateTime?.TimeZoneCode?.Text
    //                     },
    //                     "DaylightSavingIndicator": {
    //                         "Text": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxableParty?.PartyReference?.PartyDateTime?.DaylightSavingIndicator?.Text
    //                     },
    //                     "DateTimeType": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxableParty?.PartyReference?.PartyDateTime?.DateTimeType
    //                 },
    //                 "PartyIdentification": {
    //                     "PartyIdentificationType": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxableParty?.PartyReference?.PartyIdentification?.PartyIdentificationType,
    //                     "PartyIdentification": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxableParty?.PartyReference?.PartyIdentification?.PartyIdentification
    //                 },
    //                 "PartyLegalStructureType": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxableParty?.PartyReference?.PartyLegalStructureType
    //             },
    //             "PartyInvolvement": {
    //                 "PartyRoleType": {
    //                     "Text": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxableParty?.PartyInvolvement?.PartyRoleType?.Text
    //                 },
    //                 "PartyRoleName": {
    //                     "Name": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxableParty?.PartyInvolvement?.PartyRoleName?.Name
    //                 },
    //                 "PartyRoleValidityPeriod": {
    //                     "FromDateTime": {
    //                         "DateTimeContent": {
    //                             "Text": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxableParty?.PartyInvolvement?.PartyRoleValidityPeriod?.FromDateTime?.DateTimeContent?.Text
    //                         },
    //                         "TimeZoneCode": {
    //                             "Text": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxableParty?.PartyInvolvement?.PartyRoleValidityPeriod?.FromDateTime?.TimeZoneCode?.Text
    //                         },
    //                         "DaylightSavingIndicator": {
    //                             "Text": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxableParty?.PartyInvolvement?.PartyRoleValidityPeriod?.FromDateTime?.DaylightSavingIndicator?.Text
    //                         },
    //                         "DateTimeType": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxableParty?.PartyInvolvement?.PartyRoleValidityPeriod?.FromDateTime?.DateTimeType
    //                     },
    //                     "ToDateTime": {
    //                         "DateTimeContent": {
    //                             "Text": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxableParty?.PartyInvolvement?.PartyRoleValidityPeriod?.ToDateTime?.DateTimeContent?.Text
    //                         },
    //                         "TimeZoneCode": {
    //                             "Text": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxableParty?.PartyInvolvement?.PartyRoleValidityPeriod?.ToDateTime?.TimeZoneCode?.Text
    //                         },
    //                         "DaylightSavingIndicator": {
    //                             "Text": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxableParty?.PartyInvolvement?.PartyRoleValidityPeriod?.ToDateTime?.DaylightSavingIndicator?.Text
    //                         },
    //                         "DateTimeType": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxableParty?.PartyInvolvement?.PartyRoleValidityPeriod?.ToDateTime?.DateTimeType
    //                     }
    //                 },
    //                 "PartyInvolvementType": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxableParty?.PartyInvolvement?.PartyInvolvementType
    //             }
    //         },
    //         "TaxAccount": {
    //             "AccountStatus": {
    //                 "AccountStatus": {
    //                     "StatusReason": {
    //                         "Text": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxAccount?.AccountStatus?.AccountStatus?.StatusReason?.Text
    //                     },
    //                     "StatusDateTime": {
    //                         "DateTimeContent": {
    //                             "Text": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxAccount?.AccountStatus?.AccountStatus?.StatusDateTime?.DateTimeContent?.Text
    //                         },
    //                         "TimeZoneCode": {
    //                             "Text": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxAccount?.AccountStatus?.AccountStatus?.StatusDateTime?.TimeZoneCode?.Text
    //                         },
    //                         "DaylightSavingIndicator": {
    //                             "Text": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxAccount?.AccountStatus?.AccountStatus?.StatusDateTime?.DaylightSavingIndicator?.Text
    //                         },
    //                         "DateTimeType": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxAccount?.AccountStatus?.AccountStatus?.StatusDateTime?.DateTimeType
    //                     },
    //                     "StatusValidityPeriod": {
    //                         "FromDateTime": {
    //                             "DateTimeContent": {
    //                                 "Text": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxAccount?.AccountStatus?.AccountStatus?.StatusValidityPeriod?.FromDateTime?.DateTimeContent?.Text
    //                             },
    //                             "TimeZoneCode": {
    //                                 "Text": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxAccount?.AccountStatus?.AccountStatus?.StatusValidityPeriod?.FromDateTime?.TimeZoneCode?.Text
    //                             },
    //                             "DaylightSavingIndicator": {
    //                                 "Text": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxAccount?.AccountStatus?.AccountStatus?.StatusValidityPeriod?.FromDateTime?.DaylightSavingIndicator?.Text
    //                             },
    //                             "DateTimeType": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxAccount?.AccountStatus?.AccountStatus?.StatusValidityPeriod?.FromDateTime?.DateTimeType
    //                         },
    //                         "ToDateTime": {
    //                             "DateTimeContent": {
    //                                 "Text": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxAccount?.AccountStatus?.AccountStatus?.StatusValidityPeriod?.ToDateTime?.DateTimeContent?.Text
    //                             },
    //                             "TimeZoneCode": {
    //                                 "Text": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxAccount?.AccountStatus?.AccountStatus?.StatusValidityPeriod?.ToDateTime?.TimeZoneCode?.Text
    //                             },
    //                             "DaylightSavingIndicator": {
    //                                 "Text": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxAccount?.AccountStatus?.AccountStatus?.StatusValidityPeriod?.ToDateTime?.DaylightSavingIndicator?.Text
    //                             },
    //                             "DateTimeType": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxAccount?.AccountStatus?.AccountStatus?.StatusValidityPeriod?.ToDateTime?.DateTimeType
    //                         }
    //                     },
    //                     "StatusInvolvedPartyReference": {
    //                         "PartyReference": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxAccount?.AccountStatus?.AccountStatus?.StatusInvolvedPartyReference?.PartyReference,
    //                         "InvolvementReference": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxAccount?.AccountStatus?.AccountStatus?.StatusInvolvedPartyReference?.InvolvementReference
    //                     }
    //                 },
    //                 "AccountStatusType": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxAccount?.AccountStatus?.AccountStatusType
    //             },
    //             "AccountIdentification": {
    //                 "AccountIdentificationType": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxAccount?.AccountIdentification?.AccountIdentificationType,
    //                 "AccountIdentification": {
    //                     "IdentifierValue": {
    //                         "Value": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxAccount?.AccountIdentification?.AccountIdentification?.IdentifierValue?.Value
    //                     },
    //                     "IdentifierIssuerReference": {
    //                         "PartyReference": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxAccount?.AccountIdentification?.AccountIdentification?.IdentifierIssuerReference?.PartyReference,
    //                         "InvolvementReference": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxAccount?.AccountIdentification?.AccountIdentification?.IdentifierIssuerReference?.InvolvementReference
    //                     },
    //                     "IdentifierStartDate": {
    //                         "DateTimeContent": {
    //                             "Text": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxAccount?.AccountIdentification?.AccountIdentification?.IdentifierStartDate?.DateTimeContent?.Text
    //                         },
    //                         "TimeZoneCode": {
    //                             "Text": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxAccount?.AccountIdentification?.AccountIdentification?.IdentifierStartDate?.TimeZoneCode?.Text
    //                         },
    //                         "DaylightSavingIndicator": {
    //                             "Text": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxAccount?.AccountIdentification?.AccountIdentification?.IdentifierStartDate?.DaylightSavingIndicator?.Text
    //                         },
    //                         "DateTimeType": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxAccount?.AccountIdentification?.AccountIdentification?.IdentifierStartDate?.DateTimeType
    //                     },
    //                     "IdentifierEndDate": {
    //                         "DateTimeContent": {
    //                             "Text": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxAccount?.AccountIdentification?.AccountIdentification?.IdentifierEndDate?.DateTimeContent?.Text
    //                         },
    //                         "TimeZoneCode": {
    //                             "Text": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxAccount?.AccountIdentification?.AccountIdentification?.IdentifierEndDate?.TimeZoneCode?.Text
    //                         },
    //                         "DaylightSavingIndicator": {
    //                             "Text": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxAccount?.AccountIdentification?.AccountIdentification?.IdentifierEndDate?.DaylightSavingIndicator?.Text
    //                         },
    //                         "DateTimeType": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxAccount?.AccountIdentification?.AccountIdentification?.IdentifierEndDate?.DateTimeType
    //                     }
    //                 }
    //             },
    //             "AccountDate": {
    //                 "AccountDateType": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxAccount?.AccountDate?.AccountDateType,
    //                 "AccountDate": {
    //                     "DateTimeContent": {
    //                         "Text": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxAccount?.AccountDate?.AccountDate?.DateTimeContent?.Text
    //                     },
    //                     "TimeZoneCode": {
    //                         "Text": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxAccount?.AccountDate?.AccountDate?.TimeZoneCode?.Text
    //                     },
    //                     "DaylightSavingIndicator": {
    //                         "Text": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxAccount?.AccountDate?.AccountDate?.DaylightSavingIndicator?.Text
    //                     },
    //                     "DateTimeType": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxAccount?.AccountDate?.AccountDate?.DateTimeType
    //                 }
    //             },
    //             "AccountType": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxAccount?.AccountType,
    //             "AccountPurpose": {
    //                 "Text": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxAccount?.AccountPurpose?.Text
    //             },
    //             "AccountBalance": {
    //                 "BalanceAmount": {
    //                     "AmountValue": {
    //                         "Value": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxAccount?.AccountBalance?.BalanceAmount?.AmountValue?.Value
    //                     },
    //                     "AmountCurrency": {
    //                         "Currencycode": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxAccount?.AccountBalance?.BalanceAmount?.AmountCurrency?.Currencycode
    //                     },
    //                     "DecimalPointPosition": {
    //                         "Text": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxAccount?.AccountBalance?.BalanceAmount?.DecimalPointPosition?.Text
    //                     },
    //                     "AmountType": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxAccount?.AccountBalance?.BalanceAmount?.AmountType
    //                 },
    //                 "BalanceType": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxAccount?.AccountBalance?.BalanceType,
    //                 "BalanceValueDate": {
    //                     "DateTimeContent": {
    //                         "Text": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxAccount?.AccountBalance?.BalanceValueDate?.DateTimeContent?.Text
    //                     },
    //                     "TimeZoneCode": {
    //                         "Text": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxAccount?.AccountBalance?.BalanceValueDate?.TimeZoneCode?.Text
    //                     },
    //                     "DaylightSavingIndicator": {
    //                         "Text": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxAccount?.AccountBalance?.BalanceValueDate?.DaylightSavingIndicator?.Text
    //                     },
    //                     "DateTimeType": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxAccount?.AccountBalance?.BalanceValueDate?.DateTimeType
    //                 },
    //                 "BalanceIndicator": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxAccount?.AccountBalance?.BalanceIndicator,
    //                 "BalanceCounterpartyType": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxAccount?.AccountBalance?.BalanceCounterpartyType,
    //                 "BalanceCalculationDate": {
    //                     "DateTimeContent": {
    //                         "Text": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxAccount?.AccountBalance?.BalanceCalculationDate?.DateTimeContent?.Text
    //                     },
    //                     "TimeZoneCode": {
    //                         "Text": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxAccount?.AccountBalance?.BalanceCalculationDate?.TimeZoneCode?.Text
    //                     },
    //                     "DaylightSavingIndicator": {
    //                         "Text": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxAccount?.AccountBalance?.BalanceCalculationDate?.DaylightSavingIndicator?.Text
    //                     },
    //                     "DateTimeType": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxAccount?.AccountBalance?.BalanceCalculationDate?.DateTimeType
    //                 },
    //                 "BalanceSubType": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxAccount?.AccountBalance?.BalanceSubType
    //             },
    //             "AccountCurrency": {
    //                 "AccountCurrencyType": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxAccount?.AccountCurrency?.AccountCurrencyType,
    //                 "AccountCurrency": {
    //                     "Currencycode": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxAccount?.AccountCurrency?.AccountCurrency?.Currencycode
    //                 }
    //             },
    //             "AccountDescription": {
    //                 "Text": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxAccount?.AccountDescription?.Text
    //             },
    //             "AccountName": {
    //                 "Name": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxAccount?.AccountName?.Name
    //             }
    //         },
    //         "TaxationCondition": {
    //             "ConditionIdentification": {
    //                 "IdentifierValue": {
    //                     "Value": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxationCondition?.ConditionIdentification?.IdentifierValue?.Value
    //                 },
    //                 "IdentifierIssuerReference": {
    //                     "PartyReference": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxationCondition?.ConditionIdentification?.IdentifierIssuerReference?.PartyReference,
    //                     "InvolvementReference": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxationCondition?.ConditionIdentification?.IdentifierIssuerReference?.InvolvementReference
    //                 },
    //                 "IdentifierStartDate": {
    //                     "DateTimeContent": {
    //                         "Text": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxationCondition?.ConditionIdentification?.IdentifierStartDate?.DateTimeContent?.Text
    //                     },
    //                     "TimeZoneCode": {
    //                         "Text": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxationCondition?.ConditionIdentification?.IdentifierStartDate?.TimeZoneCode?.Text
    //                     },
    //                     "DaylightSavingIndicator": {
    //                         "Text": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxationCondition?.ConditionIdentification?.IdentifierStartDate?.DaylightSavingIndicator?.Text
    //                     },
    //                     "DateTimeType": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxationCondition?.ConditionIdentification?.IdentifierStartDate?.DateTimeType
    //                 },
    //                 "IdentifierEndDate": {
    //                     "DateTimeContent": {
    //                         "Text": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxationCondition?.ConditionIdentification?.IdentifierEndDate?.DateTimeContent?.Text
    //                     },
    //                     "TimeZoneCode": {
    //                         "Text": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxationCondition?.ConditionIdentification?.IdentifierEndDate?.TimeZoneCode?.Text
    //                     },
    //                     "DaylightSavingIndicator": {
    //                         "Text": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxationCondition?.ConditionIdentification?.IdentifierEndDate?.DaylightSavingIndicator?.Text
    //                     },
    //                     "DateTimeType": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxationCondition?.ConditionIdentification?.IdentifierEndDate?.DateTimeType
    //                 }
    //             },
    //             "ConditionName": {
    //                 "Name": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxationCondition?.ConditionName?.Name
    //             },
    //             "ConditionValidityPeriod": {
    //                 "FromDateTime": {
    //                     "DateTimeContent": {
    //                         "Text": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxationCondition?.ConditionValidityPeriod?.FromDateTime?.DateTimeContent?.Text
    //                     },
    //                     "TimeZoneCode": {
    //                         "Text": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxationCondition?.ConditionValidityPeriod?.FromDateTime?.TimeZoneCode?.Text
    //                     },
    //                     "DaylightSavingIndicator": {
    //                         "Text": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxationCondition?.ConditionValidityPeriod?.FromDateTime?.DaylightSavingIndicator?.Text
    //                     },
    //                     "DateTimeType": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxationCondition?.ConditionValidityPeriod?.FromDateTime?.DateTimeType
    //                 },
    //                 "ToDateTime": {
    //                     "DateTimeContent": {
    //                         "Text": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxationCondition?.ConditionValidityPeriod?.ToDateTime?.DateTimeContent?.Text
    //                     },
    //                     "TimeZoneCode": {
    //                         "Text": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxationCondition?.ConditionValidityPeriod?.ToDateTime?.TimeZoneCode?.Text
    //                     },
    //                     "DaylightSavingIndicator": {
    //                         "Text": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxationCondition?.ConditionValidityPeriod?.ToDateTime?.DaylightSavingIndicator?.Text
    //                     },
    //                     "DateTimeType": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxationCondition?.ConditionValidityPeriod?.ToDateTime?.DateTimeType
    //                 }
    //             },
    //             "ConditionDateAndTime": {
    //                 "DateTimeContent": {
    //                     "Text": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxationCondition?.ConditionDateAndTime?.DateTimeContent?.Text
    //                 },
    //                 "TimeZoneCode": {
    //                     "Text": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxationCondition?.ConditionDateAndTime?.TimeZoneCode?.Text
    //                 },
    //                 "DaylightSavingIndicator": {
    //                     "Text": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxationCondition?.ConditionDateAndTime?.DaylightSavingIndicator?.Text
    //                 },
    //                 "DateTimeType": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxationCondition?.ConditionDateAndTime?.DateTimeType
    //             },
    //             "ConditionStatus": {
    //                 "StatusReason": {
    //                     "Text": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxationCondition?.ConditionStatus?.StatusReason?.Text
    //                 },
    //                 "StatusDateTime": {
    //                     "DateTimeContent": {
    //                         "Text": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxationCondition?.ConditionStatus?.StatusDateTime?.DateTimeContent?.Text
    //                     },
    //                     "TimeZoneCode": {
    //                         "Text": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxationCondition?.ConditionStatus?.StatusDateTime?.TimeZoneCode?.Text
    //                     },
    //                     "DaylightSavingIndicator": {
    //                         "Text": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxationCondition?.ConditionStatus?.StatusDateTime?.DaylightSavingIndicator?.Text
    //                     },
    //                     "DateTimeType": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxationCondition?.ConditionStatus?.StatusDateTime?.DateTimeType
    //                 },
    //                 "StatusValidityPeriod": {
    //                     "FromDateTime": {
    //                         "DateTimeContent": {
    //                             "Text": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxationCondition?.ConditionStatus?.StatusValidityPeriod?.FromDateTime?.DateTimeContent?.Text
    //                         },
    //                         "TimeZoneCode": {
    //                             "Text": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxationCondition?.ConditionStatus?.StatusValidityPeriod?.FromDateTime?.TimeZoneCode?.Text
    //                         },
    //                         "DaylightSavingIndicator": {
    //                             "Text": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxationCondition?.ConditionStatus?.StatusValidityPeriod?.FromDateTime?.DaylightSavingIndicator?.Text
    //                         },
    //                         "DateTimeType": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxationCondition?.ConditionStatus?.StatusValidityPeriod?.FromDateTime?.DateTimeType
    //                     },
    //                     "ToDateTime": {
    //                         "DateTimeContent": {
    //                             "Text": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxationCondition?.ConditionStatus?.StatusValidityPeriod?.ToDateTime?.DateTimeContent?.Text
    //                         },
    //                         "TimeZoneCode": {
    //                             "Text": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxationCondition?.ConditionStatus?.StatusValidityPeriod?.ToDateTime?.TimeZoneCode?.Text
    //                         },
    //                         "DaylightSavingIndicator": {
    //                             "Text": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxationCondition?.ConditionStatus?.StatusValidityPeriod?.ToDateTime?.DaylightSavingIndicator?.Text
    //                         },
    //                         "DateTimeType": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxationCondition?.ConditionStatus?.StatusValidityPeriod?.ToDateTime?.DateTimeType
    //                     }
    //                 },
    //                 "StatusInvolvedPartyReference": {
    //                     "PartyReference": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxationCondition?.ConditionStatus?.StatusInvolvedPartyReference?.PartyReference,
    //                     "InvolvementReference": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxationCondition?.ConditionStatus?.StatusInvolvedPartyReference?.InvolvementReference
    //                 }
    //             }
    //         },
    //         "TaxCurrency": {
    //             "Currencycode": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxCurrency?.Currencycode
    //         },
    //         "TaxDueDate": {
    //             "DateTimeContent": {
    //                 "Text": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxDueDate?.DateTimeContent?.Text
    //             },
    //             "TimeZoneCode": {
    //                 "Text": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxDueDate?.TimeZoneCode?.Text
    //             },
    //             "DaylightSavingIndicator": {
    //                 "Text": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxDueDate?.DaylightSavingIndicator?.Text
    //             },
    //             "DateTimeType": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxDueDate?.DateTimeType
    //         },
    //         "TaxCalculationDate": {
    //             "DateTimeContent": {
    //                 "Text": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxCalculationDate?.DateTimeContent?.Text
    //             },
    //             "TimeZoneCode": {
    //                 "Text": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxCalculationDate?.TimeZoneCode?.Text
    //             },
    //             "DaylightSavingIndicator": {
    //                 "Text": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxCalculationDate?.DaylightSavingIndicator?.Text
    //             },
    //             "DateTimeType": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxCalculationDate?.DateTimeType
    //         },
    //         "TaxPayer": {
    //             "PartyReference": {
    //                 "PartyName": {
    //                     "Name": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxPayer?.PartyReference?.PartyName?.Name
    //                 },
    //                 "PartyType": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxPayer?.PartyReference?.PartyType,
    //                 "PartyDateTime": {
    //                     "DateTimeContent": {
    //                         "Text": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxPayer?.PartyReference?.PartyDateTime?.DateTimeContent?.Text
    //                     },
    //                     "TimeZoneCode": {
    //                         "Text": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxPayer?.PartyReference?.PartyDateTime?.TimeZoneCode?.Text
    //                     },
    //                     "DaylightSavingIndicator": {
    //                         "Text": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxPayer?.PartyReference?.PartyDateTime?.DaylightSavingIndicator?.Text
    //                     },
    //                     "DateTimeType": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxPayer?.PartyReference?.PartyDateTime?.DateTimeType
    //                 },
    //                 "PartyIdentification": {
    //                     "PartyIdentificationType": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxPayer?.PartyReference?.PartyIdentification?.PartyIdentificationType,
    //                     "PartyIdentification": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxPayer?.PartyReference?.PartyIdentification?.PartyIdentification
    //                 },
    //                 "PartyLegalStructureType": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxPayer?.PartyReference?.PartyLegalStructureType
    //             },
    //             "PartyInvolvement": {
    //                 "PartyRoleType": {
    //                     "Text": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxPayer?.PartyInvolvement?.PartyRoleType?.Text
    //                 },
    //                 "PartyRoleName": {
    //                     "Name": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxPayer?.PartyInvolvement?.PartyRoleName?.Name
    //                 },
    //                 "PartyRoleValidityPeriod": {
    //                     "FromDateTime": {
    //                         "DateTimeContent": {
    //                             "Text": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxPayer?.PartyInvolvement?.PartyRoleValidityPeriod?.FromDateTime?.DateTimeContent?.Text
    //                         },
    //                         "TimeZoneCode": {
    //                             "Text": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxPayer?.PartyInvolvement?.PartyRoleValidityPeriod?.FromDateTime?.TimeZoneCode?.Text
    //                         },
    //                         "DaylightSavingIndicator": {
    //                             "Text": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxPayer?.PartyInvolvement?.PartyRoleValidityPeriod?.FromDateTime?.DaylightSavingIndicator?.Text
    //                         },
    //                         "DateTimeType": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxPayer?.PartyInvolvement?.PartyRoleValidityPeriod?.FromDateTime?.DateTimeType
    //                     },
    //                     "ToDateTime": {
    //                         "DateTimeContent": {
    //                             "Text": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxPayer?.PartyInvolvement?.PartyRoleValidityPeriod?.ToDateTime?.DateTimeContent?.Text
    //                         },
    //                         "TimeZoneCode": {
    //                             "Text": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxPayer?.PartyInvolvement?.PartyRoleValidityPeriod?.ToDateTime?.TimeZoneCode?.Text
    //                         },
    //                         "DaylightSavingIndicator": {
    //                             "Text": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxPayer?.PartyInvolvement?.PartyRoleValidityPeriod?.ToDateTime?.DaylightSavingIndicator?.Text
    //                         },
    //                         "DateTimeType": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxPayer?.PartyInvolvement?.PartyRoleValidityPeriod?.ToDateTime?.DateTimeType
    //                     }
    //                 },
    //                 "PartyInvolvementType": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxPayer?.PartyInvolvement?.PartyInvolvementType
    //             }
    //         },
    //         "TaxRecipient": {
    //             "PartyReference": {
    //                 "PartyName": {
    //                     "Name": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxRecipient?.PartyReference?.PartyName?.Name
    //                 },
    //                 "PartyType": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxRecipient?.PartyReference?.PartyType,
    //                 "PartyDateTime": {
    //                     "DateTimeContent": {
    //                         "Text": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxRecipient?.PartyReference?.PartyDateTime?.DateTimeContent?.Text
    //                     },
    //                     "TimeZoneCode": {
    //                         "Text": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxRecipient?.PartyReference?.PartyDateTime?.TimeZoneCode?.Text
    //                     },
    //                     "DaylightSavingIndicator": {
    //                         "Text": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxRecipient?.PartyReference?.PartyDateTime?.DaylightSavingIndicator?.Text
    //                     },
    //                     "DateTimeType": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxRecipient?.PartyReference?.PartyDateTime?.DateTimeType
    //                 },
    //                 "PartyIdentification": {
    //                     "PartyIdentificationType": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxRecipient?.PartyReference?.PartyIdentification?.PartyIdentificationType,
    //                     "PartyIdentification": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxRecipient?.PartyReference?.PartyIdentification?.PartyIdentification
    //                 },
    //                 "PartyLegalStructureType": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxRecipient?.PartyReference?.PartyLegalStructureType
    //             },
    //             "PartyInvolvement": {
    //                 "PartyRoleType": {
    //                     "Text": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxRecipient?.PartyInvolvement?.PartyRoleType?.Text
    //                 },
    //                 "PartyRoleName": {
    //                     "Name": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxRecipient?.PartyInvolvement?.PartyRoleName?.Name
    //                 },
    //                 "PartyRoleValidityPeriod": {
    //                     "FromDateTime": {
    //                         "DateTimeContent": {
    //                             "Text": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxRecipient?.PartyInvolvement?.PartyRoleValidityPeriod?.FromDateTime?.DateTimeContent?.Text
    //                         },
    //                         "TimeZoneCode": {
    //                             "Text": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxRecipient?.PartyInvolvement?.PartyRoleValidityPeriod?.FromDateTime?.TimeZoneCode?.Text
    //                         },
    //                         "DaylightSavingIndicator": {
    //                             "Text": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxRecipient?.PartyInvolvement?.PartyRoleValidityPeriod?.FromDateTime?.DaylightSavingIndicator?.Text
    //                         },
    //                         "DateTimeType": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxRecipient?.PartyInvolvement?.PartyRoleValidityPeriod?.FromDateTime?.DateTimeType
    //                     },
    //                     "ToDateTime": {
    //                         "DateTimeContent": {
    //                             "Text": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxRecipient?.PartyInvolvement?.PartyRoleValidityPeriod?.ToDateTime?.DateTimeContent?.Text
    //                         },
    //                         "TimeZoneCode": {
    //                             "Text": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxRecipient?.PartyInvolvement?.PartyRoleValidityPeriod?.ToDateTime?.TimeZoneCode?.Text
    //                         },
    //                         "DaylightSavingIndicator": {
    //                             "Text": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxRecipient?.PartyInvolvement?.PartyRoleValidityPeriod?.ToDateTime?.DaylightSavingIndicator?.Text
    //                         },
    //                         "DateTimeType": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxRecipient?.PartyInvolvement?.PartyRoleValidityPeriod?.ToDateTime?.DateTimeType
    //                     }
    //                 },
    //                 "PartyInvolvementType": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxRecipient?.PartyInvolvement?.PartyInvolvementType
    //             }
    //         },
    //         "TaxIdentification": {
    //             "TaxIdentification": {
    //                 "IdentifierValue": {
    //                     "Value": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxIdentification?.TaxIdentification?.IdentifierValue?.Value
    //                 },
    //                 "IdentifierIssuerReference": {
    //                     "PartyReference": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxIdentification?.TaxIdentification?.IdentifierIssuerReference?.PartyReference,
    //                     "InvolvementReference": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxIdentification?.TaxIdentification?.IdentifierIssuerReference?.InvolvementReference
    //                 },
    //                 "IdentifierStartDate": {
    //                     "DateTimeContent": {
    //                         "Text": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxIdentification?.TaxIdentification?.IdentifierStartDate?.DateTimeContent?.Text
    //                     },
    //                     "TimeZoneCode": {
    //                         "Text": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxIdentification?.TaxIdentification?.IdentifierStartDate?.TimeZoneCode?.Text
    //                     },
    //                     "DaylightSavingIndicator": {
    //                         "Text": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxIdentification?.TaxIdentification?.IdentifierStartDate?.DaylightSavingIndicator?.Text
    //                     },
    //                     "DateTimeType": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxIdentification?.TaxIdentification?.IdentifierStartDate?.DateTimeType
    //                 },
    //                 "IdentifierEndDate": {
    //                     "DateTimeContent": {
    //                         "Text": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxIdentification?.TaxIdentification?.IdentifierEndDate?.DateTimeContent?.Text
    //                     },
    //                     "TimeZoneCode": {
    //                         "Text": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxIdentification?.TaxIdentification?.IdentifierEndDate?.TimeZoneCode?.Text
    //                     },
    //                     "DaylightSavingIndicator": {
    //                         "Text": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxIdentification?.TaxIdentification?.IdentifierEndDate?.DaylightSavingIndicator?.Text
    //                     },
    //                     "DateTimeType": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxIdentification?.TaxIdentification?.IdentifierEndDate?.DateTimeType
    //                 }
    //             },
    //             "TaxIdentificationType": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxIdentification?.TaxIdentificationType
    //         },
    //         "TaxationPlace": {
    //             "LocationDescription": {
    //                 "Text": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxationPlace?.LocationDescription?.Text
    //             },
    //             "LocationDateTime": {
    //                 "DateTimeContent": {
    //                     "Text": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxationPlace?.LocationDateTime?.DateTimeContent?.Text
    //                 },
    //                 "TimeZoneCode": {
    //                     "Text": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxationPlace?.LocationDateTime?.TimeZoneCode?.Text
    //                 },
    //                 "DaylightSavingIndicator": {
    //                     "Text": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxationPlace?.LocationDateTime?.DaylightSavingIndicator?.Text
    //                 },
    //                 "DateTimeType": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxationPlace?.LocationDateTime?.DateTimeType
    //             },
    //             "LocationStatus": {
    //                 "StatusReason": {
    //                     "Text": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxationPlace?.LocationStatus?.StatusReason?.Text
    //                 },
    //                 "StatusDateTime": {
    //                     "DateTimeContent": {
    //                         "Text": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxationPlace?.LocationStatus?.StatusDateTime?.DateTimeContent?.Text
    //                     },
    //                     "TimeZoneCode": {
    //                         "Text": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxationPlace?.LocationStatus?.StatusDateTime?.TimeZoneCode?.Text
    //                     },
    //                     "DaylightSavingIndicator": {
    //                         "Text": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxationPlace?.LocationStatus?.StatusDateTime?.DaylightSavingIndicator?.Text
    //                     },
    //                     "DateTimeType": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxationPlace?.LocationStatus?.StatusDateTime?.DateTimeType
    //                 },
    //                 "StatusValidityPeriod": {
    //                     "FromDateTime": {
    //                         "DateTimeContent": {
    //                             "Text": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxationPlace?.LocationStatus?.StatusValidityPeriod?.FromDateTime?.DateTimeContent?.Text
    //                         },
    //                         "TimeZoneCode": {
    //                             "Text": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxationPlace?.LocationStatus?.StatusValidityPeriod?.FromDateTime?.TimeZoneCode?.Text
    //                         },
    //                         "DaylightSavingIndicator": {
    //                             "Text": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxationPlace?.LocationStatus?.StatusValidityPeriod?.FromDateTime?.DaylightSavingIndicator?.Text
    //                         },
    //                         "DateTimeType": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxationPlace?.LocationStatus?.StatusValidityPeriod?.FromDateTime?.DateTimeType
    //                     },
    //                     "ToDateTime": {
    //                         "DateTimeContent": {
    //                             "Text": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxationPlace?.LocationStatus?.StatusValidityPeriod?.ToDateTime?.DateTimeContent?.Text
    //                         },
    //                         "TimeZoneCode": {
    //                             "Text": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxationPlace?.LocationStatus?.StatusValidityPeriod?.ToDateTime?.TimeZoneCode?.Text
    //                         },
    //                         "DaylightSavingIndicator": {
    //                             "Text": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxationPlace?.LocationStatus?.StatusValidityPeriod?.ToDateTime?.DaylightSavingIndicator?.Text
    //                         },
    //                         "DateTimeType": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxationPlace?.LocationStatus?.StatusValidityPeriod?.ToDateTime?.DateTimeType
    //                     }
    //                 },
    //                 "StatusInvolvedPartyReference": {
    //                     "PartyReference": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxationPlace?.LocationStatus?.StatusInvolvedPartyReference?.PartyReference,
    //                     "InvolvementReference": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxationPlace?.LocationStatus?.StatusInvolvedPartyReference?.InvolvementReference
    //                 }
    //             },
    //             "LocationType": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxationPlace?.LocationType,
    //             "LocationZoningType": {
    //                 "Text": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxationPlace?.LocationZoningType?.Text
    //             },
    //             "LocationNeighborhoodType": {
    //                 "Text": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxationPlace?.LocationNeighborhoodType?.Text
    //             },
    //             "LocationConstructionType": {
    //                 "Text": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxationPlace?.LocationConstructionType?.Text
    //             },
    //             "LocationOccupancyType": {
    //                 "Text": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxationPlace?.LocationOccupancyType?.Text
    //             },
    //             "LocationValue": {
    //                 "Value": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxationPlace?.LocationValue?.Value
    //             },
    //             "LocationCapacity": {
    //                 "Text": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxationPlace?.LocationCapacity?.Text
    //             },
    //             "LocationIdentification": {
    //                 "IdentifierValue": {
    //                     "Value": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxationPlace?.LocationIdentification?.IdentifierValue?.Value
    //                 },
    //                 "IdentifierIssuerReference": {
    //                     "PartyReference": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxationPlace?.LocationIdentification?.IdentifierIssuerReference?.PartyReference,
    //                     "InvolvementReference": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxationPlace?.LocationIdentification?.IdentifierIssuerReference?.InvolvementReference
    //                 },
    //                 "IdentifierStartDate": {
    //                     "DateTimeContent": {
    //                         "Text": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxationPlace?.LocationIdentification?.IdentifierStartDate?.DateTimeContent?.Text
    //                     },
    //                     "TimeZoneCode": {
    //                         "Text": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxationPlace?.LocationIdentification?.IdentifierStartDate?.TimeZoneCode?.Text
    //                     },
    //                     "DaylightSavingIndicator": {
    //                         "Text": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxationPlace?.LocationIdentification?.IdentifierStartDate?.DaylightSavingIndicator?.Text
    //                     },
    //                     "DateTimeType": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxationPlace?.LocationIdentification?.IdentifierStartDate?.DateTimeType
    //                 },
    //                 "IdentifierEndDate": {
    //                     "DateTimeContent": {
    //                         "Text": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxationPlace?.LocationIdentification?.IdentifierEndDate?.DateTimeContent?.Text
    //                     },
    //                     "TimeZoneCode": {
    //                         "Text": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxationPlace?.LocationIdentification?.IdentifierEndDate?.TimeZoneCode?.Text
    //                     },
    //                     "DaylightSavingIndicator": {
    //                         "Text": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxationPlace?.LocationIdentification?.IdentifierEndDate?.DaylightSavingIndicator?.Text
    //                     },
    //                     "DateTimeType": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxationPlace?.LocationIdentification?.IdentifierEndDate?.DateTimeType
    //                 }
    //             },
    //             "LocationAddress": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxationPlace?.LocationAddress,
    //             "LocationName": {
    //                 "Name": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxationPlace?.LocationName?.Name
    //             },
    //             "LocationTimeZone": {
    //                 "Text": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxationPlace?.LocationTimeZone?.Text
    //             }
    //         },
    //         "TaxCharge": {
    //             "FeeType": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxCharge?.FeeType,
    //             "FeeAmount": {
    //                 "AmountValue": {
    //                     "Value": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxCharge?.FeeAmount?.AmountValue?.Value
    //                 },
    //                 "AmountCurrency": {
    //                     "Currencycode": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxCharge?.FeeAmount?.AmountCurrency?.Currencycode
    //                 },
    //                 "DecimalPointPosition": {
    //                     "Text": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxCharge?.FeeAmount?.DecimalPointPosition?.Text
    //                 },
    //                 "AmountType": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxCharge?.FeeAmount?.AmountType
    //             },
    //             "FeeRate": {
    //                 "RateValue": {
    //                     "Value": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxCharge?.FeeRate?.RateValue?.Value
    //                 },
    //                 "RateUnit": {
    //                     "Text": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxCharge?.FeeRate?.RateUnit?.Text
    //                 },
    //                 "RatePeriod": {
    //                     "FromDateTime": {
    //                         "DateTimeContent": {
    //                             "Text": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxCharge?.FeeRate?.RatePeriod?.FromDateTime?.DateTimeContent?.Text
    //                         },
    //                         "TimeZoneCode": {
    //                             "Text": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxCharge?.FeeRate?.RatePeriod?.FromDateTime?.TimeZoneCode?.Text
    //                         },
    //                         "DaylightSavingIndicator": {
    //                             "Text": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxCharge?.FeeRate?.RatePeriod?.FromDateTime?.DaylightSavingIndicator?.Text
    //                         },
    //                         "DateTimeType": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxCharge?.FeeRate?.RatePeriod?.FromDateTime?.DateTimeType
    //                     },
    //                     "ToDateTime": {
    //                         "DateTimeContent": {
    //                             "Text": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxCharge?.FeeRate?.RatePeriod?.ToDateTime?.DateTimeContent?.Text
    //                         },
    //                         "TimeZoneCode": {
    //                             "Text": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxCharge?.FeeRate?.RatePeriod?.ToDateTime?.TimeZoneCode?.Text
    //                         },
    //                         "DaylightSavingIndicator": {
    //                             "Text": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxCharge?.FeeRate?.RatePeriod?.ToDateTime?.DaylightSavingIndicator?.Text
    //                         },
    //                         "DateTimeType": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxCharge?.FeeRate?.RatePeriod?.ToDateTime?.DateTimeType
    //                     }
    //                 },
    //                 "RateCapitalUnit": {
    //                     "Text": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxCharge?.FeeRate?.RateCapitalUnit?.Text
    //                 }
    //             },
    //             "FeeEffectivePeriod": {
    //                 "FromDateTime": {
    //                     "DateTimeContent": {
    //                         "Text": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxCharge?.FeeEffectivePeriod?.FromDateTime?.DateTimeContent?.Text
    //                     },
    //                     "TimeZoneCode": {
    //                         "Text": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxCharge?.FeeEffectivePeriod?.FromDateTime?.TimeZoneCode?.Text
    //                     },
    //                     "DaylightSavingIndicator": {
    //                         "Text": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxCharge?.FeeEffectivePeriod?.FromDateTime?.DaylightSavingIndicator?.Text
    //                     },
    //                     "DateTimeType": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxCharge?.FeeEffectivePeriod?.FromDateTime?.DateTimeType
    //                 },
    //                 "ToDateTime": {
    //                     "DateTimeContent": {
    //                         "Text": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxCharge?.FeeEffectivePeriod?.ToDateTime?.DateTimeContent?.Text
    //                     },
    //                     "TimeZoneCode": {
    //                         "Text": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxCharge?.FeeEffectivePeriod?.ToDateTime?.TimeZoneCode?.Text
    //                     },
    //                     "DaylightSavingIndicator": {
    //                         "Text": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxCharge?.FeeEffectivePeriod?.ToDateTime?.DaylightSavingIndicator?.Text
    //                     },
    //                     "DateTimeType": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxCharge?.FeeEffectivePeriod?.ToDateTime?.DateTimeType
    //                 }
    //             },
    //             "FeeDueDate": {
    //                 "DateTimeContent": {
    //                     "Text": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxCharge?.FeeDueDate?.DateTimeContent?.Text
    //                 },
    //                 "TimeZoneCode": {
    //                     "Text": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxCharge?.FeeDueDate?.TimeZoneCode?.Text
    //                 },
    //                 "DaylightSavingIndicator": {
    //                     "Text": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxCharge?.FeeDueDate?.DaylightSavingIndicator?.Text
    //                 },
    //                 "DateTimeType": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxCharge?.FeeDueDate?.DateTimeType
    //             },
    //             "FeePlan": {
    //                 "FeePlanName": {
    //                     "Name": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxCharge?.FeePlan?.FeePlanName?.Name
    //                 },
    //                 "FeePlanType": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxCharge?.FeePlan?.FeePlanType,
    //                 "FeePlan": {
    //                     "PlanGoal": {
    //                         "GoalType": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxCharge?.FeePlan?.FeePlan?.PlanGoal?.GoalType,
    //                         "GoalDefinition": {
    //                             "Text": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxCharge?.FeePlan?.FeePlan?.PlanGoal?.GoalDefinition?.Text
    //                         },
    //                         "GoalName": {
    //                             "Name": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxCharge?.FeePlan?.FeePlan?.PlanGoal?.GoalName?.Name
    //                         },
    //                         "GoalDateAndTime": {
    //                             "GoalDateAndTime": {
    //                                 "DateTimeContent": {
    //                                     "Text": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxCharge?.FeePlan?.FeePlan?.PlanGoal?.GoalDateAndTime?.GoalDateAndTime?.DateTimeContent?.Text
    //                                 },
    //                                 "TimeZoneCode": {
    //                                     "Text": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxCharge?.FeePlan?.FeePlan?.PlanGoal?.GoalDateAndTime?.GoalDateAndTime?.TimeZoneCode?.Text
    //                                 },
    //                                 "DaylightSavingIndicator": {
    //                                     "Text": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxCharge?.FeePlan?.FeePlan?.PlanGoal?.GoalDateAndTime?.GoalDateAndTime?.DaylightSavingIndicator?.Text
    //                                 },
    //                                 "DateTimeType": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxCharge?.FeePlan?.FeePlan?.PlanGoal?.GoalDateAndTime?.GoalDateAndTime?.DateTimeType
    //                             },
    //                             "GoalDateAndTimeType": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxCharge?.FeePlan?.FeePlan?.PlanGoal?.GoalDateAndTime?.GoalDateAndTimeType
    //                         },
    //                         "GoalStatus": {
    //                             "GoalStatus": {
    //                                 "StatusReason": {
    //                                     "Text": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxCharge?.FeePlan?.FeePlan?.PlanGoal?.GoalStatus?.GoalStatus?.StatusReason?.Text
    //                                 },
    //                                 "StatusDateTime": {
    //                                     "DateTimeContent": {
    //                                         "Text": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxCharge?.FeePlan?.FeePlan?.PlanGoal?.GoalStatus?.GoalStatus?.StatusDateTime?.DateTimeContent?.Text
    //                                     },
    //                                     "TimeZoneCode": {
    //                                         "Text": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxCharge?.FeePlan?.FeePlan?.PlanGoal?.GoalStatus?.GoalStatus?.StatusDateTime?.TimeZoneCode?.Text
    //                                     },
    //                                     "DaylightSavingIndicator": {
    //                                         "Text": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxCharge?.FeePlan?.FeePlan?.PlanGoal?.GoalStatus?.GoalStatus?.StatusDateTime?.DaylightSavingIndicator?.Text
    //                                     },
    //                                     "DateTimeType": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxCharge?.FeePlan?.FeePlan?.PlanGoal?.GoalStatus?.GoalStatus?.StatusDateTime?.DateTimeType
    //                                 },
    //                                 "StatusValidityPeriod": {
    //                                     "FromDateTime": {
    //                                         "DateTimeContent": {
    //                                             "Text": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxCharge?.FeePlan?.FeePlan?.PlanGoal?.GoalStatus?.GoalStatus?.StatusValidityPeriod?.FromDateTime?.DateTimeContent?.Text
    //                                         },
    //                                         "TimeZoneCode": {
    //                                             "Text": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxCharge?.FeePlan?.FeePlan?.PlanGoal?.GoalStatus?.GoalStatus?.StatusValidityPeriod?.FromDateTime?.TimeZoneCode?.Text
    //                                         },
    //                                         "DaylightSavingIndicator": {
    //                                             "Text": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxCharge?.FeePlan?.FeePlan?.PlanGoal?.GoalStatus?.GoalStatus?.StatusValidityPeriod?.FromDateTime?.DaylightSavingIndicator?.Text
    //                                         },
    //                                         "DateTimeType": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxCharge?.FeePlan?.FeePlan?.PlanGoal?.GoalStatus?.GoalStatus?.StatusValidityPeriod?.FromDateTime?.DateTimeType
    //                                     },
    //                                     "ToDateTime": {
    //                                         "DateTimeContent": {
    //                                             "Text": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxCharge?.FeePlan?.FeePlan?.PlanGoal?.GoalStatus?.GoalStatus?.StatusValidityPeriod?.ToDateTime?.DateTimeContent?.Text
    //                                         },
    //                                         "TimeZoneCode": {
    //                                             "Text": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxCharge?.FeePlan?.FeePlan?.PlanGoal?.GoalStatus?.GoalStatus?.StatusValidityPeriod?.ToDateTime?.TimeZoneCode?.Text
    //                                         },
    //                                         "DaylightSavingIndicator": {
    //                                             "Text": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxCharge?.FeePlan?.FeePlan?.PlanGoal?.GoalStatus?.GoalStatus?.StatusValidityPeriod?.ToDateTime?.DaylightSavingIndicator?.Text
    //                                         },
    //                                         "DateTimeType": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxCharge?.FeePlan?.FeePlan?.PlanGoal?.GoalStatus?.GoalStatus?.StatusValidityPeriod?.ToDateTime?.DateTimeType
    //                                     }
    //                                 },
    //                                 "StatusInvolvedPartyReference": {
    //                                     "PartyReference": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxCharge?.FeePlan?.FeePlan?.PlanGoal?.GoalStatus?.GoalStatus?.StatusInvolvedPartyReference?.PartyReference,
    //                                     "InvolvementReference": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxCharge?.FeePlan?.FeePlan?.PlanGoal?.GoalStatus?.GoalStatus?.StatusInvolvedPartyReference?.InvolvementReference
    //                                 }
    //                             },
    //                             "GoalStatusType": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxCharge?.FeePlan?.FeePlan?.PlanGoal?.GoalStatus?.GoalStatusType
    //                         }
    //                     },
    //                     "PlanBudget": {
    //                         "BudgetType": {
    //                             "BudgetTypeName": {
    //                                 "Name": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxCharge?.FeePlan?.FeePlan?.PlanBudget?.BudgetType?.BudgetTypeName?.Name
    //                             },
    //                             "BudgetType": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxCharge?.FeePlan?.FeePlan?.PlanBudget?.BudgetType?.BudgetType
    //                         },
    //                         "BudgetAmount": {
    //                             "AmountValue": {
    //                                 "Value": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxCharge?.FeePlan?.FeePlan?.PlanBudget?.BudgetAmount?.AmountValue?.Value
    //                             },
    //                             "AmountCurrency": {
    //                                 "Currencycode": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxCharge?.FeePlan?.FeePlan?.PlanBudget?.BudgetAmount?.AmountCurrency?.Currencycode
    //                             },
    //                             "DecimalPointPosition": {
    //                                 "Text": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxCharge?.FeePlan?.FeePlan?.PlanBudget?.BudgetAmount?.DecimalPointPosition?.Text
    //                             },
    //                             "AmountType": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxCharge?.FeePlan?.FeePlan?.PlanBudget?.BudgetAmount?.AmountType
    //                         }
    //                     },
    //                     "PlannedAction": {
    //                         "PlannedAction": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxCharge?.FeePlan?.FeePlan?.PlannedAction?.PlannedAction
    //                     },
    //                     "PlanType": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxCharge?.FeePlan?.FeePlan?.PlanType,
    //                     "PlanValidityPeriod": {
    //                         "FromDateTime": {
    //                             "DateTimeContent": {
    //                                 "Text": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxCharge?.FeePlan?.FeePlan?.PlanValidityPeriod?.FromDateTime?.DateTimeContent?.Text
    //                             },
    //                             "TimeZoneCode": {
    //                                 "Text": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxCharge?.FeePlan?.FeePlan?.PlanValidityPeriod?.FromDateTime?.TimeZoneCode?.Text
    //                             },
    //                             "DaylightSavingIndicator": {
    //                                 "Text": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxCharge?.FeePlan?.FeePlan?.PlanValidityPeriod?.FromDateTime?.DaylightSavingIndicator?.Text
    //                             },
    //                             "DateTimeType": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxCharge?.FeePlan?.FeePlan?.PlanValidityPeriod?.FromDateTime?.DateTimeType
    //                         },
    //                         "ToDateTime": {
    //                             "DateTimeContent": {
    //                                 "Text": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxCharge?.FeePlan?.FeePlan?.PlanValidityPeriod?.ToDateTime?.DateTimeContent?.Text
    //                             },
    //                             "TimeZoneCode": {
    //                                 "Text": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxCharge?.FeePlan?.FeePlan?.PlanValidityPeriod?.ToDateTime?.TimeZoneCode?.Text
    //                             },
    //                             "DaylightSavingIndicator": {
    //                                 "Text": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxCharge?.FeePlan?.FeePlan?.PlanValidityPeriod?.ToDateTime?.DaylightSavingIndicator?.Text
    //                             },
    //                             "DateTimeType": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxCharge?.FeePlan?.FeePlan?.PlanValidityPeriod?.ToDateTime?.DateTimeType
    //                         }
    //                     },
    //                     "PlanDescription": {
    //                         "Text": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxCharge?.FeePlan?.FeePlan?.PlanDescription?.Text
    //                     }
    //                 }
    //             },
    //             "FeeCreditDebitIndicator": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxCharge?.FeeCreditDebitIndicator,
    //             "FeeReason": {
    //                 "Text": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxCharge?.FeeReason?.Text
    //             },
    //             "FeeDirection": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxCharge?.FeeDirection,
    //             "FeeBearerType": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxCharge?.FeeBearerType
    //         },
    //         "TaxInterest": {
    //             "InterestType": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxInterest?.InterestType,
    //             "InterestRate": {
    //                 "RateValue": {
    //                     "Value": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxInterest?.InterestRate?.RateValue?.Value
    //                 },
    //                 "RateUnit": {
    //                     "Text": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxInterest?.InterestRate?.RateUnit?.Text
    //                 },
    //                 "RatePeriod": {
    //                     "FromDateTime": {
    //                         "DateTimeContent": {
    //                             "Text": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxInterest?.InterestRate?.RatePeriod?.FromDateTime?.DateTimeContent?.Text
    //                         },
    //                         "TimeZoneCode": {
    //                             "Text": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxInterest?.InterestRate?.RatePeriod?.FromDateTime?.TimeZoneCode?.Text
    //                         },
    //                         "DaylightSavingIndicator": {
    //                             "Text": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxInterest?.InterestRate?.RatePeriod?.FromDateTime?.DaylightSavingIndicator?.Text
    //                         },
    //                         "DateTimeType": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxInterest?.InterestRate?.RatePeriod?.FromDateTime?.DateTimeType
    //                     },
    //                     "ToDateTime": {
    //                         "DateTimeContent": {
    //                             "Text": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxInterest?.InterestRate?.RatePeriod?.ToDateTime?.DateTimeContent?.Text
    //                         },
    //                         "TimeZoneCode": {
    //                             "Text": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxInterest?.InterestRate?.RatePeriod?.ToDateTime?.TimeZoneCode?.Text
    //                         },
    //                         "DaylightSavingIndicator": {
    //                             "Text": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxInterest?.InterestRate?.RatePeriod?.ToDateTime?.DaylightSavingIndicator?.Text
    //                         },
    //                         "DateTimeType": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxInterest?.InterestRate?.RatePeriod?.ToDateTime?.DateTimeType
    //                     }
    //                 },
    //                 "RateCapitalUnit": {
    //                     "Text": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxInterest?.InterestRate?.RateCapitalUnit?.Text
    //                 }
    //             },
    //             "InterestDefinition": {
    //                 "Text": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxInterest?.InterestDefinition?.Text
    //             },
    //             "InterestRateType": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxInterest?.InterestRateType,
    //             "InterestPeriod": {
    //                 "FromDateTime": {
    //                     "DateTimeContent": {
    //                         "Text": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxInterest?.InterestPeriod?.FromDateTime?.DateTimeContent?.Text
    //                     },
    //                     "TimeZoneCode": {
    //                         "Text": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxInterest?.InterestPeriod?.FromDateTime?.TimeZoneCode?.Text
    //                     },
    //                     "DaylightSavingIndicator": {
    //                         "Text": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxInterest?.InterestPeriod?.FromDateTime?.DaylightSavingIndicator?.Text
    //                     },
    //                     "DateTimeType": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxInterest?.InterestPeriod?.FromDateTime?.DateTimeType
    //                 },
    //                 "ToDateTime": {
    //                     "DateTimeContent": {
    //                         "Text": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxInterest?.InterestPeriod?.ToDateTime?.DateTimeContent?.Text
    //                     },
    //                     "TimeZoneCode": {
    //                         "Text": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxInterest?.InterestPeriod?.ToDateTime?.TimeZoneCode?.Text
    //                     },
    //                     "DaylightSavingIndicator": {
    //                         "Text": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxInterest?.InterestPeriod?.ToDateTime?.DaylightSavingIndicator?.Text
    //                     },
    //                     "DateTimeType": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxInterest?.InterestPeriod?.ToDateTime?.DateTimeType
    //                 }
    //             },
    //             "InterestRatePlan": {
    //                 "RatePlanName": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxInterest?.InterestRatePlan?.RatePlanName,
    //                 "RatePlanType": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxInterest?.InterestRatePlan?.RatePlanType,
    //                 "RatePlan": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxInterest?.InterestRatePlan?.RatePlan
    //             },
    //             "InterestSchedule": {
    //                 "ScheduleType": {
    //                     "Text": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxInterest?.InterestSchedule?.ScheduleType?.Text
    //                 }
    //             }
    //         },
    //         "TaxMethod": {
    //             "Text": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxMethod?.Text
    //         },
    //         "TaxProduct": {
    //             "ProductIdentification": {
    //                 "ProductIdentification": {
    //                     "IdentifierValue": {
    //                         "Value": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxProduct?.ProductIdentification?.ProductIdentification?.IdentifierValue?.Value
    //                     },
    //                     "IdentifierIssuerReference": {
    //                         "PartyReference": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxProduct?.ProductIdentification?.ProductIdentification?.IdentifierIssuerReference?.PartyReference,
    //                         "InvolvementReference": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxProduct?.ProductIdentification?.ProductIdentification?.IdentifierIssuerReference?.InvolvementReference
    //                     },
    //                     "IdentifierStartDate": {
    //                         "DateTimeContent": {
    //                             "Text": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxProduct?.ProductIdentification?.ProductIdentification?.IdentifierStartDate?.DateTimeContent?.Text
    //                         },
    //                         "TimeZoneCode": {
    //                             "Text": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxProduct?.ProductIdentification?.ProductIdentification?.IdentifierStartDate?.TimeZoneCode?.Text
    //                         },
    //                         "DaylightSavingIndicator": {
    //                             "Text": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxProduct?.ProductIdentification?.ProductIdentification?.IdentifierStartDate?.DaylightSavingIndicator?.Text
    //                         },
    //                         "DateTimeType": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxProduct?.ProductIdentification?.ProductIdentification?.IdentifierStartDate?.DateTimeType
    //                     },
    //                     "IdentifierEndDate": {
    //                         "DateTimeContent": {
    //                             "Text": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxProduct?.ProductIdentification?.ProductIdentification?.IdentifierEndDate?.DateTimeContent?.Text
    //                         },
    //                         "TimeZoneCode": {
    //                             "Text": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxProduct?.ProductIdentification?.ProductIdentification?.IdentifierEndDate?.TimeZoneCode?.Text
    //                         },
    //                         "DaylightSavingIndicator": {
    //                             "Text": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxProduct?.ProductIdentification?.ProductIdentification?.IdentifierEndDate?.DaylightSavingIndicator?.Text
    //                         },
    //                         "DateTimeType": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxProduct?.ProductIdentification?.ProductIdentification?.IdentifierEndDate?.DateTimeType
    //                     }
    //                 },
    //                 "ProductIdentificationType": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxProduct?.ProductIdentification?.ProductIdentificationType
    //             },
    //             "ProductType": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxProduct?.ProductType,
    //             "ProductLifecycleStatus": {
    //                 "ProductStatus": {
    //                     "StatusReason": {
    //                         "Text": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxProduct?.ProductLifecycleStatus?.ProductStatus?.StatusReason?.Text
    //                     },
    //                     "StatusDateTime": {
    //                         "DateTimeContent": {
    //                             "Text": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxProduct?.ProductLifecycleStatus?.ProductStatus?.StatusDateTime?.DateTimeContent?.Text
    //                         },
    //                         "TimeZoneCode": {
    //                             "Text": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxProduct?.ProductLifecycleStatus?.ProductStatus?.StatusDateTime?.TimeZoneCode?.Text
    //                         },
    //                         "DaylightSavingIndicator": {
    //                             "Text": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxProduct?.ProductLifecycleStatus?.ProductStatus?.StatusDateTime?.DaylightSavingIndicator?.Text
    //                         },
    //                         "DateTimeType": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxProduct?.ProductLifecycleStatus?.ProductStatus?.StatusDateTime?.DateTimeType
    //                     },
    //                     "StatusValidityPeriod": {
    //                         "FromDateTime": {
    //                             "DateTimeContent": {
    //                                 "Text": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxProduct?.ProductLifecycleStatus?.ProductStatus?.StatusValidityPeriod?.FromDateTime?.DateTimeContent?.Text
    //                             },
    //                             "TimeZoneCode": {
    //                                 "Text": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxProduct?.ProductLifecycleStatus?.ProductStatus?.StatusValidityPeriod?.FromDateTime?.TimeZoneCode?.Text
    //                             },
    //                             "DaylightSavingIndicator": {
    //                                 "Text": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxProduct?.ProductLifecycleStatus?.ProductStatus?.StatusValidityPeriod?.FromDateTime?.DaylightSavingIndicator?.Text
    //                             },
    //                             "DateTimeType": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxProduct?.ProductLifecycleStatus?.ProductStatus?.StatusValidityPeriod?.FromDateTime?.DateTimeType
    //                         },
    //                         "ToDateTime": {
    //                             "DateTimeContent": {
    //                                 "Text": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxProduct?.ProductLifecycleStatus?.ProductStatus?.StatusValidityPeriod?.ToDateTime?.DateTimeContent?.Text
    //                             },
    //                             "TimeZoneCode": {
    //                                 "Text": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxProduct?.ProductLifecycleStatus?.ProductStatus?.StatusValidityPeriod?.ToDateTime?.TimeZoneCode?.Text
    //                             },
    //                             "DaylightSavingIndicator": {
    //                                 "Text": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxProduct?.ProductLifecycleStatus?.ProductStatus?.StatusValidityPeriod?.ToDateTime?.DaylightSavingIndicator?.Text
    //                             },
    //                             "DateTimeType": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxProduct?.ProductLifecycleStatus?.ProductStatus?.StatusValidityPeriod?.ToDateTime?.DateTimeType
    //                         }
    //                     },
    //                     "StatusInvolvedPartyReference": {
    //                         "PartyReference": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxProduct?.ProductLifecycleStatus?.ProductStatus?.StatusInvolvedPartyReference?.PartyReference,
    //                         "InvolvementReference": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxProduct?.ProductLifecycleStatus?.ProductStatus?.StatusInvolvedPartyReference?.InvolvementReference
    //                     }
    //                 },
    //                 "ProductStatusType": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxProduct?.ProductLifecycleStatus?.ProductStatusType
    //             },
    //             "ProductPriority": {
    //                 "Text": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxProduct?.ProductPriority?.Text
    //             },
    //             "ProductDescription": {
    //                 "Text": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxProduct?.ProductDescription?.Text
    //             },
    //             "ProductVersion": {
    //                 "Text": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxProduct?.ProductVersion?.Text
    //             },
    //             "ProductName": {
    //                 "Name": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxProduct?.ProductName?.Name
    //             }
    //         },
    //         "TaxExemption": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxExemption,
    //         "TaxExemptionReason": {
    //             "Text": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxExemptionReason?.Text
    //         },
    //         "TaxDateAndTime": {
    //             "DateTimeContent": {
    //                 "Text": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxDateAndTime?.DateTimeContent?.Text
    //             },
    //             "TimeZoneCode": {
    //                 "Text": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxDateAndTime?.TimeZoneCode?.Text
    //             },
    //             "DaylightSavingIndicator": {
    //                 "Text": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxDateAndTime?.DaylightSavingIndicator?.Text
    //             },
    //             "DateTimeType": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxDateAndTime?.DateTimeType
    //         },
    //         "TaxCertification": {
    //             "DocumentIdentification": {
    //                 "IdentifierValue": {
    //                     "Value": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxCertification?.DocumentIdentification?.IdentifierValue?.Value
    //                 },
    //                 "IdentifierIssuerReference": {
    //                     "PartyReference": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxCertification?.DocumentIdentification?.IdentifierIssuerReference?.PartyReference,
    //                     "InvolvementReference": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxCertification?.DocumentIdentification?.IdentifierIssuerReference?.InvolvementReference
    //                 },
    //                 "IdentifierStartDate": {
    //                     "DateTimeContent": {
    //                         "Text": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxCertification?.DocumentIdentification?.IdentifierStartDate?.DateTimeContent?.Text
    //                     },
    //                     "TimeZoneCode": {
    //                         "Text": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxCertification?.DocumentIdentification?.IdentifierStartDate?.TimeZoneCode?.Text
    //                     },
    //                     "DaylightSavingIndicator": {
    //                         "Text": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxCertification?.DocumentIdentification?.IdentifierStartDate?.DaylightSavingIndicator?.Text
    //                     },
    //                     "DateTimeType": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxCertification?.DocumentIdentification?.IdentifierStartDate?.DateTimeType
    //                 },
    //                 "IdentifierEndDate": {
    //                     "DateTimeContent": {
    //                         "Text": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxCertification?.DocumentIdentification?.IdentifierEndDate?.DateTimeContent?.Text
    //                     },
    //                     "TimeZoneCode": {
    //                         "Text": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxCertification?.DocumentIdentification?.IdentifierEndDate?.TimeZoneCode?.Text
    //                     },
    //                     "DaylightSavingIndicator": {
    //                         "Text": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxCertification?.DocumentIdentification?.IdentifierEndDate?.DaylightSavingIndicator?.Text
    //                     },
    //                     "DateTimeType": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxCertification?.DocumentIdentification?.IdentifierEndDate?.DateTimeType
    //                 }
    //             },
    //             "DocumentVersion": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxCertification?.DocumentVersion,
    //             "DocumentType": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxCertification?.DocumentType,
    //             "DocumentStatus": {
    //                 "StatusReason": {
    //                     "Text": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxCertification?.DocumentStatus?.StatusReason?.Text
    //                 },
    //                 "StatusDateTime": {
    //                     "DateTimeContent": {
    //                         "Text": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxCertification?.DocumentStatus?.StatusDateTime?.DateTimeContent?.Text
    //                     },
    //                     "TimeZoneCode": {
    //                         "Text": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxCertification?.DocumentStatus?.StatusDateTime?.TimeZoneCode?.Text
    //                     },
    //                     "DaylightSavingIndicator": {
    //                         "Text": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxCertification?.DocumentStatus?.StatusDateTime?.DaylightSavingIndicator?.Text
    //                     },
    //                     "DateTimeType": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxCertification?.DocumentStatus?.StatusDateTime?.DateTimeType
    //                 },
    //                 "StatusValidityPeriod": {
    //                     "FromDateTime": {
    //                         "DateTimeContent": {
    //                             "Text": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxCertification?.DocumentStatus?.StatusValidityPeriod?.FromDateTime?.DateTimeContent?.Text
    //                         },
    //                         "TimeZoneCode": {
    //                             "Text": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxCertification?.DocumentStatus?.StatusValidityPeriod?.FromDateTime?.TimeZoneCode?.Text
    //                         },
    //                         "DaylightSavingIndicator": {
    //                             "Text": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxCertification?.DocumentStatus?.StatusValidityPeriod?.FromDateTime?.DaylightSavingIndicator?.Text
    //                         },
    //                         "DateTimeType": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxCertification?.DocumentStatus?.StatusValidityPeriod?.FromDateTime?.DateTimeType
    //                     },
    //                     "ToDateTime": {
    //                         "DateTimeContent": {
    //                             "Text": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxCertification?.DocumentStatus?.StatusValidityPeriod?.ToDateTime?.DateTimeContent?.Text
    //                         },
    //                         "TimeZoneCode": {
    //                             "Text": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxCertification?.DocumentStatus?.StatusValidityPeriod?.ToDateTime?.TimeZoneCode?.Text
    //                         },
    //                         "DaylightSavingIndicator": {
    //                             "Text": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxCertification?.DocumentStatus?.StatusValidityPeriod?.ToDateTime?.DaylightSavingIndicator?.Text
    //                         },
    //                         "DateTimeType": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxCertification?.DocumentStatus?.StatusValidityPeriod?.ToDateTime?.DateTimeType
    //                     }
    //                 },
    //                 "StatusInvolvedPartyReference": {
    //                     "PartyReference": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxCertification?.DocumentStatus?.StatusInvolvedPartyReference?.PartyReference,
    //                     "InvolvementReference": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxCertification?.DocumentStatus?.StatusInvolvedPartyReference?.InvolvementReference
    //                 }
    //             },
    //             "DocumentDateTime": {
    //                 "DateTimeContent": {
    //                     "Text": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxCertification?.DocumentDateTime?.DateTimeContent?.Text
    //                 },
    //                 "TimeZoneCode": {
    //                     "Text": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxCertification?.DocumentDateTime?.TimeZoneCode?.Text
    //                 },
    //                 "DaylightSavingIndicator": {
    //                     "Text": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxCertification?.DocumentDateTime?.DaylightSavingIndicator?.Text
    //                 },
    //                 "DateTimeType": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxCertification?.DocumentDateTime?.DateTimeType
    //             },
    //             "DocumentName": {
    //                 "Name": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxCertification?.DocumentName?.Name
    //             },
    //             "DocumentDateTimeType": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxCertification?.DocumentDateTimeType,
    //             "DocumentPurpose": {
    //                 "Text": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxCertification?.DocumentPurpose?.Text
    //             },
    //             "DocumentFormat": {
    //                 "Text": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxCertification?.DocumentFormat?.Text
    //             },
    //             "DocumentSubject": {
    //                 "Text": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxCertification?.DocumentSubject?.Text
    //             },
    //             "DocumentDescription": {
    //                 "Text": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxCertification?.DocumentDescription?.Text
    //             },
    //             "DocumentValidityPeriod": {
    //                 "FromDateTime": {
    //                     "DateTimeContent": {
    //                         "Text": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxCertification?.DocumentValidityPeriod?.FromDateTime?.DateTimeContent?.Text
    //                     },
    //                     "TimeZoneCode": {
    //                         "Text": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxCertification?.DocumentValidityPeriod?.FromDateTime?.TimeZoneCode?.Text
    //                     },
    //                     "DaylightSavingIndicator": {
    //                         "Text": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxCertification?.DocumentValidityPeriod?.FromDateTime?.DaylightSavingIndicator?.Text
    //                     },
    //                     "DateTimeType": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxCertification?.DocumentValidityPeriod?.FromDateTime?.DateTimeType
    //                 },
    //                 "ToDateTime": {
    //                     "DateTimeContent": {
    //                         "Text": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxCertification?.DocumentValidityPeriod?.ToDateTime?.DateTimeContent?.Text
    //                     },
    //                     "TimeZoneCode": {
    //                         "Text": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxCertification?.DocumentValidityPeriod?.ToDateTime?.TimeZoneCode?.Text
    //                     },
    //                     "DaylightSavingIndicator": {
    //                         "Text": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxCertification?.DocumentValidityPeriod?.ToDateTime?.DaylightSavingIndicator?.Text
    //                     },
    //                     "DateTimeType": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxCertification?.DocumentValidityPeriod?.ToDateTime?.DateTimeType
    //                 }
    //             }
    //         },
    //         "TaxPeriod": {
    //             "FromDateTime": {
    //                 "DateTimeContent": {
    //                     "Text": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxPeriod?.FromDateTime?.DateTimeContent?.Text
    //                 },
    //                 "TimeZoneCode": {
    //                     "Text": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxPeriod?.FromDateTime?.TimeZoneCode?.Text
    //                 },
    //                 "DaylightSavingIndicator": {
    //                     "Text": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxPeriod?.FromDateTime?.DaylightSavingIndicator?.Text
    //                 },
    //                 "DateTimeType": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxPeriod?.FromDateTime?.DateTimeType
    //             },
    //             "ToDateTime": {
    //                 "DateTimeContent": {
    //                     "Text": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxPeriod?.ToDateTime?.DateTimeContent?.Text
    //                 },
    //                 "TimeZoneCode": {
    //                     "Text": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxPeriod?.ToDateTime?.TimeZoneCode?.Text
    //                 },
    //                 "DaylightSavingIndicator": {
    //                     "Text": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxPeriod?.ToDateTime?.DaylightSavingIndicator?.Text
    //                 },
    //                 "DateTimeType": check response?.body?.ProductInstanceReference?.SavingsAccountAgreementTaxRegime?.TaxPeriod?.ToDateTime?.DateTimeType
    //             }
    //         }
    //     },
    //     "CustomerCommentary": {
    //         "Text": check response?.body?.ProductInstanceReference?.CustomerCommentary?.Text
    //     },
    //     "JoinedAccountHolderIndicator": check response?.body?.ProductInstanceReference?.JoinedAccountHolderIndicator,
    //     "StandingOrderIndicator": {
    //         "Yesnoindicator": check response?.body?.ProductInstanceReference?.StandingOrderIndicator?.Yesnoindicator
    //     }
    // },
    // "SavingsAccountNumber": {
    //     "AccountIdentificationType": check response?.body?.SavingsAccountNumber?.AccountIdentificationType,
    //     "AccountIdentification": {
    //         "IdentifierValue": check response?.body?.SavingsAccountNumber?.AccountIdentification?.IdentifierValue,
    //         "IdentifierIssuerReference": {
    //             "PartyReference": check response?.body?.SavingsAccountNumber?.AccountIdentification?.IdentifierIssuerReference?.PartyReference,
    //             "InvolvementReference": check response?.body?.SavingsAccountNumber?.AccountIdentification?.IdentifierIssuerReference?.InvolvementReference
    //         },
    //         "IdentifierStartDate": {
    //             "DateTimeContent": check response?.body?.SavingsAccountNumber?.AccountIdentification?.IdentifierStartDate?.DateTimeContent,
    //             "TimeZoneCode": check response?.body?.SavingsAccountNumber?.AccountIdentification?.IdentifierStartDate?.TimeZoneCode,
    //             "DaylightSavingIndicator": check response?.body?.SavingsAccountNumber?.AccountIdentification?.IdentifierStartDate?.DaylightSavingIndicator,
    //             "DateTimeType": check response?.body?.SavingsAccountNumber?.AccountIdentification?.IdentifierStartDate?.DateTimeType
    //         },
    //         "IdentifierEndDate": {
    //             "DateTimeContent": check response?.body?.SavingsAccountNumber?.AccountIdentification?.IdentifierEndDate?.DateTimeContent,
    //             "TimeZoneCode": check response?.body?.SavingsAccountNumber?.AccountIdentification?.IdentifierEndDate?.TimeZoneCode,
    //             "DaylightSavingIndicator": check response?.body?.SavingsAccountNumber?.AccountIdentification?.IdentifierEndDate?.DaylightSavingIndicator,
    //             "DateTimeType": check response?.body?.SavingsAccountNumber?.AccountIdentification?.IdentifierEndDate?.DateTimeType
    //         }
    //     }
    // },
    // "CustomerReference": {
    //     "PartyReference": {
    //         "PartyName": {
    //             "Name": check response?.body?.CustomerReference?.PartyReference?.PartyName?.Name
    //         },
    //         "PartyType": check response?.body?.CustomerReference?.PartyReference?.PartyType,
    //         "PartyDateTime": {
    //             "DateTimeContent": {
    //                 "Text": check response?.body?.CustomerReference?.PartyReference?.PartyDateTime?.DateTimeContent?.Text
    //             },
    //             "TimeZoneCode": {
    //                 "Text": check response?.body?.CustomerReference?.PartyReference?.PartyDateTime?.TimeZoneCode?.Text
    //             },
    //             "DaylightSavingIndicator": {
    //                 "Text": check response?.body?.CustomerReference?.PartyReference?.PartyDateTime?.DaylightSavingIndicator?.Text
    //             },
    //             "DateTimeType": check response?.body?.CustomerReference?.PartyReference?.PartyDateTime?.DateTimeType
    //         },
    //         "PartyIdentification": {
    //             "PartyIdentificationType": check response?.body?.CustomerReference?.PartyReference?.PartyIdentification?.PartyIdentificationType
    //             // "PartyIdentification": "string"
    //         },
    //         "PartyLegalStructureType": check response?.body?.CustomerReference?.PartyReference?.PartyLegalStructureType
    //     },
    //     "PartyInvolvement": {
    //         "PartyRoleType": {
    //             "Text": check response?.body?.CustomerReference?.PartyInvolvement?.PartyRoleType?.Text
    //         },
    //         "PartyRoleName": {
    //             "Name": check response?.body?.CustomerReference?.PartyInvolvement?.PartyRoleName?.Name
    //         },
    //         "PartyRoleValidityPeriod": {
    //             "FromDateTime": {
    //                 "DateTimeContent": {
    //                     "Text": check response?.body?.CustomerReference?.PartyInvolvement?.PartyRoleValidityPeriod?.FromDateTime?.DateTimeContent?.Text
    //                 },
    //                 "TimeZoneCode": {
    //                     "Text": check response?.body?.CustomerReference?.PartyInvolvement?.PartyRoleValidityPeriod?.FromDateTime?.TimeZoneCode?.Text
    //                 },
    //                 "DaylightSavingIndicator": {
    //                     "Text": check response?.body?.CustomerReference?.PartyInvolvement?.PartyRoleValidityPeriod?.FromDateTime?.DaylightSavingIndicator?.Text
    //                 },
    //                 "DateTimeType": check response?.body?.CustomerReference?.PartyInvolvement?.PartyRoleValidityPeriod?.FromDateTime?.DateTimeType
    //             },
    //             "ToDateTime": {
    //                 "DateTimeContent": {
    //                     "Text": check response?.body?.CustomerReference?.PartyInvolvement?.PartyRoleValidityPeriod?.ToDateTime?.DateTimeContent?.Text
    //                 },
    //                 "TimeZoneCode": {
    //                     "Text": check response?.body?.CustomerReference?.PartyInvolvement?.PartyRoleValidityPeriod?.ToDateTime?.TimeZoneCode?.Text
    //                 },
    //                 "DaylightSavingIndicator": {
    //                     "Text": check response?.body?.CustomerReference?.PartyInvolvement?.PartyRoleValidityPeriod?.ToDateTime?.DaylightSavingIndicator?.Text
    //                 },
    //                 "DateTimeType": check response?.body?.CustomerReference?.PartyInvolvement?.PartyRoleValidityPeriod?.ToDateTime?.DateTimeType
    //             }
    //         },
    //         "PartyInvolvementType": check response?.body?.CustomerReference?.PartyInvolvement?.PartyInvolvementType
    //     }
    // },
    // "BankBranchLocationReference": {
    //     "BranchIdentification": {
    //         "IdentifierValue": {
    //             "Value": check response?.body?.BankBranchLocationReference?.BranchIdentification?.IdentifierValue?.Value
    //         },
    //         "IdentifierIssuerReference": {
    //             "PartyReference": check response?.body?.BankBranchLocationReference?.BranchIdentification?.IdentifierIssuerReference?.PartyReference,
    //             "InvolvementReference": check response?.body?.BankBranchLocationReference?.BranchIdentification?.IdentifierIssuerReference?.InvolvementReference
    //         },
    //         "IdentifierStartDate": {
    //             "DateTimeContent": {
    //                 "Text": check response?.body?.BankBranchLocationReference?.BranchIdentification?.IdentifierStartDate?.DateTimeContent?.Text
    //             },
    //             "TimeZoneCode": {
    //                 "Text": check response?.body?.BankBranchLocationReference?.BranchIdentification?.IdentifierStartDate?.TimeZoneCode?.Text
    //             },
    //             "DaylightSavingIndicator": {
    //                 "Text": check response?.body?.BankBranchLocationReference?.BranchIdentification?.IdentifierStartDate?.DaylightSavingIndicator?.Text
    //             },
    //             "DateTimeType": check response?.body?.BankBranchLocationReference?.BranchIdentification?.IdentifierStartDate?.DateTimeType
    //         },
    //         "IdentifierEndDate": {
    //             "DateTimeContent": {
    //                 "Text": check response?.body?.BankBranchLocationReference?.BranchIdentification?.IdentifierEndDate?.DateTimeContent?.Text
    //             },
    //             "TimeZoneCode": {
    //                 "Text": check response?.body?.BankBranchLocationReference?.BranchIdentification?.IdentifierEndDate?.TimeZoneCode?.Text
    //             },
    //             "DaylightSavingIndicator": {
    //                 "Text": check response?.body?.BankBranchLocationReference?.BranchIdentification?.IdentifierEndDate?.DaylightSavingIndicator?.Text
    //             },
    //             "DateTimeType": check response?.body?.BankBranchLocationReference?.BranchIdentification?.IdentifierEndDate?.DateTimeType
    //         }
    //     },
    //     "BranchLegalEntityIdentification": {
    //         "IdentifierValue": {
    //             "Value": check response?.body?.BankBranchLocationReference?.BranchLegalEntityIdentification?.IdentifierValue?.Value
    //         },
    //         "IdentifierIssuerReference": {
    //             "PartyReference": check response?.body?.BankBranchLocationReference?.BranchLegalEntityIdentification?.IdentifierIssuerReference?.PartyReference,
    //             "InvolvementReference": check response?.body?.BankBranchLocationReference?.BranchLegalEntityIdentification?.IdentifierIssuerReference?.InvolvementReference
    //         },
    //         "IdentifierStartDate": {
    //             "DateTimeContent": {
    //                 "Text": check response?.body?.BankBranchLocationReference?.BranchLegalEntityIdentification?.IdentifierStartDate?.DateTimeContent?.Text
    //             },
    //             "TimeZoneCode": {
    //                 "Text": check response?.body?.BankBranchLocationReference?.BranchLegalEntityIdentification?.IdentifierStartDate?.TimeZoneCode?.Text
    //             },
    //             "DaylightSavingIndicator": {
    //                 "Text": check response?.body?.BankBranchLocationReference?.BranchLegalEntityIdentification?.IdentifierStartDate?.DaylightSavingIndicator?.Text
    //             },
    //             "DateTimeType": check response?.body?.BankBranchLocationReference?.BranchLegalEntityIdentification?.IdentifierStartDate?.DateTimeType
    //         },
    //         "IdentifierEndDate": {
    //             "DateTimeContent": {
    //                 "Text": check response?.body?.BankBranchLocationReference?.BranchLegalEntityIdentification?.IdentifierEndDate?.DateTimeContent?.Text
    //             },
    //             "TimeZoneCode": {
    //                 "Text": check response?.body?.BankBranchLocationReference?.BranchLegalEntityIdentification?.IdentifierEndDate?.TimeZoneCode?.Text
    //             },
    //             "DaylightSavingIndicator": {
    //                 "Text": check response?.body?.BankBranchLocationReference?.BranchLegalEntityIdentification?.IdentifierEndDate?.DaylightSavingIndicator?.Text
    //             },
    //             "DateTimeType": check response?.body?.BankBranchLocationReference?.BranchLegalEntityIdentification?.IdentifierEndDate?.DateTimeType
    //         }
    //     },
    //     "BranchAddress": {
    //         // "AddressType": "PostalAddress",
    //         "LocationReference": {
    //             "LocationDescription": {
    //                 "Text": check response?.body?.BankBranchLocationReference?.BranchAddress?.LocationReference?.LocationDescription?.Text
    //             },
    //             "LocationDateTime": {
    //                 "DateTimeContent": {
    //                     "Text": check response?.body?.BankBranchLocationReference?.BranchAddress?.LocationReference?.LocationDateTime?.DateTimeContent?.Text
    //                 },
    //                 "TimeZoneCode": {
    //                     "Text": check response?.body?.BankBranchLocationReference?.BranchAddress?.LocationReference?.LocationDateTime?.TimeZoneCode?.Text
    //                 },
    //                 "DaylightSavingIndicator": {
    //                     "Text": check response?.body?.BankBranchLocationReference?.BranchAddress?.LocationReference?.LocationDateTime?.DaylightSavingIndicator?.Text
    //                 },
    //                 "DateTimeType": check response?.body?.BankBranchLocationReference?.BranchAddress?.LocationReference?.LocationDateTime?.DateTimeType
    //             },
    //             "LocationStatus": {
    //                 "StatusReason": {
    //                     "Text": check response?.body?.BankBranchLocationReference?.BranchAddress?.LocationReference?.LocationStatus?.StatusReason?.Text
    //                 },
    //                 "StatusDateTime": {
    //                     "DateTimeContent": {
    //                         "Text": check response?.body?.BankBranchLocationReference?.BranchAddress?.LocationReference?.LocationStatus?.StatusDateTime?.DateTimeContent?.Text
    //                     },
    //                     "TimeZoneCode": {
    //                         "Text": check response?.body?.BankBranchLocationReference?.BranchAddress?.LocationReference?.LocationStatus?.StatusDateTime?.TimeZoneCode?.Text
    //                     },
    //                     "DaylightSavingIndicator": {
    //                         "Text": check response?.body?.BankBranchLocationReference?.BranchAddress?.LocationReference?.LocationStatus?.StatusDateTime?.DaylightSavingIndicator?.Text
    //                     },
    //                     "DateTimeType": check response?.body?.BankBranchLocationReference?.BranchAddress?.LocationReference?.LocationStatus?.StatusDateTime?.DateTimeType
    //                 },
    //                 "StatusValidityPeriod": {
    //                     "FromDateTime": {
    //                         "DateTimeContent": {
    //                             "Text": check response?.body?.BankBranchLocationReference?.BranchAddress?.LocationReference?.LocationStatus?.StatusValidityPeriod?.FromDateTime?.DateTimeContent?.Text
    //                         },
    //                         "TimeZoneCode": {
    //                             "Text": check response?.body?.BankBranchLocationReference?.BranchAddress?.LocationReference?.LocationStatus?.StatusValidityPeriod?.FromDateTime?.TimeZoneCode?.Text
    //                         },
    //                         "DaylightSavingIndicator": {
    //                             "Text": check response?.body?.BankBranchLocationReference?.BranchAddress?.LocationReference?.LocationStatus?.StatusValidityPeriod?.FromDateTime?.DaylightSavingIndicator?.Text
    //                         },
    //                         "DateTimeType": check response?.body?.BankBranchLocationReference?.BranchAddress?.LocationReference?.LocationStatus?.StatusValidityPeriod?.FromDateTime?.DateTimeType
    //                     },
    //                     "ToDateTime": {
    //                         "DateTimeContent": {
    //                             "Text": check response?.body?.BankBranchLocationReference?.BranchAddress?.LocationReference?.LocationStatus?.StatusValidityPeriod?.ToDateTime?.DateTimeContent?.Text
    //                         },
    //                         "TimeZoneCode": {
    //                             "Text": check response?.body?.BankBranchLocationReference?.BranchAddress?.LocationReference?.LocationStatus?.StatusValidityPeriod?.ToDateTime?.TimeZoneCode?.Text
    //                         },
    //                         "DaylightSavingIndicator": {
    //                             "Text": check response?.body?.BankBranchLocationReference?.BranchAddress?.LocationReference?.LocationStatus?.StatusValidityPeriod?.ToDateTime?.DaylightSavingIndicator?.Text
    //                         },
    //                         "DateTimeType": check response?.body?.BankBranchLocationReference?.BranchAddress?.LocationReference?.LocationStatus?.StatusValidityPeriod?.ToDateTime?.DateTimeType
    //                     }
    //                 },
    //                 "StatusInvolvedPartyReference": {
    //                     "PartyReference": check response?.body?.BankBranchLocationReference?.BranchAddress?.LocationReference?.LocationStatus?.StatusInvolvedPartyReference?.PartyReference,
    //                     "InvolvementReference": check response?.body?.BankBranchLocationReference?.BranchAddress?.LocationReference?.LocationStatus?.StatusInvolvedPartyReference?.InvolvementReference
    //                 }
    //             },
    //             "LocationType": check response?.body?.BankBranchLocationReference?.BranchAddress?.LocationReference?.LocationType,
    //             "LocationZoningType": {
    //                 "Text": check response?.body?.BankBranchLocationReference?.BranchAddress?.LocationReference?.LocationZoningType?.Text
    //             },
    //             "LocationNeighborhoodType": {
    //                 "Text": check response?.body?.BankBranchLocationReference?.BranchAddress?.LocationReference?.LocationNeighborhoodType?.Text
    //             },
    //             "LocationConstructionType": {
    //                 "Text": check response?.body?.BankBranchLocationReference?.BranchAddress?.LocationReference?.LocationConstructionType?.Text
    //             },
    //             "LocationOccupancyType": {
    //                 "Text": check response?.body?.BankBranchLocationReference?.BranchAddress?.LocationReference?.LocationOccupancyType?.Text
    //             },
    //             "LocationValue": {
    //                 "Value": check response?.body?.BankBranchLocationReference?.BranchAddress?.LocationReference?.LocationValue?.Value
    //             },
    //             "LocationCapacity": {
    //                 "Text": check response?.body?.BankBranchLocationReference?.BranchAddress?.LocationReference?.LocationCapacity?.Text
    //             },
    //             "LocationIdentification": {
    //                 "IdentifierValue": {
    //                     "Value": check response?.body?.BankBranchLocationReference?.BranchAddress?.LocationReference?.LocationIdentification?.IdentifierValue?.Value
    //                 },
    //                 "IdentifierIssuerReference": {
    //                     "PartyReference": check response?.body?.BankBranchLocationReference?.BranchAddress?.LocationReference?.LocationIdentification?.IdentifierIssuerReference?.PartyReference,
    //                     "InvolvementReference": check response?.body?.BankBranchLocationReference?.BranchAddress?.LocationReference?.LocationIdentification?.IdentifierIssuerReference?.InvolvementReference
    //                 },
    //                 "IdentifierStartDate": {
    //                     "DateTimeContent": {
    //                         "Text": check response?.body?.BankBranchLocationReference?.BranchAddress?.LocationReference?.LocationIdentification?.IdentifierStartDate?.DateTimeContent?.Text
    //                     },
    //                     "TimeZoneCode": {
    //                         "Text": check response?.body?.BankBranchLocationReference?.BranchAddress?.LocationReference?.LocationIdentification?.IdentifierStartDate?.TimeZoneCode?.Text
    //                     },
    //                     "DaylightSavingIndicator": {
    //                         "Text": check response?.body?.BankBranchLocationReference?.BranchAddress?.LocationReference?.LocationIdentification?.IdentifierStartDate?.DaylightSavingIndicator?.Text
    //                     },
    //                     "DateTimeType": check response?.body?.BankBranchLocationReference?.BranchAddress?.LocationReference?.LocationIdentification?.IdentifierStartDate?.DateTimeType
    //                 },
    //                 "IdentifierEndDate": {
    //                     "DateTimeContent": {
    //                         "Text": check response?.body?.BankBranchLocationReference?.BranchAddress?.LocationReference?.LocationIdentification?.IdentifierEndDate?.DateTimeContent?.Text
    //                     },
    //                     "TimeZoneCode": {
    //                         "Text": check response?.body?.BankBranchLocationReference?.BranchAddress?.LocationReference?.LocationIdentification?.IdentifierEndDate?.TimeZoneCode?.Text
    //                     },
    //                     "DaylightSavingIndicator": {
    //                         "Text": check response?.body?.BankBranchLocationReference?.BranchAddress?.LocationReference?.LocationIdentification?.IdentifierEndDate?.DaylightSavingIndicator?.Text
    //                     },
    //                     "DateTimeType": check response?.body?.BankBranchLocationReference?.BranchAddress?.LocationReference?.LocationIdentification?.IdentifierEndDate?.DateTimeType
    //                 }
    //             },
    //             "LocationAddress": check response?.body?.BankBranchLocationReference?.BranchAddress?.LocationReference?.LocationAddress,
    //             "LocationName": {
    //                 "Name": check response?.body?.BankBranchLocationReference?.BranchAddress?.LocationReference?.LocationName?.Name
    //             },
    //             "LocationTimeZone": {
    //                 "Text": check response?.body?.BankBranchLocationReference?.BranchAddress?.LocationReference?.LocationTimeZone?.Text
    //             }
    //         }
    //     },
    //     "BranchName": {
    //         "Name": check response?.body?.BankBranchLocationReference?.BranchName?.Name
    //     }
    // },
    // "AccountType": check response?.body?.AccountType,
    // "AccountCurrency": {
    //     "AccountCurrencyType": check response?.body?.AccountCurrency?.AccountCurrencyType,
    //     "AccountCurrency": {
    //         "Currencycode": check response?.body?.AccountCurrency?.AccountCurrency?.Currencycode
    //     }
    // },
    // "TaxReference": {
    //     "IdentifierValue": {
    //         "Value": check response?.body?.TaxReference?.IdentifierValue?.Value
    //     },
    //     "IdentifierIssuerReference": {
    //         "PartyReference": check response?.body?.TaxReference?.IdentifierIssuerReference?.PartyReference,
    //         "InvolvementReference": check response?.body?.TaxReference?.IdentifierIssuerReference?.InvolvementReference
    //     },
    //     "IdentifierStartDate": {
    //         "DateTimeContent": {
    //             "Text": check response?.body?.TaxReference?.IdentifierStartDate?.DateTimeContent?.Text
    //         },
    //         "TimeZoneCode": {
    //             "Text": check response?.body?.TaxReference?.IdentifierStartDate?.TimeZoneCode?.Text
    //         },
    //         "DaylightSavingIndicator": {
    //             "Text": check response?.body?.TaxReference?.IdentifierStartDate?.DaylightSavingIndicator?.Text
    //         },
    //         "DateTimeType": check response?.body?.TaxReference?.IdentifierStartDate?.DateTimeType
    //     },
    //     "IdentifierEndDate": {
    //         "DateTimeContent": {
    //             "Text": check response?.body?.TaxReference?.IdentifierEndDate?.DateTimeContent?.Text
    //         },
    //         "TimeZoneCode": {
    //             "Text": check response?.body?.TaxReference?.IdentifierEndDate?.TimeZoneCode?.Text
    //         },
    //         "DaylightSavingIndicator": {
    //             "Text": check response?.body?.TaxReference?.IdentifierEndDate?.DaylightSavingIndicator?.Text
    //         },
    //         "DateTimeType": check response?.body?.TaxReference?.IdentifierEndDate?.DateTimeType
    //     }
    // },
    // "EntitlementOptionDefinition": {
    //     "ObligationOrEntitlementSubject": {
    //         "Subject": check response?.body?.EntitlementOptionDefinition?.ObligationOrEntitlementSubject?.Subject
    //     },
    //     "ObligationOrEntitlementType": check response?.body?.EntitlementOptionDefinition?.ObligationOrEntitlementType,
    //     "ObligationOrEntitlementModality": {
    //         "ServiceArrangementModalityType": check response?.body?.EntitlementOptionDefinition?.ObligationOrEntitlementModality?.ServiceArrangementModalityType
    //     },
    //     "ObligationOrEntitlementDefinition": {
    //         "Text": check response?.body?.EntitlementOptionDefinition?.ObligationOrEntitlementDefinition?.Text
    //     }
    // },
    // "EntitlementOptionSetting": {
    //     "ObligationOrEntitlementSubject": {
    //         "Subject": check response?.body?.EntitlementOptionSetting?.ObligationOrEntitlementSubject?.Subject
    //     },
    //     "ObligationOrEntitlementType": check response?.body?.EntitlementOptionSetting?.ObligationOrEntitlementType,
    //     "ObligationOrEntitlementModality": {
    //         "ServiceArrangementModalityType": check response?.body?.EntitlementOptionSetting?.ObligationOrEntitlementModality?.ServiceArrangementModalityType
    //     },
    //     "ObligationOrEntitlementDefinition": {
    //         "Text": check response?.body?.EntitlementOptionSetting?.ObligationOrEntitlementDefinition?.Text
    //     }
    // },
    // "RestrictionOptionDefinition": {
    //     "AccountRestrictionIdentifier": {
    //         "IdentifierValue": {
    //             "Value": check response?.body?.RestrictionOptionDefinition?.AccountRestrictionIdentifier?.IdentifierValue?.Value
    //         },
    //         "IdentifierIssuerReference": {
    //             "PartyReference": check response?.body?.RestrictionOptionDefinition?.AccountRestrictionIdentifier?.IdentifierIssuerReference?.PartyReference,
    //             "InvolvementReference": check response?.body?.RestrictionOptionDefinition?.AccountRestrictionIdentifier?.IdentifierIssuerReference?.InvolvementReference
    //         },
    //         "IdentifierStartDate": {
    //             "DateTimeContent": {
    //                 "Text": check response?.body?.RestrictionOptionDefinition?.AccountRestrictionIdentifier?.IdentifierStartDate?.DateTimeContent?.Text
    //             },
    //             "TimeZoneCode": {
    //                 "Text": check response?.body?.RestrictionOptionDefinition?.AccountRestrictionIdentifier?.IdentifierStartDate?.TimeZoneCode?.Text
    //             },
    //             "DaylightSavingIndicator": {
    //                 "Text": check response?.body?.RestrictionOptionDefinition?.AccountRestrictionIdentifier?.IdentifierStartDate?.DaylightSavingIndicator?.Text
    //             },
    //             "DateTimeType": check response?.body?.RestrictionOptionDefinition?.AccountRestrictionIdentifier?.IdentifierStartDate?.DateTimeType
    //         },
    //         "IdentifierEndDate": {
    //             "DateTimeContent": {
    //                 "Text": check response?.body?.RestrictionOptionDefinition?.AccountRestrictionIdentifier?.IdentifierEndDate?.DateTimeContent?.Text
    //             },
    //             "TimeZoneCode": {
    //                 "Text": check response?.body?.RestrictionOptionDefinition?.AccountRestrictionIdentifier?.IdentifierEndDate?.TimeZoneCode?.Text
    //             },
    //             "DaylightSavingIndicator": {
    //                 "Text": check response?.body?.RestrictionOptionDefinition?.AccountRestrictionIdentifier?.IdentifierEndDate?.DaylightSavingIndicator?.Text
    //             },
    //             "DateTimeType": check response?.body?.RestrictionOptionDefinition?.AccountRestrictionIdentifier?.IdentifierEndDate?.DateTimeType
    //         }
    //     },
    //     "AccountRestrictionType": {
    //         "Text": check response?.body?.RestrictionOptionDefinition?.AccountRestrictionType?.Text
    //     },
    //     "AccountRestrictionDescription": {
    //         "Text": check response?.body?.RestrictionOptionDefinition?.AccountRestrictionDescription?.Text
    //     },
    //     "AccountRestrictionValidityPeriod": {
    //         "FromDateTime": {
    //             "DateTimeContent": {
    //                 "Text": check response?.body?.RestrictionOptionDefinition?.AccountRestrictionValidityPeriod?.FromDateTime?.DateTimeContent?.Text
    //             },
    //             "TimeZoneCode": {
    //                 "Text": check response?.body?.RestrictionOptionDefinition?.AccountRestrictionValidityPeriod?.FromDateTime?.TimeZoneCode?.Text
    //             },
    //             "DaylightSavingIndicator": {
    //                 "Text": check response?.body?.RestrictionOptionDefinition?.AccountRestrictionValidityPeriod?.FromDateTime?.DaylightSavingIndicator?.Text
    //             },
    //             "DateTimeType": check response?.body?.RestrictionOptionDefinition?.AccountRestrictionValidityPeriod?.FromDateTime?.DateTimeType
    //         },
    //         "ToDateTime": {
    //             "DateTimeContent": {
    //                 "Text": check response?.body?.RestrictionOptionDefinition?.AccountRestrictionValidityPeriod?.ToDateTime?.DateTimeContent?.Text
    //             },
    //             "TimeZoneCode": {
    //                 "Text": check response?.body?.RestrictionOptionDefinition?.AccountRestrictionValidityPeriod?.ToDateTime?.TimeZoneCode?.Text
    //             },
    //             "DaylightSavingIndicator": {
    //                 "Text": check response?.body?.RestrictionOptionDefinition?.AccountRestrictionValidityPeriod?.ToDateTime?.DaylightSavingIndicator?.Text
    //             },
    //             "DateTimeType": check response?.body?.RestrictionOptionDefinition?.AccountRestrictionValidityPeriod?.ToDateTime?.DateTimeType
    //         }
    //     },
    //     "AccountRestrictionStatus": {
    //         "AccountRestrictionStatus": {
    //             "StatusReason": {
    //                 "Text": check response?.body?.RestrictionOptionDefinition?.AccountRestrictionStatus?.AccountRestrictionStatus?.StatusReason?.Text
    //             },
    //             "StatusDateTime": {
    //                 "DateTimeContent": {
    //                     "Text": check response?.body?.RestrictionOptionDefinition?.AccountRestrictionStatus?.AccountRestrictionStatus?.StatusDateTime?.DateTimeContent?.Text
    //                 },
    //                 "TimeZoneCode": {
    //                     "Text": check response?.body?.RestrictionOptionDefinition?.AccountRestrictionStatus?.AccountRestrictionStatus?.StatusDateTime?.TimeZoneCode?.Text
    //                 },
    //                 "DaylightSavingIndicator": {
    //                     "Text": check response?.body?.RestrictionOptionDefinition?.AccountRestrictionStatus?.AccountRestrictionStatus?.StatusDateTime?.DaylightSavingIndicator?.Text
    //                 },
    //                 "DateTimeType": check response?.body?.RestrictionOptionDefinition?.AccountRestrictionStatus?.AccountRestrictionStatus?.StatusDateTime?.DateTimeType
    //             },
    //             "StatusValidityPeriod": {
    //                 "FromDateTime": {
    //                     "DateTimeContent": {
    //                         "Text": check response?.body?.RestrictionOptionDefinition?.AccountRestrictionStatus?.AccountRestrictionStatus?.StatusValidityPeriod?.FromDateTime?.DateTimeContent?.Text
    //                     },
    //                     "TimeZoneCode": {
    //                         "Text": check response?.body?.RestrictionOptionDefinition?.AccountRestrictionStatus?.AccountRestrictionStatus?.StatusValidityPeriod?.FromDateTime?.TimeZoneCode?.Text
    //                     },
    //                     "DaylightSavingIndicator": {
    //                         "Text": check response?.body?.RestrictionOptionDefinition?.AccountRestrictionStatus?.AccountRestrictionStatus?.StatusValidityPeriod?.FromDateTime?.DaylightSavingIndicator?.Text
    //                     },
    //                     "DateTimeType": check response?.body?.RestrictionOptionDefinition?.AccountRestrictionStatus?.AccountRestrictionStatus?.StatusValidityPeriod?.FromDateTime?.DateTimeType
    //                 },
    //                 "ToDateTime": {
    //                     "DateTimeContent": {
    //                         "Text": check response?.body?.RestrictionOptionDefinition?.AccountRestrictionStatus?.AccountRestrictionStatus?.StatusValidityPeriod?.ToDateTime?.DateTimeContent?.Text
    //                     },
    //                     "TimeZoneCode": {
    //                         "Text": check response?.body?.RestrictionOptionDefinition?.AccountRestrictionStatus?.AccountRestrictionStatus?.StatusValidityPeriod?.ToDateTime?.TimeZoneCode?.Text
    //                     },
    //                     "DaylightSavingIndicator": {
    //                         "Text": check response?.body?.RestrictionOptionDefinition?.AccountRestrictionStatus?.AccountRestrictionStatus?.StatusValidityPeriod?.ToDateTime?.DaylightSavingIndicator?.Text
    //                     },
    //                     "DateTimeType": check response?.body?.RestrictionOptionDefinition?.AccountRestrictionStatus?.AccountRestrictionStatus?.StatusValidityPeriod?.ToDateTime?.DateTimeType
    //                 }
    //             },
    //             "StatusInvolvedPartyReference": {
    //                 "PartyReference": check response?.body?.RestrictionOptionDefinition?.AccountRestrictionStatus?.AccountRestrictionStatus?.StatusInvolvedPartyReference?.PartyReference,
    //                 "InvolvementReference": check response?.body?.RestrictionOptionDefinition?.AccountRestrictionStatus?.AccountRestrictionStatus?.StatusInvolvedPartyReference?.InvolvementReference
    //             }
    //         },
    //         "AccountRestrictionStatusType": check response?.body?.RestrictionOptionDefinition?.AccountRestrictionStatus?.AccountRestrictionStatusType
    //     },
    //     "AccountRestrictionRegulator": {
    //         "PartyReference": {
    //             "PartyName": {
    //                 "Name": check response?.body?.RestrictionOptionDefinition?.AccountRestrictionRegulator?.PartyReference?.PartyName?.Name
    //             },
    //             "PartyType": check response?.body?.RestrictionOptionDefinition?.AccountRestrictionRegulator?.PartyReference?.PartyType,
    //             "PartyDateTime": {
    //                 "DateTimeContent": {
    //                     "Text": check response?.body?.RestrictionOptionDefinition?.AccountRestrictionRegulator?.PartyReference?.PartyDateTime?.DateTimeContent?.Text
    //                 },
    //                 "TimeZoneCode": {
    //                     "Text": check response?.body?.RestrictionOptionDefinition?.AccountRestrictionRegulator?.PartyReference?.PartyDateTime?.TimeZoneCode?.Text
    //                 },
    //                 "DaylightSavingIndicator": {
    //                     "Text": check response?.body?.RestrictionOptionDefinition?.AccountRestrictionRegulator?.PartyReference?.PartyDateTime?.DaylightSavingIndicator?.Text
    //                 },
    //                 "DateTimeType": check response?.body?.RestrictionOptionDefinition?.AccountRestrictionRegulator?.PartyReference?.PartyDateTime?.DateTimeType
    //             },
    //             "PartyIdentification": {
    //                 "PartyIdentificationType": check response?.body?.RestrictionOptionDefinition?.AccountRestrictionRegulator?.PartyReference?.PartyIdentification?.PartyIdentificationType
    //                 // "PartyIdentification": "string"
    //             },
    //             "PartyLegalStructureType": check response?.body?.RestrictionOptionDefinition?.AccountRestrictionRegulator?.PartyReference?.PartyLegalStructureType
    //         },
    //         "PartyInvolvement": {
    //             "PartyRoleType": {
    //                 "Text": check response?.body?.RestrictionOptionDefinition?.AccountRestrictionRegulator?.PartyInvolvement?.PartyRoleType?.Text
    //             },
    //             "PartyRoleName": {
    //                 "Name": check response?.body?.RestrictionOptionDefinition?.AccountRestrictionRegulator?.PartyInvolvement?.PartyRoleName?.Name
    //             },
    //             "PartyRoleValidityPeriod": {
    //                 "FromDateTime": {
    //                     "DateTimeContent": {
    //                         "Text": check response?.body?.RestrictionOptionDefinition?.AccountRestrictionRegulator?.PartyInvolvement?.PartyRoleValidityPeriod?.FromDateTime?.DateTimeContent?.Text
    //                     },
    //                     "TimeZoneCode": {
    //                         "Text": check response?.body?.RestrictionOptionDefinition?.AccountRestrictionRegulator?.PartyInvolvement?.PartyRoleValidityPeriod?.FromDateTime?.TimeZoneCode?.Text
    //                     },
    //                     "DaylightSavingIndicator": {
    //                         "Text": check response?.body?.RestrictionOptionDefinition?.AccountRestrictionRegulator?.PartyInvolvement?.PartyRoleValidityPeriod?.FromDateTime?.DaylightSavingIndicator?.Text
    //                     },
    //                     "DateTimeType": check response?.body?.RestrictionOptionDefinition?.AccountRestrictionRegulator?.PartyInvolvement?.PartyRoleValidityPeriod?.FromDateTime?.DateTimeType
    //                 },
    //                 "ToDateTime": {
    //                     "DateTimeContent": {
    //                         "Text": check response?.body?.RestrictionOptionDefinition?.AccountRestrictionRegulator?.PartyInvolvement?.PartyRoleValidityPeriod?.ToDateTime?.DateTimeContent?.Text
    //                     },
    //                     "TimeZoneCode": {
    //                         "Text": check response?.body?.RestrictionOptionDefinition?.AccountRestrictionRegulator?.PartyInvolvement?.PartyRoleValidityPeriod?.ToDateTime?.TimeZoneCode?.Text
    //                     },
    //                     "DaylightSavingIndicator": {
    //                         "Text": check response?.body?.RestrictionOptionDefinition?.AccountRestrictionRegulator?.PartyInvolvement?.PartyRoleValidityPeriod?.ToDateTime?.DaylightSavingIndicator?.Text
    //                     },
    //                     "DateTimeType": check response?.body?.RestrictionOptionDefinition?.AccountRestrictionRegulator?.PartyInvolvement?.PartyRoleValidityPeriod?.ToDateTime?.DateTimeType
    //                 }
    //             },
    //             "PartyInvolvementType": check response?.body?.RestrictionOptionDefinition?.AccountRestrictionRegulator?.PartyInvolvement?.PartyInvolvementType
    //         }
    //     }
    // },
    // "RestrictionOptionSetting": {
    //     "AccountRestrictionIdentifier": {
    //         "IdentifierValue": {
    //             "Value": check response?.body?.RestrictionOptionSetting?.AccountRestrictionIdentifier?.IdentifierValue?.Value
    //         },
    //         "IdentifierIssuerReference": {
    //             "PartyReference": check response?.body?.RestrictionOptionSetting?.AccountRestrictionIdentifier?.IdentifierIssuerReference?.PartyReference,
    //             "InvolvementReference": check response?.body?.RestrictionOptionSetting?.AccountRestrictionIdentifier?.IdentifierIssuerReference?.InvolvementReference
    //         },
    //         "IdentifierStartDate": {
    //             "DateTimeContent": {
    //                 "Text": check response?.body?.RestrictionOptionSetting?.AccountRestrictionIdentifier?.IdentifierStartDate?.DateTimeContent?.Text
    //             },
    //             "TimeZoneCode": {
    //                 "Text": check response?.body?.RestrictionOptionSetting?.AccountRestrictionIdentifier?.IdentifierStartDate?.TimeZoneCode?.Text
    //             },
    //             "DaylightSavingIndicator": {
    //                 "Text": check response?.body?.RestrictionOptionSetting?.AccountRestrictionIdentifier?.IdentifierStartDate?.DaylightSavingIndicator?.Text
    //             },
    //             "DateTimeType": check response?.body?.RestrictionOptionSetting?.AccountRestrictionIdentifier?.IdentifierStartDate?.DateTimeType
    //         },
    //         "IdentifierEndDate": {
    //             "DateTimeContent": {
    //                 "Text": check response?.body?.RestrictionOptionSetting?.AccountRestrictionIdentifier?.IdentifierEndDate?.DateTimeContent?.Text
    //             },
    //             "TimeZoneCode": {
    //                 "Text": check response?.body?.RestrictionOptionSetting?.AccountRestrictionIdentifier?.IdentifierEndDate?.TimeZoneCode?.Text
    //             },
    //             "DaylightSavingIndicator": {
    //                 "Text": check response?.body?.RestrictionOptionSetting?.AccountRestrictionIdentifier?.IdentifierEndDate?.DaylightSavingIndicator?.Text
    //             },
    //             "DateTimeType": check response?.body?.RestrictionOptionSetting?.AccountRestrictionIdentifier?.IdentifierEndDate?.DateTimeType
    //         }
    //     },
    //     "AccountRestrictionType": {
    //         "Text": check response?.body?.RestrictionOptionSetting?.AccountRestrictionType?.Text
    //     },
    //     "AccountRestrictionDescription": {
    //         "Text": check response?.body?.RestrictionOptionSetting?.AccountRestrictionDescription?.Text
    //     },
    //     "AccountRestrictionValidityPeriod": {
    //         "FromDateTime": {
    //             "DateTimeContent": {
    //                 "Text": check response?.body?.RestrictionOptionSetting?.AccountRestrictionValidityPeriod?.FromDateTime?.DateTimeContent?.Text
    //             },
    //             "TimeZoneCode": {
    //                 "Text": check response?.body?.RestrictionOptionSetting?.AccountRestrictionValidityPeriod?.FromDateTime?.TimeZoneCode?.Text
    //             },
    //             "DaylightSavingIndicator": {
    //                 "Text": check response?.body?.RestrictionOptionSetting?.AccountRestrictionValidityPeriod?.FromDateTime?.DaylightSavingIndicator?.Text
    //             },
    //             "DateTimeType": check response?.body?.RestrictionOptionSetting?.AccountRestrictionValidityPeriod?.FromDateTime?.DateTimeType
    //         },
    //         "ToDateTime": {
    //             "DateTimeContent": {
    //                 "Text": check response?.body?.RestrictionOptionSetting?.AccountRestrictionValidityPeriod?.ToDateTime?.DateTimeContent?.Text
    //             },
    //             "TimeZoneCode": {
    //                 "Text": check response?.body?.RestrictionOptionSetting?.AccountRestrictionValidityPeriod?.ToDateTime?.TimeZoneCode?.Text
    //             },
    //             "DaylightSavingIndicator": {
    //                 "Text": check response?.body?.RestrictionOptionSetting?.AccountRestrictionValidityPeriod?.ToDateTime?.DaylightSavingIndicator?.Text
    //             },
    //             "DateTimeType": check response?.body?.RestrictionOptionSetting?.AccountRestrictionValidityPeriod?.ToDateTime?.DateTimeType
    //         }
    //     },
    //     "AccountRestrictionStatus": {
    //         "AccountRestrictionStatus": {
    //             "StatusReason": {
    //                 "Text": check response?.body?.RestrictionOptionSetting?.AccountRestrictionStatus?.AccountRestrictionStatus?.StatusReason?.Text
    //             },
    //             "StatusDateTime": {
    //                 "DateTimeContent": {
    //                     "Text": check response?.body?.RestrictionOptionSetting?.AccountRestrictionStatus?.AccountRestrictionStatus?.StatusDateTime?.DateTimeContent?.Text
    //                 },
    //                 "TimeZoneCode": {
    //                     "Text": check response?.body?.RestrictionOptionSetting?.AccountRestrictionStatus?.AccountRestrictionStatus?.StatusDateTime?.TimeZoneCode?.Text
    //                 },
    //                 "DaylightSavingIndicator": {
    //                     "Text": check response?.body?.RestrictionOptionSetting?.AccountRestrictionStatus?.AccountRestrictionStatus?.StatusDateTime?.DaylightSavingIndicator?.Text
    //                 },
    //                 "DateTimeType": check response?.body?.RestrictionOptionSetting?.AccountRestrictionStatus?.AccountRestrictionStatus?.StatusDateTime?.DateTimeType
    //             },
    //             "StatusValidityPeriod": {
    //                 "FromDateTime": {
    //                     "DateTimeContent": {
    //                         "Text": check response?.body?.RestrictionOptionSetting?.AccountRestrictionStatus?.AccountRestrictionStatus?.StatusValidityPeriod?.FromDateTime?.DateTimeContent?.Text
    //                     },
    //                     "TimeZoneCode": {
    //                         "Text": check response?.body?.RestrictionOptionSetting?.AccountRestrictionStatus?.AccountRestrictionStatus?.StatusValidityPeriod?.FromDateTime?.TimeZoneCode?.Text
    //                     },
    //                     "DaylightSavingIndicator": {
    //                         "Text": check response?.body?.RestrictionOptionSetting?.AccountRestrictionStatus?.AccountRestrictionStatus?.StatusValidityPeriod?.FromDateTime?.DaylightSavingIndicator?.Text
    //                     },
    //                     "DateTimeType": check response?.body?.RestrictionOptionSetting?.AccountRestrictionStatus?.AccountRestrictionStatus?.StatusValidityPeriod?.FromDateTime?.DateTimeType
    //                 },
    //                 "ToDateTime": {
    //                     "DateTimeContent": {
    //                         "Text": check response?.body?.RestrictionOptionSetting?.AccountRestrictionStatus?.AccountRestrictionStatus?.StatusValidityPeriod?.ToDateTime?.DateTimeContent?.Text
    //                     },
    //                     "TimeZoneCode": {
    //                         "Text": check response?.body?.RestrictionOptionSetting?.AccountRestrictionStatus?.AccountRestrictionStatus?.StatusValidityPeriod?.ToDateTime?.TimeZoneCode?.Text
    //                     },
    //                     "DaylightSavingIndicator": {
    //                         "Text": check response?.body?.RestrictionOptionSetting?.AccountRestrictionStatus?.AccountRestrictionStatus?.StatusValidityPeriod?.ToDateTime?.DaylightSavingIndicator?.Text
    //                     },
    //                     "DateTimeType": check response?.body?.RestrictionOptionSetting?.AccountRestrictionStatus?.AccountRestrictionStatus?.StatusValidityPeriod?.ToDateTime?.DateTimeType
    //                 }
    //             },
    //             "StatusInvolvedPartyReference": {
    //                 "PartyReference": check response?.body?.RestrictionOptionSetting?.AccountRestrictionStatus?.AccountRestrictionStatus?.StatusInvolvedPartyReference?.PartyReference,
    //                 "InvolvementReference": check response?.body?.RestrictionOptionSetting?.AccountRestrictionStatus?.AccountRestrictionStatus?.StatusInvolvedPartyReference?.InvolvementReference
    //             }
    //         },
    //         "AccountRestrictionStatusType": check response?.body?.RestrictionOptionSetting?.AccountRestrictionStatus?.AccountRestrictionStatusType
    //     },
    //     "AccountRestrictionRegulator": {
    //         "PartyReference": {
    //             "PartyName": {
    //                 "Name": check response?.body?.RestrictionOptionSetting?.AccountRestrictionRegulator?.PartyReference?.PartyName?.Name
    //             },
    //             "PartyType": check response?.body?.RestrictionOptionSetting?.AccountRestrictionRegulator?.PartyReference?.PartyType,
    //             "PartyDateTime": {
    //                 "DateTimeContent": {
    //                     "Text": check response?.body?.RestrictionOptionSetting?.AccountRestrictionRegulator?.PartyReference?.PartyDateTime?.DateTimeContent?.Text
    //                 },
    //                 "TimeZoneCode": {
    //                     "Text": check response?.body?.RestrictionOptionSetting?.AccountRestrictionRegulator?.PartyReference?.PartyDateTime?.TimeZoneCode?.Text
    //                 },
    //                 "DaylightSavingIndicator": {
    //                     "Text": check response?.body?.RestrictionOptionSetting?.AccountRestrictionRegulator?.PartyReference?.PartyDateTime?.DaylightSavingIndicator?.Text
    //                 },
    //                 "DateTimeType": check response?.body?.RestrictionOptionSetting?.AccountRestrictionRegulator?.PartyReference?.PartyDateTime?.DateTimeType
    //             },
    //             "PartyIdentification": {
    //                 "PartyIdentificationType": check response?.body?.RestrictionOptionSetting?.AccountRestrictionRegulator?.PartyReference?.PartyIdentification?.PartyIdentificationType
    //                 // "PartyIdentification": "string"
    //             },
    //             "PartyLegalStructureType": check response?.body?.RestrictionOptionSetting?.AccountRestrictionRegulator?.PartyReference?.PartyLegalStructureType
    //         },
    //         "PartyInvolvement": {
    //             "PartyRoleType": {
    //                 "Text": check response?.body?.RestrictionOptionSetting?.AccountRestrictionRegulator?.PartyInvolvement?.PartyRoleType?.Text
    //             },
    //             "PartyRoleName": {
    //                 "Name": check response?.body?.RestrictionOptionSetting?.AccountRestrictionRegulator?.PartyInvolvement?.PartyRoleName?.Name
    //             },
    //             "PartyRoleValidityPeriod": {
    //                 "FromDateTime": {
    //                     "DateTimeContent": {
    //                         "Text": check response?.body?.RestrictionOptionSetting?.AccountRestrictionRegulator?.PartyInvolvement?.PartyRoleValidityPeriod?.FromDateTime?.DateTimeContent?.Text
    //                     },
    //                     "TimeZoneCode": {
    //                         "Text": check response?.body?.RestrictionOptionSetting?.AccountRestrictionRegulator?.PartyInvolvement?.PartyRoleValidityPeriod?.FromDateTime?.TimeZoneCode?.Text
    //                     },
    //                     "DaylightSavingIndicator": {
    //                         "Text": check response?.body?.RestrictionOptionSetting?.AccountRestrictionRegulator?.PartyInvolvement?.PartyRoleValidityPeriod?.FromDateTime?.DaylightSavingIndicator?.Text
    //                     },
    //                     "DateTimeType": check response?.body?.RestrictionOptionSetting?.AccountRestrictionRegulator?.PartyInvolvement?.PartyRoleValidityPeriod?.FromDateTime?.DateTimeType
    //                 },
    //                 "ToDateTime": {
    //                     "DateTimeContent": {
    //                         "Text": check response?.body?.RestrictionOptionSetting?.AccountRestrictionRegulator?.PartyInvolvement?.PartyRoleValidityPeriod?.ToDateTime?.DateTimeContent?.Text
    //                     },
    //                     "TimeZoneCode": {
    //                         "Text": check response?.body?.RestrictionOptionSetting?.AccountRestrictionRegulator?.PartyInvolvement?.PartyRoleValidityPeriod?.ToDateTime?.TimeZoneCode?.Text
    //                     },
    //                     "DaylightSavingIndicator": {
    //                         "Text": check response?.body?.RestrictionOptionSetting?.AccountRestrictionRegulator?.PartyInvolvement?.PartyRoleValidityPeriod?.ToDateTime?.DaylightSavingIndicator?.Text
    //                     },
    //                     "DateTimeType": check response?.body?.RestrictionOptionSetting?.AccountRestrictionRegulator?.PartyInvolvement?.PartyRoleValidityPeriod?.ToDateTime?.DateTimeType
    //                 }
    //             },
    //             "PartyInvolvementType": check response?.body?.RestrictionOptionSetting?.AccountRestrictionRegulator?.PartyInvolvement?.PartyInvolvementType
    //         }
    //     }
    // },
    // "Associations": {
    //     "AccountInvolvementType": check response?.body?.Associations?.AccountInvolvementType,
    //     "AccountReference": {
    //         "AccountStatus": {
    //             "AccountStatus": {
    //                 "StatusReason": {
    //                     "Text": check response?.body?.Associations?.AccountReference?.AccountStatus?.AccountStatus?.StatusReason?.Text
    //                 },
    //                 "StatusDateTime": {
    //                     "DateTimeContent": {
    //                         "Text": check response?.body?.Associations?.AccountReference?.AccountStatus?.AccountStatus?.StatusDateTime?.DateTimeContent?.Text
    //                     },
    //                     "TimeZoneCode": {
    //                         "Text": check response?.body?.Associations?.AccountReference?.AccountStatus?.AccountStatus?.StatusDateTime?.TimeZoneCode?.Text
    //                     },
    //                     "DaylightSavingIndicator": {
    //                         "Text": check response?.body?.Associations?.AccountReference?.AccountStatus?.AccountStatus?.StatusDateTime?.DaylightSavingIndicator?.Text
    //                     },
    //                     "DateTimeType": check response?.body?.Associations?.AccountReference?.AccountStatus?.AccountStatus?.StatusDateTime?.DateTimeType
    //                 },
    //                 "StatusValidityPeriod": {
    //                     "FromDateTime": {
    //                         "DateTimeContent": {
    //                             "Text": check response?.body?.Associations?.AccountReference?.AccountStatus?.AccountStatus?.StatusValidityPeriod?.FromDateTime?.DateTimeContent?.Text
    //                         },
    //                         "TimeZoneCode": {
    //                             "Text": check response?.body?.Associations?.AccountReference?.AccountStatus?.AccountStatus?.StatusValidityPeriod?.FromDateTime?.TimeZoneCode?.Text
    //                         },
    //                         "DaylightSavingIndicator": {
    //                             "Text": check response?.body?.Associations?.AccountReference?.AccountStatus?.AccountStatus?.StatusValidityPeriod?.FromDateTime?.DaylightSavingIndicator?.Text
    //                         },
    //                         "DateTimeType": check response?.body?.Associations?.AccountReference?.AccountStatus?.AccountStatus?.StatusValidityPeriod?.FromDateTime?.DateTimeType
    //                     },
    //                     "ToDateTime": {
    //                         "DateTimeContent": {
    //                             "Text": check response?.body?.Associations?.AccountReference?.AccountStatus?.AccountStatus?.StatusValidityPeriod?.ToDateTime?.DateTimeContent?.Text
    //                         },
    //                         "TimeZoneCode": {
    //                             "Text": check response?.body?.Associations?.AccountReference?.AccountStatus?.AccountStatus?.StatusValidityPeriod?.ToDateTime?.TimeZoneCode?.Text
    //                         },
    //                         "DaylightSavingIndicator": {
    //                             "Text": check response?.body?.Associations?.AccountReference?.AccountStatus?.AccountStatus?.StatusValidityPeriod?.ToDateTime?.DaylightSavingIndicator?.Text
    //                         },
    //                         "DateTimeType": check response?.body?.Associations?.AccountReference?.AccountStatus?.AccountStatus?.StatusValidityPeriod?.ToDateTime?.DateTimeType
    //                     }
    //                 },
    //                 "StatusInvolvedPartyReference": {
    //                     "PartyReference": check response?.body?.Associations?.AccountReference?.AccountStatus?.AccountStatus?.StatusInvolvedPartyReference?.PartyReference,
    //                     "InvolvementReference": check response?.body?.Associations?.AccountReference?.AccountStatus?.AccountStatus?.StatusInvolvedPartyReference?.InvolvementReference
    //                 }
    //             },
    //             "AccountStatusType": check response?.body?.Associations?.AccountReference?.AccountStatus?.AccountStatusType
    //         },
    //         "AccountIdentification": {
    //             "AccountIdentificationType": check response?.body?.Associations?.AccountReference?.AccountIdentification?.AccountIdentificationType,
    //             "AccountIdentification": {
    //                 "IdentifierValue": {
    //                     "Value": check response?.body?.Associations?.AccountReference?.AccountIdentification?.AccountIdentification?.IdentifierValue?.Value
    //                 },
    //                 "IdentifierIssuerReference": {
    //                     "PartyReference": check response?.body?.Associations?.AccountReference?.AccountIdentification?.AccountIdentification?.IdentifierIssuerReference?.PartyReference,
    //                     "InvolvementReference": check response?.body?.Associations?.AccountReference?.AccountIdentification?.AccountIdentification?.IdentifierIssuerReference?.InvolvementReference
    //                 },
    //                 "IdentifierStartDate": {
    //                     "DateTimeContent": {
    //                         "Text": check response?.body?.Associations?.AccountReference?.AccountIdentification?.AccountIdentification?.IdentifierStartDate?.DateTimeContent?.Text
    //                     },
    //                     "TimeZoneCode": {
    //                         "Text": check response?.body?.Associations?.AccountReference?.AccountIdentification?.AccountIdentification?.IdentifierStartDate?.TimeZoneCode?.Text
    //                     },
    //                     "DaylightSavingIndicator": {
    //                         "Text": check response?.body?.Associations?.AccountReference?.AccountIdentification?.AccountIdentification?.IdentifierStartDate?.DaylightSavingIndicator?.Text
    //                     },
    //                     "DateTimeType": check response?.body?.Associations?.AccountReference?.AccountIdentification?.AccountIdentification?.IdentifierStartDate?.DateTimeType
    //                 },
    //                 "IdentifierEndDate": {
    //                     "DateTimeContent": {
    //                         "Text": check response?.body?.Associations?.AccountReference?.AccountIdentification?.AccountIdentification?.IdentifierEndDate?.DateTimeContent?.Text
    //                     },
    //                     "TimeZoneCode": {
    //                         "Text": check response?.body?.Associations?.AccountReference?.AccountIdentification?.AccountIdentification?.IdentifierEndDate?.TimeZoneCode?.Text
    //                     },
    //                     "DaylightSavingIndicator": {
    //                         "Text": check response?.body?.Associations?.AccountReference?.AccountIdentification?.AccountIdentification?.IdentifierEndDate?.DaylightSavingIndicator?.Text
    //                     },
    //                     "DateTimeType": check response?.body?.Associations?.AccountReference?.AccountIdentification?.AccountIdentification?.IdentifierEndDate?.DateTimeType
    //                 }
    //             }
    //         },
    //         "AccountDate": {
    //             "AccountDateType": check response?.body?.Associations?.AccountReference?.AccountDate?.AccountDateType,
    //             "AccountDate": {
    //                 "DateTimeContent": {
    //                     "Text": check response?.body?.Associations?.AccountReference?.AccountDate?.AccountDate?.DateTimeContent?.Text
    //                 },
    //                 "TimeZoneCode": {
    //                     "Text": check response?.body?.Associations?.AccountReference?.AccountDate?.AccountDate?.TimeZoneCode?.Text
    //                 },
    //                 "DaylightSavingIndicator": {
    //                     "Text": check response?.body?.Associations?.AccountReference?.AccountDate?.AccountDate?.DaylightSavingIndicator?.Text
    //                 },
    //                 "DateTimeType": check response?.body?.Associations?.AccountReference?.AccountDate?.AccountDate?.DateTimeType
    //             }
    //         },
    //         "AccountType": check response?.body?.Associations?.AccountReference?.AccountType,
    //         "AccountPurpose": {
    //             "Text": check response?.body?.Associations?.AccountReference?.AccountPurpose?.Text
    //         },
    //         "AccountBalance": {
    //             "BalanceAmount": {
    //                 "AmountValue": {
    //                     "Value": check response?.body?.Associations?.AccountReference?.AccountBalance?.BalanceAmount?.AmountValue?.Value
    //                 },
    //                 "AmountCurrency": {
    //                     "Currencycode": check response?.body?.Associations?.AccountReference?.AccountBalance?.BalanceAmount?.AmountCurrency?.Currencycode
    //                 },
    //                 "DecimalPointPosition": {
    //                     "Text": check response?.body?.Associations?.AccountReference?.AccountBalance?.BalanceAmount?.DecimalPointPosition?.Text
    //                 },
    //                 "AmountType": check response?.body?.Associations?.AccountReference?.AccountBalance?.BalanceAmount?.AmountType
    //             },
    //             "BalanceType": check response?.body?.Associations?.AccountReference?.AccountBalance?.BalanceType,
    //             "BalanceValueDate": {
    //                 "DateTimeContent": {
    //                     "Text": check response?.body?.Associations?.AccountReference?.AccountBalance?.BalanceValueDate?.DateTimeContent?.Text
    //                 },
    //                 "TimeZoneCode": {
    //                     "Text": check response?.body?.Associations?.AccountReference?.AccountBalance?.BalanceValueDate?.TimeZoneCode?.Text
    //                 },
    //                 "DaylightSavingIndicator": {
    //                     "Text": check response?.body?.Associations?.AccountReference?.AccountBalance?.BalanceValueDate?.DaylightSavingIndicator?.Text
    //                 },
    //                 "DateTimeType": check response?.body?.Associations?.AccountReference?.AccountBalance?.BalanceValueDate?.DateTimeType
    //             },
    //             "BalanceIndicator": check response?.body?.Associations?.AccountReference?.AccountBalance?.BalanceIndicator,
    //             "BalanceCounterpartyType": check response?.body?.Associations?.AccountReference?.AccountBalance?.BalanceCounterpartyType,
    //             "BalanceCalculationDate": {
    //                 "DateTimeContent": {
    //                     "Text": check response?.body?.Associations?.AccountReference?.AccountBalance?.BalanceCalculationDate?.DateTimeContent?.Text
    //                 },
    //                 "TimeZoneCode": {
    //                     "Text": check response?.body?.Associations?.AccountReference?.AccountBalance?.BalanceCalculationDate?.TimeZoneCode?.Text
    //                 },
    //                 "DaylightSavingIndicator": {
    //                     "Text": check response?.body?.Associations?.AccountReference?.AccountBalance?.BalanceCalculationDate?.DaylightSavingIndicator?.Text
    //                 },
    //                 "DateTimeType": check response?.body?.Associations?.AccountReference?.AccountBalance?.BalanceCalculationDate?.DateTimeType
    //             },
    //             "BalanceSubType": check response?.body?.Associations?.AccountReference?.AccountBalance?.BalanceSubType
    //         },
    //         "AccountCurrency": {
    //             "AccountCurrencyType": check response?.body?.Associations?.AccountReference?.AccountCurrency?.AccountCurrencyType,
    //             "AccountCurrency": {
    //                 "Currencycode": check response?.body?.Associations?.AccountReference?.AccountCurrency?.AccountCurrency?.Currencycode
    //             }
    //         },
    //         "AccountDescription": {
    //             "Text": check response?.body?.Associations?.AccountReference?.AccountDescription?.Text
    //         },
    //         "AccountName": {
    //             "Name": check response?.body?.Associations?.AccountReference?.AccountName?.Name
    //         }
    //     },
    //     "PartyReference": {
    //         "PartyName": {
    //             "Name": check response?.body?.Associations?.PartyReference?.PartyName?.Name
    //         },
    //         "PartyType": check response?.body?.Associations?.PartyReference?.PartyType,
    //         "PartyDateTime": {
    //             "DateTimeContent": {
    //                 "Text": check response?.body?.Associations?.PartyReference?.PartyDateTime?.DateTimeContent?.Text
    //             },
    //             "TimeZoneCode": {
    //                 "Text": check response?.body?.Associations?.PartyReference?.PartyDateTime?.TimeZoneCode?.Text
    //             },
    //             "DaylightSavingIndicator": {
    //                 "Text": check response?.body?.Associations?.PartyReference?.PartyDateTime?.DaylightSavingIndicator?.Text
    //             },
    //             "DateTimeType": check response?.body?.Associations?.PartyReference?.PartyDateTime?.DateTimeType
    //         },
    //         "PartyIdentification": {
    //             "PartyIdentificationType": check response?.body?.Associations?.PartyReference?.PartyIdentification?.PartyIdentificationType
    //             // "PartyIdentification": "string"
    //         },
    //         "PartyLegalStructureType": check response?.body?.Associations?.PartyReference?.PartyLegalStructureType
    //     }
    // },
    // "AssociationType": check response?.body?.AssociationType,
    // "AssociationObligationEntitlement": {
    //     "ObligationOrEntitlementSubject": {
    //         "Subject": check response?.body?.AssociationObligationEntitlement?.ObligationOrEntitlementSubject?.Subject
    //     },
    //     "ObligationOrEntitlementType": check response?.body?.AssociationObligationEntitlement?.ObligationOrEntitlementType,
    //     "ObligationOrEntitlementModality": {
    //         "ServiceArrangementModalityType": check response?.body?.AssociationObligationEntitlement?.ObligationOrEntitlementModality?.ServiceArrangementModalityType
    //     },
    //     "ObligationOrEntitlementDefinition": {
    //         "Text": check response?.body?.AssociationObligationEntitlement?.ObligationOrEntitlementDefinition?.Text
    //     }
    // },
    // "AssociationReference": {
    //     "PartyName": {
    //         "Name": check response?.body?.AssociationReference?.PartyName?.Name
    //     },
    //     "PartyType": check response?.body?.AssociationReference?.PartyType,
    //     "PartyDateTime": {
    //         "DateTimeContent": {
    //             "Text": check response?.body?.AssociationReference?.PartyDateTime?.DateTimeContent?.Text
    //         },
    //         "TimeZoneCode": {
    //             "Text": check response?.body?.AssociationReference?.PartyDateTime?.TimeZoneCode?.Text
    //         },
    //         "DaylightSavingIndicator": {
    //             "Text": check response?.body?.AssociationReference?.PartyDateTime?.DaylightSavingIndicator?.Text
    //         },
    //         "DateTimeType": check response?.body?.AssociationReference?.PartyDateTime?.DateTimeType
    //     },
    //     "PartyIdentification": {
    //         "PartyIdentificationType": check response?.body?.AssociationReference?.PartyIdentification?.PartyIdentificationType
    //         // "PartyIdentification": "string"
    //     },
    //     "PartyLegalStructureType": check response?.body?.AssociationReference?.PartyLegalStructureType
    // },
    // "LinkedAccounts": {
    //     "AccountStatus": {
    //         "AccountStatus": {
    //             "StatusReason": check response?.body?.LinkedAccounts?.AccountStatus?.AccountStatus?.StatusReason,
    //             "StatusDateTime": {
    //                 "DateTimeContent": check response?.body?.LinkedAccounts?.AccountStatus?.AccountStatus?.StatusDateTime?.DateTimeContent,
    //                 "TimeZoneCode": check response?.body?.LinkedAccounts?.AccountStatus?.AccountStatus?.StatusDateTime?.TimeZoneCode,
    //                 "DaylightSavingIndicator": check response?.body?.LinkedAccounts?.AccountStatus?.AccountStatus?.StatusDateTime?.DaylightSavingIndicator,
    //                 "DateTimeType": check response?.body?.LinkedAccounts?.AccountStatus?.AccountStatus?.StatusDateTime?.DateTimeType
    //             },
    //             "StatusValidityPeriod": {
    //                 "FromDateTime": {
    //                     "DateTimeContent": check response?.body?.LinkedAccounts?.AccountStatus?.AccountStatus?.StatusValidityPeriod?.FromDateTime?.DateTimeContent,
    //                     "TimeZoneCode": check response?.body?.LinkedAccounts?.AccountStatus?.AccountStatus?.StatusValidityPeriod?.FromDateTime?.TimeZoneCode,
    //                     "DaylightSavingIndicator": check response?.body?.LinkedAccounts?.AccountStatus?.AccountStatus?.StatusValidityPeriod?.FromDateTime?.DaylightSavingIndicator,
    //                     "DateTimeType": check response?.body?.LinkedAccounts?.AccountStatus?.AccountStatus?.StatusValidityPeriod?.FromDateTime?.DateTimeType
    //                 },
    //                 "ToDateTime": {
    //                     "DateTimeContent": check response?.body?.LinkedAccounts?.AccountStatus?.AccountStatus?.StatusValidityPeriod?.ToDateTime?.DateTimeContent,
    //                     "TimeZoneCode": check response?.body?.LinkedAccounts?.AccountStatus?.AccountStatus?.StatusValidityPeriod?.ToDateTime?.TimeZoneCode,
    //                     "DaylightSavingIndicator": check response?.body?.LinkedAccounts?.AccountStatus?.AccountStatus?.StatusValidityPeriod?.ToDateTime?.DaylightSavingIndicator,
    //                     "DateTimeType": check response?.body?.LinkedAccounts?.AccountStatus?.AccountStatus?.StatusValidityPeriod?.ToDateTime?.DateTimeType
    //                 }
    //             },
    //             "StatusInvolvedPartyReference": {
    //                 "PartyReference": check response?.body?.LinkedAccounts?.AccountStatus?.AccountStatus?.StatusInvolvedPartyReference?.PartyReference,
    //                 "InvolvementReference": check response?.body?.LinkedAccounts?.AccountStatus?.AccountStatus?.StatusInvolvedPartyReference?.InvolvementReference
    //             }
    //         },
    //         "AccountStatusType": check response?.body?.LinkedAccounts?.AccountStatus?.AccountStatusType
    //     },
    //     "AccountIdentification": {
    //         "AccountIdentificationType": check response?.body?.LinkedAccounts?.AccountIdentification?.AccountIdentificationType,
    //         "AccountIdentification": {
    //             "IdentifierValue": check response?.body?.LinkedAccounts?.AccountIdentification?.AccountIdentification?.IdentifierValue,
    //             "IdentifierIssuerReference": {
    //                 "PartyReference": check response?.body?.LinkedAccounts?.AccountIdentification?.AccountIdentification?.IdentifierIssuerReference?.PartyReference,
    //                 "InvolvementReference": check response?.body?.LinkedAccounts?.AccountIdentification?.AccountIdentification?.IdentifierIssuerReference?.InvolvementReference
    //             },
    //             "IdentifierStartDate": {
    //                 "DateTimeContent": check response?.body?.LinkedAccounts?.AccountIdentification?.AccountIdentification?.IdentifierStartDate?.DateTimeContent,
    //                 "TimeZoneCode": check response?.body?.LinkedAccounts?.AccountIdentification?.AccountIdentification?.IdentifierStartDate?.TimeZoneCode,
    //                 "DaylightSavingIndicator": check response?.body?.LinkedAccounts?.AccountIdentification?.AccountIdentification?.IdentifierStartDate?.DaylightSavingIndicator,
    //                 "DateTimeType": check response?.body?.LinkedAccounts?.AccountIdentification?.AccountIdentification?.IdentifierStartDate?.DateTimeType
    //             },
    //             "IdentifierEndDate": {
    //                 "DateTimeContent": check response?.body?.LinkedAccounts?.AccountIdentification?.AccountIdentification?.IdentifierEndDate?.DateTimeContent,
    //                 "TimeZoneCode": check response?.body?.LinkedAccounts?.AccountIdentification?.AccountIdentification?.IdentifierEndDate?.TimeZoneCode,
    //                 "DaylightSavingIndicator": check response?.body?.LinkedAccounts?.AccountIdentification?.AccountIdentification?.IdentifierEndDate?.DaylightSavingIndicator,
    //                 "DateTimeType": check response?.body?.LinkedAccounts?.AccountIdentification?.AccountIdentification?.IdentifierEndDate?.DateTimeType
    //             }
    //         }
    //     },
    //     "AccountDate": {
    //         "AccountDateType": check response?.body?.LinkedAccounts?.AccountDate?.AccountDateType,
    //         "AccountDate": {
    //             "DateTimeContent": check response?.body?.LinkedAccounts?.AccountDate?.AccountDate?.DateTimeContent,
    //             "TimeZoneCode": check response?.body?.LinkedAccounts?.AccountDate?.AccountDate?.TimeZoneCode,
    //             "DaylightSavingIndicator": check response?.body?.LinkedAccounts?.AccountDate?.AccountDate?.DaylightSavingIndicator,
    //             "DateTimeType": check response?.body?.LinkedAccounts?.AccountDate?.AccountDate?.DateTimeType
    //         }
    //     },
    //     "AccountType": check response?.body?.LinkedAccounts?.AccountType,
    //     "AccountPurpose": check response?.body?.LinkedAccounts?.AccountPurpose,
    //     "AccountBalance": {
    //         "BalanceAmount": {
    //             "AmountValue": check response?.body?.LinkedAccounts?.AccountBalance?.BalanceAmount?.AmountValue,
    //             "AmountCurrency": {
    //                 "Currencycode": check response?.body?.LinkedAccounts?.AccountBalance?.BalanceAmount?.AmountCurrency?.Currencycode
    //             },
    //             "DecimalPointPosition": check response?.body?.LinkedAccounts?.AccountBalance?.BalanceAmount?.DecimalPointPosition,
    //             "AmountType": check response?.body?.LinkedAccounts?.AccountBalance?.BalanceAmount?.AmountType
    //         },
    //         "BalanceType": check response?.body?.LinkedAccounts?.AccountBalance?.BalanceType,
    //         "BalanceValueDate": {
    //             "DateTimeContent": check response?.body?.LinkedAccounts?.AccountBalance?.BalanceValueDate?.DateTimeContent,
    //             "TimeZoneCode": check response?.body?.LinkedAccounts?.AccountBalance?.BalanceValueDate?.TimeZoneCode,
    //             "DaylightSavingIndicator": check response?.body?.LinkedAccounts?.AccountBalance?.BalanceValueDate?.DaylightSavingIndicator,
    //             "DateTimeType": check response?.body?.LinkedAccounts?.AccountBalance?.BalanceValueDate?.DateTimeType
    //         },
    //         "BalanceIndicator": check response?.body?.LinkedAccounts?.AccountBalance?.BalanceIndicator,
    //         "BalanceCounterpartyType": check response?.body?.LinkedAccounts?.AccountBalance?.BalanceCounterpartyType,
    //         "BalanceCalculationDate": {
    //             "DateTimeContent": check response?.body?.LinkedAccounts?.AccountBalance?.BalanceCalculationDate?.DateTimeContent,
    //             "TimeZoneCode": check response?.body?.LinkedAccounts?.AccountBalance?.BalanceCalculationDate?.TimeZoneCode,
    //             "DaylightSavingIndicator": check response?.body?.LinkedAccounts?.AccountBalance?.BalanceCalculationDate?.DaylightSavingIndicator,
    //             "DateTimeType": check response?.body?.LinkedAccounts?.AccountBalance?.BalanceCalculationDate?.DateTimeType
    //         },
    //         "BalanceSubType": check response?.body?.LinkedAccounts?.AccountBalance?.BalanceSubType
    //     },
    //     "AccountCurrency": {
    //         "AccountCurrencyType": check response?.body?.LinkedAccounts?.AccountCurrency?.AccountCurrencyType,
    //         "AccountCurrency": {
    //             "Currencycode": check response?.body?.LinkedAccounts?.AccountCurrency?.AccountCurrency?.Currencycode
    //         }
    //     },
    //     "AccountDescription": check response?.body?.LinkedAccounts?.AccountDescription,
    //     "AccountName": {
    //         "Name": check response?.body?.LinkedAccounts?.AccountName?.Name
    //     }
    // },
    // "LinkType": check response?.body?.LinkType,
    // "AccountDetails": {
    //     "AccountStatus": {
    //         "AccountStatus": {
    //             "StatusReason": check response?.body?.AccountDetails?.AccountStatus?.AccountStatus?.StatusReason,
    //             "StatusDateTime": {
    //                 "DateTimeContent": check response?.body?.AccountDetails?.AccountStatus?.AccountStatus?.StatusDateTime?.DateTimeContent,
    //                 "TimeZoneCode": check response?.body?.AccountDetails?.AccountStatus?.AccountStatus?.StatusDateTime?.TimeZoneCode,
    //                 "DaylightSavingIndicator": check response?.body?.AccountDetails?.AccountStatus?.AccountStatus?.StatusDateTime?.DaylightSavingIndicator,
    //                 "DateTimeType": check response?.body?.AccountDetails?.AccountStatus?.AccountStatus?.StatusDateTime?.DateTimeType
    //             },
    //             "StatusValidityPeriod": {
    //                 "FromDateTime": {
    //                     "DateTimeContent": check response?.body?.AccountDetails?.AccountStatus?.AccountStatus?.StatusValidityPeriod?.FromDateTime?.DateTimeContent,
    //                     "TimeZoneCode": check response?.body?.AccountDetails?.AccountStatus?.AccountStatus?.StatusValidityPeriod?.FromDateTime?.TimeZoneCode,
    //                     "DaylightSavingIndicator": check response?.body?.AccountDetails?.AccountStatus?.AccountStatus?.StatusValidityPeriod?.FromDateTime?.DaylightSavingIndicator,
    //                     "DateTimeType": check response?.body?.AccountDetails?.AccountStatus?.AccountStatus?.StatusValidityPeriod?.FromDateTime?.DateTimeType
    //                 },
    //                 "ToDateTime": {
    //                     "DateTimeContent": check response?.body?.AccountDetails?.AccountStatus?.AccountStatus?.StatusValidityPeriod?.ToDateTime?.DateTimeContent,
    //                     "TimeZoneCode": check response?.body?.AccountDetails?.AccountStatus?.AccountStatus?.StatusValidityPeriod?.ToDateTime?.TimeZoneCode,
    //                     "DaylightSavingIndicator": check response?.body?.AccountDetails?.AccountStatus?.AccountStatus?.StatusValidityPeriod?.ToDateTime?.DaylightSavingIndicator,
    //                     "DateTimeType": check response?.body?.AccountDetails?.AccountStatus?.AccountStatus?.StatusValidityPeriod?.ToDateTime?.DateTimeType
    //                 }
    //             },
    //             "StatusInvolvedPartyReference": {
    //                 "PartyReference": check response?.body?.AccountDetails?.AccountStatus?.AccountStatus?.StatusInvolvedPartyReference?.PartyReference,
    //                 "InvolvementReference": check response?.body?.AccountDetails?.AccountStatus?.AccountStatus?.StatusInvolvedPartyReference?.InvolvementReference
    //             }
    //         },
    //         "AccountStatusType": check response?.body?.AccountDetails?.AccountStatus?.AccountStatusType
    //     },
    //     "AccountIdentification": {
    //         "AccountIdentificationType": check response?.body?.AccountDetails?.AccountIdentification?.AccountIdentificationType,
    //         "AccountIdentification": {
    //             "IdentifierValue": check response?.body?.AccountDetails?.AccountIdentification?.AccountIdentification?.IdentifierValue,
    //             "IdentifierIssuerReference": {
    //                 "PartyReference": check response?.body?.AccountDetails?.AccountIdentification?.AccountIdentification?.IdentifierIssuerReference?.PartyReference,
    //                 "InvolvementReference": check response?.body?.AccountDetails?.AccountIdentification?.AccountIdentification?.IdentifierIssuerReference?.InvolvementReference
    //             },
    //             "IdentifierStartDate": {
    //                 "DateTimeContent": check response?.body?.AccountDetails?.AccountIdentification?.AccountIdentification?.IdentifierStartDate?.DateTimeContent,
    //                 "TimeZoneCode": check response?.body?.AccountDetails?.AccountIdentification?.AccountIdentification?.IdentifierStartDate?.TimeZoneCode,
    //                 "DaylightSavingIndicator": check response?.body?.AccountDetails?.AccountIdentification?.AccountIdentification?.IdentifierStartDate?.DaylightSavingIndicator,
    //                 "DateTimeType": check response?.body?.AccountDetails?.AccountIdentification?.AccountIdentification?.IdentifierStartDate?.DateTimeType
    //             },
    //             "IdentifierEndDate": {
    //                 "DateTimeContent": check response?.body?.AccountDetails?.AccountIdentification?.AccountIdentification?.IdentifierEndDate?.DateTimeContent,
    //                 "TimeZoneCode": check response?.body?.AccountDetails?.AccountIdentification?.AccountIdentification?.IdentifierEndDate?.TimeZoneCode,
    //                 "DaylightSavingIndicator": check response?.body?.AccountDetails?.AccountIdentification?.AccountIdentification?.IdentifierEndDate?.DaylightSavingIndicator,
    //                 "DateTimeType": check response?.body?.AccountDetails?.AccountIdentification?.AccountIdentification?.IdentifierEndDate?.DateTimeType
    //             }
    //         }
    //     },
    //     "AccountDate": {
    //         "AccountDateType": check response?.body?.AccountDetails?.AccountDate?.AccountDateType,
    //         "AccountDate": {
    //             "DateTimeContent": check response?.body?.AccountDetails?.AccountDate?.AccountDate?.DateTimeContent,
    //             "TimeZoneCode": check response?.body?.AccountDetails?.AccountDate?.AccountDate?.TimeZoneCode,
    //             "DaylightSavingIndicator": check response?.body?.AccountDetails?.AccountDate?.AccountDate?.DaylightSavingIndicator,
    //             "DateTimeType": check response?.body?.AccountDetails?.AccountDate?.AccountDate?.DateTimeType
    //         }
    //     },
    //     "AccountType": check response?.body?.AccountDetails?.AccountType,
    //     "AccountPurpose": check response?.body?.AccountDetails?.AccountPurpose,
    //     "AccountBalance": {
    //         "BalanceAmount": {
    //             "AmountValue": check response?.body?.AccountDetails?.AccountBalance?.BalanceAmount?.AmountValue,
    //             "AmountCurrency": {
    //                 "Currencycode": check response?.body?.AccountDetails?.AccountBalance?.BalanceAmount?.AmountCurrency?.Currencycode
    //             },
    //             "DecimalPointPosition": check response?.body?.AccountDetails?.AccountBalance?.BalanceAmount?.DecimalPointPosition,
    //             "AmountType": check response?.body?.AccountDetails?.AccountBalance?.BalanceAmount?.AmountType
    //         },
    //         "BalanceType": check response?.body?.AccountDetails?.AccountBalance?.BalanceType,
    //         "BalanceValueDate": {
    //             "DateTimeContent": check response?.body?.AccountDetails?.AccountBalance?.BalanceValueDate?.DateTimeContent,
    //             "TimeZoneCode": check response?.body?.AccountDetails?.AccountBalance?.BalanceValueDate?.TimeZoneCode,
    //             "DaylightSavingIndicator": check response?.body?.AccountDetails?.AccountBalance?.BalanceValueDate?.DaylightSavingIndicator,
    //             "DateTimeType": check response?.body?.AccountDetails?.AccountBalance?.BalanceValueDate?.DateTimeType
    //         },
    //         "BalanceIndicator": check response?.body?.AccountDetails?.AccountBalance?.BalanceIndicator,
    //         "BalanceCounterpartyType": check response?.body?.AccountDetails?.AccountBalance?.BalanceCounterpartyType,
    //         "BalanceCalculationDate": {
    //             "DateTimeContent": check response?.body?.AccountDetails?.AccountBalance?.BalanceCalculationDate?.DateTimeContent,
    //             "TimeZoneCode": check response?.body?.AccountDetails?.AccountBalance?.BalanceCalculationDate?.TimeZoneCode,
    //             "DaylightSavingIndicator": check response?.body?.AccountDetails?.AccountBalance?.BalanceCalculationDate?.DaylightSavingIndicator,
    //             "DateTimeType": check response?.body?.AccountDetails?.AccountBalance?.BalanceCalculationDate?.DateTimeType
    //         },
    //         "BalanceSubType": check response?.body?.AccountDetails?.AccountBalance?.BalanceSubType
    //     },
    //     "AccountCurrency": {
    //         "AccountCurrencyType": check response?.body?.AccountDetails?.AccountCurrency?.AccountCurrencyType,
    //         "AccountCurrency": {
    //             "Currencycode": check response?.body?.AccountDetails?.AccountCurrency?.AccountCurrency?.Currencycode
    //         }
    //     },
    //     "AccountDescription": check response?.body?.AccountDetails?.AccountDescription,
    //     "AccountName": {
    //         "Name": check response?.body?.AccountDetails?.AccountName?.Name
    //     }
    // },
    // "AccountDateType": check response?.body?.AccountDateType,
    // "AccountDate": {
    //     "DateTimeContent": {
    //         "Text": check response?.body?.AccountDate?.DateTimeContent?.Text
    //     },
    //     "TimeZoneCode": {
    //         "Text": check response?.body?.AccountDate?.TimeZoneCode?.Text
    //     },
    //     "DaylightSavingIndicator": {
    //         "Text": check response?.body?.AccountDate?.DaylightSavingIndicator?.Text
    //     },
    //     "DateTimeType": check response?.body?.AccountDate?.DateTimeType
    // },
    // "LimitValue": {
    //     "Value": check response?.body?.LimitValue?.Value
    // },
    // "LimitType": check response?.body?.LimitType,
    // "LimitSettings": {
    //     "LimitType": check response?.body?.LimitSettings?.LimitType,
    //     "LimitCurrency": {
    //         "Currencycode": check response?.body?.LimitSettings?.LimitCurrency?.Currencycode
    //     },
    //     "LimitValidityPeriod": {
    //         "FromDateTime": {
    //             "DateTimeContent": {
    //                 "Text": check response?.body?.LimitSettings?.LimitValidityPeriod?.FromDateTime?.DateTimeContent?.Text
    //             },
    //             "TimeZoneCode": {
    //                 "Text": check response?.body?.LimitSettings?.LimitValidityPeriod?.FromDateTime?.TimeZoneCode?.Text
    //             },
    //             "DaylightSavingIndicator": {
    //                 "Text": check response?.body?.LimitSettings?.LimitValidityPeriod?.FromDateTime?.DaylightSavingIndicator?.Text
    //             },
    //             "DateTimeType": check response?.body?.LimitSettings?.LimitValidityPeriod?.FromDateTime?.DateTimeType
    //         },
    //         "ToDateTime": {
    //             "DateTimeContent": {
    //                 "Text": check response?.body?.LimitSettings?.LimitValidityPeriod?.ToDateTime?.DateTimeContent?.Text
    //             },
    //             "TimeZoneCode": {
    //                 "Text": check response?.body?.LimitSettings?.LimitValidityPeriod?.ToDateTime?.TimeZoneCode?.Text
    //             },
    //             "DaylightSavingIndicator": {
    //                 "Text": check response?.body?.LimitSettings?.LimitValidityPeriod?.ToDateTime?.DaylightSavingIndicator?.Text
    //             },
    //             "DateTimeType": check response?.body?.LimitSettings?.LimitValidityPeriod?.ToDateTime?.DateTimeType
    //         }
    //     },
    //     "LimitAmount": {
    //         "AmountValue": {
    //             "Value": check response?.body?.LimitSettings?.LimitAmount?.AmountValue?.Value
    //         },
    //         "AmountCurrency": {
    //             "Currencycode": check response?.body?.LimitSettings?.LimitAmount?.AmountCurrency?.Currencycode
    //         },
    //         "DecimalPointPosition": {
    //             "Text": check response?.body?.LimitSettings?.LimitAmount?.DecimalPointPosition?.Text
    //         },
    //         "AmountType": check response?.body?.LimitSettings?.LimitAmount?.AmountType
    //     },
    //     "LimitStatus": {
    //         "LimitStatus": {
    //             "StatusReason": {
    //                 "Text": check response?.body?.LimitSettings?.LimitStatus?.LimitStatus?.StatusReason?.Text
    //             },
    //             "StatusDateTime": {
    //                 "DateTimeContent": {
    //                     "Text": check response?.body?.LimitSettings?.LimitStatus?.LimitStatus?.StatusDateTime?.DateTimeContent?.Text
    //                 },
    //                 "TimeZoneCode": {
    //                     "Text": check response?.body?.LimitSettings?.LimitStatus?.LimitStatus?.StatusDateTime?.TimeZoneCode?.Text
    //                 },
    //                 "DaylightSavingIndicator": {
    //                     "Text": check response?.body?.LimitSettings?.LimitStatus?.LimitStatus?.StatusDateTime?.DaylightSavingIndicator?.Text
    //                 },
    //                 "DateTimeType": check response?.body?.LimitSettings?.LimitStatus?.LimitStatus?.StatusDateTime?.DateTimeType
    //             },
    //             "StatusValidityPeriod": {
    //                 "FromDateTime": {
    //                     "DateTimeContent": {
    //                         "Text": check response?.body?.LimitSettings?.LimitStatus?.LimitStatus?.StatusValidityPeriod?.FromDateTime?.DateTimeContent?.Text
    //                     },
    //                     "TimeZoneCode": {
    //                         "Text": check response?.body?.LimitSettings?.LimitStatus?.LimitStatus?.StatusValidityPeriod?.FromDateTime?.TimeZoneCode?.Text
    //                     },
    //                     "DaylightSavingIndicator": {
    //                         "Text": check response?.body?.LimitSettings?.LimitStatus?.LimitStatus?.StatusValidityPeriod?.FromDateTime?.DaylightSavingIndicator?.Text
    //                     },
    //                     "DateTimeType": check response?.body?.LimitSettings?.LimitStatus?.LimitStatus?.StatusValidityPeriod?.FromDateTime?.DateTimeType
    //                 },
    //                 "ToDateTime": {
    //                     "DateTimeContent": {
    //                         "Text": check response?.body?.LimitSettings?.LimitStatus?.LimitStatus?.StatusValidityPeriod?.ToDateTime?.DateTimeContent?.Text
    //                     },
    //                     "TimeZoneCode": {
    //                         "Text": check response?.body?.LimitSettings?.LimitStatus?.LimitStatus?.StatusValidityPeriod?.ToDateTime?.TimeZoneCode?.Text
    //                     },
    //                     "DaylightSavingIndicator": {
    //                         "Text": check response?.body?.LimitSettings?.LimitStatus?.LimitStatus?.StatusValidityPeriod?.ToDateTime?.DaylightSavingIndicator?.Text
    //                     },
    //                     "DateTimeType": check response?.body?.LimitSettings?.LimitStatus?.LimitStatus?.StatusValidityPeriod?.ToDateTime?.DateTimeType
    //                 }
    //             },
    //             "StatusInvolvedPartyReference": {
    //                 "PartyReference": check response?.body?.LimitSettings?.LimitStatus?.LimitStatus?.StatusInvolvedPartyReference?.PartyReference,
    //                 "InvolvementReference": check response?.body?.LimitSettings?.LimitStatus?.LimitStatus?.StatusInvolvedPartyReference?.InvolvementReference
    //             }
    //         },
    //         "LimitStatusType": check response?.body?.LimitSettings?.LimitStatus?.LimitStatusType
    //     },
    //     "LimitRate": {
    //         "RateValue": {
    //             "Value": check response?.body?.LimitSettings?.LimitRate?.RateValue?.Value
    //         },
    //         "RateUnit": {
    //             "Text": check response?.body?.LimitSettings?.LimitRate?.RateUnit?.Text
    //         },
    //         "RatePeriod": {
    //             "FromDateTime": {
    //                 "DateTimeContent": {
    //                     "Text": check response?.body?.LimitSettings?.LimitRate?.RatePeriod?.FromDateTime?.DateTimeContent?.Text
    //                 },
    //                 "TimeZoneCode": {
    //                     "Text": check response?.body?.LimitSettings?.LimitRate?.RatePeriod?.FromDateTime?.TimeZoneCode?.Text
    //                 },
    //                 "DaylightSavingIndicator": {
    //                     "Text": check response?.body?.LimitSettings?.LimitRate?.RatePeriod?.FromDateTime?.DaylightSavingIndicator?.Text
    //                 },
    //                 "DateTimeType": check response?.body?.LimitSettings?.LimitRate?.RatePeriod?.FromDateTime?.DateTimeType
    //             },
    //             "ToDateTime": {
    //                 "DateTimeContent": {
    //                     "Text": check response?.body?.LimitSettings?.LimitRate?.RatePeriod?.ToDateTime?.DateTimeContent?.Text
    //                 },
    //                 "TimeZoneCode": {
    //                     "Text": check response?.body?.LimitSettings?.LimitRate?.RatePeriod?.ToDateTime?.TimeZoneCode?.Text
    //                 },
    //                 "DaylightSavingIndicator": {
    //                     "Text": check response?.body?.LimitSettings?.LimitRate?.RatePeriod?.ToDateTime?.DaylightSavingIndicator?.Text
    //                 },
    //                 "DateTimeType": check response?.body?.LimitSettings?.LimitRate?.RatePeriod?.ToDateTime?.DateTimeType
    //             }
    //         },
    //         "RateCapitalUnit": {
    //             "Text": check response?.body?.LimitSettings?.LimitRate?.RateCapitalUnit?.Text
    //         }
    //     },
    //     "LimitFrequency": {
    //         "FrequencyCode": check response?.body?.LimitSettings?.LimitFrequency?.FrequencyCode,
    //         "FrequencyName": {
    //             "Name": check response?.body?.LimitSettings?.LimitFrequency?.FrequencyName?.Name
    //         },
    //         "FrequencyDefinition": {
    //             "Text": check response?.body?.LimitSettings?.LimitFrequency?.FrequencyDefinition?.Text
    //         }
    //     },
    //     "LimitIdentification": {
    //         "IdentifierValue": {
    //             "Value": check response?.body?.LimitSettings?.LimitIdentification?.IdentifierValue?.Value
    //         },
    //         "IdentifierIssuerReference": {
    //             "PartyReference": check response?.body?.LimitSettings?.LimitIdentification?.IdentifierIssuerReference?.PartyReference,
    //             "InvolvementReference": check response?.body?.LimitSettings?.LimitIdentification?.IdentifierIssuerReference?.InvolvementReference
    //         },
    //         "IdentifierStartDate": {
    //             "DateTimeContent": {
    //                 "Text": check response?.body?.LimitSettings?.LimitIdentification?.IdentifierStartDate?.DateTimeContent?.Text
    //             },
    //             "TimeZoneCode": {
    //                 "Text": check response?.body?.LimitSettings?.LimitIdentification?.IdentifierStartDate?.TimeZoneCode?.Text
    //             },
    //             "DaylightSavingIndicator": {
    //                 "Text": check response?.body?.LimitSettings?.LimitIdentification?.IdentifierStartDate?.DaylightSavingIndicator?.Text
    //             },
    //             "DateTimeType": check response?.body?.LimitSettings?.LimitIdentification?.IdentifierStartDate?.DateTimeType
    //         },
    //         "IdentifierEndDate": {
    //             "DateTimeContent": {
    //                 "Text": check response?.body?.LimitSettings?.LimitIdentification?.IdentifierEndDate?.DateTimeContent?.Text
    //             },
    //             "TimeZoneCode": {
    //                 "Text": check response?.body?.LimitSettings?.LimitIdentification?.IdentifierEndDate?.TimeZoneCode?.Text
    //             },
    //             "DaylightSavingIndicator": {
    //                 "Text": check response?.body?.LimitSettings?.LimitIdentification?.IdentifierEndDate?.DaylightSavingIndicator?.Text
    //             },
    //             "DateTimeType": check response?.body?.LimitSettings?.LimitIdentification?.IdentifierEndDate?.DateTimeType
    //         }
    //     },
    //     "LimitStartDatetime": {
    //         "DateTimeContent": {
    //             "Text": check response?.body?.LimitSettings?.LimitStartDatetime?.DateTimeContent?.Text
    //         },
    //         "TimeZoneCode": {
    //             "Text": check response?.body?.LimitSettings?.LimitStartDatetime?.TimeZoneCode?.Text
    //         },
    //         "DaylightSavingIndicator": {
    //             "Text": check response?.body?.LimitSettings?.LimitStartDatetime?.DaylightSavingIndicator?.Text
    //         },
    //         "DateTimeType": check response?.body?.LimitSettings?.LimitStartDatetime?.DateTimeType
    //     },
    //     "LimitCreditDebitIndicator": check response?.body?.LimitSettings?.LimitCreditDebitIndicator,
    //     "LimitAmountType": check response?.body?.LimitSettings?.LimitAmountType
    // }
};
