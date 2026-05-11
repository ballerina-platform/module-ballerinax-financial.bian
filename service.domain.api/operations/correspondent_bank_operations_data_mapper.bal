// import ashirwadadayarathne/bian.service_domain.operations.attribute.groups.v14_clearing_and_settlement as clearing_and_settlement;

// isolated function transformOutboundPaymentTransactionsExecutionResponse(json response) returns clearing_and_settlement:OutboundPayments|error => {
//     "CorrespondentTransactionRecord": {
//         "TransactionIdentification": {
//             "IdentifierValue": {
//                 "Value": check response?.CorrespondentTransactionRecord?.TransactionIdentification?.IdentifierValue?.Value
//             },
//             "IdentifierIssuingAuthority": {
//                 "PartyReference": {
//                     "PartyName": {
//                         "Name": check response?.CorrespondentTransactionRecord?.TransactionIdentification?.IdentifierIssuingAuthority?.PartyReference?.PartyName?.Name
//                     },
//                     "PartyType": check response?.CorrespondentTransactionRecord?.TransactionIdentification?.IdentifierIssuingAuthority?.PartyReference?.PartyType,
//                     "PartyDateTime": {
//                         "DateTimeContent": {
//                             "Text": check response?.CorrespondentTransactionRecord?.TransactionIdentification?.IdentifierIssuingAuthority?.PartyReference?.PartyDateTime?.DateTimeContent?.Text
//                         },
//                         "TimeZoneCode": {
//                             "Text": check response?.CorrespondentTransactionRecord?.TransactionIdentification?.IdentifierIssuingAuthority?.PartyReference?.PartyDateTime?.TimeZoneCode?.Text
//                         },
//                         "DaylightSavingIndicator": {
//                             "Text": check response?.CorrespondentTransactionRecord?.TransactionIdentification?.IdentifierIssuingAuthority?.PartyReference?.PartyDateTime?.DaylightSavingIndicator?.Text
//                         },
//                         "DateTimeType": check response?.CorrespondentTransactionRecord?.TransactionIdentification?.IdentifierIssuingAuthority?.PartyReference?.PartyDateTime?.DateTimeType
//                     },
//                     "PartyIdentification": {
//                         "PartyIdentificationType": check response?.CorrespondentTransactionRecord?.TransactionIdentification?.IdentifierIssuingAuthority?.PartyReference?.PartyIdentification?.PartyIdentificationType
//                         // "PartyIdentification": check response?.CorrespondentTransactionRecord?.TransactionIdentification?.IdentifierIssuingAuthority?.PartyReference?.PartyIdentification?.PartyIdentification
//                     },
//                     "PartyLegalStructureType": check response?.CorrespondentTransactionRecord?.TransactionIdentification?.IdentifierIssuingAuthority?.PartyReference?.PartyLegalStructureType
//                 },
//                 "PartyInvolvement": {
//                     "PartyRoleType": {
//                         "Text": check response?.CorrespondentTransactionRecord?.TransactionIdentification?.IdentifierIssuingAuthority?.PartyInvolvement?.PartyRoleType?.Text
//                     },
//                     "PartyRoleName": {
//                         "Name": check response?.CorrespondentTransactionRecord?.TransactionIdentification?.IdentifierIssuingAuthority?.PartyInvolvement?.PartyRoleName?.Name
//                     },
//                     "PartyRoleValidityPeriod": {
//                         "FromDateTime": {
//                             "DateTimeContent": {
//                                 "Text": check response?.CorrespondentTransactionRecord?.TransactionIdentification?.IdentifierIssuingAuthority?.PartyInvolvement?.PartyRoleValidityPeriod?.FromDateTime?.DateTimeContent?.Text
//                             },
//                             "TimeZoneCode": {
//                                 "Text": check response?.CorrespondentTransactionRecord?.TransactionIdentification?.IdentifierIssuingAuthority?.PartyInvolvement?.PartyRoleValidityPeriod?.FromDateTime?.TimeZoneCode?.Text
//                             },
//                             "DaylightSavingIndicator": {
//                                 "Text": check response?.CorrespondentTransactionRecord?.TransactionIdentification?.IdentifierIssuingAuthority?.PartyInvolvement?.PartyRoleValidityPeriod?.FromDateTime?.DaylightSavingIndicator?.Text
//                             },
//                             "DateTimeType": check response?.CorrespondentTransactionRecord?.TransactionIdentification?.IdentifierIssuingAuthority?.PartyInvolvement?.PartyRoleValidityPeriod?.FromDateTime?.DateTimeType
//                         },
//                         "ToDateTime": {
//                             "DateTimeContent": {
//                                 "Text": check response?.CorrespondentTransactionRecord?.TransactionIdentification?.IdentifierIssuingAuthority?.PartyInvolvement?.PartyRoleValidityPeriod?.ToDateTime?.DateTimeContent?.Text
//                             },
//                             "TimeZoneCode": {
//                                 "Text": check response?.CorrespondentTransactionRecord?.TransactionIdentification?.IdentifierIssuingAuthority?.PartyInvolvement?.PartyRoleValidityPeriod?.ToDateTime?.TimeZoneCode?.Text
//                             },
//                             "DaylightSavingIndicator": {
//                                 "Text": check response?.CorrespondentTransactionRecord?.TransactionIdentification?.IdentifierIssuingAuthority?.PartyInvolvement?.PartyRoleValidityPeriod?.ToDateTime?.DaylightSavingIndicator?.Text
//                             },
//                             "DateTimeType": check response?.CorrespondentTransactionRecord?.TransactionIdentification?.IdentifierIssuingAuthority?.PartyInvolvement?.PartyRoleValidityPeriod?.ToDateTime?.DateTimeType
//                         }
//                     },
//                     "PartyInvolvementType": check response?.CorrespondentTransactionRecord?.TransactionIdentification?.IdentifierIssuingAuthority?.PartyInvolvement?.PartyInvolvementType
//                 }
//             },
//             "IdentifierStartDate": {
//                 "DateTimeContent": {
//                     "Text": check response?.CorrespondentTransactionRecord?.TransactionIdentification?.IdentifierStartDate?.DateTimeContent?.Text
//                 },
//                 "TimeZoneCode": {
//                     "Text": check response?.CorrespondentTransactionRecord?.TransactionIdentification?.IdentifierStartDate?.TimeZoneCode?.Text
//                 },
//                 "DaylightSavingIndicator": {
//                     "Text": check response?.CorrespondentTransactionRecord?.TransactionIdentification?.IdentifierStartDate?.DaylightSavingIndicator?.Text
//                 },
//                 "DateTimeType": check response?.CorrespondentTransactionRecord?.TransactionIdentification?.IdentifierStartDate?.DateTimeType
//             },
//             "IdentifierEndDate": {
//                 "DateTimeContent": {
//                     "Text": check response?.CorrespondentTransactionRecord?.TransactionIdentification?.IdentifierEndDate?.DateTimeContent?.Text
//                 },
//                 "TimeZoneCode": {
//                     "Text": check response?.CorrespondentTransactionRecord?.TransactionIdentification?.IdentifierEndDate?.TimeZoneCode?.Text
//                 },
//                 "DaylightSavingIndicator": {
//                     "Text": check response?.CorrespondentTransactionRecord?.TransactionIdentification?.IdentifierEndDate?.DaylightSavingIndicator?.Text
//                 },
//                 "DateTimeType": check response?.CorrespondentTransactionRecord?.TransactionIdentification?.IdentifierEndDate?.DateTimeType
//             }
//         },
//         "TransactionDate": {
//             "TransactionDate": {
//                 "DateTimeContent": {
//                     "Text": check response?.CorrespondentTransactionRecord?.TransactionDate?.TransactionDate?.DateTimeContent?.Text
//                 },
//                 "TimeZoneCode": {
//                     "Text": check response?.CorrespondentTransactionRecord?.TransactionDate?.TransactionDate?.TimeZoneCode?.Text
//                 },
//                 "DaylightSavingIndicator": {
//                     "Text": check response?.CorrespondentTransactionRecord?.TransactionDate?.TransactionDate?.DaylightSavingIndicator?.Text
//                 },
//                 "DateTimeType": check response?.CorrespondentTransactionRecord?.TransactionDate?.TransactionDate?.DateTimeType
//             },
//             "TransactionDateType": check response?.CorrespondentTransactionRecord?.TransactionDate?.TransactionDateType
//         },
//         "TransactionType": check response?.CorrespondentTransactionRecord?.TransactionType,
//         "TransactionDescription": {
//             "Text": check response?.CorrespondentTransactionRecord?.TransactionDescription?.Text
//         },
//         "TransactionStatus": {
//             "TransactionStatus": {
//                 "StatusReason": {
//                     "Text": check response?.CorrespondentTransactionRecord?.TransactionStatus?.TransactionStatus?.StatusReason?.Text
//                 },
//                 "StatusDateTime": {
//                     "DateTimeContent": {
//                         "Text": check response?.CorrespondentTransactionRecord?.TransactionStatus?.TransactionStatus?.StatusDateTime?.DateTimeContent?.Text
//                     },
//                     "TimeZoneCode": {
//                         "Text": check response?.CorrespondentTransactionRecord?.TransactionStatus?.TransactionStatus?.StatusDateTime?.TimeZoneCode?.Text
//                     },
//                     "DaylightSavingIndicator": {
//                         "Text": check response?.CorrespondentTransactionRecord?.TransactionStatus?.TransactionStatus?.StatusDateTime?.DaylightSavingIndicator?.Text
//                     },
//                     "DateTimeType": check response?.CorrespondentTransactionRecord?.TransactionStatus?.TransactionStatus?.StatusDateTime?.DateTimeType
//                 },
//                 "StatusValidityPeriod": {
//                     "FromDateTime": {
//                         "DateTimeContent": {
//                             "Text": check response?.CorrespondentTransactionRecord?.TransactionStatus?.TransactionStatus?.StatusValidityPeriod?.FromDateTime?.DateTimeContent?.Text
//                         },
//                         "TimeZoneCode": {
//                             "Text": check response?.CorrespondentTransactionRecord?.TransactionStatus?.TransactionStatus?.StatusValidityPeriod?.FromDateTime?.TimeZoneCode?.Text
//                         },
//                         "DaylightSavingIndicator": {
//                             "Text": check response?.CorrespondentTransactionRecord?.TransactionStatus?.TransactionStatus?.StatusValidityPeriod?.FromDateTime?.DaylightSavingIndicator?.Text
//                         },
//                         "DateTimeType": check response?.CorrespondentTransactionRecord?.TransactionStatus?.TransactionStatus?.StatusValidityPeriod?.FromDateTime?.DateTimeType
//                     },
//                     "ToDateTime": {
//                         "DateTimeContent": {
//                             "Text": check response?.CorrespondentTransactionRecord?.TransactionStatus?.TransactionStatus?.StatusValidityPeriod?.ToDateTime?.DateTimeContent?.Text
//                         },
//                         "TimeZoneCode": {
//                             "Text": check response?.CorrespondentTransactionRecord?.TransactionStatus?.TransactionStatus?.StatusValidityPeriod?.ToDateTime?.TimeZoneCode?.Text
//                         },
//                         "DaylightSavingIndicator": {
//                             "Text": check response?.CorrespondentTransactionRecord?.TransactionStatus?.TransactionStatus?.StatusValidityPeriod?.ToDateTime?.DaylightSavingIndicator?.Text
//                         },
//                         "DateTimeType": check response?.CorrespondentTransactionRecord?.TransactionStatus?.TransactionStatus?.StatusValidityPeriod?.ToDateTime?.DateTimeType
//                     }
//                 },
//                 "StatusInvolvedParty": {
//                     "PartyReference": {
//                         "PartyName": {
//                             "Name": check response?.CorrespondentTransactionRecord?.TransactionStatus?.TransactionStatus?.StatusInvolvedParty?.PartyReference?.PartyName?.Name
//                         },
//                         "PartyType": check response?.CorrespondentTransactionRecord?.TransactionStatus?.TransactionStatus?.StatusInvolvedParty?.PartyReference?.PartyType,
//                         "PartyDateTime": {
//                             "DateTimeContent": {
//                                 "Text": check response?.CorrespondentTransactionRecord?.TransactionStatus?.TransactionStatus?.StatusInvolvedParty?.PartyReference?.PartyDateTime?.DateTimeContent?.Text
//                             },
//                             "TimeZoneCode": {
//                                 "Text": check response?.CorrespondentTransactionRecord?.TransactionStatus?.TransactionStatus?.StatusInvolvedParty?.PartyReference?.PartyDateTime?.TimeZoneCode?.Text
//                             },
//                             "DaylightSavingIndicator": {
//                                 "Text": check response?.CorrespondentTransactionRecord?.TransactionStatus?.TransactionStatus?.StatusInvolvedParty?.PartyReference?.PartyDateTime?.DaylightSavingIndicator?.Text
//                             },
//                             "DateTimeType": check response?.CorrespondentTransactionRecord?.TransactionStatus?.TransactionStatus?.StatusInvolvedParty?.PartyReference?.PartyDateTime?.DateTimeType
//                         },
//                         "PartyIdentification": {
//                             "PartyIdentificationType": check response?.CorrespondentTransactionRecord?.TransactionStatus?.TransactionStatus?.StatusInvolvedParty?.PartyReference?.PartyIdentification?.PartyIdentificationType
//                             //   "PartyIdentification": check response?.CorrespondentTransactionRecord?.TransactionStatus?.TransactionStatus?.StatusInvolvedParty?.PartyReference?.PartyIdentification?.PartyIdentification
//                         },
//                         "PartyLegalStructureType": check response?.CorrespondentTransactionRecord?.TransactionStatus?.TransactionStatus?.StatusInvolvedParty?.PartyReference?.PartyLegalStructureType
//                     },
//                     "PartyInvolvement": {
//                         "PartyRoleType": {
//                             "Text": check response?.CorrespondentTransactionRecord?.TransactionStatus?.TransactionStatus?.StatusInvolvedParty?.PartyInvolvement?.PartyRoleType?.Text
//                         },
//                         "PartyRoleName": {
//                             "Name": check response?.CorrespondentTransactionRecord?.TransactionStatus?.TransactionStatus?.StatusInvolvedParty?.PartyInvolvement?.PartyRoleName?.Name
//                         },
//                         "PartyRoleValidityPeriod": {
//                             "FromDateTime": {
//                                 "DateTimeContent": {
//                                     "Text": check response?.CorrespondentTransactionRecord?.TransactionStatus?.TransactionStatus?.StatusInvolvedParty?.PartyInvolvement?.PartyRoleValidityPeriod?.FromDateTime?.DateTimeContent?.Text
//                                 },
//                                 "TimeZoneCode": {
//                                     "Text": check response?.CorrespondentTransactionRecord?.TransactionStatus?.TransactionStatus?.StatusInvolvedParty?.PartyInvolvement?.PartyRoleValidityPeriod?.FromDateTime?.TimeZoneCode?.Text
//                                 },
//                                 "DaylightSavingIndicator": {
//                                     "Text": check response?.CorrespondentTransactionRecord?.TransactionStatus?.TransactionStatus?.StatusInvolvedParty?.PartyInvolvement?.PartyRoleValidityPeriod?.FromDateTime?.DaylightSavingIndicator?.Text
//                                 },
//                                 "DateTimeType": check response?.CorrespondentTransactionRecord?.TransactionStatus?.TransactionStatus?.StatusInvolvedParty?.PartyInvolvement?.PartyRoleValidityPeriod?.FromDateTime?.DateTimeType
//                             },
//                             "ToDateTime": {
//                                 "DateTimeContent": {
//                                     "Text": check response?.CorrespondentTransactionRecord?.TransactionStatus?.TransactionStatus?.StatusInvolvedParty?.PartyInvolvement?.PartyRoleValidityPeriod?.ToDateTime?.DateTimeContent?.Text
//                                 },
//                                 "TimeZoneCode": {
//                                     "Text": check response?.CorrespondentTransactionRecord?.TransactionStatus?.TransactionStatus?.StatusInvolvedParty?.PartyInvolvement?.PartyRoleValidityPeriod?.ToDateTime?.TimeZoneCode?.Text
//                                 },
//                                 "DaylightSavingIndicator": {
//                                     "Text": check response?.CorrespondentTransactionRecord?.TransactionStatus?.TransactionStatus?.StatusInvolvedParty?.PartyInvolvement?.PartyRoleValidityPeriod?.ToDateTime?.DaylightSavingIndicator?.Text
//                                 },
//                                 "DateTimeType": check response?.CorrespondentTransactionRecord?.TransactionStatus?.TransactionStatus?.StatusInvolvedParty?.PartyInvolvement?.PartyRoleValidityPeriod?.ToDateTime?.DateTimeType
//                             }
//                         },
//                         "PartyInvolvementType": check response?.CorrespondentTransactionRecord?.TransactionStatus?.TransactionStatus?.StatusInvolvedParty?.PartyInvolvement?.PartyInvolvementType
//                     }
//                 }
//             },
//             "TransactionStatusType": check response?.CorrespondentTransactionRecord?.TransactionStatus?.TransactionStatusType
//         },
//         "TransactionName": {
//             "Name": check response?.CorrespondentTransactionRecord?.TransactionName?.Name
//         }
//     },
//     "SWIFTTransactionReference": {
//         "TransactionIdentification": {
//             "IdentifierValue": {
//                 "Value": check response?.SWIFTTransactionReference?.TransactionIdentification?.IdentifierValue?.Value
//             },
//             "IdentifierIssuingAuthority": {
//                 "PartyReference": {
//                     "PartyName": {
//                         "Name": check response?.SWIFTTransactionReference?.TransactionIdentification?.IdentifierIssuingAuthority?.PartyReference?.PartyName?.Name
//                     },
//                     "PartyType": check response?.SWIFTTransactionReference?.TransactionIdentification?.IdentifierIssuingAuthority?.PartyReference?.PartyType,
//                     "PartyDateTime": {
//                         "DateTimeContent": {
//                             "Text": check response?.SWIFTTransactionReference?.TransactionIdentification?.IdentifierIssuingAuthority?.PartyReference?.PartyDateTime?.DateTimeContent?.Text
//                         },
//                         "TimeZoneCode": {
//                             "Text": check response?.SWIFTTransactionReference?.TransactionIdentification?.IdentifierIssuingAuthority?.PartyReference?.PartyDateTime?.TimeZoneCode?.Text
//                         },
//                         "DaylightSavingIndicator": {
//                             "Text": check response?.SWIFTTransactionReference?.TransactionIdentification?.IdentifierIssuingAuthority?.PartyReference?.PartyDateTime?.DaylightSavingIndicator?.Text
//                         },
//                         "DateTimeType": check response?.SWIFTTransactionReference?.TransactionIdentification?.IdentifierIssuingAuthority?.PartyReference?.PartyDateTime?.DateTimeType
//                     },
//                     "PartyIdentification": {
//                         "PartyIdentificationType": check response?.SWIFTTransactionReference?.TransactionIdentification?.IdentifierIssuingAuthority?.PartyReference?.PartyIdentification?.PartyIdentificationType
//                         // "PartyIdentification": check response?.SWIFTTransactionReference?.TransactionIdentification?.IdentifierIssuingAuthority?.PartyReference?.PartyIdentification?.PartyIdentification
//                     },
//                     "PartyLegalStructureType": check response?.SWIFTTransactionReference?.TransactionIdentification?.IdentifierIssuingAuthority?.PartyReference?.PartyLegalStructureType
//                 },
//                 "PartyInvolvement": {
//                     "PartyRoleType": {
//                         "Text": check response?.SWIFTTransactionReference?.TransactionIdentification?.IdentifierIssuingAuthority?.PartyInvolvement?.PartyRoleType?.Text
//                     },
//                     "PartyRoleName": {
//                         "Name": check response?.SWIFTTransactionReference?.TransactionIdentification?.IdentifierIssuingAuthority?.PartyInvolvement?.PartyRoleName?.Name
//                     },
//                     "PartyRoleValidityPeriod": {
//                         "FromDateTime": {
//                             "DateTimeContent": {
//                                 "Text": check response?.SWIFTTransactionReference?.TransactionIdentification?.IdentifierIssuingAuthority?.PartyInvolvement?.PartyRoleValidityPeriod?.FromDateTime?.DateTimeContent?.Text
//                             },
//                             "TimeZoneCode": {
//                                 "Text": check response?.SWIFTTransactionReference?.TransactionIdentification?.IdentifierIssuingAuthority?.PartyInvolvement?.PartyRoleValidityPeriod?.FromDateTime?.TimeZoneCode?.Text
//                             },
//                             "DaylightSavingIndicator": {
//                                 "Text": check response?.SWIFTTransactionReference?.TransactionIdentification?.IdentifierIssuingAuthority?.PartyInvolvement?.PartyRoleValidityPeriod?.FromDateTime?.DaylightSavingIndicator?.Text
//                             },
//                             "DateTimeType": check response?.SWIFTTransactionReference?.TransactionIdentification?.IdentifierIssuingAuthority?.PartyInvolvement?.PartyRoleValidityPeriod?.FromDateTime?.DateTimeType
//                         },
//                         "ToDateTime": {
//                             "DateTimeContent": {
//                                 "Text": check response?.SWIFTTransactionReference?.TransactionIdentification?.IdentifierIssuingAuthority?.PartyInvolvement?.PartyRoleValidityPeriod?.ToDateTime?.DateTimeContent?.Text
//                             },
//                             "TimeZoneCode": {
//                                 "Text": check response?.SWIFTTransactionReference?.TransactionIdentification?.IdentifierIssuingAuthority?.PartyInvolvement?.PartyRoleValidityPeriod?.ToDateTime?.TimeZoneCode?.Text
//                             },
//                             "DaylightSavingIndicator": {
//                                 "Text": check response?.SWIFTTransactionReference?.TransactionIdentification?.IdentifierIssuingAuthority?.PartyInvolvement?.PartyRoleValidityPeriod?.ToDateTime?.DaylightSavingIndicator?.Text
//                             },
//                             "DateTimeType": check response?.SWIFTTransactionReference?.TransactionIdentification?.IdentifierIssuingAuthority?.PartyInvolvement?.PartyRoleValidityPeriod?.ToDateTime?.DateTimeType
//                         }
//                     },
//                     "PartyInvolvementType": check response?.SWIFTTransactionReference?.TransactionIdentification?.IdentifierIssuingAuthority?.PartyInvolvement?.PartyInvolvementType
//                 }
//             },
//             "IdentifierStartDate": {
//                 "DateTimeContent": {
//                     "Text": check response?.SWIFTTransactionReference?.TransactionIdentification?.IdentifierStartDate?.DateTimeContent?.Text
//                 },
//                 "TimeZoneCode": {
//                     "Text": check response?.SWIFTTransactionReference?.TransactionIdentification?.IdentifierStartDate?.TimeZoneCode?.Text
//                 },
//                 "DaylightSavingIndicator": {
//                     "Text": check response?.SWIFTTransactionReference?.TransactionIdentification?.IdentifierStartDate?.DaylightSavingIndicator?.Text
//                 },
//                 "DateTimeType": check response?.SWIFTTransactionReference?.TransactionIdentification?.IdentifierStartDate?.DateTimeType
//             },
//             "IdentifierEndDate": {
//                 "DateTimeContent": {
//                     "Text": check response?.SWIFTTransactionReference?.TransactionIdentification?.IdentifierEndDate?.DateTimeContent?.Text
//                 },
//                 "TimeZoneCode": {
//                     "Text": check response?.SWIFTTransactionReference?.TransactionIdentification?.IdentifierEndDate?.TimeZoneCode?.Text
//                 },
//                 "DaylightSavingIndicator": {
//                     "Text": check response?.SWIFTTransactionReference?.TransactionIdentification?.IdentifierEndDate?.DaylightSavingIndicator?.Text
//                 },
//                 "DateTimeType": check response?.SWIFTTransactionReference?.TransactionIdentification?.IdentifierEndDate?.DateTimeType
//             }
//         },
//         "TransactionDate": {
//             "TransactionDate": {
//                 "DateTimeContent": {
//                     "Text": check response?.SWIFTTransactionReference?.TransactionDate?.TransactionDate?.DateTimeContent?.Text
//                 },
//                 "TimeZoneCode": {
//                     "Text": check response?.SWIFTTransactionReference?.TransactionDate?.TransactionDate?.TimeZoneCode?.Text
//                 },
//                 "DaylightSavingIndicator": {
//                     "Text": check response?.SWIFTTransactionReference?.TransactionDate?.TransactionDate?.DaylightSavingIndicator?.Text
//                 },
//                 "DateTimeType": check response?.SWIFTTransactionReference?.TransactionDate?.TransactionDate?.DateTimeType
//             },
//             "TransactionDateType": check response?.SWIFTTransactionReference?.TransactionDate?.TransactionDateType
//         },
//         "TransactionType": check response?.SWIFTTransactionReference?.TransactionType,
//         "TransactionDescription": {
//             "Text": check response?.SWIFTTransactionReference?.TransactionDescription?.Text
//         },
//         "TransactionStatus": {
//             "TransactionStatus": {
//                 "StatusReason": {
//                     "Text": check response?.SWIFTTransactionReference?.TransactionStatus?.TransactionStatus?.StatusReason?.Text
//                 },
//                 "StatusDateTime": {
//                     "DateTimeContent": {
//                         "Text": check response?.SWIFTTransactionReference?.TransactionStatus?.TransactionStatus?.StatusDateTime?.DateTimeContent?.Text
//                     },
//                     "TimeZoneCode": {
//                         "Text": check response?.SWIFTTransactionReference?.TransactionStatus?.TransactionStatus?.StatusDateTime?.TimeZoneCode?.Text
//                     },
//                     "DaylightSavingIndicator": {
//                         "Text": check response?.SWIFTTransactionReference?.TransactionStatus?.TransactionStatus?.StatusDateTime?.DaylightSavingIndicator?.Text
//                     },
//                     "DateTimeType": check response?.SWIFTTransactionReference?.TransactionStatus?.TransactionStatus?.StatusDateTime?.DateTimeType
//                 },
//                 "StatusValidityPeriod": {
//                     "FromDateTime": {
//                         "DateTimeContent": {
//                             "Text": check response?.SWIFTTransactionReference?.TransactionStatus?.TransactionStatus?.StatusValidityPeriod?.FromDateTime?.DateTimeContent?.Text
//                         },
//                         "TimeZoneCode": {
//                             "Text": check response?.SWIFTTransactionReference?.TransactionStatus?.TransactionStatus?.StatusValidityPeriod?.FromDateTime?.TimeZoneCode?.Text
//                         },
//                         "DaylightSavingIndicator": {
//                             "Text": check response?.SWIFTTransactionReference?.TransactionStatus?.TransactionStatus?.StatusValidityPeriod?.FromDateTime?.DaylightSavingIndicator?.Text
//                         },
//                         "DateTimeType": check response?.SWIFTTransactionReference?.TransactionStatus?.TransactionStatus?.StatusValidityPeriod?.FromDateTime?.DateTimeType
//                     },
//                     "ToDateTime": {
//                         "DateTimeContent": {
//                             "Text": check response?.SWIFTTransactionReference?.TransactionStatus?.TransactionStatus?.StatusValidityPeriod?.ToDateTime?.DateTimeContent?.Text
//                         },
//                         "TimeZoneCode": {
//                             "Text": check response?.SWIFTTransactionReference?.TransactionStatus?.TransactionStatus?.StatusValidityPeriod?.ToDateTime?.TimeZoneCode?.Text
//                         },
//                         "DaylightSavingIndicator": {
//                             "Text": check response?.SWIFTTransactionReference?.TransactionStatus?.TransactionStatus?.StatusValidityPeriod?.ToDateTime?.DaylightSavingIndicator?.Text
//                         },
//                         "DateTimeType": check response?.SWIFTTransactionReference?.TransactionStatus?.TransactionStatus?.StatusValidityPeriod?.ToDateTime?.DateTimeType
//                     }
//                 },
//                 "StatusInvolvedParty": {
//                     "PartyReference": {
//                         "PartyName": {
//                             "Name": check response?.SWIFTTransactionReference?.TransactionStatus?.TransactionStatus?.StatusInvolvedParty?.PartyReference?.PartyName?.Name
//                         },
//                         "PartyType": check response?.SWIFTTransactionReference?.TransactionStatus?.TransactionStatus?.StatusInvolvedParty?.PartyReference?.PartyType,
//                         "PartyDateTime": {
//                             "DateTimeContent": {
//                                 "Text": check response?.SWIFTTransactionReference?.TransactionStatus?.TransactionStatus?.StatusInvolvedParty?.PartyReference?.PartyDateTime?.DateTimeContent?.Text
//                             },
//                             "TimeZoneCode": {
//                                 "Text": check response?.SWIFTTransactionReference?.TransactionStatus?.TransactionStatus?.StatusInvolvedParty?.PartyReference?.PartyDateTime?.TimeZoneCode?.Text
//                             },
//                             "DaylightSavingIndicator": {
//                                 "Text": check response?.SWIFTTransactionReference?.TransactionStatus?.TransactionStatus?.StatusInvolvedParty?.PartyReference?.PartyDateTime?.DaylightSavingIndicator?.Text
//                             },
//                             "DateTimeType": check response?.SWIFTTransactionReference?.TransactionStatus?.TransactionStatus?.StatusInvolvedParty?.PartyReference?.PartyDateTime?.DateTimeType
//                         },
//                         "PartyIdentification": {
//                             "PartyIdentificationType": check response?.SWIFTTransactionReference?.TransactionStatus?.TransactionStatus?.StatusInvolvedParty?.PartyReference?.PartyIdentification?.PartyIdentificationType
//                             //   "PartyIdentification": check response?.SWIFTTransactionReference?.TransactionStatus?.TransactionStatus?.StatusInvolvedParty?.PartyReference?.PartyIdentification?.PartyIdentification
//                         },
//                         "PartyLegalStructureType": check response?.SWIFTTransactionReference?.TransactionStatus?.TransactionStatus?.StatusInvolvedParty?.PartyReference?.PartyLegalStructureType
//                     },
//                     "PartyInvolvement": {
//                         "PartyRoleType": {
//                             "Text": check response?.SWIFTTransactionReference?.TransactionStatus?.TransactionStatus?.StatusInvolvedParty?.PartyInvolvement?.PartyRoleType?.Text
//                         },
//                         "PartyRoleName": {
//                             "Name": check response?.SWIFTTransactionReference?.TransactionStatus?.TransactionStatus?.StatusInvolvedParty?.PartyInvolvement?.PartyRoleName?.Name
//                         },
//                         "PartyRoleValidityPeriod": {
//                             "FromDateTime": {
//                                 "DateTimeContent": {
//                                     "Text": check response?.SWIFTTransactionReference?.TransactionStatus?.TransactionStatus?.StatusInvolvedParty?.PartyInvolvement?.PartyRoleValidityPeriod?.FromDateTime?.DateTimeContent?.Text
//                                 },
//                                 "TimeZoneCode": {
//                                     "Text": check response?.SWIFTTransactionReference?.TransactionStatus?.TransactionStatus?.StatusInvolvedParty?.PartyInvolvement?.PartyRoleValidityPeriod?.FromDateTime?.TimeZoneCode?.Text
//                                 },
//                                 "DaylightSavingIndicator": {
//                                     "Text": check response?.SWIFTTransactionReference?.TransactionStatus?.TransactionStatus?.StatusInvolvedParty?.PartyInvolvement?.PartyRoleValidityPeriod?.FromDateTime?.DaylightSavingIndicator?.Text
//                                 },
//                                 "DateTimeType": check response?.SWIFTTransactionReference?.TransactionStatus?.TransactionStatus?.StatusInvolvedParty?.PartyInvolvement?.PartyRoleValidityPeriod?.FromDateTime?.DateTimeType
//                             },
//                             "ToDateTime": {
//                                 "DateTimeContent": {
//                                     "Text": check response?.SWIFTTransactionReference?.TransactionStatus?.TransactionStatus?.StatusInvolvedParty?.PartyInvolvement?.PartyRoleValidityPeriod?.ToDateTime?.DateTimeContent?.Text
//                                 },
//                                 "TimeZoneCode": {
//                                     "Text": check response?.SWIFTTransactionReference?.TransactionStatus?.TransactionStatus?.StatusInvolvedParty?.PartyInvolvement?.PartyRoleValidityPeriod?.ToDateTime?.TimeZoneCode?.Text
//                                 },
//                                 "DaylightSavingIndicator": {
//                                     "Text": check response?.SWIFTTransactionReference?.TransactionStatus?.TransactionStatus?.StatusInvolvedParty?.PartyInvolvement?.PartyRoleValidityPeriod?.ToDateTime?.DaylightSavingIndicator?.Text
//                                 },
//                                 "DateTimeType": check response?.SWIFTTransactionReference?.TransactionStatus?.TransactionStatus?.StatusInvolvedParty?.PartyInvolvement?.PartyRoleValidityPeriod?.ToDateTime?.DateTimeType
//                             }
//                         },
//                         "PartyInvolvementType": check response?.SWIFTTransactionReference?.TransactionStatus?.TransactionStatus?.StatusInvolvedParty?.PartyInvolvement?.PartyInvolvementType
//                     }
//                 }
//             },
//             "TransactionStatusType": check response?.SWIFTTransactionReference?.TransactionStatus?.TransactionStatusType
//         },
//         "TransactionName": {
//             "Name": check response?.SWIFTTransactionReference?.TransactionName?.Name
//         }
//     },
//     "PayerBankReference": {
//         "PartyReference": {
//             "PartyName": {
//                 "Name": check response?.PayerBankReference?.PartyReference?.PartyName?.Name
//             },
//             "PartyType": check response?.PayerBankReference?.PartyReference?.PartyType,
//             "PartyDateTime": {
//                 "DateTimeContent": {
//                     "Text": check response?.PayerBankReference?.PartyReference?.PartyDateTime?.DateTimeContent?.Text
//                 },
//                 "TimeZoneCode": {
//                     "Text": check response?.PayerBankReference?.PartyReference?.PartyDateTime?.TimeZoneCode?.Text
//                 },
//                 "DaylightSavingIndicator": {
//                     "Text": check response?.PayerBankReference?.PartyReference?.PartyDateTime?.DaylightSavingIndicator?.Text
//                 },
//                 "DateTimeType": check response?.PayerBankReference?.PartyReference?.PartyDateTime?.DateTimeType
//             },
//             "PartyIdentification": {
//                 "PartyIdentificationType": check response?.PayerBankReference?.PartyReference?.PartyIdentification?.PartyIdentificationType
//                 // "PartyIdentification": check response?.PayerBankReference?.PartyReference?.PartyIdentification?.PartyIdentification
//             },
//             "PartyLegalStructureType": check response?.PayerBankReference?.PartyReference?.PartyLegalStructureType
//         },
//         "PartyInvolvement": {
//             "PartyRoleType": {
//                 "Text": check response?.PayerBankReference?.PartyInvolvement?.PartyRoleType?.Text
//             },
//             "PartyRoleName": {
//                 "Name": check response?.PayerBankReference?.PartyInvolvement?.PartyRoleName?.Name
//             },
//             "PartyRoleValidityPeriod": {
//                 "FromDateTime": {
//                     "DateTimeContent": {
//                         "Text": check response?.PayerBankReference?.PartyInvolvement?.PartyRoleValidityPeriod?.FromDateTime?.DateTimeContent?.Text
//                     },
//                     "TimeZoneCode": {
//                         "Text": check response?.PayerBankReference?.PartyInvolvement?.PartyRoleValidityPeriod?.FromDateTime?.TimeZoneCode?.Text
//                     },
//                     "DaylightSavingIndicator": {
//                         "Text": check response?.PayerBankReference?.PartyInvolvement?.PartyRoleValidityPeriod?.FromDateTime?.DaylightSavingIndicator?.Text
//                     },
//                     "DateTimeType": check response?.PayerBankReference?.PartyInvolvement?.PartyRoleValidityPeriod?.FromDateTime?.DateTimeType
//                 },
//                 "ToDateTime": {
//                     "DateTimeContent": {
//                         "Text": check response?.PayerBankReference?.PartyInvolvement?.PartyRoleValidityPeriod?.ToDateTime?.DateTimeContent?.Text
//                     },
//                     "TimeZoneCode": {
//                         "Text": check response?.PayerBankReference?.PartyInvolvement?.PartyRoleValidityPeriod?.ToDateTime?.TimeZoneCode?.Text
//                     },
//                     "DaylightSavingIndicator": {
//                         "Text": check response?.PayerBankReference?.PartyInvolvement?.PartyRoleValidityPeriod?.ToDateTime?.DaylightSavingIndicator?.Text
//                     },
//                     "DateTimeType": check response?.PayerBankReference?.PartyInvolvement?.PartyRoleValidityPeriod?.ToDateTime?.DateTimeType
//                 }
//             },
//             "PartyInvolvementType": check response?.PayerBankReference?.PartyInvolvement?.PartyInvolvementType
//         }
//     },
//     "PayerReference": {
//         "PartyReference": {
//             "PartyName": {
//                 "Name": check response?.PayerReference?.PartyReference?.PartyName?.Name
//             },
//             "PartyType": check response?.PayerReference?.PartyReference?.PartyType,
//             "PartyDateTime": {
//                 "DateTimeContent": {
//                     "Text": check response?.PayerReference?.PartyReference?.PartyDateTime?.DateTimeContent?.Text
//                 },
//                 "TimeZoneCode": {
//                     "Text": check response?.PayerReference?.PartyReference?.PartyDateTime?.TimeZoneCode?.Text
//                 },
//                 "DaylightSavingIndicator": {
//                     "Text": check response?.PayerReference?.PartyReference?.PartyDateTime?.DaylightSavingIndicator?.Text
//                 },
//                 "DateTimeType": check response?.PayerReference?.PartyReference?.PartyDateTime?.DateTimeType
//             },
//             "PartyIdentification": {
//                 "PartyIdentificationType": check response?.PayerReference?.PartyReference?.PartyIdentification?.PartyIdentificationType
//                 // "PartyIdentification": check response?.PayerReference?.PartyReference?.PartyIdentification?.PartyIdentification
//             },
//             "PartyLegalStructureType": check response?.PayerReference?.PartyReference?.PartyLegalStructureType
//         },
//         "PartyInvolvement": {
//             "PartyRoleType": {
//                 "Text": check response?.PayerReference?.PartyInvolvement?.PartyRoleType?.Text
//             },
//             "PartyRoleName": {
//                 "Name": check response?.PayerReference?.PartyInvolvement?.PartyRoleName?.Name
//             },
//             "PartyRoleValidityPeriod": {
//                 "FromDateTime": {
//                     "DateTimeContent": {
//                         "Text": check response?.PayerReference?.PartyInvolvement?.PartyRoleValidityPeriod?.FromDateTime?.DateTimeContent?.Text
//                     },
//                     "TimeZoneCode": {
//                         "Text": check response?.PayerReference?.PartyInvolvement?.PartyRoleValidityPeriod?.FromDateTime?.TimeZoneCode?.Text
//                     },
//                     "DaylightSavingIndicator": {
//                         "Text": check response?.PayerReference?.PartyInvolvement?.PartyRoleValidityPeriod?.FromDateTime?.DaylightSavingIndicator?.Text
//                     },
//                     "DateTimeType": check response?.PayerReference?.PartyInvolvement?.PartyRoleValidityPeriod?.FromDateTime?.DateTimeType
//                 },
//                 "ToDateTime": {
//                     "DateTimeContent": {
//                         "Text": check response?.PayerReference?.PartyInvolvement?.PartyRoleValidityPeriod?.ToDateTime?.DateTimeContent?.Text
//                     },
//                     "TimeZoneCode": {
//                         "Text": check response?.PayerReference?.PartyInvolvement?.PartyRoleValidityPeriod?.ToDateTime?.TimeZoneCode?.Text
//                     },
//                     "DaylightSavingIndicator": {
//                         "Text": check response?.PayerReference?.PartyInvolvement?.PartyRoleValidityPeriod?.ToDateTime?.DaylightSavingIndicator?.Text
//                     },
//                     "DateTimeType": check response?.PayerReference?.PartyInvolvement?.PartyRoleValidityPeriod?.ToDateTime?.DateTimeType
//                 }
//             },
//             "PartyInvolvementType": check response?.PayerReference?.PartyInvolvement?.PartyInvolvementType
//         }
//     },
//     "CorrespondedBankReference": {
//         "PartyReference": {
//             "PartyName": {
//                 "Name": check response?.CorrespondedBankReference?.PartyReference?.PartyName?.Name
//             },
//             "PartyType": check response?.CorrespondedBankReference?.PartyReference?.PartyType,
//             "PartyDateTime": {
//                 "DateTimeContent": {
//                     "Text": check response?.CorrespondedBankReference?.PartyReference?.PartyDateTime?.DateTimeContent?.Text
//                 },
//                 "TimeZoneCode": {
//                     "Text": check response?.CorrespondedBankReference?.PartyReference?.PartyDateTime?.TimeZoneCode?.Text
//                 },
//                 "DaylightSavingIndicator": {
//                     "Text": check response?.CorrespondedBankReference?.PartyReference?.PartyDateTime?.DaylightSavingIndicator?.Text
//                 },
//                 "DateTimeType": check response?.CorrespondedBankReference?.PartyReference?.PartyDateTime?.DateTimeType
//             },
//             "PartyIdentification": {
//                 "PartyIdentificationType": check response?.CorrespondedBankReference?.PartyReference?.PartyIdentification?.PartyIdentificationType
//                 // "PartyIdentification": check response?.CorrespondedBankReference?.PartyReference?.PartyIdentification?.PartyIdentification
//             },
//             "PartyLegalStructureType": check response?.CorrespondedBankReference?.PartyReference?.PartyLegalStructureType
//         },
//         "PartyInvolvement": {
//             "PartyRoleType": {
//                 "Text": check response?.CorrespondedBankReference?.PartyInvolvement?.PartyRoleType?.Text
//             },
//             "PartyRoleName": {
//                 "Name": check response?.CorrespondedBankReference?.PartyInvolvement?.PartyRoleName?.Name
//             },
//             "PartyRoleValidityPeriod": {
//                 "FromDateTime": {
//                     "DateTimeContent": {
//                         "Text": check response?.CorrespondedBankReference?.PartyInvolvement?.PartyRoleValidityPeriod?.FromDateTime?.DateTimeContent?.Text
//                     },
//                     "TimeZoneCode": {
//                         "Text": check response?.CorrespondedBankReference?.PartyInvolvement?.PartyRoleValidityPeriod?.FromDateTime?.TimeZoneCode?.Text
//                     },
//                     "DaylightSavingIndicator": {
//                         "Text": check response?.CorrespondedBankReference?.PartyInvolvement?.PartyRoleValidityPeriod?.FromDateTime?.DaylightSavingIndicator?.Text
//                     },
//                     "DateTimeType": check response?.CorrespondedBankReference?.PartyInvolvement?.PartyRoleValidityPeriod?.FromDateTime?.DateTimeType
//                 },
//                 "ToDateTime": {
//                     "DateTimeContent": {
//                         "Text": check response?.CorrespondedBankReference?.PartyInvolvement?.PartyRoleValidityPeriod?.ToDateTime?.DateTimeContent?.Text
//                     },
//                     "TimeZoneCode": {
//                         "Text": check response?.CorrespondedBankReference?.PartyInvolvement?.PartyRoleValidityPeriod?.ToDateTime?.TimeZoneCode?.Text
//                     },
//                     "DaylightSavingIndicator": {
//                         "Text": check response?.CorrespondedBankReference?.PartyInvolvement?.PartyRoleValidityPeriod?.ToDateTime?.DaylightSavingIndicator?.Text
//                     },
//                     "DateTimeType": check response?.CorrespondedBankReference?.PartyInvolvement?.PartyRoleValidityPeriod?.ToDateTime?.DateTimeType
//                 }
//             },
//             "PartyInvolvementType": check response?.CorrespondedBankReference?.PartyInvolvement?.PartyInvolvementType
//         }
//     },
//     "PayerProductInstanceReference": {
//         "ProductAgreementType": check response?.PayerProductInstanceReference?.ProductAgreementType
//     },
//     "PayeeReference": {
//         "PartyReference": {
//             "PartyName": {
//                 "Name": check response?.PayeeReference?.PartyReference?.PartyName?.Name
//             },
//             "PartyType": check response?.PayeeReference?.PartyReference?.PartyType,
//             "PartyDateTime": {
//                 "DateTimeContent": {
//                     "Text": check response?.PayeeReference?.PartyReference?.PartyDateTime?.DateTimeContent?.Text
//                 },
//                 "TimeZoneCode": {
//                     "Text": check response?.PayeeReference?.PartyReference?.PartyDateTime?.TimeZoneCode?.Text
//                 },
//                 "DaylightSavingIndicator": {
//                     "Text": check response?.PayeeReference?.PartyReference?.PartyDateTime?.DaylightSavingIndicator?.Text
//                 },
//                 "DateTimeType": check response?.PayeeReference?.PartyReference?.PartyDateTime?.DateTimeType
//             },
//             "PartyIdentification": {
//                 "PartyIdentificationType": check response?.PayeeReference?.PartyReference?.PartyIdentification?.PartyIdentificationType
//                 // "PartyIdentification": check response?.PayeeReference?.PartyReference?.PartyIdentification?.PartyIdentification
//             },
//             "PartyLegalStructureType": check response?.PayeeReference?.PartyReference?.PartyLegalStructureType
//         },
//         "PartyInvolvement": {
//             "PartyRoleType": {
//                 "Text": check response?.PayeeReference?.PartyInvolvement?.PartyRoleType?.Text
//             },
//             "PartyRoleName": {
//                 "Name": check response?.PayeeReference?.PartyInvolvement?.PartyRoleName?.Name
//             },
//             "PartyRoleValidityPeriod": {
//                 "FromDateTime": {
//                     "DateTimeContent": {
//                         "Text": check response?.PayeeReference?.PartyInvolvement?.PartyRoleValidityPeriod?.FromDateTime?.DateTimeContent?.Text
//                     },
//                     "TimeZoneCode": {
//                         "Text": check response?.PayeeReference?.PartyInvolvement?.PartyRoleValidityPeriod?.FromDateTime?.TimeZoneCode?.Text
//                     },
//                     "DaylightSavingIndicator": {
//                         "Text": check response?.PayeeReference?.PartyInvolvement?.PartyRoleValidityPeriod?.FromDateTime?.DaylightSavingIndicator?.Text
//                     },
//                     "DateTimeType": check response?.PayeeReference?.PartyInvolvement?.PartyRoleValidityPeriod?.FromDateTime?.DateTimeType
//                 },
//                 "ToDateTime": {
//                     "DateTimeContent": {
//                         "Text": check response?.PayeeReference?.PartyInvolvement?.PartyRoleValidityPeriod?.ToDateTime?.DateTimeContent?.Text
//                     },
//                     "TimeZoneCode": {
//                         "Text": check response?.PayeeReference?.PartyInvolvement?.PartyRoleValidityPeriod?.ToDateTime?.TimeZoneCode?.Text
//                     },
//                     "DaylightSavingIndicator": {
//                         "Text": check response?.PayeeReference?.PartyInvolvement?.PartyRoleValidityPeriod?.ToDateTime?.DaylightSavingIndicator?.Text
//                     },
//                     "DateTimeType": check response?.PayeeReference?.PartyInvolvement?.PartyRoleValidityPeriod?.ToDateTime?.DateTimeType
//                 }
//             },
//             "PartyInvolvementType": check response?.PayeeReference?.PartyInvolvement?.PartyInvolvementType
//         }
//     },
//     "PayeeProductInstanceReference": {
//         "ProductAgreementType": check response?.PayeeProductInstanceReference?.ProductAgreementType
//     },
//     "PayeeBankReference": {
//         "PartyReference": {
//             "PartyName": {
//                 "Name": check response?.PayeeBankReference?.PartyReference?.PartyName?.Name
//             },
//             "PartyType": check response?.PayeeBankReference?.PartyReference?.PartyType,
//             "PartyDateTime": {
//                 "DateTimeContent": {
//                     "Text": check response?.PayeeBankReference?.PartyReference?.PartyDateTime?.DateTimeContent?.Text
//                 },
//                 "TimeZoneCode": {
//                     "Text": check response?.PayeeBankReference?.PartyReference?.PartyDateTime?.TimeZoneCode?.Text
//                 },
//                 "DaylightSavingIndicator": {
//                     "Text": check response?.PayeeBankReference?.PartyReference?.PartyDateTime?.DaylightSavingIndicator?.Text
//                 },
//                 "DateTimeType": check response?.PayeeBankReference?.PartyReference?.PartyDateTime?.DateTimeType
//             },
//             "PartyIdentification": {
//                 "PartyIdentificationType": check response?.PayeeBankReference?.PartyReference?.PartyIdentification?.PartyIdentificationType
//                 // "PartyIdentification": check response?.PayeeBankReference?.PartyReference?.PartyIdentification?.PartyIdentification
//             },
//             "PartyLegalStructureType": check response?.PayeeBankReference?.PartyReference?.PartyLegalStructureType
//         },
//         "PartyInvolvement": {
//             "PartyRoleType": {
//                 "Text": check response?.PayeeBankReference?.PartyInvolvement?.PartyRoleType?.Text
//             },
//             "PartyRoleName": {
//                 "Name": check response?.PayeeBankReference?.PartyInvolvement?.PartyRoleName?.Name
//             },
//             "PartyRoleValidityPeriod": {
//                 "FromDateTime": {
//                     "DateTimeContent": {
//                         "Text": check response?.PayeeBankReference?.PartyInvolvement?.PartyRoleValidityPeriod?.FromDateTime?.DateTimeContent?.Text
//                     },
//                     "TimeZoneCode": {
//                         "Text": check response?.PayeeBankReference?.PartyInvolvement?.PartyRoleValidityPeriod?.FromDateTime?.TimeZoneCode?.Text
//                     },
//                     "DaylightSavingIndicator": {
//                         "Text": check response?.PayeeBankReference?.PartyInvolvement?.PartyRoleValidityPeriod?.FromDateTime?.DaylightSavingIndicator?.Text
//                     },
//                     "DateTimeType": check response?.PayeeBankReference?.PartyInvolvement?.PartyRoleValidityPeriod?.FromDateTime?.DateTimeType
//                 },
//                 "ToDateTime": {
//                     "DateTimeContent": {
//                         "Text": check response?.PayeeBankReference?.PartyInvolvement?.PartyRoleValidityPeriod?.ToDateTime?.DateTimeContent?.Text
//                     },
//                     "TimeZoneCode": {
//                         "Text": check response?.PayeeBankReference?.PartyInvolvement?.PartyRoleValidityPeriod?.ToDateTime?.TimeZoneCode?.Text
//                     },
//                     "DaylightSavingIndicator": {
//                         "Text": check response?.PayeeBankReference?.PartyInvolvement?.PartyRoleValidityPeriod?.ToDateTime?.DaylightSavingIndicator?.Text
//                     },
//                     "DateTimeType": check response?.PayeeBankReference?.PartyInvolvement?.PartyRoleValidityPeriod?.ToDateTime?.DateTimeType
//                 }
//             },
//             "PartyInvolvementType": check response?.PayeeBankReference?.PartyInvolvement?.PartyInvolvementType
//         }
//     },
//     "SpecialInstructions": {
//         "InstructionDate": {
//             "InstructionDate": {
//                 "DateTimeContent": {
//                     "Text": check response?.SpecialInstructions?.InstructionDate?.InstructionDate?.DateTimeContent?.Text
//                 },
//                 "TimeZoneCode": {
//                     "Text": check response?.SpecialInstructions?.InstructionDate?.InstructionDate?.TimeZoneCode?.Text
//                 },
//                 "DaylightSavingIndicator": {
//                     "Text": check response?.SpecialInstructions?.InstructionDate?.InstructionDate?.DaylightSavingIndicator?.Text
//                 },
//                 "DateTimeType": check response?.SpecialInstructions?.InstructionDate?.InstructionDate?.DateTimeType
//             },
//             "InstructionDateType": check response?.SpecialInstructions?.InstructionDate?.InstructionDateType
//         },
//         "InstructionStatus": {
//             "InstructionStatusType": check response?.SpecialInstructions?.InstructionStatus?.InstructionStatusType,
//             "InstructionStatus": {
//                 "StatusReason": {
//                     "Text": check response?.SpecialInstructions?.InstructionStatus?.InstructionStatus?.StatusReason?.Text
//                 },
//                 "StatusDateTime": {
//                     "DateTimeContent": {
//                         "Text": check response?.SpecialInstructions?.InstructionStatus?.InstructionStatus?.StatusDateTime?.DateTimeContent?.Text
//                     },
//                     "TimeZoneCode": {
//                         "Text": check response?.SpecialInstructions?.InstructionStatus?.InstructionStatus?.StatusDateTime?.TimeZoneCode?.Text
//                     },
//                     "DaylightSavingIndicator": {
//                         "Text": check response?.SpecialInstructions?.InstructionStatus?.InstructionStatus?.StatusDateTime?.DaylightSavingIndicator?.Text
//                     },
//                     "DateTimeType": check response?.SpecialInstructions?.InstructionStatus?.InstructionStatus?.StatusDateTime?.DateTimeType
//                 },
//                 "StatusValidityPeriod": {
//                     "FromDateTime": {
//                         "DateTimeContent": {
//                             "Text": check response?.SpecialInstructions?.InstructionStatus?.InstructionStatus?.StatusValidityPeriod?.FromDateTime?.DateTimeContent?.Text
//                         },
//                         "TimeZoneCode": {
//                             "Text": check response?.SpecialInstructions?.InstructionStatus?.InstructionStatus?.StatusValidityPeriod?.FromDateTime?.TimeZoneCode?.Text
//                         },
//                         "DaylightSavingIndicator": {
//                             "Text": check response?.SpecialInstructions?.InstructionStatus?.InstructionStatus?.StatusValidityPeriod?.FromDateTime?.DaylightSavingIndicator?.Text
//                         },
//                         "DateTimeType": check response?.SpecialInstructions?.InstructionStatus?.InstructionStatus?.StatusValidityPeriod?.FromDateTime?.DateTimeType
//                     },
//                     "ToDateTime": {
//                         "DateTimeContent": {
//                             "Text": check response?.SpecialInstructions?.InstructionStatus?.InstructionStatus?.StatusValidityPeriod?.ToDateTime?.DateTimeContent?.Text
//                         },
//                         "TimeZoneCode": {
//                             "Text": check response?.SpecialInstructions?.InstructionStatus?.InstructionStatus?.StatusValidityPeriod?.ToDateTime?.TimeZoneCode?.Text
//                         },
//                         "DaylightSavingIndicator": {
//                             "Text": check response?.SpecialInstructions?.InstructionStatus?.InstructionStatus?.StatusValidityPeriod?.ToDateTime?.DaylightSavingIndicator?.Text
//                         },
//                         "DateTimeType": check response?.SpecialInstructions?.InstructionStatus?.InstructionStatus?.StatusValidityPeriod?.ToDateTime?.DateTimeType
//                     }
//                 },
//                 "StatusInvolvedParty": {
//                     "PartyReference": {
//                         "PartyName": {
//                             "Name": check response?.SpecialInstructions?.InstructionStatus?.InstructionStatus?.StatusInvolvedParty?.PartyReference?.PartyName?.Name
//                         },
//                         "PartyType": check response?.SpecialInstructions?.InstructionStatus?.InstructionStatus?.StatusInvolvedParty?.PartyReference?.PartyType,
//                         "PartyDateTime": {
//                             "DateTimeContent": {
//                                 "Text": check response?.SpecialInstructions?.InstructionStatus?.InstructionStatus?.StatusInvolvedParty?.PartyReference?.PartyDateTime?.DateTimeContent?.Text
//                             },
//                             "TimeZoneCode": {
//                                 "Text": check response?.SpecialInstructions?.InstructionStatus?.InstructionStatus?.StatusInvolvedParty?.PartyReference?.PartyDateTime?.TimeZoneCode?.Text
//                             },
//                             "DaylightSavingIndicator": {
//                                 "Text": check response?.SpecialInstructions?.InstructionStatus?.InstructionStatus?.StatusInvolvedParty?.PartyReference?.PartyDateTime?.DaylightSavingIndicator?.Text
//                             },
//                             "DateTimeType": check response?.SpecialInstructions?.InstructionStatus?.InstructionStatus?.StatusInvolvedParty?.PartyReference?.PartyDateTime?.DateTimeType
//                         },
//                         "PartyIdentification": {
//                             "PartyIdentificationType": check response?.SpecialInstructions?.InstructionStatus?.InstructionStatus?.StatusInvolvedParty?.PartyReference?.PartyIdentification?.PartyIdentificationType
//                             //   "PartyIdentification": check response?.SpecialInstructions?.InstructionStatus?.InstructionStatus?.StatusInvolvedParty?.PartyReference?.PartyIdentification?.PartyIdentification
//                         },
//                         "PartyLegalStructureType": check response?.SpecialInstructions?.InstructionStatus?.InstructionStatus?.StatusInvolvedParty?.PartyReference?.PartyLegalStructureType
//                     },
//                     "PartyInvolvement": {
//                         "PartyRoleType": {
//                             "Text": check response?.SpecialInstructions?.InstructionStatus?.InstructionStatus?.StatusInvolvedParty?.PartyInvolvement?.PartyRoleType?.Text
//                         },
//                         "PartyRoleName": {
//                             "Name": check response?.SpecialInstructions?.InstructionStatus?.InstructionStatus?.StatusInvolvedParty?.PartyInvolvement?.PartyRoleName?.Name
//                         },
//                         "PartyRoleValidityPeriod": {
//                             "FromDateTime": {
//                                 "DateTimeContent": {
//                                     "Text": check response?.SpecialInstructions?.InstructionStatus?.InstructionStatus?.StatusInvolvedParty?.PartyInvolvement?.PartyRoleValidityPeriod?.FromDateTime?.DateTimeContent?.Text
//                                 },
//                                 "TimeZoneCode": {
//                                     "Text": check response?.SpecialInstructions?.InstructionStatus?.InstructionStatus?.StatusInvolvedParty?.PartyInvolvement?.PartyRoleValidityPeriod?.FromDateTime?.TimeZoneCode?.Text
//                                 },
//                                 "DaylightSavingIndicator": {
//                                     "Text": check response?.SpecialInstructions?.InstructionStatus?.InstructionStatus?.StatusInvolvedParty?.PartyInvolvement?.PartyRoleValidityPeriod?.FromDateTime?.DaylightSavingIndicator?.Text
//                                 },
//                                 "DateTimeType": check response?.SpecialInstructions?.InstructionStatus?.InstructionStatus?.StatusInvolvedParty?.PartyInvolvement?.PartyRoleValidityPeriod?.FromDateTime?.DateTimeType
//                             },
//                             "ToDateTime": {
//                                 "DateTimeContent": {
//                                     "Text": check response?.SpecialInstructions?.InstructionStatus?.InstructionStatus?.StatusInvolvedParty?.PartyInvolvement?.PartyRoleValidityPeriod?.ToDateTime?.DateTimeContent?.Text
//                                 },
//                                 "TimeZoneCode": {
//                                     "Text": check response?.SpecialInstructions?.InstructionStatus?.InstructionStatus?.StatusInvolvedParty?.PartyInvolvement?.PartyRoleValidityPeriod?.ToDateTime?.TimeZoneCode?.Text
//                                 },
//                                 "DaylightSavingIndicator": {
//                                     "Text": check response?.SpecialInstructions?.InstructionStatus?.InstructionStatus?.StatusInvolvedParty?.PartyInvolvement?.PartyRoleValidityPeriod?.ToDateTime?.DaylightSavingIndicator?.Text
//                                 },
//                                 "DateTimeType": check response?.SpecialInstructions?.InstructionStatus?.InstructionStatus?.StatusInvolvedParty?.PartyInvolvement?.PartyRoleValidityPeriod?.ToDateTime?.DateTimeType
//                             }
//                         },
//                         "PartyInvolvementType": check response?.SpecialInstructions?.InstructionStatus?.InstructionStatus?.StatusInvolvedParty?.PartyInvolvement?.PartyInvolvementType
//                     }
//                 }
//             }
//         },
//         "InstructionIdentifier": {
//             "InstructionIdentification": {
//                 "IdentifierValue": {
//                     "Value": check response?.SpecialInstructions?.InstructionIdentifier?.InstructionIdentification?.IdentifierValue?.Value
//                 },
//                 "IdentifierIssuingAuthority": {
//                     "PartyReference": {
//                         "PartyName": {
//                             "Name": check response?.SpecialInstructions?.InstructionIdentifier?.InstructionIdentification?.IdentifierIssuingAuthority?.PartyReference?.PartyName?.Name
//                         },
//                         "PartyType": check response?.SpecialInstructions?.InstructionIdentifier?.InstructionIdentification?.IdentifierIssuingAuthority?.PartyReference?.PartyType,
//                         "PartyDateTime": {
//                             "DateTimeContent": {
//                                 "Text": check response?.SpecialInstructions?.InstructionIdentifier?.InstructionIdentification?.IdentifierIssuingAuthority?.PartyReference?.PartyDateTime?.DateTimeContent?.Text
//                             },
//                             "TimeZoneCode": {
//                                 "Text": check response?.SpecialInstructions?.InstructionIdentifier?.InstructionIdentification?.IdentifierIssuingAuthority?.PartyReference?.PartyDateTime?.TimeZoneCode?.Text
//                             },
//                             "DaylightSavingIndicator": {
//                                 "Text": check response?.SpecialInstructions?.InstructionIdentifier?.InstructionIdentification?.IdentifierIssuingAuthority?.PartyReference?.PartyDateTime?.DaylightSavingIndicator?.Text
//                             },
//                             "DateTimeType": check response?.SpecialInstructions?.InstructionIdentifier?.InstructionIdentification?.IdentifierIssuingAuthority?.PartyReference?.PartyDateTime?.DateTimeType
//                         },
//                         "PartyIdentification": {
//                             "PartyIdentificationType": check response?.SpecialInstructions?.InstructionIdentifier?.InstructionIdentification?.IdentifierIssuingAuthority?.PartyReference?.PartyIdentification?.PartyIdentificationType
//                             //   "PartyIdentification": check response?.SpecialInstructions?.InstructionIdentifier?.InstructionIdentification?.IdentifierIssuingAuthority?.PartyReference?.PartyIdentification?.PartyIdentification
//                         },
//                         "PartyLegalStructureType": check response?.SpecialInstructions?.InstructionIdentifier?.InstructionIdentification?.IdentifierIssuingAuthority?.PartyReference?.PartyLegalStructureType
//                     },
//                     "PartyInvolvement": {
//                         "PartyRoleType": {
//                             "Text": check response?.SpecialInstructions?.InstructionIdentifier?.InstructionIdentification?.IdentifierIssuingAuthority?.PartyInvolvement?.PartyRoleType?.Text
//                         },
//                         "PartyRoleName": {
//                             "Name": check response?.SpecialInstructions?.InstructionIdentifier?.InstructionIdentification?.IdentifierIssuingAuthority?.PartyInvolvement?.PartyRoleName?.Name
//                         },
//                         "PartyRoleValidityPeriod": {
//                             "FromDateTime": {
//                                 "DateTimeContent": {
//                                     "Text": check response?.SpecialInstructions?.InstructionIdentifier?.InstructionIdentification?.IdentifierIssuingAuthority?.PartyInvolvement?.PartyRoleValidityPeriod?.FromDateTime?.DateTimeContent?.Text
//                                 },
//                                 "TimeZoneCode": {
//                                     "Text": check response?.SpecialInstructions?.InstructionIdentifier?.InstructionIdentification?.IdentifierIssuingAuthority?.PartyInvolvement?.PartyRoleValidityPeriod?.FromDateTime?.TimeZoneCode?.Text
//                                 },
//                                 "DaylightSavingIndicator": {
//                                     "Text": check response?.SpecialInstructions?.InstructionIdentifier?.InstructionIdentification?.IdentifierIssuingAuthority?.PartyInvolvement?.PartyRoleValidityPeriod?.FromDateTime?.DaylightSavingIndicator?.Text
//                                 },
//                                 "DateTimeType": check response?.SpecialInstructions?.InstructionIdentifier?.InstructionIdentification?.IdentifierIssuingAuthority?.PartyInvolvement?.PartyRoleValidityPeriod?.FromDateTime?.DateTimeType
//                             },
//                             "ToDateTime": {
//                                 "DateTimeContent": {
//                                     "Text": check response?.SpecialInstructions?.InstructionIdentifier?.InstructionIdentification?.IdentifierIssuingAuthority?.PartyInvolvement?.PartyRoleValidityPeriod?.ToDateTime?.DateTimeContent?.Text
//                                 },
//                                 "TimeZoneCode": {
//                                     "Text": check response?.SpecialInstructions?.InstructionIdentifier?.InstructionIdentification?.IdentifierIssuingAuthority?.PartyInvolvement?.PartyRoleValidityPeriod?.ToDateTime?.TimeZoneCode?.Text
//                                 },
//                                 "DaylightSavingIndicator": {
//                                     "Text": check response?.SpecialInstructions?.InstructionIdentifier?.InstructionIdentification?.IdentifierIssuingAuthority?.PartyInvolvement?.PartyRoleValidityPeriod?.ToDateTime?.DaylightSavingIndicator?.Text
//                                 },
//                                 "DateTimeType": check response?.SpecialInstructions?.InstructionIdentifier?.InstructionIdentification?.IdentifierIssuingAuthority?.PartyInvolvement?.PartyRoleValidityPeriod?.ToDateTime?.DateTimeType
//                             }
//                         },
//                         "PartyInvolvementType": check response?.SpecialInstructions?.InstructionIdentifier?.InstructionIdentification?.IdentifierIssuingAuthority?.PartyInvolvement?.PartyInvolvementType
//                     }
//                 },
//                 "IdentifierStartDate": {
//                     "DateTimeContent": {
//                         "Text": check response?.SpecialInstructions?.InstructionIdentifier?.InstructionIdentification?.IdentifierStartDate?.DateTimeContent?.Text
//                     },
//                     "TimeZoneCode": {
//                         "Text": check response?.SpecialInstructions?.InstructionIdentifier?.InstructionIdentification?.IdentifierStartDate?.TimeZoneCode?.Text
//                     },
//                     "DaylightSavingIndicator": {
//                         "Text": check response?.SpecialInstructions?.InstructionIdentifier?.InstructionIdentification?.IdentifierStartDate?.DaylightSavingIndicator?.Text
//                     },
//                     "DateTimeType": check response?.SpecialInstructions?.InstructionIdentifier?.InstructionIdentification?.IdentifierStartDate?.DateTimeType
//                 },
//                 "IdentifierEndDate": {
//                     "DateTimeContent": {
//                         "Text": check response?.SpecialInstructions?.InstructionIdentifier?.InstructionIdentification?.IdentifierEndDate?.DateTimeContent?.Text
//                     },
//                     "TimeZoneCode": {
//                         "Text": check response?.SpecialInstructions?.InstructionIdentifier?.InstructionIdentification?.IdentifierEndDate?.TimeZoneCode?.Text
//                     },
//                     "DaylightSavingIndicator": {
//                         "Text": check response?.SpecialInstructions?.InstructionIdentifier?.InstructionIdentification?.IdentifierEndDate?.DaylightSavingIndicator?.Text
//                     },
//                     "DateTimeType": check response?.SpecialInstructions?.InstructionIdentifier?.InstructionIdentification?.IdentifierEndDate?.DateTimeType
//                 }
//             },
//             "InstructionIdentificationType": check response?.SpecialInstructions?.InstructionIdentifier?.InstructionIdentificationType
//         },
//         "InstructionType": check response?.SpecialInstructions?.InstructionType,
//         "InstructionResult": {
//             "Text": check response?.SpecialInstructions?.InstructionResult?.Text
//         },
//         "InstructionDescription": {
//             "Text": check response?.SpecialInstructions?.InstructionDescription?.Text
//         },
//         "InstructionLog": {
//             "LogType": {
//                 "Text": check response?.SpecialInstructions?.InstructionLog?.LogType?.Text
//             },
//             "LogPeriod": {
//                 "FromDateTime": {
//                     "DateTimeContent": {
//                         "Text": check response?.SpecialInstructions?.InstructionLog?.LogPeriod?.FromDateTime?.DateTimeContent?.Text
//                     },
//                     "TimeZoneCode": {
//                         "Text": check response?.SpecialInstructions?.InstructionLog?.LogPeriod?.FromDateTime?.TimeZoneCode?.Text
//                     },
//                     "DaylightSavingIndicator": {
//                         "Text": check response?.SpecialInstructions?.InstructionLog?.LogPeriod?.FromDateTime?.DaylightSavingIndicator?.Text
//                     },
//                     "DateTimeType": check response?.SpecialInstructions?.InstructionLog?.LogPeriod?.FromDateTime?.DateTimeType
//                 },
//                 "ToDateTime": {
//                     "DateTimeContent": {
//                         "Text": check response?.SpecialInstructions?.InstructionLog?.LogPeriod?.ToDateTime?.DateTimeContent?.Text
//                     },
//                     "TimeZoneCode": {
//                         "Text": check response?.SpecialInstructions?.InstructionLog?.LogPeriod?.ToDateTime?.TimeZoneCode?.Text
//                     },
//                     "DaylightSavingIndicator": {
//                         "Text": check response?.SpecialInstructions?.InstructionLog?.LogPeriod?.ToDateTime?.DaylightSavingIndicator?.Text
//                     },
//                     "DateTimeType": check response?.SpecialInstructions?.InstructionLog?.LogPeriod?.ToDateTime?.DateTimeType
//                 }
//             },
//             "LogDate": {
//                 "DateTimeContent": {
//                     "Text": check response?.SpecialInstructions?.InstructionLog?.LogDate?.DateTimeContent?.Text
//                 },
//                 "TimeZoneCode": {
//                     "Text": check response?.SpecialInstructions?.InstructionLog?.LogDate?.TimeZoneCode?.Text
//                 },
//                 "DaylightSavingIndicator": {
//                     "Text": check response?.SpecialInstructions?.InstructionLog?.LogDate?.DaylightSavingIndicator?.Text
//                 },
//                 "DateTimeType": check response?.SpecialInstructions?.InstructionLog?.LogDate?.DateTimeType
//             },
//             "LogIdentification": {
//                 "IdentifierValue": {
//                     "Value": check response?.SpecialInstructions?.InstructionLog?.LogIdentification?.IdentifierValue?.Value
//                 },
//                 "IdentifierIssuingAuthority": {
//                     "PartyReference": {
//                         "PartyName": {
//                             "Name": check response?.SpecialInstructions?.InstructionLog?.LogIdentification?.IdentifierIssuingAuthority?.PartyReference?.PartyName?.Name
//                         },
//                         "PartyType": check response?.SpecialInstructions?.InstructionLog?.LogIdentification?.IdentifierIssuingAuthority?.PartyReference?.PartyType,
//                         "PartyDateTime": {
//                             "DateTimeContent": {
//                                 "Text": check response?.SpecialInstructions?.InstructionLog?.LogIdentification?.IdentifierIssuingAuthority?.PartyReference?.PartyDateTime?.DateTimeContent?.Text
//                             },
//                             "TimeZoneCode": {
//                                 "Text": check response?.SpecialInstructions?.InstructionLog?.LogIdentification?.IdentifierIssuingAuthority?.PartyReference?.PartyDateTime?.TimeZoneCode?.Text
//                             },
//                             "DaylightSavingIndicator": {
//                                 "Text": check response?.SpecialInstructions?.InstructionLog?.LogIdentification?.IdentifierIssuingAuthority?.PartyReference?.PartyDateTime?.DaylightSavingIndicator?.Text
//                             },
//                             "DateTimeType": check response?.SpecialInstructions?.InstructionLog?.LogIdentification?.IdentifierIssuingAuthority?.PartyReference?.PartyDateTime?.DateTimeType
//                         },
//                         "PartyIdentification": {
//                             "PartyIdentificationType": check response?.SpecialInstructions?.InstructionLog?.LogIdentification?.IdentifierIssuingAuthority?.PartyReference?.PartyIdentification?.PartyIdentificationType
//                             //   "PartyIdentification": check response?.SpecialInstructions?.InstructionLog?.LogIdentification?.IdentifierIssuingAuthority?.PartyReference?.PartyIdentification?.PartyIdentification
//                         },
//                         "PartyLegalStructureType": check response?.SpecialInstructions?.InstructionLog?.LogIdentification?.IdentifierIssuingAuthority?.PartyReference?.PartyLegalStructureType
//                     },
//                     "PartyInvolvement": {
//                         "PartyRoleType": {
//                             "Text": check response?.SpecialInstructions?.InstructionLog?.LogIdentification?.IdentifierIssuingAuthority?.PartyInvolvement?.PartyRoleType?.Text
//                         },
//                         "PartyRoleName": {
//                             "Name": check response?.SpecialInstructions?.InstructionLog?.LogIdentification?.IdentifierIssuingAuthority?.PartyInvolvement?.PartyRoleName?.Name
//                         },
//                         "PartyRoleValidityPeriod": {
//                             "FromDateTime": {
//                                 "DateTimeContent": {
//                                     "Text": check response?.SpecialInstructions?.InstructionLog?.LogIdentification?.IdentifierIssuingAuthority?.PartyInvolvement?.PartyRoleValidityPeriod?.FromDateTime?.DateTimeContent?.Text
//                                 },
//                                 "TimeZoneCode": {
//                                     "Text": check response?.SpecialInstructions?.InstructionLog?.LogIdentification?.IdentifierIssuingAuthority?.PartyInvolvement?.PartyRoleValidityPeriod?.FromDateTime?.TimeZoneCode?.Text
//                                 },
//                                 "DaylightSavingIndicator": {
//                                     "Text": check response?.SpecialInstructions?.InstructionLog?.LogIdentification?.IdentifierIssuingAuthority?.PartyInvolvement?.PartyRoleValidityPeriod?.FromDateTime?.DaylightSavingIndicator?.Text
//                                 },
//                                 "DateTimeType": check response?.SpecialInstructions?.InstructionLog?.LogIdentification?.IdentifierIssuingAuthority?.PartyInvolvement?.PartyRoleValidityPeriod?.FromDateTime?.DateTimeType
//                             },
//                             "ToDateTime": {
//                                 "DateTimeContent": {
//                                     "Text": check response?.SpecialInstructions?.InstructionLog?.LogIdentification?.IdentifierIssuingAuthority?.PartyInvolvement?.PartyRoleValidityPeriod?.ToDateTime?.DateTimeContent?.Text
//                                 },
//                                 "TimeZoneCode": {
//                                     "Text": check response?.SpecialInstructions?.InstructionLog?.LogIdentification?.IdentifierIssuingAuthority?.PartyInvolvement?.PartyRoleValidityPeriod?.ToDateTime?.TimeZoneCode?.Text
//                                 },
//                                 "DaylightSavingIndicator": {
//                                     "Text": check response?.SpecialInstructions?.InstructionLog?.LogIdentification?.IdentifierIssuingAuthority?.PartyInvolvement?.PartyRoleValidityPeriod?.ToDateTime?.DaylightSavingIndicator?.Text
//                                 },
//                                 "DateTimeType": check response?.SpecialInstructions?.InstructionLog?.LogIdentification?.IdentifierIssuingAuthority?.PartyInvolvement?.PartyRoleValidityPeriod?.ToDateTime?.DateTimeType
//                             }
//                         },
//                         "PartyInvolvementType": check response?.SpecialInstructions?.InstructionLog?.LogIdentification?.IdentifierIssuingAuthority?.PartyInvolvement?.PartyInvolvementType
//                     }
//                 },
//                 "IdentifierStartDate": {
//                     "DateTimeContent": {
//                         "Text": check response?.SpecialInstructions?.InstructionLog?.LogIdentification?.IdentifierStartDate?.DateTimeContent?.Text
//                     },
//                     "TimeZoneCode": {
//                         "Text": check response?.SpecialInstructions?.InstructionLog?.LogIdentification?.IdentifierStartDate?.TimeZoneCode?.Text
//                     },
//                     "DaylightSavingIndicator": {
//                         "Text": check response?.SpecialInstructions?.InstructionLog?.LogIdentification?.IdentifierStartDate?.DaylightSavingIndicator?.Text
//                     },
//                     "DateTimeType": check response?.SpecialInstructions?.InstructionLog?.LogIdentification?.IdentifierStartDate?.DateTimeType
//                 },
//                 "IdentifierEndDate": {
//                     "DateTimeContent": {
//                         "Text": check response?.SpecialInstructions?.InstructionLog?.LogIdentification?.IdentifierEndDate?.DateTimeContent?.Text
//                     },
//                     "TimeZoneCode": {
//                         "Text": check response?.SpecialInstructions?.InstructionLog?.LogIdentification?.IdentifierEndDate?.TimeZoneCode?.Text
//                     },
//                     "DaylightSavingIndicator": {
//                         "Text": check response?.SpecialInstructions?.InstructionLog?.LogIdentification?.IdentifierEndDate?.DaylightSavingIndicator?.Text
//                     },
//                     "DateTimeType": check response?.SpecialInstructions?.InstructionLog?.LogIdentification?.IdentifierEndDate?.DateTimeType
//                 }
//             }
//         },
//         "InstructionPurpose": {
//             "Text": check response?.SpecialInstructions?.InstructionPurpose?.Text
//         }
//     },
//     "Amount": {
//         "AmountValue": {
//             "Value": check response?.Amount?.AmountValue?.Value
//         },
//         "AmountCurrency": {
//             "Currencycode": check response?.Amount?.AmountCurrency?.Currencycode
//         },
//         "DecimalPointPosition": {
//             "Text": check response?.Amount?.DecimalPointPosition?.Text
//         },
//         "AmountType": check response?.Amount?.AmountType
//     },
//     "Currency": {
//         "Currencycode": check response?.Currency?.Currencycode
//     },
//     "DateType": check response?.DateType,
//     "Date": {
//         "TransactionDate": {
//             "DateTimeContent": {
//                 "Text": check response?.Date?.TransactionDate?.DateTimeContent?.Text
//             },
//             "TimeZoneCode": {
//                 "Text": check response?.Date?.TransactionDate?.TimeZoneCode?.Text
//             },
//             "DaylightSavingIndicator": {
//                 "Text": check response?.Date?.TransactionDate?.DaylightSavingIndicator?.Text
//             },
//             "DateTimeType": check response?.Date?.TransactionDate?.DateTimeType
//         },
//         "TransactionDateType": check response?.Date?.TransactionDateType
//     },
//     "CorrespondentBankRoleType": check response?.CorrespondentBankRoleType,
//     "TransactionStatus": check response?.TransactionStatus
// };
