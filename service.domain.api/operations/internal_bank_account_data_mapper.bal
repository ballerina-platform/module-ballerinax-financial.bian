// import ashirwadadayarathne/bian.service_domain.operations.attribute.groups.v14_operational_services as operational_services;

// isolated function transformAuthorizationBookingResponse(json response) returns operational_services:BookingAuthorization|error =>  {
//     "AccountReference": {
//         "AccountStatus":{
//             "AccountStatus": {
//                 "StatusReason":{
//                     "Text": check response?.AccountReference?.AccountStatus?.AccountStatus?.StatusReason?.Text
//                 },
//                 "StatusDateTime":{
//                     "DateTimeContent":{
//                         "Text": check response?.AccountReference?.AccountStatus?.AccountStatus?.StatusDateTime?.DateTimeContent?.Text
//                     },
//                     "TimeZoneCode":{
//                         "Text": check response?.AccountReference?.AccountStatus?.AccountStatus?.StatusDateTime?.TimeZoneCode?.Text
//                     },
//                     "DaylightSavingIndicator":{
//                         "Text": check response?.AccountReference?.AccountStatus?.AccountStatus?.StatusDateTime?.DaylightSavingIndicator?.Text
//                     },
//                     "DateTimeType": check response?.AccountReference?.AccountStatus?.AccountStatus?.StatusDateTime?.DateTimeType
//                 },
//                 "StatusValidityPeriod":{
//                     "FromDateTime":{
//                         "DateTimeContent":{
//                             "Text": check response?.AccountReference?.AccountStatus?.AccountStatus?.StatusValidityPeriod?.FromDateTime?.DateTimeContent?.Text
//                         },
//                         "TimeZoneCode":{
//                             "Text": check response?.AccountReference?.AccountStatus?.AccountStatus?.StatusValidityPeriod?.FromDateTime?.TimeZoneCode?.Text
//                         },
//                         "DaylightSavingIndicator":{
//                             "Text": check response?.AccountReference?.AccountStatus?.AccountStatus?.StatusValidityPeriod?.FromDateTime?.DaylightSavingIndicator?.Text
//                         },
//                         "DateTimeType": check response?.AccountReference?.AccountStatus?.AccountStatus?.StatusValidityPeriod?.FromDateTime?.DateTimeType
//                     },
//                     "ToDateTime":{
//                         "DateTimeContent":{
//                             "Text": check response?.AccountReference?.AccountStatus?.AccountStatus?.StatusValidityPeriod?.ToDateTime?.DateTimeContent?.Text
//                         },
//                         "TimeZoneCode":{
//                             "Text": check response?.AccountReference?.AccountStatus?.AccountStatus?.StatusValidityPeriod?.ToDateTime?.TimeZoneCode?.Text
//                         },
//                         "DaylightSavingIndicator":{
//                             "Text": check response?.AccountReference?.AccountStatus?.AccountStatus?.StatusValidityPeriod?.ToDateTime?.DaylightSavingIndicator?.Text
//                         },
//                         "DateTimeType": check response?.AccountReference?.AccountStatus?.AccountStatus?.StatusValidityPeriod?.ToDateTime?.DateTimeType
//                     }
//                 },
//                 "StatusInvolvedParty":{
//                     "PartyReference":{
//                         "PartyName":{
//                             "Name": check response?.AccountReference?.AccountStatus?.AccountStatus?.StatusInvolvedParty?.PartyReference?.PartyName?.Name
//                         },
//                         "PartyType": check response?.AccountReference?.AccountStatus?.AccountStatus?.StatusInvolvedParty?.PartyReference?.PartyType,
//                         "PartyDateTime":{
//                             "DateTimeContent":{
//                                 "Text": check response?.AccountReference?.AccountStatus?.AccountStatus?.StatusInvolvedParty?.PartyReference?.PartyDateTime?.DateTimeContent?.Text
//                             },
//                             "TimeZoneCode":{
//                                 "Text": check response?.AccountReference?.AccountStatus?.AccountStatus?.StatusInvolvedParty?.PartyReference?.PartyDateTime?.TimeZoneCode?.Text
//                             },
//                             "DaylightSavingIndicator":{
//                                 "Text": check response?.AccountReference?.AccountStatus?.AccountStatus?.StatusInvolvedParty?.PartyReference?.PartyDateTime?.DaylightSavingIndicator?.Text
//                             },
//                             "DateTimeType": check response?.AccountReference?.AccountStatus?.AccountStatus?.StatusInvolvedParty?.PartyReference?.PartyDateTime?.DateTimeType
//                         },
//                         "PartyIdentification":{
//                             "PartyIdentificationType": check response?.AccountReference?.AccountStatus?.AccountStatus?.StatusInvolvedParty?.PartyReference?.PartyIdentification?.PartyIdentificationType
//                             // "PartyIdentification":"string"
//                         },
//                         "PartyLegalStructureType": check response?.AccountReference?.AccountStatus?.AccountStatus?.StatusInvolvedParty?.PartyReference?.PartyLegalStructureType
//                     },
//                     "PartyInvolvement":{
//                         "PartyRoleType":{
//                             "Text": check response?.AccountReference?.AccountStatus?.AccountStatus?.StatusInvolvedParty?.PartyInvolvement?.PartyRoleType?.Text
//                         },
//                         "PartyRoleName":{
//                             "Name": check response?.AccountReference?.AccountStatus?.AccountStatus?.StatusInvolvedParty?.PartyInvolvement?.PartyRoleName?.Name
//                         },
//                         "PartyRoleValidityPeriod":{
//                             "FromDateTime":{
//                                 "DateTimeContent":{
//                                     "Text": check response?.AccountReference?.AccountStatus?.AccountStatus?.StatusInvolvedParty?.PartyInvolvement?.PartyRoleValidityPeriod?.FromDateTime?.DateTimeContent?.Text
//                                 },
//                                 "TimeZoneCode":{
//                                     "Text": check response?.AccountReference?.AccountStatus?.AccountStatus?.StatusInvolvedParty?.PartyInvolvement?.PartyRoleValidityPeriod?.FromDateTime?.TimeZoneCode?.Text
//                                 },
//                                 "DaylightSavingIndicator":{
//                                     "Text": check response?.AccountReference?.AccountStatus?.AccountStatus?.StatusInvolvedParty?.PartyInvolvement?.PartyRoleValidityPeriod?.FromDateTime?.DaylightSavingIndicator?.Text
//                                 },
//                                 "DateTimeType": check response?.AccountReference?.AccountStatus?.AccountStatus?.StatusInvolvedParty?.PartyInvolvement?.PartyRoleValidityPeriod?.FromDateTime?.DateTimeType
//                             },
//                             "ToDateTime":{
//                                 "DateTimeContent":{
//                                     "Text": check response?.AccountReference?.AccountStatus?.AccountStatus?.StatusInvolvedParty?.PartyInvolvement?.PartyRoleValidityPeriod?.ToDateTime?.DateTimeContent?.Text
//                                 },
//                                 "TimeZoneCode":{
//                                     "Text": check response?.AccountReference?.AccountStatus?.AccountStatus?.StatusInvolvedParty?.PartyInvolvement?.PartyRoleValidityPeriod?.ToDateTime?.TimeZoneCode?.Text
//                                 },
//                                 "DaylightSavingIndicator":{
//                                     "Text": check response?.AccountReference?.AccountStatus?.AccountStatus?.StatusInvolvedParty?.PartyInvolvement?.PartyRoleValidityPeriod?.ToDateTime?.DaylightSavingIndicator?.Text
//                                 },
//                                 "DateTimeType": check response?.AccountReference?.AccountStatus?.AccountStatus?.StatusInvolvedParty?.PartyInvolvement?.PartyRoleValidityPeriod?.ToDateTime?.DateTimeType
//                             }
//                         },
//                         "PartyInvolvementType": check response?.AccountReference?.AccountStatus?.AccountStatus?.StatusInvolvedParty?.PartyInvolvement?.PartyInvolvementType
//                     }
//                 }
//             },
//             "AccountStatusType": check response?.AccountReference?.AccountStatus?.AccountStatusType 
//        },
//        "AccountIdentification":{
//             "AccountIdentificationType": check response?.AccountReference?.AccountIdentification?.AccountIdentificationType,
//             "AccountIdentification":{
//                 "IdentifierValue":{
//                     "Value": check response?.AccountReference?.AccountIdentification?.AccountIdentification?.IdentifierValue?.Value
//                 },
//                 "IdentifierIssuingAuthority":{
//                     "PartyReference":{
//                         "PartyName":{
//                             "Name": check response?.AccountReference?.AccountIdentification?.AccountIdentification?.IdentifierIssuingAuthority?.PartyReference?.PartyName?.Name
//                         },
//                         "PartyType": check response?.AccountReference?.AccountIdentification?.AccountIdentification?.IdentifierIssuingAuthority?.PartyReference?.PartyType,
//                         "PartyDateTime":{
//                             "DateTimeContent":{
//                                 "Text": check response?.AccountReference?.AccountIdentification?.AccountIdentification?.IdentifierIssuingAuthority?.PartyReference?.PartyDateTime?.DateTimeContent?.Text
//                             },
//                             "TimeZoneCode":{
//                                 "Text": check response?.AccountReference?.AccountIdentification?.AccountIdentification?.IdentifierIssuingAuthority?.PartyReference?.PartyDateTime?.TimeZoneCode?.Text
//                             },
//                             "DaylightSavingIndicator":{
//                                 "Text": check response?.AccountReference?.AccountIdentification?.AccountIdentification?.IdentifierIssuingAuthority?.PartyReference?.PartyDateTime?.DaylightSavingIndicator?.Text
//                             },
//                             "DateTimeType": check response?.AccountReference?.AccountIdentification?.AccountIdentification?.IdentifierIssuingAuthority?.PartyReference?.PartyDateTime?.DateTimeType
//                         },
//                         "PartyIdentification":{
//                             "PartyIdentificationType": check response?.AccountReference?.AccountIdentification?.AccountIdentification?.IdentifierIssuingAuthority?.PartyReference?.PartyIdentification?.PartyIdentificationType
//                             //  "PartyIdentification":"string"
//                         },
//                         "PartyLegalStructureType": check response?.AccountReference?.AccountIdentification?.AccountIdentification?.IdentifierIssuingAuthority?.PartyReference?.PartyLegalStructureType
//                     },
//                     "PartyInvolvement":{
//                         "PartyRoleType":{
//                             "Text": check response?.AccountReference?.AccountIdentification?.AccountIdentification?.IdentifierIssuingAuthority?.PartyInvolvement?.PartyRoleType?.Text
//                         },
//                         "PartyRoleName":{
//                             "Name": check response?.AccountReference?.AccountIdentification?.AccountIdentification?.IdentifierIssuingAuthority?.PartyInvolvement?.PartyRoleName?.Name
//                         },
//                         "PartyRoleValidityPeriod":{
//                             "FromDateTime":{
//                                 "DateTimeContent":{
//                                     "Text": check response?.AccountReference?.AccountIdentification?.AccountIdentification?.IdentifierIssuingAuthority?.PartyInvolvement?.PartyRoleValidityPeriod?.FromDateTime?.DateTimeContent?.Text
//                                 },
//                                 "TimeZoneCode":{
//                                     "Text": check response?.AccountReference?.AccountIdentification?.AccountIdentification?.IdentifierIssuingAuthority?.PartyInvolvement?.PartyRoleValidityPeriod?.FromDateTime?.TimeZoneCode?.Text
//                                 },
//                                 "DaylightSavingIndicator":{
//                                     "Text": check response?.AccountReference?.AccountIdentification?.AccountIdentification?.IdentifierIssuingAuthority?.PartyInvolvement?.PartyRoleValidityPeriod?.FromDateTime?.DaylightSavingIndicator?.Text
//                                 },
//                                 "DateTimeType": check response?.AccountReference?.AccountIdentification?.AccountIdentification?.IdentifierIssuingAuthority?.PartyInvolvement?.PartyRoleValidityPeriod?.FromDateTime?.DateTimeType
//                             },
//                             "ToDateTime":{
//                                 "DateTimeContent":{
//                                     "Text": check response?.AccountReference?.AccountIdentification?.AccountIdentification?.IdentifierIssuingAuthority?.PartyInvolvement?.PartyRoleValidityPeriod?.ToDateTime?.DateTimeContent?.Text
//                                 },
//                                 "TimeZoneCode":{
//                                     "Text": check response?.AccountReference?.AccountIdentification?.AccountIdentification?.IdentifierIssuingAuthority?.PartyInvolvement?.PartyRoleValidityPeriod?.ToDateTime?.TimeZoneCode?.Text
//                                 },
//                                 "DaylightSavingIndicator":{
//                                     "Text": check response?.AccountReference?.AccountIdentification?.AccountIdentification?.IdentifierIssuingAuthority?.PartyInvolvement?.PartyRoleValidityPeriod?.ToDateTime?.DaylightSavingIndicator?.Text
//                                 },
//                                 "DateTimeType": check response?.AccountReference?.AccountIdentification?.AccountIdentification?.IdentifierIssuingAuthority?.PartyInvolvement?.PartyRoleValidityPeriod?.ToDateTime?.DateTimeType
//                             }
//                         },
//                         "PartyInvolvementType": check response?.AccountReference?.AccountIdentification?.AccountIdentification?.IdentifierIssuingAuthority?.PartyInvolvement?.PartyInvolvementType
//                     }
//                 },
//                 "IdentifierStartDate":{
//                     "DateTimeContent":{
//                         "Text": check response?.AccountReference?.AccountIdentification?.AccountIdentification?.IdentifierStartDate?.DateTimeContent?.Text
//                     },
//                     "TimeZoneCode":{
//                         "Text": check response?.AccountReference?.AccountIdentification?.AccountIdentification?.IdentifierStartDate?.TimeZoneCode?.Text
//                     },
//                     "DaylightSavingIndicator":{
//                         "Text": check response?.AccountReference?.AccountIdentification?.AccountIdentification?.IdentifierStartDate?.DaylightSavingIndicator?.Text
//                     },
//                     "DateTimeType": check response?.AccountReference?.AccountIdentification?.AccountIdentification?.IdentifierStartDate?.DateTimeType
//                 },
//                 "IdentifierEndDate":{
//                     "DateTimeContent":{
//                         "Text": check response?.AccountReference?.AccountIdentification?.AccountIdentification?.IdentifierEndDate?.DateTimeContent?.Text
//                     },
//                     "TimeZoneCode":{
//                         "Text": check response?.AccountReference?.AccountIdentification?.AccountIdentification?.IdentifierEndDate?.TimeZoneCode?.Text
//                     },
//                     "DaylightSavingIndicator":{
//                         "Text": check response?.AccountReference?.AccountIdentification?.AccountIdentification?.IdentifierEndDate?.DaylightSavingIndicator?.Text
//                     },
//                     "DateTimeType": check response?.AccountReference?.AccountIdentification?.AccountIdentification?.IdentifierEndDate?.DateTimeType
//                 }
//             }
//         },
//         "AccountDate":{
//             "AccountDateType": check response?.AccountReference?.AccountDate?.AccountDateType,
//             "AccountDate":{
//                 "DateTimeContent":{
//                     "Text": check response?.AccountReference?.AccountDate?.AccountDate?.DateTimeContent?.Text
//                 },
//                 "TimeZoneCode":{
//                     "Text": check response?.AccountReference?.AccountDate?.AccountDate?.TimeZoneCode?.Text
//                 },
//                 "DaylightSavingIndicator":{
//                     "Text": check response?.AccountReference?.AccountDate?.AccountDate?.DaylightSavingIndicator?.Text
//                 },
//                 "DateTimeType": check response?.AccountReference?.AccountDate?.AccountDate?.DateTimeType
//             }
//         },
//         "AccountType": check response?.AccountReference?.AccountType,
//         "AccountPurpose":{
//             "Text": check response?.AccountReference?.AccountPurpose?.Text
//         },
//         "AccountBalance":{
//             "BalanceAmount":{
//                 "AmountValue":{
//                     "Value": check response?.AccountReference?.AccountBalance?.BalanceAmount?.AmountValue?.Value
//                 },
//                 "AmountCurrency":{
//                     "Currencycode": check response?.AccountReference?.AccountBalance?.BalanceAmount?.AmountCurrency?.Currencycode
//                 },
//                 "DecimalPointPosition":{
//                  "Text": check response?.AccountReference?.AccountBalance?.BalanceAmount?.DecimalPointPosition?.Text
//                 },
//                 "AmountType": check response?.AccountReference?.AccountBalance?.BalanceAmount?.AmountType
//             },
//             "BalanceType": check response?.AccountReference?.AccountBalance?.BalanceType,
//             "BalanceValueDate":{
//                 "DateTimeContent":{
//                     "Text": check response?.AccountReference?.AccountBalance?.BalanceValueDate?.DateTimeContent?.Text
//                 },
//                 "TimeZoneCode":{
//                     "Text": check response?.AccountReference?.AccountBalance?.BalanceValueDate?.TimeZoneCode?.Text
//                 },
//                 "DaylightSavingIndicator":{
//                     "Text": check response?.AccountReference?.AccountBalance?.BalanceValueDate?.DaylightSavingIndicator?.Text
//                 },
//                 "DateTimeType": check response?.AccountReference?.AccountBalance?.BalanceValueDate?.DateTimeType
//             },
//             "BalanceIndicator": check response?.AccountReference?.AccountBalance?.BalanceIndicator,
//             "BalanceCounterpartyType": check response?.AccountReference?.AccountBalance?.BalanceCounterpartyType,
//             "BalanceCalculationDate":{
//                 "DateTimeContent":{
//                     "Text": check response?.AccountReference?.AccountBalance?.BalanceCalculationDate?.DateTimeContent?.Text
//                 },
//                 "TimeZoneCode":{
//                     "Text": check response?.AccountReference?.AccountBalance?.BalanceCalculationDate?.TimeZoneCode?.Text
//                 },
//                 "DaylightSavingIndicator":{
//                     "Text": check response?.AccountReference?.AccountBalance?.BalanceCalculationDate?.DaylightSavingIndicator?.Text
//                 },
//                 "DateTimeType": check response?.AccountReference?.AccountBalance?.BalanceCalculationDate?.DateTimeType
//             },
//             "BalanceSubType": check response?.AccountReference?.AccountBalance?.BalanceSubType
//         },
//         "AccountCurrency":{
//             "AccountCurrencyType": check response?.AccountReference?.AccountCurrency?.AccountCurrencyType,
//             "AccountCurrency":{
//                 "Currencycode": check response?.AccountReference?.AccountCurrency?.AccountCurrency?.Currencycode
//             }
//         },
//         "AccountDescription":{
//             "Text": check response?.AccountReference?.AccountDescription?.Text
//         },
//         "AccountName":{
//             "Name": check response?.AccountReference?.AccountName?.Name
//         }
//     },
//     "TransactionPriorityNumber": check response?.TransactionPriorityNumber,
//     "BookingDate":{
//         "DateTimeContent":{
//             "Text": check response?.BookingDate?.DateTimeContent?.Text
//         },
//         "TimeZoneCode":{
//             "Text": check response?.BookingDate?.TimeZoneCode?.Text
//         },
//         "DaylightSavingIndicator":{
//             "Text": check response?.BookingDate?.DaylightSavingIndicator?.Text
//         },
//         "DateTimeType": check response?.BookingDate?.DateTimeType
//     },
//    "AuthorizationResult":{
//         "Text": check response?.AuthorizationResult?.Text
//     },
//     "AuthorizationRejectionReason":{
//         "Text": check response?.AuthorizationRejectionReason?.Text
//     },
//     "ValueDate":{
//         "DateTimeContent":{
//             "Text": check response?.ValueDate?.DateTimeContent?.Text
//         },
//         "TimeZoneCode":{
//             "Text": check response?.ValueDate?.TimeZoneCode?.Text
//         },
//         "DaylightSavingIndicator":{
//             "Text": check response?.ValueDate?.DaylightSavingIndicator?.Text
//         },
//         "DateTimeType": check response?.ValueDate?.DateTimeType
//     },
//     "PositionKeepingReference":{
//         "AccountEntryAmount":{
//             "AmountValue":{
//                 "Value": check response?.PositionKeepingReference?.AccountEntryAmount?.AmountValue?.Value
//             },
//             "AmountCurrency":{
//                 "Currencycode": check response?.PositionKeepingReference?.AccountEntryAmount?.AmountCurrency?.Currencycode
//             },
//             "DecimalPointPosition":{
//                 "Text": check response?.PositionKeepingReference?.AccountEntryAmount?.DecimalPointPosition?.Text
//             },
//             "AmountType": check response?.PositionKeepingReference?.AccountEntryAmount?.AmountType
//         },
//         "AccountEntryCurrency":{
//             "AccountCurrencyType": check response?.PositionKeepingReference?.AccountEntryCurrency?.AccountCurrencyType,
//             "AccountCurrency":{
//                 "Currencycode": check response?.PositionKeepingReference?.AccountEntryCurrency?.AccountCurrency?.Currencycode
//             }
//         },
//         "AccountEntryPurpose":{
//             "Text": check response?.PositionKeepingReference?.AccountEntryPurpose?.Text
//         },
//         "AccountEntryDate":{
//             "DateTimeContent":{
//                 "Text": check response?.PositionKeepingReference?.AccountEntryDate?.DateTimeContent?.Text
//             },
//             "TimeZoneCode":{
//                 "Text": check response?.PositionKeepingReference?.AccountEntryDate?.TimeZoneCode?.Text
//             },
//             "DaylightSavingIndicator":{
//                 "Text": check response?.PositionKeepingReference?.AccountEntryDate?.DaylightSavingIndicator?.Text
//             },
//             "DateTimeType": check response?.PositionKeepingReference?.AccountEntryDate?.DateTimeType
//         },
//         "AccountEntryStatus":{
//             "StatusReason":{
//                 "Text": check response?.PositionKeepingReference?.AccountEntryStatus?.StatusReason?.Text
//             },
//             "StatusDateTime":{
//                 "DateTimeContent":{
//                     "Text": check response?.PositionKeepingReference?.AccountEntryStatus?.StatusDateTime?.DateTimeContent?.Text
//                 },
//                 "TimeZoneCode":{
//                     "Text": check response?.PositionKeepingReference?.AccountEntryStatus?.StatusDateTime?.TimeZoneCode?.Text
//                 },
//                 "DaylightSavingIndicator":{
//                     "Text": check response?.PositionKeepingReference?.AccountEntryStatus?.StatusDateTime?.DaylightSavingIndicator?.Text
//                 },
//                 "DateTimeType": check response?.PositionKeepingReference?.AccountEntryStatus?.StatusDateTime?.DateTimeType
//             },
//             "StatusValidityPeriod":{
//                 "FromDateTime":{
//                     "DateTimeContent":{
//                         "Text": check response?.PositionKeepingReference?.AccountEntryStatus?.StatusValidityPeriod?.FromDateTime?.DateTimeContent?.Text
//                     },
//                     "TimeZoneCode":{
//                         "Text": check response?.PositionKeepingReference?.AccountEntryStatus?.StatusValidityPeriod?.FromDateTime?.TimeZoneCode?.Text
//                     },
//                     "DaylightSavingIndicator":{
//                         "Text": check response?.PositionKeepingReference?.AccountEntryStatus?.StatusValidityPeriod?.FromDateTime?.DaylightSavingIndicator?.Text
//                     },
//                     "DateTimeType": check response?.PositionKeepingReference?.AccountEntryStatus?.StatusValidityPeriod?.FromDateTime?.DateTimeType
//                 },
//                 "ToDateTime":{
//                     "DateTimeContent":{
//                         "Text": check response?.PositionKeepingReference?.AccountEntryStatus?.StatusValidityPeriod?.ToDateTime?.DateTimeContent?.Text
//                     },
//                     "TimeZoneCode":{
//                         "Text": check response?.PositionKeepingReference?.AccountEntryStatus?.StatusValidityPeriod?.ToDateTime?.TimeZoneCode?.Text
//                     },
//                     "DaylightSavingIndicator":{
//                         "Text": check response?.PositionKeepingReference?.AccountEntryStatus?.StatusValidityPeriod?.ToDateTime?.DaylightSavingIndicator?.Text
//                     },
//                     "DateTimeType": check response?.PositionKeepingReference?.AccountEntryStatus?.StatusValidityPeriod?.ToDateTime?.DateTimeType
//                 }
//             },
//             "StatusInvolvedParty":{
//                 "PartyReference":{
//                 "PartyName":{
//                     "Name": check response?.PositionKeepingReference?.AccountEntryStatus?.StatusInvolvedParty?.PartyReference?.PartyName?.Name
//                 },
//                 "PartyType": check response?.PositionKeepingReference?.AccountEntryStatus?.StatusInvolvedParty?.PartyReference?.PartyType,
//                 "PartyDateTime":{
//                     "DateTimeContent":{
//                         "Text": check response?.PositionKeepingReference?.AccountEntryStatus?.StatusInvolvedParty?.PartyReference?.PartyDateTime?.DateTimeContent?.Text
//                     },
//                     "TimeZoneCode":{
//                         "Text": check response?.PositionKeepingReference?.AccountEntryStatus?.StatusInvolvedParty?.PartyReference?.PartyDateTime?.TimeZoneCode?.Text
//                     },
//                     "DaylightSavingIndicator":{
//                         "Text": check response?.PositionKeepingReference?.AccountEntryStatus?.StatusInvolvedParty?.PartyReference?.PartyDateTime?.DaylightSavingIndicator?.Text
//                     },
//                     "DateTimeType": check response?.PositionKeepingReference?.AccountEntryStatus?.StatusInvolvedParty?.PartyReference?.PartyDateTime?.DateTimeType
//                 },
//                 "PartyIdentification":{
//                     "PartyIdentificationType": check response?.PositionKeepingReference?.AccountEntryStatus?.StatusInvolvedParty?.PartyReference?.PartyIdentification?.PartyIdentificationType
//                     // "PartyIdentification":"string"
//                 },
//                 "PartyLegalStructureType": check response?.PositionKeepingReference?.AccountEntryStatus?.StatusInvolvedParty?.PartyReference?.PartyLegalStructureType
//                 },
//                 "PartyInvolvement":{
//                     "PartyRoleType":{
//                         "Text": check response?.PositionKeepingReference?.AccountEntryStatus?.StatusInvolvedParty?.PartyInvolvement?.PartyRoleType?.Text
//                     },
//                     "PartyRoleName":{
//                         "Name": check response?.PositionKeepingReference?.AccountEntryStatus?.StatusInvolvedParty?.PartyInvolvement?.PartyRoleName?.Name
//                     },
//                     "PartyRoleValidityPeriod":{
//                         "FromDateTime":{
//                             "DateTimeContent":{
//                                 "Text": check response?.PositionKeepingReference?.AccountEntryStatus?.StatusInvolvedParty?.PartyInvolvement?.PartyRoleValidityPeriod?.FromDateTime?.DateTimeContent?.Text
//                             },
//                             "TimeZoneCode":{
//                                 "Text": check response?.PositionKeepingReference?.AccountEntryStatus?.StatusInvolvedParty?.PartyInvolvement?.PartyRoleValidityPeriod?.FromDateTime?.TimeZoneCode?.Text
//                             },
//                             "DaylightSavingIndicator":{
//                                 "Text": check response?.PositionKeepingReference?.AccountEntryStatus?.StatusInvolvedParty?.PartyInvolvement?.PartyRoleValidityPeriod?.FromDateTime?.DaylightSavingIndicator?.Text
//                             },
//                             "DateTimeType": check response?.PositionKeepingReference?.AccountEntryStatus?.StatusInvolvedParty?.PartyInvolvement?.PartyRoleValidityPeriod?.FromDateTime?.DateTimeType
//                         },
//                         "ToDateTime":{
//                             "DateTimeContent":{
//                                 "Text": check response?.PositionKeepingReference?.AccountEntryStatus?.StatusInvolvedParty?.PartyInvolvement?.PartyRoleValidityPeriod?.ToDateTime?.DateTimeContent?.Text
//                             },
//                             "TimeZoneCode":{
//                                 "Text": check response?.PositionKeepingReference?.AccountEntryStatus?.StatusInvolvedParty?.PartyInvolvement?.PartyRoleValidityPeriod?.ToDateTime?.TimeZoneCode?.Text
//                             },
//                             "DaylightSavingIndicator":{
//                                 "Text": check response?.PositionKeepingReference?.AccountEntryStatus?.StatusInvolvedParty?.PartyInvolvement?.PartyRoleValidityPeriod?.ToDateTime?.DaylightSavingIndicator?.Text
//                             },
//                             "DateTimeType": check response?.PositionKeepingReference?.AccountEntryStatus?.StatusInvolvedParty?.PartyInvolvement?.PartyRoleValidityPeriod?.ToDateTime?.DateTimeType
//                         }
//                     },
//                     "PartyInvolvementType": check response?.PositionKeepingReference?.AccountEntryStatus?.StatusInvolvedParty?.PartyInvolvement?.PartyInvolvementType
//                 }
//             }
//         },
//         "AccountEntryDateType": check response?.PositionKeepingReference?.AccountEntryDateType,
//         "AccountEntryType":{
//             "Entrytypevalues": check response?.PositionKeepingReference?.AccountEntryType?.Entrytypevalues
//         }
//     },
//     "BookingAmount":{
//         "AmountValue":{
//             "Value": check response?.BookingAmount?.AmountValue?.Value
//         },
//         "AmountCurrency":{
//             "Currencycode": check response?.BookingAmount?.AmountCurrency?.Currencycode
//         },
//         "DecimalPointPosition":{
//             "Text": check response?.BookingAmount?.DecimalPointPosition?.Text
//         },
//         "AmountType": check response?.BookingAmount?.AmountType
//     }
// };

