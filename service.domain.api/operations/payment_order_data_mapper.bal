// import ashirwadadayarathne/bian.service_domain.operations.attribute.groups.v14_clearing_and_settlement as clearing_and_settlement;

// isolated function transformPaymentOrderInitiateResponse(json response) returns clearing_and_settlement:PaymentOrderProcedure|error => {
//         "PaymentTransactionInitiatorReference": {
//             "PartyReference": {
//             "PartyName": {
//                 "Name": check response?.PaymentTransactionInitiatorReference?.PartyReference?.PartyName?.Name
//             },
//             "PartyType": check response?.PaymentTransactionInitiatorReference?.PartyReference?.PartyType,
//             "PartyDateTime": {
//                 "DateTimeContent": {
//                 "Text": check response?.PaymentTransactionInitiatorReference?.PartyReference?.PartyDateTime?.DateTimeContent?.Text
//                 },
//                 "TimeZoneCode": {
//                 "Text": check response?.PaymentTransactionInitiatorReference?.PartyReference?.PartyDateTime?.TimeZoneCode?.Text
//                 },
//                 "DaylightSavingIndicator": {
//                 "Text": check response?.PaymentTransactionInitiatorReference?.PartyReference?.PartyDateTime?.DaylightSavingIndicator?.Text
//                 },
//                 "DateTimeType": check response?.PaymentTransactionInitiatorReference?.PartyReference?.PartyDateTime?.DateTimeType
//             },
//             "PartyIdentification": {
//                 "PartyIdentificationType": check response?.PaymentTransactionInitiatorReference?.PartyReference?.PartyIdentification?.PartyIdentificationType
//                 // "PartyIdentification": check response?.PaymentTransactionInitiatorReference?.PartyReference?.PartyIdentification?.PartyIdentification
//             },
//             "PartyLegalStructureType": check response?.PaymentTransactionInitiatorReference?.PartyReference?.PartyLegalStructureType
//             },
//             "PartyInvolvement": {
//             "PartyRoleType": {
//                 "Text": check response?.PaymentTransactionInitiatorReference?.PartyInvolvement?.PartyRoleType?.Text
//             },
//             "PartyRoleName": {
//                 "Name": check response?.PaymentTransactionInitiatorReference?.PartyInvolvement?.PartyRoleName?.Name
//             },
//             "PartyRoleValidityPeriod": {
//                 "FromDateTime": {
//                 "DateTimeContent": {
//                     "Text": check response?.PaymentTransactionInitiatorReference?.PartyInvolvement?.PartyRoleValidityPeriod?.FromDateTime?.DateTimeContent?.Text
//                 },
//                 "TimeZoneCode": {
//                     "Text": check response?.PaymentTransactionInitiatorReference?.PartyInvolvement?.PartyRoleValidityPeriod?.FromDateTime?.TimeZoneCode?.Text
//                 },
//                 "DaylightSavingIndicator": {
//                     "Text": check response?.PaymentTransactionInitiatorReference?.PartyInvolvement?.PartyRoleValidityPeriod?.FromDateTime?.DaylightSavingIndicator?.Text
//                 },
//                 "DateTimeType": check response?.PaymentTransactionInitiatorReference?.PartyInvolvement?.PartyRoleValidityPeriod?.FromDateTime?.DateTimeType
//                 },
//                 "ToDateTime": {
//                 "DateTimeContent": {
//                     "Text": check response?.PaymentTransactionInitiatorReference?.PartyInvolvement?.PartyRoleValidityPeriod?.ToDateTime?.DateTimeContent?.Text
//                 },
//                 "TimeZoneCode": {
//                     "Text": check response?.PaymentTransactionInitiatorReference?.PartyInvolvement?.PartyRoleValidityPeriod?.ToDateTime?.TimeZoneCode?.Text
//                 },
//                 "DaylightSavingIndicator": {
//                     "Text": check response?.PaymentTransactionInitiatorReference?.PartyInvolvement?.PartyRoleValidityPeriod?.ToDateTime?.DaylightSavingIndicator?.Text
//                 },
//                 "DateTimeType": check response?.PaymentTransactionInitiatorReference?.PartyInvolvement?.PartyRoleValidityPeriod?.ToDateTime?.DateTimeType
//                 }
//             },
//             "PartyInvolvementType": check response?.PaymentTransactionInitiatorReference?.PartyInvolvement?.PartyInvolvementType
//             }
//         },
//         "PayerReference": {
//             "InvolvementType": check response?.PayerReference?.InvolvementType,
//             "PartyReference": {
//             "PartyName": {
//                 "Name": check response?.PayerReference?.PartyReference?.PartyName?.Name
//             },
//             "PartyType": check response?.PayerReference?.PartyReference?.PartyType,
//             "PartyDateTime": {
//                 "DateTimeContent": {
//                 "Text": check response?.PayerReference?.PartyReference?.PartyDateTime?.DateTimeContent?.Text
//                 },
//                 "TimeZoneCode": {
//                 "Text": check response?.PayerReference?.PartyReference?.PartyDateTime?.TimeZoneCode?.Text
//                 },
//                 "DaylightSavingIndicator": {
//                 "Text": check response?.PayerReference?.PartyReference?.PartyDateTime?.DaylightSavingIndicator?.Text
//                 },
//                 "DateTimeType": check response?.PayerReference?.PartyReference?.PartyDateTime?.DateTimeType
//             },
//             "PartyIdentification": {
//                 "PartyIdentificationType": check response?.PayerReference?.PartyReference?.PartyIdentification?.PartyIdentificationType
//                 // "PartyIdentification": check response?.PayerReference?.PartyReference?.PartyIdentification?.PartyIdentification
//             },
//             "PartyLegalStructureType": check response?.PayerReference?.PartyReference?.PartyLegalStructureType
//             },
//             "PaymentInstructionReference": check response?.PayerReference?.PaymentInstructionReference
//         },
//         "PayerBankReference": {
//             "InvolvementType": check response?.PayerBankReference?.InvolvementType,
//             "PartyReference": {
//             "PartyName": {
//                 "Name": check response?.PayerBankReference?.PartyReference?.PartyName?.Name
//             },
//             "PartyType": check response?.PayerBankReference?.PartyReference?.PartyType,
//             "PartyDateTime": {
//                 "DateTimeContent": {
//                 "Text": check response?.PayerBankReference?.PartyReference?.PartyDateTime?.DateTimeContent?.Text
//                 },
//                 "TimeZoneCode": {
//                 "Text": check response?.PayerBankReference?.PartyReference?.PartyDateTime?.TimeZoneCode?.Text
//                 },
//                 "DaylightSavingIndicator": {
//                 "Text": check response?.PayerBankReference?.PartyReference?.PartyDateTime?.DaylightSavingIndicator?.Text
//                 },
//                 "DateTimeType": check response?.PayerBankReference?.PartyReference?.PartyDateTime?.DateTimeType
//             },
//             "PartyIdentification": {
//                 "PartyIdentificationType": check response?.PayerBankReference?.PartyReference?.PartyIdentification?.PartyIdentificationType
//             //     "PartyIdentification": check response?.PayerBankReference?.PartyReference?.PartyIdentification?.PartyIdentification
//             },
//             "PartyLegalStructureType": check response?.PayerBankReference?.PartyReference?.PartyLegalStructureType
//             },
//             "PaymentInstructionReference": check response?.PayerBankReference?.PaymentInstructionReference
//         },
//         "PayerAccountReference": {
//             "PaymentInstructionReference": {
//             "PaymentInstructionDirectionType": {
//                 "Text": check response?.PayerAccountReference?.PaymentInstructionReference?.PaymentInstructionDirectionType?.Text
//             },
//             "PaymentInstructionType": check response?.PayerAccountReference?.PaymentInstructionReference?.PaymentInstructionType,
//             "PaymentInstructionRequestedMechanism": {
//                 "Text": check response?.PayerAccountReference?.PaymentInstructionReference?.PaymentInstructionRequestedMechanism?.Text
//             },
//             "PaymentInstructionProcessingValidityTime": {
//                 "FromDateTime": {
//                 "DateTimeContent": {
//                     "Text": check response?.PayerAccountReference?.PaymentInstructionReference?.PaymentInstructionProcessingValidityTime?.FromDateTime?.DateTimeContent?.Text
//                 },
//                 "TimeZoneCode": {
//                     "Text": check response?.PayerAccountReference?.PaymentInstructionReference?.PaymentInstructionProcessingValidityTime?.FromDateTime?.TimeZoneCode?.Text
//                 },
//                 "DaylightSavingIndicator": {
//                     "Text": check response?.PayerAccountReference?.PaymentInstructionReference?.PaymentInstructionProcessingValidityTime?.FromDateTime?.DaylightSavingIndicator?.Text
//                 },
//                 "DateTimeType": check response?.PayerAccountReference?.PaymentInstructionReference?.PaymentInstructionProcessingValidityTime?.FromDateTime?.DateTimeType
//                 },
//                 "ToDateTime": {
//                 "DateTimeContent": {
//                     "Text": check response?.PayerAccountReference?.PaymentInstructionReference?.PaymentInstructionProcessingValidityTime?.ToDateTime?.DateTimeContent?.Text
//                 },
//                 "TimeZoneCode": {
//                     "Text": check response?.PayerAccountReference?.PaymentInstructionReference?.PaymentInstructionProcessingValidityTime?.ToDateTime?.TimeZoneCode?.Text
//                 },
//                 "DaylightSavingIndicator": {
//                     "Text": check response?.PayerAccountReference?.PaymentInstructionReference?.PaymentInstructionProcessingValidityTime?.ToDateTime?.DaylightSavingIndicator?.Text
//                 },
//                 "DateTimeType": check response?.PayerAccountReference?.PaymentInstructionReference?.PaymentInstructionProcessingValidityTime?.ToDateTime?.DateTimeType
//                 }
//             },
//             "PaymentInstructionPriority": check response?.PayerAccountReference?.PaymentInstructionReference?.PaymentInstructionPriority,
//             "PaymentInstructionClearingChannel": check response?.PayerAccountReference?.PaymentInstructionReference?.PaymentInstructionClearingChannel,
//             "PaymentCreditDebitIndicator": check response?.PayerAccountReference?.PaymentInstructionReference?.PaymentCreditDebitIndicator,
//             "PaymentInstructionStatus": {
//                 "PaymentInstructionStatus": {
//                 "StatusReason": {
//                     "Text": check response?.PayerAccountReference?.PaymentInstructionReference?.PaymentInstructionStatus?.PaymentInstructionStatus?.StatusReason?.Text
//                 },
//                 "StatusDateTime": {
//                     "DateTimeContent": {
//                     "Text": check response?.PayerAccountReference?.PaymentInstructionReference?.PaymentInstructionStatus?.PaymentInstructionStatus?.StatusDateTime?.DateTimeContent?.Text
//                     },
//                     "TimeZoneCode": {
//                     "Text": check response?.PayerAccountReference?.PaymentInstructionReference?.PaymentInstructionStatus?.PaymentInstructionStatus?.StatusDateTime?.TimeZoneCode?.Text
//                     },
//                     "DaylightSavingIndicator": {
//                     "Text": check response?.PayerAccountReference?.PaymentInstructionReference?.PaymentInstructionStatus?.PaymentInstructionStatus?.StatusDateTime?.DaylightSavingIndicator?.Text
//                     },
//                     "DateTimeType": check response?.PayerAccountReference?.PaymentInstructionReference?.PaymentInstructionStatus?.PaymentInstructionStatus?.StatusDateTime?.DateTimeType
//                 },
//                 "StatusValidityPeriod": {
//                     "FromDateTime": {
//                     "DateTimeContent": {
//                         "Text": check response?.PayerAccountReference?.PaymentInstructionReference?.PaymentInstructionStatus?.PaymentInstructionStatus?.StatusValidityPeriod?.FromDateTime?.DateTimeContent?.Text
//                     },
//                     "TimeZoneCode": {
//                         "Text": check response?.PayerAccountReference?.PaymentInstructionReference?.PaymentInstructionStatus?.PaymentInstructionStatus?.StatusValidityPeriod?.FromDateTime?.TimeZoneCode?.Text
//                     },
//                     "DaylightSavingIndicator": {
//                         "Text": check response?.PayerAccountReference?.PaymentInstructionReference?.PaymentInstructionStatus?.PaymentInstructionStatus?.StatusValidityPeriod?.FromDateTime?.DaylightSavingIndicator?.Text
//                     },
//                     "DateTimeType": check response?.PayerAccountReference?.PaymentInstructionReference?.PaymentInstructionStatus?.PaymentInstructionStatus?.StatusValidityPeriod?.FromDateTime?.DateTimeType
//                     },
//                     "ToDateTime": {
//                     "DateTimeContent": {
//                         "Text": check response?.PayerAccountReference?.PaymentInstructionReference?.PaymentInstructionStatus?.PaymentInstructionStatus?.StatusValidityPeriod?.ToDateTime?.DateTimeContent?.Text
//                     },
//                     "TimeZoneCode": {
//                         "Text": check response?.PayerAccountReference?.PaymentInstructionReference?.PaymentInstructionStatus?.PaymentInstructionStatus?.StatusValidityPeriod?.ToDateTime?.TimeZoneCode?.Text
//                     },
//                     "DaylightSavingIndicator": {
//                         "Text": check response?.PayerAccountReference?.PaymentInstructionReference?.PaymentInstructionStatus?.PaymentInstructionStatus?.StatusValidityPeriod?.ToDateTime?.DaylightSavingIndicator?.Text
//                     },
//                     "DateTimeType": check response?.PayerAccountReference?.PaymentInstructionReference?.PaymentInstructionStatus?.PaymentInstructionStatus?.StatusValidityPeriod?.ToDateTime?.DateTimeType
//                     }
//                 },
//                 "StatusInvolvedParty": {
//                     "PartyReference": {
//                     "PartyName": {
//                         "Name": check response?.PayerAccountReference?.PaymentInstructionReference?.PaymentInstructionStatus?.PaymentInstructionStatus?.StatusInvolvedParty?.PartyReference?.PartyName?.Name
//                     },
//                     "PartyType": check response?.PayerAccountReference?.PaymentInstructionReference?.PaymentInstructionStatus?.PaymentInstructionStatus?.StatusInvolvedParty?.PartyReference?.PartyType,
//                     "PartyDateTime": {
//                         "DateTimeContent": {
//                         "Text": check response?.PayerAccountReference?.PaymentInstructionReference?.PaymentInstructionStatus?.PaymentInstructionStatus?.StatusInvolvedParty?.PartyReference?.PartyDateTime?.DateTimeContent?.Text
//                         },
//                         "TimeZoneCode": {
//                         "Text": check response?.PayerAccountReference?.PaymentInstructionReference?.PaymentInstructionStatus?.PaymentInstructionStatus?.StatusInvolvedParty?.PartyReference?.PartyDateTime?.TimeZoneCode?.Text
//                         },
//                         "DaylightSavingIndicator": {
//                         "Text": check response?.PayerAccountReference?.PaymentInstructionReference?.PaymentInstructionStatus?.PaymentInstructionStatus?.StatusInvolvedParty?.PartyReference?.PartyDateTime?.DaylightSavingIndicator?.Text
//                         },
//                         "DateTimeType": check response?.PayerAccountReference?.PaymentInstructionReference?.PaymentInstructionStatus?.PaymentInstructionStatus?.StatusInvolvedParty?.PartyReference?.PartyDateTime?.DateTimeType
//                     },
//                     "PartyIdentification": {
//                         "PartyIdentificationType": check response?.PayerAccountReference?.PaymentInstructionReference?.PaymentInstructionStatus?.PaymentInstructionStatus?.StatusInvolvedParty?.PartyReference?.PartyIdentification?.PartyIdentificationType
//                         // "PartyIdentification": check response?.PayerAccountReference?.PaymentInstructionReference?.PaymentInstructionStatus?.PaymentInstructionStatus?.StatusInvolvedParty?.PartyReference?.PartyIdentification?.PartyIdentification
//                     },
//                     "PartyLegalStructureType": check response?.PayerAccountReference?.PaymentInstructionReference?.PaymentInstructionStatus?.PaymentInstructionStatus?.StatusInvolvedParty?.PartyReference?.PartyLegalStructureType
//                     },
//                     "PartyInvolvement": {
//                     "PartyRoleType": {
//                         "Text": check response?.PayerAccountReference?.PaymentInstructionReference?.PaymentInstructionStatus?.PaymentInstructionStatus?.StatusInvolvedParty?.PartyInvolvement?.PartyRoleType?.Text
//                     },
//                     "PartyRoleName": {
//                         "Name": check response?.PayerAccountReference?.PaymentInstructionReference?.PaymentInstructionStatus?.PaymentInstructionStatus?.StatusInvolvedParty?.PartyInvolvement?.PartyRoleName?.Name
//                     },
//                     "PartyRoleValidityPeriod": {
//                         "FromDateTime": {
//                         "DateTimeContent": {
//                             "Text": check response?.PayerAccountReference?.PaymentInstructionReference?.PaymentInstructionStatus?.PaymentInstructionStatus?.StatusInvolvedParty?.PartyInvolvement?.PartyRoleValidityPeriod?.FromDateTime?.DateTimeContent?.Text
//                         },
//                         "TimeZoneCode": {
//                             "Text": check response?.PayerAccountReference?.PaymentInstructionReference?.PaymentInstructionStatus?.PaymentInstructionStatus?.StatusInvolvedParty?.PartyInvolvement?.PartyRoleValidityPeriod?.FromDateTime?.TimeZoneCode?.Text
//                         },
//                         "DaylightSavingIndicator": {
//                             "Text": check response?.PayerAccountReference?.PaymentInstructionReference?.PaymentInstructionStatus?.PaymentInstructionStatus?.StatusInvolvedParty?.PartyInvolvement?.PartyRoleValidityPeriod?.FromDateTime?.DaylightSavingIndicator?.Text
//                         },
//                         "DateTimeType": check response?.PayerAccountReference?.PaymentInstructionReference?.PaymentInstructionStatus?.PaymentInstructionStatus?.StatusInvolvedParty?.PartyInvolvement?.PartyRoleValidityPeriod?.FromDateTime?.DateTimeType
//                         },
//                         "ToDateTime": {
//                         "DateTimeContent": {
//                             "Text": check response?.PayerAccountReference?.PaymentInstructionReference?.PaymentInstructionStatus?.PaymentInstructionStatus?.StatusInvolvedParty?.PartyInvolvement?.PartyRoleValidityPeriod?.ToDateTime?.DateTimeContent?.Text
//                         },
//                         "TimeZoneCode": {
//                             "Text": check response?.PayerAccountReference?.PaymentInstructionReference?.PaymentInstructionStatus?.PaymentInstructionStatus?.StatusInvolvedParty?.PartyInvolvement?.PartyRoleValidityPeriod?.ToDateTime?.TimeZoneCode?.Text
//                         },
//                         "DaylightSavingIndicator": {
//                             "Text": check response?.PayerAccountReference?.PaymentInstructionReference?.PaymentInstructionStatus?.PaymentInstructionStatus?.StatusInvolvedParty?.PartyInvolvement?.PartyRoleValidityPeriod?.ToDateTime?.DaylightSavingIndicator?.Text
//                         },
//                         "DateTimeType": check response?.PayerAccountReference?.PaymentInstructionReference?.PaymentInstructionStatus?.PaymentInstructionStatus?.StatusInvolvedParty?.PartyInvolvement?.PartyRoleValidityPeriod?.ToDateTime?.DateTimeType
//                         }
//                     },
//                     "PartyInvolvementType": check response?.PayerAccountReference?.PaymentInstructionReference?.PaymentInstructionStatus?.PaymentInstructionStatus?.StatusInvolvedParty?.PartyInvolvement?.PartyInvolvementType
//                     }
//                 }
//                 },
//                 "PaymentInstructionStatusType": check response?.PayerAccountReference?.PaymentInstructionReference?.PaymentInstructionStatus?.PaymentInstructionStatusType
//             },
//             "PaymentInstructionAmount": {
//                 "AmountValue": {
//                 "Value": check response?.PayerAccountReference?.PaymentInstructionReference?.PaymentInstructionAmount?.AmountValue?.Value
//                 },
//                 "AmountCurrency": {
//                 "Currencycode": check response?.PayerAccountReference?.PaymentInstructionReference?.PaymentInstructionAmount?.AmountCurrency?.Currencycode
//                 },
//                 "DecimalPointPosition": {
//                 "Text": check response?.PayerAccountReference?.PaymentInstructionReference?.PaymentInstructionAmount?.DecimalPointPosition?.Text
//                 },
//                 "AmountType": check response?.PayerAccountReference?.PaymentInstructionReference?.PaymentInstructionAmount?.AmountType
//             },
//             "PaymentInstructionDatetime": {
//                 "PaymentDate": {
//                 "DateTimeContent": {
//                     "Text": check response?.PayerAccountReference?.PaymentInstructionReference?.PaymentInstructionDatetime?.PaymentDate?.DateTimeContent?.Text
//                 },
//                 "TimeZoneCode": {
//                     "Text": check response?.PayerAccountReference?.PaymentInstructionReference?.PaymentInstructionDatetime?.PaymentDate?.TimeZoneCode?.Text
//                 },
//                 "DaylightSavingIndicator": {
//                     "Text": check response?.PayerAccountReference?.PaymentInstructionReference?.PaymentInstructionDatetime?.PaymentDate?.DaylightSavingIndicator?.Text
//                 },
//                 "DateTimeType": check response?.PayerAccountReference?.PaymentInstructionReference?.PaymentInstructionDatetime?.PaymentDate?.DateTimeType
//                 },
//                 "PaymentDateType": check response?.PayerAccountReference?.PaymentInstructionReference?.PaymentInstructionDatetime?.PaymentDateType
//             }
//             },
//             "InvolvedAccountType": check response?.PayerAccountReference?.InvolvedAccountType,
//             "AccountReference": {
//             "AccountStatus": {
//                 "AccountStatus": {
//                 "StatusReason": {
//                     "Text": check response?.PayerAccountReference?.AccountReference?.AccountStatus?.AccountStatus?.StatusReason?.Text
//                 },
//                 "StatusDateTime": {
//                     "DateTimeContent": {
//                     "Text": check response?.PayerAccountReference?.AccountReference?.AccountStatus?.AccountStatus?.StatusDateTime?.DateTimeContent?.Text
//                     },
//                     "TimeZoneCode": {
//                     "Text": check response?.PayerAccountReference?.AccountReference?.AccountStatus?.AccountStatus?.StatusDateTime?.TimeZoneCode?.Text
//                     },
//                     "DaylightSavingIndicator": {
//                     "Text": check response?.PayerAccountReference?.AccountReference?.AccountStatus?.AccountStatus?.StatusDateTime?.DaylightSavingIndicator?.Text
//                     },
//                     "DateTimeType": check response?.PayerAccountReference?.AccountReference?.AccountStatus?.AccountStatus?.StatusDateTime?.DateTimeType
//                 },
//                 "StatusValidityPeriod": {
//                     "FromDateTime": {
//                     "DateTimeContent": {
//                         "Text": check response?.PayerAccountReference?.AccountReference?.AccountStatus?.AccountStatus?.StatusValidityPeriod?.FromDateTime?.DateTimeContent?.Text
//                     },
//                     "TimeZoneCode": {
//                         "Text": check response?.PayerAccountReference?.AccountReference?.AccountStatus?.AccountStatus?.StatusValidityPeriod?.FromDateTime?.TimeZoneCode?.Text
//                     },
//                     "DaylightSavingIndicator": {
//                         "Text": check response?.PayerAccountReference?.AccountReference?.AccountStatus?.AccountStatus?.StatusValidityPeriod?.FromDateTime?.DaylightSavingIndicator?.Text
//                     },
//                     "DateTimeType": check response?.PayerAccountReference?.AccountReference?.AccountStatus?.AccountStatus?.StatusValidityPeriod?.FromDateTime?.DateTimeType
//                     },
//                     "ToDateTime": {
//                     "DateTimeContent": {
//                         "Text": check response?.PayerAccountReference?.AccountReference?.AccountStatus?.AccountStatus?.StatusValidityPeriod?.ToDateTime?.DateTimeContent?.Text
//                     },
//                     "TimeZoneCode": {
//                         "Text": check response?.PayerAccountReference?.AccountReference?.AccountStatus?.AccountStatus?.StatusValidityPeriod?.ToDateTime?.TimeZoneCode?.Text
//                     },
//                     "DaylightSavingIndicator": {
//                         "Text": check response?.PayerAccountReference?.AccountReference?.AccountStatus?.AccountStatus?.StatusValidityPeriod?.ToDateTime?.DaylightSavingIndicator?.Text
//                     },
//                     "DateTimeType": check response?.PayerAccountReference?.AccountReference?.AccountStatus?.AccountStatus?.StatusValidityPeriod?.ToDateTime?.DateTimeType
//                     }
//                 },
//                 "StatusInvolvedParty": {
//                     "PartyReference": {
//                     "PartyName": {
//                         "Name": check response?.PayerAccountReference?.AccountReference?.AccountStatus?.AccountStatus?.StatusInvolvedParty?.PartyReference?.PartyName?.Name
//                     },
//                     "PartyType": check response?.PayerAccountReference?.AccountReference?.AccountStatus?.AccountStatus?.StatusInvolvedParty?.PartyReference?.PartyType,
//                     "PartyDateTime": {
//                         "DateTimeContent": {
//                         "Text": check response?.PayerAccountReference?.AccountReference?.AccountStatus?.AccountStatus?.StatusInvolvedParty?.PartyReference?.PartyDateTime?.DateTimeContent?.Text
//                         },
//                         "TimeZoneCode": {
//                         "Text": check response?.PayerAccountReference?.AccountReference?.AccountStatus?.AccountStatus?.StatusInvolvedParty?.PartyReference?.PartyDateTime?.TimeZoneCode?.Text
//                         },
//                         "DaylightSavingIndicator": {
//                         "Text": check response?.PayerAccountReference?.AccountReference?.AccountStatus?.AccountStatus?.StatusInvolvedParty?.PartyReference?.PartyDateTime?.DaylightSavingIndicator?.Text
//                         },
//                         "DateTimeType": check response?.PayerAccountReference?.AccountReference?.AccountStatus?.AccountStatus?.StatusInvolvedParty?.PartyReference?.PartyDateTime?.DateTimeType
//                     },
//                     "PartyIdentification": {
//                         "PartyIdentificationType": check response?.PayerAccountReference?.AccountReference?.AccountStatus?.AccountStatus?.StatusInvolvedParty?.PartyReference?.PartyIdentification?.PartyIdentificationType
//                         // "PartyIdentification": check response?.PayerAccountReference?.AccountReference?.AccountStatus?.AccountStatus?.StatusInvolvedParty?.PartyReference?.PartyIdentification?.PartyIdentification
//                     },
//                     "PartyLegalStructureType": check response?.PayerAccountReference?.AccountReference?.AccountStatus?.AccountStatus?.StatusInvolvedParty?.PartyReference?.PartyLegalStructureType
//                     },
//                     "PartyInvolvement": {
//                     "PartyRoleType": {
//                         "Text": check response?.PayerAccountReference?.AccountReference?.AccountStatus?.AccountStatus?.StatusInvolvedParty?.PartyInvolvement?.PartyRoleType?.Text
//                     },
//                     "PartyRoleName": {
//                         "Name": check response?.PayerAccountReference?.AccountReference?.AccountStatus?.AccountStatus?.StatusInvolvedParty?.PartyInvolvement?.PartyRoleName?.Name
//                     },
//                     "PartyRoleValidityPeriod": {
//                         "FromDateTime": {
//                         "DateTimeContent": {
//                             "Text": check response?.PayerAccountReference?.AccountReference?.AccountStatus?.AccountStatus?.StatusInvolvedParty?.PartyInvolvement?.PartyRoleValidityPeriod?.FromDateTime?.DateTimeContent?.Text
//                         },
//                         "TimeZoneCode": {
//                             "Text": check response?.PayerAccountReference?.AccountReference?.AccountStatus?.AccountStatus?.StatusInvolvedParty?.PartyInvolvement?.PartyRoleValidityPeriod?.FromDateTime?.TimeZoneCode?.Text
//                         },
//                         "DaylightSavingIndicator": {
//                             "Text": check response?.PayerAccountReference?.AccountReference?.AccountStatus?.AccountStatus?.StatusInvolvedParty?.PartyInvolvement?.PartyRoleValidityPeriod?.FromDateTime?.DaylightSavingIndicator?.Text
//                         },
//                         "DateTimeType": check response?.PayerAccountReference?.AccountReference?.AccountStatus?.AccountStatus?.StatusInvolvedParty?.PartyInvolvement?.PartyRoleValidityPeriod?.FromDateTime?.DateTimeType
//                         },
//                         "ToDateTime": {
//                         "DateTimeContent": {
//                             "Text": check response?.PayerAccountReference?.AccountReference?.AccountStatus?.AccountStatus?.StatusInvolvedParty?.PartyInvolvement?.PartyRoleValidityPeriod?.ToDateTime?.DateTimeContent?.Text
//                         },
//                         "TimeZoneCode": {
//                             "Text": check response?.PayerAccountReference?.AccountReference?.AccountStatus?.AccountStatus?.StatusInvolvedParty?.PartyInvolvement?.PartyRoleValidityPeriod?.ToDateTime?.TimeZoneCode?.Text
//                         },
//                         "DaylightSavingIndicator": {
//                             "Text": check response?.PayerAccountReference?.AccountReference?.AccountStatus?.AccountStatus?.StatusInvolvedParty?.PartyInvolvement?.PartyRoleValidityPeriod?.ToDateTime?.DaylightSavingIndicator?.Text
//                         },
//                         "DateTimeType": check response?.PayerAccountReference?.AccountReference?.AccountStatus?.AccountStatus?.StatusInvolvedParty?.PartyInvolvement?.PartyRoleValidityPeriod?.ToDateTime?.DateTimeType
//                         }
//                     },
//                     "PartyInvolvementType": check response?.PayerAccountReference?.AccountReference?.AccountStatus?.AccountStatus?.StatusInvolvedParty?.PartyInvolvement?.PartyInvolvementType
//                     }
//                 }
//                 },
//                 "AccountStatusType": check response?.PayerAccountReference?.AccountReference?.AccountStatus?.AccountStatusType
//             },
//             "AccountIdentification": {
//                 "AccountIdentificationType": check response?.PayerAccountReference?.AccountReference?.AccountIdentification?.AccountIdentificationType,
//                 "AccountIdentification": {
//                 "IdentifierValue": {
//                     "Value": check response?.PayerAccountReference?.AccountReference?.AccountIdentification?.AccountIdentification?.IdentifierValue?.Value
//                 },
//                 "IdentifierIssuingAuthority": {
//                     "PartyReference": {
//                     "PartyName": {
//                         "Name": check response?.PayerAccountReference?.AccountReference?.AccountIdentification?.AccountIdentification?.IdentifierIssuingAuthority?.PartyReference?.PartyName?.Name
//                     },
//                     "PartyType": check response?.PayerAccountReference?.AccountReference?.AccountIdentification?.AccountIdentification?.IdentifierIssuingAuthority?.PartyReference?.PartyType,
//                     "PartyDateTime": {
//                         "DateTimeContent": {
//                         "Text": check response?.PayerAccountReference?.AccountReference?.AccountIdentification?.AccountIdentification?.IdentifierIssuingAuthority?.PartyReference?.PartyDateTime?.DateTimeContent?.Text
//                         },
//                         "TimeZoneCode": {
//                         "Text": check response?.PayerAccountReference?.AccountReference?.AccountIdentification?.AccountIdentification?.IdentifierIssuingAuthority?.PartyReference?.PartyDateTime?.TimeZoneCode?.Text
//                         },
//                         "DaylightSavingIndicator": {
//                         "Text": check response?.PayerAccountReference?.AccountReference?.AccountIdentification?.AccountIdentification?.IdentifierIssuingAuthority?.PartyReference?.PartyDateTime?.DaylightSavingIndicator?.Text
//                         },
//                         "DateTimeType": check response?.PayerAccountReference?.AccountReference?.AccountIdentification?.AccountIdentification?.IdentifierIssuingAuthority?.PartyReference?.PartyDateTime?.DateTimeType
//                     },
//                     "PartyIdentification": {
//                         "PartyIdentificationType": check response?.PayerAccountReference?.AccountReference?.AccountIdentification?.AccountIdentification?.IdentifierIssuingAuthority?.PartyReference?.PartyIdentification?.PartyIdentificationType
//                         // "PartyIdentification": check response?.PayerAccountReference?.AccountReference?.AccountIdentification?.AccountIdentification?.IdentifierIssuingAuthority?.PartyReference?.PartyIdentification?.PartyIdentification
//                     },
//                     "PartyLegalStructureType": check response?.PayerAccountReference?.AccountReference?.AccountIdentification?.AccountIdentification?.IdentifierIssuingAuthority?.PartyReference?.PartyLegalStructureType
//                     },
//                     "PartyInvolvement": {
//                     "PartyRoleType": {
//                         "Text": check response?.PayerAccountReference?.AccountReference?.AccountIdentification?.AccountIdentification?.IdentifierIssuingAuthority?.PartyInvolvement?.PartyRoleType?.Text
//                     },
//                     "PartyRoleName": {
//                         "Name": check response?.PayerAccountReference?.AccountReference?.AccountIdentification?.AccountIdentification?.IdentifierIssuingAuthority?.PartyInvolvement?.PartyRoleName?.Name
//                     },
//                     "PartyRoleValidityPeriod": {
//                         "FromDateTime": {
//                         "DateTimeContent": {
//                             "Text": check response?.PayerAccountReference?.AccountReference?.AccountIdentification?.AccountIdentification?.IdentifierIssuingAuthority?.PartyInvolvement?.PartyRoleValidityPeriod?.FromDateTime?.DateTimeContent?.Text
//                         },
//                         "TimeZoneCode": {
//                             "Text": check response?.PayerAccountReference?.AccountReference?.AccountIdentification?.AccountIdentification?.IdentifierIssuingAuthority?.PartyInvolvement?.PartyRoleValidityPeriod?.FromDateTime?.TimeZoneCode?.Text
//                         },
//                         "DaylightSavingIndicator": {
//                             "Text": check response?.PayerAccountReference?.AccountReference?.AccountIdentification?.AccountIdentification?.IdentifierIssuingAuthority?.PartyInvolvement?.PartyRoleValidityPeriod?.FromDateTime?.DaylightSavingIndicator?.Text
//                         },
//                         "DateTimeType": check response?.PayerAccountReference?.AccountReference?.AccountIdentification?.AccountIdentification?.IdentifierIssuingAuthority?.PartyInvolvement?.PartyRoleValidityPeriod?.FromDateTime?.DateTimeType
//                         },
//                         "ToDateTime": {
//                         "DateTimeContent": {
//                             "Text": check response?.PayerAccountReference?.AccountReference?.AccountIdentification?.AccountIdentification?.IdentifierIssuingAuthority?.PartyInvolvement?.PartyRoleValidityPeriod?.ToDateTime?.DateTimeContent?.Text
//                         },
//                         "TimeZoneCode": {
//                             "Text": check response?.PayerAccountReference?.AccountReference?.AccountIdentification?.AccountIdentification?.IdentifierIssuingAuthority?.PartyInvolvement?.PartyRoleValidityPeriod?.ToDateTime?.TimeZoneCode?.Text
//                         },
//                         "DaylightSavingIndicator": {
//                             "Text": check response?.PayerAccountReference?.AccountReference?.AccountIdentification?.AccountIdentification?.IdentifierIssuingAuthority?.PartyInvolvement?.PartyRoleValidityPeriod?.ToDateTime?.DaylightSavingIndicator?.Text
//                         },
//                         "DateTimeType": check response?.PayerAccountReference?.AccountReference?.AccountIdentification?.AccountIdentification?.IdentifierIssuingAuthority?.PartyInvolvement?.PartyRoleValidityPeriod?.ToDateTime?.DateTimeType
//                         }
//                     },
//                     "PartyInvolvementType": check response?.PayerAccountReference?.AccountReference?.AccountIdentification?.AccountIdentification?.IdentifierIssuingAuthority?.PartyInvolvement?.PartyInvolvementType
//                     }
//                 },
//                 "IdentifierStartDate": {
//                     "DateTimeContent": {
//                     "Text": check response?.PayerAccountReference?.AccountReference?.AccountIdentification?.AccountIdentification?.IdentifierStartDate?.DateTimeContent?.Text
//                     },
//                     "TimeZoneCode": {
//                     "Text": check response?.PayerAccountReference?.AccountReference?.AccountIdentification?.AccountIdentification?.IdentifierStartDate?.TimeZoneCode?.Text
//                     },
//                     "DaylightSavingIndicator": {
//                     "Text": check response?.PayerAccountReference?.AccountReference?.AccountIdentification?.AccountIdentification?.IdentifierStartDate?.DaylightSavingIndicator?.Text
//                     },
//                     "DateTimeType": check response?.PayerAccountReference?.AccountReference?.AccountIdentification?.AccountIdentification?.IdentifierStartDate?.DateTimeType
//                 },
//                 "IdentifierEndDate": {
//                     "DateTimeContent": {
//                     "Text": check response?.PayerAccountReference?.AccountReference?.AccountIdentification?.AccountIdentification?.IdentifierEndDate?.DateTimeContent?.Text
//                     },
//                     "TimeZoneCode": {
//                     "Text": check response?.PayerAccountReference?.AccountReference?.AccountIdentification?.AccountIdentification?.IdentifierEndDate?.TimeZoneCode?.Text
//                     },
//                     "DaylightSavingIndicator": {
//                     "Text": check response?.PayerAccountReference?.AccountReference?.AccountIdentification?.AccountIdentification?.IdentifierEndDate?.DaylightSavingIndicator?.Text
//                     },
//                     "DateTimeType": check response?.PayerAccountReference?.AccountReference?.AccountIdentification?.AccountIdentification?.IdentifierEndDate?.DateTimeType
//                 }
//                 }
//             },
//             "AccountDate": {
//                 "AccountDateType": check response?.PayerAccountReference?.AccountReference?.AccountDate?.AccountDateType,
//                 "AccountDate": {
//                 "DateTimeContent": {
//                     "Text": check response?.PayerAccountReference?.AccountReference?.AccountDate?.AccountDate?.DateTimeContent?.Text
//                 },
//                 "TimeZoneCode": {
//                     "Text": check response?.PayerAccountReference?.AccountReference?.AccountDate?.AccountDate?.TimeZoneCode?.Text
//                 },
//                 "DaylightSavingIndicator": {
//                     "Text": check response?.PayerAccountReference?.AccountReference?.AccountDate?.AccountDate?.DaylightSavingIndicator?.Text
//                 },
//                 "DateTimeType": check response?.PayerAccountReference?.AccountReference?.AccountDate?.AccountDate?.DateTimeType
//                 }
//             },
//             "AccountType": check response?.PayerAccountReference?.AccountReference?.AccountType,
//             "AccountPurpose": {
//                 "Text": check response?.PayerAccountReference?.AccountReference?.AccountPurpose?.Text
//             },
//             "AccountBalance": {
//                 "BalanceAmount": {
//                 "AmountValue": {
//                     "Value": check response?.PayerAccountReference?.AccountReference?.AccountBalance?.BalanceAmount?.AmountValue?.Value
//                 },
//                 "AmountCurrency": {
//                     "Currencycode": check response?.PayerAccountReference?.AccountReference?.AccountBalance?.BalanceAmount?.AmountCurrency?.Currencycode
//                 },
//                 "DecimalPointPosition": {
//                     "Text": check response?.PayerAccountReference?.AccountReference?.AccountBalance?.BalanceAmount?.DecimalPointPosition?.Text
//                 },
//                 "AmountType": check response?.PayerAccountReference?.AccountReference?.AccountBalance?.BalanceAmount?.AmountType
//                 },
//                 "BalanceType": check response?.PayerAccountReference?.AccountReference?.AccountBalance?.BalanceType,
//                 "BalanceValueDate": {
//                 "DateTimeContent": {
//                     "Text": check response?.PayerAccountReference?.AccountReference?.AccountBalance?.BalanceValueDate?.DateTimeContent?.Text
//                 },
//                 "TimeZoneCode": {
//                     "Text": check response?.PayerAccountReference?.AccountReference?.AccountBalance?.BalanceValueDate?.TimeZoneCode?.Text
//                 },
//                 "DaylightSavingIndicator": {
//                     "Text": check response?.PayerAccountReference?.AccountReference?.AccountBalance?.BalanceValueDate?.DaylightSavingIndicator?.Text
//                 },
//                 "DateTimeType": check response?.PayerAccountReference?.AccountReference?.AccountBalance?.BalanceValueDate?.DateTimeType
//                 },
//                 "BalanceIndicator": check response?.PayerAccountReference?.AccountReference?.AccountBalance?.BalanceIndicator,
//                 "BalanceCounterpartyType": check response?.PayerAccountReference?.AccountReference?.AccountBalance?.BalanceCounterpartyType,
//                 "BalanceCalculationDate": {
//                 "DateTimeContent": {
//                     "Text": check response?.PayerAccountReference?.AccountReference?.AccountBalance?.BalanceCalculationDate?.DateTimeContent?.Text
//                 },
//                 "TimeZoneCode": {
//                     "Text": check response?.PayerAccountReference?.AccountReference?.AccountBalance?.BalanceCalculationDate?.TimeZoneCode?.Text
//                 },
//                 "DaylightSavingIndicator": {
//                     "Text": check response?.PayerAccountReference?.AccountReference?.AccountBalance?.BalanceCalculationDate?.DaylightSavingIndicator?.Text
//                 },
//                 "DateTimeType": check response?.PayerAccountReference?.AccountReference?.AccountBalance?.BalanceCalculationDate?.DateTimeType
//                 },
//                 "BalanceSubType": check response?.PayerAccountReference?.AccountReference?.AccountBalance?.BalanceSubType
//             },
//             "AccountCurrency": {
//                 "AccountCurrencyType": check response?.PayerAccountReference?.AccountReference?.AccountCurrency?.AccountCurrencyType,
//                 "AccountCurrency": {
//                 "Currencycode": check response?.PayerAccountReference?.AccountReference?.AccountCurrency?.AccountCurrency?.Currencycode
//                 }
//             },
//             "AccountDescription": {
//                 "Text": check response?.PayerAccountReference?.AccountReference?.AccountDescription?.Text
//             },
//             "AccountName": {
//                 "Name": check response?.PayerAccountReference?.AccountReference?.AccountName?.Name
//             }
//             }
//         },
//         "PayeeReference": {
//             "InvolvementType": check response?.PayeeReference?.InvolvementType,
//             "PartyReference": {
//             "PartyName": {
//                 "Name": check response?.PayeeReference?.PartyReference?.PartyName?.Name
//             },
//             "PartyType": check response?.PayeeReference?.PartyReference?.PartyType,
//             "PartyDateTime": {
//                 "DateTimeContent": {
//                 "Text": check response?.PayeeReference?.PartyReference?.PartyDateTime?.DateTimeContent?.Text
//                 },
//                 "TimeZoneCode": {
//                 "Text": check response?.PayeeReference?.PartyReference?.PartyDateTime?.TimeZoneCode?.Text
//                 },
//                 "DaylightSavingIndicator": {
//                 "Text": check response?.PayeeReference?.PartyReference?.PartyDateTime?.DaylightSavingIndicator?.Text
//                 },
//                 "DateTimeType": check response?.PayeeReference?.PartyReference?.PartyDateTime?.DateTimeType
//             },
//             "PartyIdentification": {
//                 "PartyIdentificationType": check response?.PayeeReference?.PartyReference?.PartyIdentification?.PartyIdentificationType
//                 // "PartyIdentification": check response?.PayeeReference?.PartyReference?.PartyIdentification?.PartyIdentification
//             },
//             "PartyLegalStructureType": check response?.PayeeReference?.PartyReference?.PartyLegalStructureType
//             },
//             "PaymentInstructionReference": check response?.PayeeReference?.PaymentInstructionReference
//         },
//         "PayeeBankReference": {
//             "InvolvementType": check response?.PayeeBankReference?.InvolvementType,
//             "PartyReference": {
//             "PartyName": {
//                 "Name": check response?.PayeeBankReference?.PartyReference?.PartyName?.Name
//             },
//             "PartyType": check response?.PayeeBankReference?.PartyReference?.PartyType,
//             "PartyDateTime": {
//                 "DateTimeContent": {
//                 "Text": check response?.PayeeBankReference?.PartyReference?.PartyDateTime?.DateTimeContent?.Text
//                 },
//                 "TimeZoneCode": {
//                 "Text": check response?.PayeeBankReference?.PartyReference?.PartyDateTime?.TimeZoneCode?.Text
//                 },
//                 "DaylightSavingIndicator": {
//                 "Text": check response?.PayeeBankReference?.PartyReference?.PartyDateTime?.DaylightSavingIndicator?.Text
//                 },
//                 "DateTimeType": check response?.PayeeBankReference?.PartyReference?.PartyDateTime?.DateTimeType
//             },
//             "PartyIdentification": {
//                 "PartyIdentificationType": check response?.PayeeBankReference?.PartyReference?.PartyIdentification?.PartyIdentificationType
//                 // "PartyIdentification": check response?.PayeeBankReference?.PartyReference?.PartyIdentification?.PartyIdentification
//             },
//             "PartyLegalStructureType": check response?.PayeeBankReference?.PartyReference?.PartyLegalStructureType
//             },
//             "PaymentInstructionReference": check response?.PayeeBankReference?.PaymentInstructionReference
//         },
//         "PayeeAccountReference": {
//             "PaymentInstructionReference": {
//             "PaymentInstructionDirectionType": {
//                 "Text": check response?.PayeeAccountReference?.PaymentInstructionReference?.PaymentInstructionDirectionType?.Text
//             },
//             "PaymentInstructionType": check response?.PayeeAccountReference?.PaymentInstructionReference?.PaymentInstructionType,
//             "PaymentInstructionRequestedMechanism": {
//                 "Text": check response?.PayeeAccountReference?.PaymentInstructionReference?.PaymentInstructionRequestedMechanism?.Text
//             },
//             "PaymentInstructionProcessingValidityTime": {
//                 "FromDateTime": {
//                 "DateTimeContent": {
//                     "Text": check response?.PayeeAccountReference?.PaymentInstructionReference?.PaymentInstructionProcessingValidityTime?.FromDateTime?.DateTimeContent?.Text
//                 },
//                 "TimeZoneCode": {
//                     "Text": check response?.PayeeAccountReference?.PaymentInstructionReference?.PaymentInstructionProcessingValidityTime?.FromDateTime?.TimeZoneCode?.Text
//                 },
//                 "DaylightSavingIndicator": {
//                     "Text": check response?.PayeeAccountReference?.PaymentInstructionReference?.PaymentInstructionProcessingValidityTime?.FromDateTime?.DaylightSavingIndicator?.Text
//                 },
//                 "DateTimeType": check response?.PayeeAccountReference?.PaymentInstructionReference?.PaymentInstructionProcessingValidityTime?.FromDateTime?.DateTimeType
//                 },
//                 "ToDateTime": {
//                 "DateTimeContent": {
//                     "Text": check response?.PayeeAccountReference?.PaymentInstructionReference?.PaymentInstructionProcessingValidityTime?.ToDateTime?.DateTimeContent?.Text
//                 },
//                 "TimeZoneCode": {
//                     "Text": check response?.PayeeAccountReference?.PaymentInstructionReference?.PaymentInstructionProcessingValidityTime?.ToDateTime?.TimeZoneCode?.Text
//                 },
//                 "DaylightSavingIndicator": {
//                     "Text": check response?.PayeeAccountReference?.PaymentInstructionReference?.PaymentInstructionProcessingValidityTime?.ToDateTime?.DaylightSavingIndicator?.Text
//                 },
//                 "DateTimeType": check response?.PayeeAccountReference?.PaymentInstructionReference?.PaymentInstructionProcessingValidityTime?.ToDateTime?.DateTimeType
//                 }
//             },
//             "PaymentInstructionPriority": check response?.PayeeAccountReference?.PaymentInstructionReference?.PaymentInstructionPriority,
//             "PaymentInstructionClearingChannel": check response?.PayeeAccountReference?.PaymentInstructionReference?.PaymentInstructionClearingChannel,
//             "PaymentCreditDebitIndicator": check response?.PayeeAccountReference?.PaymentInstructionReference?.PaymentCreditDebitIndicator,
//             "PaymentInstructionStatus": {
//                 "PaymentInstructionStatus": {
//                 "StatusReason": {
//                     "Text": check response?.PayeeAccountReference?.PaymentInstructionReference?.PaymentInstructionStatus?.PaymentInstructionStatus?.StatusReason?.Text
//                 },
//                 "StatusDateTime": {
//                     "DateTimeContent": {
//                     "Text": check response?.PayeeAccountReference?.PaymentInstructionReference?.PaymentInstructionStatus?.PaymentInstructionStatus?.StatusDateTime?.DateTimeContent?.Text
//                     },
//                     "TimeZoneCode": {
//                     "Text": check response?.PayeeAccountReference?.PaymentInstructionReference?.PaymentInstructionStatus?.PaymentInstructionStatus?.StatusDateTime?.TimeZoneCode?.Text
//                     },
//                     "DaylightSavingIndicator": {
//                     "Text": check response?.PayeeAccountReference?.PaymentInstructionReference?.PaymentInstructionStatus?.PaymentInstructionStatus?.StatusDateTime?.DaylightSavingIndicator?.Text
//                     },
//                     "DateTimeType": check response?.PayeeAccountReference?.PaymentInstructionReference?.PaymentInstructionStatus?.PaymentInstructionStatus?.StatusDateTime?.DateTimeType
//                 },
//                 "StatusValidityPeriod": {
//                     "FromDateTime": {
//                     "DateTimeContent": {
//                         "Text": check response?.PayeeAccountReference?.PaymentInstructionReference?.PaymentInstructionStatus?.PaymentInstructionStatus?.StatusValidityPeriod?.FromDateTime?.DateTimeContent?.Text
//                     },
//                     "TimeZoneCode": {
//                         "Text": check response?.PayeeAccountReference?.PaymentInstructionReference?.PaymentInstructionStatus?.PaymentInstructionStatus?.StatusValidityPeriod?.FromDateTime?.TimeZoneCode?.Text
//                     },
//                     "DaylightSavingIndicator": {
//                         "Text": check response?.PayeeAccountReference?.PaymentInstructionReference?.PaymentInstructionStatus?.PaymentInstructionStatus?.StatusValidityPeriod?.FromDateTime?.DaylightSavingIndicator?.Text
//                     },
//                     "DateTimeType": check response?.PayeeAccountReference?.PaymentInstructionReference?.PaymentInstructionStatus?.PaymentInstructionStatus?.StatusValidityPeriod?.FromDateTime?.DateTimeType
//                     },
//                     "ToDateTime": {
//                     "DateTimeContent": {
//                         "Text": check response?.PayeeAccountReference?.PaymentInstructionReference?.PaymentInstructionStatus?.PaymentInstructionStatus?.StatusValidityPeriod?.ToDateTime?.DateTimeContent?.Text
//                     },
//                     "TimeZoneCode": {
//                         "Text": check response?.PayeeAccountReference?.PaymentInstructionReference?.PaymentInstructionStatus?.PaymentInstructionStatus?.StatusValidityPeriod?.ToDateTime?.TimeZoneCode?.Text
//                     },
//                     "DaylightSavingIndicator": {
//                         "Text": check response?.PayeeAccountReference?.PaymentInstructionReference?.PaymentInstructionStatus?.PaymentInstructionStatus?.StatusValidityPeriod?.ToDateTime?.DaylightSavingIndicator?.Text
//                     },
//                     "DateTimeType": check response?.PayeeAccountReference?.PaymentInstructionReference?.PaymentInstructionStatus?.PaymentInstructionStatus?.StatusValidityPeriod?.ToDateTime?.DateTimeType
//                     }
//                 },
//                 "StatusInvolvedParty": {
//                     "PartyReference": {
//                     "PartyName": {
//                         "Name": check response?.PayeeAccountReference?.PaymentInstructionReference?.PaymentInstructionStatus?.PaymentInstructionStatus?.StatusInvolvedParty?.PartyReference?.PartyName?.Name
//                     },
//                     "PartyType": check response?.PayeeAccountReference?.PaymentInstructionReference?.PaymentInstructionStatus?.PaymentInstructionStatus?.StatusInvolvedParty?.PartyReference?.PartyType,
//                     "PartyDateTime": {
//                         "DateTimeContent": {
//                         "Text": check response?.PayeeAccountReference?.PaymentInstructionReference?.PaymentInstructionStatus?.PaymentInstructionStatus?.StatusInvolvedParty?.PartyReference?.PartyDateTime?.DateTimeContent?.Text
//                         },
//                         "TimeZoneCode": {
//                         "Text": check response?.PayeeAccountReference?.PaymentInstructionReference?.PaymentInstructionStatus?.PaymentInstructionStatus?.StatusInvolvedParty?.PartyReference?.PartyDateTime?.TimeZoneCode?.Text
//                         },
//                         "DaylightSavingIndicator": {
//                         "Text": check response?.PayeeAccountReference?.PaymentInstructionReference?.PaymentInstructionStatus?.PaymentInstructionStatus?.StatusInvolvedParty?.PartyReference?.PartyDateTime?.DaylightSavingIndicator?.Text
//                         },
//                         "DateTimeType": check response?.PayeeAccountReference?.PaymentInstructionReference?.PaymentInstructionStatus?.PaymentInstructionStatus?.StatusInvolvedParty?.PartyReference?.PartyDateTime?.DateTimeType
//                     },
//                     "PartyIdentification": {
//                         "PartyIdentificationType": check response?.PayeeAccountReference?.PaymentInstructionReference?.PaymentInstructionStatus?.PaymentInstructionStatus?.StatusInvolvedParty?.PartyReference?.PartyIdentification?.PartyIdentificationType
//                         // "PartyIdentification": check response?.PayeeAccountReference?.PaymentInstructionReference?.PaymentInstructionStatus?.PaymentInstructionStatus?.StatusInvolvedParty?.PartyReference?.PartyIdentification?.PartyIdentification
//                     },
//                     "PartyLegalStructureType": check response?.PayeeAccountReference?.PaymentInstructionReference?.PaymentInstructionStatus?.PaymentInstructionStatus?.StatusInvolvedParty?.PartyReference?.PartyLegalStructureType
//                     },
//                     "PartyInvolvement": {
//                     "PartyRoleType": {
//                         "Text": check response?.PayeeAccountReference?.PaymentInstructionReference?.PaymentInstructionStatus?.PaymentInstructionStatus?.StatusInvolvedParty?.PartyInvolvement?.PartyRoleType?.Text
//                     },
//                     "PartyRoleName": {
//                         "Name": check response?.PayeeAccountReference?.PaymentInstructionReference?.PaymentInstructionStatus?.PaymentInstructionStatus?.StatusInvolvedParty?.PartyInvolvement?.PartyRoleName?.Name
//                     },
//                     "PartyRoleValidityPeriod": {
//                         "FromDateTime": {
//                         "DateTimeContent": {
//                             "Text": check response?.PayeeAccountReference?.PaymentInstructionReference?.PaymentInstructionStatus?.PaymentInstructionStatus?.StatusInvolvedParty?.PartyInvolvement?.PartyRoleValidityPeriod?.FromDateTime?.DateTimeContent?.Text
//                         },
//                         "TimeZoneCode": {
//                             "Text": check response?.PayeeAccountReference?.PaymentInstructionReference?.PaymentInstructionStatus?.PaymentInstructionStatus?.StatusInvolvedParty?.PartyInvolvement?.PartyRoleValidityPeriod?.FromDateTime?.TimeZoneCode?.Text
//                         },
//                         "DaylightSavingIndicator": {
//                             "Text": check response?.PayeeAccountReference?.PaymentInstructionReference?.PaymentInstructionStatus?.PaymentInstructionStatus?.StatusInvolvedParty?.PartyInvolvement?.PartyRoleValidityPeriod?.FromDateTime?.DaylightSavingIndicator?.Text
//                         },
//                         "DateTimeType": check response?.PayeeAccountReference?.PaymentInstructionReference?.PaymentInstructionStatus?.PaymentInstructionStatus?.StatusInvolvedParty?.PartyInvolvement?.PartyRoleValidityPeriod?.FromDateTime?.DateTimeType
//                         },
//                         "ToDateTime": {
//                         "DateTimeContent": {
//                             "Text": check response?.PayeeAccountReference?.PaymentInstructionReference?.PaymentInstructionStatus?.PaymentInstructionStatus?.StatusInvolvedParty?.PartyInvolvement?.PartyRoleValidityPeriod?.ToDateTime?.DateTimeContent?.Text
//                         },
//                         "TimeZoneCode": {
//                             "Text": check response?.PayeeAccountReference?.PaymentInstructionReference?.PaymentInstructionStatus?.PaymentInstructionStatus?.StatusInvolvedParty?.PartyInvolvement?.PartyRoleValidityPeriod?.ToDateTime?.TimeZoneCode?.Text
//                         },
//                         "DaylightSavingIndicator": {
//                             "Text": check response?.PayeeAccountReference?.PaymentInstructionReference?.PaymentInstructionStatus?.PaymentInstructionStatus?.StatusInvolvedParty?.PartyInvolvement?.PartyRoleValidityPeriod?.ToDateTime?.DaylightSavingIndicator?.Text
//                         },
//                         "DateTimeType": check response?.PayeeAccountReference?.PaymentInstructionReference?.PaymentInstructionStatus?.PaymentInstructionStatus?.StatusInvolvedParty?.PartyInvolvement?.PartyRoleValidityPeriod?.ToDateTime?.DateTimeType
//                         }
//                     },
//                     "PartyInvolvementType": check response?.PayeeAccountReference?.PaymentInstructionReference?.PaymentInstructionStatus?.PaymentInstructionStatus?.StatusInvolvedParty?.PartyInvolvement?.PartyInvolvementType
//                     }
//                 }
//                 },
//                 "PaymentInstructionStatusType": check response?.PayeeAccountReference?.PaymentInstructionReference?.PaymentInstructionStatus?.PaymentInstructionStatusType
//             },
//             "PaymentInstructionAmount": {
//                 "AmountValue": {
//                 "Value": check response?.PayeeAccountReference?.PaymentInstructionReference?.PaymentInstructionAmount?.AmountValue?.Value
//                 },
//                 "AmountCurrency": {
//                 "Currencycode": check response?.PayeeAccountReference?.PaymentInstructionReference?.PaymentInstructionAmount?.AmountCurrency?.Currencycode
//                 },
//                 "DecimalPointPosition": {
//                 "Text": check response?.PayeeAccountReference?.PaymentInstructionReference?.PaymentInstructionAmount?.DecimalPointPosition?.Text
//                 },
//                 "AmountType": check response?.PayeeAccountReference?.PaymentInstructionReference?.PaymentInstructionAmount?.AmountType
//             },
//             "PaymentInstructionDatetime": {
//                 "PaymentDate": {
//                 "DateTimeContent": {
//                     "Text": check response?.PayeeAccountReference?.PaymentInstructionReference?.PaymentInstructionDatetime?.PaymentDate?.DateTimeContent?.Text
//                 },
//                 "TimeZoneCode": {
//                     "Text": check response?.PayeeAccountReference?.PaymentInstructionReference?.PaymentInstructionDatetime?.PaymentDate?.TimeZoneCode?.Text
//                 },
//                 "DaylightSavingIndicator": {
//                     "Text": check response?.PayeeAccountReference?.PaymentInstructionReference?.PaymentInstructionDatetime?.PaymentDate?.DaylightSavingIndicator?.Text
//                 },
//                 "DateTimeType": check response?.PayeeAccountReference?.PaymentInstructionReference?.PaymentInstructionDatetime?.PaymentDate?.DateTimeType
//                 },
//                 "PaymentDateType": check response?.PayeeAccountReference?.PaymentInstructionReference?.PaymentInstructionDatetime?.PaymentDateType
//             }
//             },
//             "InvolvedAccountType": check response?.PayeeAccountReference?.InvolvedAccountType,
//             "AccountReference": {
//             "AccountStatus": {
//                 "AccountStatus": {
//                 "StatusReason": {
//                     "Text": check response?.PayeeAccountReference?.AccountReference?.AccountStatus?.AccountStatus?.StatusReason?.Text
//                 },
//                 "StatusDateTime": {
//                     "DateTimeContent": {
//                     "Text": check response?.PayeeAccountReference?.AccountReference?.AccountStatus?.AccountStatus?.StatusDateTime?.DateTimeContent?.Text
//                     },
//                     "TimeZoneCode": {
//                     "Text": check response?.PayeeAccountReference?.AccountReference?.AccountStatus?.AccountStatus?.StatusDateTime?.TimeZoneCode?.Text
//                     },
//                     "DaylightSavingIndicator": {
//                     "Text": check response?.PayeeAccountReference?.AccountReference?.AccountStatus?.AccountStatus?.StatusDateTime?.DaylightSavingIndicator?.Text
//                     },
//                     "DateTimeType": check response?.PayeeAccountReference?.AccountReference?.AccountStatus?.AccountStatus?.StatusDateTime?.DateTimeType
//                 },
//                 "StatusValidityPeriod": {
//                     "FromDateTime": {
//                     "DateTimeContent": {
//                         "Text": check response?.PayeeAccountReference?.AccountReference?.AccountStatus?.AccountStatus?.StatusValidityPeriod?.FromDateTime?.DateTimeContent?.Text
//                     },
//                     "TimeZoneCode": {
//                         "Text": check response?.PayeeAccountReference?.AccountReference?.AccountStatus?.AccountStatus?.StatusValidityPeriod?.FromDateTime?.TimeZoneCode?.Text
//                     },
//                     "DaylightSavingIndicator": {
//                         "Text": check response?.PayeeAccountReference?.AccountReference?.AccountStatus?.AccountStatus?.StatusValidityPeriod?.FromDateTime?.DaylightSavingIndicator?.Text
//                     },
//                     "DateTimeType": check response?.PayeeAccountReference?.AccountReference?.AccountStatus?.AccountStatus?.StatusValidityPeriod?.FromDateTime?.DateTimeType
//                     },
//                     "ToDateTime": {
//                     "DateTimeContent": {
//                         "Text": check response?.PayeeAccountReference?.AccountReference?.AccountStatus?.AccountStatus?.StatusValidityPeriod?.ToDateTime?.DateTimeContent?.Text
//                     },
//                     "TimeZoneCode": {
//                         "Text": check response?.PayeeAccountReference?.AccountReference?.AccountStatus?.AccountStatus?.StatusValidityPeriod?.ToDateTime?.TimeZoneCode?.Text
//                     },
//                     "DaylightSavingIndicator": {
//                         "Text": check response?.PayeeAccountReference?.AccountReference?.AccountStatus?.AccountStatus?.StatusValidityPeriod?.ToDateTime?.DaylightSavingIndicator?.Text
//                     },
//                     "DateTimeType": check response?.PayeeAccountReference?.AccountReference?.AccountStatus?.AccountStatus?.StatusValidityPeriod?.ToDateTime?.DateTimeType
//                     }
//                 },
//                 "StatusInvolvedParty": {
//                     "PartyReference": {
//                     "PartyName": {
//                         "Name": check response?.PayeeAccountReference?.AccountReference?.AccountStatus?.AccountStatus?.StatusInvolvedParty?.PartyReference?.PartyName?.Name
//                     },
//                     "PartyType": check response?.PayeeAccountReference?.AccountReference?.AccountStatus?.AccountStatus?.StatusInvolvedParty?.PartyReference?.PartyType,
//                     "PartyDateTime": {
//                         "DateTimeContent": {
//                         "Text": check response?.PayeeAccountReference?.AccountReference?.AccountStatus?.AccountStatus?.StatusInvolvedParty?.PartyReference?.PartyDateTime?.DateTimeContent?.Text
//                         },
//                         "TimeZoneCode": {
//                         "Text": check response?.PayeeAccountReference?.AccountReference?.AccountStatus?.AccountStatus?.StatusInvolvedParty?.PartyReference?.PartyDateTime?.TimeZoneCode?.Text
//                         },
//                         "DaylightSavingIndicator": {
//                         "Text": check response?.PayeeAccountReference?.AccountReference?.AccountStatus?.AccountStatus?.StatusInvolvedParty?.PartyReference?.PartyDateTime?.DaylightSavingIndicator?.Text
//                         },
//                         "DateTimeType": check response?.PayeeAccountReference?.AccountReference?.AccountStatus?.AccountStatus?.StatusInvolvedParty?.PartyReference?.PartyDateTime?.DateTimeType
//                     },
//                     "PartyIdentification": {
//                         "PartyIdentificationType": check response?.PayeeAccountReference?.AccountReference?.AccountStatus?.AccountStatus?.StatusInvolvedParty?.PartyReference?.PartyIdentification?.PartyIdentificationType
//                         // "PartyIdentification": check response?.PayeeAccountReference?.AccountReference?.AccountStatus?.AccountStatus?.StatusInvolvedParty?.PartyReference?.PartyIdentification?.PartyIdentification
//                     },
//                     "PartyLegalStructureType": check response?.PayeeAccountReference?.AccountReference?.AccountStatus?.AccountStatus?.StatusInvolvedParty?.PartyReference?.PartyLegalStructureType
//                     },
//                     "PartyInvolvement": {
//                     "PartyRoleType": {
//                         "Text": check response?.PayeeAccountReference?.AccountReference?.AccountStatus?.AccountStatus?.StatusInvolvedParty?.PartyInvolvement?.PartyRoleType?.Text
//                     },
//                     "PartyRoleName": {
//                         "Name": check response?.PayeeAccountReference?.AccountReference?.AccountStatus?.AccountStatus?.StatusInvolvedParty?.PartyInvolvement?.PartyRoleName?.Name
//                     },
//                     "PartyRoleValidityPeriod": {
//                         "FromDateTime": {
//                         "DateTimeContent": {
//                             "Text": check response?.PayeeAccountReference?.AccountReference?.AccountStatus?.AccountStatus?.StatusInvolvedParty?.PartyInvolvement?.PartyRoleValidityPeriod?.FromDateTime?.DateTimeContent?.Text
//                         },
//                         "TimeZoneCode": {
//                             "Text": check response?.PayeeAccountReference?.AccountReference?.AccountStatus?.AccountStatus?.StatusInvolvedParty?.PartyInvolvement?.PartyRoleValidityPeriod?.FromDateTime?.TimeZoneCode?.Text
//                         },
//                         "DaylightSavingIndicator": {
//                             "Text": check response?.PayeeAccountReference?.AccountReference?.AccountStatus?.AccountStatus?.StatusInvolvedParty?.PartyInvolvement?.PartyRoleValidityPeriod?.FromDateTime?.DaylightSavingIndicator?.Text
//                         },
//                         "DateTimeType": check response?.PayeeAccountReference?.AccountReference?.AccountStatus?.AccountStatus?.StatusInvolvedParty?.PartyInvolvement?.PartyRoleValidityPeriod?.FromDateTime?.DateTimeType
//                         },
//                         "ToDateTime": {
//                         "DateTimeContent": {
//                             "Text": check response?.PayeeAccountReference?.AccountReference?.AccountStatus?.AccountStatus?.StatusInvolvedParty?.PartyInvolvement?.PartyRoleValidityPeriod?.ToDateTime?.DateTimeContent?.Text
//                         },
//                         "TimeZoneCode": {
//                             "Text": check response?.PayeeAccountReference?.AccountReference?.AccountStatus?.AccountStatus?.StatusInvolvedParty?.PartyInvolvement?.PartyRoleValidityPeriod?.ToDateTime?.TimeZoneCode?.Text
//                         },
//                         "DaylightSavingIndicator": {
//                             "Text": check response?.PayeeAccountReference?.AccountReference?.AccountStatus?.AccountStatus?.StatusInvolvedParty?.PartyInvolvement?.PartyRoleValidityPeriod?.ToDateTime?.DaylightSavingIndicator?.Text
//                         },
//                         "DateTimeType": check response?.PayeeAccountReference?.AccountReference?.AccountStatus?.AccountStatus?.StatusInvolvedParty?.PartyInvolvement?.PartyRoleValidityPeriod?.ToDateTime?.DateTimeType
//                         }
//                     },
//                     "PartyInvolvementType": check response?.PayeeAccountReference?.AccountReference?.AccountStatus?.AccountStatus?.StatusInvolvedParty?.PartyInvolvement?.PartyInvolvementType
//                     }
//                 }
//                 },
//                 "AccountStatusType": check response?.PayeeAccountReference?.AccountReference?.AccountStatus?.AccountStatusType
//             },
//             "AccountIdentification": {
//                 "AccountIdentificationType": check response?.PayeeAccountReference?.AccountReference?.AccountIdentification?.AccountIdentificationType,
//                 "AccountIdentification": {
//                 "IdentifierValue": {
//                     "Value": check response?.PayeeAccountReference?.AccountReference?.AccountIdentification?.AccountIdentification?.IdentifierValue?.Value
//                 },
//                 "IdentifierIssuingAuthority": {
//                     "PartyReference": {
//                     "PartyName": {
//                         "Name": check response?.PayeeAccountReference?.AccountReference?.AccountIdentification?.AccountIdentification?.IdentifierIssuingAuthority?.PartyReference?.PartyName?.Name
//                     },
//                     "PartyType": check response?.PayeeAccountReference?.AccountReference?.AccountIdentification?.AccountIdentification?.IdentifierIssuingAuthority?.PartyReference?.PartyType,
//                     "PartyDateTime": {
//                         "DateTimeContent": {
//                         "Text": check response?.PayeeAccountReference?.AccountReference?.AccountIdentification?.AccountIdentification?.IdentifierIssuingAuthority?.PartyReference?.PartyDateTime?.DateTimeContent?.Text
//                         },
//                         "TimeZoneCode": {
//                         "Text": check response?.PayeeAccountReference?.AccountReference?.AccountIdentification?.AccountIdentification?.IdentifierIssuingAuthority?.PartyReference?.PartyDateTime?.TimeZoneCode?.Text
//                         },
//                         "DaylightSavingIndicator": {
//                         "Text": check response?.PayeeAccountReference?.AccountReference?.AccountIdentification?.AccountIdentification?.IdentifierIssuingAuthority?.PartyReference?.PartyDateTime?.DaylightSavingIndicator?.Text
//                         },
//                         "DateTimeType": check response?.PayeeAccountReference?.AccountReference?.AccountIdentification?.AccountIdentification?.IdentifierIssuingAuthority?.PartyReference?.PartyDateTime?.DateTimeType
//                     },
//                     "PartyIdentification": {
//                         "PartyIdentificationType": check response?.PayeeAccountReference?.AccountReference?.AccountIdentification?.AccountIdentification?.IdentifierIssuingAuthority?.PartyReference?.PartyIdentification?.PartyIdentificationType
//                         // "PartyIdentification": check response?.PayeeAccountReference?.AccountReference?.AccountIdentification?.AccountIdentification?.IdentifierIssuingAuthority?.PartyReference?.PartyIdentification?.PartyIdentification
//                     },
//                     "PartyLegalStructureType": check response?.PayeeAccountReference?.AccountReference?.AccountIdentification?.AccountIdentification?.IdentifierIssuingAuthority?.PartyReference?.PartyLegalStructureType
//                     },
//                     "PartyInvolvement": {
//                     "PartyRoleType": {
//                         "Text": check response?.PayeeAccountReference?.AccountReference?.AccountIdentification?.AccountIdentification?.IdentifierIssuingAuthority?.PartyInvolvement?.PartyRoleType?.Text
//                     },
//                     "PartyRoleName": {
//                         "Name": check response?.PayeeAccountReference?.AccountReference?.AccountIdentification?.AccountIdentification?.IdentifierIssuingAuthority?.PartyInvolvement?.PartyRoleName?.Name
//                     },
//                     "PartyRoleValidityPeriod": {
//                         "FromDateTime": {
//                         "DateTimeContent": {
//                             "Text": check response?.PayeeAccountReference?.AccountReference?.AccountIdentification?.AccountIdentification?.IdentifierIssuingAuthority?.PartyInvolvement?.PartyRoleValidityPeriod?.FromDateTime?.DateTimeContent?.Text
//                         },
//                         "TimeZoneCode": {
//                             "Text": check response?.PayeeAccountReference?.AccountReference?.AccountIdentification?.AccountIdentification?.IdentifierIssuingAuthority?.PartyInvolvement?.PartyRoleValidityPeriod?.FromDateTime?.TimeZoneCode?.Text
//                         },
//                         "DaylightSavingIndicator": {
//                             "Text": check response?.PayeeAccountReference?.AccountReference?.AccountIdentification?.AccountIdentification?.IdentifierIssuingAuthority?.PartyInvolvement?.PartyRoleValidityPeriod?.FromDateTime?.DaylightSavingIndicator?.Text
//                         },
//                         "DateTimeType": check response?.PayeeAccountReference?.AccountReference?.AccountIdentification?.AccountIdentification?.IdentifierIssuingAuthority?.PartyInvolvement?.PartyRoleValidityPeriod?.FromDateTime?.DateTimeType
//                         },
//                         "ToDateTime": {
//                         "DateTimeContent": {
//                             "Text": check response?.PayeeAccountReference?.AccountReference?.AccountIdentification?.AccountIdentification?.IdentifierIssuingAuthority?.PartyInvolvement?.PartyRoleValidityPeriod?.ToDateTime?.DateTimeContent?.Text
//                         },
//                         "TimeZoneCode": {
//                             "Text": check response?.PayeeAccountReference?.AccountReference?.AccountIdentification?.AccountIdentification?.IdentifierIssuingAuthority?.PartyInvolvement?.PartyRoleValidityPeriod?.ToDateTime?.TimeZoneCode?.Text
//                         },
//                         "DaylightSavingIndicator": {
//                             "Text": check response?.PayeeAccountReference?.AccountReference?.AccountIdentification?.AccountIdentification?.IdentifierIssuingAuthority?.PartyInvolvement?.PartyRoleValidityPeriod?.ToDateTime?.DaylightSavingIndicator?.Text
//                         },
//                         "DateTimeType": check response?.PayeeAccountReference?.AccountReference?.AccountIdentification?.AccountIdentification?.IdentifierIssuingAuthority?.PartyInvolvement?.PartyRoleValidityPeriod?.ToDateTime?.DateTimeType
//                         }
//                     },
//                     "PartyInvolvementType": check response?.PayeeAccountReference?.AccountReference?.AccountIdentification?.AccountIdentification?.IdentifierIssuingAuthority?.PartyInvolvement?.PartyInvolvementType
//                     }
//                 },
//                 "IdentifierStartDate": {
//                     "DateTimeContent": {
//                     "Text": check response?.PayeeAccountReference?.AccountReference?.AccountIdentification?.AccountIdentification?.IdentifierStartDate?.DateTimeContent?.Text
//                     },
//                     "TimeZoneCode": {
//                     "Text": check response?.PayeeAccountReference?.AccountReference?.AccountIdentification?.AccountIdentification?.IdentifierStartDate?.TimeZoneCode?.Text
//                     },
//                     "DaylightSavingIndicator": {
//                     "Text": check response?.PayeeAccountReference?.AccountReference?.AccountIdentification?.AccountIdentification?.IdentifierStartDate?.DaylightSavingIndicator?.Text
//                     },
//                     "DateTimeType": check response?.PayeeAccountReference?.AccountReference?.AccountIdentification?.AccountIdentification?.IdentifierStartDate?.DateTimeType
//                 },
//                 "IdentifierEndDate": {
//                     "DateTimeContent": {
//                     "Text": check response?.PayeeAccountReference?.AccountReference?.AccountIdentification?.AccountIdentification?.IdentifierEndDate?.DateTimeContent?.Text
//                     },
//                     "TimeZoneCode": {
//                     "Text": check response?.PayeeAccountReference?.AccountReference?.AccountIdentification?.AccountIdentification?.IdentifierEndDate?.TimeZoneCode?.Text
//                     },
//                     "DaylightSavingIndicator": {
//                     "Text": check response?.PayeeAccountReference?.AccountReference?.AccountIdentification?.AccountIdentification?.IdentifierEndDate?.DaylightSavingIndicator?.Text
//                     },
//                     "DateTimeType": check response?.PayeeAccountReference?.AccountReference?.AccountIdentification?.AccountIdentification?.IdentifierEndDate?.DateTimeType
//                 }
//                 }
//             },
//             "AccountDate": {
//                 "AccountDateType": check response?.PayeeAccountReference?.AccountReference?.AccountDate?.AccountDateType,
//                 "AccountDate": {
//                 "DateTimeContent": {
//                     "Text": check response?.PayeeAccountReference?.AccountReference?.AccountDate?.AccountDate?.DateTimeContent?.Text
//                 },
//                 "TimeZoneCode": {
//                     "Text": check response?.PayeeAccountReference?.AccountReference?.AccountDate?.AccountDate?.TimeZoneCode?.Text
//                 },
//                 "DaylightSavingIndicator": {
//                     "Text": check response?.PayeeAccountReference?.AccountReference?.AccountDate?.AccountDate?.DaylightSavingIndicator?.Text
//                 },
//                 "DateTimeType": check response?.PayeeAccountReference?.AccountReference?.AccountDate?.AccountDate?.DateTimeType
//                 }
//             },
//             "AccountType": check response?.PayeeAccountReference?.AccountReference?.AccountType,
//             "AccountPurpose": {
//                 "Text": check response?.PayeeAccountReference?.AccountReference?.AccountPurpose?.Text
//             },
//             "AccountBalance": {
//                 "BalanceAmount": {
//                 "AmountValue": {
//                     "Value": check response?.PayeeAccountReference?.AccountReference?.AccountBalance?.BalanceAmount?.AmountValue?.Value
//                 },
//                 "AmountCurrency": {
//                     "Currencycode": check response?.PayeeAccountReference?.AccountReference?.AccountBalance?.BalanceAmount?.AmountCurrency?.Currencycode
//                 },
//                 "DecimalPointPosition": {
//                     "Text": check response?.PayeeAccountReference?.AccountReference?.AccountBalance?.BalanceAmount?.DecimalPointPosition?.Text
//                 },
//                 "AmountType": check response?.PayeeAccountReference?.AccountReference?.AccountBalance?.BalanceAmount?.AmountType
//                 },
//                 "BalanceType": check response?.PayeeAccountReference?.AccountReference?.AccountBalance?.BalanceType,
//                 "BalanceValueDate": {
//                 "DateTimeContent": {
//                     "Text": check response?.PayeeAccountReference?.AccountReference?.AccountBalance?.BalanceValueDate?.DateTimeContent?.Text
//                 },
//                 "TimeZoneCode": {
//                     "Text": check response?.PayeeAccountReference?.AccountReference?.AccountBalance?.BalanceValueDate?.TimeZoneCode?.Text
//                 },
//                 "DaylightSavingIndicator": {
//                     "Text": check response?.PayeeAccountReference?.AccountReference?.AccountBalance?.BalanceValueDate?.DaylightSavingIndicator?.Text
//                 },
//                 "DateTimeType": check response?.PayeeAccountReference?.AccountReference?.AccountBalance?.BalanceValueDate?.DateTimeType
//                 },
//                 "BalanceIndicator": check response?.PayeeAccountReference?.AccountReference?.AccountBalance?.BalanceIndicator,
//                 "BalanceCounterpartyType": check response?.PayeeAccountReference?.AccountReference?.AccountBalance?.BalanceCounterpartyType,
//                 "BalanceCalculationDate": {
//                 "DateTimeContent": {
//                     "Text": check response?.PayeeAccountReference?.AccountReference?.AccountBalance?.BalanceCalculationDate?.DateTimeContent?.Text
//                 },
//                 "TimeZoneCode": {
//                     "Text": check response?.PayeeAccountReference?.AccountReference?.AccountBalance?.BalanceCalculationDate?.TimeZoneCode?.Text
//                 },
//                 "DaylightSavingIndicator": {
//                     "Text": check response?.PayeeAccountReference?.AccountReference?.AccountBalance?.BalanceCalculationDate?.DaylightSavingIndicator?.Text
//                 },
//                 "DateTimeType": check response?.PayeeAccountReference?.AccountReference?.AccountBalance?.BalanceCalculationDate?.DateTimeType
//                 },
//                 "BalanceSubType": check response?.PayeeAccountReference?.AccountReference?.AccountBalance?.BalanceSubType
//             },
//             "AccountCurrency": {
//                 "AccountCurrencyType": check response?.PayeeAccountReference?.AccountReference?.AccountCurrency?.AccountCurrencyType,
//                 "AccountCurrency": {
//                 "Currencycode": check response?.PayeeAccountReference?.AccountReference?.AccountCurrency?.AccountCurrency?.Currencycode
//                 }
//             },
//             "AccountDescription": {
//                 "Text": check response?.PayeeAccountReference?.AccountReference?.AccountDescription?.Text
//             },
//             "AccountName": {
//                 "Name": check response?.PayeeAccountReference?.AccountReference?.AccountName?.Name
//             }
//             }
//         },
//         "Amount": {
//             "AmountValue": {
//             "Value": check response?.Amount?.AmountValue?.Value
//             },
//             "AmountCurrency": {
//             "Currencycode": check response?.Amount?.AmountCurrency?.Currencycode
//             },
//             "DecimalPointPosition": {
//             "Text": check response?.Amount?.DecimalPointPosition?.Text
//             },
//             "AmountType": check response?.Amount?.AmountType
//         },
//         "Currency": {
//             "Currencycode": check response?.Currency?.Currencycode
//         },
//         "Date": {
//             "PaymentDate": {
//             "DateTimeContent": {
//                 "Text": check response?.Date?.PaymentDate?.DateTimeContent?.Text
//             },
//             "TimeZoneCode": {
//                 "Text": check response?.Date?.PaymentDate?.TimeZoneCode?.Text
//             },
//             "DaylightSavingIndicator": {
//                 "Text": check response?.Date?.PaymentDate?.DaylightSavingIndicator?.Text
//             },
//             "DateTimeType": check response?.Date?.PaymentDate?.DateTimeType
//             },
//             "PaymentDateType": check response?.Date?.PaymentDateType
//         },
//         "PaymentMechanismType": check response?.PaymentMechanismType,
//         "PaymentInstructions": {
//             "PaymentInstructionDirectionType": {
//             "Text": check response?.PaymentInstructions?.PaymentInstructionDirectionType?.Text
//             },
//             "PaymentInstructionType": check response?.PaymentInstructions?.PaymentInstructionType,
//             "PaymentInstructionRequestedMechanism": {
//             "Text": check response?.PaymentInstructions?.PaymentInstructionRequestedMechanism?.Text
//             },
//             "PaymentInstructionProcessingValidityTime": {
//             "FromDateTime": {
//                 "DateTimeContent": {
//                 "Text": check response?.PaymentInstructions?.PaymentInstructionProcessingValidityTime?.FromDateTime?.DateTimeContent?.Text
//                 },
//                 "TimeZoneCode": {
//                 "Text": check response?.PaymentInstructions?.PaymentInstructionProcessingValidityTime?.FromDateTime?.TimeZoneCode?.Text
//                 },
//                 "DaylightSavingIndicator": {
//                 "Text": check response?.PaymentInstructions?.PaymentInstructionProcessingValidityTime?.FromDateTime?.DaylightSavingIndicator?.Text
//                 },
//                 "DateTimeType": check response?.PaymentInstructions?.PaymentInstructionProcessingValidityTime?.FromDateTime?.DateTimeType
//             },
//             "ToDateTime": {
//                 "DateTimeContent": {
//                 "Text": check response?.PaymentInstructions?.PaymentInstructionProcessingValidityTime?.ToDateTime?.DateTimeContent?.Text
//                 },
//                 "TimeZoneCode": {
//                 "Text": check response?.PaymentInstructions?.PaymentInstructionProcessingValidityTime?.ToDateTime?.TimeZoneCode?.Text
//                 },
//                 "DaylightSavingIndicator": {
//                 "Text": check response?.PaymentInstructions?.PaymentInstructionProcessingValidityTime?.ToDateTime?.DaylightSavingIndicator?.Text
//                 },
//                 "DateTimeType": check response?.PaymentInstructions?.PaymentInstructionProcessingValidityTime?.ToDateTime?.DateTimeType
//             }
//             },
//             "PaymentInstructionPriority": check response?.PaymentInstructions?.PaymentInstructionPriority,
//             "PaymentInstructionClearingChannel": check response?.PaymentInstructions?.PaymentInstructionClearingChannel,
//             "PaymentCreditDebitIndicator": check response?.PaymentInstructions?.PaymentCreditDebitIndicator,
//             "PaymentInstructionStatus": {
//             "PaymentInstructionStatus": {
//                 "StatusReason": {
//                 "Text": check response?.PaymentInstructions?.PaymentInstructionStatus?.PaymentInstructionStatus?.StatusReason?.Text
//                 },
//                 "StatusDateTime": {
//                 "DateTimeContent": {
//                     "Text": check response?.PaymentInstructions?.PaymentInstructionStatus?.PaymentInstructionStatus?.StatusDateTime?.DateTimeContent?.Text
//                 },
//                 "TimeZoneCode": {
//                     "Text": check response?.PaymentInstructions?.PaymentInstructionStatus?.PaymentInstructionStatus?.StatusDateTime?.TimeZoneCode?.Text
//                 },
//                 "DaylightSavingIndicator": {
//                     "Text": check response?.PaymentInstructions?.PaymentInstructionStatus?.PaymentInstructionStatus?.StatusDateTime?.DaylightSavingIndicator?.Text
//                 },
//                 "DateTimeType": check response?.PaymentInstructions?.PaymentInstructionStatus?.PaymentInstructionStatus?.StatusDateTime?.DateTimeType
//                 },
//                 "StatusValidityPeriod": {
//                 "FromDateTime": {
//                     "DateTimeContent": {
//                     "Text": check response?.PaymentInstructions?.PaymentInstructionStatus?.PaymentInstructionStatus?.StatusValidityPeriod?.FromDateTime?.DateTimeContent?.Text
//                     },
//                     "TimeZoneCode": {
//                     "Text": check response?.PaymentInstructions?.PaymentInstructionStatus?.PaymentInstructionStatus?.StatusValidityPeriod?.FromDateTime?.TimeZoneCode?.Text
//                     },
//                     "DaylightSavingIndicator": {
//                     "Text": check response?.PaymentInstructions?.PaymentInstructionStatus?.PaymentInstructionStatus?.StatusValidityPeriod?.FromDateTime?.DaylightSavingIndicator?.Text
//                     },
//                     "DateTimeType": check response?.PaymentInstructions?.PaymentInstructionStatus?.PaymentInstructionStatus?.StatusValidityPeriod?.FromDateTime?.DateTimeType
//                 },
//                 "ToDateTime": {
//                     "DateTimeContent": {
//                     "Text": check response?.PaymentInstructions?.PaymentInstructionStatus?.PaymentInstructionStatus?.StatusValidityPeriod?.ToDateTime?.DateTimeContent?.Text
//                     },
//                     "TimeZoneCode": {
//                     "Text": check response?.PaymentInstructions?.PaymentInstructionStatus?.PaymentInstructionStatus?.StatusValidityPeriod?.ToDateTime?.TimeZoneCode?.Text
//                     },
//                     "DaylightSavingIndicator": {
//                     "Text": check response?.PaymentInstructions?.PaymentInstructionStatus?.PaymentInstructionStatus?.StatusValidityPeriod?.ToDateTime?.DaylightSavingIndicator?.Text
//                     },
//                     "DateTimeType": check response?.PaymentInstructions?.PaymentInstructionStatus?.PaymentInstructionStatus?.StatusValidityPeriod?.ToDateTime?.DateTimeType
//                 }
//                 },
//                 "StatusInvolvedParty": {
//                 "PartyReference": {
//                     "PartyName": {
//                     "Name": check response?.PaymentInstructions?.PaymentInstructionStatus?.PaymentInstructionStatus?.StatusInvolvedParty?.PartyReference?.PartyName?.Name
//                     },
//                     "PartyType": check response?.PaymentInstructions?.PaymentInstructionStatus?.PaymentInstructionStatus?.StatusInvolvedParty?.PartyReference?.PartyType,
//                     "PartyDateTime": {
//                     "DateTimeContent": {
//                         "Text": check response?.PaymentInstructions?.PaymentInstructionStatus?.PaymentInstructionStatus?.StatusInvolvedParty?.PartyReference?.PartyDateTime?.DateTimeContent?.Text
//                     },
//                     "TimeZoneCode": {
//                         "Text": check response?.PaymentInstructions?.PaymentInstructionStatus?.PaymentInstructionStatus?.StatusInvolvedParty?.PartyReference?.PartyDateTime?.TimeZoneCode?.Text
//                     },
//                     "DaylightSavingIndicator": {
//                         "Text": check response?.PaymentInstructions?.PaymentInstructionStatus?.PaymentInstructionStatus?.StatusInvolvedParty?.PartyReference?.PartyDateTime?.DaylightSavingIndicator?.Text
//                     },
//                     "DateTimeType": check response?.PaymentInstructions?.PaymentInstructionStatus?.PaymentInstructionStatus?.StatusInvolvedParty?.PartyReference?.PartyDateTime?.DateTimeType
//                     },
//                     "PartyIdentification": {
//                     "PartyIdentificationType": check response?.PaymentInstructions?.PaymentInstructionStatus?.PaymentInstructionStatus?.StatusInvolvedParty?.PartyReference?.PartyIdentification?.PartyIdentificationType
//                     // "PartyIdentification": check response?.PaymentInstructions?.PaymentInstructionStatus?.PaymentInstructionStatus?.StatusInvolvedParty?.PartyReference?.PartyIdentification?.PartyIdentification
//                     },
//                     "PartyLegalStructureType": check response?.PaymentInstructions?.PaymentInstructionStatus?.PaymentInstructionStatus?.StatusInvolvedParty?.PartyReference?.PartyLegalStructureType
//                 },
//                 "PartyInvolvement": {
//                     "PartyRoleType": {
//                     "Text": check response?.PaymentInstructions?.PaymentInstructionStatus?.PaymentInstructionStatus?.StatusInvolvedParty?.PartyInvolvement?.PartyRoleType?.Text
//                     },
//                     "PartyRoleName": {
//                     "Name": check response?.PaymentInstructions?.PaymentInstructionStatus?.PaymentInstructionStatus?.StatusInvolvedParty?.PartyInvolvement?.PartyRoleName?.Name
//                     },
//                     "PartyRoleValidityPeriod": {
//                     "FromDateTime": {
//                         "DateTimeContent": {
//                         "Text": check response?.PaymentInstructions?.PaymentInstructionStatus?.PaymentInstructionStatus?.StatusInvolvedParty?.PartyInvolvement?.PartyRoleValidityPeriod?.FromDateTime?.DateTimeContent?.Text
//                         },
//                         "TimeZoneCode": {
//                         "Text": check response?.PaymentInstructions?.PaymentInstructionStatus?.PaymentInstructionStatus?.StatusInvolvedParty?.PartyInvolvement?.PartyRoleValidityPeriod?.FromDateTime?.TimeZoneCode?.Text
//                         },
//                         "DaylightSavingIndicator": {
//                         "Text": check response?.PaymentInstructions?.PaymentInstructionStatus?.PaymentInstructionStatus?.StatusInvolvedParty?.PartyInvolvement?.PartyRoleValidityPeriod?.FromDateTime?.DaylightSavingIndicator?.Text
//                         },
//                         "DateTimeType": check response?.PaymentInstructions?.PaymentInstructionStatus?.PaymentInstructionStatus?.StatusInvolvedParty?.PartyInvolvement?.PartyRoleValidityPeriod?.FromDateTime?.DateTimeType
//                     },
//                     "ToDateTime": {
//                         "DateTimeContent": {
//                         "Text": check response?.PaymentInstructions?.PaymentInstructionStatus?.PaymentInstructionStatus?.StatusInvolvedParty?.PartyInvolvement?.PartyRoleValidityPeriod?.ToDateTime?.DateTimeContent?.Text
//                         },
//                         "TimeZoneCode": {
//                         "Text": check response?.PaymentInstructions?.PaymentInstructionStatus?.PaymentInstructionStatus?.StatusInvolvedParty?.PartyInvolvement?.PartyRoleValidityPeriod?.ToDateTime?.TimeZoneCode?.Text
//                         },
//                         "DaylightSavingIndicator": {
//                         "Text": check response?.PaymentInstructions?.PaymentInstructionStatus?.PaymentInstructionStatus?.StatusInvolvedParty?.PartyInvolvement?.PartyRoleValidityPeriod?.ToDateTime?.DaylightSavingIndicator?.Text
//                         },
//                         "DateTimeType": check response?.PaymentInstructions?.PaymentInstructionStatus?.PaymentInstructionStatus?.StatusInvolvedParty?.PartyInvolvement?.PartyRoleValidityPeriod?.ToDateTime?.DateTimeType
//                     }
//                     },
//                     "PartyInvolvementType": check response?.PaymentInstructions?.PaymentInstructionStatus?.PaymentInstructionStatus?.StatusInvolvedParty?.PartyInvolvement?.PartyInvolvementType
//                 }
//                 }
//             },
//             "PaymentInstructionStatusType": check response?.PaymentInstructions?.PaymentInstructionStatus?.PaymentInstructionStatusType
//             },
//             "PaymentInstructionAmount": {
//             "AmountValue": {
//                 "Value": check response?.PaymentInstructions?.PaymentInstructionAmount?.AmountValue?.Value
//             },
//             "AmountCurrency": {
//                 "Currencycode": check response?.PaymentInstructions?.PaymentInstructionAmount?.AmountCurrency?.Currencycode
//             },
//             "DecimalPointPosition": {
//                 "Text": check response?.PaymentInstructions?.PaymentInstructionAmount?.DecimalPointPosition?.Text
//             },
//             "AmountType": check response?.PaymentInstructions?.PaymentInstructionAmount?.AmountType
//             },
//             "PaymentInstructionDatetime": {
//             "PaymentDate": {
//                 "DateTimeContent": {
//                 "Text": check response?.PaymentInstructions?.PaymentInstructionDatetime?.PaymentDate?.DateTimeContent?.Text
//                 },
//                 "TimeZoneCode": {
//                 "Text": check response?.PaymentInstructions?.PaymentInstructionDatetime?.PaymentDate?.TimeZoneCode?.Text
//                 },
//                 "DaylightSavingIndicator": {
//                 "Text": check response?.PaymentInstructions?.PaymentInstructionDatetime?.PaymentDate?.DaylightSavingIndicator?.Text
//                 },
//                 "DateTimeType": check response?.PaymentInstructions?.PaymentInstructionDatetime?.PaymentDate?.DateTimeType
//             },
//             "PaymentDateType": check response?.PaymentInstructions?.PaymentInstructionDatetime?.PaymentDateType
//             }
//         },
//         "InterestedParties": {
//             "PartyReference": {
//             "PartyName": {
//                 "Name": check response?.InterestedParties?.PartyReference?.PartyName?.Name
//             },
//             "PartyType": check response?.InterestedParties?.PartyReference?.PartyType,
//             "PartyDateTime": {
//                 "DateTimeContent": {
//                 "Text": check response?.InterestedParties?.PartyReference?.PartyDateTime?.DateTimeContent?.Text
//                 },
//                 "TimeZoneCode": {
//                 "Text": check response?.InterestedParties?.PartyReference?.PartyDateTime?.TimeZoneCode?.Text
//                 },
//                 "DaylightSavingIndicator": {
//                 "Text": check response?.InterestedParties?.PartyReference?.PartyDateTime?.DaylightSavingIndicator?.Text
//                 },
//                 "DateTimeType": check response?.InterestedParties?.PartyReference?.PartyDateTime?.DateTimeType
//             },
//             "PartyIdentification": {
//                 "PartyIdentificationType": check response?.InterestedParties?.PartyReference?.PartyIdentification?.PartyIdentificationType
//                 // "PartyIdentification": check response?.InterestedParties?.PartyReference?.PartyIdentification?.PartyIdentification
//             },
//             "PartyLegalStructureType": check response?.InterestedParties?.PartyReference?.PartyLegalStructureType
//             },
//             "PartyInvolvement": {
//             "PartyRoleType": {
//                 "Text": check response?.InterestedParties?.PartyInvolvement?.PartyRoleType?.Text
//             },
//             "PartyRoleName": {
//                 "Name": check response?.InterestedParties?.PartyInvolvement?.PartyRoleName?.Name
//             },
//             "PartyRoleValidityPeriod": {
//                 "FromDateTime": {
//                 "DateTimeContent": {
//                     "Text": check response?.InterestedParties?.PartyInvolvement?.PartyRoleValidityPeriod?.FromDateTime?.DateTimeContent?.Text
//                 },
//                 "TimeZoneCode": {
//                     "Text": check response?.InterestedParties?.PartyInvolvement?.PartyRoleValidityPeriod?.FromDateTime?.TimeZoneCode?.Text
//                 },
//                 "DaylightSavingIndicator": {
//                     "Text": check response?.InterestedParties?.PartyInvolvement?.PartyRoleValidityPeriod?.FromDateTime?.DaylightSavingIndicator?.Text
//                 },
//                 "DateTimeType": check response?.InterestedParties?.PartyInvolvement?.PartyRoleValidityPeriod?.FromDateTime?.DateTimeType
//                 },
//                 "ToDateTime": {
//                 "DateTimeContent": {
//                     "Text": check response?.InterestedParties?.PartyInvolvement?.PartyRoleValidityPeriod?.ToDateTime?.DateTimeContent?.Text
//                 },
//                 "TimeZoneCode": {
//                     "Text": check response?.InterestedParties?.PartyInvolvement?.PartyRoleValidityPeriod?.ToDateTime?.TimeZoneCode?.Text
//                 },
//                 "DaylightSavingIndicator": {
//                     "Text": check response?.InterestedParties?.PartyInvolvement?.PartyRoleValidityPeriod?.ToDateTime?.DaylightSavingIndicator?.Text
//                 },
//                 "DateTimeType": check response?.InterestedParties?.PartyInvolvement?.PartyRoleValidityPeriod?.ToDateTime?.DateTimeType
//                 }
//             },
//             "PartyInvolvementType": check response?.InterestedParties?.PartyInvolvement?.PartyInvolvementType
//             }
//         },
//         "ProductType": check response?.ProductType,
//         "SettlementInstructions": {
//             "SettlementInstructionIdentifier": {
//             "IdentifierValue": {
//                 "Value": check response?.SettlementInstructions?.SettlementInstructionIdentifier?.IdentifierValue?.Value
//             },
//             "IdentifierIssuingAuthority": {
//                 "PartyReference": {
//                 "PartyName": {
//                     "Name": check response?.SettlementInstructions?.SettlementInstructionIdentifier?.IdentifierIssuingAuthority?.PartyReference?.PartyName?.Name
//                 },
//                 "PartyType": check response?.SettlementInstructions?.SettlementInstructionIdentifier?.IdentifierIssuingAuthority?.PartyReference?.PartyType,
//                 "PartyDateTime": {
//                     "DateTimeContent": {
//                     "Text": check response?.SettlementInstructions?.SettlementInstructionIdentifier?.IdentifierIssuingAuthority?.PartyReference?.PartyDateTime?.DateTimeContent?.Text
//                     },
//                     "TimeZoneCode": {
//                     "Text": check response?.SettlementInstructions?.SettlementInstructionIdentifier?.IdentifierIssuingAuthority?.PartyReference?.PartyDateTime?.TimeZoneCode?.Text
//                     },
//                     "DaylightSavingIndicator": {
//                     "Text": check response?.SettlementInstructions?.SettlementInstructionIdentifier?.IdentifierIssuingAuthority?.PartyReference?.PartyDateTime?.DaylightSavingIndicator?.Text
//                     },
//                     "DateTimeType": check response?.SettlementInstructions?.SettlementInstructionIdentifier?.IdentifierIssuingAuthority?.PartyReference?.PartyDateTime?.DateTimeType
//                 },
//                 "PartyIdentification": {
//                     "PartyIdentificationType": check response?.SettlementInstructions?.SettlementInstructionIdentifier?.IdentifierIssuingAuthority?.PartyReference?.PartyIdentification?.PartyIdentificationType
//                     // "PartyIdentification": check response?.SettlementInstructions?.SettlementInstructionIdentifier?.IdentifierIssuingAuthority?.PartyReference?.PartyIdentification?.PartyIdentification
//                 },
//                 "PartyLegalStructureType": check response?.SettlementInstructions?.SettlementInstructionIdentifier?.IdentifierIssuingAuthority?.PartyReference?.PartyLegalStructureType
//                 },
//                 "PartyInvolvement": {
//                 "PartyRoleType": {
//                     "Text": check response?.SettlementInstructions?.SettlementInstructionIdentifier?.IdentifierIssuingAuthority?.PartyInvolvement?.PartyRoleType?.Text
//                 },
//                 "PartyRoleName": {
//                     "Name": check response?.SettlementInstructions?.SettlementInstructionIdentifier?.IdentifierIssuingAuthority?.PartyInvolvement?.PartyRoleName?.Name
//                 },
//                 "PartyRoleValidityPeriod": {
//                     "FromDateTime": {
//                     "DateTimeContent": {
//                         "Text": check response?.SettlementInstructions?.SettlementInstructionIdentifier?.IdentifierIssuingAuthority?.PartyInvolvement?.PartyRoleValidityPeriod?.FromDateTime?.DateTimeContent?.Text
//                     },
//                     "TimeZoneCode": {
//                         "Text": check response?.SettlementInstructions?.SettlementInstructionIdentifier?.IdentifierIssuingAuthority?.PartyInvolvement?.PartyRoleValidityPeriod?.FromDateTime?.TimeZoneCode?.Text
//                     },
//                     "DaylightSavingIndicator": {
//                         "Text": check response?.SettlementInstructions?.SettlementInstructionIdentifier?.IdentifierIssuingAuthority?.PartyInvolvement?.PartyRoleValidityPeriod?.FromDateTime?.DaylightSavingIndicator?.Text
//                     },
//                     "DateTimeType": check response?.SettlementInstructions?.SettlementInstructionIdentifier?.IdentifierIssuingAuthority?.PartyInvolvement?.PartyRoleValidityPeriod?.FromDateTime?.DateTimeType
//                     },
//                     "ToDateTime": {
//                     "DateTimeContent": {
//                         "Text": check response?.SettlementInstructions?.SettlementInstructionIdentifier?.IdentifierIssuingAuthority?.PartyInvolvement?.PartyRoleValidityPeriod?.ToDateTime?.DateTimeContent?.Text
//                     },
//                     "TimeZoneCode": {
//                         "Text": check response?.SettlementInstructions?.SettlementInstructionIdentifier?.IdentifierIssuingAuthority?.PartyInvolvement?.PartyRoleValidityPeriod?.ToDateTime?.TimeZoneCode?.Text
//                     },
//                     "DaylightSavingIndicator": {
//                         "Text": check response?.SettlementInstructions?.SettlementInstructionIdentifier?.IdentifierIssuingAuthority?.PartyInvolvement?.PartyRoleValidityPeriod?.ToDateTime?.DaylightSavingIndicator?.Text
//                     },
//                     "DateTimeType": check response?.SettlementInstructions?.SettlementInstructionIdentifier?.IdentifierIssuingAuthority?.PartyInvolvement?.PartyRoleValidityPeriod?.ToDateTime?.DateTimeType
//                     }
//                 },
//                 "PartyInvolvementType": check response?.SettlementInstructions?.SettlementInstructionIdentifier?.IdentifierIssuingAuthority?.PartyInvolvement?.PartyInvolvementType
//                 }
//             },
//             "IdentifierStartDate": {
//                 "DateTimeContent": {
//                 "Text": check response?.SettlementInstructions?.SettlementInstructionIdentifier?.IdentifierStartDate?.DateTimeContent?.Text
//                 },
//                 "TimeZoneCode": {
//                 "Text": check response?.SettlementInstructions?.SettlementInstructionIdentifier?.IdentifierStartDate?.TimeZoneCode?.Text
//                 },
//                 "DaylightSavingIndicator": {
//                 "Text": check response?.SettlementInstructions?.SettlementInstructionIdentifier?.IdentifierStartDate?.DaylightSavingIndicator?.Text
//                 },
//                 "DateTimeType": check response?.SettlementInstructions?.SettlementInstructionIdentifier?.IdentifierStartDate?.DateTimeType
//             },
//             "IdentifierEndDate": {
//                 "DateTimeContent": {
//                 "Text": check response?.SettlementInstructions?.SettlementInstructionIdentifier?.IdentifierEndDate?.DateTimeContent?.Text
//                 },
//                 "TimeZoneCode": {
//                 "Text": check response?.SettlementInstructions?.SettlementInstructionIdentifier?.IdentifierEndDate?.TimeZoneCode?.Text
//                 },
//                 "DaylightSavingIndicator": {
//                 "Text": check response?.SettlementInstructions?.SettlementInstructionIdentifier?.IdentifierEndDate?.DaylightSavingIndicator?.Text
//                 },
//                 "DateTimeType": check response?.SettlementInstructions?.SettlementInstructionIdentifier?.IdentifierEndDate?.DateTimeType
//             }
//             },
//             "InterbankSettlementAmount": {
//             "AmountValue": {
//                 "Value": check response?.SettlementInstructions?.InterbankSettlementAmount?.AmountValue?.Value
//             },
//             "AmountCurrency": {
//                 "Currencycode": check response?.SettlementInstructions?.InterbankSettlementAmount?.AmountCurrency?.Currencycode
//             },
//             "DecimalPointPosition": {
//                 "Text": check response?.SettlementInstructions?.InterbankSettlementAmount?.DecimalPointPosition?.Text
//             },
//             "AmountType": check response?.SettlementInstructions?.InterbankSettlementAmount?.AmountType
//             },
//             "InterbankSettlementCurrency": {
//             "Currencycode": check response?.SettlementInstructions?.InterbankSettlementCurrency?.Currencycode
//             },
//             "CreditDateTime": {
//             "DateTimeContent": {
//                 "Text": check response?.SettlementInstructions?.CreditDateTime?.DateTimeContent?.Text
//             },
//             "TimeZoneCode": {
//                 "Text": check response?.SettlementInstructions?.CreditDateTime?.TimeZoneCode?.Text
//             },
//             "DaylightSavingIndicator": {
//                 "Text": check response?.SettlementInstructions?.CreditDateTime?.DaylightSavingIndicator?.Text
//             },
//             "DateTimeType": check response?.SettlementInstructions?.CreditDateTime?.DateTimeType
//             },
//             "DebitDateTime": {
//             "DateTimeContent": {
//                 "Text": check response?.SettlementInstructions?.DebitDateTime?.DateTimeContent?.Text
//             },
//             "TimeZoneCode": {
//                 "Text": check response?.SettlementInstructions?.DebitDateTime?.TimeZoneCode?.Text
//             },
//             "DaylightSavingIndicator": {
//                 "Text": check response?.SettlementInstructions?.DebitDateTime?.DaylightSavingIndicator?.Text
//             },
//             "DateTimeType": check response?.SettlementInstructions?.DebitDateTime?.DateTimeType
//             },
//             "ClearingSystemIdentification": check response?.SettlementInstructions?.ClearingSystemIdentification,
//             "SettlementTimeRequest": {
//             "Text": check response?.SettlementInstructions?.SettlementTimeRequest?.Text
//             },
//             "SettlementPriority": {
//             "Text": check response?.SettlementInstructions?.SettlementPriority?.Text
//             },
//             "SettlementMethod": check response?.SettlementInstructions?.SettlementMethod,
//             "InterbankSettlementDate": {
//             "DateTimeContent": {
//                 "Text": check response?.SettlementInstructions?.InterbankSettlementDate?.DateTimeContent?.Text
//             },
//             "TimeZoneCode": {
//                 "Text": check response?.SettlementInstructions?.InterbankSettlementDate?.TimeZoneCode?.Text
//             },
//             "DaylightSavingIndicator": {
//                 "Text": check response?.SettlementInstructions?.InterbankSettlementDate?.DaylightSavingIndicator?.Text
//             },
//             "DateTimeType": check response?.SettlementInstructions?.InterbankSettlementDate?.DateTimeType
//             }
//         },
//         "PaymentProcessingConfiguration": {
//             "PaymentProcessingPriority": check response?.PaymentProcessingConfiguration?.PaymentProcessingPriority,
//             "PaymentProcessingArrangement": {
//             "ArrangementAction": {
//                 "ActionType": check response?.PaymentProcessingConfiguration?.PaymentProcessingArrangement?.ArrangementAction?.ActionType
//             },
//             "ArrangementStartDate": {
//                 "DateTimeContent": {
//                 "Text": check response?.PaymentProcessingConfiguration?.PaymentProcessingArrangement?.ArrangementStartDate?.DateTimeContent?.Text
//                 },
//                 "TimeZoneCode": {
//                 "Text": check response?.PaymentProcessingConfiguration?.PaymentProcessingArrangement?.ArrangementStartDate?.TimeZoneCode?.Text
//                 },
//                 "DaylightSavingIndicator": {
//                 "Text": check response?.PaymentProcessingConfiguration?.PaymentProcessingArrangement?.ArrangementStartDate?.DaylightSavingIndicator?.Text
//                 },
//                 "DateTimeType": check response?.PaymentProcessingConfiguration?.PaymentProcessingArrangement?.ArrangementStartDate?.DateTimeType
//             },
//             "ArrangementEndDate": {
//                 "DateTimeContent": {
//                 "Text": check response?.PaymentProcessingConfiguration?.PaymentProcessingArrangement?.ArrangementEndDate?.DateTimeContent?.Text
//                 },
//                 "TimeZoneCode": {
//                 "Text": check response?.PaymentProcessingConfiguration?.PaymentProcessingArrangement?.ArrangementEndDate?.TimeZoneCode?.Text
//                 },
//                 "DaylightSavingIndicator": {
//                 "Text": check response?.PaymentProcessingConfiguration?.PaymentProcessingArrangement?.ArrangementEndDate?.DaylightSavingIndicator?.Text
//                 },
//                 "DateTimeType": check response?.PaymentProcessingConfiguration?.PaymentProcessingArrangement?.ArrangementEndDate?.DateTimeType
//             },
//             "ArrangementStatus": {
//                 "ArrangementStatus": {
//                 "StatusReason": {
//                     "Text": check response?.PaymentProcessingConfiguration?.PaymentProcessingArrangement?.ArrangementStatus?.ArrangementStatus?.StatusReason?.Text
//                 },
//                 "StatusDateTime": {
//                     "DateTimeContent": {
//                     "Text": check response?.PaymentProcessingConfiguration?.PaymentProcessingArrangement?.ArrangementStatus?.ArrangementStatus?.StatusDateTime?.DateTimeContent?.Text
//                     },
//                     "TimeZoneCode": {
//                     "Text": check response?.PaymentProcessingConfiguration?.PaymentProcessingArrangement?.ArrangementStatus?.ArrangementStatus?.StatusDateTime?.TimeZoneCode?.Text
//                     },
//                     "DaylightSavingIndicator": {
//                     "Text": check response?.PaymentProcessingConfiguration?.PaymentProcessingArrangement?.ArrangementStatus?.ArrangementStatus?.StatusDateTime?.DaylightSavingIndicator?.Text
//                     },
//                     "DateTimeType": check response?.PaymentProcessingConfiguration?.PaymentProcessingArrangement?.ArrangementStatus?.ArrangementStatus?.StatusDateTime?.DateTimeType
//                 },
//                 "StatusValidityPeriod": {
//                     "FromDateTime": {
//                     "DateTimeContent": {
//                         "Text": check response?.PaymentProcessingConfiguration?.PaymentProcessingArrangement?.ArrangementStatus?.ArrangementStatus?.StatusValidityPeriod?.FromDateTime?.DateTimeContent?.Text
//                     },
//                     "TimeZoneCode": {
//                         "Text": check response?.PaymentProcessingConfiguration?.PaymentProcessingArrangement?.ArrangementStatus?.ArrangementStatus?.StatusValidityPeriod?.FromDateTime?.TimeZoneCode?.Text
//                     },
//                     "DaylightSavingIndicator": {
//                         "Text": check response?.PaymentProcessingConfiguration?.PaymentProcessingArrangement?.ArrangementStatus?.ArrangementStatus?.StatusValidityPeriod?.FromDateTime?.DaylightSavingIndicator?.Text
//                     },
//                     "DateTimeType": check response?.PaymentProcessingConfiguration?.PaymentProcessingArrangement?.ArrangementStatus?.ArrangementStatus?.StatusValidityPeriod?.FromDateTime?.DateTimeType
//                     },
//                     "ToDateTime": {
//                     "DateTimeContent": {
//                         "Text": check response?.PaymentProcessingConfiguration?.PaymentProcessingArrangement?.ArrangementStatus?.ArrangementStatus?.StatusValidityPeriod?.ToDateTime?.DateTimeContent?.Text
//                     },
//                     "TimeZoneCode": {
//                         "Text": check response?.PaymentProcessingConfiguration?.PaymentProcessingArrangement?.ArrangementStatus?.ArrangementStatus?.StatusValidityPeriod?.ToDateTime?.TimeZoneCode?.Text
//                     },
//                     "DaylightSavingIndicator": {
//                         "Text": check response?.PaymentProcessingConfiguration?.PaymentProcessingArrangement?.ArrangementStatus?.ArrangementStatus?.StatusValidityPeriod?.ToDateTime?.DaylightSavingIndicator?.Text
//                     },
//                     "DateTimeType": check response?.PaymentProcessingConfiguration?.PaymentProcessingArrangement?.ArrangementStatus?.ArrangementStatus?.StatusValidityPeriod?.ToDateTime?.DateTimeType
//                     }
//                 },
//                 "StatusInvolvedParty": {
//                     "PartyReference": {
//                     "PartyName": {
//                         "Name": check response?.PaymentProcessingConfiguration?.PaymentProcessingArrangement?.ArrangementStatus?.ArrangementStatus?.StatusInvolvedParty?.PartyReference?.PartyName?.Name
//                     },
//                     "PartyType": check response?.PaymentProcessingConfiguration?.PaymentProcessingArrangement?.ArrangementStatus?.ArrangementStatus?.StatusInvolvedParty?.PartyReference?.PartyType,
//                     "PartyDateTime": {
//                         "DateTimeContent": {
//                         "Text": check response?.PaymentProcessingConfiguration?.PaymentProcessingArrangement?.ArrangementStatus?.ArrangementStatus?.StatusInvolvedParty?.PartyReference?.PartyDateTime?.DateTimeContent?.Text
//                         },
//                         "TimeZoneCode": {
//                         "Text": check response?.PaymentProcessingConfiguration?.PaymentProcessingArrangement?.ArrangementStatus?.ArrangementStatus?.StatusInvolvedParty?.PartyReference?.PartyDateTime?.TimeZoneCode?.Text
//                         },
//                         "DaylightSavingIndicator": {
//                         "Text": check response?.PaymentProcessingConfiguration?.PaymentProcessingArrangement?.ArrangementStatus?.ArrangementStatus?.StatusInvolvedParty?.PartyReference?.PartyDateTime?.DaylightSavingIndicator?.Text
//                         },
//                         "DateTimeType": check response?.PaymentProcessingConfiguration?.PaymentProcessingArrangement?.ArrangementStatus?.ArrangementStatus?.StatusInvolvedParty?.PartyReference?.PartyDateTime?.DateTimeType
//                     },
//                     "PartyIdentification": {
//                         "PartyIdentificationType": check response?.PaymentProcessingConfiguration?.PaymentProcessingArrangement?.ArrangementStatus?.ArrangementStatus?.StatusInvolvedParty?.PartyReference?.PartyIdentification?.PartyIdentificationType
//                         // "PartyIdentification": check response?.PaymentProcessingConfiguration?.PaymentProcessingArrangement?.ArrangementStatus?.ArrangementStatus?.StatusInvolvedParty?.PartyReference?.PartyIdentification?.PartyIdentification
//                     },
//                     "PartyLegalStructureType": check response?.PaymentProcessingConfiguration?.PaymentProcessingArrangement?.ArrangementStatus?.ArrangementStatus?.StatusInvolvedParty?.PartyReference?.PartyLegalStructureType
//                     },
//                     "PartyInvolvement": {
//                     "PartyRoleType": {
//                         "Text": check response?.PaymentProcessingConfiguration?.PaymentProcessingArrangement?.ArrangementStatus?.ArrangementStatus?.StatusInvolvedParty?.PartyInvolvement?.PartyRoleType?.Text
//                     },
//                     "PartyRoleName": {
//                         "Name": check response?.PaymentProcessingConfiguration?.PaymentProcessingArrangement?.ArrangementStatus?.ArrangementStatus?.StatusInvolvedParty?.PartyInvolvement?.PartyRoleName?.Name
//                     },
//                     "PartyRoleValidityPeriod": {
//                         "FromDateTime": {
//                         "DateTimeContent": {
//                             "Text": check response?.PaymentProcessingConfiguration?.PaymentProcessingArrangement?.ArrangementStatus?.ArrangementStatus?.StatusInvolvedParty?.PartyInvolvement?.PartyRoleValidityPeriod?.FromDateTime?.DateTimeContent?.Text
//                         },
//                         "TimeZoneCode": {
//                             "Text": check response?.PaymentProcessingConfiguration?.PaymentProcessingArrangement?.ArrangementStatus?.ArrangementStatus?.StatusInvolvedParty?.PartyInvolvement?.PartyRoleValidityPeriod?.FromDateTime?.TimeZoneCode?.Text
//                         },
//                         "DaylightSavingIndicator": {
//                             "Text": check response?.PaymentProcessingConfiguration?.PaymentProcessingArrangement?.ArrangementStatus?.ArrangementStatus?.StatusInvolvedParty?.PartyInvolvement?.PartyRoleValidityPeriod?.FromDateTime?.DaylightSavingIndicator?.Text
//                         },
//                         "DateTimeType": check response?.PaymentProcessingConfiguration?.PaymentProcessingArrangement?.ArrangementStatus?.ArrangementStatus?.StatusInvolvedParty?.PartyInvolvement?.PartyRoleValidityPeriod?.FromDateTime?.DateTimeType
//                         },
//                         "ToDateTime": {
//                         "DateTimeContent": {
//                             "Text": check response?.PaymentProcessingConfiguration?.PaymentProcessingArrangement?.ArrangementStatus?.ArrangementStatus?.StatusInvolvedParty?.PartyInvolvement?.PartyRoleValidityPeriod?.ToDateTime?.DateTimeContent?.Text
//                         },
//                         "TimeZoneCode": {
//                             "Text": check response?.PaymentProcessingConfiguration?.PaymentProcessingArrangement?.ArrangementStatus?.ArrangementStatus?.StatusInvolvedParty?.PartyInvolvement?.PartyRoleValidityPeriod?.ToDateTime?.TimeZoneCode?.Text
//                         },
//                         "DaylightSavingIndicator": {
//                             "Text": check response?.PaymentProcessingConfiguration?.PaymentProcessingArrangement?.ArrangementStatus?.ArrangementStatus?.StatusInvolvedParty?.PartyInvolvement?.PartyRoleValidityPeriod?.ToDateTime?.DaylightSavingIndicator?.Text
//                         },
//                         "DateTimeType": check response?.PaymentProcessingConfiguration?.PaymentProcessingArrangement?.ArrangementStatus?.ArrangementStatus?.StatusInvolvedParty?.PartyInvolvement?.PartyRoleValidityPeriod?.ToDateTime?.DateTimeType
//                         }
//                     },
//                     "PartyInvolvementType": check response?.PaymentProcessingConfiguration?.PaymentProcessingArrangement?.ArrangementStatus?.ArrangementStatus?.StatusInvolvedParty?.PartyInvolvement?.PartyInvolvementType
//                     }
//                 }
//                 },
//                 "ArrangementStatusType": check response?.PaymentProcessingConfiguration?.PaymentProcessingArrangement?.ArrangementStatus?.ArrangementStatusType
//             },
//             "ArrangementSubjectMatter": {
//                 "Subject": check response?.PaymentProcessingConfiguration?.PaymentProcessingArrangement?.ArrangementSubjectMatter?.Subject
//             },
//             "Arrangementtype": check response?.PaymentProcessingConfiguration?.PaymentProcessingArrangement?.Arrangementtype
//             },
//             "PaymentProcessingClearingChannel": check response?.PaymentProcessingConfiguration?.PaymentProcessingClearingChannel,
//             "PaymentLocalInstument": check response?.PaymentProcessingConfiguration?.PaymentLocalInstument,
//             "PaymentCategoryPurpose": check response?.PaymentProcessingConfiguration?.PaymentCategoryPurpose,
//             "PaymentSequence": check response?.PaymentProcessingConfiguration?.PaymentSequence
//         }
// };
    