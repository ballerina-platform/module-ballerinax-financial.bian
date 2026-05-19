// Copyright (c) 2026, WSO2 LLC. (https://www.wso2.com).
//
// WSO2 LLC. licenses this file to you under the Apache License,
// Version 2.0 (the "License"); you may not use this file except
// in compliance with the License.
// You may obtain a copy of the License at
//
//    http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing,
// software distributed under the License is distributed on an
// "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
// KIND, either express or implied. See the License for the
// specific language governing permissions and limitations
// under the License.

import ballerinax/financial.bian.attribute.groups.products as products;

// Data mapper function to transform JSON response to PaymentInitiationTransaction record
isolated function transformPaymentInitiationInitiateResponse(json response) returns products:PaymentInitiationTransaction|error => {
    PaymentTransactionType: check response?.PaymentTransactionType,
    RecurringPaymentRecord: {
        ServiceType: check response?.RecurringPaymentRecord?.ServiceType,
        PaymentDate: {
            PaymentDate: {
                DateTimeContent: {
                    Text: check response?.RecurringPaymentRecord?.PaymentDate?.PaymentDate?.DateTimeContent?.Text
                },
                TimeZoneCode: {
                    Text: check response?.RecurringPaymentRecord?.PaymentDate?.PaymentDate?.TimeZoneCode?.Text
                },
                DaylightSavingIndicator: {
                    Text: check response?.RecurringPaymentRecord?.PaymentDate?.PaymentDate?.DaylightSavingIndicator?.Text
                },
                DateTimeType: check response?.RecurringPaymentRecord?.PaymentDate?.PaymentDate?.DateTimeType
            },
            PaymentDateType: check response?.RecurringPaymentRecord?.PaymentDate?.PaymentDateType
        },
        PaymentPeriod: {
            FromDateTime: {
                DateTimeContent: {
                    Text: check response?.RecurringPaymentRecord?.PaymentPeriod?.FromDateTime?.DateTimeContent?.Text
                },
                TimeZoneCode: {
                    Text: check response?.RecurringPaymentRecord?.PaymentPeriod?.FromDateTime?.TimeZoneCode?.Text
                },
                DaylightSavingIndicator: {
                    Text: check response?.RecurringPaymentRecord?.PaymentPeriod?.FromDateTime?.DaylightSavingIndicator?.Text
                },
                DateTimeType: check response?.RecurringPaymentRecord?.PaymentPeriod?.FromDateTime?.DateTimeType
            },
            ToDateTime: {
                DateTimeContent: {
                    Text: check response?.RecurringPaymentRecord?.PaymentPeriod?.ToDateTime?.DateTimeContent?.Text
                },
                TimeZoneCode: {
                    Text: check response?.RecurringPaymentRecord?.PaymentPeriod?.ToDateTime?.TimeZoneCode?.Text
                },
                DaylightSavingIndicator: {
                    Text: check response?.RecurringPaymentRecord?.PaymentPeriod?.ToDateTime?.DaylightSavingIndicator?.Text
                },
                DateTimeType: check response?.RecurringPaymentRecord?.PaymentPeriod?.ToDateTime?.DateTimeType
            }
        },
        PaymentPurpose: check response?.RecurringPaymentRecord?.PaymentPurpose,
        PaymentAmount: {
            AmountValue: {
                Value: check response?.RecurringPaymentRecord?.PaymentAmount?.AmountValue?.Value
            },
            AmountCurrency: {
                Currencycode: check response?.RecurringPaymentRecord?.PaymentAmount?.AmountCurrency?.Currencycode
            },
            DecimalPointPosition: {
                Text: check response?.RecurringPaymentRecord?.PaymentAmount?.DecimalPointPosition?.Text
            },
            AmountType: check response?.RecurringPaymentRecord?.PaymentAmount?.AmountType
        },
        PaymentMethod: check response?.RecurringPaymentRecord?.PaymentMethod,
        PaymentType: check response?.RecurringPaymentRecord?.PaymentType,
        PaymentTime: check response?.RecurringPaymentRecord?.PaymentTime,
        RemittanceDeliveryMethod: check response?.RecurringPaymentRecord?.RemittanceDeliveryMethod,
        RemittanceLocation: {
            ContactPointType: check response?.RecurringPaymentRecord?.RemittanceLocation?.ContactPointType
        }
    },
    RecurringPaymentCustomerReference: {
        PartyReference: {
            PartyName: {
                Name: check response?.RecurringPaymentCustomerReference?.PartyReference?.PartyName?.Name
            },
            PartyType: check response?.RecurringPaymentCustomerReference?.PartyReference?.PartyType,
            PartyDateTime: {
                DateTimeContent: {
                    Text: check response?.RecurringPaymentCustomerReference?.PartyReference?.PartyDateTime?.DateTimeContent?.Text
                },
                TimeZoneCode: {
                    Text: check response?.RecurringPaymentCustomerReference?.PartyReference?.PartyDateTime?.TimeZoneCode?.Text
                },
                DaylightSavingIndicator: {
                    Text: check response?.RecurringPaymentCustomerReference?.PartyReference?.PartyDateTime?.DaylightSavingIndicator?.Text
                },
                DateTimeType: check response?.RecurringPaymentCustomerReference?.PartyReference?.PartyDateTime?.DateTimeType
            },
            PartyIdentification: {
                PartyIdentificationType: check response?.RecurringPaymentCustomerReference?.PartyReference?.PartyIdentification?.PartyIdentificationType
            },
            PartyLegalStructureType: check response?.RecurringPaymentCustomerReference?.PartyReference?.PartyLegalStructureType
        },
        PartyInvolvement: {
            PartyRoleType: {
                Text: check response?.RecurringPaymentCustomerReference?.PartyInvolvement?.PartyRoleType?.Text
            },
            PartyRoleName: {
                Name: check response?.RecurringPaymentCustomerReference?.PartyInvolvement?.PartyRoleName?.Name
            },
            PartyRoleValidityPeriod: {
                FromDateTime: {
                    DateTimeContent: {
                        Text: check response?.RecurringPaymentCustomerReference?.PartyInvolvement?.PartyRoleValidityPeriod?.FromDateTime?.DateTimeContent?.Text
                    },
                    TimeZoneCode: {
                        Text: check response?.RecurringPaymentCustomerReference?.PartyInvolvement?.PartyRoleValidityPeriod?.FromDateTime?.TimeZoneCode?.Text
                    },
                    DaylightSavingIndicator: {
                        Text: check response?.RecurringPaymentCustomerReference?.PartyInvolvement?.PartyRoleValidityPeriod?.FromDateTime?.DaylightSavingIndicator?.Text
                    },
                    DateTimeType: check response?.RecurringPaymentCustomerReference?.PartyInvolvement?.PartyRoleValidityPeriod?.FromDateTime?.DateTimeType
                },
                ToDateTime: {
                    DateTimeContent: {
                        Text: check response?.RecurringPaymentCustomerReference?.PartyInvolvement?.PartyRoleValidityPeriod?.ToDateTime?.DateTimeContent?.Text
                    },
                    TimeZoneCode: {
                        Text: check response?.RecurringPaymentCustomerReference?.PartyInvolvement?.PartyRoleValidityPeriod?.ToDateTime?.TimeZoneCode?.Text
                    },
                    DaylightSavingIndicator: {
                        Text: check response?.RecurringPaymentCustomerReference?.PartyInvolvement?.PartyRoleValidityPeriod?.ToDateTime?.DaylightSavingIndicator?.Text
                    },
                    DateTimeType: check response?.RecurringPaymentCustomerReference?.PartyInvolvement?.PartyRoleValidityPeriod?.ToDateTime?.DateTimeType
                }
            },
            PartyInvolvementType: check response?.RecurringPaymentCustomerReference?.PartyInvolvement?.PartyInvolvementType
        }
    },
    RecurringPaymentReference: {
        ServiceType: check response?.RecurringPaymentReference?.ServiceType,
        PaymentDate: {
            PaymentDate: {
                DateTimeContent: {
                    Text: check response?.RecurringPaymentReference?.PaymentDate?.PaymentDate?.DateTimeContent?.Text
                },
                TimeZoneCode: {
                    Text: check response?.RecurringPaymentReference?.PaymentDate?.PaymentDate?.TimeZoneCode?.Text
                },
                DaylightSavingIndicator: {
                    Text: check response?.RecurringPaymentReference?.PaymentDate?.PaymentDate?.DaylightSavingIndicator?.Text
                },
                DateTimeType: check response?.RecurringPaymentReference?.PaymentDate?.PaymentDate?.DateTimeType
            },
            PaymentDateType: check response?.RecurringPaymentReference?.PaymentDate?.PaymentDateType
        },
        PaymentPeriod: {
            FromDateTime: {
                DateTimeContent: {
                    Text: check response?.RecurringPaymentReference?.PaymentPeriod?.FromDateTime?.DateTimeContent?.Text
                },
                TimeZoneCode: {
                    Text: check response?.RecurringPaymentReference?.PaymentPeriod?.FromDateTime?.TimeZoneCode?.Text
                },
                DaylightSavingIndicator: {
                    Text: check response?.RecurringPaymentReference?.PaymentPeriod?.FromDateTime?.DaylightSavingIndicator?.Text
                },
                DateTimeType: check response?.RecurringPaymentReference?.PaymentPeriod?.FromDateTime?.DateTimeType
            },
            ToDateTime: {
                DateTimeContent: {
                    Text: check response?.RecurringPaymentReference?.PaymentPeriod?.ToDateTime?.DateTimeContent?.Text
                },
                TimeZoneCode: {
                    Text: check response?.RecurringPaymentReference?.PaymentPeriod?.ToDateTime?.TimeZoneCode?.Text
                },
                DaylightSavingIndicator: {
                    Text: check response?.RecurringPaymentReference?.PaymentPeriod?.ToDateTime?.DaylightSavingIndicator?.Text
                },
                DateTimeType: check response?.RecurringPaymentReference?.PaymentPeriod?.ToDateTime?.DateTimeType
            }
        },
        PaymentPurpose: check response?.RecurringPaymentReference?.PaymentPurpose,
        PaymentAmount: {
            AmountValue: {
                Value: check response?.RecurringPaymentReference?.PaymentAmount?.AmountValue?.Value
            },
            AmountCurrency: {
                Currencycode: check response?.RecurringPaymentReference?.PaymentAmount?.AmountCurrency?.Currencycode
            },
            DecimalPointPosition: {
                Text: check response?.RecurringPaymentReference?.PaymentAmount?.DecimalPointPosition?.Text
            },
            AmountType: check response?.RecurringPaymentReference?.PaymentAmount?.AmountType
        },
        PaymentMethod: check response?.RecurringPaymentReference?.PaymentMethod,
        PaymentType: check response?.RecurringPaymentReference?.PaymentType,
        PaymentTime: check response?.RecurringPaymentReference?.PaymentTime,
        RemittanceDeliveryMethod: check response?.RecurringPaymentReference?.RemittanceDeliveryMethod,
        RemittanceLocation: {
            ContactPointType: check response?.RecurringPaymentReference?.RemittanceLocation?.ContactPointType
        }
    },
    CustomerReference: {
        PartyReference: {
            PartyName: {
                Name: check response?.CustomerReference?.PartyReference?.PartyName?.Name
            },
            PartyType: check response?.CustomerReference?.PartyReference?.PartyType,
            PartyDateTime: {
                DateTimeContent: {
                    Text: check response?.CustomerReference?.PartyReference?.PartyDateTime?.DateTimeContent?.Text
                },
                TimeZoneCode: {
                    Text: check response?.CustomerReference?.PartyReference?.PartyDateTime?.TimeZoneCode?.Text
                },
                DaylightSavingIndicator: {
                    Text: check response?.CustomerReference?.PartyReference?.PartyDateTime?.DaylightSavingIndicator?.Text
                },
                DateTimeType: check response?.CustomerReference?.PartyReference?.PartyDateTime?.DateTimeType
            },
            PartyIdentification: {
                PartyIdentificationType: check response?.CustomerReference?.PartyReference?.PartyIdentification?.PartyIdentificationType
            },
            PartyLegalStructureType: check response?.CustomerReference?.PartyReference?.PartyLegalStructureType
        },
        PartyInvolvement: {
            PartyRoleType: {
                Text: check response?.CustomerReference?.PartyInvolvement?.PartyRoleType?.Text
            },
            PartyRoleName: {
                Name: check response?.CustomerReference?.PartyInvolvement?.PartyRoleName?.Name
            },
            PartyRoleValidityPeriod: {
                FromDateTime: {
                    DateTimeContent: {
                        Text: check response?.CustomerReference?.PartyInvolvement?.PartyRoleValidityPeriod?.FromDateTime?.DateTimeContent?.Text
                    },
                    TimeZoneCode: {
                        Text: check response?.CustomerReference?.PartyInvolvement?.PartyRoleValidityPeriod?.FromDateTime?.TimeZoneCode?.Text
                    },
                    DaylightSavingIndicator: {
                        Text: check response?.CustomerReference?.PartyInvolvement?.PartyRoleValidityPeriod?.FromDateTime?.DaylightSavingIndicator?.Text
                    },
                    DateTimeType: check response?.CustomerReference?.PartyInvolvement?.PartyRoleValidityPeriod?.FromDateTime?.DateTimeType
                },
                ToDateTime: {
                    DateTimeContent: {
                        Text: check response?.CustomerReference?.PartyInvolvement?.PartyRoleValidityPeriod?.ToDateTime?.DateTimeContent?.Text
                    },
                    TimeZoneCode: {
                        Text: check response?.CustomerReference?.PartyInvolvement?.PartyRoleValidityPeriod?.ToDateTime?.TimeZoneCode?.Text
                    },
                    DaylightSavingIndicator: {
                        Text: check response?.CustomerReference?.PartyInvolvement?.PartyRoleValidityPeriod?.ToDateTime?.DaylightSavingIndicator?.Text
                    },
                    DateTimeType: check response?.CustomerReference?.PartyInvolvement?.PartyRoleValidityPeriod?.ToDateTime?.DateTimeType
                }
            },
            PartyInvolvementType: check response?.CustomerReference?.PartyInvolvement?.PartyInvolvementType
        }
    },
    PaymentTransaction: {
        PaymentTransactionType: check response?.PaymentTransaction?.PaymentTransactionType,
        PaymentTransactionAmount: {
            AmountValue: {
                Value: check response?.PaymentTransaction?.PaymentTransactionAmount?.AmountValue?.Value
            },
            AmountCurrency: {
                Currencycode: check response?.PaymentTransaction?.PaymentTransactionAmount?.AmountCurrency?.Currencycode
            },
            DecimalPointPosition: {
                Text: check response?.PaymentTransaction?.PaymentTransactionAmount?.DecimalPointPosition?.Text
            },
            AmountType: check response?.PaymentTransaction?.PaymentTransactionAmount?.AmountType
        },
        PaymentTransactionIdentification: {
            IdentifierValue: {
                Value: check response?.PaymentTransaction?.PaymentTransactionIdentification?.IdentifierValue?.Value
            },
            IdentifierIssuingAuthority: {
                PartyReference: {
                    PartyName: {
                        Name: check response?.PaymentTransaction?.PaymentTransactionIdentification?.IdentifierIssuingAuthority?.PartyReference?.PartyName?.Name
                    },
                    PartyType: check response?.PaymentTransaction?.PaymentTransactionIdentification?.IdentifierIssuingAuthority?.PartyReference?.PartyType,
                    PartyDateTime: {
                        DateTimeContent: {
                            Text: check response?.PaymentTransaction?.PaymentTransactionIdentification?.IdentifierIssuingAuthority?.PartyReference?.PartyDateTime?.DateTimeContent?.Text
                        },
                        TimeZoneCode: {
                            Text: check response?.PaymentTransaction?.PaymentTransactionIdentification?.IdentifierIssuingAuthority?.PartyReference?.PartyDateTime?.TimeZoneCode?.Text
                        },
                        DaylightSavingIndicator: {
                            Text: check response?.PaymentTransaction?.PaymentTransactionIdentification?.IdentifierIssuingAuthority?.PartyReference?.PartyDateTime?.DaylightSavingIndicator?.Text
                        },
                        DateTimeType: check response?.PaymentTransaction?.PaymentTransactionIdentification?.IdentifierIssuingAuthority?.PartyReference?.PartyDateTime?.DateTimeType
                    },
                    PartyIdentification: {
                        PartyIdentificationType: check response?.PaymentTransaction?.PaymentTransactionIdentification?.IdentifierIssuingAuthority?.PartyReference?.PartyIdentification?.PartyIdentificationType
                    },
                    PartyLegalStructureType: check response?.PaymentTransaction?.PaymentTransactionIdentification?.IdentifierIssuingAuthority?.PartyReference?.PartyLegalStructureType
                },
                PartyInvolvement: {
                    PartyRoleType: {
                        Text: check response?.PaymentTransaction?.PaymentTransactionIdentification?.IdentifierIssuingAuthority?.PartyInvolvement?.PartyRoleType?.Text
                    },
                    PartyRoleName: {
                        Name: check response?.PaymentTransaction?.PaymentTransactionIdentification?.IdentifierIssuingAuthority?.PartyInvolvement?.PartyRoleName?.Name
                    },
                    PartyRoleValidityPeriod: {
                        FromDateTime: {
                            DateTimeContent: {
                                Text: check response?.PaymentTransaction?.PaymentTransactionIdentification?.IdentifierIssuingAuthority?.PartyInvolvement?.PartyRoleValidityPeriod?.FromDateTime?.DateTimeContent?.Text
                            },
                            TimeZoneCode: {
                                Text: check response?.PaymentTransaction?.PaymentTransactionIdentification?.IdentifierIssuingAuthority?.PartyInvolvement?.PartyRoleValidityPeriod?.FromDateTime?.TimeZoneCode?.Text
                            },
                            DaylightSavingIndicator: {
                                Text: check response?.PaymentTransaction?.PaymentTransactionIdentification?.IdentifierIssuingAuthority?.PartyInvolvement?.PartyRoleValidityPeriod?.FromDateTime?.DaylightSavingIndicator?.Text
                            },
                            DateTimeType: check response?.PaymentTransaction?.PaymentTransactionIdentification?.IdentifierIssuingAuthority?.PartyInvolvement?.PartyRoleValidityPeriod?.FromDateTime?.DateTimeType
                        },
                        ToDateTime: {
                            DateTimeContent: {
                                Text: check response?.PaymentTransaction?.PaymentTransactionIdentification?.IdentifierIssuingAuthority?.PartyInvolvement?.PartyRoleValidityPeriod?.ToDateTime?.DateTimeContent?.Text
                            },
                            TimeZoneCode: {
                                Text: check response?.PaymentTransaction?.PaymentTransactionIdentification?.IdentifierIssuingAuthority?.PartyInvolvement?.PartyRoleValidityPeriod?.ToDateTime?.TimeZoneCode?.Text
                            },
                            DaylightSavingIndicator: {
                                Text: check response?.PaymentTransaction?.PaymentTransactionIdentification?.IdentifierIssuingAuthority?.PartyInvolvement?.PartyRoleValidityPeriod?.ToDateTime?.DaylightSavingIndicator?.Text
                            },
                            DateTimeType: check response?.PaymentTransaction?.PaymentTransactionIdentification?.IdentifierIssuingAuthority?.PartyInvolvement?.PartyRoleValidityPeriod?.ToDateTime?.DateTimeType
                        }
                    },
                    PartyInvolvementType: check response?.PaymentTransaction?.PaymentTransactionIdentification?.IdentifierIssuingAuthority?.PartyInvolvement?.PartyInvolvementType
                }
            },
            IdentifierStartDate: {
                DateTimeContent: {
                    Text: check response?.PaymentTransaction?.PaymentTransactionIdentification?.IdentifierStartDate?.DateTimeContent?.Text
                },
                TimeZoneCode: {
                    Text: check response?.PaymentTransaction?.PaymentTransactionIdentification?.IdentifierStartDate?.TimeZoneCode?.Text
                },
                DaylightSavingIndicator: {
                    Text: check response?.PaymentTransaction?.PaymentTransactionIdentification?.IdentifierStartDate?.DaylightSavingIndicator?.Text
                },
                DateTimeType: check response?.PaymentTransaction?.PaymentTransactionIdentification?.IdentifierStartDate?.DateTimeType
            },
            IdentifierEndDate: {
                DateTimeContent: {
                    Text: check response?.PaymentTransaction?.PaymentTransactionIdentification?.IdentifierEndDate?.DateTimeContent?.Text
                },
                TimeZoneCode: {
                    Text: check response?.PaymentTransaction?.PaymentTransactionIdentification?.IdentifierEndDate?.TimeZoneCode?.Text
                },
                DaylightSavingIndicator: {
                    Text: check response?.PaymentTransaction?.PaymentTransactionIdentification?.IdentifierEndDate?.DaylightSavingIndicator?.Text
                },
                DateTimeType: check response?.PaymentTransaction?.PaymentTransactionIdentification?.IdentifierEndDate?.DateTimeType
            }
        },
        PaymentTransactionUsedMechanism: {
            Text: check response?.PaymentTransaction?.PaymentTransactionUsedMechanism?.Text
        },
        PaymentTransactionDatetime: {
            PaymentDate: {
                DateTimeContent: {
                    Text: check response?.PaymentTransaction?.PaymentTransactionDatetime?.PaymentDate?.DateTimeContent?.Text
                },
                TimeZoneCode: {
                    Text: check response?.PaymentTransaction?.PaymentTransactionDatetime?.PaymentDate?.TimeZoneCode?.Text
                },
                DaylightSavingIndicator: {
                    Text: check response?.PaymentTransaction?.PaymentTransactionDatetime?.PaymentDate?.DaylightSavingIndicator?.Text
                },
                DateTimeType: check response?.PaymentTransaction?.PaymentTransactionDatetime?.PaymentDate?.DateTimeType
            },
            PaymentDateType: check response?.PaymentTransaction?.PaymentTransactionDatetime?.PaymentDateType
        },
        PaymentTransactionPurpose: check response?.PaymentTransaction?.PaymentTransactionPurpose,
        PaymentTransactionStatus: {
            PaymentTransactionStatus: {
                StatusReason: {
                    Text: check response?.PaymentTransaction?.PaymentTransactionStatus?.PaymentTransactionStatus?.StatusReason?.Text
                },
                StatusDateTime: {
                    DateTimeContent: {
                        Text: check response?.PaymentTransaction?.PaymentTransactionStatus?.PaymentTransactionStatus?.StatusDateTime?.DateTimeContent?.Text
                    },
                    TimeZoneCode: {
                        Text: check response?.PaymentTransaction?.PaymentTransactionStatus?.PaymentTransactionStatus?.StatusDateTime?.TimeZoneCode?.Text
                    },
                    DaylightSavingIndicator: {
                        Text: check response?.PaymentTransaction?.PaymentTransactionStatus?.PaymentTransactionStatus?.StatusDateTime?.DaylightSavingIndicator?.Text
                    },
                    DateTimeType: check response?.PaymentTransaction?.PaymentTransactionStatus?.PaymentTransactionStatus?.StatusDateTime?.DateTimeType
                },
                StatusValidityPeriod: {
                    FromDateTime: {
                        DateTimeContent: {
                            Text: check response?.PaymentTransaction?.PaymentTransactionStatus?.PaymentTransactionStatus?.StatusValidityPeriod?.FromDateTime?.DateTimeContent?.Text
                        },
                        TimeZoneCode: {
                            Text: check response?.PaymentTransaction?.PaymentTransactionStatus?.PaymentTransactionStatus?.StatusValidityPeriod?.FromDateTime?.TimeZoneCode?.Text
                        },
                        DaylightSavingIndicator: {
                            Text: check response?.PaymentTransaction?.PaymentTransactionStatus?.PaymentTransactionStatus?.StatusValidityPeriod?.FromDateTime?.DaylightSavingIndicator?.Text
                        },
                        DateTimeType: check response?.PaymentTransaction?.PaymentTransactionStatus?.PaymentTransactionStatus?.StatusValidityPeriod?.FromDateTime?.DateTimeType
                    },
                    ToDateTime: {
                        DateTimeContent: {
                            Text: check response?.PaymentTransaction?.PaymentTransactionStatus?.PaymentTransactionStatus?.StatusValidityPeriod?.ToDateTime?.DateTimeContent?.Text
                        },
                        TimeZoneCode: {
                            Text: check response?.PaymentTransaction?.PaymentTransactionStatus?.PaymentTransactionStatus?.StatusValidityPeriod?.ToDateTime?.TimeZoneCode?.Text
                        },
                        DaylightSavingIndicator: {
                            Text: check response?.PaymentTransaction?.PaymentTransactionStatus?.PaymentTransactionStatus?.StatusValidityPeriod?.ToDateTime?.DaylightSavingIndicator?.Text
                        },
                        DateTimeType: check response?.PaymentTransaction?.PaymentTransactionStatus?.PaymentTransactionStatus?.StatusValidityPeriod?.ToDateTime?.DateTimeType
                    }
                },
                StatusInvolvedParty: {
                    PartyReference: {
                        PartyName: {
                            Name: check response?.PaymentTransaction?.PaymentTransactionStatus?.PaymentTransactionStatus?.StatusInvolvedParty?.PartyReference?.PartyName?.Name
                        },
                        PartyType: check response?.PaymentTransaction?.PaymentTransactionStatus?.PaymentTransactionStatus?.StatusInvolvedParty?.PartyReference?.PartyType,
                        PartyDateTime: {
                            DateTimeContent: {
                                Text: check response?.PaymentTransaction?.PaymentTransactionStatus?.PaymentTransactionStatus?.StatusInvolvedParty?.PartyReference?.PartyDateTime?.DateTimeContent?.Text
                            },
                            TimeZoneCode: {
                                Text: check response?.PaymentTransaction?.PaymentTransactionStatus?.PaymentTransactionStatus?.StatusInvolvedParty?.PartyReference?.PartyDateTime?.TimeZoneCode?.Text
                            },
                            DaylightSavingIndicator: {
                                Text: check response?.PaymentTransaction?.PaymentTransactionStatus?.PaymentTransactionStatus?.StatusInvolvedParty?.PartyReference?.PartyDateTime?.DaylightSavingIndicator?.Text
                            },
                            DateTimeType: check response?.PaymentTransaction?.PaymentTransactionStatus?.PaymentTransactionStatus?.StatusInvolvedParty?.PartyReference?.PartyDateTime?.DateTimeType
                        },
                        PartyIdentification: {
                            PartyIdentificationType: check response?.PaymentTransaction?.PaymentTransactionStatus?.PaymentTransactionStatus?.StatusInvolvedParty?.PartyReference?.PartyIdentification?.PartyIdentificationType
                        },
                        PartyLegalStructureType: check response?.PaymentTransaction?.PaymentTransactionStatus?.PaymentTransactionStatus?.StatusInvolvedParty?.PartyReference?.PartyLegalStructureType
                    },
                    PartyInvolvement: {
                        PartyRoleType: {
                            Text: check response?.PaymentTransaction?.PaymentTransactionStatus?.PaymentTransactionStatus?.StatusInvolvedParty?.PartyInvolvement?.PartyRoleType?.Text
                        },
                        PartyRoleName: {
                            Name: check response?.PaymentTransaction?.PaymentTransactionStatus?.PaymentTransactionStatus?.StatusInvolvedParty?.PartyInvolvement?.PartyRoleName?.Name
                        },
                        PartyRoleValidityPeriod: {
                            FromDateTime: {
                                DateTimeContent: {
                                    Text: check response?.PaymentTransaction?.PaymentTransactionStatus?.PaymentTransactionStatus?.StatusInvolvedParty?.PartyInvolvement?.PartyRoleValidityPeriod?.FromDateTime?.DateTimeContent?.Text
                                },
                                TimeZoneCode: {
                                    Text: check response?.PaymentTransaction?.PaymentTransactionStatus?.PaymentTransactionStatus?.StatusInvolvedParty?.PartyInvolvement?.PartyRoleValidityPeriod?.FromDateTime?.TimeZoneCode?.Text
                                },
                                DaylightSavingIndicator: {
                                    Text: check response?.PaymentTransaction?.PaymentTransactionStatus?.PaymentTransactionStatus?.StatusInvolvedParty?.PartyInvolvement?.PartyRoleValidityPeriod?.FromDateTime?.DaylightSavingIndicator?.Text
                                },
                                DateTimeType: check response?.PaymentTransaction?.PaymentTransactionStatus?.PaymentTransactionStatus?.StatusInvolvedParty?.PartyInvolvement?.PartyRoleValidityPeriod?.FromDateTime?.DateTimeType
                            },
                            ToDateTime: {
                                DateTimeContent: {
                                    Text: check response?.PaymentTransaction?.PaymentTransactionStatus?.PaymentTransactionStatus?.StatusInvolvedParty?.PartyInvolvement?.PartyRoleValidityPeriod?.ToDateTime?.DateTimeContent?.Text
                                },
                                TimeZoneCode: {
                                    Text: check response?.PaymentTransaction?.PaymentTransactionStatus?.PaymentTransactionStatus?.StatusInvolvedParty?.PartyInvolvement?.PartyRoleValidityPeriod?.ToDateTime?.TimeZoneCode?.Text
                                },
                                DaylightSavingIndicator: {
                                    Text: check response?.PaymentTransaction?.PaymentTransactionStatus?.PaymentTransactionStatus?.StatusInvolvedParty?.PartyInvolvement?.PartyRoleValidityPeriod?.ToDateTime?.DaylightSavingIndicator?.Text
                                },
                                DateTimeType: check response?.PaymentTransaction?.PaymentTransactionStatus?.PaymentTransactionStatus?.StatusInvolvedParty?.PartyInvolvement?.PartyRoleValidityPeriod?.ToDateTime?.DateTimeType
                            }
                        },
                        PartyInvolvementType: check response?.PaymentTransaction?.PaymentTransactionStatus?.PaymentTransactionStatus?.StatusInvolvedParty?.PartyInvolvement?.PartyInvolvementType
                    }
                }
            },
            PaymentTransactionStatusType: check response?.PaymentTransaction?.PaymentTransactionStatus?.PaymentTransactionStatusType
        },
        PaymentTransactionAppliedFeeAmount: {
            AmountValue: {
                Value: check response?.PaymentTransaction?.PaymentTransactionAppliedFeeAmount?.AmountValue?.Value
            },
            AmountCurrency: {
                Currencycode: check response?.PaymentTransaction?.PaymentTransactionAppliedFeeAmount?.AmountCurrency?.Currencycode
            },
            DecimalPointPosition: {
                Text: check response?.PaymentTransaction?.PaymentTransactionAppliedFeeAmount?.DecimalPointPosition?.Text
            },
            AmountType: check response?.PaymentTransaction?.PaymentTransactionAppliedFeeAmount?.AmountType
        },
        PaymentTransactionCurrency: check response?.PaymentTransaction?.PaymentTransactionCurrency,
        PaymentCreditDebitIndicator: check response?.PaymentTransaction?.PaymentCreditDebitIndicator
    },
    PayerReference: {
        PayerIdentifier: check response?.PayerReference?.PayerIdentifier
    },
    PayerBankReference: {
        PayerBankIdentifier: check response?.PayerBankReference?.PayerBankIdentifier
    },
    PayerProductInstanceReference: {
        ProductAgreementType: check response?.PayerProductInstanceReference?.ProductAgreementType
    },
    PayeeReference: {
        PayeeIdentifier: check response?.PayeeReference?.PayeeIdentifier
    },
    PayeeBankReference: {
        PayeeBankIdentifier: check response?.PayeeBankReference?.PayeeBankIdentifier
    },
    PayeeProductInstanceReference: {
        ProductAgreementType: check response?.PayeeProductInstanceReference?.ProductAgreementType
    },
    Amount: {
        AmountValue: {
            Value: check response?.Amount?.AmountValue?.Value
        },
        AmountCurrency: {
            Currencycode: check response?.Amount?.AmountCurrency?.Currencycode
        },
        DecimalPointPosition: {
            Text: check response?.Amount?.DecimalPointPosition?.Text
        },
        AmountType: check response?.Amount?.AmountType
    },
    Currency: {
        Currencycode: check response?.Currency?.Currencycode
    },
    DateType: check response?.DateType,
    Date: {
        DateTimeContent: {
            Text: check response?.Date?.DateTimeContent?.Text
        },
        TimeZoneCode: {
            Text: check response?.Date?.TimeZoneCode?.Text
        },
        DaylightSavingIndicator: {
            Text: check response?.Date?.DaylightSavingIndicator?.Text
        },
        DateTimeType: check response?.Date?.DateTimeType
    },
    PaymentFeesCharges: {
        FeeType: check response?.PaymentFeesCharges?.FeeType,
        FeeAmount: {
            AmountValue: {
                Value: check response?.PaymentFeesCharges?.FeeAmount?.AmountValue?.Value
            },
            AmountCurrency: {
                Currencycode: check response?.PaymentFeesCharges?.FeeAmount?.AmountCurrency?.Currencycode
            },
            DecimalPointPosition: {
                Text: check response?.PaymentFeesCharges?.FeeAmount?.DecimalPointPosition?.Text
            },
            AmountType: check response?.PaymentFeesCharges?.FeeAmount?.AmountType
        },
        FeeRate: {
            RateValue: {
                Value: check response?.PaymentFeesCharges?.FeeRate?.RateValue?.Value
            },
            RateUnit: {
                Text: check response?.PaymentFeesCharges?.FeeRate?.RateUnit?.Text
            },
            RatePeriod: {
                FromDateTime: {
                    DateTimeContent: {
                        Text: check response?.PaymentFeesCharges?.FeeRate?.RatePeriod?.FromDateTime?.DateTimeContent?.Text
                    },
                    TimeZoneCode: {
                        Text: check response?.PaymentFeesCharges?.FeeRate?.RatePeriod?.FromDateTime?.TimeZoneCode?.Text
                    },
                    DaylightSavingIndicator: {
                        Text: check response?.PaymentFeesCharges?.FeeRate?.RatePeriod?.FromDateTime?.DaylightSavingIndicator?.Text
                    },
                    DateTimeType: check response?.PaymentFeesCharges?.FeeRate?.RatePeriod?.FromDateTime?.DateTimeType
                },
                ToDateTime: {
                    DateTimeContent: {
                        Text: check response?.PaymentFeesCharges?.FeeRate?.RatePeriod?.ToDateTime?.DateTimeContent?.Text
                    },
                    TimeZoneCode: {
                        Text: check response?.PaymentFeesCharges?.FeeRate?.RatePeriod?.ToDateTime?.TimeZoneCode?.Text
                    },
                    DaylightSavingIndicator: {
                        Text: check response?.PaymentFeesCharges?.FeeRate?.RatePeriod?.ToDateTime?.DaylightSavingIndicator?.Text
                    },
                    DateTimeType: check response?.PaymentFeesCharges?.FeeRate?.RatePeriod?.ToDateTime?.DateTimeType
                }
            },
            RateCapitalUnit: {
                Text: check response?.PaymentFeesCharges?.FeeRate?.RateCapitalUnit?.Text
            }
        },
        FeeEffectivePeriod: {
            FromDateTime: {
                DateTimeContent: {
                    Text: check response?.PaymentFeesCharges?.FeeEffectivePeriod?.FromDateTime?.DateTimeContent?.Text
                },
                TimeZoneCode: {
                    Text: check response?.PaymentFeesCharges?.FeeEffectivePeriod?.FromDateTime?.TimeZoneCode?.Text
                },
                DaylightSavingIndicator: {
                    Text: check response?.PaymentFeesCharges?.FeeEffectivePeriod?.FromDateTime?.DaylightSavingIndicator?.Text
                },
                DateTimeType: check response?.PaymentFeesCharges?.FeeEffectivePeriod?.FromDateTime?.DateTimeType
            },
            ToDateTime: {
                DateTimeContent: {
                    Text: check response?.PaymentFeesCharges?.FeeEffectivePeriod?.ToDateTime?.DateTimeContent?.Text
                },
                TimeZoneCode: {
                    Text: check response?.PaymentFeesCharges?.FeeEffectivePeriod?.ToDateTime?.TimeZoneCode?.Text
                },
                DaylightSavingIndicator: {
                    Text: check response?.PaymentFeesCharges?.FeeEffectivePeriod?.ToDateTime?.DaylightSavingIndicator?.Text
                },
                DateTimeType: check response?.PaymentFeesCharges?.FeeEffectivePeriod?.ToDateTime?.DateTimeType
            }
        },
        FeeDueDate: {
            DateTimeContent: {
                Text: check response?.PaymentFeesCharges?.FeeDueDate?.DateTimeContent?.Text
            },
            TimeZoneCode: {
                Text: check response?.PaymentFeesCharges?.FeeDueDate?.TimeZoneCode?.Text
            },
            DaylightSavingIndicator: {
                Text: check response?.PaymentFeesCharges?.FeeDueDate?.DaylightSavingIndicator?.Text
            },
            DateTimeType: check response?.PaymentFeesCharges?.FeeDueDate?.DateTimeType
        },
        FeePlan: {
            FeePlanName: {
                Name: check response?.PaymentFeesCharges?.FeePlan?.FeePlanName?.Name
            },
            FeePlanType: check response?.PaymentFeesCharges?.FeePlan?.FeePlanType,
            FeePlan: {
                PlanGoal: {
                    GoalType: check response?.PaymentFeesCharges?.FeePlan?.FeePlan?.PlanGoal?.GoalType,
                    GoalDefinition: {
                        Text: check response?.PaymentFeesCharges?.FeePlan?.FeePlan?.PlanGoal?.GoalDefinition?.Text
                    },
                    GoalName: {
                        Name: check response?.PaymentFeesCharges?.FeePlan?.FeePlan?.PlanGoal?.GoalName?.Name
                    },
                    GoalDateAndTime: {
                        GoalDateAndTime: {
                            DateTimeContent: {
                                Text: check response?.PaymentFeesCharges?.FeePlan?.FeePlan?.PlanGoal?.GoalDateAndTime?.GoalDateAndTime?.DateTimeContent?.Text
                            },
                            TimeZoneCode: {
                                Text: check response?.PaymentFeesCharges?.FeePlan?.FeePlan?.PlanGoal?.GoalDateAndTime?.GoalDateAndTime?.TimeZoneCode?.Text
                            },
                            DaylightSavingIndicator: {
                                Text: check response?.PaymentFeesCharges?.FeePlan?.FeePlan?.PlanGoal?.GoalDateAndTime?.GoalDateAndTime?.DaylightSavingIndicator?.Text
                            },
                            DateTimeType: check response?.PaymentFeesCharges?.FeePlan?.FeePlan?.PlanGoal?.GoalDateAndTime?.GoalDateAndTime?.DateTimeType
                        },
                        GoalDateAndTimeType: check response?.PaymentFeesCharges?.FeePlan?.FeePlan?.PlanGoal?.GoalDateAndTime?.GoalDateAndTimeType
                    },
                    GoalStatus: {
                        GoalStatus: {
                            StatusReason: {
                                Text: check response?.PaymentFeesCharges?.FeePlan?.FeePlan?.PlanGoal?.GoalStatus?.GoalStatus?.StatusReason?.Text
                            },
                            StatusDateTime: {
                                DateTimeContent: {
                                    Text: check response?.PaymentFeesCharges?.FeePlan?.FeePlan?.PlanGoal?.GoalStatus?.GoalStatus?.StatusDateTime?.DateTimeContent?.Text
                                },
                                TimeZoneCode: {
                                    Text: check response?.PaymentFeesCharges?.FeePlan?.FeePlan?.PlanGoal?.GoalStatus?.GoalStatus?.StatusDateTime?.TimeZoneCode?.Text
                                },
                                DaylightSavingIndicator: {
                                    Text: check response?.PaymentFeesCharges?.FeePlan?.FeePlan?.PlanGoal?.GoalStatus?.GoalStatus?.StatusDateTime?.DaylightSavingIndicator?.Text
                                },
                                DateTimeType: check response?.PaymentFeesCharges?.FeePlan?.FeePlan?.PlanGoal?.GoalStatus?.GoalStatus?.StatusDateTime?.DateTimeType
                            },
                            StatusValidityPeriod: {
                                FromDateTime: {
                                    DateTimeContent: {
                                        Text: check response?.PaymentFeesCharges?.FeePlan?.FeePlan?.PlanGoal?.GoalStatus?.GoalStatus?.StatusValidityPeriod?.FromDateTime?.DateTimeContent?.Text
                                    },
                                    TimeZoneCode: {
                                        Text: check response?.PaymentFeesCharges?.FeePlan?.FeePlan?.PlanGoal?.GoalStatus?.GoalStatus?.StatusValidityPeriod?.FromDateTime?.TimeZoneCode?.Text
                                    },
                                    DaylightSavingIndicator: {
                                        Text: check response?.PaymentFeesCharges?.FeePlan?.FeePlan?.PlanGoal?.GoalStatus?.GoalStatus?.StatusValidityPeriod?.FromDateTime?.DaylightSavingIndicator?.Text
                                    },
                                    DateTimeType: check response?.PaymentFeesCharges?.FeePlan?.FeePlan?.PlanGoal?.GoalStatus?.GoalStatus?.StatusValidityPeriod?.FromDateTime?.DateTimeType
                                },
                                ToDateTime: {
                                    DateTimeContent: {
                                        Text: check response?.PaymentFeesCharges?.FeePlan?.FeePlan?.PlanGoal?.GoalStatus?.GoalStatus?.StatusValidityPeriod?.ToDateTime?.DateTimeContent?.Text
                                    },
                                    TimeZoneCode: {
                                        Text: check response?.PaymentFeesCharges?.FeePlan?.FeePlan?.PlanGoal?.GoalStatus?.GoalStatus?.StatusValidityPeriod?.ToDateTime?.TimeZoneCode?.Text
                                    },
                                    DaylightSavingIndicator: {
                                        Text: check response?.PaymentFeesCharges?.FeePlan?.FeePlan?.PlanGoal?.GoalStatus?.GoalStatus?.StatusValidityPeriod?.ToDateTime?.DaylightSavingIndicator?.Text
                                    },
                                    DateTimeType: check response?.PaymentFeesCharges?.FeePlan?.FeePlan?.PlanGoal?.GoalStatus?.GoalStatus?.StatusValidityPeriod?.ToDateTime?.DateTimeType
                                }
                            },
                            StatusInvolvedParty: {
                                PartyReference: {
                                    PartyName: {
                                        Name: check response?.PaymentFeesCharges?.FeePlan?.FeePlan?.PlanGoal?.GoalStatus?.GoalStatus?.StatusInvolvedParty?.PartyReference?.PartyName?.Name
                                    },
                                    PartyType: check response?.PaymentFeesCharges?.FeePlan?.FeePlan?.PlanGoal?.GoalStatus?.GoalStatus?.StatusInvolvedParty?.PartyReference?.PartyType,
                                    PartyDateTime: {
                                        DateTimeContent: {
                                            Text: check response?.PaymentFeesCharges?.FeePlan?.FeePlan?.PlanGoal?.GoalStatus?.GoalStatus?.StatusInvolvedParty?.PartyReference?.PartyDateTime?.DateTimeContent?.Text
                                        },
                                        TimeZoneCode: {
                                            Text: check response?.PaymentFeesCharges?.FeePlan?.FeePlan?.PlanGoal?.GoalStatus?.GoalStatus?.StatusInvolvedParty?.PartyReference?.PartyDateTime?.TimeZoneCode?.Text
                                        },
                                        DaylightSavingIndicator: {
                                            Text: check response?.PaymentFeesCharges?.FeePlan?.FeePlan?.PlanGoal?.GoalStatus?.GoalStatus?.StatusInvolvedParty?.PartyReference?.PartyDateTime?.DaylightSavingIndicator?.Text
                                        },
                                        DateTimeType: check response?.PaymentFeesCharges?.FeePlan?.FeePlan?.PlanGoal?.GoalStatus?.GoalStatus?.StatusInvolvedParty?.PartyReference?.PartyDateTime?.DateTimeType
                                    },
                                    PartyIdentification: {
                                        PartyIdentificationType: check response?.PaymentFeesCharges?.FeePlan?.FeePlan?.PlanGoal?.GoalStatus?.GoalStatus?.StatusInvolvedParty?.PartyReference?.PartyIdentification?.PartyIdentificationType
                                    },
                                    PartyLegalStructureType: check response?.PaymentFeesCharges?.FeePlan?.FeePlan?.PlanGoal?.GoalStatus?.GoalStatus?.StatusInvolvedParty?.PartyReference?.PartyLegalStructureType
                                },
                                PartyInvolvement: {
                                    PartyRoleType: {
                                        Text: check response?.PaymentFeesCharges?.FeePlan?.FeePlan?.PlanGoal?.GoalStatus?.GoalStatus?.StatusInvolvedParty?.PartyInvolvement?.PartyRoleType?.Text
                                    },
                                    PartyRoleName: {
                                        Name: check response?.PaymentFeesCharges?.FeePlan?.FeePlan?.PlanGoal?.GoalStatus?.GoalStatus?.StatusInvolvedParty?.PartyInvolvement?.PartyRoleName?.Name
                                    },
                                    PartyRoleValidityPeriod: {
                                        FromDateTime: {
                                            DateTimeContent: {
                                                Text: check response?.PaymentFeesCharges?.FeePlan?.FeePlan?.PlanGoal?.GoalStatus?.GoalStatus?.StatusInvolvedParty?.PartyInvolvement?.PartyRoleValidityPeriod?.FromDateTime?.DateTimeContent?.Text
                                            },
                                            TimeZoneCode: {
                                                Text: check response?.PaymentFeesCharges?.FeePlan?.FeePlan?.PlanGoal?.GoalStatus?.GoalStatus?.StatusInvolvedParty?.PartyInvolvement?.PartyRoleValidityPeriod?.FromDateTime?.TimeZoneCode?.Text
                                            },
                                            DaylightSavingIndicator: {
                                                Text: check response?.PaymentFeesCharges?.FeePlan?.FeePlan?.PlanGoal?.GoalStatus?.GoalStatus?.StatusInvolvedParty?.PartyInvolvement?.PartyRoleValidityPeriod?.FromDateTime?.DaylightSavingIndicator?.Text
                                            },
                                            DateTimeType: check response?.PaymentFeesCharges?.FeePlan?.FeePlan?.PlanGoal?.GoalStatus?.GoalStatus?.StatusInvolvedParty?.PartyInvolvement?.PartyRoleValidityPeriod?.FromDateTime?.DateTimeType
                                        },
                                        ToDateTime: {
                                            DateTimeContent: {
                                                Text: check response?.PaymentFeesCharges?.FeePlan?.FeePlan?.PlanGoal?.GoalStatus?.GoalStatus?.StatusInvolvedParty?.PartyInvolvement?.PartyRoleValidityPeriod?.ToDateTime?.DateTimeContent?.Text
                                            },
                                            TimeZoneCode: {
                                                Text: check response?.PaymentFeesCharges?.FeePlan?.FeePlan?.PlanGoal?.GoalStatus?.GoalStatus?.StatusInvolvedParty?.PartyInvolvement?.PartyRoleValidityPeriod?.ToDateTime?.TimeZoneCode?.Text
                                            },
                                            DaylightSavingIndicator: {
                                                Text: check response?.PaymentFeesCharges?.FeePlan?.FeePlan?.PlanGoal?.GoalStatus?.GoalStatus?.StatusInvolvedParty?.PartyInvolvement?.PartyRoleValidityPeriod?.ToDateTime?.DaylightSavingIndicator?.Text
                                            },
                                            DateTimeType: check response?.PaymentFeesCharges?.FeePlan?.FeePlan?.PlanGoal?.GoalStatus?.GoalStatus?.StatusInvolvedParty?.PartyInvolvement?.PartyRoleValidityPeriod?.ToDateTime?.DateTimeType
                                        }
                                    },
                                    PartyInvolvementType: check response?.PaymentFeesCharges?.FeePlan?.FeePlan?.PlanGoal?.GoalStatus?.GoalStatus?.StatusInvolvedParty?.PartyInvolvement?.PartyInvolvementType
                                }
                            }
                        },
                        GoalStatusType: check response?.PaymentFeesCharges?.FeePlan?.FeePlan?.PlanGoal?.GoalStatus?.GoalStatusType
                    }
                },
                PlanBudget: {
                    BudgetType: {
                        BudgetTypeName: {
                            Name: check response?.PaymentFeesCharges?.FeePlan?.FeePlan?.PlanBudget?.BudgetType?.BudgetTypeName?.Name
                        },
                        BudgetType: check response?.PaymentFeesCharges?.FeePlan?.FeePlan?.PlanBudget?.BudgetType?.BudgetType
                    },
                    BudgetAmount: {
                        AmountValue: {
                            Value: check response?.PaymentFeesCharges?.FeePlan?.FeePlan?.PlanBudget?.BudgetAmount?.AmountValue?.Value
                        },
                        AmountCurrency: {
                            Currencycode: check response?.PaymentFeesCharges?.FeePlan?.FeePlan?.PlanBudget?.BudgetAmount?.AmountCurrency?.Currencycode
                        },
                        DecimalPointPosition: {
                            Text: check response?.PaymentFeesCharges?.FeePlan?.FeePlan?.PlanBudget?.BudgetAmount?.DecimalPointPosition?.Text
                        },
                        AmountType: check response?.PaymentFeesCharges?.FeePlan?.FeePlan?.PlanBudget?.BudgetAmount?.AmountType
                    }
                },
                PlannedAction: {
                    PlannedAction: check response?.PaymentFeesCharges?.FeePlan?.FeePlan?.PlannedAction?.PlannedAction
                },
                PlanType: check response?.PaymentFeesCharges?.FeePlan?.FeePlan?.PlanType,
                PlanValidityPeriod: {
                    FromDateTime: {
                        DateTimeContent: {
                            Text: check response?.PaymentFeesCharges?.FeePlan?.FeePlan?.PlanValidityPeriod?.FromDateTime?.DateTimeContent?.Text
                        },
                        TimeZoneCode: {
                            Text: check response?.PaymentFeesCharges?.FeePlan?.FeePlan?.PlanValidityPeriod?.FromDateTime?.TimeZoneCode?.Text
                        },
                        DaylightSavingIndicator: {
                            Text: check response?.PaymentFeesCharges?.FeePlan?.FeePlan?.PlanValidityPeriod?.FromDateTime?.DaylightSavingIndicator?.Text
                        },
                        DateTimeType: check response?.PaymentFeesCharges?.FeePlan?.FeePlan?.PlanValidityPeriod?.FromDateTime?.DateTimeType
                    },
                    ToDateTime: {
                        DateTimeContent: {
                            Text: check response?.PaymentFeesCharges?.FeePlan?.FeePlan?.PlanValidityPeriod?.ToDateTime?.DateTimeContent?.Text
                        },
                        TimeZoneCode: {
                            Text: check response?.PaymentFeesCharges?.FeePlan?.FeePlan?.PlanValidityPeriod?.ToDateTime?.TimeZoneCode?.Text
                        },
                        DaylightSavingIndicator: {
                            Text: check response?.PaymentFeesCharges?.FeePlan?.FeePlan?.PlanValidityPeriod?.ToDateTime?.DaylightSavingIndicator?.Text
                        },
                        DateTimeType: check response?.PaymentFeesCharges?.FeePlan?.FeePlan?.PlanValidityPeriod?.ToDateTime?.DateTimeType
                    }
                },
                PlanDescription: {
                    Text: check response?.PaymentFeesCharges?.FeePlan?.FeePlan?.PlanDescription?.Text
                }
            }
        },
        FeeCreditDebitIndicator: check response?.PaymentFeesCharges?.FeeCreditDebitIndicator,
        FeeReason: {
            Text: check response?.PaymentFeesCharges?.FeeReason?.Text
        },
        FeeDirection: check response?.PaymentFeesCharges?.FeeDirection,
        FeeBearerType: check response?.PaymentFeesCharges?.FeeBearerType
    },
    PaymentMechanism: check response?.PaymentMechanism,
    PaymentPurpose: {
        Text: check response?.PaymentPurpose?.Text
    },
    DocumentDirectoryEntryInstanceReference: {
        DocumentDirectoryEntryIdentification: check response?.DocumentDirectoryEntryInstanceReference?.DocumentDirectoryEntryIdentification
    },
    DocumentContent: {
        Text: check response?.DocumentContent?.Text
    }
};

function transformPaymentInitiationUpdateResponse(json response) returns products:PaymentInitiationTransaction|error => {
    PaymentTransactionType: check response?.PaymentTransactionType,
    RecurringPaymentRecord: {
        ServiceType: check response?.RecurringPaymentRecord?.ServiceType,
        PaymentDate: {
            PaymentDate: {
                DateTimeContent: {
                    Text: check response?.RecurringPaymentRecord?.PaymentDate?.PaymentDate?.DateTimeContent?.Text
                },
                TimeZoneCode: {
                    Text: check response?.RecurringPaymentRecord?.PaymentDate?.PaymentDate?.TimeZoneCode?.Text
                },
                DaylightSavingIndicator: {
                    Text: check response?.RecurringPaymentRecord?.PaymentDate?.PaymentDate?.DaylightSavingIndicator?.Text
                },
                DateTimeType: check response?.RecurringPaymentRecord?.PaymentDate?.PaymentDate?.DateTimeType
            },
            PaymentDateType: check response?.RecurringPaymentRecord?.PaymentDate?.PaymentDate?.PaymentDateType
        },
        PaymentPeriod: {
            FromDateTime: {
                DateTimeContent: {
                    Text: check response?.RecurringPaymentRecord?.PaymentPeriod?.FromDateTime?.DateTimeContent?.Text
                },
                TimeZoneCode: {
                    Text: check response?.RecurringPaymentRecord?.PaymentPeriod?.FromDateTime?.TimeZoneCode?.Text
                },
                DaylightSavingIndicator: {
                    Text: check response?.RecurringPaymentRecord?.PaymentPeriod?.FromDateTime?.DaylightSavingIndicator?.Text
                },
                DateTimeType: check response?.RecurringPaymentRecord?.PaymentPeriod?.FromDateTime?.DateTimeType
            },
            ToDateTime: {
                DateTimeContent: {
                    Text: check response?.RecurringPaymentRecord?.PaymentPeriod?.ToDateTime?.DateTimeContent?.Text
                },
                TimeZoneCode: {
                    Text: check response?.RecurringPaymentRecord?.PaymentPeriod?.ToDateTime?.TimeZoneCode?.Text
                },
                DaylightSavingIndicator: {
                    Text: check response?.RecurringPaymentRecord?.PaymentPeriod?.ToDateTime?.DaylightSavingIndicator?.Text
                },
                DateTimeType: check response?.RecurringPaymentRecord?.PaymentPeriod?.ToDateTime?.DateTimeType
            }
        },
        PaymentPurpose: check response?.RecurringPaymentRecord?.PaymentPurpose,
        PaymentAmount: {
            AmountValue: {
                Value: check response?.RecurringPaymentRecord?.PaymentAmount?.AmountValue?.Value
            },
            AmountCurrency: {
                Currencycode: check response?.RecurringPaymentRecord?.PaymentAmount?.AmountCurrency?.Currencycode
            },
            DecimalPointPosition: {
                Text: check response?.RecurringPaymentRecord?.PaymentAmount?.DecimalPointPosition?.Text
            },
            AmountType: check response?.RecurringPaymentRecord?.PaymentAmount?.AmountType
        },
        PaymentMethod: check response?.RecurringPaymentRecord?.PaymentMethod,
        PaymentType: check response?.RecurringPaymentRecord?.PaymentType,
        PaymentTime: check response?.RecurringPaymentRecord?.PaymentTime,
        RemittanceDeliveryMethod: check response?.RecurringPaymentRecord?.RemittanceDeliveryMethod,
        RemittanceLocation: {
            ContactPointType: check response?.RecurringPaymentRecord?.RemittanceLocation?.ContactPointType
        }
    },
    RecurringPaymentCustomerReference: {
        PartyReference: {
            PartyName: {
                Name: check response?.RecurringPaymentCustomerReference?.PartyReference?.PartyName?.Name
            },
            PartyType: check response?.RecurringPaymentCustomerReference?.PartyReference?.PartyType,
            PartyDateTime: {
                DateTimeContent: {
                    Text: check response?.RecurringPaymentCustomerReference?.PartyReference?.PartyDateTime?.DateTimeContent?.Text
                },
                TimeZoneCode: {
                    Text: check response?.RecurringPaymentCustomerReference?.PartyReference?.PartyDateTime?.TimeZoneCode?.Text
                },
                DaylightSavingIndicator: {
                    Text: check response?.RecurringPaymentCustomerReference?.PartyReference?.PartyDateTime?.DaylightSavingIndicator?.Text
                },
                DateTimeType: check response?.RecurringPaymentCustomerReference?.PartyReference?.PartyDateTime?.DateTimeType
            },
            PartyIdentification: {
                PartyIdentificationType: check response?.RecurringPaymentCustomerReference?.PartyReference?.PartyIdentification?.PartyIdentificationType
                // "PartyIdentification": "string"
            },
            PartyLegalStructureType: check response?.RecurringPaymentCustomerReference?.PartyReference?.PartyLegalStructureType
        },
        PartyInvolvement: {
            PartyRoleType: {
                Text: check response?.RecurringPaymentCustomerReference?.PartyInvolvement?.PartyRoleType?.Text
            },
            PartyRoleName: {
                Name: check response?.RecurringPaymentCustomerReference?.PartyInvolvement?.PartyRoleName?.Name
            },
            PartyRoleValidityPeriod: {
                FromDateTime: {
                    DateTimeContent: {
                        Text: check response?.RecurringPaymentCustomerReference?.PartyInvolvement?.PartyRoleValidityPeriod?.FromDateTime?.DateTimeContent?.Text
                    },
                    TimeZoneCode: {
                        Text: check response?.RecurringPaymentCustomerReference?.PartyInvolvement?.PartyRoleValidityPeriod?.FromDateTime?.TimeZoneCode?.Text
                    },
                    DaylightSavingIndicator: {
                        Text: check response?.RecurringPaymentCustomerReference?.PartyInvolvement?.PartyRoleValidityPeriod?.FromDateTime?.DaylightSavingIndicator?.Text
                    },
                    DateTimeType: check response?.RecurringPaymentCustomerReference?.PartyInvolvement?.PartyRoleValidityPeriod?.FromDateTime?.DateTimeType
                },
                ToDateTime: {
                    DateTimeContent: {
                        Text: check response?.RecurringPaymentCustomerReference?.PartyInvolvement?.PartyRoleValidityPeriod?.ToDateTime?.DateTimeContent?.Text
                    },
                    TimeZoneCode: {
                        Text: check response?.RecurringPaymentCustomerReference?.PartyInvolvement?.PartyRoleValidityPeriod?.ToDateTime?.TimeZoneCode?.Text
                    },
                    DaylightSavingIndicator: {
                        Text: check response?.RecurringPaymentCustomerReference?.PartyInvolvement?.PartyRoleValidityPeriod?.ToDateTime?.DaylightSavingIndicator?.Text
                    },
                    DateTimeType: check response?.RecurringPaymentCustomerReference?.PartyInvolvement?.PartyRoleValidityPeriod?.ToDateTime?.DateTimeType
                }
            },
            PartyInvolvementType: check response?.RecurringPaymentCustomerReference?.PartyInvolvement?.PartyInvolvementType
        }
    },
    RecurringPaymentReference: {
        ServiceType: check response?.RecurringPaymentReference?.ServiceType,
        PaymentDate: {
            PaymentDate: {
                DateTimeContent: {
                    Text: check response?.RecurringPaymentCustomerReference?.PaymentDate?.PaymentDate?.DateTimeContent?.Text
                },
                TimeZoneCode: {
                    Text: check response?.RecurringPaymentCustomerReference?.PaymentDate?.PaymentDate?.TimeZoneCode?.Text
                },
                DaylightSavingIndicator: {
                    Text: check response?.RecurringPaymentCustomerReference?.PaymentDate?.PaymentDate?.DaylightSavingIndicator?.Text
                },
                DateTimeType: check response?.RecurringPaymentCustomerReference?.PaymentDate?.PaymentDate?.DateTimeType
            },
            PaymentDateType: check response?.RecurringPaymentCustomerReference?.PaymentDate?.PaymentDateType
        },
        PaymentPeriod: {
            FromDateTime: {
                DateTimeContent: {
                    Text: check response?.RecurringPaymentCustomerReference?.PaymentPeriod?.FromDateTime?.DateTimeContent?.Text
                },
                TimeZoneCode: {
                    Text: check response?.RecurringPaymentCustomerReference?.PaymentPeriod?.FromDateTime?.TimeZoneCode?.Text
                },
                DaylightSavingIndicator: {
                    Text: check response?.RecurringPaymentCustomerReference?.PaymentPeriod?.FromDateTime?.DaylightSavingIndicator?.Text
                },
                DateTimeType: check response?.RecurringPaymentCustomerReference?.PaymentPeriod?.FromDateTime?.DateTimeType
            },
            ToDateTime: {
                DateTimeContent: {
                    Text: check response?.RecurringPaymentCustomerReference?.PaymentPeriod?.ToDateTime?.DateTimeContent?.Text
                },
                TimeZoneCode: {
                    Text: check response?.RecurringPaymentCustomerReference?.PaymentPeriod?.ToDateTime?.TimeZoneCode?.Text
                },
                DaylightSavingIndicator: {
                    Text: check response?.RecurringPaymentCustomerReference?.PaymentPeriod?.ToDateTime?.DaylightSavingIndicator?.Text
                },
                DateTimeType: check response?.RecurringPaymentCustomerReference?.PaymentPeriod?.ToDateTime?.DateTimeType
            }
        },
        PaymentPurpose: check response?.RecurringPaymentCustomerReference?.PaymentPurpose,
        PaymentAmount: {
            AmountValue: {
                Value: check response?.RecurringPaymentCustomerReference?.PaymentAmount?.AmountValue?.Value
            },
            AmountCurrency: {
                Currencycode: check response?.RecurringPaymentCustomerReference?.PaymentAmount?.AmountCurrency?.Currencycode
            },
            DecimalPointPosition: {
                Text: check response?.RecurringPaymentCustomerReference?.PaymentAmount?.DecimalPointPosition?.Text
            },
            AmountType: check response?.RecurringPaymentCustomerReference?.PaymentAmount?.AmountType
        },
        PaymentMethod: check response?.RecurringPaymentCustomerReference?.PaymentMethod,
        PaymentType: check response?.RecurringPaymentCustomerReference?.PaymentType,
        PaymentTime: check response?.RecurringPaymentCustomerReference?.PaymentTime,
        RemittanceDeliveryMethod: check response?.RecurringPaymentCustomerReference?.RemittanceDeliveryMethod,
        RemittanceLocation: {
            ContactPointType: check response?.RecurringPaymentCustomerReference?.RemittanceLocation?.ContactPointType
        }
    },
    CustomerReference: {
        PartyReference: {
            PartyName: {
                Name: check response?.CustomerReference?.PartyReference?.PartyName?.Name
            },
            PartyType: check response?.CustomerReference?.PartyReference?.PartyType,
            PartyDateTime: {
                DateTimeContent: {
                    Text: check response?.CustomerReference?.PartyReference?.PartyDateTime?.DateTimeContent?.Text
                },
                TimeZoneCode: {
                    Text: check response?.CustomerReference?.PartyReference?.PartyDateTime?.TimeZoneCode?.Text
                },
                DaylightSavingIndicator: {
                    Text: check response?.CustomerReference?.PartyReference?.PartyDateTime?.DaylightSavingIndicator?.Text
                },
                DateTimeType: check response?.CustomerReference?.PartyReference?.PartyDateTime?.DateTimeType
            },
            PartyIdentification: {
                PartyIdentificationType: check response?.CustomerReference?.PartyReference?.PartyIdentification?.PartyIdentificationType
                // "PartyIdentification": "string"
            },
            PartyLegalStructureType: "Individual"
        },
        PartyInvolvement: {
            PartyRoleType: {
                Text: check response?.CustomerReference?.PartyReference?.PartyInvolvement?.PartyRoleType?.Text
            },
            PartyRoleName: {
                Name: check response?.CustomerReference?.PartyReference?.PartyInvolvement?.PartyRoleName?.Name
            },
            PartyRoleValidityPeriod: {
                FromDateTime: {
                    DateTimeContent: {
                        Text: check response?.CustomerReference?.PartyReference?.PartyInvolvement?.PartyRoleValidityPeriod?.FromDateTime?.DateTimeContent?.Text
                    },
                    TimeZoneCode: {
                        Text: check response?.CustomerReference?.PartyReference?.PartyInvolvement?.PartyRoleValidityPeriod?.FromDateTime?.TimeZoneCode?.Text
                    },
                    DaylightSavingIndicator: {
                        Text: check response?.CustomerReference?.PartyReference?.PartyInvolvement?.PartyRoleValidityPeriod?.FromDateTime?.DaylightSavingIndicator?.Text
                    },
                    DateTimeType: check response?.CustomerReference?.PartyReference?.PartyInvolvement?.PartyRoleValidityPeriod?.FromDateTime?.DateTimeType
                },
                ToDateTime: {
                    DateTimeContent: {
                        Text: check response?.CustomerReference?.PartyReference?.PartyInvolvement?.PartyRoleValidityPeriod?.ToDateTime?.DateTimeContent?.Text
                    },
                    TimeZoneCode: {
                        Text: check response?.CustomerReference?.PartyReference?.PartyInvolvement?.PartyRoleValidityPeriod?.ToDateTime?.TimeZoneCode?.Text
                    },
                    DaylightSavingIndicator: {
                        Text: check response?.CustomerReference?.PartyReference?.PartyInvolvement?.PartyRoleValidityPeriod?.ToDateTime?.DaylightSavingIndicator?.Text
                    },
                    DateTimeType: check response?.CustomerReference?.PartyReference?.PartyInvolvement?.PartyRoleValidityPeriod?.ToDateTime?.DateTimeType
                }
            },
            PartyInvolvementType: check response?.CustomerReference?.PartyReference?.PartyInvolvement?.PartyInvolvementType
        }
    },
    PaymentTransaction: {
        PaymentTransactionType: check response?.PaymentTransaction?.PaymentTransactionType,
        PaymentTransactionAmount: {
            AmountValue: {
                Value: check response?.PaymentTransaction?.PaymentTransactionAmount?.AmountValue?.Value
            },
            AmountCurrency: {
                Currencycode: check response?.PaymentTransaction?.PaymentTransactionAmount?.AmountCurrency?.Currencycode
            },
            DecimalPointPosition: {
                Text: check response?.PaymentTransaction?.PaymentTransactionAmount?.DecimalPointPosition?.Text
            },
            AmountType: check response?.PaymentTransaction?.PaymentTransactionAmount?.AmountType
        },
        PaymentTransactionIdentification: {
            IdentifierValue: {
                Value: check response?.PaymentTransaction?.PaymentTransactionIdentification?.IdentifierValue?.Value
            },
            IdentifierIssuingAuthority: {
                PartyReference: {
                    PartyName: {
                        Name: check response?.PaymentTransaction?.PaymentTransactionIdentification?.IdentifierIssuingAuthority?.PartyReference?.PartyName?.Name
                    },
                    PartyType: check response?.PaymentTransaction?.PaymentTransactionIdentification?.IdentifierIssuingAuthority?.PartyReference?.PartyType,
                    PartyDateTime: {
                        DateTimeContent: {
                            Text: check response?.PaymentTransaction?.PaymentTransactionIdentification?.IdentifierIssuingAuthority?.PartyReference?.PartyDateTime?.DateTimeContent?.Text
                        },
                        TimeZoneCode: {
                            Text: check response?.PaymentTransaction?.PaymentTransactionIdentification?.IdentifierIssuingAuthority?.PartyReference?.PartyDateTime?.TimeZoneCode?.Text
                        },
                        DaylightSavingIndicator: {
                            Text: check response?.PaymentTransaction?.PaymentTransactionIdentification?.IdentifierIssuingAuthority?.PartyReference?.PartyDateTime?.DaylightSavingIndicator?.Text
                        },
                        DateTimeType: check response?.PaymentTransaction?.PaymentTransactionIdentification?.IdentifierIssuingAuthority?.PartyReference?.PartyDateTime?.DateTimeType
                    },
                    PartyIdentification: {
                        PartyIdentificationType: check response?.PaymentTransaction?.PaymentTransactionIdentification?.IdentifierIssuingAuthority?.PartyReference?.PartyIdentification?.PartyIdentificationType
                        // "PartyIdentification": "string"
                    },
                    PartyLegalStructureType: check response?.PaymentTransaction?.PaymentTransactionIdentification?.IdentifierIssuingAuthority?.PartyReference?.PartyLegalStructureType
                },
                PartyInvolvement: {
                    PartyRoleType: {
                        Text: check response?.PaymentTransaction?.PaymentTransactionIdentification?.IdentifierIssuingAuthority?.PartyReference?.PartyInvolvement?.PartyRoleType?.Text
                    },
                    PartyRoleName: {
                        Name: check response?.PaymentTransaction?.PaymentTransactionIdentification?.IdentifierIssuingAuthority?.PartyReference?.PartyInvolvement?.PartyRoleName?.Name
                    },
                    PartyRoleValidityPeriod: {
                        FromDateTime: {
                            DateTimeContent: {
                                Text: check response?.PaymentTransaction?.PaymentTransactionIdentification?.IdentifierIssuingAuthority?.PartyReference?.PartyInvolvement?.PartyRoleValidityPeriod?.FromDateTime?.DateTimeContent?.Text
                            },
                            TimeZoneCode: {
                                Text: check response?.PaymentTransaction?.PaymentTransactionIdentification?.IdentifierIssuingAuthority?.PartyReference?.PartyInvolvement?.PartyRoleValidityPeriod?.FromDateTime?.TimeZoneCode?.Text
                            },
                            DaylightSavingIndicator: {
                                Text: check response?.PaymentTransaction?.PaymentTransactionIdentification?.IdentifierIssuingAuthority?.PartyReference?.PartyInvolvement?.PartyRoleValidityPeriod?.FromDateTime?.DaylightSavingIndicator?.Text
                            },
                            DateTimeType: check response?.PaymentTransaction?.PaymentTransactionIdentification?.IdentifierIssuingAuthority?.PartyReference?.PartyInvolvement?.PartyRoleValidityPeriod?.FromDateTime?.DateTimeType
                        },
                        ToDateTime: {
                            DateTimeContent: {
                                Text: check response?.PaymentTransaction?.PaymentTransactionIdentification?.IdentifierIssuingAuthority?.PartyReference?.PartyInvolvement?.PartyRoleValidityPeriod?.ToDateTime?.DateTimeContent?.Text
                            },
                            TimeZoneCode: {
                                Text: check response?.PaymentTransaction?.PaymentTransactionIdentification?.IdentifierIssuingAuthority?.PartyReference?.PartyInvolvement?.PartyRoleValidityPeriod?.ToDateTime?.TimeZoneCode?.Text
                            },
                            DaylightSavingIndicator: {
                                Text: check response?.PaymentTransaction?.PaymentTransactionIdentification?.IdentifierIssuingAuthority?.PartyReference?.PartyInvolvement?.PartyRoleValidityPeriod?.ToDateTime?.DaylightSavingIndicator?.Text
                            },
                            DateTimeType: check response?.PaymentTransaction?.PaymentTransactionIdentification?.IdentifierIssuingAuthority?.PartyReference?.PartyInvolvement?.PartyRoleValidityPeriod?.ToDateTime?.DateTimeType
                        }
                    },
                    PartyInvolvementType: check response?.PaymentTransaction?.PaymentTransactionIdentification?.IdentifierIssuingAuthority?.PartyReference?.PartyInvolvement?.PartyInvolvementType
                }
            },
            IdentifierStartDate: {
                DateTimeContent: {
                    Text: check response?.PaymentTransaction?.PaymentTransactionIdentification?.IdentifierStartDate?.DateTimeContent?.Text
                },
                TimeZoneCode: {
                    Text: check response?.PaymentTransaction?.PaymentTransactionIdentification?.IdentifierStartDate?.TimeZoneCode?.Text
                },
                DaylightSavingIndicator: {
                    Text: check response?.PaymentTransaction?.PaymentTransactionIdentification?.IdentifierStartDate?.DaylightSavingIndicator?.Text
                },
                DateTimeType: check response?.PaymentTransaction?.PaymentTransactionIdentification?.IdentifierStartDate?.DateTimeType
            },
            IdentifierEndDate: {
                DateTimeContent: {
                    Text: check response?.PaymentTransaction?.PaymentTransactionIdentification?.IdentifierEndDate?.DateTimeContent?.Text
                },
                TimeZoneCode: {
                    Text: check response?.PaymentTransaction?.PaymentTransactionIdentification?.IdentifierEndDate?.TimeZoneCode?.Text
                },
                DaylightSavingIndicator: {
                    Text: check response?.PaymentTransaction?.PaymentTransactionIdentification?.IdentifierEndDate?.DaylightSavingIndicator?.Text
                },
                DateTimeType: check response?.PaymentTransaction?.PaymentTransactionIdentification?.IdentifierEndDate?.DateTimeType
            }
        },
        PaymentTransactionUsedMechanism: {
            Text: check response?.PaymentTransaction?.PaymentTransactionUsedMechanism?.Text
        },
        PaymentTransactionDatetime: {
            PaymentDate: {
                DateTimeContent: {
                    Text: check response?.PaymentTransaction?.PaymentTransactionDatetime?.PaymentDate?.DateTimeContent?.Text
                },
                TimeZoneCode: {
                    Text: check response?.PaymentTransaction?.PaymentTransactionDatetime?.PaymentDate?.TimeZoneCode?.Text
                },
                DaylightSavingIndicator: {
                    Text: check response?.PaymentTransaction?.PaymentTransactionDatetime?.PaymentDate?.DaylightSavingIndicator?.Text
                },
                DateTimeType: check response?.PaymentTransaction?.PaymentTransactionDatetime?.PaymentDate?.DateTimeType
            },
            PaymentDateType: check response?.PaymentTransaction?.PaymentTransactionDatetime?.PaymentDateType
        },
        PaymentTransactionPurpose: check response?.PaymentTransaction?.PaymentTransactionPurpose,
        PaymentTransactionStatus: {
            PaymentTransactionStatus: {
                StatusReason: {
                    Text: check response?.PaymentTransaction?.PaymentTransactionStatus?.PaymentTransactionStatus?.StatusReason?.Text
                },
                StatusDateTime: {
                    DateTimeContent: {
                        Text: check response?.PaymentTransaction?.PaymentTransactionStatus?.PaymentTransactionStatus?.StatusDateTime?.DateTimeContent?.Text
                    },
                    TimeZoneCode: {
                        Text: check response?.PaymentTransaction?.PaymentTransactionStatus?.PaymentTransactionStatus?.StatusDateTime?.TimeZoneCode?.Text
                    },
                    DaylightSavingIndicator: {
                        Text: check response?.PaymentTransaction?.PaymentTransactionStatus?.PaymentTransactionStatus?.StatusDateTime?.DaylightSavingIndicator?.Text
                    },
                    DateTimeType: check response?.PaymentTransaction?.PaymentTransactionStatus?.PaymentTransactionStatus?.StatusDateTime?.DateTimeType
                },
                StatusValidityPeriod: {
                    FromDateTime: {
                        DateTimeContent: {
                            Text: check response?.PaymentTransaction?.PaymentTransactionStatus?.PaymentTransactionStatus?.StatusValidityPeriod?.FromDateTime?.DateTimeContent?.Text
                        },
                        TimeZoneCode: {
                            Text: check response?.PaymentTransaction?.PaymentTransactionStatus?.PaymentTransactionStatus?.StatusValidityPeriod?.FromDateTime?.TimeZoneCode?.Text
                        },
                        DaylightSavingIndicator: {
                            Text: check response?.PaymentTransaction?.PaymentTransactionStatus?.PaymentTransactionStatus?.StatusValidityPeriod?.FromDateTime?.DaylightSavingIndicator?.Text
                        },
                        DateTimeType: check response?.PaymentTransaction?.PaymentTransactionStatus?.PaymentTransactionStatus?.StatusValidityPeriod?.FromDateTime?.DateTimeType
                    },
                    ToDateTime: {
                        DateTimeContent: {
                            Text: check response?.PaymentTransaction?.PaymentTransactionStatus?.PaymentTransactionStatus?.StatusValidityPeriod?.ToDateTime?.DateTimeContent?.Text
                        },
                        TimeZoneCode: {
                            Text: check response?.PaymentTransaction?.PaymentTransactionStatus?.PaymentTransactionStatus?.StatusValidityPeriod?.ToDateTime?.TimeZoneCode?.Text
                        },
                        DaylightSavingIndicator: {
                            Text: check response?.PaymentTransaction?.PaymentTransactionStatus?.PaymentTransactionStatus?.StatusValidityPeriod?.ToDateTime?.DaylightSavingIndicator?.Text
                        },
                        DateTimeType: check response?.PaymentTransaction?.PaymentTransactionStatus?.PaymentTransactionStatus?.StatusValidityPeriod?.ToDateTime?.DateTimeType
                    }
                },
                StatusInvolvedParty: {
                    PartyReference: {
                        PartyName: {
                            Name: check response?.PaymentTransaction?.PaymentTransactionStatus?.PaymentTransactionStatus?.StatusInvolvedParty?.PartyReference?.PartyName?.Name
                        },
                        PartyType: "Person",
                        PartyDateTime: {
                            DateTimeContent: {
                                Text: check response?.PaymentTransaction?.PaymentTransactionStatus?.PaymentTransactionStatus?.StatusInvolvedParty?.PartyReference?.PartyDateTime?.DateTimeContent?.Text
                            },
                            TimeZoneCode: {
                                Text: check response?.PaymentTransaction?.PaymentTransactionStatus?.PaymentTransactionStatus?.StatusInvolvedParty?.PartyReference?.PartyDateTime?.TimeZoneCode?.Text
                            },
                            DaylightSavingIndicator: {
                                Text: check response?.PaymentTransaction?.PaymentTransactionStatus?.PaymentTransactionStatus?.StatusInvolvedParty?.PartyReference?.PartyDateTime?.DaylightSavingIndicator?.Text
                            },
                            DateTimeType: check response?.PaymentTransaction?.PaymentTransactionStatus?.PaymentTransactionStatus?.StatusInvolvedParty?.PartyReference?.PartyDateTime?.DateTimeType
                        },
                        PartyIdentification: {
                            PartyIdentificationType: check response?.PaymentTransaction?.PaymentTransactionStatus?.PaymentTransactionStatus?.StatusInvolvedParty?.PartyReference?.PartyIdentification?.PartyIdentificationType
                            // "PartyIdentification": "string"
                        },
                        PartyLegalStructureType: check response?.PaymentTransaction?.PaymentTransactionStatus?.PaymentTransactionStatus?.StatusInvolvedParty?.PartyReference?.PartyLegalStructureType
                    },
                    PartyInvolvement: {
                        PartyRoleType: {
                            Text: check response?.PaymentTransaction?.PaymentTransactionStatus?.PaymentTransactionStatus?.StatusInvolvedParty?.PartyInvolvement?.PartyRoleType?.Text
                        },
                        PartyRoleName: {
                            Name: check response?.PaymentTransaction?.PaymentTransactionStatus?.PaymentTransactionStatus?.StatusInvolvedParty?.PartyInvolvement?.PartyRoleName?.Name
                        },
                        PartyRoleValidityPeriod: {
                            FromDateTime: {
                                DateTimeContent: {
                                    Text: check response?.PaymentTransaction?.PaymentTransactionStatus?.PaymentTransactionStatus?.StatusInvolvedParty?.PartyInvolvement?.PartyRoleValidityPeriod?.FromDateTime?.DateTimeContent?.Text
                                },
                                TimeZoneCode: {
                                    Text: check response?.PaymentTransaction?.PaymentTransactionStatus?.PaymentTransactionStatus?.StatusInvolvedParty?.PartyInvolvement?.PartyRoleValidityPeriod?.FromDateTime?.TimeZoneCode?.Text
                                },
                                DaylightSavingIndicator: {
                                    Text: check response?.PaymentTransaction?.PaymentTransactionStatus?.PaymentTransactionStatus?.StatusInvolvedParty?.PartyInvolvement?.PartyRoleValidityPeriod?.FromDateTime?.DaylightSavingIndicator?.Text
                                },
                                DateTimeType: check response?.PaymentTransaction?.PaymentTransactionStatus?.PaymentTransactionStatus?.StatusInvolvedParty?.PartyInvolvement?.PartyRoleValidityPeriod?.FromDateTime?.DateTimeType
                            },
                            ToDateTime: {
                                DateTimeContent: {
                                    Text: check response?.PaymentTransaction?.PaymentTransactionStatus?.PaymentTransactionStatus?.StatusInvolvedParty?.PartyInvolvement?.PartyRoleValidityPeriod?.ToDateTime?.DateTimeContent?.Text
                                },
                                TimeZoneCode: {
                                    Text: check response?.PaymentTransaction?.PaymentTransactionStatus?.PaymentTransactionStatus?.StatusInvolvedParty?.PartyInvolvement?.PartyRoleValidityPeriod?.ToDateTime?.TimeZoneCode?.Text
                                },
                                DaylightSavingIndicator: {
                                    Text: check response?.PaymentTransaction?.PaymentTransactionStatus?.PaymentTransactionStatus?.StatusInvolvedParty?.PartyInvolvement?.PartyRoleValidityPeriod?.ToDateTime?.DaylightSavingIndicator?.Text
                                },
                                DateTimeType: check response?.PaymentTransaction?.PaymentTransactionStatus?.PaymentTransactionStatus?.StatusInvolvedParty?.PartyInvolvement?.PartyRoleValidityPeriod?.ToDateTime?.DateTimeType
                            }
                        },
                        PartyInvolvementType: check response?.PaymentTransaction?.PaymentTransactionStatus?.PaymentTransactionStatus?.StatusInvolvedParty?.PartyInvolvement?.PartyInvolvementType
                    }
                }
            },
            PaymentTransactionStatusType: check response?.PaymentTransaction?.PaymentTransactionStatus?.PaymentTransactionStatus?.PaymentTransactionStatusType
        },
        PaymentTransactionAppliedFeeAmount: {
            AmountValue: {
                Value: check response?.PaymentTransaction?.PaymentTransactionAppliedFeeAmount?.AmountValue?.Value
            },
            AmountCurrency: {
                Currencycode: check response?.PaymentTransaction?.PaymentTransactionAppliedFeeAmount?.AmountCurrency?.Currencycode
            },
            DecimalPointPosition: {
                Text: check response?.PaymentTransaction?.PaymentTransactionAppliedFeeAmount?.DecimalPointPosition?.Text
            },
            AmountType: check response?.PaymentTransaction?.PaymentTransactionAppliedFeeAmount?.AmountType
        },
        PaymentTransactionCurrency: check response?.PaymentTransaction?.PaymentTransactionCurrency,
        PaymentCreditDebitIndicator: check response?.PaymentTransaction?.PaymentCreditDebitIndicator
    },
    PayerReference: {
        PayerIdentifier: check response?.PayerReference?.PayerIdentifier
    },
    PayerBankReference: {
        PayerBankIdentifier: check response?.PayerBankReference?.PayerBankIdentifier
    },
    PayerProductInstanceReference: {
        ProductAgreementType: check response?.PayerProductInstanceReference?.ProductAgreementType
    },
    PayeeReference: {
        PayeeIdentifier: check response?.PayeeReference?.PayeeIdentifier
    },
    PayeeBankReference: {
        PayeeBankIdentifier: check response?.PayeeBankReference?.PayeeBankIdentifier
    },
    PayeeProductInstanceReference: {
        ProductAgreementType: check response?.PayeeProductInstanceReference?.ProductAgreementType
    },
    Amount: {
        AmountValue: {
            Value: check response?.Amount?.AmountValue?.Value
        },
        AmountCurrency: {
            Currencycode: check response?.Amount?.AmountCurrency?.Currencycode
        },
        DecimalPointPosition: {
            Text: check response?.Amount?.DecimalPointPosition?.Text
        },
        AmountType: check response?.Amount?.AmountType
    },
    Currency: {
        Currencycode: "string"
    },
    DateType: "MaturityDate",
    Date: {
        DateTimeContent: {
            Text: check response?.Date?.DateTimeContent?.Text
        },
        TimeZoneCode: {
            Text: check response?.Date?.TimeZoneCode?.Text
        },
        DaylightSavingIndicator: {
            Text: check response?.Date?.DaylightSavingIndicator?.Text
        },
        DateTimeType: check response?.Date?.DateTimeType
    },
    PaymentFeesCharges: {
        FeeType: check response?.PaymentFeesCharges?.FeeType,
        FeeAmount: {
            AmountValue: {
                Value: check response?.PaymentFeesCharges?.FeeAmount?.AmountValue?.Value
            },
            AmountCurrency: {
                Currencycode: check response?.PaymentFeesCharges?.FeeAmount?.AmountCurrency?.Currencycode
            },
            DecimalPointPosition: {
                Text: check response?.PaymentFeesCharges?.FeeAmount?.DecimalPointPosition?.Text
            },
            AmountType: check response?.PaymentFeesCharges?.FeeAmount?.AmountType
        },
        FeeRate: {
            RateValue: {
                Value: check response?.PaymentFeesCharges?.FeeRate?.RateValue?.Value
            },
            RateUnit: {
                Text: check response?.PaymentFeesCharges?.FeeRate?.RateUnit?.Text
            },
            RatePeriod: {
                FromDateTime: {
                    DateTimeContent: {
                        Text: check response?.PaymentFeesCharges?.FeeRate?.RatePeriod?.FromDateTime?.DateTimeContent?.Text
                    },
                    TimeZoneCode: {
                        Text: check response?.PaymentFeesCharges?.FeeRate?.RatePeriod?.FromDateTime?.TimeZoneCode?.Text
                    },
                    DaylightSavingIndicator: {
                        Text: check response?.PaymentFeesCharges?.FeeRate?.RatePeriod?.FromDateTime?.DaylightSavingIndicator?.Text
                    },
                    DateTimeType: check response?.PaymentFeesCharges?.FeeRate?.RatePeriod?.FromDateTime?.DateTimeType
                },
                ToDateTime: {
                    DateTimeContent: {
                        Text: check response?.PaymentFeesCharges?.FeeRate?.RatePeriod?.ToDateTime?.DateTimeContent?.Text
                    },
                    TimeZoneCode: {
                        Text: check response?.PaymentFeesCharges?.FeeRate?.RatePeriod?.ToDateTime?.TimeZoneCode?.Text
                    },
                    DaylightSavingIndicator: {
                        Text: check response?.PaymentFeesCharges?.FeeRate?.RatePeriod?.ToDateTime?.DaylightSavingIndicator?.Text
                    },
                    DateTimeType: check response?.PaymentFeesCharges?.FeeRate?.RatePeriod?.ToDateTime?.DateTimeType
                }
            },
            RateCapitalUnit: {
                Text: check response?.PaymentFeesCharges?.FeeRate?.RateCapitalUnit?.Text
            }
        },
        FeeEffectivePeriod: {
            FromDateTime: {
                DateTimeContent: {
                    Text: check response?.PaymentFeesCharges?.FeeEffectivePeriod?.FromDateTime?.DateTimeContent?.Text
                },
                TimeZoneCode: {
                    Text: check response?.PaymentFeesCharges?.FeeEffectivePeriod?.FromDateTime?.TimeZoneCode?.Text
                },
                DaylightSavingIndicator: {
                    Text: check response?.PaymentFeesCharges?.FeeEffectivePeriod?.FromDateTime?.DaylightSavingIndicator?.Text
                },
                DateTimeType: check response?.PaymentFeesCharges?.FeeEffectivePeriod?.FromDateTime?.DateTimeType
            },
            ToDateTime: {
                DateTimeContent: {
                    Text: check response?.PaymentFeesCharges?.FeeEffectivePeriod?.ToDateTime?.DateTimeContent?.Text
                },
                TimeZoneCode: {
                    Text: check response?.PaymentFeesCharges?.FeeEffectivePeriod?.ToDateTime?.TimeZoneCode?.Text
                },
                DaylightSavingIndicator: {
                    Text: check response?.PaymentFeesCharges?.FeeEffectivePeriod?.ToDateTime?.DaylightSavingIndicator?.Text
                },
                DateTimeType: check response?.PaymentFeesCharges?.FeeEffectivePeriod?.ToDateTime?.DateTimeType
            }
        },
        FeeDueDate: {
            DateTimeContent: {
                Text: check response?.PaymentFeesCharges?.FeeDueDate?.DateTimeContent?.Text
            },
            TimeZoneCode: {
                Text: check response?.PaymentFeesCharges?.FeeDueDate?.TimeZoneCode?.Text
            },
            DaylightSavingIndicator: {
                Text: check response?.PaymentFeesCharges?.FeeDueDate?.DaylightSavingIndicator?.Text
            },
            DateTimeType: check response?.PaymentFeesCharges?.FeeDueDate?.DateTimeType
        },
        FeePlan: {
            FeePlanName: {
                Name: check response?.PaymentFeesCharges?.FeePlan?.FeePlanName?.Name
            },
            FeePlanType: check response?.PaymentFeesCharges?.FeePlan?.FeePlanType,
            FeePlan: {
                PlanGoal: {
                    GoalType: check response?.PaymentFeesCharges?.FeePlan?.FeePlan?.PlanGoal?.GoalType,
                    GoalDefinition: {
                        Text: check response?.PaymentFeesCharges?.FeePlan?.FeePlan?.PlanGoal?.GoalDefinition?.Text
                    },
                    GoalName: {
                        Name: check response?.PaymentFeesCharges?.FeePlan?.FeePlan?.PlanGoal?.GoalName?.Name
                    },
                    GoalDateAndTime: {
                        GoalDateAndTime: {
                            DateTimeContent: {
                                Text: check response?.PaymentFeesCharges?.FeePlan?.FeePlan?.PlanGoal?.GoalDateAndTime?.GoalDateAndTime?.DateTimeContent?.Text
                            },
                            TimeZoneCode: {
                                Text: check response?.PaymentFeesCharges?.FeePlan?.FeePlan?.PlanGoal?.GoalDateAndTime?.GoalDateAndTime?.TimeZoneCode?.Text
                            },
                            DaylightSavingIndicator: {
                                Text: check response?.PaymentFeesCharges?.FeePlan?.FeePlan?.PlanGoal?.GoalDateAndTime?.GoalDateAndTime?.DaylightSavingIndicator?.Text
                            },
                            DateTimeType: check response?.PaymentFeesCharges?.FeePlan?.FeePlan?.PlanGoal?.GoalDateAndTime?.GoalDateAndTime?.DateTimeType
                        },
                        GoalDateAndTimeType: check response?.PaymentFeesCharges?.FeePlan?.FeePlan?.PlanGoal?.GoalDateAndTime?.GoalDateAndTimeType
                    },
                    GoalStatus: {
                        GoalStatus: {
                            StatusReason: {
                                Text: check response?.PaymentFeesCharges?.FeePlan?.FeePlan?.PlanGoal?.GoalStatus?.GoalStatus?.StatusReason?.Text
                            },
                            StatusDateTime: {
                                DateTimeContent: {
                                    Text: check response?.PaymentFeesCharges?.FeePlan?.FeePlan?.PlanGoal?.GoalStatus?.GoalStatus?.StatusDateTime?.DateTimeContent?.Text
                                },
                                TimeZoneCode: {
                                    Text: check response?.PaymentFeesCharges?.FeePlan?.FeePlan?.PlanGoal?.GoalStatus?.GoalStatus?.StatusDateTime?.TimeZoneCode?.Text
                                },
                                DaylightSavingIndicator: {
                                    Text: check response?.PaymentFeesCharges?.FeePlan?.FeePlan?.PlanGoal?.GoalStatus?.GoalStatus?.StatusDateTime?.DaylightSavingIndicator?.Text
                                },
                                DateTimeType: check response?.PaymentFeesCharges?.FeePlan?.FeePlan?.PlanGoal?.GoalStatus?.GoalStatus?.StatusDateTime?.DateTimeType
                            },
                            StatusValidityPeriod: {
                                FromDateTime: {
                                    DateTimeContent: {
                                        Text: check response?.PaymentFeesCharges?.FeePlan?.FeePlan?.PlanGoal?.GoalStatus?.GoalStatus?.StatusValidityPeriod?.FromDateTime?.DateTimeContent?.Text
                                    },
                                    TimeZoneCode: {
                                        Text: check response?.PaymentFeesCharges?.FeePlan?.FeePlan?.PlanGoal?.GoalStatus?.GoalStatus?.StatusValidityPeriod?.FromDateTime?.TimeZoneCode?.Text
                                    },
                                    DaylightSavingIndicator: {
                                        Text: check response?.PaymentFeesCharges?.FeePlan?.FeePlan?.PlanGoal?.GoalStatus?.GoalStatus?.StatusValidityPeriod?.FromDateTime?.DaylightSavingIndicator?.Text
                                    },
                                    DateTimeType: check response?.PaymentFeesCharges?.FeePlan?.FeePlan?.PlanGoal?.GoalStatus?.GoalStatus?.StatusValidityPeriod?.FromDateTime?.DateTimeType
                                },
                                ToDateTime: {
                                    DateTimeContent: {
                                        Text: check response?.PaymentFeesCharges?.FeePlan?.FeePlan?.PlanGoal?.GoalStatus?.GoalStatus?.StatusValidityPeriod?.ToDateTime?.DateTimeContent?.Text
                                    },
                                    TimeZoneCode: {
                                        Text: check response?.PaymentFeesCharges?.FeePlan?.FeePlan?.PlanGoal?.GoalStatus?.GoalStatus?.StatusValidityPeriod?.ToDateTime?.TimeZoneCode?.Text
                                    },
                                    DaylightSavingIndicator: {
                                        Text: check response?.PaymentFeesCharges?.FeePlan?.FeePlan?.PlanGoal?.GoalStatus?.GoalStatus?.StatusValidityPeriod?.ToDateTime?.DaylightSavingIndicator?.Text
                                    },
                                    DateTimeType: check response?.PaymentFeesCharges?.FeePlan?.FeePlan?.PlanGoal?.GoalStatus?.GoalStatus?.StatusValidityPeriod?.ToDateTime?.DateTimeType
                                }
                            },
                            StatusInvolvedParty: {
                                PartyReference: {
                                    PartyName: {
                                        Name: check response?.PaymentFeesCharges?.FeePlan?.FeePlan?.PlanGoal?.GoalStatus?.GoalStatus?.StatusInvolvedParty?.PartyReference?.PartyName?.Name
                                    },
                                    PartyType: check response?.PaymentFeesCharges?.FeePlan?.FeePlan?.PlanGoal?.GoalStatus?.GoalStatus?.StatusInvolvedParty?.PartyReference?.PartyType,
                                    PartyDateTime: {
                                        DateTimeContent: {
                                            Text: check response?.PaymentFeesCharges?.FeePlan?.FeePlan?.PlanGoal?.GoalStatus?.GoalStatus?.StatusInvolvedParty?.PartyReference?.PartyDateTime?.DateTimeContent?.Text
                                        },
                                        TimeZoneCode: {
                                            Text: check response?.PaymentFeesCharges?.FeePlan?.FeePlan?.PlanGoal?.GoalStatus?.GoalStatus?.StatusInvolvedParty?.PartyReference?.PartyDateTime?.TimeZoneCode?.Text
                                        },
                                        DaylightSavingIndicator: {
                                            Text: check response?.PaymentFeesCharges?.FeePlan?.FeePlan?.PlanGoal?.GoalStatus?.GoalStatus?.StatusInvolvedParty?.PartyReference?.PartyDateTime?.DaylightSavingIndicator?.Text
                                        },
                                        DateTimeType: check response?.PaymentFeesCharges?.FeePlan?.FeePlan?.PlanGoal?.GoalStatus?.GoalStatus?.StatusInvolvedParty?.PartyReference?.PartyDateTime?.DateTimeType
                                    },
                                    PartyIdentification: {
                                        PartyIdentificationType: check response?.PaymentFeesCharges?.FeePlan?.FeePlan?.PlanGoal?.GoalStatus?.GoalStatus?.StatusInvolvedParty?.PartyReference?.PartyIdentification?.PartyIdentificationType
                                        // "PartyIdentification": "string"
                                    },
                                    PartyLegalStructureType: check response?.PaymentFeesCharges?.FeePlan?.FeePlan?.PlanGoal?.GoalStatus?.GoalStatus?.StatusInvolvedParty?.PartyReference?.PartyLegalStructureType
                                },
                                PartyInvolvement: {
                                    PartyRoleType: {
                                        Text: check response?.PaymentFeesCharges?.FeePlan?.FeePlan?.PlanGoal?.GoalStatus?.GoalStatus?.StatusInvolvedParty?.PartyInvolvement?.PartyRoleType?.Text
                                    },
                                    PartyRoleName: {
                                        Name: check response?.PaymentFeesCharges?.FeePlan?.FeePlan?.PlanGoal?.GoalStatus?.GoalStatus?.StatusInvolvedParty?.PartyInvolvement?.PartyRoleName?.Name
                                    },
                                    PartyRoleValidityPeriod: {
                                        FromDateTime: {
                                            DateTimeContent: {
                                                Text: check response?.PaymentFeesCharges?.FeePlan?.FeePlan?.PlanGoal?.GoalStatus?.GoalStatus?.StatusInvolvedParty?.PartyInvolvement?.PartyRoleValidityPeriod?.FromDateTime?.DateTimeContent?.Text
                                            },
                                            TimeZoneCode: {
                                                Text: check response?.PaymentFeesCharges?.FeePlan?.FeePlan?.PlanGoal?.GoalStatus?.GoalStatus?.StatusInvolvedParty?.PartyInvolvement?.PartyRoleValidityPeriod?.FromDateTime?.TimeZoneCode?.Text
                                            },
                                            DaylightSavingIndicator: {
                                                Text: check response?.PaymentFeesCharges?.FeePlan?.FeePlan?.PlanGoal?.GoalStatus?.GoalStatus?.StatusInvolvedParty?.PartyInvolvement?.PartyRoleValidityPeriod?.FromDateTime?.DaylightSavingIndicator?.Text
                                            },
                                            DateTimeType: check response?.PaymentFeesCharges?.FeePlan?.FeePlan?.PlanGoal?.GoalStatus?.GoalStatus?.StatusInvolvedParty?.PartyInvolvement?.PartyRoleValidityPeriod?.FromDateTime?.DateTimeType
                                        },
                                        ToDateTime: {
                                            DateTimeContent: {
                                                Text: check response?.PaymentFeesCharges?.FeePlan?.FeePlan?.PlanGoal?.GoalStatus?.GoalStatus?.StatusInvolvedParty?.PartyInvolvement?.PartyRoleValidityPeriod?.ToDateTime?.DateTimeContent?.Text
                                            },
                                            TimeZoneCode: {
                                                Text: check response?.PaymentFeesCharges?.FeePlan?.FeePlan?.PlanGoal?.GoalStatus?.GoalStatus?.StatusInvolvedParty?.PartyInvolvement?.PartyRoleValidityPeriod?.ToDateTime?.TimeZoneCode?.Text
                                            },
                                            DaylightSavingIndicator: {
                                                Text: check response?.PaymentFeesCharges?.FeePlan?.FeePlan?.PlanGoal?.GoalStatus?.GoalStatus?.StatusInvolvedParty?.PartyInvolvement?.PartyRoleValidityPeriod?.ToDateTime?.DaylightSavingIndicator?.Text
                                            },
                                            DateTimeType: check response?.PaymentFeesCharges?.FeePlan?.FeePlan?.PlanGoal?.GoalStatus?.GoalStatus?.StatusInvolvedParty?.PartyInvolvement?.PartyRoleValidityPeriod?.ToDateTime?.DateTimeType
                                        }
                                    },
                                    PartyInvolvementType: check response?.PaymentFeesCharges?.FeePlan?.FeePlan?.PlanGoal?.GoalStatus?.GoalStatus?.StatusInvolvedParty?.PartyInvolvement?.PartyInvolvementType
                                }
                            }
                        },
                        GoalStatusType: check response?.PaymentFeesCharges?.FeePlan?.FeePlan?.PlanGoal?.GoalStatus?.GoalStatus?.StatusInvolvedParty?.PartyInvolvement?.GoalStatusType
                    }
                },
                PlanBudget: {
                    BudgetType: {
                        BudgetTypeName: {
                            Name: check response?.PaymentFeesCharges?.FeePlan?.FeePlan?.PlanGoal?.PlanBudget?.BudgetType?.BudgetTypeName?.Name
                        },
                        BudgetType: check response?.PaymentFeesCharges?.FeePlan?.FeePlan?.PlanGoal?.PlanBudget?.BudgetType?.BudgetType
                    },
                    BudgetAmount: {
                        AmountValue: {
                            Value: check response?.PaymentFeesCharges?.FeePlan?.FeePlan?.PlanGoal?.PlanBudget?.BudgetAmount?.AmountValue?.Value
                        },
                        AmountCurrency: {
                            Currencycode: check response?.PaymentFeesCharges?.FeePlan?.FeePlan?.PlanGoal?.PlanBudget?.BudgetAmount?.AmountCurrency?.Currencycode
                        },
                        DecimalPointPosition: {
                            Text: check response?.PaymentFeesCharges?.FeePlan?.FeePlan?.PlanGoal?.PlanBudget?.BudgetAmount?.DecimalPointPosition?.Text
                        },
                        AmountType: check response?.PaymentFeesCharges?.FeePlan?.FeePlan?.PlanGoal?.PlanBudget?.BudgetAmount?.AmountType
                    }
                },
                PlannedAction: {
                    PlannedAction: check response?.PaymentFeesCharges?.FeePlan?.FeePlan?.PlanGoal?.PlannedAction?.PlannedAction
                },
                PlanType: check response?.PaymentFeesCharges?.FeePlan?.FeePlan?.PlanType,
                PlanValidityPeriod: {
                    FromDateTime: {
                        DateTimeContent: {
                            Text: check response?.PaymentFeesCharges?.FeePlan?.FeePlan?.PlanGoal?.PlanValidityPeriod?.FromDateTime?.DateTimeContent?.Text
                        },
                        TimeZoneCode: {
                            Text: check response?.PaymentFeesCharges?.FeePlan?.FeePlan?.PlanGoal?.PlanValidityPeriod?.FromDateTime?.TimeZoneCode?.Text
                        },
                        DaylightSavingIndicator: {
                            Text: check response?.PaymentFeesCharges?.FeePlan?.FeePlan?.PlanGoal?.PlanValidityPeriod?.FromDateTime?.DaylightSavingIndicator?.Text
                        },
                        DateTimeType: check response?.PaymentFeesCharges?.FeePlan?.FeePlan?.PlanGoal?.PlanValidityPeriod?.FromDateTime?.DateTimeType
                    },
                    ToDateTime: {
                        DateTimeContent: {
                            Text: check response?.PaymentFeesCharges?.FeePlan?.FeePlan?.PlanGoal?.PlanValidityPeriod?.ToDateTime?.DateTimeContent?.Text
                        },
                        TimeZoneCode: {
                            Text: check response?.PaymentFeesCharges?.FeePlan?.FeePlan?.PlanGoal?.PlanValidityPeriod?.ToDateTime?.TimeZoneCode?.Text
                        },
                        DaylightSavingIndicator: {
                            Text: check response?.PaymentFeesCharges?.FeePlan?.FeePlan?.PlanGoal?.PlanValidityPeriod?.ToDateTime?.DaylightSavingIndicator?.Text
                        },
                        DateTimeType: check response?.PaymentFeesCharges?.FeePlan?.FeePlan?.PlanGoal?.PlanValidityPeriod?.ToDateTime?.DateTimeType
                    }
                },
                PlanDescription: {
                    Text: check response?.PaymentFeesCharges?.FeePlan?.FeePlan?.PlanGoal?.PlanDescription?.Text
                }
            }
        },
        FeeCreditDebitIndicator: check response?.PaymentFeesCharges?.FeeCreditDebitIndicator,
        FeeReason: {
            Text: check response?.PaymentFeesCharges?.FeePlan?.FeePlan?.PlanGoal?.PlanDescription?.Text
        },
        FeeDirection: check response?.PaymentFeesCharges?.FeeDirection,
        FeeBearerType: check response?.PaymentFeesCharges?.FeeBearerType
    },
    PaymentMechanism: check response?.PaymentMechanism,
    PaymentPurpose: {
        Text: check response?.PaymentPurpose?.Text
    },
    DocumentDirectoryEntryInstanceReference: {
        DocumentDirectoryEntryIdentification: check response?.DocumentDirectoryEntryInstanceReference?.DocumentDirectoryEntryIdentification
    },
    DocumentContent: {
        Text: check response?.DocumentContent?.Text
    }
};
