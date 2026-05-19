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

import ballerinax/financial.bian.attribute.groups.operations as operations;

isolated function transfromPositionKeepingInitiateResponse(json response) returns operations:FinancialPositionLog|error => {
    "TransactionLogType": check response?.TransactionLogType,
    "ProductInstanceReference": {
        "ProductAgreementType": check response?.ProductInstanceReference?.ProductAgreementType,
        "ProductAgreementIdentification": {
            "IdentifierValue": check response?.ProductInstanceReference?.ProductAgreementIdentification?.IdentifierValue,
            "IdentifierIssuerReference": {
                "PartyReference": check response?.ProductInstanceReference?.ProductAgreementIdentification?.IdentifierIssuerReference?.PartyReference,
                "InvolvementReference": check response?.ProductInstanceReference?.ProductAgreementIdentification?.IdentifierIssuerReference?.InvolvementReference
            },
            "IdentifierStartDate": {
                "DateTimeContent": check response?.ProductInstanceReference?.ProductAgreementIdentification?.IdentifierStartDate?.DateTimeContent,
                "TimeZoneCode": check response?.ProductInstanceReference?.ProductAgreementIdentification?.IdentifierStartDate?.TimeZoneCode,
                "DaylightSavingIndicator": check response?.ProductInstanceReference?.ProductAgreementIdentification?.IdentifierStartDate?.DaylightSavingIndicator,
                "DateTimeType": check response?.ProductInstanceReference?.ProductAgreementIdentification?.IdentifierStartDate?.DateTimeType
            },
            "IdentifierEndDate": {
                "DateTimeContent": check response?.ProductInstanceReference?.ProductAgreementIdentification?.IdentifierEndDate?.DateTimeContent,
                "TimeZoneCode": check response?.ProductInstanceReference?.ProductAgreementIdentification?.IdentifierEndDate?.TimeZoneCode,
                "DaylightSavingIndicator": check response?.ProductInstanceReference?.ProductAgreementIdentification?.IdentifierEndDate?.DaylightSavingIndicator,
                "DateTimeType": check response?.ProductInstanceReference?.ProductAgreementIdentification?.IdentifierEndDate?.DateTimeType
            }
        },
        "AgreementSignedDate": {
            "DateContent": check response?.ProductInstanceReference?.AgreementSignedDate?.DateContent
        },
        "AgreementType": check response?.ProductInstanceReference?.AgreementType,
        "AgreementValidityPeriod": {
            "FromDateTime": {
                "DateTimeContent": check response?.ProductInstanceReference?.AgreementValidityPeriod?.FromDateTime?.DateTimeContent,
                "TimeZoneCode": check response?.ProductInstanceReference?.AgreementValidityPeriod?.FromDateTime?.TimeZoneCode,
                "DaylightSavingIndicator": check response?.ProductInstanceReference?.AgreementValidityPeriod?.FromDateTime?.DaylightSavingIndicator,
                "DateTimeType": check response?.ProductInstanceReference?.AgreementValidityPeriod?.FromDateTime?.DateTimeType
            },
            "ToDateTime": {
                "DateTimeContent": check response?.ProductInstanceReference?.AgreementValidityPeriod?.ToDateTime?.DateTimeContent,
                "TimeZoneCode": check response?.ProductInstanceReference?.AgreementValidityPeriod?.ToDateTime?.TimeZoneCode,
                "DaylightSavingIndicator": check response?.ProductInstanceReference?.AgreementValidityPeriod?.ToDateTime?.DaylightSavingIndicator,
                "DateTimeType": check response?.ProductInstanceReference?.AgreementValidityPeriod?.ToDateTime?.DateTimeType
            }
        },
        "AgreementVersion": check response?.ProductInstanceReference?.AgreementVersion,
        "AgreementStatus": {
            "AgreementStatus": {
                "StatusReason": check response?.ProductInstanceReference?.AgreementStatus?.AgreementStatus?.StatusReason,
                "StatusDateTime": {
                    "DateTimeContent": check response?.ProductInstanceReference?.AgreementStatus?.AgreementStatus?.StatusDateTime?.DateTimeContent,
                    "TimeZoneCode": check response?.ProductInstanceReference?.AgreementStatus?.AgreementStatus?.StatusDateTime?.TimeZoneCode,
                    "DaylightSavingIndicator": check response?.ProductInstanceReference?.AgreementStatus?.AgreementStatus?.StatusDateTime?.DaylightSavingIndicator,
                    "DateTimeType": check response?.ProductInstanceReference?.AgreementStatus?.AgreementStatus?.StatusDateTime?.DateTimeType
                },
                "StatusValidityPeriod": {
                    "FromDateTime": {
                        "DateTimeContent": check response?.ProductInstanceReference?.AgreementStatus?.AgreementStatus?.StatusValidityPeriod?.FromDateTime?.DateTimeContent,
                        "TimeZoneCode": check response?.ProductInstanceReference?.AgreementStatus?.AgreementStatus?.StatusValidityPeriod?.FromDateTime?.TimeZoneCode,
                        "DaylightSavingIndicator": check response?.ProductInstanceReference?.AgreementStatus?.AgreementStatus?.StatusValidityPeriod?.FromDateTime?.DaylightSavingIndicator,
                        "DateTimeType": check response?.ProductInstanceReference?.AgreementStatus?.AgreementStatus?.StatusValidityPeriod?.FromDateTime?.DateTimeType
                    },
                    "ToDateTime": {
                        "DateTimeContent": check response?.ProductInstanceReference?.AgreementStatus?.AgreementStatus?.StatusValidityPeriod?.ToDateTime?.DateTimeContent,
                        "TimeZoneCode": check response?.ProductInstanceReference?.AgreementStatus?.AgreementStatus?.StatusValidityPeriod?.ToDateTime?.TimeZoneCode,
                        "DaylightSavingIndicator": check response?.ProductInstanceReference?.AgreementStatus?.AgreementStatus?.StatusValidityPeriod?.ToDateTime?.DaylightSavingIndicator,
                        "DateTimeType": check response?.ProductInstanceReference?.AgreementStatus?.AgreementStatus?.StatusValidityPeriod?.ToDateTime?.DateTimeType
                    }
                },
                "StatusInvolvedPartyReference": {
                    "PartyReference": check response?.ProductInstanceReference?.AgreementStatus?.AgreementStatus?.StatusInvolvedPartyReference?.PartyReference,
                    "InvolvementReference": check response?.ProductInstanceReference?.AgreementStatus?.AgreementStatus?.StatusInvolvedPartyReference?.InvolvementReference
                }
            },
            "AgreementStatusType": check response?.ProductInstanceReference?.AgreementStatus?.AgreementStatusType
        },
        "AgreementSubjectMatter": check response?.ProductInstanceReference?.AgreementSubjectMatter,
        "AgreementIdentification": {
            "IdentifierValue": check response?.ProductInstanceReference?.AgreementIdentification?.IdentifierValue,
            "IdentifierIssuerReference": {
                "PartyReference": check response?.ProductInstanceReference?.AgreementIdentification?.IdentifierIssuerReference?.PartyReference,
                "InvolvementReference": check response?.ProductInstanceReference?.AgreementIdentification?.IdentifierIssuerReference?.InvolvementReference
            },
            "IdentifierStartDate": {
                "DateTimeContent": check response?.ProductInstanceReference?.AgreementIdentification?.IdentifierStartDate?.DateTimeContent,
                "TimeZoneCode": check response?.ProductInstanceReference?.AgreementIdentification?.IdentifierStartDate?.TimeZoneCode,
                "DaylightSavingIndicator": check response?.ProductInstanceReference?.AgreementIdentification?.IdentifierStartDate?.DaylightSavingIndicator,
                "DateTimeType": check response?.ProductInstanceReference?.AgreementIdentification?.IdentifierStartDate?.DateTimeType
            },
            "IdentifierEndDate": {
                "DateTimeContent": check response?.ProductInstanceReference?.AgreementIdentification?.IdentifierEndDate?.DateTimeContent,
                "TimeZoneCode": check response?.ProductInstanceReference?.AgreementIdentification?.IdentifierEndDate?.TimeZoneCode,
                "DaylightSavingIndicator": check response?.ProductInstanceReference?.AgreementIdentification?.IdentifierEndDate?.DaylightSavingIndicator,
                "DateTimeType": check response?.ProductInstanceReference?.AgreementIdentification?.IdentifierEndDate?.DateTimeType
            }
        },
        "AgreementDate": {
            "DateTimeContent": check response?.ProductInstanceReference?.AgreementDate?.DateTimeContent,
            "TimeZoneCode": check response?.ProductInstanceReference?.AgreementDate?.TimeZoneCode,
            "DaylightSavingIndicator": check response?.ProductInstanceReference?.AgreementDate?.DaylightSavingIndicator,
            "DateTimeType": check response?.ProductInstanceReference?.AgreementDate?.DateTimeType
        },
        "AgreementDescription": check response?.ProductInstanceReference?.AgreementDescription
    },
    "CustomerReference": {
        "PartyReference": check response?.CustomerReference?.PartyReference,
        "InvolvementReference": check response?.CustomerReference?.InvolvementReference
    },
    "CounterpartyReference": {
        "PartyReference": check response?.CounterpartyReference?.PartyReference,
        "InvolvementReference": check response?.CounterpartyReference?.InvolvementReference
    },
    "BaseCurrency": {
        "Currencycode": check response?.BaseCurrency?.Currencycode
    },
    "InterestApplicationRecord": {
        "InterestType": check response?.InterestApplicationRecord?.InterestType,
        "InterestRate": {
            "RateValue": check response?.InterestApplicationRecord?.InterestRate?.RateValue,
            "RateUnit": check response?.InterestApplicationRecord?.InterestRate?.RateUnit,
            "RatePeriod": {
                "FromDateTime": {
                    "DateTimeContent": check response?.InterestApplicationRecord?.InterestRate?.RatePeriod?.FromDateTime?.DateTimeContent,
                    "TimeZoneCode": check response?.InterestApplicationRecord?.InterestRate?.RatePeriod?.FromDateTime?.TimeZoneCode,
                    "DaylightSavingIndicator": check response?.InterestApplicationRecord?.InterestRate?.RatePeriod?.FromDateTime?.DaylightSavingIndicator,
                    "DateTimeType": check response?.InterestApplicationRecord?.InterestRate?.RatePeriod?.FromDateTime?.DateTimeType
                },
                "ToDateTime": {
                    "DateTimeContent": check response?.InterestApplicationRecord?.InterestRate?.RatePeriod?.ToDateTime?.DateTimeContent,
                    "TimeZoneCode": check response?.InterestApplicationRecord?.InterestRate?.RatePeriod?.ToDateTime?.TimeZoneCode,
                    "DaylightSavingIndicator": check response?.InterestApplicationRecord?.InterestRate?.RatePeriod?.ToDateTime?.DaylightSavingIndicator,
                    "DateTimeType": check response?.InterestApplicationRecord?.InterestRate?.RatePeriod?.ToDateTime?.DateTimeType
                }
            },
            "RateCapitalUnit": check response?.InterestApplicationRecord?.InterestRate?.RateCapitalUnit
        },
        "InterestDefinition": check response?.InterestApplicationRecord?.InterestDefinition,
        "InterestRateType": check response?.InterestApplicationRecord?.InterestRateType,
        "InterestPeriod": {
            "FromDateTime": {
                "DateTimeContent": check response?.InterestApplicationRecord?.InterestPeriod?.FromDateTime?.DateTimeContent,
                "TimeZoneCode": check response?.InterestApplicationRecord?.InterestPeriod?.FromDateTime?.TimeZoneCode,
                "DaylightSavingIndicator": check response?.InterestApplicationRecord?.InterestPeriod?.FromDateTime?.DaylightSavingIndicator,
                "DateTimeType": check response?.InterestApplicationRecord?.InterestPeriod?.FromDateTime?.DateTimeType
            },
            "ToDateTime": {
                "DateTimeContent": check response?.InterestApplicationRecord?.InterestPeriod?.ToDateTime?.DateTimeContent,
                "TimeZoneCode": check response?.InterestApplicationRecord?.InterestPeriod?.ToDateTime?.TimeZoneCode,
                "DaylightSavingIndicator": check response?.InterestApplicationRecord?.InterestPeriod?.ToDateTime?.DaylightSavingIndicator,
                "DateTimeType": check response?.InterestApplicationRecord?.InterestPeriod?.ToDateTime?.DateTimeType
            }
        },
        "InterestRatePlan": {
            "RatePlanName": check response?.InterestApplicationRecord?.InterestRatePlan?.RatePlanName,
            "RatePlanType": check response?.InterestApplicationRecord?.InterestRatePlan?.RatePlanType,
            "RatePlan": check response?.InterestApplicationRecord?.InterestRatePlan?.RatePlan
        },
        "InterestSchedule": {
            "ScheduleType": check response?.InterestApplicationRecord?.InterestSchedule?.ScheduleType
        },
        "LoanOriginationDate": {
            "DateContent": check response?.InterestApplicationRecord?.LoanOriginationDate?.DateContent
        },
        "LoanMaturityDate": {
            "DateContent": check response?.InterestApplicationRecord?.LoanMaturityDate?.DateContent
        },
        "LoanEndDate": {
            "DateContent": check response?.InterestApplicationRecord?.LoanEndDate?.DateContent
        },
        "LoanAmount": {
            "AmountValue": check response?.InterestApplicationRecord?.LoanAmount?.AmountValue,
            "AmountCurrency": {
                "Currencycode": check response?.InterestApplicationRecord?.LoanAmount?.AmountCurrency?.Currencycode
            },
            "DecimalPointPosition": check response?.InterestApplicationRecord?.LoanAmount?.DecimalPointPosition,
            "AmountType": check response?.InterestApplicationRecord?.LoanAmount?.AmountType
        },
        "LoanArrangementType": check response?.InterestApplicationRecord?.LoanArrangementType,
        "ArrangementAction": {
            "Action": check response?.InterestApplicationRecord?.ArrangementAction?.Action
        },
        "ArrangementStartDate": {
            "DateTimeContent": check response?.InterestApplicationRecord?.ArrangementStartDate?.DateTimeContent,
            "TimeZoneCode": check response?.InterestApplicationRecord?.ArrangementStartDate?.TimeZoneCode,
            "DaylightSavingIndicator": check response?.InterestApplicationRecord?.ArrangementStartDate?.DaylightSavingIndicator,
            "DateTimeType": check response?.InterestApplicationRecord?.ArrangementStartDate?.DateTimeType
        },
        "ArrangementEndDate": {
            "DateTimeContent": check response?.InterestApplicationRecord?.ArrangementEndDate?.DateTimeContent,
            "TimeZoneCode": check response?.InterestApplicationRecord?.ArrangementEndDate?.TimeZoneCode,
            "DaylightSavingIndicator": check response?.InterestApplicationRecord?.ArrangementEndDate?.DaylightSavingIndicator,
            "DateTimeType": check response?.InterestApplicationRecord?.ArrangementEndDate?.DateTimeType
        },
        "ArrangementStatus": {
            "ArrangementStatus": {
                "StatusReason": check response?.InterestApplicationRecord?.ArrangementStatus?.ArrangementStatus?.StatusReason,
                "StatusDateTime": {
                    "DateTimeContent": check response?.InterestApplicationRecord?.ArrangementStatus?.ArrangementStatus?.StatusDateTime?.DateTimeContent,
                    "TimeZoneCode": check response?.InterestApplicationRecord?.ArrangementStatus?.ArrangementStatus?.StatusDateTime?.TimeZoneCode,
                    "DaylightSavingIndicator": check response?.InterestApplicationRecord?.ArrangementStatus?.ArrangementStatus?.StatusDateTime?.DaylightSavingIndicator,
                    "DateTimeType": check response?.InterestApplicationRecord?.ArrangementStatus?.ArrangementStatus?.StatusDateTime?.DateTimeType
                },
                "StatusValidityPeriod": {
                    "FromDateTime": {
                        "DateTimeContent": check response?.InterestApplicationRecord?.ArrangementStatus?.ArrangementStatus?.StatusValidityPeriod?.FromDateTime?.DateTimeContent,
                        "TimeZoneCode": check response?.InterestApplicationRecord?.ArrangementStatus?.ArrangementStatus?.StatusValidityPeriod?.FromDateTime?.TimeZoneCode,
                        "DaylightSavingIndicator": check response?.InterestApplicationRecord?.ArrangementStatus?.ArrangementStatus?.StatusValidityPeriod?.FromDateTime?.DaylightSavingIndicator,
                        "DateTimeType": check response?.InterestApplicationRecord?.ArrangementStatus?.ArrangementStatus?.StatusValidityPeriod?.FromDateTime?.DateTimeType
                    },
                    "ToDateTime": {
                        "DateTimeContent": check response?.InterestApplicationRecord?.ArrangementStatus?.ArrangementStatus?.StatusValidityPeriod?.ToDateTime?.DateTimeContent,
                        "TimeZoneCode": check response?.InterestApplicationRecord?.ArrangementStatus?.ArrangementStatus?.StatusValidityPeriod?.ToDateTime?.TimeZoneCode,
                        "DaylightSavingIndicator": check response?.InterestApplicationRecord?.ArrangementStatus?.ArrangementStatus?.StatusValidityPeriod?.ToDateTime?.DaylightSavingIndicator,
                        "DateTimeType": check response?.InterestApplicationRecord?.ArrangementStatus?.ArrangementStatus?.StatusValidityPeriod?.ToDateTime?.DateTimeType
                    }
                },
                "StatusInvolvedPartyReference": {
                    "PartyReference": check response?.InterestApplicationRecord?.ArrangementStatus?.ArrangementStatus?.StatusInvolvedPartyReference?.PartyReference,
                    "InvolvementReference": check response?.InterestApplicationRecord?.ArrangementStatus?.ArrangementStatus?.StatusInvolvedPartyReference?.InvolvementReference
                }
            },
            "ArrangementStatusType": check response?.InterestApplicationRecord?.ArrangementStatus?.ArrangementStatusType
        },
        "ArrangementSubjectMatter": {
            "Subject": check response?.InterestApplicationRecord?.ArrangementSubjectMatter?.Subject
        },
        "Arrangementtype": check response?.InterestApplicationRecord?.Arrangementtype,
        "ArrangementIdentification": {
            "IdentifierValue": check response?.InterestApplicationRecord?.ArrangementIdentification?.IdentifierValue,
            "IdentifierIssuerReference": {
                "PartyReference": check response?.InterestApplicationRecord?.ArrangementIdentification?.IdentifierIssuerReference?.PartyReference,
                "InvolvementReference": check response?.InterestApplicationRecord?.ArrangementIdentification?.IdentifierIssuerReference?.InvolvementReference
            },
            "IdentifierStartDate": {
                "DateTimeContent": check response?.InterestApplicationRecord?.ArrangementIdentification?.IdentifierStartDate?.DateTimeContent,
                "TimeZoneCode": check response?.InterestApplicationRecord?.ArrangementIdentification?.IdentifierStartDate?.TimeZoneCode,
                "DaylightSavingIndicator": check response?.InterestApplicationRecord?.ArrangementIdentification?.IdentifierStartDate?.DaylightSavingIndicator,
                "DateTimeType": check response?.InterestApplicationRecord?.ArrangementIdentification?.IdentifierStartDate?.DateTimeType
            },
            "IdentifierEndDate": {
                "DateTimeContent": check response?.InterestApplicationRecord?.ArrangementIdentification?.IdentifierEndDate?.DateTimeContent,
                "TimeZoneCode": check response?.InterestApplicationRecord?.ArrangementIdentification?.IdentifierEndDate?.TimeZoneCode,
                "DaylightSavingIndicator": check response?.InterestApplicationRecord?.ArrangementIdentification?.IdentifierEndDate?.DaylightSavingIndicator,
                "DateTimeType": check response?.InterestApplicationRecord?.ArrangementIdentification?.IdentifierEndDate?.DateTimeType
            }
        },
        "PaymentCardArrangementIdentifier": {
            "IdentifierValue": check response?.InterestApplicationRecord?.PaymentCardArrangementIdentifier?.IdentifierValue,
            "IdentifierIssuerReference": {
                "PartyReference": check response?.InterestApplicationRecord?.PaymentCardArrangementIdentifier?.IdentifierIssuerReference?.PartyReference,
                "InvolvementReference": check response?.InterestApplicationRecord?.PaymentCardArrangementIdentifier?.IdentifierIssuerReference?.InvolvementReference
            },
            "IdentifierStartDate": {
                "DateTimeContent": check response?.InterestApplicationRecord?.PaymentCardArrangementIdentifier?.IdentifierStartDate?.DateTimeContent,
                "TimeZoneCode": check response?.InterestApplicationRecord?.PaymentCardArrangementIdentifier?.IdentifierStartDate?.TimeZoneCode,
                "DaylightSavingIndicator": check response?.InterestApplicationRecord?.PaymentCardArrangementIdentifier?.IdentifierStartDate?.DaylightSavingIndicator,
                "DateTimeType": check response?.InterestApplicationRecord?.PaymentCardArrangementIdentifier?.IdentifierStartDate?.DateTimeType
            },
            "IdentifierEndDate": {
                "DateTimeContent": check response?.InterestApplicationRecord?.PaymentCardArrangementIdentifier?.IdentifierEndDate?.DateTimeContent,
                "TimeZoneCode": check response?.InterestApplicationRecord?.PaymentCardArrangementIdentifier?.IdentifierEndDate?.TimeZoneCode,
                "DaylightSavingIndicator": check response?.InterestApplicationRecord?.PaymentCardArrangementIdentifier?.IdentifierEndDate?.DaylightSavingIndicator,
                "DateTimeType": check response?.InterestApplicationRecord?.PaymentCardArrangementIdentifier?.IdentifierEndDate?.DateTimeType
            }
        },
        "CardPaymentArrangementType": check response?.InterestApplicationRecord?.CardPaymentArrangementType,
        "SavingsAccountArrangementType": check response?.InterestApplicationRecord?.SavingsAccountArrangementType,
        "SavingsAccountArrangementProductFeatureType": {
            "ProductFeatureTypeValues": check response?.InterestApplicationRecord?.SavingsAccountArrangementProductFeatureType?.ProductFeatureTypeValues
        },
        "CurrentAccountArrangementType": check response?.InterestApplicationRecord?.CurrentAccountArrangementType,
        "CurrentAccountArrangementProductFeatureType": {
            "ProductFeatureTypeValues": check response?.InterestApplicationRecord?.CurrentAccountArrangementProductFeatureType?.ProductFeatureTypeValues
        },
        "ProductArrangementType": check response?.InterestApplicationRecord?.ProductArrangementType,
        "TermDepositArrangementType": check response?.InterestApplicationRecord?.TermDepositArrangementType,
        "TermDepositArrangementProductFeatureType": {
            "ProductFeatureTypeValues": check response?.InterestApplicationRecord?.TermDepositArrangementProductFeatureType?.ProductFeatureTypeValues
        },
        "TermDepositMaturityDate": {
            "DateTimeContent": check response?.InterestApplicationRecord?.TermDepositMaturityDate?.DateTimeContent,
            "TimeZoneCode": check response?.InterestApplicationRecord?.TermDepositMaturityDate?.TimeZoneCode,
            "DaylightSavingIndicator": check response?.InterestApplicationRecord?.TermDepositMaturityDate?.DaylightSavingIndicator,
            "DateTimeType": check response?.InterestApplicationRecord?.TermDepositMaturityDate?.DateTimeType
        },
        "TermDepositOpenDate": {
            "DateTimeContent": check response?.InterestApplicationRecord?.TermDepositOpenDate?.DateTimeContent,
            "TimeZoneCode": check response?.InterestApplicationRecord?.TermDepositOpenDate?.TimeZoneCode,
            "DaylightSavingIndicator": check response?.InterestApplicationRecord?.TermDepositOpenDate?.DaylightSavingIndicator,
            "DateTimeType": check response?.InterestApplicationRecord?.TermDepositOpenDate?.DateTimeType
        },
        "TermDepositAmount": {
            "AmountValue": check response?.InterestApplicationRecord?.TermDepositAmount?.AmountValue,
            "AmountCurrency": {
                "Currencycode": check response?.InterestApplicationRecord?.TermDepositAmount?.AmountCurrency?.Currencycode
            },
            "DecimalPointPosition": check response?.InterestApplicationRecord?.TermDepositAmount?.DecimalPointPosition,
            "AmountType": check response?.InterestApplicationRecord?.TermDepositAmount?.AmountType
        },
        "TermDepositDuration": {
            "Duration": check response?.InterestApplicationRecord?.TermDepositDuration?.Duration
        },
        "DepositTerm": check response?.InterestApplicationRecord?.DepositTerm,
        "VirtualAccountArrangementType": check response?.InterestApplicationRecord?.VirtualAccountArrangementType,
        "BankPlanArrangementType": check response?.InterestApplicationRecord?.BankPlanArrangementType,
        "CreditFacilityDataTime": {
            "DateTimeContent": check response?.InterestApplicationRecord?.CreditFacilityDataTime?.DateTimeContent,
            "TimeZoneCode": check response?.InterestApplicationRecord?.CreditFacilityDataTime?.TimeZoneCode,
            "DaylightSavingIndicator": check response?.InterestApplicationRecord?.CreditFacilityDataTime?.DaylightSavingIndicator,
            "DateTimeType": check response?.InterestApplicationRecord?.CreditFacilityDataTime?.DateTimeType
        },
        "CreditFacilityType": check response?.InterestApplicationRecord?.CreditFacilityType,
        "CreditFacilityRateType": check response?.InterestApplicationRecord?.CreditFacilityRateType,
        "CreditFacilityNumber": {
            "IdentifierValue": check response?.InterestApplicationRecord?.CreditFacilityNumber?.IdentifierValue,
            "IdentifierIssuerReference": {
                "PartyReference": check response?.InterestApplicationRecord?.CreditFacilityNumber?.IdentifierIssuerReference?.PartyReference,
                "InvolvementReference": check response?.InterestApplicationRecord?.CreditFacilityNumber?.IdentifierIssuerReference?.InvolvementReference
            },
            "IdentifierStartDate": {
                "DateTimeContent": check response?.InterestApplicationRecord?.CreditFacilityNumber?.IdentifierStartDate?.DateTimeContent,
                "TimeZoneCode": check response?.InterestApplicationRecord?.CreditFacilityNumber?.IdentifierStartDate?.TimeZoneCode,
                "DaylightSavingIndicator": check response?.InterestApplicationRecord?.CreditFacilityNumber?.IdentifierStartDate?.DaylightSavingIndicator,
                "DateTimeType": check response?.InterestApplicationRecord?.CreditFacilityNumber?.IdentifierStartDate?.DateTimeType
            },
            "IdentifierEndDate": {
                "DateTimeContent": check response?.InterestApplicationRecord?.CreditFacilityNumber?.IdentifierEndDate?.DateTimeContent,
                "TimeZoneCode": check response?.InterestApplicationRecord?.CreditFacilityNumber?.IdentifierEndDate?.TimeZoneCode,
                "DaylightSavingIndicator": check response?.InterestApplicationRecord?.CreditFacilityNumber?.IdentifierEndDate?.DaylightSavingIndicator,
                "DateTimeType": check response?.InterestApplicationRecord?.CreditFacilityNumber?.IdentifierEndDate?.DateTimeType
            }
        },
        "CreditFacilityAmount": {
            "AmountValue": check response?.InterestApplicationRecord?.CreditFacilityAmount?.AmountValue,
            "AmountCurrency": {
                "Currencycode": check response?.InterestApplicationRecord?.CreditFacilityAmount?.AmountCurrency?.Currencycode
            },
            "DecimalPointPosition": check response?.InterestApplicationRecord?.CreditFacilityAmount?.DecimalPointPosition,
            "AmountType": check response?.InterestApplicationRecord?.CreditFacilityAmount?.AmountType
        }
    },
    "InterestTransaction": {
        "InterestTransactionAmount": {
            "AmountValue": check response?.InterestTransaction?.InterestTransactionAmount?.AmountValue,
            "AmountCurrency": {
                "Currencycode": check response?.InterestTransaction?.InterestTransactionAmount?.AmountCurrency?.Currencycode
            },
            "DecimalPointPosition": check response?.InterestTransaction?.InterestTransactionAmount?.DecimalPointPosition,
            "AmountType": check response?.InterestTransaction?.InterestTransactionAmount?.AmountType
        },
        "InterestTransactionDescription": check response?.InterestTransaction?.InterestTransactionDescription,
        "InterestTransactionType": check response?.InterestTransaction?.InterestTransactionType,
        "AppliedInterestRate": {
            "RateValue": check response?.InterestTransaction?.AppliedInterestRate?.RateValue,
            "RateUnit": check response?.InterestTransaction?.AppliedInterestRate?.RateUnit,
            "RatePeriod": {
                "FromDateTime": {
                    "DateTimeContent": check response?.InterestTransaction?.AppliedInterestRate?.RatePeriod?.FromDateTime?.DateTimeContent,
                    "TimeZoneCode": check response?.InterestTransaction?.AppliedInterestRate?.RatePeriod?.FromDateTime?.TimeZoneCode,
                    "DaylightSavingIndicator": check response?.InterestTransaction?.AppliedInterestRate?.RatePeriod?.FromDateTime?.DaylightSavingIndicator,
                    "DateTimeType": check response?.InterestTransaction?.AppliedInterestRate?.RatePeriod?.FromDateTime?.DateTimeType
                },
                "ToDateTime": {
                    "DateTimeContent": check response?.InterestTransaction?.AppliedInterestRate?.RatePeriod?.ToDateTime?.DateTimeContent,
                    "TimeZoneCode": check response?.InterestTransaction?.AppliedInterestRate?.RatePeriod?.ToDateTime?.TimeZoneCode,
                    "DaylightSavingIndicator": check response?.InterestTransaction?.AppliedInterestRate?.RatePeriod?.ToDateTime?.DaylightSavingIndicator,
                    "DateTimeType": check response?.InterestTransaction?.AppliedInterestRate?.RatePeriod?.ToDateTime?.DateTimeType
                }
            },
            "RateCapitalUnit": check response?.InterestTransaction?.AppliedInterestRate?.RateCapitalUnit
        },
        "AppliedInteretType": check response?.InterestTransaction?.AppliedInteretType,
        "InterestCreditDebitIndicator": check response?.InterestTransaction?.InterestCreditDebitIndicator,
        "TransactionIdentification": {
            "IdentifierValue": check response?.InterestTransaction?.TransactionIdentification?.IdentifierValue,
            "IdentifierIssuerReference": {
                "PartyReference": check response?.InterestTransaction?.TransactionIdentification?.IdentifierIssuerReference?.PartyReference,
                "InvolvementReference": check response?.InterestTransaction?.TransactionIdentification?.IdentifierIssuerReference?.InvolvementReference
            },
            "IdentifierStartDate": {
                "DateTimeContent": check response?.InterestTransaction?.TransactionIdentification?.IdentifierStartDate?.DateTimeContent,
                "TimeZoneCode": check response?.InterestTransaction?.TransactionIdentification?.IdentifierStartDate?.TimeZoneCode,
                "DaylightSavingIndicator": check response?.InterestTransaction?.TransactionIdentification?.IdentifierStartDate?.DaylightSavingIndicator,
                "DateTimeType": check response?.InterestTransaction?.TransactionIdentification?.IdentifierStartDate?.DateTimeType
            },
            "IdentifierEndDate": {
                "DateTimeContent": check response?.InterestTransaction?.TransactionIdentification?.IdentifierEndDate?.DateTimeContent,
                "TimeZoneCode": check response?.InterestTransaction?.TransactionIdentification?.IdentifierEndDate?.TimeZoneCode,
                "DaylightSavingIndicator": check response?.InterestTransaction?.TransactionIdentification?.IdentifierEndDate?.DaylightSavingIndicator,
                "DateTimeType": check response?.InterestTransaction?.TransactionIdentification?.IdentifierEndDate?.DateTimeType
            }
        },
        "TransactionDate": {
            "TransactionDate": {
                "DateTimeContent": check response?.InterestTransaction?.TransactionDate?.TransactionDate?.DateTimeContent,
                "TimeZoneCode": check response?.InterestTransaction?.TransactionDate?.TransactionDate?.TimeZoneCode,
                "DaylightSavingIndicator": check response?.InterestTransaction?.TransactionDate?.TransactionDate?.DaylightSavingIndicator,
                "DateTimeType": check response?.InterestTransaction?.TransactionDate?.TransactionDate?.DateTimeType
            },
            "TransactionDateType": check response?.InterestTransaction?.TransactionDate?.TransactionDateType
        },
        "TransactionType": check response?.InterestTransaction?.TransactionType,
        "TransactionDescription": check response?.InterestTransaction?.TransactionDescription,
        "TransactionStatus": {
            "TransactionStatus": {
                "StatusReason": check response?.InterestTransaction?.TransactionStatus?.TransactionStatus?.StatusReason,
                "StatusDateTime": {
                    "DateTimeContent": check response?.InterestTransaction?.TransactionStatus?.TransactionStatus?.StatusDateTime?.DateTimeContent,
                    "TimeZoneCode": check response?.InterestTransaction?.TransactionStatus?.TransactionStatus?.StatusDateTime?.TimeZoneCode,
                    "DaylightSavingIndicator": check response?.InterestTransaction?.TransactionStatus?.TransactionStatus?.StatusDateTime?.DaylightSavingIndicator,
                    "DateTimeType": check response?.InterestTransaction?.TransactionStatus?.TransactionStatus?.StatusDateTime?.DateTimeType
                },
                "StatusValidityPeriod": {
                    "FromDateTime": {
                        "DateTimeContent": check response?.InterestTransaction?.TransactionStatus?.TransactionStatus?.StatusValidityPeriod?.FromDateTime?.DateTimeContent,
                        "TimeZoneCode": check response?.InterestTransaction?.TransactionStatus?.TransactionStatus?.StatusValidityPeriod?.FromDateTime?.TimeZoneCode,
                        "DaylightSavingIndicator": check response?.InterestTransaction?.TransactionStatus?.TransactionStatus?.StatusValidityPeriod?.FromDateTime?.DaylightSavingIndicator,
                        "DateTimeType": check response?.InterestTransaction?.TransactionStatus?.TransactionStatus?.StatusValidityPeriod?.FromDateTime?.DateTimeType
                    },
                    "ToDateTime": {
                        "DateTimeContent": check response?.InterestTransaction?.TransactionStatus?.TransactionStatus?.StatusValidityPeriod?.ToDateTime?.DateTimeContent,
                        "TimeZoneCode": check response?.InterestTransaction?.TransactionStatus?.TransactionStatus?.StatusValidityPeriod?.ToDateTime?.TimeZoneCode,
                        "DaylightSavingIndicator": check response?.InterestTransaction?.TransactionStatus?.TransactionStatus?.StatusValidityPeriod?.ToDateTime?.DaylightSavingIndicator,
                        "DateTimeType": check response?.InterestTransaction?.TransactionStatus?.TransactionStatus?.StatusValidityPeriod?.ToDateTime?.DateTimeType
                    }
                },
                "StatusInvolvedPartyReference": {
                    "PartyReference": check response?.InterestTransaction?.TransactionStatus?.TransactionStatus?.StatusInvolvedPartyReference?.PartyReference,
                    "InvolvementReference": check response?.InterestTransaction?.TransactionStatus?.TransactionStatus?.StatusInvolvedPartyReference?.InvolvementReference
                }
            },
            "TransactionStatusType": check response?.InterestTransaction?.TransactionStatus?.TransactionStatusType
        },
        "TransactionName": {
            "Name": check response?.InterestTransaction?.TransactionName?.Name
        }
    },
    "TransactionDescription": check response?.TransactionDescription,
    "TransactionRateType": check response?.TransactionRateType,
    "TransactionInterestCharge": {
        "AmountValue": check response?.TransactionInterestCharge?.AmountValue,
        "AmountCurrency": {
            "Currencycode": check response?.TransactionInterestCharge?.AmountCurrency?.Currencycode
        },
        "DecimalPointPosition": check response?.TransactionInterestCharge?.DecimalPointPosition,
        "AmountType": check response?.TransactionInterestCharge?.AmountType
    },
    "ManagedPositionLimits": {
        "LimitType": check response?.ManagedPositionLimits?.LimitType,
        "LimitCurrency": {
            "Currencycode": check response?.ManagedPositionLimits?.LimitCurrency?.Currencycode
        },
        "LimitValidityPeriod": {
            "FromDateTime": {
                "DateTimeContent": check response?.ManagedPositionLimits?.LimitValidityPeriod?.FromDateTime?.DateTimeContent,
                "TimeZoneCode": check response?.ManagedPositionLimits?.LimitValidityPeriod?.FromDateTime?.TimeZoneCode,
                "DaylightSavingIndicator": check response?.ManagedPositionLimits?.LimitValidityPeriod?.FromDateTime?.DaylightSavingIndicator,
                "DateTimeType": check response?.ManagedPositionLimits?.LimitValidityPeriod?.FromDateTime?.DateTimeType
            },
            "ToDateTime": {
                "DateTimeContent": check response?.ManagedPositionLimits?.LimitValidityPeriod?.ToDateTime?.DateTimeContent,
                "TimeZoneCode": check response?.ManagedPositionLimits?.LimitValidityPeriod?.ToDateTime?.TimeZoneCode,
                "DaylightSavingIndicator": check response?.ManagedPositionLimits?.LimitValidityPeriod?.ToDateTime?.DaylightSavingIndicator,
                "DateTimeType": check response?.ManagedPositionLimits?.LimitValidityPeriod?.ToDateTime?.DateTimeType
            }
        },
        "LimitAmount": {
            "AmountValue": check response?.ManagedPositionLimits?.LimitAmount?.AmountValue,
            "AmountCurrency": {
                "Currencycode": check response?.ManagedPositionLimits?.LimitAmount?.AmountCurrency?.Currencycode
            },
            "DecimalPointPosition": check response?.ManagedPositionLimits?.LimitAmount?.DecimalPointPosition,
            "AmountType": check response?.ManagedPositionLimits?.LimitAmount?.AmountType
        },
        "LimitStatus": {
            "LimitStatus": {
                "StatusReason": check response?.ManagedPositionLimits?.LimitStatus?.LimitStatus?.StatusReason,
                "StatusDateTime": {
                    "DateTimeContent": check response?.ManagedPositionLimits?.LimitStatus?.LimitStatus?.StatusDateTime?.DateTimeContent,
                    "TimeZoneCode": check response?.ManagedPositionLimits?.LimitStatus?.LimitStatus?.StatusDateTime?.TimeZoneCode,
                    "DaylightSavingIndicator": check response?.ManagedPositionLimits?.LimitStatus?.LimitStatus?.StatusDateTime?.DaylightSavingIndicator,
                    "DateTimeType": check response?.ManagedPositionLimits?.LimitStatus?.LimitStatus?.StatusDateTime?.DateTimeType
                },
                "StatusValidityPeriod": {
                    "FromDateTime": {
                        "DateTimeContent": check response?.ManagedPositionLimits?.LimitStatus?.LimitStatus?.StatusValidityPeriod?.FromDateTime?.DateTimeContent,
                        "TimeZoneCode": check response?.ManagedPositionLimits?.LimitStatus?.LimitStatus?.StatusValidityPeriod?.FromDateTime?.TimeZoneCode,
                        "DaylightSavingIndicator": check response?.ManagedPositionLimits?.LimitStatus?.LimitStatus?.StatusValidityPeriod?.FromDateTime?.DaylightSavingIndicator,
                        "DateTimeType": check response?.ManagedPositionLimits?.LimitStatus?.LimitStatus?.StatusValidityPeriod?.FromDateTime?.DateTimeType
                    },
                    "ToDateTime": {
                        "DateTimeContent": check response?.ManagedPositionLimits?.LimitStatus?.LimitStatus?.StatusValidityPeriod?.ToDateTime?.DateTimeContent,
                        "TimeZoneCode": check response?.ManagedPositionLimits?.LimitStatus?.LimitStatus?.StatusValidityPeriod?.ToDateTime?.TimeZoneCode,
                        "DaylightSavingIndicator": check response?.ManagedPositionLimits?.LimitStatus?.LimitStatus?.StatusValidityPeriod?.ToDateTime?.DaylightSavingIndicator,
                        "DateTimeType": check response?.ManagedPositionLimits?.LimitStatus?.LimitStatus?.StatusValidityPeriod?.ToDateTime?.DateTimeType
                    }
                },
                "StatusInvolvedPartyReference": {
                    "PartyReference": check response?.ManagedPositionLimits?.LimitStatus?.LimitStatus?.StatusInvolvedPartyReference?.PartyReference,
                    "InvolvementReference": check response?.ManagedPositionLimits?.LimitStatus?.LimitStatus?.StatusInvolvedPartyReference?.InvolvementReference
                }
            },
            "LimitStatusType": check response?.ManagedPositionLimits?.LimitStatus?.LimitStatusType
        },
        "LimitRate": {
            "RateValue": check response?.ManagedPositionLimits?.LimitRate?.RateValue,
            "RateUnit": check response?.ManagedPositionLimits?.LimitRate?.RateUnit,
            "RatePeriod": {
                "FromDateTime": {
                    "DateTimeContent": check response?.ManagedPositionLimits?.LimitRate?.RatePeriod?.FromDateTime?.DateTimeContent,
                    "TimeZoneCode": check response?.ManagedPositionLimits?.LimitRate?.RatePeriod?.FromDateTime?.TimeZoneCode,
                    "DaylightSavingIndicator": check response?.ManagedPositionLimits?.LimitRate?.RatePeriod?.FromDateTime?.DaylightSavingIndicator,
                    "DateTimeType": check response?.ManagedPositionLimits?.LimitRate?.RatePeriod?.FromDateTime?.DateTimeType
                },
                "ToDateTime": {
                    "DateTimeContent": check response?.ManagedPositionLimits?.LimitRate?.RatePeriod?.ToDateTime?.DateTimeContent,
                    "TimeZoneCode": check response?.ManagedPositionLimits?.LimitRate?.RatePeriod?.ToDateTime?.TimeZoneCode,
                    "DaylightSavingIndicator": check response?.ManagedPositionLimits?.LimitRate?.RatePeriod?.ToDateTime?.DaylightSavingIndicator,
                    "DateTimeType": check response?.ManagedPositionLimits?.LimitRate?.RatePeriod?.ToDateTime?.DateTimeType
                }
            },
            "RateCapitalUnit": check response?.ManagedPositionLimits?.LimitRate?.RateCapitalUnit
        },
        "LimitFrequency": {
            "FrequencyCode": check response?.ManagedPositionLimits?.LimitFrequency?.FrequencyCode,
            "FrequencyName": {
                "Name": check response?.ManagedPositionLimits?.LimitFrequency?.FrequencyName?.Name
            },
            "FrequencyDefinition": check response?.ManagedPositionLimits?.LimitFrequency?.FrequencyDefinition
        },
        "LimitIdentification": {
            "IdentifierValue": check response?.ManagedPositionLimits?.LimitIdentification?.IdentifierValue,
            "IdentifierIssuerReference": {
                "PartyReference": check response?.ManagedPositionLimits?.LimitIdentification?.IdentifierIssuerReference?.PartyReference,
                "InvolvementReference": check response?.ManagedPositionLimits?.LimitIdentification?.IdentifierIssuerReference?.InvolvementReference
            },
            "IdentifierStartDate": {
                "DateTimeContent": check response?.ManagedPositionLimits?.LimitIdentification?.IdentifierStartDate?.DateTimeContent,
                "TimeZoneCode": check response?.ManagedPositionLimits?.LimitIdentification?.IdentifierStartDate?.TimeZoneCode,
                "DaylightSavingIndicator": check response?.ManagedPositionLimits?.LimitIdentification?.IdentifierStartDate?.DaylightSavingIndicator,
                "DateTimeType": check response?.ManagedPositionLimits?.LimitIdentification?.IdentifierStartDate?.DateTimeType
            },
            "IdentifierEndDate": {
                "DateTimeContent": check response?.ManagedPositionLimits?.LimitIdentification?.IdentifierEndDate?.DateTimeContent,
                "TimeZoneCode": check response?.ManagedPositionLimits?.LimitIdentification?.IdentifierEndDate?.TimeZoneCode,
                "DaylightSavingIndicator": check response?.ManagedPositionLimits?.LimitIdentification?.IdentifierEndDate?.DaylightSavingIndicator,
                "DateTimeType": check response?.ManagedPositionLimits?.LimitIdentification?.IdentifierEndDate?.DateTimeType
            }
        },
        "LimitStartDatetime": {
            "DateTimeContent": check response?.ManagedPositionLimits?.LimitStartDatetime?.DateTimeContent,
            "TimeZoneCode": check response?.ManagedPositionLimits?.LimitStartDatetime?.TimeZoneCode,
            "DaylightSavingIndicator": check response?.ManagedPositionLimits?.LimitStartDatetime?.DaylightSavingIndicator,
            "DateTimeType": check response?.ManagedPositionLimits?.LimitStartDatetime?.DateTimeType
        },
        "LimitCreditDebitIndicator": check response?.ManagedPositionLimits?.LimitCreditDebitIndicator,
        "LimitAmountType": check response?.ManagedPositionLimits?.LimitAmountType,
        "LoanOriginationDate": {
            "DateContent": check response?.ManagedPositionLimits?.LoanOriginationDate?.DateContent
        },
        "LoanMaturityDate": {
            "DateContent": check response?.ManagedPositionLimits?.LoanMaturityDate?.DateContent
        },
        "LoanEndDate": {
            "DateContent": check response?.ManagedPositionLimits?.LoanEndDate?.DateContent
        },
        "LoanAmount": {
            "AmountValue": check response?.ManagedPositionLimits?.LoanAmount?.AmountValue,
            "AmountCurrency": {
                "Currencycode": check response?.ManagedPositionLimits?.LoanAmount?.AmountCurrency?.Currencycode
            },
            "DecimalPointPosition": check response?.ManagedPositionLimits?.LoanAmount?.DecimalPointPosition,
            "AmountType": check response?.ManagedPositionLimits?.LoanAmount?.AmountType
        },
        "LoanArrangementType": check response?.ManagedPositionLimits?.LoanArrangementType,
        "ArrangementAction": {
            "Action": check response?.ManagedPositionLimits?.ArrangementAction?.Action
        },
        "ArrangementStartDate": {
            "DateTimeContent": check response?.ManagedPositionLimits?.ArrangementStartDate?.DateTimeContent,
            "TimeZoneCode": check response?.ManagedPositionLimits?.ArrangementStartDate?.TimeZoneCode,
            "DaylightSavingIndicator": check response?.ManagedPositionLimits?.ArrangementStartDate?.DaylightSavingIndicator,
            "DateTimeType": check response?.ManagedPositionLimits?.ArrangementStartDate?.DateTimeType
        },
        "ArrangementEndDate": {
            "DateTimeContent": check response?.ManagedPositionLimits?.ArrangementEndDate?.DateTimeContent,
            "TimeZoneCode": check response?.ManagedPositionLimits?.ArrangementEndDate?.TimeZoneCode,
            "DaylightSavingIndicator": check response?.ManagedPositionLimits?.ArrangementEndDate?.DaylightSavingIndicator,
            "DateTimeType": check response?.ManagedPositionLimits?.ArrangementEndDate?.DateTimeType
        },
        "ArrangementStatus": {
            "ArrangementStatus": {
                "StatusReason": check response?.ManagedPositionLimits?.ArrangementStatus?.ArrangementStatus?.StatusReason,
                "StatusDateTime": {
                    "DateTimeContent": check response?.ManagedPositionLimits?.ArrangementStatus?.ArrangementStatus?.StatusDateTime?.DateTimeContent,
                    "TimeZoneCode": check response?.ManagedPositionLimits?.ArrangementStatus?.ArrangementStatus?.StatusDateTime?.TimeZoneCode,
                    "DaylightSavingIndicator": check response?.ManagedPositionLimits?.ArrangementStatus?.ArrangementStatus?.StatusDateTime?.DaylightSavingIndicator,
                    "DateTimeType": check response?.ManagedPositionLimits?.ArrangementStatus?.ArrangementStatus?.StatusDateTime?.DateTimeType
                },
                "StatusValidityPeriod": {
                    "FromDateTime": {
                        "DateTimeContent": check response?.ManagedPositionLimits?.ArrangementStatus?.ArrangementStatus?.StatusValidityPeriod?.FromDateTime?.DateTimeContent,
                        "TimeZoneCode": check response?.ManagedPositionLimits?.ArrangementStatus?.ArrangementStatus?.StatusValidityPeriod?.FromDateTime?.TimeZoneCode,
                        "DaylightSavingIndicator": check response?.ManagedPositionLimits?.ArrangementStatus?.ArrangementStatus?.StatusValidityPeriod?.FromDateTime?.DaylightSavingIndicator,
                        "DateTimeType": check response?.ManagedPositionLimits?.ArrangementStatus?.ArrangementStatus?.StatusValidityPeriod?.FromDateTime?.DateTimeType
                    },
                    "ToDateTime": {
                        "DateTimeContent": check response?.ManagedPositionLimits?.ArrangementStatus?.ArrangementStatus?.StatusValidityPeriod?.ToDateTime?.DateTimeContent,
                        "TimeZoneCode": check response?.ManagedPositionLimits?.ArrangementStatus?.ArrangementStatus?.StatusValidityPeriod?.ToDateTime?.TimeZoneCode,
                        "DaylightSavingIndicator": check response?.ManagedPositionLimits?.ArrangementStatus?.ArrangementStatus?.StatusValidityPeriod?.ToDateTime?.DaylightSavingIndicator,
                        "DateTimeType": check response?.ManagedPositionLimits?.ArrangementStatus?.ArrangementStatus?.StatusValidityPeriod?.ToDateTime?.DateTimeType
                    }
                },
                "StatusInvolvedPartyReference": {
                    "PartyReference": check response?.ManagedPositionLimits?.ArrangementStatus?.ArrangementStatus?.StatusInvolvedPartyReference?.PartyReference,
                    "InvolvementReference": check response?.ManagedPositionLimits?.ArrangementStatus?.ArrangementStatus?.StatusInvolvedPartyReference?.InvolvementReference
                }
            },
            "ArrangementStatusType": check response?.ManagedPositionLimits?.ArrangementStatus?.ArrangementStatusType
        },
        "ArrangementSubjectMatter": {
            "Subject": check response?.ManagedPositionLimits?.ArrangementSubjectMatter?.Subject
        },
        "Arrangementtype": check response?.ManagedPositionLimits?.Arrangementtype,
        "ArrangementIdentification": {
            "IdentifierValue": check response?.ManagedPositionLimits?.ArrangementIdentification?.IdentifierValue,
            "IdentifierIssuerReference": {
                "PartyReference": check response?.ManagedPositionLimits?.ArrangementIdentification?.IdentifierIssuerReference?.PartyReference,
                "InvolvementReference": check response?.ManagedPositionLimits?.ArrangementIdentification?.IdentifierIssuerReference?.InvolvementReference
            },
            "IdentifierStartDate": {
                "DateTimeContent": check response?.ManagedPositionLimits?.ArrangementIdentification?.IdentifierStartDate?.DateTimeContent,
                "TimeZoneCode": check response?.ManagedPositionLimits?.ArrangementIdentification?.IdentifierStartDate?.TimeZoneCode,
                "DaylightSavingIndicator": check response?.ManagedPositionLimits?.ArrangementIdentification?.IdentifierStartDate?.DaylightSavingIndicator,
                "DateTimeType": check response?.ManagedPositionLimits?.ArrangementIdentification?.IdentifierStartDate?.DateTimeType
            },
            "IdentifierEndDate": {
                "DateTimeContent": check response?.ManagedPositionLimits?.ArrangementIdentification?.IdentifierEndDate?.DateTimeContent,
                "TimeZoneCode": check response?.ManagedPositionLimits?.ArrangementIdentification?.IdentifierEndDate?.TimeZoneCode,
                "DaylightSavingIndicator": check response?.ManagedPositionLimits?.ArrangementIdentification?.IdentifierEndDate?.DaylightSavingIndicator,
                "DateTimeType": check response?.ManagedPositionLimits?.ArrangementIdentification?.IdentifierEndDate?.DateTimeType
            }
        },
        "SavingsAccountArrangementType": check response?.ManagedPositionLimits?.SavingsAccountArrangementType,
        "SavingsAccountArrangementProductFeatureType": {
            "ProductFeatureTypeValues": check response?.ManagedPositionLimits?.SavingsAccountArrangementProductFeatureType?.ProductFeatureTypeValues
        },
        "ProductArrangementType": check response?.ManagedPositionLimits?.ProductArrangementType,
        "CurrentAccountArrangementType": check response?.ManagedPositionLimits?.CurrentAccountArrangementType,
        "CurrentAccountArrangementProductFeatureType": {
            "ProductFeatureTypeValues": check response?.ManagedPositionLimits?.CurrentAccountArrangementProductFeatureType?.ProductFeatureTypeValues
        },
        "TermDepositArrangementType": check response?.ManagedPositionLimits?.TermDepositArrangementType,
        "TermDepositArrangementProductFeatureType": {
            "ProductFeatureTypeValues": check response?.ManagedPositionLimits?.TermDepositArrangementProductFeatureType?.ProductFeatureTypeValues
        },
        "TermDepositMaturityDate": {
            "DateTimeContent": check response?.ManagedPositionLimits?.TermDepositMaturityDate?.DateTimeContent,
            "TimeZoneCode": check response?.ManagedPositionLimits?.TermDepositMaturityDate?.TimeZoneCode,
            "DaylightSavingIndicator": check response?.ManagedPositionLimits?.TermDepositMaturityDate?.DaylightSavingIndicator,
            "DateTimeType": check response?.ManagedPositionLimits?.TermDepositMaturityDate?.DateTimeType
        },
        "TermDepositOpenDate": {
            "DateTimeContent": check response?.ManagedPositionLimits?.TermDepositOpenDate?.DateTimeContent,
            "TimeZoneCode": check response?.ManagedPositionLimits?.TermDepositOpenDate?.TimeZoneCode,
            "DaylightSavingIndicator": check response?.ManagedPositionLimits?.TermDepositOpenDate?.DaylightSavingIndicator,
            "DateTimeType": check response?.ManagedPositionLimits?.TermDepositOpenDate?.DateTimeType
        },
        "TermDepositAmount": {
            "AmountValue": check response?.ManagedPositionLimits?.TermDepositAmount?.AmountValue,
            "AmountCurrency": {
                "Currencycode": check response?.ManagedPositionLimits?.TermDepositAmount?.AmountCurrency?.Currencycode
            },
            "DecimalPointPosition": check response?.ManagedPositionLimits?.TermDepositAmount?.DecimalPointPosition,
            "AmountType": check response?.ManagedPositionLimits?.TermDepositAmount?.AmountType
        },
        "TermDepositDuration": {
            "Duration": check response?.ManagedPositionLimits?.TermDepositDuration?.Duration
        },
        "DepositTerm": check response?.ManagedPositionLimits?.DepositTerm,
        "DepositType": check response?.ManagedPositionLimits?.DepositType,
        "DepositLimit": {
            "LimitArrangement": check response?.ManagedPositionLimits?.DepositLimit?.LimitArrangement
        },
        "DepositLimitType": check response?.ManagedPositionLimits?.DepositLimitType,
        "DepositAmount": {
            "AmountValue": check response?.ManagedPositionLimits?.DepositAmount?.AmountValue,
            "AmountCurrency": {
                "Currencycode": check response?.ManagedPositionLimits?.DepositAmount?.AmountCurrency?.Currencycode
            },
            "DecimalPointPosition": check response?.ManagedPositionLimits?.DepositAmount?.DecimalPointPosition,
            "AmountType": check response?.ManagedPositionLimits?.DepositAmount?.AmountType
        },
        "DepositDatetime": {
            "DateTimeContent": check response?.ManagedPositionLimits?.DepositDatetime?.DateTimeContent,
            "TimeZoneCode": check response?.ManagedPositionLimits?.DepositDatetime?.TimeZoneCode,
            "DaylightSavingIndicator": check response?.ManagedPositionLimits?.DepositDatetime?.DaylightSavingIndicator,
            "DateTimeType": check response?.ManagedPositionLimits?.DepositDatetime?.DateTimeType
        },
        "DepositDatetimeType": check response?.ManagedPositionLimits?.DepositDatetimeType,
        "DepositAmountType": check response?.ManagedPositionLimits?.DepositAmountType,
        "DepositInterest": {
            "InterestArrangement": check response?.ManagedPositionLimits?.DepositInterest?.InterestArrangement
        },
        "DepositDuration": {
            "Duration": check response?.ManagedPositionLimits?.DepositDuration?.Duration
        },
        "DepositRate": {
            "RateValue": check response?.ManagedPositionLimits?.DepositRate?.RateValue,
            "RateUnit": check response?.ManagedPositionLimits?.DepositRate?.RateUnit,
            "RatePeriod": {
                "FromDateTime": {
                    "DateTimeContent": check response?.ManagedPositionLimits?.DepositRate?.RatePeriod?.FromDateTime?.DateTimeContent,
                    "TimeZoneCode": check response?.ManagedPositionLimits?.DepositRate?.RatePeriod?.FromDateTime?.TimeZoneCode,
                    "DaylightSavingIndicator": check response?.ManagedPositionLimits?.DepositRate?.RatePeriod?.FromDateTime?.DaylightSavingIndicator,
                    "DateTimeType": check response?.ManagedPositionLimits?.DepositRate?.RatePeriod?.FromDateTime?.DateTimeType
                },
                "ToDateTime": {
                    "DateTimeContent": check response?.ManagedPositionLimits?.DepositRate?.RatePeriod?.ToDateTime?.DateTimeContent,
                    "TimeZoneCode": check response?.ManagedPositionLimits?.DepositRate?.RatePeriod?.ToDateTime?.TimeZoneCode,
                    "DaylightSavingIndicator": check response?.ManagedPositionLimits?.DepositRate?.RatePeriod?.ToDateTime?.DaylightSavingIndicator,
                    "DateTimeType": check response?.ManagedPositionLimits?.DepositRate?.RatePeriod?.ToDateTime?.DateTimeType
                }
            },
            "RateCapitalUnit": check response?.ManagedPositionLimits?.DepositRate?.RateCapitalUnit
        },
        "ServiceType": check response?.ManagedPositionLimits?.ServiceType,
        "PaymentDate": {
            "PaymentDate": {
                "DateTimeContent": check response?.ManagedPositionLimits?.PaymentDate?.PaymentDate?.DateTimeContent,
                "TimeZoneCode": check response?.ManagedPositionLimits?.PaymentDate?.PaymentDate?.TimeZoneCode,
                "DaylightSavingIndicator": check response?.ManagedPositionLimits?.PaymentDate?.PaymentDate?.DaylightSavingIndicator,
                "DateTimeType": check response?.ManagedPositionLimits?.PaymentDate?.PaymentDate?.DateTimeType
            },
            "PaymentDateType": check response?.ManagedPositionLimits?.PaymentDate?.PaymentDateType
        },
        "PaymentPeriod": {
            "FromDateTime": {
                "DateTimeContent": check response?.ManagedPositionLimits?.PaymentPeriod?.FromDateTime?.DateTimeContent,
                "TimeZoneCode": check response?.ManagedPositionLimits?.PaymentPeriod?.FromDateTime?.TimeZoneCode,
                "DaylightSavingIndicator": check response?.ManagedPositionLimits?.PaymentPeriod?.FromDateTime?.DaylightSavingIndicator,
                "DateTimeType": check response?.ManagedPositionLimits?.PaymentPeriod?.FromDateTime?.DateTimeType
            },
            "ToDateTime": {
                "DateTimeContent": check response?.ManagedPositionLimits?.PaymentPeriod?.ToDateTime?.DateTimeContent,
                "TimeZoneCode": check response?.ManagedPositionLimits?.PaymentPeriod?.ToDateTime?.TimeZoneCode,
                "DaylightSavingIndicator": check response?.ManagedPositionLimits?.PaymentPeriod?.ToDateTime?.DaylightSavingIndicator,
                "DateTimeType": check response?.ManagedPositionLimits?.PaymentPeriod?.ToDateTime?.DateTimeType
            }
        },
        "PaymentPurpose": check response?.ManagedPositionLimits?.PaymentPurpose,
        "PaymentAmountAndCurrency": {
            "PaymentAmountAndCurrencyType": check response?.ManagedPositionLimits?.PaymentAmountAndCurrency?.PaymentAmountAndCurrencyType,
            "PaymentAmountAndCurrency": {
                "AmountValue": check response?.ManagedPositionLimits?.PaymentAmountAndCurrency?.PaymentAmountAndCurrency?.AmountValue,
                "AmountCurrency": {
                    "Currencycode": check response?.ManagedPositionLimits?.PaymentAmountAndCurrency?.PaymentAmountAndCurrency?.AmountCurrency?.Currencycode
                },
                "DecimalPointPosition": check response?.ManagedPositionLimits?.PaymentAmountAndCurrency?.PaymentAmountAndCurrency?.DecimalPointPosition,
                "AmountType": check response?.ManagedPositionLimits?.PaymentAmountAndCurrency?.PaymentAmountAndCurrency?.AmountType
            }
        },
        "PaymentMethod": check response?.ManagedPositionLimits?.PaymentMethod,
        "PaymentType": check response?.ManagedPositionLimits?.PaymentType,
        "PaymentTime": check response?.ManagedPositionLimits?.PaymentTime,
        "RemittanceDeliveryMethod": check response?.ManagedPositionLimits?.RemittanceDeliveryMethod,
        "RemittanceLocation": {
            "ContactPointType": check response?.ManagedPositionLimits?.RemittanceLocation?.ContactPointType,
            "PartyLocationType": check response?.ManagedPositionLimits?.RemittanceLocation?.PartyLocationType,
            "LocationReference": {
                "LocationDescription": check response?.ManagedPositionLimits?.RemittanceLocation?.LocationReference?.LocationDescription,
                "LocationDateTime": {
                    "DateTimeContent": check response?.ManagedPositionLimits?.RemittanceLocation?.LocationReference?.LocationDateTime?.DateTimeContent,
                    "TimeZoneCode": check response?.ManagedPositionLimits?.RemittanceLocation?.LocationReference?.LocationDateTime?.TimeZoneCode,
                    "DaylightSavingIndicator": check response?.ManagedPositionLimits?.RemittanceLocation?.LocationReference?.LocationDateTime?.DaylightSavingIndicator,
                    "DateTimeType": check response?.ManagedPositionLimits?.RemittanceLocation?.LocationReference?.LocationDateTime?.DateTimeType
                },
                "LocationStatus": {
                    "StatusReason": check response?.ManagedPositionLimits?.RemittanceLocation?.LocationReference?.LocationStatus?.StatusReason,
                    "StatusDateTime": {
                        "DateTimeContent": check response?.ManagedPositionLimits?.RemittanceLocation?.LocationReference?.LocationStatus?.StatusDateTime?.DateTimeContent,
                        "TimeZoneCode": check response?.ManagedPositionLimits?.RemittanceLocation?.LocationReference?.LocationStatus?.StatusDateTime?.TimeZoneCode,
                        "DaylightSavingIndicator": check response?.ManagedPositionLimits?.RemittanceLocation?.LocationReference?.LocationStatus?.StatusDateTime?.DaylightSavingIndicator,
                        "DateTimeType": check response?.ManagedPositionLimits?.RemittanceLocation?.LocationReference?.LocationStatus?.StatusDateTime?.DateTimeType
                    },
                    "StatusValidityPeriod": {
                        "FromDateTime": {
                            "DateTimeContent": check response?.ManagedPositionLimits?.RemittanceLocation?.LocationReference?.LocationStatus?.StatusValidityPeriod?.FromDateTime?.DateTimeContent,
                            "TimeZoneCode": check response?.ManagedPositionLimits?.RemittanceLocation?.LocationReference?.LocationStatus?.StatusValidityPeriod?.FromDateTime?.TimeZoneCode,
                            "DaylightSavingIndicator": check response?.ManagedPositionLimits?.RemittanceLocation?.LocationReference?.LocationStatus?.StatusValidityPeriod?.FromDateTime?.DaylightSavingIndicator,
                            "DateTimeType": check response?.ManagedPositionLimits?.RemittanceLocation?.LocationReference?.LocationStatus?.StatusValidityPeriod?.FromDateTime?.DateTimeType
                        },
                        "ToDateTime": {
                            "DateTimeContent": check response?.ManagedPositionLimits?.RemittanceLocation?.LocationReference?.LocationStatus?.StatusValidityPeriod?.ToDateTime?.DateTimeContent,
                            "TimeZoneCode": check response?.ManagedPositionLimits?.RemittanceLocation?.LocationReference?.LocationStatus?.StatusValidityPeriod?.ToDateTime?.TimeZoneCode,
                            "DaylightSavingIndicator": check response?.ManagedPositionLimits?.RemittanceLocation?.LocationReference?.LocationStatus?.StatusValidityPeriod?.ToDateTime?.DaylightSavingIndicator,
                            "DateTimeType": check response?.ManagedPositionLimits?.RemittanceLocation?.LocationReference?.LocationStatus?.StatusValidityPeriod?.ToDateTime?.DateTimeType
                        }
                    },
                    "StatusInvolvedPartyReference": {
                        "PartyReference": check response?.ManagedPositionLimits?.RemittanceLocation?.LocationReference?.LocationStatus?.StatusInvolvedPartyReference?.PartyReference,
                        "InvolvementReference": check response?.ManagedPositionLimits?.RemittanceLocation?.LocationReference?.LocationStatus?.StatusInvolvedPartyReference?.InvolvementReference
                    }
                },
                "LocationType": check response?.ManagedPositionLimits?.RemittanceLocation?.LocationReference?.LocationType,
                "LocationZoningType": check response?.ManagedPositionLimits?.RemittanceLocation?.LocationReference?.LocationZoningType,
                "LocationNeighborhoodType": check response?.ManagedPositionLimits?.RemittanceLocation?.LocationReference?.LocationNeighborhoodType,
                "LocationConstructionType": check response?.ManagedPositionLimits?.RemittanceLocation?.LocationReference?.LocationConstructionType,
                "LocationOccupancyType": check response?.ManagedPositionLimits?.RemittanceLocation?.LocationReference?.LocationOccupancyType,
                "LocationValue": check response?.ManagedPositionLimits?.RemittanceLocation?.LocationReference?.LocationValue,
                "LocationCapacity": check response?.ManagedPositionLimits?.RemittanceLocation?.LocationReference?.LocationCapacity,
                "LocationIdentification": {
                    "IdentifierValue": check response?.ManagedPositionLimits?.RemittanceLocation?.LocationReference?.LocationIdentification?.IdentifierValue,
                    "IdentifierIssuerReference": {
                        "PartyReference": check response?.ManagedPositionLimits?.RemittanceLocation?.LocationReference?.LocationIdentification?.IdentifierIssuerReference?.PartyReference,
                        "InvolvementReference": check response?.ManagedPositionLimits?.RemittanceLocation?.LocationReference?.LocationIdentification?.IdentifierIssuerReference?.InvolvementReference
                    },
                    "IdentifierStartDate": {
                        "DateTimeContent": check response?.ManagedPositionLimits?.RemittanceLocation?.LocationReference?.LocationIdentification?.IdentifierStartDate?.DateTimeContent,
                        "TimeZoneCode": check response?.ManagedPositionLimits?.RemittanceLocation?.LocationReference?.LocationIdentification?.IdentifierStartDate?.TimeZoneCode,
                        "DaylightSavingIndicator": check response?.ManagedPositionLimits?.RemittanceLocation?.LocationReference?.LocationIdentification?.IdentifierStartDate?.DaylightSavingIndicator,
                        "DateTimeType": check response?.ManagedPositionLimits?.RemittanceLocation?.LocationReference?.LocationIdentification?.IdentifierStartDate?.DateTimeType
                    },
                    "IdentifierEndDate": {
                        "DateTimeContent": check response?.ManagedPositionLimits?.RemittanceLocation?.LocationReference?.LocationIdentification?.IdentifierEndDate?.DateTimeContent,
                        "TimeZoneCode": check response?.ManagedPositionLimits?.RemittanceLocation?.LocationReference?.LocationIdentification?.IdentifierEndDate?.TimeZoneCode,
                        "DaylightSavingIndicator": check response?.ManagedPositionLimits?.RemittanceLocation?.LocationReference?.LocationIdentification?.IdentifierEndDate?.DaylightSavingIndicator,
                        "DateTimeType": check response?.ManagedPositionLimits?.RemittanceLocation?.LocationReference?.LocationIdentification?.IdentifierEndDate?.DateTimeType
                    }
                },
                "LocationAddress": check response?.ManagedPositionLimits?.RemittanceLocation?.LocationReference?.LocationAddress,
                "LocationName": {
                    "Name": check response?.ManagedPositionLimits?.RemittanceLocation?.LocationReference?.LocationName?.Name
                },
                "LocationTimeZone": check response?.ManagedPositionLimits?.RemittanceLocation?.LocationReference?.LocationTimeZone
            },
            "PartyReference": {
                "PartyName": {
                    "Name": check response?.ManagedPositionLimits?.RemittanceLocation?.PartyReference?.PartyName?.Name
                },
                "PartyType": check response?.ManagedPositionLimits?.RemittanceLocation?.PartyReference?.PartyType,
                "PartyDateTime": {
                    "DateTimeContent": check response?.ManagedPositionLimits?.RemittanceLocation?.PartyReference?.PartyDateTime?.DateTimeContent,
                    "TimeZoneCode": check response?.ManagedPositionLimits?.RemittanceLocation?.PartyReference?.PartyDateTime?.TimeZoneCode,
                    "DaylightSavingIndicator": check response?.ManagedPositionLimits?.RemittanceLocation?.PartyReference?.PartyDateTime?.DaylightSavingIndicator,
                    "DateTimeType": check response?.ManagedPositionLimits?.RemittanceLocation?.PartyReference?.PartyDateTime?.DateTimeType
                },
                "PartyIdentification": {
                    "PartyIdentificationType": check response?.ManagedPositionLimits?.RemittanceLocation?.PartyReference?.PartyIdentification?.PartyIdentificationType,
                    "PartyIdentification": {
                        "IdentifierValue": check response?.ManagedPositionLimits?.RemittanceLocation?.PartyReference?.PartyIdentification?.PartyIdentification?.IdentifierValue,
                        "IdentifierIssuerReference": {
                            "PartyReference": check response?.ManagedPositionLimits?.RemittanceLocation?.PartyReference?.PartyIdentification?.PartyIdentification?.IdentifierIssuerReference?.PartyReference,
                            "InvolvementReference": check response?.ManagedPositionLimits?.RemittanceLocation?.PartyReference?.PartyIdentification?.PartyIdentification?.IdentifierIssuerReference?.InvolvementReference
                        },
                        "IdentifierStartDate": {
                            "DateTimeContent": check response?.ManagedPositionLimits?.RemittanceLocation?.PartyReference?.PartyIdentification?.PartyIdentification?.IdentifierStartDate?.DateTimeContent,
                            "TimeZoneCode": check response?.ManagedPositionLimits?.RemittanceLocation?.PartyReference?.PartyIdentification?.PartyIdentification?.IdentifierStartDate?.TimeZoneCode,
                            "DaylightSavingIndicator": check response?.ManagedPositionLimits?.RemittanceLocation?.PartyReference?.PartyIdentification?.PartyIdentification?.IdentifierStartDate?.DaylightSavingIndicator,
                            "DateTimeType": check response?.ManagedPositionLimits?.RemittanceLocation?.PartyReference?.PartyIdentification?.PartyIdentification?.IdentifierStartDate?.DateTimeType
                        },
                        "IdentifierEndDate": {
                            "DateTimeContent": check response?.ManagedPositionLimits?.RemittanceLocation?.PartyReference?.PartyIdentification?.PartyIdentification?.IdentifierEndDate?.DateTimeContent,
                            "TimeZoneCode": check response?.ManagedPositionLimits?.RemittanceLocation?.PartyReference?.PartyIdentification?.PartyIdentification?.IdentifierEndDate?.TimeZoneCode,
                            "DaylightSavingIndicator": check response?.ManagedPositionLimits?.RemittanceLocation?.PartyReference?.PartyIdentification?.PartyIdentification?.IdentifierEndDate?.DaylightSavingIndicator,
                            "DateTimeType": check response?.ManagedPositionLimits?.RemittanceLocation?.PartyReference?.PartyIdentification?.PartyIdentification?.IdentifierEndDate?.DateTimeType
                        }
                    }
                },
                "PartyLegalStructureType": check response?.ManagedPositionLimits?.RemittanceLocation?.PartyReference?.PartyLegalStructureType,
                "PartyActivityIndicator": {
                    "Industrycode": check response?.ManagedPositionLimits?.RemittanceLocation?.PartyReference?.PartyActivityIndicator?.Industrycode
                }
            }
        },
        "PaymentIdentification": {
            "PaymentIdentification": {
                "IdentifierValue": check response?.ManagedPositionLimits?.PaymentIdentification?.PaymentIdentification?.IdentifierValue,
                "IdentifierIssuerReference": {
                    "PartyReference": check response?.ManagedPositionLimits?.PaymentIdentification?.PaymentIdentification?.IdentifierIssuerReference?.PartyReference,
                    "InvolvementReference": check response?.ManagedPositionLimits?.PaymentIdentification?.PaymentIdentification?.IdentifierIssuerReference?.InvolvementReference
                },
                "IdentifierStartDate": {
                    "DateTimeContent": check response?.ManagedPositionLimits?.PaymentIdentification?.PaymentIdentification?.IdentifierStartDate?.DateTimeContent,
                    "TimeZoneCode": check response?.ManagedPositionLimits?.PaymentIdentification?.PaymentIdentification?.IdentifierStartDate?.TimeZoneCode,
                    "DaylightSavingIndicator": check response?.ManagedPositionLimits?.PaymentIdentification?.PaymentIdentification?.IdentifierStartDate?.DaylightSavingIndicator,
                    "DateTimeType": check response?.ManagedPositionLimits?.PaymentIdentification?.PaymentIdentification?.IdentifierStartDate?.DateTimeType
                },
                "IdentifierEndDate": {
                    "DateTimeContent": check response?.ManagedPositionLimits?.PaymentIdentification?.PaymentIdentification?.IdentifierEndDate?.DateTimeContent,
                    "TimeZoneCode": check response?.ManagedPositionLimits?.PaymentIdentification?.PaymentIdentification?.IdentifierEndDate?.TimeZoneCode,
                    "DaylightSavingIndicator": check response?.ManagedPositionLimits?.PaymentIdentification?.PaymentIdentification?.IdentifierEndDate?.DaylightSavingIndicator,
                    "DateTimeType": check response?.ManagedPositionLimits?.PaymentIdentification?.PaymentIdentification?.IdentifierEndDate?.DateTimeType
                }
            },
            "PaymentIdentificationType": check response?.ManagedPositionLimits?.PaymentIdentification?.PaymentIdentificationType
        },
        "PaymentSchedule": {
            "ScheduleType": check response?.ManagedPositionLimits?.PaymentSchedule?.ScheduleType
        },
        "PaymentFrequency": {
            "FrequencyCode": check response?.ManagedPositionLimits?.PaymentFrequency?.FrequencyCode,
            "FrequencyName": {
                "Name": check response?.ManagedPositionLimits?.PaymentFrequency?.FrequencyName?.Name
            },
            "FrequencyDefinition": check response?.ManagedPositionLimits?.PaymentFrequency?.FrequencyDefinition
        },
        "PaymentDescription": check response?.ManagedPositionLimits?.PaymentDescription,
        "CreditFacilityDataTime": {
            "DateTimeContent": check response?.ManagedPositionLimits?.CreditFacilityDataTime?.DateTimeContent,
            "TimeZoneCode": check response?.ManagedPositionLimits?.CreditFacilityDataTime?.TimeZoneCode,
            "DaylightSavingIndicator": check response?.ManagedPositionLimits?.CreditFacilityDataTime?.DaylightSavingIndicator,
            "DateTimeType": check response?.ManagedPositionLimits?.CreditFacilityDataTime?.DateTimeType
        },
        "CreditFacilityType": check response?.ManagedPositionLimits?.CreditFacilityType,
        "CreditFacilityRateType": check response?.ManagedPositionLimits?.CreditFacilityRateType,
        "CreditFacilityNumber": {
            "IdentifierValue": check response?.ManagedPositionLimits?.CreditFacilityNumber?.IdentifierValue,
            "IdentifierIssuerReference": {
                "PartyReference": check response?.ManagedPositionLimits?.CreditFacilityNumber?.IdentifierIssuerReference?.PartyReference,
                "InvolvementReference": check response?.ManagedPositionLimits?.CreditFacilityNumber?.IdentifierIssuerReference?.InvolvementReference
            },
            "IdentifierStartDate": {
                "DateTimeContent": check response?.ManagedPositionLimits?.CreditFacilityNumber?.IdentifierStartDate?.DateTimeContent,
                "TimeZoneCode": check response?.ManagedPositionLimits?.CreditFacilityNumber?.IdentifierStartDate?.TimeZoneCode,
                "DaylightSavingIndicator": check response?.ManagedPositionLimits?.CreditFacilityNumber?.IdentifierStartDate?.DaylightSavingIndicator,
                "DateTimeType": check response?.ManagedPositionLimits?.CreditFacilityNumber?.IdentifierStartDate?.DateTimeType
            },
            "IdentifierEndDate": {
                "DateTimeContent": check response?.ManagedPositionLimits?.CreditFacilityNumber?.IdentifierEndDate?.DateTimeContent,
                "TimeZoneCode": check response?.ManagedPositionLimits?.CreditFacilityNumber?.IdentifierEndDate?.TimeZoneCode,
                "DaylightSavingIndicator": check response?.ManagedPositionLimits?.CreditFacilityNumber?.IdentifierEndDate?.DaylightSavingIndicator,
                "DateTimeType": check response?.ManagedPositionLimits?.CreditFacilityNumber?.IdentifierEndDate?.DateTimeType
            }
        },
        "CreditFacilityAmount": {
            "AmountValue": check response?.ManagedPositionLimits?.CreditFacilityAmount?.AmountValue,
            "AmountCurrency": {
                "Currencycode": check response?.ManagedPositionLimits?.CreditFacilityAmount?.AmountCurrency?.Currencycode
            },
            "DecimalPointPosition": check response?.ManagedPositionLimits?.CreditFacilityAmount?.DecimalPointPosition,
            "AmountType": check response?.ManagedPositionLimits?.CreditFacilityAmount?.AmountType
        },
        "FuneralPolicyArrangementType": check response?.ManagedPositionLimits?.FuneralPolicyArrangementType
    },
    "PositionLimitType": check response?.PositionLimitType,
    "PositionLimitSettings": {
        "LimitType": check response?.PositionLimitSettings?.LimitType,
        "LimitCurrency": {
            "Currencycode": check response?.PositionLimitSettings?.LimitCurrency?.Currencycode
        },
        "LimitValidityPeriod": {
            "FromDateTime": {
                "DateTimeContent": check response?.PositionLimitSettings?.LimitValidityPeriod?.FromDateTime?.DateTimeContent,
                "TimeZoneCode": check response?.PositionLimitSettings?.LimitValidityPeriod?.FromDateTime?.TimeZoneCode,
                "DaylightSavingIndicator": check response?.PositionLimitSettings?.LimitValidityPeriod?.FromDateTime?.DaylightSavingIndicator,
                "DateTimeType": check response?.PositionLimitSettings?.LimitValidityPeriod?.FromDateTime?.DateTimeType
            },
            "ToDateTime": {
                "DateTimeContent": check response?.PositionLimitSettings?.LimitValidityPeriod?.ToDateTime?.DateTimeContent,
                "TimeZoneCode": check response?.PositionLimitSettings?.LimitValidityPeriod?.ToDateTime?.TimeZoneCode,
                "DaylightSavingIndicator": check response?.PositionLimitSettings?.LimitValidityPeriod?.ToDateTime?.DaylightSavingIndicator,
                "DateTimeType": check response?.PositionLimitSettings?.LimitValidityPeriod?.ToDateTime?.DateTimeType
            }
        },
        "LimitAmount": {
            "AmountValue": check response?.PositionLimitSettings?.LimitAmount?.AmountValue,
            "AmountCurrency": {
                "Currencycode": check response?.PositionLimitSettings?.LimitAmount?.AmountCurrency?.Currencycode
            },
            "DecimalPointPosition": check response?.PositionLimitSettings?.LimitAmount?.DecimalPointPosition,
            "AmountType": check response?.PositionLimitSettings?.LimitAmount?.AmountType
        },
        "LimitStatus": {
            "LimitStatus": {
                "StatusReason": check response?.PositionLimitSettings?.LimitStatus?.LimitStatus?.StatusReason,
                "StatusDateTime": {
                    "DateTimeContent": check response?.PositionLimitSettings?.LimitStatus?.LimitStatus?.StatusDateTime?.DateTimeContent,
                    "TimeZoneCode": check response?.PositionLimitSettings?.LimitStatus?.LimitStatus?.StatusDateTime?.TimeZoneCode,
                    "DaylightSavingIndicator": check response?.PositionLimitSettings?.LimitStatus?.LimitStatus?.StatusDateTime?.DaylightSavingIndicator,
                    "DateTimeType": check response?.PositionLimitSettings?.LimitStatus?.LimitStatus?.StatusDateTime?.DateTimeType
                },
                "StatusValidityPeriod": {
                    "FromDateTime": {
                        "DateTimeContent": check response?.PositionLimitSettings?.LimitStatus?.LimitStatus?.StatusValidityPeriod?.FromDateTime?.DateTimeContent,
                        "TimeZoneCode": check response?.PositionLimitSettings?.LimitStatus?.LimitStatus?.StatusValidityPeriod?.FromDateTime?.TimeZoneCode,
                        "DaylightSavingIndicator": check response?.PositionLimitSettings?.LimitStatus?.LimitStatus?.StatusValidityPeriod?.FromDateTime?.DaylightSavingIndicator,
                        "DateTimeType": check response?.PositionLimitSettings?.LimitStatus?.LimitStatus?.StatusValidityPeriod?.FromDateTime?.DateTimeType
                    },
                    "ToDateTime": {
                        "DateTimeContent": check response?.PositionLimitSettings?.LimitStatus?.LimitStatus?.StatusValidityPeriod?.ToDateTime?.DateTimeContent,
                        "TimeZoneCode": check response?.PositionLimitSettings?.LimitStatus?.LimitStatus?.StatusValidityPeriod?.ToDateTime?.TimeZoneCode,
                        "DaylightSavingIndicator": check response?.PositionLimitSettings?.LimitStatus?.LimitStatus?.StatusValidityPeriod?.ToDateTime?.DaylightSavingIndicator,
                        "DateTimeType": check response?.PositionLimitSettings?.LimitStatus?.LimitStatus?.StatusValidityPeriod?.ToDateTime?.DateTimeType
                    }
                },
                "StatusInvolvedPartyReference": {
                    "PartyReference": check response?.PositionLimitSettings?.LimitStatus?.LimitStatus?.StatusInvolvedPartyReference?.PartyReference,
                    "InvolvementReference": check response?.PositionLimitSettings?.LimitStatus?.LimitStatus?.StatusInvolvedPartyReference?.InvolvementReference
                }
            },
            "LimitStatusType": check response?.PositionLimitSettings?.LimitStatus?.LimitStatusType
        },
        "LimitRate": {
            "RateValue": check response?.PositionLimitSettings?.LimitRate?.RateValue,
            "RateUnit": check response?.PositionLimitSettings?.LimitRate?.RateUnit,
            "RatePeriod": {
                "FromDateTime": {
                    "DateTimeContent": check response?.PositionLimitSettings?.LimitRate?.RatePeriod?.FromDateTime?.DateTimeContent,
                    "TimeZoneCode": check response?.PositionLimitSettings?.LimitRate?.RatePeriod?.FromDateTime?.TimeZoneCode,
                    "DaylightSavingIndicator": check response?.PositionLimitSettings?.LimitRate?.RatePeriod?.FromDateTime?.DaylightSavingIndicator,
                    "DateTimeType": check response?.PositionLimitSettings?.LimitRate?.RatePeriod?.FromDateTime?.DateTimeType
                },
                "ToDateTime": {
                    "DateTimeContent": check response?.PositionLimitSettings?.LimitRate?.RatePeriod?.ToDateTime?.DateTimeContent,
                    "TimeZoneCode": check response?.PositionLimitSettings?.LimitRate?.RatePeriod?.ToDateTime?.TimeZoneCode,
                    "DaylightSavingIndicator": check response?.PositionLimitSettings?.LimitRate?.RatePeriod?.ToDateTime?.DaylightSavingIndicator,
                    "DateTimeType": check response?.PositionLimitSettings?.LimitRate?.RatePeriod?.ToDateTime?.DateTimeType
                }
            },
            "RateCapitalUnit": check response?.PositionLimitSettings?.LimitRate?.RateCapitalUnit
        },
        "LimitFrequency": {
            "FrequencyCode": check response?.PositionLimitSettings?.LimitFrequency?.FrequencyCode,
            "FrequencyName": {
                "Name": check response?.PositionLimitSettings?.LimitFrequency?.FrequencyName?.Name
            },
            "FrequencyDefinition": check response?.PositionLimitSettings?.LimitFrequency?.FrequencyDefinition
        },
        "LimitIdentification": {
            "IdentifierValue": check response?.PositionLimitSettings?.LimitIdentification?.IdentifierValue,
            "IdentifierIssuerReference": {
                "PartyReference": check response?.PositionLimitSettings?.LimitIdentification?.IdentifierIssuerReference?.PartyReference,
                "InvolvementReference": check response?.PositionLimitSettings?.LimitIdentification?.IdentifierIssuerReference?.InvolvementReference
            },
            "IdentifierStartDate": {
                "DateTimeContent": check response?.PositionLimitSettings?.LimitIdentification?.IdentifierStartDate?.DateTimeContent,
                "TimeZoneCode": check response?.PositionLimitSettings?.LimitIdentification?.IdentifierStartDate?.TimeZoneCode,
                "DaylightSavingIndicator": check response?.PositionLimitSettings?.LimitIdentification?.IdentifierStartDate?.DaylightSavingIndicator,
                "DateTimeType": check response?.PositionLimitSettings?.LimitIdentification?.IdentifierStartDate?.DateTimeType
            },
            "IdentifierEndDate": {
                "DateTimeContent": check response?.PositionLimitSettings?.LimitIdentification?.IdentifierEndDate?.DateTimeContent,
                "TimeZoneCode": check response?.PositionLimitSettings?.LimitIdentification?.IdentifierEndDate?.TimeZoneCode,
                "DaylightSavingIndicator": check response?.PositionLimitSettings?.LimitIdentification?.IdentifierEndDate?.DaylightSavingIndicator,
                "DateTimeType": check response?.PositionLimitSettings?.LimitIdentification?.IdentifierEndDate?.DateTimeType
            }
        },
        "LimitStartDatetime": {
            "DateTimeContent": check response?.PositionLimitSettings?.LimitStartDatetime?.DateTimeContent,
            "TimeZoneCode": check response?.PositionLimitSettings?.LimitStartDatetime?.TimeZoneCode,
            "DaylightSavingIndicator": check response?.PositionLimitSettings?.LimitStartDatetime?.DaylightSavingIndicator,
            "DateTimeType": check response?.PositionLimitSettings?.LimitStartDatetime?.DateTimeType
        },
        "LimitCreditDebitIndicator": check response?.PositionLimitSettings?.LimitCreditDebitIndicator,
        "LimitAmountType": check response?.PositionLimitSettings?.LimitAmountType,
        "LoanOriginationDate": {
            "DateContent": check response?.PositionLimitSettings?.LoanOriginationDate?.DateContent
        },
        "LoanMaturityDate": {
            "DateContent": check response?.PositionLimitSettings?.LoanMaturityDate?.DateContent
        },
        "LoanEndDate": {
            "DateContent": check response?.PositionLimitSettings?.LoanEndDate?.DateContent
        },
        "LoanAmount": {
            "AmountValue": check response?.PositionLimitSettings?.LoanAmount?.AmountValue,
            "AmountCurrency": {
                "Currencycode": check response?.PositionLimitSettings?.LoanAmount?.AmountCurrency?.Currencycode
            },
            "DecimalPointPosition": check response?.PositionLimitSettings?.LoanAmount?.DecimalPointPosition,
            "AmountType": check response?.PositionLimitSettings?.LoanAmount?.AmountType
        },
        "LoanArrangementType": check response?.PositionLimitSettings?.LoanArrangementType,
        "ArrangementAction": {
            "Action": check response?.PositionLimitSettings?.ArrangementAction?.Action
        },
        "ArrangementStartDate": {
            "DateTimeContent": check response?.PositionLimitSettings?.ArrangementStartDate?.DateTimeContent,
            "TimeZoneCode": check response?.PositionLimitSettings?.ArrangementStartDate?.TimeZoneCode,
            "DaylightSavingIndicator": check response?.PositionLimitSettings?.ArrangementStartDate?.DaylightSavingIndicator,
            "DateTimeType": check response?.PositionLimitSettings?.ArrangementStartDate?.DateTimeType
        },
        "ArrangementEndDate": {
            "DateTimeContent": check response?.PositionLimitSettings?.ArrangementEndDate?.DateTimeContent,
            "TimeZoneCode": check response?.PositionLimitSettings?.ArrangementEndDate?.TimeZoneCode,
            "DaylightSavingIndicator": check response?.PositionLimitSettings?.ArrangementEndDate?.DaylightSavingIndicator,
            "DateTimeType": check response?.PositionLimitSettings?.ArrangementEndDate?.DateTimeType
        },
        "ArrangementStatus": {
            "ArrangementStatus": {
                "StatusReason": check response?.PositionLimitSettings?.ArrangementStatus?.ArrangementStatus?.StatusReason,
                "StatusDateTime": {
                    "DateTimeContent": check response?.PositionLimitSettings?.ArrangementStatus?.ArrangementStatus?.StatusDateTime?.DateTimeContent,
                    "TimeZoneCode": check response?.PositionLimitSettings?.ArrangementStatus?.ArrangementStatus?.StatusDateTime?.TimeZoneCode,
                    "DaylightSavingIndicator": check response?.PositionLimitSettings?.ArrangementStatus?.ArrangementStatus?.StatusDateTime?.DaylightSavingIndicator,
                    "DateTimeType": check response?.PositionLimitSettings?.ArrangementStatus?.ArrangementStatus?.StatusDateTime?.DateTimeType
                },
                "StatusValidityPeriod": {
                    "FromDateTime": {
                        "DateTimeContent": check response?.PositionLimitSettings?.ArrangementStatus?.ArrangementStatus?.StatusValidityPeriod?.FromDateTime?.DateTimeContent,
                        "TimeZoneCode": check response?.PositionLimitSettings?.ArrangementStatus?.ArrangementStatus?.StatusValidityPeriod?.FromDateTime?.TimeZoneCode,
                        "DaylightSavingIndicator": check response?.PositionLimitSettings?.ArrangementStatus?.ArrangementStatus?.StatusValidityPeriod?.FromDateTime?.DaylightSavingIndicator,
                        "DateTimeType": check response?.PositionLimitSettings?.ArrangementStatus?.ArrangementStatus?.StatusValidityPeriod?.FromDateTime?.DateTimeType
                    },
                    "ToDateTime": {
                        "DateTimeContent": check response?.PositionLimitSettings?.ArrangementStatus?.ArrangementStatus?.StatusValidityPeriod?.ToDateTime?.DateTimeContent,
                        "TimeZoneCode": check response?.PositionLimitSettings?.ArrangementStatus?.ArrangementStatus?.StatusValidityPeriod?.ToDateTime?.TimeZoneCode,
                        "DaylightSavingIndicator": check response?.PositionLimitSettings?.ArrangementStatus?.ArrangementStatus?.StatusValidityPeriod?.ToDateTime?.DaylightSavingIndicator,
                        "DateTimeType": check response?.PositionLimitSettings?.ArrangementStatus?.ArrangementStatus?.StatusValidityPeriod?.ToDateTime?.DateTimeType
                    }
                },
                "StatusInvolvedPartyReference": {
                    "PartyReference": check response?.PositionLimitSettings?.ArrangementStatus?.ArrangementStatus?.StatusInvolvedPartyReference?.PartyReference,
                    "InvolvementReference": check response?.PositionLimitSettings?.ArrangementStatus?.ArrangementStatus?.StatusInvolvedPartyReference?.InvolvementReference
                }
            },
            "ArrangementStatusType": check response?.PositionLimitSettings?.ArrangementStatus?.ArrangementStatusType
        },
        "ArrangementSubjectMatter": {
            "Subject": check response?.PositionLimitSettings?.ArrangementSubjectMatter?.Subject
        },
        "Arrangementtype": check response?.PositionLimitSettings?.Arrangementtype,
        "ArrangementIdentification": {
            "IdentifierValue": check response?.PositionLimitSettings?.ArrangementIdentification?.IdentifierValue,
            "IdentifierIssuerReference": {
                "PartyReference": check response?.PositionLimitSettings?.ArrangementIdentification?.IdentifierIssuerReference?.PartyReference,
                "InvolvementReference": check response?.PositionLimitSettings?.ArrangementIdentification?.IdentifierIssuerReference?.InvolvementReference
            },
            "IdentifierStartDate": {
                "DateTimeContent": check response?.PositionLimitSettings?.ArrangementIdentification?.IdentifierStartDate?.DateTimeContent,
                "TimeZoneCode": check response?.PositionLimitSettings?.ArrangementIdentification?.IdentifierStartDate?.TimeZoneCode,
                "DaylightSavingIndicator": check response?.PositionLimitSettings?.ArrangementIdentification?.IdentifierStartDate?.DaylightSavingIndicator,
                "DateTimeType": check response?.PositionLimitSettings?.ArrangementIdentification?.IdentifierStartDate?.DateTimeType
            },
            "IdentifierEndDate": {
                "DateTimeContent": check response?.PositionLimitSettings?.ArrangementIdentification?.IdentifierEndDate?.DateTimeContent,
                "TimeZoneCode": check response?.PositionLimitSettings?.ArrangementIdentification?.IdentifierEndDate?.TimeZoneCode,
                "DaylightSavingIndicator": check response?.PositionLimitSettings?.ArrangementIdentification?.IdentifierEndDate?.DaylightSavingIndicator,
                "DateTimeType": check response?.PositionLimitSettings?.ArrangementIdentification?.IdentifierEndDate?.DateTimeType
            }
        },
        "SavingsAccountArrangementType": check response?.PositionLimitSettings?.SavingsAccountArrangementType,
        "SavingsAccountArrangementProductFeatureType": {
            "ProductFeatureTypeValues": check response?.PositionLimitSettings?.SavingsAccountArrangementProductFeatureType?.ProductFeatureTypeValues
        },
        "ProductArrangementType": check response?.PositionLimitSettings?.ProductArrangementType,
        "CurrentAccountArrangementType": check response?.PositionLimitSettings?.CurrentAccountArrangementType,
        "CurrentAccountArrangementProductFeatureType": {
            "ProductFeatureTypeValues": check response?.PositionLimitSettings?.CurrentAccountArrangementProductFeatureType?.ProductFeatureTypeValues
        },
        "TermDepositArrangementType": check response?.PositionLimitSettings?.TermDepositArrangementType,
        "TermDepositArrangementProductFeatureType": {
            "ProductFeatureTypeValues": check response?.PositionLimitSettings?.TermDepositArrangementProductFeatureType?.ProductFeatureTypeValues
        },
        "TermDepositMaturityDate": {
            "DateTimeContent": check response?.PositionLimitSettings?.TermDepositMaturityDate?.DateTimeContent,
            "TimeZoneCode": check response?.PositionLimitSettings?.TermDepositMaturityDate?.TimeZoneCode,
            "DaylightSavingIndicator": check response?.PositionLimitSettings?.TermDepositMaturityDate?.DaylightSavingIndicator,
            "DateTimeType": check response?.PositionLimitSettings?.TermDepositMaturityDate?.DateTimeType
        },
        "TermDepositOpenDate": {
            "DateTimeContent": check response?.PositionLimitSettings?.TermDepositOpenDate?.DateTimeContent,
            "TimeZoneCode": check response?.PositionLimitSettings?.TermDepositOpenDate?.TimeZoneCode,
            "DaylightSavingIndicator": check response?.PositionLimitSettings?.TermDepositOpenDate?.DaylightSavingIndicator,
            "DateTimeType": check response?.PositionLimitSettings?.TermDepositOpenDate?.DateTimeType
        },
        "TermDepositAmount": {
            "AmountValue": check response?.PositionLimitSettings?.TermDepositAmount?.AmountValue,
            "AmountCurrency": {
                "Currencycode": check response?.PositionLimitSettings?.TermDepositAmount?.AmountCurrency?.Currencycode
            },
            "DecimalPointPosition": check response?.PositionLimitSettings?.TermDepositAmount?.DecimalPointPosition,
            "AmountType": check response?.PositionLimitSettings?.TermDepositAmount?.AmountType
        },
        "TermDepositDuration": {
            "Duration": check response?.PositionLimitSettings?.TermDepositDuration?.Duration
        },
        "DepositTerm": check response?.PositionLimitSettings?.DepositTerm,
        "DepositType": check response?.PositionLimitSettings?.DepositType,
        "DepositLimit": {
            "LimitArrangement": check response?.PositionLimitSettings?.DepositLimit?.LimitArrangement
        },
        "DepositLimitType": check response?.PositionLimitSettings?.DepositLimitType,
        "DepositAmount": {
            "AmountValue": check response?.PositionLimitSettings?.DepositAmount?.AmountValue,
            "AmountCurrency": {
                "Currencycode": check response?.PositionLimitSettings?.DepositAmount?.AmountCurrency?.Currencycode
            },
            "DecimalPointPosition": check response?.PositionLimitSettings?.DepositAmount?.DecimalPointPosition,
            "AmountType": check response?.PositionLimitSettings?.DepositAmount?.AmountType
        },
        "DepositDatetime": {
            "DateTimeContent": check response?.PositionLimitSettings?.DepositDatetime?.DateTimeContent,
            "TimeZoneCode": check response?.PositionLimitSettings?.DepositDatetime?.TimeZoneCode,
            "DaylightSavingIndicator": check response?.PositionLimitSettings?.DepositDatetime?.DaylightSavingIndicator,
            "DateTimeType": check response?.PositionLimitSettings?.DepositDatetime?.DateTimeType
        },
        "DepositDatetimeType": check response?.PositionLimitSettings?.DepositDatetimeType,
        "DepositAmountType": check response?.PositionLimitSettings?.DepositAmountType,
        "DepositInterest": {
            "InterestArrangement": check response?.PositionLimitSettings?.DepositInterest?.InterestArrangement
        },
        "DepositDuration": {
            "Duration": check response?.PositionLimitSettings?.DepositDuration?.Duration
        },
        "DepositRate": {
            "RateValue": check response?.PositionLimitSettings?.DepositRate?.RateValue,
            "RateUnit": check response?.PositionLimitSettings?.DepositRate?.RateUnit,
            "RatePeriod": {
                "FromDateTime": {
                    "DateTimeContent": check response?.PositionLimitSettings?.DepositRate?.RatePeriod?.FromDateTime?.DateTimeContent,
                    "TimeZoneCode": check response?.PositionLimitSettings?.DepositRate?.RatePeriod?.FromDateTime?.TimeZoneCode,
                    "DaylightSavingIndicator": check response?.PositionLimitSettings?.DepositRate?.RatePeriod?.FromDateTime?.DaylightSavingIndicator,
                    "DateTimeType": check response?.PositionLimitSettings?.DepositRate?.RatePeriod?.FromDateTime?.DateTimeType
                },
                "ToDateTime": {
                    "DateTimeContent": check response?.PositionLimitSettings?.DepositRate?.RatePeriod?.ToDateTime?.DateTimeContent,
                    "TimeZoneCode": check response?.PositionLimitSettings?.DepositRate?.RatePeriod?.ToDateTime?.TimeZoneCode,
                    "DaylightSavingIndicator": check response?.PositionLimitSettings?.DepositRate?.RatePeriod?.ToDateTime?.DaylightSavingIndicator,
                    "DateTimeType": check response?.PositionLimitSettings?.DepositRate?.RatePeriod?.ToDateTime?.DateTimeType
                }
            },
            "RateCapitalUnit": check response?.PositionLimitSettings?.DepositRate?.RateCapitalUnit
        },
        "ServiceType": check response?.PositionLimitSettings?.ServiceType,
        "PaymentDate": {
            "PaymentDate": {
                "DateTimeContent": check response?.PositionLimitSettings?.PaymentDate?.PaymentDate?.DateTimeContent,
                "TimeZoneCode": check response?.PositionLimitSettings?.PaymentDate?.PaymentDate?.TimeZoneCode,
                "DaylightSavingIndicator": check response?.PositionLimitSettings?.PaymentDate?.PaymentDate?.DaylightSavingIndicator,
                "DateTimeType": check response?.PositionLimitSettings?.PaymentDate?.PaymentDate?.DateTimeType
            },
            "PaymentDateType": check response?.PositionLimitSettings?.PaymentDate?.PaymentDateType
        },
        "PaymentPeriod": {
            "FromDateTime": {
                "DateTimeContent": check response?.PositionLimitSettings?.PaymentPeriod?.FromDateTime?.DateTimeContent,
                "TimeZoneCode": check response?.PositionLimitSettings?.PaymentPeriod?.FromDateTime?.TimeZoneCode,
                "DaylightSavingIndicator": check response?.PositionLimitSettings?.PaymentPeriod?.FromDateTime?.DaylightSavingIndicator,
                "DateTimeType": check response?.PositionLimitSettings?.PaymentPeriod?.FromDateTime?.DateTimeType
            },
            "ToDateTime": {
                "DateTimeContent": check response?.PositionLimitSettings?.PaymentPeriod?.ToDateTime?.DateTimeContent,
                "TimeZoneCode": check response?.PositionLimitSettings?.PaymentPeriod?.ToDateTime?.TimeZoneCode,
                "DaylightSavingIndicator": check response?.PositionLimitSettings?.PaymentPeriod?.ToDateTime?.DaylightSavingIndicator,
                "DateTimeType": check response?.PositionLimitSettings?.PaymentPeriod?.ToDateTime?.DateTimeType
            }
        },
        "PaymentPurpose": check response?.PositionLimitSettings?.PaymentPurpose,
        "PaymentAmountAndCurrency": {
            "PaymentAmountAndCurrencyType": check response?.PositionLimitSettings?.PaymentAmountAndCurrency?.PaymentAmountAndCurrencyType,
            "PaymentAmountAndCurrency": {
                "AmountValue": check response?.PositionLimitSettings?.PaymentAmountAndCurrency?.PaymentAmountAndCurrency?.AmountValue,
                "AmountCurrency": {
                    "Currencycode": check response?.PositionLimitSettings?.PaymentAmountAndCurrency?.PaymentAmountAndCurrency?.AmountCurrency?.Currencycode
                },
                "DecimalPointPosition": check response?.PositionLimitSettings?.PaymentAmountAndCurrency?.PaymentAmountAndCurrency?.DecimalPointPosition,
                "AmountType": check response?.PositionLimitSettings?.PaymentAmountAndCurrency?.PaymentAmountAndCurrency?.AmountType
            }
        },
        "PaymentMethod": check response?.PositionLimitSettings?.PaymentMethod,
        "PaymentType": check response?.PositionLimitSettings?.PaymentType,
        "PaymentTime": check response?.PositionLimitSettings?.PaymentTime,
        "RemittanceDeliveryMethod": check response?.PositionLimitSettings?.RemittanceDeliveryMethod,
        "RemittanceLocation": {
            "ContactPointType": check response?.PositionLimitSettings?.RemittanceLocation?.ContactPointType,
            "PartyLocationType": check response?.PositionLimitSettings?.RemittanceLocation?.PartyLocationType,
            "LocationReference": {
                "LocationDescription": check response?.PositionLimitSettings?.RemittanceLocation?.LocationReference?.LocationDescription,
                "LocationDateTime": {
                    "DateTimeContent": check response?.PositionLimitSettings?.RemittanceLocation?.LocationReference?.LocationDateTime?.DateTimeContent,
                    "TimeZoneCode": check response?.PositionLimitSettings?.RemittanceLocation?.LocationReference?.LocationDateTime?.TimeZoneCode,
                    "DaylightSavingIndicator": check response?.PositionLimitSettings?.RemittanceLocation?.LocationReference?.LocationDateTime?.DaylightSavingIndicator,
                    "DateTimeType": check response?.PositionLimitSettings?.RemittanceLocation?.LocationReference?.LocationDateTime?.DateTimeType
                },
                "LocationStatus": {
                    "StatusReason": check response?.PositionLimitSettings?.RemittanceLocation?.LocationReference?.LocationStatus?.StatusReason,
                    "StatusDateTime": {
                        "DateTimeContent": check response?.PositionLimitSettings?.RemittanceLocation?.LocationReference?.LocationStatus?.StatusDateTime?.DateTimeContent,
                        "TimeZoneCode": check response?.PositionLimitSettings?.RemittanceLocation?.LocationReference?.LocationStatus?.StatusDateTime?.TimeZoneCode,
                        "DaylightSavingIndicator": check response?.PositionLimitSettings?.RemittanceLocation?.LocationReference?.LocationStatus?.StatusDateTime?.DaylightSavingIndicator,
                        "DateTimeType": check response?.PositionLimitSettings?.RemittanceLocation?.LocationReference?.LocationStatus?.StatusDateTime?.DateTimeType
                    },
                    "StatusValidityPeriod": {
                        "FromDateTime": {
                            "DateTimeContent": check response?.PositionLimitSettings?.RemittanceLocation?.LocationReference?.LocationStatus?.StatusValidityPeriod?.FromDateTime?.DateTimeContent,
                            "TimeZoneCode": check response?.PositionLimitSettings?.RemittanceLocation?.LocationReference?.LocationStatus?.StatusValidityPeriod?.FromDateTime?.TimeZoneCode,
                            "DaylightSavingIndicator": check response?.PositionLimitSettings?.RemittanceLocation?.LocationReference?.LocationStatus?.StatusValidityPeriod?.FromDateTime?.DaylightSavingIndicator,
                            "DateTimeType": check response?.PositionLimitSettings?.RemittanceLocation?.LocationReference?.LocationStatus?.StatusValidityPeriod?.FromDateTime?.DateTimeType
                        },
                        "ToDateTime": {
                            "DateTimeContent": check response?.PositionLimitSettings?.RemittanceLocation?.LocationReference?.LocationStatus?.StatusValidityPeriod?.ToDateTime?.DateTimeContent,
                            "TimeZoneCode": check response?.PositionLimitSettings?.RemittanceLocation?.LocationReference?.LocationStatus?.StatusValidityPeriod?.ToDateTime?.TimeZoneCode,
                            "DaylightSavingIndicator": check response?.PositionLimitSettings?.RemittanceLocation?.LocationReference?.LocationStatus?.StatusValidityPeriod?.ToDateTime?.DaylightSavingIndicator,
                            "DateTimeType": check response?.PositionLimitSettings?.RemittanceLocation?.LocationReference?.LocationStatus?.StatusValidityPeriod?.ToDateTime?.DateTimeType
                        }
                    },
                    "StatusInvolvedPartyReference": {
                        "PartyReference": check response?.PositionLimitSettings?.RemittanceLocation?.LocationReference?.LocationStatus?.StatusInvolvedPartyReference?.PartyReference,
                        "InvolvementReference": check response?.PositionLimitSettings?.RemittanceLocation?.LocationReference?.LocationStatus?.StatusInvolvedPartyReference?.InvolvementReference
                    }
                },
                "LocationType": check response?.PositionLimitSettings?.RemittanceLocation?.LocationReference?.LocationType,
                "LocationZoningType": check response?.PositionLimitSettings?.RemittanceLocation?.LocationReference?.LocationZoningType,
                "LocationNeighborhoodType": check response?.PositionLimitSettings?.RemittanceLocation?.LocationReference?.LocationNeighborhoodType,
                "LocationConstructionType": check response?.PositionLimitSettings?.RemittanceLocation?.LocationReference?.LocationConstructionType,
                "LocationOccupancyType": check response?.PositionLimitSettings?.RemittanceLocation?.LocationReference?.LocationOccupancyType,
                "LocationValue": check response?.PositionLimitSettings?.RemittanceLocation?.LocationReference?.LocationValue,
                "LocationCapacity": check response?.PositionLimitSettings?.RemittanceLocation?.LocationReference?.LocationCapacity,
                "LocationIdentification": {
                    "IdentifierValue": check response?.PositionLimitSettings?.RemittanceLocation?.LocationReference?.LocationIdentification?.IdentifierValue,
                    "IdentifierIssuerReference": {
                        "PartyReference": check response?.PositionLimitSettings?.RemittanceLocation?.LocationReference?.LocationIdentification?.IdentifierIssuerReference?.PartyReference,
                        "InvolvementReference": check response?.PositionLimitSettings?.RemittanceLocation?.LocationReference?.LocationIdentification?.IdentifierIssuerReference?.InvolvementReference
                    },
                    "IdentifierStartDate": {
                        "DateTimeContent": check response?.PositionLimitSettings?.RemittanceLocation?.LocationReference?.LocationIdentification?.IdentifierStartDate?.DateTimeContent,
                        "TimeZoneCode": check response?.PositionLimitSettings?.RemittanceLocation?.LocationReference?.LocationIdentification?.IdentifierStartDate?.TimeZoneCode,
                        "DaylightSavingIndicator": check response?.PositionLimitSettings?.RemittanceLocation?.LocationReference?.LocationIdentification?.IdentifierStartDate?.DaylightSavingIndicator,
                        "DateTimeType": check response?.PositionLimitSettings?.RemittanceLocation?.LocationReference?.LocationIdentification?.IdentifierStartDate?.DateTimeType
                    },
                    "IdentifierEndDate": {
                        "DateTimeContent": check response?.PositionLimitSettings?.RemittanceLocation?.LocationReference?.LocationIdentification?.IdentifierEndDate?.DateTimeContent,
                        "TimeZoneCode": check response?.PositionLimitSettings?.RemittanceLocation?.LocationReference?.LocationIdentification?.IdentifierEndDate?.TimeZoneCode,
                        "DaylightSavingIndicator": check response?.PositionLimitSettings?.RemittanceLocation?.LocationReference?.LocationIdentification?.IdentifierEndDate?.DaylightSavingIndicator,
                        "DateTimeType": check response?.PositionLimitSettings?.RemittanceLocation?.LocationReference?.LocationIdentification?.IdentifierEndDate?.DateTimeType
                    }
                },
                "LocationAddress": check response?.PositionLimitSettings?.RemittanceLocation?.LocationReference?.LocationAddress,
                "LocationName": {
                    "Name": check response?.PositionLimitSettings?.RemittanceLocation?.LocationReference?.LocationName?.Name
                },
                "LocationTimeZone": check response?.PositionLimitSettings?.RemittanceLocation?.LocationReference?.LocationTimeZone
            },
            "PartyReference": {
                "PartyName": {
                    "Name": check response?.PositionLimitSettings?.RemittanceLocation?.PartyReference?.PartyName?.Name
                },
                "PartyType": check response?.PositionLimitSettings?.RemittanceLocation?.PartyReference?.PartyType,
                "PartyDateTime": {
                    "DateTimeContent": check response?.PositionLimitSettings?.RemittanceLocation?.PartyReference?.PartyDateTime?.DateTimeContent,
                    "TimeZoneCode": check response?.PositionLimitSettings?.RemittanceLocation?.PartyReference?.PartyDateTime?.TimeZoneCode,
                    "DaylightSavingIndicator": check response?.PositionLimitSettings?.RemittanceLocation?.PartyReference?.PartyDateTime?.DaylightSavingIndicator,
                    "DateTimeType": check response?.PositionLimitSettings?.RemittanceLocation?.PartyReference?.PartyDateTime?.DateTimeType
                },
                "PartyIdentification": {
                    "PartyIdentificationType": check response?.PositionLimitSettings?.RemittanceLocation?.PartyReference?.PartyIdentification?.PartyIdentificationType,
                    "PartyIdentification": {
                        "IdentifierValue": check response?.PositionLimitSettings?.RemittanceLocation?.PartyReference?.PartyIdentification?.PartyIdentification?.IdentifierValue,
                        "IdentifierIssuerReference": {
                            "PartyReference": check response?.PositionLimitSettings?.RemittanceLocation?.PartyReference?.PartyIdentification?.PartyIdentification?.IdentifierIssuerReference?.PartyReference,
                            "InvolvementReference": check response?.PositionLimitSettings?.RemittanceLocation?.PartyReference?.PartyIdentification?.PartyIdentification?.IdentifierIssuerReference?.InvolvementReference
                        },
                        "IdentifierStartDate": {
                            "DateTimeContent": check response?.PositionLimitSettings?.RemittanceLocation?.PartyReference?.PartyIdentification?.PartyIdentification?.IdentifierStartDate?.DateTimeContent,
                            "TimeZoneCode": check response?.PositionLimitSettings?.RemittanceLocation?.PartyReference?.PartyIdentification?.PartyIdentification?.IdentifierStartDate?.TimeZoneCode,
                            "DaylightSavingIndicator": check response?.PositionLimitSettings?.RemittanceLocation?.PartyReference?.PartyIdentification?.PartyIdentification?.IdentifierStartDate?.DaylightSavingIndicator,
                            "DateTimeType": check response?.PositionLimitSettings?.RemittanceLocation?.PartyReference?.PartyIdentification?.PartyIdentification?.IdentifierStartDate?.DateTimeType
                        },
                        "IdentifierEndDate": {
                            "DateTimeContent": check response?.PositionLimitSettings?.RemittanceLocation?.PartyReference?.PartyIdentification?.PartyIdentification?.IdentifierEndDate?.DateTimeContent,
                            "TimeZoneCode": check response?.PositionLimitSettings?.RemittanceLocation?.PartyReference?.PartyIdentification?.PartyIdentification?.IdentifierEndDate?.TimeZoneCode,
                            "DaylightSavingIndicator": check response?.PositionLimitSettings?.RemittanceLocation?.PartyReference?.PartyIdentification?.PartyIdentification?.IdentifierEndDate?.DaylightSavingIndicator,
                            "DateTimeType": check response?.PositionLimitSettings?.RemittanceLocation?.PartyReference?.PartyIdentification?.PartyIdentification?.IdentifierEndDate?.DateTimeType
                        }
                    }
                },
                "PartyLegalStructureType": check response?.PositionLimitSettings?.RemittanceLocation?.PartyReference?.PartyLegalStructureType,
                "PartyActivityIndicator": {
                    "Industrycode": check response?.PositionLimitSettings?.RemittanceLocation?.PartyReference?.PartyActivityIndicator?.Industrycode
                }
            }
        },
        "PaymentIdentification": {
            "PaymentIdentification": {
                "IdentifierValue": check response?.PositionLimitSettings?.PaymentIdentification?.PaymentIdentification?.IdentifierValue,
                "IdentifierIssuerReference": {
                    "PartyReference": check response?.PositionLimitSettings?.PaymentIdentification?.PaymentIdentification?.IdentifierIssuerReference?.PartyReference,
                    "InvolvementReference": check response?.PositionLimitSettings?.PaymentIdentification?.PaymentIdentification?.IdentifierIssuerReference?.InvolvementReference
                },
                "IdentifierStartDate": {
                    "DateTimeContent": check response?.PositionLimitSettings?.PaymentIdentification?.PaymentIdentification?.IdentifierStartDate?.DateTimeContent,
                    "TimeZoneCode": check response?.PositionLimitSettings?.PaymentIdentification?.PaymentIdentification?.IdentifierStartDate?.TimeZoneCode,
                    "DaylightSavingIndicator": check response?.PositionLimitSettings?.PaymentIdentification?.PaymentIdentification?.IdentifierStartDate?.DaylightSavingIndicator,
                    "DateTimeType": check response?.PositionLimitSettings?.PaymentIdentification?.PaymentIdentification?.IdentifierStartDate?.DateTimeType
                },
                "IdentifierEndDate": {
                    "DateTimeContent": check response?.PositionLimitSettings?.PaymentIdentification?.PaymentIdentification?.IdentifierEndDate?.DateTimeContent,
                    "TimeZoneCode": check response?.PositionLimitSettings?.PaymentIdentification?.PaymentIdentification?.IdentifierEndDate?.TimeZoneCode,
                    "DaylightSavingIndicator": check response?.PositionLimitSettings?.PaymentIdentification?.PaymentIdentification?.IdentifierEndDate?.DaylightSavingIndicator,
                    "DateTimeType": check response?.PositionLimitSettings?.PaymentIdentification?.PaymentIdentification?.IdentifierEndDate?.DateTimeType
                }
            },
            "PaymentIdentificationType": check response?.PositionLimitSettings?.PaymentIdentification?.PaymentIdentificationType
        },
        "PaymentSchedule": {
            "ScheduleType": check response?.PositionLimitSettings?.PaymentSchedule?.ScheduleType
        },
        "PaymentFrequency": {
            "FrequencyCode": check response?.PositionLimitSettings?.PaymentFrequency?.FrequencyCode,
            "FrequencyName": {
                "Name": check response?.PositionLimitSettings?.PaymentFrequency?.FrequencyName?.Name
            },
            "FrequencyDefinition": check response?.PositionLimitSettings?.PaymentFrequency?.FrequencyDefinition
        },
        "PaymentDescription": check response?.PositionLimitSettings?.PaymentDescription,
        "CreditFacilityDataTime": {
            "DateTimeContent": check response?.PositionLimitSettings?.CreditFacilityDataTime?.DateTimeContent,
            "TimeZoneCode": check response?.PositionLimitSettings?.CreditFacilityDataTime?.TimeZoneCode,
            "DaylightSavingIndicator": check response?.PositionLimitSettings?.CreditFacilityDataTime?.DaylightSavingIndicator,
            "DateTimeType": check response?.PositionLimitSettings?.CreditFacilityDataTime?.DateTimeType
        },
        "CreditFacilityType": check response?.PositionLimitSettings?.CreditFacilityType,
        "CreditFacilityRateType": check response?.PositionLimitSettings?.CreditFacilityRateType,
        "CreditFacilityNumber": {
            "IdentifierValue": check response?.PositionLimitSettings?.CreditFacilityNumber?.IdentifierValue,
            "IdentifierIssuerReference": {
                "PartyReference": check response?.PositionLimitSettings?.CreditFacilityNumber?.IdentifierIssuerReference?.PartyReference,
                "InvolvementReference": check response?.PositionLimitSettings?.CreditFacilityNumber?.IdentifierIssuerReference?.InvolvementReference
            },
            "IdentifierStartDate": {
                "DateTimeContent": check response?.PositionLimitSettings?.CreditFacilityNumber?.IdentifierStartDate?.DateTimeContent,
                "TimeZoneCode": check response?.PositionLimitSettings?.CreditFacilityNumber?.IdentifierStartDate?.TimeZoneCode,
                "DaylightSavingIndicator": check response?.PositionLimitSettings?.CreditFacilityNumber?.IdentifierStartDate?.DaylightSavingIndicator,
                "DateTimeType": check response?.PositionLimitSettings?.CreditFacilityNumber?.IdentifierStartDate?.DateTimeType
            },
            "IdentifierEndDate": {
                "DateTimeContent": check response?.PositionLimitSettings?.CreditFacilityNumber?.IdentifierEndDate?.DateTimeContent,
                "TimeZoneCode": check response?.PositionLimitSettings?.CreditFacilityNumber?.IdentifierEndDate?.TimeZoneCode,
                "DaylightSavingIndicator": check response?.PositionLimitSettings?.CreditFacilityNumber?.IdentifierEndDate?.DaylightSavingIndicator,
                "DateTimeType": check response?.PositionLimitSettings?.CreditFacilityNumber?.IdentifierEndDate?.DateTimeType
            }
        },
        "CreditFacilityAmount": {
            "AmountValue": check response?.PositionLimitSettings?.CreditFacilityAmount?.AmountValue,
            "AmountCurrency": {
                "Currencycode": check response?.PositionLimitSettings?.CreditFacilityAmount?.AmountCurrency?.Currencycode
            },
            "DecimalPointPosition": check response?.PositionLimitSettings?.CreditFacilityAmount?.DecimalPointPosition,
            "AmountType": check response?.PositionLimitSettings?.CreditFacilityAmount?.AmountType
        },
        "FuneralPolicyArrangementType": check response?.PositionLimitSettings?.FuneralPolicyArrangementType
    },
    "PositionLimitValue": check response?.PositionLimitValue,
    "AmountBlock": {
        "AmountValue": check response?.AmountBlock?.AmountValue,
        "AmountCurrency": {
            "Currencycode": check response?.AmountBlock?.AmountCurrency?.Currencycode
        },
        "DecimalPointPosition": check response?.AmountBlock?.DecimalPointPosition,
        "AmountType": check response?.AmountBlock?.AmountType
    },
    "AmountBlockType": check response?.AmountBlockType,
    "Priority": check response?.Priority,
    "Amount": {
        "AmountValue": check response?.Amount?.AmountValue,
        "AmountCurrency": {
            "Currencycode": check response?.Amount?.AmountCurrency?.Currencycode
        },
        "DecimalPointPosition": check response?.Amount?.DecimalPointPosition,
        "AmountType": check response?.Amount?.AmountType
    },
    "DateType": check response?.DateType,
    "Date": {
        "TimeIndication": check response?.Date?.TimeIndication,
        "TimeIndicationType": check response?.Date?.TimeIndicationType
    },
    "InitiationDate": {
        "DateContent": check response?.InitiationDate?.DateContent
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

isolated function transformPositionKeepingUpdateResponse(json response) returns operations:FinancialPositionLog|error => {
    "TransactionLogType": check response?.TransactionLogType,
    "ProductInstanceReference": {
        "ProductAgreementType": check response?.ProductInstanceReference?.ProductAgreementType,
        "ProductAgreementIdentification": {
            "IdentifierValue": check response?.ProductInstanceReference?.ProductAgreementIdentification?.IdentifierValue,
            "IdentifierIssuerReference": {
                "PartyReference": check response?.ProductInstanceReference?.ProductAgreementIdentification?.IdentifierIssuerReference?.PartyReference,
                "InvolvementReference": check response?.ProductInstanceReference?.ProductAgreementIdentification?.IdentifierIssuerReference?.InvolvementReference
            },
            "IdentifierStartDate": {
                "DateTimeContent": check response?.ProductInstanceReference?.ProductAgreementIdentification?.IdentifierStartDate?.DateTimeContent,
                "TimeZoneCode": check response?.ProductInstanceReference?.ProductAgreementIdentification?.IdentifierStartDate?.TimeZoneCode,
                "DaylightSavingIndicator": check response?.ProductInstanceReference?.ProductAgreementIdentification?.IdentifierStartDate?.DaylightSavingIndicator,
                "DateTimeType": check response?.ProductInstanceReference?.ProductAgreementIdentification?.IdentifierStartDate?.DateTimeType
            },
            "IdentifierEndDate": {
                "DateTimeContent": check response?.ProductInstanceReference?.ProductAgreementIdentification?.IdentifierEndDate?.DateTimeContent,
                "TimeZoneCode": check response?.ProductInstanceReference?.ProductAgreementIdentification?.IdentifierEndDate?.TimeZoneCode,
                "DaylightSavingIndicator": check response?.ProductInstanceReference?.ProductAgreementIdentification?.IdentifierEndDate?.DaylightSavingIndicator,
                "DateTimeType": check response?.ProductInstanceReference?.ProductAgreementIdentification?.IdentifierEndDate?.DateTimeType
            }
        },
        "AgreementSignedDate": {
            "DateContent": check response?.ProductInstanceReference?.AgreementSignedDate?.DateContent
        },
        "AgreementType": check response?.ProductInstanceReference?.AgreementType,
        "AgreementValidityPeriod": {
            "FromDateTime": {
                "DateTimeContent": check response?.ProductInstanceReference?.AgreementValidityPeriod?.FromDateTime?.DateTimeContent,
                "TimeZoneCode": check response?.ProductInstanceReference?.AgreementValidityPeriod?.FromDateTime?.TimeZoneCode,
                "DaylightSavingIndicator": check response?.ProductInstanceReference?.AgreementValidityPeriod?.FromDateTime?.DaylightSavingIndicator,
                "DateTimeType": check response?.ProductInstanceReference?.AgreementValidityPeriod?.FromDateTime?.DateTimeType
            },
            "ToDateTime": {
                "DateTimeContent": check response?.ProductInstanceReference?.AgreementValidityPeriod?.ToDateTime?.DateTimeContent,
                "TimeZoneCode": check response?.ProductInstanceReference?.AgreementValidityPeriod?.ToDateTime?.TimeZoneCode,
                "DaylightSavingIndicator": check response?.ProductInstanceReference?.AgreementValidityPeriod?.ToDateTime?.DaylightSavingIndicator,
                "DateTimeType": check response?.ProductInstanceReference?.AgreementValidityPeriod?.ToDateTime?.DateTimeType
            }
        },
        "AgreementVersion": check response?.ProductInstanceReference?.AgreementVersion,
        "AgreementStatus": {
            "AgreementStatus": {
                "StatusReason": check response?.ProductInstanceReference?.AgreementStatus?.AgreementStatus?.StatusReason,
                "StatusDateTime": {
                    "DateTimeContent": check response?.ProductInstanceReference?.AgreementStatus?.AgreementStatus?.StatusDateTime?.DateTimeContent,
                    "TimeZoneCode": check response?.ProductInstanceReference?.AgreementStatus?.AgreementStatus?.StatusDateTime?.TimeZoneCode,
                    "DaylightSavingIndicator": check response?.ProductInstanceReference?.AgreementStatus?.AgreementStatus?.StatusDateTime?.DaylightSavingIndicator,
                    "DateTimeType": check response?.ProductInstanceReference?.AgreementStatus?.AgreementStatus?.StatusDateTime?.DateTimeType
                },
                "StatusValidityPeriod": {
                    "FromDateTime": {
                        "DateTimeContent": check response?.ProductInstanceReference?.AgreementStatus?.AgreementStatus?.StatusValidityPeriod?.FromDateTime?.DateTimeContent,
                        "TimeZoneCode": check response?.ProductInstanceReference?.AgreementStatus?.AgreementStatus?.StatusValidityPeriod?.FromDateTime?.TimeZoneCode,
                        "DaylightSavingIndicator": check response?.ProductInstanceReference?.AgreementStatus?.AgreementStatus?.StatusValidityPeriod?.FromDateTime?.DaylightSavingIndicator,
                        "DateTimeType": check response?.ProductInstanceReference?.AgreementStatus?.AgreementStatus?.StatusValidityPeriod?.FromDateTime?.DateTimeType
                    },
                    "ToDateTime": {
                        "DateTimeContent": check response?.ProductInstanceReference?.AgreementStatus?.AgreementStatus?.StatusValidityPeriod?.ToDateTime?.DateTimeContent,
                        "TimeZoneCode": check response?.ProductInstanceReference?.AgreementStatus?.AgreementStatus?.StatusValidityPeriod?.ToDateTime?.TimeZoneCode,
                        "DaylightSavingIndicator": check response?.ProductInstanceReference?.AgreementStatus?.AgreementStatus?.StatusValidityPeriod?.ToDateTime?.DaylightSavingIndicator,
                        "DateTimeType": check response?.ProductInstanceReference?.AgreementStatus?.AgreementStatus?.StatusValidityPeriod?.ToDateTime?.DateTimeType
                    }
                },
                "StatusInvolvedPartyReference": {
                    "PartyReference": check response?.ProductInstanceReference?.AgreementStatus?.AgreementStatus?.StatusInvolvedPartyReference?.PartyReference,
                    "InvolvementReference": check response?.ProductInstanceReference?.AgreementStatus?.AgreementStatus?.StatusInvolvedPartyReference?.InvolvementReference
                }
            },
            "AgreementStatusType": check response?.ProductInstanceReference?.AgreementStatus?.AgreementStatusType
        },
        "AgreementSubjectMatter": check response?.ProductInstanceReference?.AgreementSubjectMatter,
        "AgreementIdentification": {
            "IdentifierValue": check response?.ProductInstanceReference?.AgreementIdentification?.IdentifierValue,
            "IdentifierIssuerReference": {
                "PartyReference": check response?.ProductInstanceReference?.AgreementIdentification?.IdentifierIssuerReference?.PartyReference,
                "InvolvementReference": check response?.ProductInstanceReference?.AgreementIdentification?.IdentifierIssuerReference?.InvolvementReference
            },
            "IdentifierStartDate": {
                "DateTimeContent": check response?.ProductInstanceReference?.AgreementIdentification?.IdentifierStartDate?.DateTimeContent,
                "TimeZoneCode": check response?.ProductInstanceReference?.AgreementIdentification?.IdentifierStartDate?.TimeZoneCode,
                "DaylightSavingIndicator": check response?.ProductInstanceReference?.AgreementIdentification?.IdentifierStartDate?.DaylightSavingIndicator,
                "DateTimeType": check response?.ProductInstanceReference?.AgreementIdentification?.IdentifierStartDate?.DateTimeType
            },
            "IdentifierEndDate": {
                "DateTimeContent": check response?.ProductInstanceReference?.AgreementIdentification?.IdentifierEndDate?.DateTimeContent,
                "TimeZoneCode": check response?.ProductInstanceReference?.AgreementIdentification?.IdentifierEndDate?.TimeZoneCode,
                "DaylightSavingIndicator": check response?.ProductInstanceReference?.AgreementIdentification?.IdentifierEndDate?.DaylightSavingIndicator,
                "DateTimeType": check response?.ProductInstanceReference?.AgreementIdentification?.IdentifierEndDate?.DateTimeType
            }
        },
        "AgreementDate": {
            "DateTimeContent": check response?.ProductInstanceReference?.AgreementDate?.DateTimeContent,
            "TimeZoneCode": check response?.ProductInstanceReference?.AgreementDate?.TimeZoneCode,
            "DaylightSavingIndicator": check response?.ProductInstanceReference?.AgreementDate?.DaylightSavingIndicator,
            "DateTimeType": check response?.ProductInstanceReference?.AgreementDate?.DateTimeType
        },
        "AgreementDescription": check response?.ProductInstanceReference?.AgreementDescription
    },
    "CustomerReference": {
        "PartyReference": check response?.CustomerReference?.PartyReference,
        "InvolvementReference": check response?.CustomerReference?.InvolvementReference
    },
    "CounterpartyReference": {
        "PartyReference": check response?.CounterpartyReference?.PartyReference,
        "InvolvementReference": check response?.CounterpartyReference?.InvolvementReference
    },
    "BaseCurrency": {
        "Currencycode": check response?.BaseCurrency?.Currencycode
    },
    "InterestApplicationRecord": {
        "InterestType": check response?.InterestApplicationRecord?.InterestType,
        "InterestRate": {
            "RateValue": check response?.InterestApplicationRecord?.InterestRate?.RateValue,
            "RateUnit": check response?.InterestApplicationRecord?.InterestRate?.RateUnit,
            "RatePeriod": {
                "FromDateTime": {
                    "DateTimeContent": check response?.InterestApplicationRecord?.InterestRate?.RatePeriod?.FromDateTime?.DateTimeContent,
                    "TimeZoneCode": check response?.InterestApplicationRecord?.InterestRate?.RatePeriod?.FromDateTime?.TimeZoneCode,
                    "DaylightSavingIndicator": check response?.InterestApplicationRecord?.InterestRate?.RatePeriod?.FromDateTime?.DaylightSavingIndicator,
                    "DateTimeType": check response?.InterestApplicationRecord?.InterestRate?.RatePeriod?.FromDateTime?.DateTimeType
                },
                "ToDateTime": {
                    "DateTimeContent": check response?.InterestApplicationRecord?.InterestRate?.RatePeriod?.ToDateTime?.DateTimeContent,
                    "TimeZoneCode": check response?.InterestApplicationRecord?.InterestRate?.RatePeriod?.ToDateTime?.TimeZoneCode,
                    "DaylightSavingIndicator": check response?.InterestApplicationRecord?.InterestRate?.RatePeriod?.ToDateTime?.DaylightSavingIndicator,
                    "DateTimeType": check response?.InterestApplicationRecord?.InterestRate?.RatePeriod?.ToDateTime?.DateTimeType
                }
            },
            "RateCapitalUnit": check response?.InterestApplicationRecord?.InterestRate?.RateCapitalUnit
        },
        "InterestDefinition": check response?.InterestApplicationRecord?.InterestDefinition,
        "InterestRateType": check response?.InterestApplicationRecord?.InterestRateType,
        "InterestPeriod": {
            "FromDateTime": {
                "DateTimeContent": check response?.InterestApplicationRecord?.InterestPeriod?.FromDateTime?.DateTimeContent,
                "TimeZoneCode": check response?.InterestApplicationRecord?.InterestPeriod?.FromDateTime?.TimeZoneCode,
                "DaylightSavingIndicator": check response?.InterestApplicationRecord?.InterestPeriod?.FromDateTime?.DaylightSavingIndicator,
                "DateTimeType": check response?.InterestApplicationRecord?.InterestPeriod?.FromDateTime?.DateTimeType
            },
            "ToDateTime": {
                "DateTimeContent": check response?.InterestApplicationRecord?.InterestPeriod?.ToDateTime?.DateTimeContent,
                "TimeZoneCode": check response?.InterestApplicationRecord?.InterestPeriod?.ToDateTime?.TimeZoneCode,
                "DaylightSavingIndicator": check response?.InterestApplicationRecord?.InterestPeriod?.ToDateTime?.DaylightSavingIndicator,
                "DateTimeType": check response?.InterestApplicationRecord?.InterestPeriod?.ToDateTime?.DateTimeType
            }
        },
        "InterestRatePlan": {
            "RatePlanName": check response?.InterestApplicationRecord?.InterestRatePlan?.RatePlanName,
            "RatePlanType": check response?.InterestApplicationRecord?.InterestRatePlan?.RatePlanType,
            "RatePlan": check response?.InterestApplicationRecord?.InterestRatePlan?.RatePlan
        },
        "InterestSchedule": {
            "ScheduleType": check response?.InterestApplicationRecord?.InterestSchedule?.ScheduleType
        },
        "LoanOriginationDate": {
            "DateContent": check response?.InterestApplicationRecord?.LoanOriginationDate?.DateContent
        },
        "LoanMaturityDate": {
            "DateContent": check response?.InterestApplicationRecord?.LoanMaturityDate?.DateContent
        },
        "LoanEndDate": {
            "DateContent": check response?.InterestApplicationRecord?.LoanEndDate?.DateContent
        },
        "LoanAmount": {
            "AmountValue": check response?.InterestApplicationRecord?.LoanAmount?.AmountValue,
            "AmountCurrency": {
                "Currencycode": check response?.InterestApplicationRecord?.LoanAmount?.AmountCurrency?.Currencycode
            },
            "DecimalPointPosition": check response?.InterestApplicationRecord?.LoanAmount?.DecimalPointPosition,
            "AmountType": check response?.InterestApplicationRecord?.LoanAmount?.AmountType
        },
        "LoanArrangementType": check response?.InterestApplicationRecord?.LoanArrangementType,
        "ArrangementAction": {
            "Action": check response?.InterestApplicationRecord?.ArrangementAction?.Action
        },
        "ArrangementStartDate": {
            "DateTimeContent": check response?.InterestApplicationRecord?.ArrangementStartDate?.DateTimeContent,
            "TimeZoneCode": check response?.InterestApplicationRecord?.ArrangementStartDate?.TimeZoneCode,
            "DaylightSavingIndicator": check response?.InterestApplicationRecord?.ArrangementStartDate?.DaylightSavingIndicator,
            "DateTimeType": check response?.InterestApplicationRecord?.ArrangementStartDate?.DateTimeType
        },
        "ArrangementEndDate": {
            "DateTimeContent": check response?.InterestApplicationRecord?.ArrangementEndDate?.DateTimeContent,
            "TimeZoneCode": check response?.InterestApplicationRecord?.ArrangementEndDate?.TimeZoneCode,
            "DaylightSavingIndicator": check response?.InterestApplicationRecord?.ArrangementEndDate?.DaylightSavingIndicator,
            "DateTimeType": check response?.InterestApplicationRecord?.ArrangementEndDate?.DateTimeType
        },
        "ArrangementStatus": {
            "ArrangementStatus": {
                "StatusReason": check response?.InterestApplicationRecord?.ArrangementStatus?.ArrangementStatus?.StatusReason,
                "StatusDateTime": {
                    "DateTimeContent": check response?.InterestApplicationRecord?.ArrangementStatus?.ArrangementStatus?.StatusDateTime?.DateTimeContent,
                    "TimeZoneCode": check response?.InterestApplicationRecord?.ArrangementStatus?.ArrangementStatus?.StatusDateTime?.TimeZoneCode,
                    "DaylightSavingIndicator": check response?.InterestApplicationRecord?.ArrangementStatus?.ArrangementStatus?.StatusDateTime?.DaylightSavingIndicator,
                    "DateTimeType": check response?.InterestApplicationRecord?.ArrangementStatus?.ArrangementStatus?.StatusDateTime?.DateTimeType
                },
                "StatusValidityPeriod": {
                    "FromDateTime": {
                        "DateTimeContent": check response?.InterestApplicationRecord?.ArrangementStatus?.ArrangementStatus?.StatusValidityPeriod?.FromDateTime?.DateTimeContent,
                        "TimeZoneCode": check response?.InterestApplicationRecord?.ArrangementStatus?.ArrangementStatus?.StatusValidityPeriod?.FromDateTime?.TimeZoneCode,
                        "DaylightSavingIndicator": check response?.InterestApplicationRecord?.ArrangementStatus?.ArrangementStatus?.StatusValidityPeriod?.FromDateTime?.DaylightSavingIndicator,
                        "DateTimeType": check response?.InterestApplicationRecord?.ArrangementStatus?.ArrangementStatus?.StatusValidityPeriod?.FromDateTime?.DateTimeType
                    },
                    "ToDateTime": {
                        "DateTimeContent": check response?.InterestApplicationRecord?.ArrangementStatus?.ArrangementStatus?.StatusValidityPeriod?.ToDateTime?.DateTimeContent,
                        "TimeZoneCode": check response?.InterestApplicationRecord?.ArrangementStatus?.ArrangementStatus?.StatusValidityPeriod?.ToDateTime?.TimeZoneCode,
                        "DaylightSavingIndicator": check response?.InterestApplicationRecord?.ArrangementStatus?.ArrangementStatus?.StatusValidityPeriod?.ToDateTime?.DaylightSavingIndicator,
                        "DateTimeType": check response?.InterestApplicationRecord?.ArrangementStatus?.ArrangementStatus?.StatusValidityPeriod?.ToDateTime?.DateTimeType
                    }
                },
                "StatusInvolvedPartyReference": {
                    "PartyReference": check response?.InterestApplicationRecord?.ArrangementStatus?.ArrangementStatus?.StatusInvolvedPartyReference?.PartyReference,
                    "InvolvementReference": check response?.InterestApplicationRecord?.ArrangementStatus?.ArrangementStatus?.StatusInvolvedPartyReference?.InvolvementReference
                }
            },
            "ArrangementStatusType": check response?.InterestApplicationRecord?.ArrangementStatus?.ArrangementStatusType
        },
        "ArrangementSubjectMatter": {
            "Subject": check response?.InterestApplicationRecord?.ArrangementSubjectMatter?.Subject
        },
        "Arrangementtype": check response?.InterestApplicationRecord?.Arrangementtype,
        "ArrangementIdentification": {
            "IdentifierValue": check response?.InterestApplicationRecord?.ArrangementIdentification?.IdentifierValue,
            "IdentifierIssuerReference": {
                "PartyReference": check response?.InterestApplicationRecord?.ArrangementIdentification?.IdentifierIssuerReference?.PartyReference,
                "InvolvementReference": check response?.InterestApplicationRecord?.ArrangementIdentification?.IdentifierIssuerReference?.InvolvementReference
            },
            "IdentifierStartDate": {
                "DateTimeContent": check response?.InterestApplicationRecord?.ArrangementIdentification?.IdentifierStartDate?.DateTimeContent,
                "TimeZoneCode": check response?.InterestApplicationRecord?.ArrangementIdentification?.IdentifierStartDate?.TimeZoneCode,
                "DaylightSavingIndicator": check response?.InterestApplicationRecord?.ArrangementIdentification?.IdentifierStartDate?.DaylightSavingIndicator,
                "DateTimeType": check response?.InterestApplicationRecord?.ArrangementIdentification?.IdentifierStartDate?.DateTimeType
            },
            "IdentifierEndDate": {
                "DateTimeContent": check response?.InterestApplicationRecord?.ArrangementIdentification?.IdentifierEndDate?.DateTimeContent,
                "TimeZoneCode": check response?.InterestApplicationRecord?.ArrangementIdentification?.IdentifierEndDate?.TimeZoneCode,
                "DaylightSavingIndicator": check response?.InterestApplicationRecord?.ArrangementIdentification?.IdentifierEndDate?.DaylightSavingIndicator,
                "DateTimeType": check response?.InterestApplicationRecord?.ArrangementIdentification?.IdentifierEndDate?.DateTimeType
            }
        },
        "PaymentCardArrangementIdentifier": {
            "IdentifierValue": check response?.InterestApplicationRecord?.PaymentCardArrangementIdentifier?.IdentifierValue,
            "IdentifierIssuerReference": {
                "PartyReference": check response?.InterestApplicationRecord?.PaymentCardArrangementIdentifier?.IdentifierIssuerReference?.PartyReference,
                "InvolvementReference": check response?.InterestApplicationRecord?.PaymentCardArrangementIdentifier?.IdentifierIssuerReference?.InvolvementReference
            },
            "IdentifierStartDate": {
                "DateTimeContent": check response?.InterestApplicationRecord?.PaymentCardArrangementIdentifier?.IdentifierStartDate?.DateTimeContent,
                "TimeZoneCode": check response?.InterestApplicationRecord?.PaymentCardArrangementIdentifier?.IdentifierStartDate?.TimeZoneCode,
                "DaylightSavingIndicator": check response?.InterestApplicationRecord?.PaymentCardArrangementIdentifier?.IdentifierStartDate?.DaylightSavingIndicator,
                "DateTimeType": check response?.InterestApplicationRecord?.PaymentCardArrangementIdentifier?.IdentifierStartDate?.DateTimeType
            },
            "IdentifierEndDate": {
                "DateTimeContent": check response?.InterestApplicationRecord?.PaymentCardArrangementIdentifier?.IdentifierEndDate?.DateTimeContent,
                "TimeZoneCode": check response?.InterestApplicationRecord?.PaymentCardArrangementIdentifier?.IdentifierEndDate?.TimeZoneCode,
                "DaylightSavingIndicator": check response?.InterestApplicationRecord?.PaymentCardArrangementIdentifier?.IdentifierEndDate?.DaylightSavingIndicator,
                "DateTimeType": check response?.InterestApplicationRecord?.PaymentCardArrangementIdentifier?.IdentifierEndDate?.DateTimeType
            }
        },
        "CardPaymentArrangementType": check response?.InterestApplicationRecord?.CardPaymentArrangementType,
        "SavingsAccountArrangementType": check response?.InterestApplicationRecord?.SavingsAccountArrangementType,
        "SavingsAccountArrangementProductFeatureType": {
            "ProductFeatureTypeValues": check response?.InterestApplicationRecord?.SavingsAccountArrangementProductFeatureType?.ProductFeatureTypeValues
        },
        "CurrentAccountArrangementType": check response?.InterestApplicationRecord?.CurrentAccountArrangementType,
        "CurrentAccountArrangementProductFeatureType": {
            "ProductFeatureTypeValues": check response?.InterestApplicationRecord?.CurrentAccountArrangementProductFeatureType?.ProductFeatureTypeValues
        },
        "ProductArrangementType": check response?.InterestApplicationRecord?.ProductArrangementType,
        "TermDepositArrangementType": check response?.InterestApplicationRecord?.TermDepositArrangementType,
        "TermDepositArrangementProductFeatureType": {
            "ProductFeatureTypeValues": check response?.InterestApplicationRecord?.TermDepositArrangementProductFeatureType?.ProductFeatureTypeValues
        },
        "TermDepositMaturityDate": {
            "DateTimeContent": check response?.InterestApplicationRecord?.TermDepositMaturityDate?.DateTimeContent,
            "TimeZoneCode": check response?.InterestApplicationRecord?.TermDepositMaturityDate?.TimeZoneCode,
            "DaylightSavingIndicator": check response?.InterestApplicationRecord?.TermDepositMaturityDate?.DaylightSavingIndicator,
            "DateTimeType": check response?.InterestApplicationRecord?.TermDepositMaturityDate?.DateTimeType
        },
        "TermDepositOpenDate": {
            "DateTimeContent": check response?.InterestApplicationRecord?.TermDepositOpenDate?.DateTimeContent,
            "TimeZoneCode": check response?.InterestApplicationRecord?.TermDepositOpenDate?.TimeZoneCode,
            "DaylightSavingIndicator": check response?.InterestApplicationRecord?.TermDepositOpenDate?.DaylightSavingIndicator,
            "DateTimeType": check response?.InterestApplicationRecord?.TermDepositOpenDate?.DateTimeType
        },
        "TermDepositAmount": {
            "AmountValue": check response?.InterestApplicationRecord?.TermDepositAmount?.AmountValue,
            "AmountCurrency": {
                "Currencycode": check response?.InterestApplicationRecord?.TermDepositAmount?.AmountCurrency?.Currencycode
            },
            "DecimalPointPosition": check response?.InterestApplicationRecord?.TermDepositAmount?.DecimalPointPosition,
            "AmountType": check response?.InterestApplicationRecord?.TermDepositAmount?.AmountType
        },
        "TermDepositDuration": {
            "Duration": check response?.InterestApplicationRecord?.TermDepositDuration?.Duration
        },
        "DepositTerm": check response?.InterestApplicationRecord?.DepositTerm,
        "VirtualAccountArrangementType": check response?.InterestApplicationRecord?.VirtualAccountArrangementType,
        "BankPlanArrangementType": check response?.InterestApplicationRecord?.BankPlanArrangementType,
        "CreditFacilityDataTime": {
            "DateTimeContent": check response?.InterestApplicationRecord?.CreditFacilityDataTime?.DateTimeContent,
            "TimeZoneCode": check response?.InterestApplicationRecord?.CreditFacilityDataTime?.TimeZoneCode,
            "DaylightSavingIndicator": check response?.InterestApplicationRecord?.CreditFacilityDataTime?.DaylightSavingIndicator,
            "DateTimeType": check response?.InterestApplicationRecord?.CreditFacilityDataTime?.DateTimeType
        },
        "CreditFacilityType": check response?.InterestApplicationRecord?.CreditFacilityType,
        "CreditFacilityRateType": check response?.InterestApplicationRecord?.CreditFacilityRateType,
        "CreditFacilityNumber": {
            "IdentifierValue": check response?.InterestApplicationRecord?.CreditFacilityNumber?.IdentifierValue,
            "IdentifierIssuerReference": {
                "PartyReference": check response?.InterestApplicationRecord?.CreditFacilityNumber?.IdentifierIssuerReference?.PartyReference,
                "InvolvementReference": check response?.InterestApplicationRecord?.CreditFacilityNumber?.IdentifierIssuerReference?.InvolvementReference
            },
            "IdentifierStartDate": {
                "DateTimeContent": check response?.InterestApplicationRecord?.CreditFacilityNumber?.IdentifierStartDate?.DateTimeContent,
                "TimeZoneCode": check response?.InterestApplicationRecord?.CreditFacilityNumber?.IdentifierStartDate?.TimeZoneCode,
                "DaylightSavingIndicator": check response?.InterestApplicationRecord?.CreditFacilityNumber?.IdentifierStartDate?.DaylightSavingIndicator,
                "DateTimeType": check response?.InterestApplicationRecord?.CreditFacilityNumber?.IdentifierStartDate?.DateTimeType
            },
            "IdentifierEndDate": {
                "DateTimeContent": check response?.InterestApplicationRecord?.CreditFacilityNumber?.IdentifierEndDate?.DateTimeContent,
                "TimeZoneCode": check response?.InterestApplicationRecord?.CreditFacilityNumber?.IdentifierEndDate?.TimeZoneCode,
                "DaylightSavingIndicator": check response?.InterestApplicationRecord?.CreditFacilityNumber?.IdentifierEndDate?.DaylightSavingIndicator,
                "DateTimeType": check response?.InterestApplicationRecord?.CreditFacilityNumber?.IdentifierEndDate?.DateTimeType
            }
        },
        "CreditFacilityAmount": {
            "AmountValue": check response?.InterestApplicationRecord?.CreditFacilityAmount?.AmountValue,
            "AmountCurrency": {
                "Currencycode": check response?.InterestApplicationRecord?.CreditFacilityAmount?.AmountCurrency?.Currencycode
            },
            "DecimalPointPosition": check response?.InterestApplicationRecord?.CreditFacilityAmount?.DecimalPointPosition,
            "AmountType": check response?.InterestApplicationRecord?.CreditFacilityAmount?.AmountType
        }
    },
    "InterestTransaction": {
        "InterestTransactionAmount": {
            "AmountValue": check response?.InterestTransaction?.InterestTransactionAmount?.AmountValue,
            "AmountCurrency": {
                "Currencycode": check response?.InterestTransaction?.InterestTransactionAmount?.AmountCurrency?.Currencycode
            },
            "DecimalPointPosition": check response?.InterestTransaction?.InterestTransactionAmount?.DecimalPointPosition,
            "AmountType": check response?.InterestTransaction?.InterestTransactionAmount?.AmountType
        },
        "InterestTransactionDescription": check response?.InterestTransaction?.InterestTransactionDescription,
        "InterestTransactionType": check response?.InterestTransaction?.InterestTransactionType,
        "AppliedInterestRate": {
            "RateValue": check response?.InterestTransaction?.AppliedInterestRate?.RateValue,
            "RateUnit": check response?.InterestTransaction?.AppliedInterestRate?.RateUnit,
            "RatePeriod": {
                "FromDateTime": {
                    "DateTimeContent": check response?.InterestTransaction?.AppliedInterestRate?.RatePeriod?.FromDateTime?.DateTimeContent,
                    "TimeZoneCode": check response?.InterestTransaction?.AppliedInterestRate?.RatePeriod?.FromDateTime?.TimeZoneCode,
                    "DaylightSavingIndicator": check response?.InterestTransaction?.AppliedInterestRate?.RatePeriod?.FromDateTime?.DaylightSavingIndicator,
                    "DateTimeType": check response?.InterestTransaction?.AppliedInterestRate?.RatePeriod?.FromDateTime?.DateTimeType
                },
                "ToDateTime": {
                    "DateTimeContent": check response?.InterestTransaction?.AppliedInterestRate?.RatePeriod?.ToDateTime?.DateTimeContent,
                    "TimeZoneCode": check response?.InterestTransaction?.AppliedInterestRate?.RatePeriod?.ToDateTime?.TimeZoneCode,
                    "DaylightSavingIndicator": check response?.InterestTransaction?.AppliedInterestRate?.RatePeriod?.ToDateTime?.DaylightSavingIndicator,
                    "DateTimeType": check response?.InterestTransaction?.AppliedInterestRate?.RatePeriod?.ToDateTime?.DateTimeType
                }
            },
            "RateCapitalUnit": check response?.InterestTransaction?.AppliedInterestRate?.RateCapitalUnit
        },
        "AppliedInteretType": check response?.InterestTransaction?.AppliedInteretType,
        "InterestCreditDebitIndicator": check response?.InterestTransaction?.InterestCreditDebitIndicator,
        "TransactionIdentification": {
            "IdentifierValue": check response?.InterestTransaction?.TransactionIdentification?.IdentifierValue,
            "IdentifierIssuerReference": {
                "PartyReference": check response?.InterestTransaction?.TransactionIdentification?.IdentifierIssuerReference?.PartyReference,
                "InvolvementReference": check response?.InterestTransaction?.TransactionIdentification?.IdentifierIssuerReference?.InvolvementReference
            },
            "IdentifierStartDate": {
                "DateTimeContent": check response?.InterestTransaction?.TransactionIdentification?.IdentifierStartDate?.DateTimeContent,
                "TimeZoneCode": check response?.InterestTransaction?.TransactionIdentification?.IdentifierStartDate?.TimeZoneCode,
                "DaylightSavingIndicator": check response?.InterestTransaction?.TransactionIdentification?.IdentifierStartDate?.DaylightSavingIndicator,
                "DateTimeType": check response?.InterestTransaction?.TransactionIdentification?.IdentifierStartDate?.DateTimeType
            },
            "IdentifierEndDate": {
                "DateTimeContent": check response?.InterestTransaction?.TransactionIdentification?.IdentifierEndDate?.DateTimeContent,
                "TimeZoneCode": check response?.InterestTransaction?.TransactionIdentification?.IdentifierEndDate?.TimeZoneCode,
                "DaylightSavingIndicator": check response?.InterestTransaction?.TransactionIdentification?.IdentifierEndDate?.DaylightSavingIndicator,
                "DateTimeType": check response?.InterestTransaction?.TransactionIdentification?.IdentifierEndDate?.DateTimeType
            }
        },
        "TransactionDate": {
            "TransactionDate": {
                "DateTimeContent": check response?.InterestTransaction?.TransactionDate?.TransactionDate?.DateTimeContent,
                "TimeZoneCode": check response?.InterestTransaction?.TransactionDate?.TransactionDate?.TimeZoneCode,
                "DaylightSavingIndicator": check response?.InterestTransaction?.TransactionDate?.TransactionDate?.DaylightSavingIndicator,
                "DateTimeType": check response?.InterestTransaction?.TransactionDate?.TransactionDate?.DateTimeType
            },
            "TransactionDateType": check response?.InterestTransaction?.TransactionDate?.TransactionDateType
        },
        "TransactionType": check response?.InterestTransaction?.TransactionType,
        "TransactionDescription": check response?.InterestTransaction?.TransactionDescription,
        "TransactionStatus": {
            "TransactionStatus": {
                "StatusReason": check response?.InterestTransaction?.TransactionStatus?.TransactionStatus?.StatusReason,
                "StatusDateTime": {
                    "DateTimeContent": check response?.InterestTransaction?.TransactionStatus?.TransactionStatus?.StatusDateTime?.DateTimeContent,
                    "TimeZoneCode": check response?.InterestTransaction?.TransactionStatus?.TransactionStatus?.StatusDateTime?.TimeZoneCode,
                    "DaylightSavingIndicator": check response?.InterestTransaction?.TransactionStatus?.TransactionStatus?.StatusDateTime?.DaylightSavingIndicator,
                    "DateTimeType": check response?.InterestTransaction?.TransactionStatus?.TransactionStatus?.StatusDateTime?.DateTimeType
                },
                "StatusValidityPeriod": {
                    "FromDateTime": {
                        "DateTimeContent": check response?.InterestTransaction?.TransactionStatus?.TransactionStatus?.StatusValidityPeriod?.FromDateTime?.DateTimeContent,
                        "TimeZoneCode": check response?.InterestTransaction?.TransactionStatus?.TransactionStatus?.StatusValidityPeriod?.FromDateTime?.TimeZoneCode,
                        "DaylightSavingIndicator": check response?.InterestTransaction?.TransactionStatus?.TransactionStatus?.StatusValidityPeriod?.FromDateTime?.DaylightSavingIndicator,
                        "DateTimeType": check response?.InterestTransaction?.TransactionStatus?.TransactionStatus?.StatusValidityPeriod?.FromDateTime?.DateTimeType
                    },
                    "ToDateTime": {
                        "DateTimeContent": check response?.InterestTransaction?.TransactionStatus?.TransactionStatus?.StatusValidityPeriod?.ToDateTime?.DateTimeContent,
                        "TimeZoneCode": check response?.InterestTransaction?.TransactionStatus?.TransactionStatus?.StatusValidityPeriod?.ToDateTime?.TimeZoneCode,
                        "DaylightSavingIndicator": check response?.InterestTransaction?.TransactionStatus?.TransactionStatus?.StatusValidityPeriod?.ToDateTime?.DaylightSavingIndicator,
                        "DateTimeType": check response?.InterestTransaction?.TransactionStatus?.TransactionStatus?.StatusValidityPeriod?.ToDateTime?.DateTimeType
                    }
                },
                "StatusInvolvedPartyReference": {
                    "PartyReference": check response?.InterestTransaction?.TransactionStatus?.TransactionStatus?.StatusInvolvedPartyReference?.PartyReference,
                    "InvolvementReference": check response?.InterestTransaction?.TransactionStatus?.TransactionStatus?.StatusInvolvedPartyReference?.InvolvementReference
                }
            },
            "TransactionStatusType": check response?.InterestTransaction?.TransactionStatus?.TransactionStatusType
        },
        "TransactionName": {
            "Name": check response?.InterestTransaction?.TransactionName?.Name
        }
    },
    "TransactionDescription": check response?.TransactionDescription,
    "TransactionRateType": check response?.TransactionRateType,
    "TransactionInterestCharge": {
        "AmountValue": check response?.TransactionInterestCharge?.AmountValue,
        "AmountCurrency": {
            "Currencycode": check response?.TransactionInterestCharge?.AmountCurrency?.Currencycode
        },
        "DecimalPointPosition": check response?.TransactionInterestCharge?.DecimalPointPosition,
        "AmountType": check response?.TransactionInterestCharge?.AmountType
    },
    "ManagedPositionLimits": {
        "LimitType": check response?.ManagedPositionLimits?.LimitType,
        "LimitCurrency": {
            "Currencycode": check response?.ManagedPositionLimits?.LimitCurrency?.Currencycode
        },
        "LimitValidityPeriod": {
            "FromDateTime": {
                "DateTimeContent": check response?.ManagedPositionLimits?.LimitValidityPeriod?.FromDateTime?.DateTimeContent,
                "TimeZoneCode": check response?.ManagedPositionLimits?.LimitValidityPeriod?.FromDateTime?.TimeZoneCode,
                "DaylightSavingIndicator": check response?.ManagedPositionLimits?.LimitValidityPeriod?.FromDateTime?.DaylightSavingIndicator,
                "DateTimeType": check response?.ManagedPositionLimits?.LimitValidityPeriod?.FromDateTime?.DateTimeType
            },
            "ToDateTime": {
                "DateTimeContent": check response?.ManagedPositionLimits?.LimitValidityPeriod?.ToDateTime?.DateTimeContent,
                "TimeZoneCode": check response?.ManagedPositionLimits?.LimitValidityPeriod?.ToDateTime?.TimeZoneCode,
                "DaylightSavingIndicator": check response?.ManagedPositionLimits?.LimitValidityPeriod?.ToDateTime?.DaylightSavingIndicator,
                "DateTimeType": check response?.ManagedPositionLimits?.LimitValidityPeriod?.ToDateTime?.DateTimeType
            }
        },
        "LimitAmount": {
            "AmountValue": check response?.ManagedPositionLimits?.LimitAmount?.AmountValue,
            "AmountCurrency": {
                "Currencycode": check response?.ManagedPositionLimits?.LimitAmount?.AmountCurrency?.Currencycode
            },
            "DecimalPointPosition": check response?.ManagedPositionLimits?.LimitAmount?.DecimalPointPosition,
            "AmountType": check response?.ManagedPositionLimits?.LimitAmount?.AmountType
        },
        "LimitStatus": {
            "LimitStatus": {
                "StatusReason": check response?.ManagedPositionLimits?.LimitStatus?.LimitStatus?.StatusReason,
                "StatusDateTime": {
                    "DateTimeContent": check response?.ManagedPositionLimits?.LimitStatus?.LimitStatus?.StatusDateTime?.DateTimeContent,
                    "TimeZoneCode": check response?.ManagedPositionLimits?.LimitStatus?.LimitStatus?.StatusDateTime?.TimeZoneCode,
                    "DaylightSavingIndicator": check response?.ManagedPositionLimits?.LimitStatus?.LimitStatus?.StatusDateTime?.DaylightSavingIndicator,
                    "DateTimeType": check response?.ManagedPositionLimits?.LimitStatus?.LimitStatus?.StatusDateTime?.DateTimeType
                },
                "StatusValidityPeriod": {
                    "FromDateTime": {
                        "DateTimeContent": check response?.ManagedPositionLimits?.LimitStatus?.LimitStatus?.StatusValidityPeriod?.FromDateTime?.DateTimeContent,
                        "TimeZoneCode": check response?.ManagedPositionLimits?.LimitStatus?.LimitStatus?.StatusValidityPeriod?.FromDateTime?.TimeZoneCode,
                        "DaylightSavingIndicator": check response?.ManagedPositionLimits?.LimitStatus?.LimitStatus?.StatusValidityPeriod?.FromDateTime?.DaylightSavingIndicator,
                        "DateTimeType": check response?.ManagedPositionLimits?.LimitStatus?.LimitStatus?.StatusValidityPeriod?.FromDateTime?.DateTimeType
                    },
                    "ToDateTime": {
                        "DateTimeContent": check response?.ManagedPositionLimits?.LimitStatus?.LimitStatus?.StatusValidityPeriod?.ToDateTime?.DateTimeContent,
                        "TimeZoneCode": check response?.ManagedPositionLimits?.LimitStatus?.LimitStatus?.StatusValidityPeriod?.ToDateTime?.TimeZoneCode,
                        "DaylightSavingIndicator": check response?.ManagedPositionLimits?.LimitStatus?.LimitStatus?.StatusValidityPeriod?.ToDateTime?.DaylightSavingIndicator,
                        "DateTimeType": check response?.ManagedPositionLimits?.LimitStatus?.LimitStatus?.StatusValidityPeriod?.ToDateTime?.DateTimeType
                    }
                },
                "StatusInvolvedPartyReference": {
                    "PartyReference": check response?.ManagedPositionLimits?.LimitStatus?.LimitStatus?.StatusInvolvedPartyReference?.PartyReference,
                    "InvolvementReference": check response?.ManagedPositionLimits?.LimitStatus?.LimitStatus?.StatusInvolvedPartyReference?.InvolvementReference
                }
            },
            "LimitStatusType": check response?.ManagedPositionLimits?.LimitStatus?.LimitStatusType
        },
        "LimitRate": {
            "RateValue": check response?.ManagedPositionLimits?.LimitRate?.RateValue,
            "RateUnit": check response?.ManagedPositionLimits?.LimitRate?.RateUnit,
            "RatePeriod": {
                "FromDateTime": {
                    "DateTimeContent": check response?.ManagedPositionLimits?.LimitRate?.RatePeriod?.FromDateTime?.DateTimeContent,
                    "TimeZoneCode": check response?.ManagedPositionLimits?.LimitRate?.RatePeriod?.FromDateTime?.TimeZoneCode,
                    "DaylightSavingIndicator": check response?.ManagedPositionLimits?.LimitRate?.RatePeriod?.FromDateTime?.DaylightSavingIndicator,
                    "DateTimeType": check response?.ManagedPositionLimits?.LimitRate?.RatePeriod?.FromDateTime?.DateTimeType
                },
                "ToDateTime": {
                    "DateTimeContent": check response?.ManagedPositionLimits?.LimitRate?.RatePeriod?.ToDateTime?.DateTimeContent,
                    "TimeZoneCode": check response?.ManagedPositionLimits?.LimitRate?.RatePeriod?.ToDateTime?.TimeZoneCode,
                    "DaylightSavingIndicator": check response?.ManagedPositionLimits?.LimitRate?.RatePeriod?.ToDateTime?.DaylightSavingIndicator,
                    "DateTimeType": check response?.ManagedPositionLimits?.LimitRate?.RatePeriod?.ToDateTime?.DateTimeType
                }
            },
            "RateCapitalUnit": check response?.ManagedPositionLimits?.LimitRate?.RateCapitalUnit
        },
        "LimitFrequency": {
            "FrequencyCode": check response?.ManagedPositionLimits?.LimitFrequency?.FrequencyCode,
            "FrequencyName": {
                "Name": check response?.ManagedPositionLimits?.LimitFrequency?.FrequencyName?.Name
            },
            "FrequencyDefinition": check response?.ManagedPositionLimits?.LimitFrequency?.FrequencyDefinition
        },
        "LimitIdentification": {
            "IdentifierValue": check response?.ManagedPositionLimits?.LimitIdentification?.IdentifierValue,
            "IdentifierIssuerReference": {
                "PartyReference": check response?.ManagedPositionLimits?.LimitIdentification?.IdentifierIssuerReference?.PartyReference,
                "InvolvementReference": check response?.ManagedPositionLimits?.LimitIdentification?.IdentifierIssuerReference?.InvolvementReference
            },
            "IdentifierStartDate": {
                "DateTimeContent": check response?.ManagedPositionLimits?.LimitIdentification?.IdentifierStartDate?.DateTimeContent,
                "TimeZoneCode": check response?.ManagedPositionLimits?.LimitIdentification?.IdentifierStartDate?.TimeZoneCode,
                "DaylightSavingIndicator": check response?.ManagedPositionLimits?.LimitIdentification?.IdentifierStartDate?.DaylightSavingIndicator,
                "DateTimeType": check response?.ManagedPositionLimits?.LimitIdentification?.IdentifierStartDate?.DateTimeType
            },
            "IdentifierEndDate": {
                "DateTimeContent": check response?.ManagedPositionLimits?.LimitIdentification?.IdentifierEndDate?.DateTimeContent,
                "TimeZoneCode": check response?.ManagedPositionLimits?.LimitIdentification?.IdentifierEndDate?.TimeZoneCode,
                "DaylightSavingIndicator": check response?.ManagedPositionLimits?.LimitIdentification?.IdentifierEndDate?.DaylightSavingIndicator,
                "DateTimeType": check response?.ManagedPositionLimits?.LimitIdentification?.IdentifierEndDate?.DateTimeType
            }
        },
        "LimitStartDatetime": {
            "DateTimeContent": check response?.ManagedPositionLimits?.LimitStartDatetime?.DateTimeContent,
            "TimeZoneCode": check response?.ManagedPositionLimits?.LimitStartDatetime?.TimeZoneCode,
            "DaylightSavingIndicator": check response?.ManagedPositionLimits?.LimitStartDatetime?.DaylightSavingIndicator,
            "DateTimeType": check response?.ManagedPositionLimits?.LimitStartDatetime?.DateTimeType
        },
        "LimitCreditDebitIndicator": check response?.ManagedPositionLimits?.LimitCreditDebitIndicator,
        "LimitAmountType": check response?.ManagedPositionLimits?.LimitAmountType,
        "LoanOriginationDate": {
            "DateContent": check response?.ManagedPositionLimits?.LoanOriginationDate?.DateContent
        },
        "LoanMaturityDate": {
            "DateContent": check response?.ManagedPositionLimits?.LoanMaturityDate?.DateContent
        },
        "LoanEndDate": {
            "DateContent": check response?.ManagedPositionLimits?.LoanEndDate?.DateContent
        },
        "LoanAmount": {
            "AmountValue": check response?.ManagedPositionLimits?.LoanAmount?.AmountValue,
            "AmountCurrency": {
                "Currencycode": check response?.ManagedPositionLimits?.LoanAmount?.AmountCurrency?.Currencycode
            },
            "DecimalPointPosition": check response?.ManagedPositionLimits?.LoanAmount?.DecimalPointPosition,
            "AmountType": check response?.ManagedPositionLimits?.LoanAmount?.AmountType
        },
        "LoanArrangementType": check response?.ManagedPositionLimits?.LoanArrangementType,
        "ArrangementAction": {
            "Action": check response?.ManagedPositionLimits?.ArrangementAction?.Action
        },
        "ArrangementStartDate": {
            "DateTimeContent": check response?.ManagedPositionLimits?.ArrangementStartDate?.DateTimeContent,
            "TimeZoneCode": check response?.ManagedPositionLimits?.ArrangementStartDate?.TimeZoneCode,
            "DaylightSavingIndicator": check response?.ManagedPositionLimits?.ArrangementStartDate?.DaylightSavingIndicator,
            "DateTimeType": check response?.ManagedPositionLimits?.ArrangementStartDate?.DateTimeType
        },
        "ArrangementEndDate": {
            "DateTimeContent": check response?.ManagedPositionLimits?.ArrangementEndDate?.DateTimeContent,
            "TimeZoneCode": check response?.ManagedPositionLimits?.ArrangementEndDate?.TimeZoneCode,
            "DaylightSavingIndicator": check response?.ManagedPositionLimits?.ArrangementEndDate?.DaylightSavingIndicator,
            "DateTimeType": check response?.ManagedPositionLimits?.ArrangementEndDate?.DateTimeType
        },
        "ArrangementStatus": {
            "ArrangementStatus": {
                "StatusReason": check response?.ManagedPositionLimits?.ArrangementStatus?.ArrangementStatus?.StatusReason,
                "StatusDateTime": {
                    "DateTimeContent": check response?.ManagedPositionLimits?.ArrangementStatus?.ArrangementStatus?.StatusDateTime?.DateTimeContent,
                    "TimeZoneCode": check response?.ManagedPositionLimits?.ArrangementStatus?.ArrangementStatus?.StatusDateTime?.TimeZoneCode,
                    "DaylightSavingIndicator": check response?.ManagedPositionLimits?.ArrangementStatus?.ArrangementStatus?.StatusDateTime?.DaylightSavingIndicator,
                    "DateTimeType": check response?.ManagedPositionLimits?.ArrangementStatus?.ArrangementStatus?.StatusDateTime?.DateTimeType
                },
                "StatusValidityPeriod": {
                    "FromDateTime": {
                        "DateTimeContent": check response?.ManagedPositionLimits?.ArrangementStatus?.ArrangementStatus?.StatusValidityPeriod?.FromDateTime?.DateTimeContent,
                        "TimeZoneCode": check response?.ManagedPositionLimits?.ArrangementStatus?.ArrangementStatus?.StatusValidityPeriod?.FromDateTime?.TimeZoneCode,
                        "DaylightSavingIndicator": check response?.ManagedPositionLimits?.ArrangementStatus?.ArrangementStatus?.StatusValidityPeriod?.FromDateTime?.DaylightSavingIndicator,
                        "DateTimeType": check response?.ManagedPositionLimits?.ArrangementStatus?.ArrangementStatus?.StatusValidityPeriod?.FromDateTime?.DateTimeType
                    },
                    "ToDateTime": {
                        "DateTimeContent": check response?.ManagedPositionLimits?.ArrangementStatus?.ArrangementStatus?.StatusValidityPeriod?.ToDateTime?.DateTimeContent,
                        "TimeZoneCode": check response?.ManagedPositionLimits?.ArrangementStatus?.ArrangementStatus?.StatusValidityPeriod?.ToDateTime?.TimeZoneCode,
                        "DaylightSavingIndicator": check response?.ManagedPositionLimits?.ArrangementStatus?.ArrangementStatus?.StatusValidityPeriod?.ToDateTime?.DaylightSavingIndicator,
                        "DateTimeType": check response?.ManagedPositionLimits?.ArrangementStatus?.ArrangementStatus?.StatusValidityPeriod?.ToDateTime?.DateTimeType
                    }
                },
                "StatusInvolvedPartyReference": {
                    "PartyReference": check response?.ManagedPositionLimits?.ArrangementStatus?.ArrangementStatus?.StatusInvolvedPartyReference?.PartyReference,
                    "InvolvementReference": check response?.ManagedPositionLimits?.ArrangementStatus?.ArrangementStatus?.StatusInvolvedPartyReference?.InvolvementReference
                }
            },
            "ArrangementStatusType": check response?.ManagedPositionLimits?.ArrangementStatus?.ArrangementStatusType
        },
        "ArrangementSubjectMatter": {
            "Subject": check response?.ManagedPositionLimits?.ArrangementSubjectMatter?.Subject
        },
        "Arrangementtype": check response?.ManagedPositionLimits?.Arrangementtype,
        "ArrangementIdentification": {
            "IdentifierValue": check response?.ManagedPositionLimits?.ArrangementIdentification?.IdentifierValue,
            "IdentifierIssuerReference": {
                "PartyReference": check response?.ManagedPositionLimits?.ArrangementIdentification?.IdentifierIssuerReference?.PartyReference,
                "InvolvementReference": check response?.ManagedPositionLimits?.ArrangementIdentification?.IdentifierIssuerReference?.InvolvementReference
            },
            "IdentifierStartDate": {
                "DateTimeContent": check response?.ManagedPositionLimits?.ArrangementIdentification?.IdentifierStartDate?.DateTimeContent,
                "TimeZoneCode": check response?.ManagedPositionLimits?.ArrangementIdentification?.IdentifierStartDate?.TimeZoneCode,
                "DaylightSavingIndicator": check response?.ManagedPositionLimits?.ArrangementIdentification?.IdentifierStartDate?.DaylightSavingIndicator,
                "DateTimeType": check response?.ManagedPositionLimits?.ArrangementIdentification?.IdentifierStartDate?.DateTimeType
            },
            "IdentifierEndDate": {
                "DateTimeContent": check response?.ManagedPositionLimits?.ArrangementIdentification?.IdentifierEndDate?.DateTimeContent,
                "TimeZoneCode": check response?.ManagedPositionLimits?.ArrangementIdentification?.IdentifierEndDate?.TimeZoneCode,
                "DaylightSavingIndicator": check response?.ManagedPositionLimits?.ArrangementIdentification?.IdentifierEndDate?.DaylightSavingIndicator,
                "DateTimeType": check response?.ManagedPositionLimits?.ArrangementIdentification?.IdentifierEndDate?.DateTimeType
            }
        },
        "SavingsAccountArrangementType": check response?.ManagedPositionLimits?.SavingsAccountArrangementType,
        "SavingsAccountArrangementProductFeatureType": {
            "ProductFeatureTypeValues": check response?.ManagedPositionLimits?.SavingsAccountArrangementProductFeatureType?.ProductFeatureTypeValues
        },
        "ProductArrangementType": check response?.ManagedPositionLimits?.ProductArrangementType,
        "CurrentAccountArrangementType": check response?.ManagedPositionLimits?.CurrentAccountArrangementType,
        "CurrentAccountArrangementProductFeatureType": {
            "ProductFeatureTypeValues": check response?.ManagedPositionLimits?.CurrentAccountArrangementProductFeatureType?.ProductFeatureTypeValues
        },
        "TermDepositArrangementType": check response?.ManagedPositionLimits?.TermDepositArrangementType,
        "TermDepositArrangementProductFeatureType": {
            "ProductFeatureTypeValues": check response?.ManagedPositionLimits?.TermDepositArrangementProductFeatureType?.ProductFeatureTypeValues
        },
        "TermDepositMaturityDate": {
            "DateTimeContent": check response?.ManagedPositionLimits?.TermDepositMaturityDate?.DateTimeContent,
            "TimeZoneCode": check response?.ManagedPositionLimits?.TermDepositMaturityDate?.TimeZoneCode,
            "DaylightSavingIndicator": check response?.ManagedPositionLimits?.TermDepositMaturityDate?.DaylightSavingIndicator,
            "DateTimeType": check response?.ManagedPositionLimits?.TermDepositMaturityDate?.DateTimeType
        },
        "TermDepositOpenDate": {
            "DateTimeContent": check response?.ManagedPositionLimits?.TermDepositOpenDate?.DateTimeContent,
            "TimeZoneCode": check response?.ManagedPositionLimits?.TermDepositOpenDate?.TimeZoneCode,
            "DaylightSavingIndicator": check response?.ManagedPositionLimits?.TermDepositOpenDate?.DaylightSavingIndicator,
            "DateTimeType": check response?.ManagedPositionLimits?.TermDepositOpenDate?.DateTimeType
        },
        "TermDepositAmount": {
            "AmountValue": check response?.ManagedPositionLimits?.TermDepositAmount?.AmountValue,
            "AmountCurrency": {
                "Currencycode": check response?.ManagedPositionLimits?.TermDepositAmount?.AmountCurrency?.Currencycode
            },
            "DecimalPointPosition": check response?.ManagedPositionLimits?.TermDepositAmount?.DecimalPointPosition,
            "AmountType": check response?.ManagedPositionLimits?.TermDepositAmount?.AmountType
        },
        "TermDepositDuration": {
            "Duration": check response?.ManagedPositionLimits?.TermDepositDuration?.Duration
        },
        "DepositTerm": check response?.ManagedPositionLimits?.DepositTerm,
        "DepositType": check response?.ManagedPositionLimits?.DepositType,
        "DepositLimit": {
            "LimitArrangement": check response?.ManagedPositionLimits?.DepositLimit?.LimitArrangement
        },
        "DepositLimitType": check response?.ManagedPositionLimits?.DepositLimitType,
        "DepositAmount": {
            "AmountValue": check response?.ManagedPositionLimits?.DepositAmount?.AmountValue,
            "AmountCurrency": {
                "Currencycode": check response?.ManagedPositionLimits?.DepositAmount?.AmountCurrency?.Currencycode
            },
            "DecimalPointPosition": check response?.ManagedPositionLimits?.DepositAmount?.DecimalPointPosition,
            "AmountType": check response?.ManagedPositionLimits?.DepositAmount?.AmountType
        },
        "DepositDatetime": {
            "DateTimeContent": check response?.ManagedPositionLimits?.DepositDatetime?.DateTimeContent,
            "TimeZoneCode": check response?.ManagedPositionLimits?.DepositDatetime?.TimeZoneCode,
            "DaylightSavingIndicator": check response?.ManagedPositionLimits?.DepositDatetime?.DaylightSavingIndicator,
            "DateTimeType": check response?.ManagedPositionLimits?.DepositDatetime?.DateTimeType
        },
        "DepositDatetimeType": check response?.ManagedPositionLimits?.DepositDatetimeType,
        "DepositAmountType": check response?.ManagedPositionLimits?.DepositAmountType,
        "DepositInterest": {
            "InterestArrangement": check response?.ManagedPositionLimits?.DepositInterest?.InterestArrangement
        },
        "DepositDuration": {
            "Duration": check response?.ManagedPositionLimits?.DepositDuration?.Duration
        },
        "DepositRate": {
            "RateValue": check response?.ManagedPositionLimits?.DepositRate?.RateValue,
            "RateUnit": check response?.ManagedPositionLimits?.DepositRate?.RateUnit,
            "RatePeriod": {
                "FromDateTime": {
                    "DateTimeContent": check response?.ManagedPositionLimits?.DepositRate?.RatePeriod?.FromDateTime?.DateTimeContent,
                    "TimeZoneCode": check response?.ManagedPositionLimits?.DepositRate?.RatePeriod?.FromDateTime?.TimeZoneCode,
                    "DaylightSavingIndicator": check response?.ManagedPositionLimits?.DepositRate?.RatePeriod?.FromDateTime?.DaylightSavingIndicator,
                    "DateTimeType": check response?.ManagedPositionLimits?.DepositRate?.RatePeriod?.FromDateTime?.DateTimeType
                },
                "ToDateTime": {
                    "DateTimeContent": check response?.ManagedPositionLimits?.DepositRate?.RatePeriod?.ToDateTime?.DateTimeContent,
                    "TimeZoneCode": check response?.ManagedPositionLimits?.DepositRate?.RatePeriod?.ToDateTime?.TimeZoneCode,
                    "DaylightSavingIndicator": check response?.ManagedPositionLimits?.DepositRate?.RatePeriod?.ToDateTime?.DaylightSavingIndicator,
                    "DateTimeType": check response?.ManagedPositionLimits?.DepositRate?.RatePeriod?.ToDateTime?.DateTimeType
                }
            },
            "RateCapitalUnit": check response?.ManagedPositionLimits?.DepositRate?.RateCapitalUnit
        },
        "ServiceType": check response?.ManagedPositionLimits?.ServiceType,
        "PaymentDate": {
            "PaymentDate": {
                "DateTimeContent": check response?.ManagedPositionLimits?.PaymentDate?.PaymentDate?.DateTimeContent,
                "TimeZoneCode": check response?.ManagedPositionLimits?.PaymentDate?.PaymentDate?.TimeZoneCode,
                "DaylightSavingIndicator": check response?.ManagedPositionLimits?.PaymentDate?.PaymentDate?.DaylightSavingIndicator,
                "DateTimeType": check response?.ManagedPositionLimits?.PaymentDate?.PaymentDate?.DateTimeType
            },
            "PaymentDateType": check response?.ManagedPositionLimits?.PaymentDate?.PaymentDateType
        },
        "PaymentPeriod": {
            "FromDateTime": {
                "DateTimeContent": check response?.ManagedPositionLimits?.PaymentPeriod?.FromDateTime?.DateTimeContent,
                "TimeZoneCode": check response?.ManagedPositionLimits?.PaymentPeriod?.FromDateTime?.TimeZoneCode,
                "DaylightSavingIndicator": check response?.ManagedPositionLimits?.PaymentPeriod?.FromDateTime?.DaylightSavingIndicator,
                "DateTimeType": check response?.ManagedPositionLimits?.PaymentPeriod?.FromDateTime?.DateTimeType
            },
            "ToDateTime": {
                "DateTimeContent": check response?.ManagedPositionLimits?.PaymentPeriod?.ToDateTime?.DateTimeContent,
                "TimeZoneCode": check response?.ManagedPositionLimits?.PaymentPeriod?.ToDateTime?.TimeZoneCode,
                "DaylightSavingIndicator": check response?.ManagedPositionLimits?.PaymentPeriod?.ToDateTime?.DaylightSavingIndicator,
                "DateTimeType": check response?.ManagedPositionLimits?.PaymentPeriod?.ToDateTime?.DateTimeType
            }
        },
        "PaymentPurpose": check response?.ManagedPositionLimits?.PaymentPurpose,
        "PaymentAmountAndCurrency": {
            "PaymentAmountAndCurrencyType": check response?.ManagedPositionLimits?.PaymentAmountAndCurrency?.PaymentAmountAndCurrencyType,
            "PaymentAmountAndCurrency": {
                "AmountValue": check response?.ManagedPositionLimits?.PaymentAmountAndCurrency?.PaymentAmountAndCurrency?.AmountValue,
                "AmountCurrency": {
                    "Currencycode": check response?.ManagedPositionLimits?.PaymentAmountAndCurrency?.PaymentAmountAndCurrency?.AmountCurrency?.Currencycode
                },
                "DecimalPointPosition": check response?.ManagedPositionLimits?.PaymentAmountAndCurrency?.PaymentAmountAndCurrency?.DecimalPointPosition,
                "AmountType": check response?.ManagedPositionLimits?.PaymentAmountAndCurrency?.PaymentAmountAndCurrency?.AmountType
            }
        },
        "PaymentMethod": check response?.ManagedPositionLimits?.PaymentMethod,
        "PaymentType": check response?.ManagedPositionLimits?.PaymentType,
        "PaymentTime": check response?.ManagedPositionLimits?.PaymentTime,
        "RemittanceDeliveryMethod": check response?.ManagedPositionLimits?.RemittanceDeliveryMethod,
        "RemittanceLocation": {
            "ContactPointType": check response?.ManagedPositionLimits?.RemittanceLocation?.ContactPointType,
            "PartyLocationType": check response?.ManagedPositionLimits?.RemittanceLocation?.PartyLocationType,
            "LocationReference": {
                "LocationDescription": check response?.ManagedPositionLimits?.RemittanceLocation?.LocationReference?.LocationDescription,
                "LocationDateTime": {
                    "DateTimeContent": check response?.ManagedPositionLimits?.RemittanceLocation?.LocationReference?.LocationDateTime?.DateTimeContent,
                    "TimeZoneCode": check response?.ManagedPositionLimits?.RemittanceLocation?.LocationReference?.LocationDateTime?.TimeZoneCode,
                    "DaylightSavingIndicator": check response?.ManagedPositionLimits?.RemittanceLocation?.LocationReference?.LocationDateTime?.DaylightSavingIndicator,
                    "DateTimeType": check response?.ManagedPositionLimits?.RemittanceLocation?.LocationReference?.LocationDateTime?.DateTimeType
                },
                "LocationStatus": {
                    "StatusReason": check response?.ManagedPositionLimits?.RemittanceLocation?.LocationReference?.LocationStatus?.StatusReason,
                    "StatusDateTime": {
                        "DateTimeContent": check response?.ManagedPositionLimits?.RemittanceLocation?.LocationReference?.LocationStatus?.StatusDateTime?.DateTimeContent,
                        "TimeZoneCode": check response?.ManagedPositionLimits?.RemittanceLocation?.LocationReference?.LocationStatus?.StatusDateTime?.TimeZoneCode,
                        "DaylightSavingIndicator": check response?.ManagedPositionLimits?.RemittanceLocation?.LocationReference?.LocationStatus?.StatusDateTime?.DaylightSavingIndicator,
                        "DateTimeType": check response?.ManagedPositionLimits?.RemittanceLocation?.LocationReference?.LocationStatus?.StatusDateTime?.DateTimeType
                    },
                    "StatusValidityPeriod": {
                        "FromDateTime": {
                            "DateTimeContent": check response?.ManagedPositionLimits?.RemittanceLocation?.LocationReference?.LocationStatus?.StatusValidityPeriod?.FromDateTime?.DateTimeContent,
                            "TimeZoneCode": check response?.ManagedPositionLimits?.RemittanceLocation?.LocationReference?.LocationStatus?.StatusValidityPeriod?.FromDateTime?.TimeZoneCode,
                            "DaylightSavingIndicator": check response?.ManagedPositionLimits?.RemittanceLocation?.LocationReference?.LocationStatus?.StatusValidityPeriod?.FromDateTime?.DaylightSavingIndicator,
                            "DateTimeType": check response?.ManagedPositionLimits?.RemittanceLocation?.LocationReference?.LocationStatus?.StatusValidityPeriod?.FromDateTime?.DateTimeType
                        },
                        "ToDateTime": {
                            "DateTimeContent": check response?.ManagedPositionLimits?.RemittanceLocation?.LocationReference?.LocationStatus?.StatusValidityPeriod?.ToDateTime?.DateTimeContent,
                            "TimeZoneCode": check response?.ManagedPositionLimits?.RemittanceLocation?.LocationReference?.LocationStatus?.StatusValidityPeriod?.ToDateTime?.TimeZoneCode,
                            "DaylightSavingIndicator": check response?.ManagedPositionLimits?.RemittanceLocation?.LocationReference?.LocationStatus?.StatusValidityPeriod?.ToDateTime?.DaylightSavingIndicator,
                            "DateTimeType": check response?.ManagedPositionLimits?.RemittanceLocation?.LocationReference?.LocationStatus?.StatusValidityPeriod?.ToDateTime?.DateTimeType
                        }
                    },
                    "StatusInvolvedPartyReference": {
                        "PartyReference": check response?.ManagedPositionLimits?.RemittanceLocation?.LocationReference?.LocationStatus?.StatusInvolvedPartyReference?.PartyReference,
                        "InvolvementReference": check response?.ManagedPositionLimits?.RemittanceLocation?.LocationReference?.LocationStatus?.StatusInvolvedPartyReference?.InvolvementReference
                    }
                },
                "LocationType": check response?.ManagedPositionLimits?.RemittanceLocation?.LocationReference?.LocationType,
                "LocationZoningType": check response?.ManagedPositionLimits?.RemittanceLocation?.LocationReference?.LocationZoningType,
                "LocationNeighborhoodType": check response?.ManagedPositionLimits?.RemittanceLocation?.LocationReference?.LocationNeighborhoodType,
                "LocationConstructionType": check response?.ManagedPositionLimits?.RemittanceLocation?.LocationReference?.LocationConstructionType,
                "LocationOccupancyType": check response?.ManagedPositionLimits?.RemittanceLocation?.LocationReference?.LocationOccupancyType,
                "LocationValue": check response?.ManagedPositionLimits?.RemittanceLocation?.LocationReference?.LocationValue,
                "LocationCapacity": check response?.ManagedPositionLimits?.RemittanceLocation?.LocationReference?.LocationCapacity,
                "LocationIdentification": {
                    "IdentifierValue": check response?.ManagedPositionLimits?.RemittanceLocation?.LocationReference?.LocationIdentification?.IdentifierValue,
                    "IdentifierIssuerReference": {
                        "PartyReference": check response?.ManagedPositionLimits?.RemittanceLocation?.LocationReference?.LocationIdentification?.IdentifierIssuerReference?.PartyReference,
                        "InvolvementReference": check response?.ManagedPositionLimits?.RemittanceLocation?.LocationReference?.LocationIdentification?.IdentifierIssuerReference?.InvolvementReference
                    },
                    "IdentifierStartDate": {
                        "DateTimeContent": check response?.ManagedPositionLimits?.RemittanceLocation?.LocationReference?.LocationIdentification?.IdentifierStartDate?.DateTimeContent,
                        "TimeZoneCode": check response?.ManagedPositionLimits?.RemittanceLocation?.LocationReference?.LocationIdentification?.IdentifierStartDate?.TimeZoneCode,
                        "DaylightSavingIndicator": check response?.ManagedPositionLimits?.RemittanceLocation?.LocationReference?.LocationIdentification?.IdentifierStartDate?.DaylightSavingIndicator,
                        "DateTimeType": check response?.ManagedPositionLimits?.RemittanceLocation?.LocationReference?.LocationIdentification?.IdentifierStartDate?.DateTimeType
                    },
                    "IdentifierEndDate": {
                        "DateTimeContent": check response?.ManagedPositionLimits?.RemittanceLocation?.LocationReference?.LocationIdentification?.IdentifierEndDate?.DateTimeContent,
                        "TimeZoneCode": check response?.ManagedPositionLimits?.RemittanceLocation?.LocationReference?.LocationIdentification?.IdentifierEndDate?.TimeZoneCode,
                        "DaylightSavingIndicator": check response?.ManagedPositionLimits?.RemittanceLocation?.LocationReference?.LocationIdentification?.IdentifierEndDate?.DaylightSavingIndicator,
                        "DateTimeType": check response?.ManagedPositionLimits?.RemittanceLocation?.LocationReference?.LocationIdentification?.IdentifierEndDate?.DateTimeType
                    }
                },
                "LocationAddress": check response?.ManagedPositionLimits?.RemittanceLocation?.LocationReference?.LocationAddress,
                "LocationName": {
                    "Name": check response?.ManagedPositionLimits?.RemittanceLocation?.LocationReference?.LocationName?.Name
                },
                "LocationTimeZone": check response?.ManagedPositionLimits?.RemittanceLocation?.LocationReference?.LocationTimeZone
            },
            "PartyReference": {
                "PartyName": {
                    "Name": check response?.ManagedPositionLimits?.RemittanceLocation?.PartyReference?.PartyName?.Name
                },
                "PartyType": check response?.ManagedPositionLimits?.RemittanceLocation?.PartyReference?.PartyType,
                "PartyDateTime": {
                    "DateTimeContent": check response?.ManagedPositionLimits?.RemittanceLocation?.PartyReference?.PartyDateTime?.DateTimeContent,
                    "TimeZoneCode": check response?.ManagedPositionLimits?.RemittanceLocation?.PartyReference?.PartyDateTime?.TimeZoneCode,
                    "DaylightSavingIndicator": check response?.ManagedPositionLimits?.RemittanceLocation?.PartyReference?.PartyDateTime?.DaylightSavingIndicator,
                    "DateTimeType": check response?.ManagedPositionLimits?.RemittanceLocation?.PartyReference?.PartyDateTime?.DateTimeType
                },
                "PartyIdentification": {
                    "PartyIdentificationType": check response?.ManagedPositionLimits?.RemittanceLocation?.PartyReference?.PartyIdentification?.PartyIdentificationType,
                    "PartyIdentification": {
                        "IdentifierValue": check response?.ManagedPositionLimits?.RemittanceLocation?.PartyReference?.PartyIdentification?.PartyIdentification?.IdentifierValue,
                        "IdentifierIssuerReference": {
                            "PartyReference": check response?.ManagedPositionLimits?.RemittanceLocation?.PartyReference?.PartyIdentification?.PartyIdentification?.IdentifierIssuerReference?.PartyReference,
                            "InvolvementReference": check response?.ManagedPositionLimits?.RemittanceLocation?.PartyReference?.PartyIdentification?.PartyIdentification?.IdentifierIssuerReference?.InvolvementReference
                        },
                        "IdentifierStartDate": {
                            "DateTimeContent": check response?.ManagedPositionLimits?.RemittanceLocation?.PartyReference?.PartyIdentification?.PartyIdentification?.IdentifierStartDate?.DateTimeContent,
                            "TimeZoneCode": check response?.ManagedPositionLimits?.RemittanceLocation?.PartyReference?.PartyIdentification?.PartyIdentification?.IdentifierStartDate?.TimeZoneCode,
                            "DaylightSavingIndicator": check response?.ManagedPositionLimits?.RemittanceLocation?.PartyReference?.PartyIdentification?.PartyIdentification?.IdentifierStartDate?.DaylightSavingIndicator,
                            "DateTimeType": check response?.ManagedPositionLimits?.RemittanceLocation?.PartyReference?.PartyIdentification?.PartyIdentification?.IdentifierStartDate?.DateTimeType
                        },
                        "IdentifierEndDate": {
                            "DateTimeContent": check response?.ManagedPositionLimits?.RemittanceLocation?.PartyReference?.PartyIdentification?.PartyIdentification?.IdentifierEndDate?.DateTimeContent,
                            "TimeZoneCode": check response?.ManagedPositionLimits?.RemittanceLocation?.PartyReference?.PartyIdentification?.PartyIdentification?.IdentifierEndDate?.TimeZoneCode,
                            "DaylightSavingIndicator": check response?.ManagedPositionLimits?.RemittanceLocation?.PartyReference?.PartyIdentification?.PartyIdentification?.IdentifierEndDate?.DaylightSavingIndicator,
                            "DateTimeType": check response?.ManagedPositionLimits?.RemittanceLocation?.PartyReference?.PartyIdentification?.PartyIdentification?.IdentifierEndDate?.DateTimeType
                        }
                    }
                },
                "PartyLegalStructureType": check response?.ManagedPositionLimits?.RemittanceLocation?.PartyReference?.PartyLegalStructureType,
                "PartyActivityIndicator": {
                    "Industrycode": check response?.ManagedPositionLimits?.RemittanceLocation?.PartyReference?.PartyActivityIndicator?.Industrycode
                }
            }
        },
        "PaymentIdentification": {
            "PaymentIdentification": {
                "IdentifierValue": check response?.ManagedPositionLimits?.PaymentIdentification?.PaymentIdentification?.IdentifierValue,
                "IdentifierIssuerReference": {
                    "PartyReference": check response?.ManagedPositionLimits?.PaymentIdentification?.PaymentIdentification?.IdentifierIssuerReference?.PartyReference,
                    "InvolvementReference": check response?.ManagedPositionLimits?.PaymentIdentification?.PaymentIdentification?.IdentifierIssuerReference?.InvolvementReference
                },
                "IdentifierStartDate": {
                    "DateTimeContent": check response?.ManagedPositionLimits?.PaymentIdentification?.PaymentIdentification?.IdentifierStartDate?.DateTimeContent,
                    "TimeZoneCode": check response?.ManagedPositionLimits?.PaymentIdentification?.PaymentIdentification?.IdentifierStartDate?.TimeZoneCode,
                    "DaylightSavingIndicator": check response?.ManagedPositionLimits?.PaymentIdentification?.PaymentIdentification?.IdentifierStartDate?.DaylightSavingIndicator,
                    "DateTimeType": check response?.ManagedPositionLimits?.PaymentIdentification?.PaymentIdentification?.IdentifierStartDate?.DateTimeType
                },
                "IdentifierEndDate": {
                    "DateTimeContent": check response?.ManagedPositionLimits?.PaymentIdentification?.PaymentIdentification?.IdentifierEndDate?.DateTimeContent,
                    "TimeZoneCode": check response?.ManagedPositionLimits?.PaymentIdentification?.PaymentIdentification?.IdentifierEndDate?.TimeZoneCode,
                    "DaylightSavingIndicator": check response?.ManagedPositionLimits?.PaymentIdentification?.PaymentIdentification?.IdentifierEndDate?.DaylightSavingIndicator,
                    "DateTimeType": check response?.ManagedPositionLimits?.PaymentIdentification?.PaymentIdentification?.IdentifierEndDate?.DateTimeType
                }
            },
            "PaymentIdentificationType": check response?.ManagedPositionLimits?.PaymentIdentification?.PaymentIdentificationType
        },
        "PaymentSchedule": {
            "ScheduleType": check response?.ManagedPositionLimits?.PaymentSchedule?.ScheduleType
        },
        "PaymentFrequency": {
            "FrequencyCode": check response?.ManagedPositionLimits?.PaymentFrequency?.FrequencyCode,
            "FrequencyName": {
                "Name": check response?.ManagedPositionLimits?.PaymentFrequency?.FrequencyName?.Name
            },
            "FrequencyDefinition": check response?.ManagedPositionLimits?.PaymentFrequency?.FrequencyDefinition
        },
        "PaymentDescription": check response?.ManagedPositionLimits?.PaymentDescription,
        "CreditFacilityDataTime": {
            "DateTimeContent": check response?.ManagedPositionLimits?.CreditFacilityDataTime?.DateTimeContent,
            "TimeZoneCode": check response?.ManagedPositionLimits?.CreditFacilityDataTime?.TimeZoneCode,
            "DaylightSavingIndicator": check response?.ManagedPositionLimits?.CreditFacilityDataTime?.DaylightSavingIndicator,
            "DateTimeType": check response?.ManagedPositionLimits?.CreditFacilityDataTime?.DateTimeType
        },
        "CreditFacilityType": check response?.ManagedPositionLimits?.CreditFacilityType,
        "CreditFacilityRateType": check response?.ManagedPositionLimits?.CreditFacilityRateType,
        "CreditFacilityNumber": {
            "IdentifierValue": check response?.ManagedPositionLimits?.CreditFacilityNumber?.IdentifierValue,
            "IdentifierIssuerReference": {
                "PartyReference": check response?.ManagedPositionLimits?.CreditFacilityNumber?.IdentifierIssuerReference?.PartyReference,
                "InvolvementReference": check response?.ManagedPositionLimits?.CreditFacilityNumber?.IdentifierIssuerReference?.InvolvementReference
            },
            "IdentifierStartDate": {
                "DateTimeContent": check response?.ManagedPositionLimits?.CreditFacilityNumber?.IdentifierStartDate?.DateTimeContent,
                "TimeZoneCode": check response?.ManagedPositionLimits?.CreditFacilityNumber?.IdentifierStartDate?.TimeZoneCode,
                "DaylightSavingIndicator": check response?.ManagedPositionLimits?.CreditFacilityNumber?.IdentifierStartDate?.DaylightSavingIndicator,
                "DateTimeType": check response?.ManagedPositionLimits?.CreditFacilityNumber?.IdentifierStartDate?.DateTimeType
            },
            "IdentifierEndDate": {
                "DateTimeContent": check response?.ManagedPositionLimits?.CreditFacilityNumber?.IdentifierEndDate?.DateTimeContent,
                "TimeZoneCode": check response?.ManagedPositionLimits?.CreditFacilityNumber?.IdentifierEndDate?.TimeZoneCode,
                "DaylightSavingIndicator": check response?.ManagedPositionLimits?.CreditFacilityNumber?.IdentifierEndDate?.DaylightSavingIndicator,
                "DateTimeType": check response?.ManagedPositionLimits?.CreditFacilityNumber?.IdentifierEndDate?.DateTimeType
            }
        },
        "CreditFacilityAmount": {
            "AmountValue": check response?.ManagedPositionLimits?.CreditFacilityAmount?.AmountValue,
            "AmountCurrency": {
                "Currencycode": check response?.ManagedPositionLimits?.CreditFacilityAmount?.AmountCurrency?.Currencycode
            },
            "DecimalPointPosition": check response?.ManagedPositionLimits?.CreditFacilityAmount?.DecimalPointPosition,
            "AmountType": check response?.ManagedPositionLimits?.CreditFacilityAmount?.AmountType
        },
        "FuneralPolicyArrangementType": check response?.ManagedPositionLimits?.FuneralPolicyArrangementType
    },
    "PositionLimitType": check response?.PositionLimitType,
    "PositionLimitSettings": {
        "LimitType": check response?.PositionLimitSettings?.LimitType,
        "LimitCurrency": {
            "Currencycode": check response?.PositionLimitSettings?.LimitCurrency?.Currencycode
        },
        "LimitValidityPeriod": {
            "FromDateTime": {
                "DateTimeContent": check response?.PositionLimitSettings?.LimitValidityPeriod?.FromDateTime?.DateTimeContent,
                "TimeZoneCode": check response?.PositionLimitSettings?.LimitValidityPeriod?.FromDateTime?.TimeZoneCode,
                "DaylightSavingIndicator": check response?.PositionLimitSettings?.LimitValidityPeriod?.FromDateTime?.DaylightSavingIndicator,
                "DateTimeType": check response?.PositionLimitSettings?.LimitValidityPeriod?.FromDateTime?.DateTimeType
            },
            "ToDateTime": {
                "DateTimeContent": check response?.PositionLimitSettings?.LimitValidityPeriod?.ToDateTime?.DateTimeContent,
                "TimeZoneCode": check response?.PositionLimitSettings?.LimitValidityPeriod?.ToDateTime?.TimeZoneCode,
                "DaylightSavingIndicator": check response?.PositionLimitSettings?.LimitValidityPeriod?.ToDateTime?.DaylightSavingIndicator,
                "DateTimeType": check response?.PositionLimitSettings?.LimitValidityPeriod?.ToDateTime?.DateTimeType
            }
        },
        "LimitAmount": {
            "AmountValue": check response?.PositionLimitSettings?.LimitAmount?.AmountValue,
            "AmountCurrency": {
                "Currencycode": check response?.PositionLimitSettings?.LimitAmount?.AmountCurrency?.Currencycode
            },
            "DecimalPointPosition": check response?.PositionLimitSettings?.LimitAmount?.DecimalPointPosition,
            "AmountType": check response?.PositionLimitSettings?.LimitAmount?.AmountType
        },
        "LimitStatus": {
            "LimitStatus": {
                "StatusReason": check response?.PositionLimitSettings?.LimitStatus?.LimitStatus?.StatusReason,
                "StatusDateTime": {
                    "DateTimeContent": check response?.PositionLimitSettings?.LimitStatus?.LimitStatus?.StatusDateTime?.DateTimeContent,
                    "TimeZoneCode": check response?.PositionLimitSettings?.LimitStatus?.LimitStatus?.StatusDateTime?.TimeZoneCode,
                    "DaylightSavingIndicator": check response?.PositionLimitSettings?.LimitStatus?.LimitStatus?.StatusDateTime?.DaylightSavingIndicator,
                    "DateTimeType": check response?.PositionLimitSettings?.LimitStatus?.LimitStatus?.StatusDateTime?.DateTimeType
                },
                "StatusValidityPeriod": {
                    "FromDateTime": {
                        "DateTimeContent": check response?.PositionLimitSettings?.LimitStatus?.LimitStatus?.StatusValidityPeriod?.FromDateTime?.DateTimeContent,
                        "TimeZoneCode": check response?.PositionLimitSettings?.LimitStatus?.LimitStatus?.StatusValidityPeriod?.FromDateTime?.TimeZoneCode,
                        "DaylightSavingIndicator": check response?.PositionLimitSettings?.LimitStatus?.LimitStatus?.StatusValidityPeriod?.FromDateTime?.DaylightSavingIndicator,
                        "DateTimeType": check response?.PositionLimitSettings?.LimitStatus?.LimitStatus?.StatusValidityPeriod?.FromDateTime?.DateTimeType
                    },
                    "ToDateTime": {
                        "DateTimeContent": check response?.PositionLimitSettings?.LimitStatus?.LimitStatus?.StatusValidityPeriod?.ToDateTime?.DateTimeContent,
                        "TimeZoneCode": check response?.PositionLimitSettings?.LimitStatus?.LimitStatus?.StatusValidityPeriod?.ToDateTime?.TimeZoneCode,
                        "DaylightSavingIndicator": check response?.PositionLimitSettings?.LimitStatus?.LimitStatus?.StatusValidityPeriod?.ToDateTime?.DaylightSavingIndicator,
                        "DateTimeType": check response?.PositionLimitSettings?.LimitStatus?.LimitStatus?.StatusValidityPeriod?.ToDateTime?.DateTimeType
                    }
                },
                "StatusInvolvedPartyReference": {
                    "PartyReference": check response?.PositionLimitSettings?.LimitStatus?.LimitStatus?.StatusInvolvedPartyReference?.PartyReference,
                    "InvolvementReference": check response?.PositionLimitSettings?.LimitStatus?.LimitStatus?.StatusInvolvedPartyReference?.InvolvementReference
                }
            },
            "LimitStatusType": check response?.PositionLimitSettings?.LimitStatus?.LimitStatusType
        },
        "LimitRate": {
            "RateValue": check response?.PositionLimitSettings?.LimitRate?.RateValue,
            "RateUnit": check response?.PositionLimitSettings?.LimitRate?.RateUnit,
            "RatePeriod": {
                "FromDateTime": {
                    "DateTimeContent": check response?.PositionLimitSettings?.LimitRate?.RatePeriod?.FromDateTime?.DateTimeContent,
                    "TimeZoneCode": check response?.PositionLimitSettings?.LimitRate?.RatePeriod?.FromDateTime?.TimeZoneCode,
                    "DaylightSavingIndicator": check response?.PositionLimitSettings?.LimitRate?.RatePeriod?.FromDateTime?.DaylightSavingIndicator,
                    "DateTimeType": check response?.PositionLimitSettings?.LimitRate?.RatePeriod?.FromDateTime?.DateTimeType
                },
                "ToDateTime": {
                    "DateTimeContent": check response?.PositionLimitSettings?.LimitRate?.RatePeriod?.ToDateTime?.DateTimeContent,
                    "TimeZoneCode": check response?.PositionLimitSettings?.LimitRate?.RatePeriod?.ToDateTime?.TimeZoneCode,
                    "DaylightSavingIndicator": check response?.PositionLimitSettings?.LimitRate?.RatePeriod?.ToDateTime?.DaylightSavingIndicator,
                    "DateTimeType": check response?.PositionLimitSettings?.LimitRate?.RatePeriod?.ToDateTime?.DateTimeType
                }
            },
            "RateCapitalUnit": check response?.PositionLimitSettings?.LimitRate?.RateCapitalUnit
        },
        "LimitFrequency": {
            "FrequencyCode": check response?.PositionLimitSettings?.LimitFrequency?.FrequencyCode,
            "FrequencyName": {
                "Name": check response?.PositionLimitSettings?.LimitFrequency?.FrequencyName?.Name
            },
            "FrequencyDefinition": check response?.PositionLimitSettings?.LimitFrequency?.FrequencyDefinition
        },
        "LimitIdentification": {
            "IdentifierValue": check response?.PositionLimitSettings?.LimitIdentification?.IdentifierValue,
            "IdentifierIssuerReference": {
                "PartyReference": check response?.PositionLimitSettings?.LimitIdentification?.IdentifierIssuerReference?.PartyReference,
                "InvolvementReference": check response?.PositionLimitSettings?.LimitIdentification?.IdentifierIssuerReference?.InvolvementReference
            },
            "IdentifierStartDate": {
                "DateTimeContent": check response?.PositionLimitSettings?.LimitIdentification?.IdentifierStartDate?.DateTimeContent,
                "TimeZoneCode": check response?.PositionLimitSettings?.LimitIdentification?.IdentifierStartDate?.TimeZoneCode,
                "DaylightSavingIndicator": check response?.PositionLimitSettings?.LimitIdentification?.IdentifierStartDate?.DaylightSavingIndicator,
                "DateTimeType": check response?.PositionLimitSettings?.LimitIdentification?.IdentifierStartDate?.DateTimeType
            },
            "IdentifierEndDate": {
                "DateTimeContent": check response?.PositionLimitSettings?.LimitIdentification?.IdentifierEndDate?.DateTimeContent,
                "TimeZoneCode": check response?.PositionLimitSettings?.LimitIdentification?.IdentifierEndDate?.TimeZoneCode,
                "DaylightSavingIndicator": check response?.PositionLimitSettings?.LimitIdentification?.IdentifierEndDate?.DaylightSavingIndicator,
                "DateTimeType": check response?.PositionLimitSettings?.LimitIdentification?.IdentifierEndDate?.DateTimeType
            }
        },
        "LimitStartDatetime": {
            "DateTimeContent": check response?.PositionLimitSettings?.LimitStartDatetime?.DateTimeContent,
            "TimeZoneCode": check response?.PositionLimitSettings?.LimitStartDatetime?.TimeZoneCode,
            "DaylightSavingIndicator": check response?.PositionLimitSettings?.LimitStartDatetime?.DaylightSavingIndicator,
            "DateTimeType": check response?.PositionLimitSettings?.LimitStartDatetime?.DateTimeType
        },
        "LimitCreditDebitIndicator": check response?.PositionLimitSettings?.LimitCreditDebitIndicator,
        "LimitAmountType": check response?.PositionLimitSettings?.LimitAmountType,
        "LoanOriginationDate": {
            "DateContent": check response?.PositionLimitSettings?.LoanOriginationDate?.DateContent
        },
        "LoanMaturityDate": {
            "DateContent": check response?.PositionLimitSettings?.LoanMaturityDate?.DateContent
        },
        "LoanEndDate": {
            "DateContent": check response?.PositionLimitSettings?.LoanEndDate?.DateContent
        },
        "LoanAmount": {
            "AmountValue": check response?.PositionLimitSettings?.LoanAmount?.AmountValue,
            "AmountCurrency": {
                "Currencycode": check response?.PositionLimitSettings?.LoanAmount?.AmountCurrency?.Currencycode
            },
            "DecimalPointPosition": check response?.PositionLimitSettings?.LoanAmount?.DecimalPointPosition,
            "AmountType": check response?.PositionLimitSettings?.LoanAmount?.AmountType
        },
        "LoanArrangementType": check response?.PositionLimitSettings?.LoanArrangementType,
        "ArrangementAction": {
            "Action": check response?.PositionLimitSettings?.ArrangementAction?.Action
        },
        "ArrangementStartDate": {
            "DateTimeContent": check response?.PositionLimitSettings?.ArrangementStartDate?.DateTimeContent,
            "TimeZoneCode": check response?.PositionLimitSettings?.ArrangementStartDate?.TimeZoneCode,
            "DaylightSavingIndicator": check response?.PositionLimitSettings?.ArrangementStartDate?.DaylightSavingIndicator,
            "DateTimeType": check response?.PositionLimitSettings?.ArrangementStartDate?.DateTimeType
        },
        "ArrangementEndDate": {
            "DateTimeContent": check response?.PositionLimitSettings?.ArrangementEndDate?.DateTimeContent,
            "TimeZoneCode": check response?.PositionLimitSettings?.ArrangementEndDate?.TimeZoneCode,
            "DaylightSavingIndicator": check response?.PositionLimitSettings?.ArrangementEndDate?.DaylightSavingIndicator,
            "DateTimeType": check response?.PositionLimitSettings?.ArrangementEndDate?.DateTimeType
        },
        "ArrangementStatus": {
            "ArrangementStatus": {
                "StatusReason": check response?.PositionLimitSettings?.ArrangementStatus?.ArrangementStatus?.StatusReason,
                "StatusDateTime": {
                    "DateTimeContent": check response?.PositionLimitSettings?.ArrangementStatus?.ArrangementStatus?.StatusDateTime?.DateTimeContent,
                    "TimeZoneCode": check response?.PositionLimitSettings?.ArrangementStatus?.ArrangementStatus?.StatusDateTime?.TimeZoneCode,
                    "DaylightSavingIndicator": check response?.PositionLimitSettings?.ArrangementStatus?.ArrangementStatus?.StatusDateTime?.DaylightSavingIndicator,
                    "DateTimeType": check response?.PositionLimitSettings?.ArrangementStatus?.ArrangementStatus?.StatusDateTime?.DateTimeType
                },
                "StatusValidityPeriod": {
                    "FromDateTime": {
                        "DateTimeContent": check response?.PositionLimitSettings?.ArrangementStatus?.ArrangementStatus?.StatusValidityPeriod?.FromDateTime?.DateTimeContent,
                        "TimeZoneCode": check response?.PositionLimitSettings?.ArrangementStatus?.ArrangementStatus?.StatusValidityPeriod?.FromDateTime?.TimeZoneCode,
                        "DaylightSavingIndicator": check response?.PositionLimitSettings?.ArrangementStatus?.ArrangementStatus?.StatusValidityPeriod?.FromDateTime?.DaylightSavingIndicator,
                        "DateTimeType": check response?.PositionLimitSettings?.ArrangementStatus?.ArrangementStatus?.StatusValidityPeriod?.FromDateTime?.DateTimeType
                    },
                    "ToDateTime": {
                        "DateTimeContent": check response?.PositionLimitSettings?.ArrangementStatus?.ArrangementStatus?.StatusValidityPeriod?.ToDateTime?.DateTimeContent,
                        "TimeZoneCode": check response?.PositionLimitSettings?.ArrangementStatus?.ArrangementStatus?.StatusValidityPeriod?.ToDateTime?.TimeZoneCode,
                        "DaylightSavingIndicator": check response?.PositionLimitSettings?.ArrangementStatus?.ArrangementStatus?.StatusValidityPeriod?.ToDateTime?.DaylightSavingIndicator,
                        "DateTimeType": check response?.PositionLimitSettings?.ArrangementStatus?.ArrangementStatus?.StatusValidityPeriod?.ToDateTime?.DateTimeType
                    }
                },
                "StatusInvolvedPartyReference": {
                    "PartyReference": check response?.PositionLimitSettings?.ArrangementStatus?.ArrangementStatus?.StatusInvolvedPartyReference?.PartyReference,
                    "InvolvementReference": check response?.PositionLimitSettings?.ArrangementStatus?.ArrangementStatus?.StatusInvolvedPartyReference?.InvolvementReference
                }
            },
            "ArrangementStatusType": check response?.PositionLimitSettings?.ArrangementStatus?.ArrangementStatusType
        },
        "ArrangementSubjectMatter": {
            "Subject": check response?.PositionLimitSettings?.ArrangementSubjectMatter?.Subject
        },
        "Arrangementtype": check response?.PositionLimitSettings?.Arrangementtype,
        "ArrangementIdentification": {
            "IdentifierValue": check response?.PositionLimitSettings?.ArrangementIdentification?.IdentifierValue,
            "IdentifierIssuerReference": {
                "PartyReference": check response?.PositionLimitSettings?.ArrangementIdentification?.IdentifierIssuerReference?.PartyReference,
                "InvolvementReference": check response?.PositionLimitSettings?.ArrangementIdentification?.IdentifierIssuerReference?.InvolvementReference
            },
            "IdentifierStartDate": {
                "DateTimeContent": check response?.PositionLimitSettings?.ArrangementIdentification?.IdentifierStartDate?.DateTimeContent,
                "TimeZoneCode": check response?.PositionLimitSettings?.ArrangementIdentification?.IdentifierStartDate?.TimeZoneCode,
                "DaylightSavingIndicator": check response?.PositionLimitSettings?.ArrangementIdentification?.IdentifierStartDate?.DaylightSavingIndicator,
                "DateTimeType": check response?.PositionLimitSettings?.ArrangementIdentification?.IdentifierStartDate?.DateTimeType
            },
            "IdentifierEndDate": {
                "DateTimeContent": check response?.PositionLimitSettings?.ArrangementIdentification?.IdentifierEndDate?.DateTimeContent,
                "TimeZoneCode": check response?.PositionLimitSettings?.ArrangementIdentification?.IdentifierEndDate?.TimeZoneCode,
                "DaylightSavingIndicator": check response?.PositionLimitSettings?.ArrangementIdentification?.IdentifierEndDate?.DaylightSavingIndicator,
                "DateTimeType": check response?.PositionLimitSettings?.ArrangementIdentification?.IdentifierEndDate?.DateTimeType
            }
        },
        "SavingsAccountArrangementType": check response?.PositionLimitSettings?.SavingsAccountArrangementType,
        "SavingsAccountArrangementProductFeatureType": {
            "ProductFeatureTypeValues": check response?.PositionLimitSettings?.SavingsAccountArrangementProductFeatureType?.ProductFeatureTypeValues
        },
        "ProductArrangementType": check response?.PositionLimitSettings?.ProductArrangementType,
        "CurrentAccountArrangementType": check response?.PositionLimitSettings?.CurrentAccountArrangementType,
        "CurrentAccountArrangementProductFeatureType": {
            "ProductFeatureTypeValues": check response?.PositionLimitSettings?.CurrentAccountArrangementProductFeatureType?.ProductFeatureTypeValues
        },
        "TermDepositArrangementType": check response?.PositionLimitSettings?.TermDepositArrangementType,
        "TermDepositArrangementProductFeatureType": {
            "ProductFeatureTypeValues": check response?.PositionLimitSettings?.TermDepositArrangementProductFeatureType?.ProductFeatureTypeValues
        },
        "TermDepositMaturityDate": {
            "DateTimeContent": check response?.PositionLimitSettings?.TermDepositMaturityDate?.DateTimeContent,
            "TimeZoneCode": check response?.PositionLimitSettings?.TermDepositMaturityDate?.TimeZoneCode,
            "DaylightSavingIndicator": check response?.PositionLimitSettings?.TermDepositMaturityDate?.DaylightSavingIndicator,
            "DateTimeType": check response?.PositionLimitSettings?.TermDepositMaturityDate?.DateTimeType
        },
        "TermDepositOpenDate": {
            "DateTimeContent": check response?.PositionLimitSettings?.TermDepositOpenDate?.DateTimeContent,
            "TimeZoneCode": check response?.PositionLimitSettings?.TermDepositOpenDate?.TimeZoneCode,
            "DaylightSavingIndicator": check response?.PositionLimitSettings?.TermDepositOpenDate?.DaylightSavingIndicator,
            "DateTimeType": check response?.PositionLimitSettings?.TermDepositOpenDate?.DateTimeType
        },
        "TermDepositAmount": {
            "AmountValue": check response?.PositionLimitSettings?.TermDepositAmount?.AmountValue,
            "AmountCurrency": {
                "Currencycode": check response?.PositionLimitSettings?.TermDepositAmount?.AmountCurrency?.Currencycode
            },
            "DecimalPointPosition": check response?.PositionLimitSettings?.TermDepositAmount?.DecimalPointPosition,
            "AmountType": check response?.PositionLimitSettings?.TermDepositAmount?.AmountType
        },
        "TermDepositDuration": {
            "Duration": check response?.PositionLimitSettings?.TermDepositDuration?.Duration
        },
        "DepositTerm": check response?.PositionLimitSettings?.DepositTerm,
        "DepositType": check response?.PositionLimitSettings?.DepositType,
        "DepositLimit": {
            "LimitArrangement": check response?.PositionLimitSettings?.DepositLimit?.LimitArrangement
        },
        "DepositLimitType": check response?.PositionLimitSettings?.DepositLimitType,
        "DepositAmount": {
            "AmountValue": check response?.PositionLimitSettings?.DepositAmount?.AmountValue,
            "AmountCurrency": {
                "Currencycode": check response?.PositionLimitSettings?.DepositAmount?.AmountCurrency?.Currencycode
            },
            "DecimalPointPosition": check response?.PositionLimitSettings?.DepositAmount?.DecimalPointPosition,
            "AmountType": check response?.PositionLimitSettings?.DepositAmount?.AmountType
        },
        "DepositDatetime": {
            "DateTimeContent": check response?.PositionLimitSettings?.DepositDatetime?.DateTimeContent,
            "TimeZoneCode": check response?.PositionLimitSettings?.DepositDatetime?.TimeZoneCode,
            "DaylightSavingIndicator": check response?.PositionLimitSettings?.DepositDatetime?.DaylightSavingIndicator,
            "DateTimeType": check response?.PositionLimitSettings?.DepositDatetime?.DateTimeType
        },
        "DepositDatetimeType": check response?.PositionLimitSettings?.DepositDatetimeType,
        "DepositAmountType": check response?.PositionLimitSettings?.DepositAmountType,
        "DepositInterest": {
            "InterestArrangement": check response?.PositionLimitSettings?.DepositInterest?.InterestArrangement
        },
        "DepositDuration": {
            "Duration": check response?.PositionLimitSettings?.DepositDuration?.Duration
        },
        "DepositRate": {
            "RateValue": check response?.PositionLimitSettings?.DepositRate?.RateValue,
            "RateUnit": check response?.PositionLimitSettings?.DepositRate?.RateUnit,
            "RatePeriod": {
                "FromDateTime": {
                    "DateTimeContent": check response?.PositionLimitSettings?.DepositRate?.RatePeriod?.FromDateTime?.DateTimeContent,
                    "TimeZoneCode": check response?.PositionLimitSettings?.DepositRate?.RatePeriod?.FromDateTime?.TimeZoneCode,
                    "DaylightSavingIndicator": check response?.PositionLimitSettings?.DepositRate?.RatePeriod?.FromDateTime?.DaylightSavingIndicator,
                    "DateTimeType": check response?.PositionLimitSettings?.DepositRate?.RatePeriod?.FromDateTime?.DateTimeType
                },
                "ToDateTime": {
                    "DateTimeContent": check response?.PositionLimitSettings?.DepositRate?.RatePeriod?.ToDateTime?.DateTimeContent,
                    "TimeZoneCode": check response?.PositionLimitSettings?.DepositRate?.RatePeriod?.ToDateTime?.TimeZoneCode,
                    "DaylightSavingIndicator": check response?.PositionLimitSettings?.DepositRate?.RatePeriod?.ToDateTime?.DaylightSavingIndicator,
                    "DateTimeType": check response?.PositionLimitSettings?.DepositRate?.RatePeriod?.ToDateTime?.DateTimeType
                }
            },
            "RateCapitalUnit": check response?.PositionLimitSettings?.DepositRate?.RateCapitalUnit
        },
        "ServiceType": check response?.PositionLimitSettings?.ServiceType,
        "PaymentDate": {
            "PaymentDate": {
                "DateTimeContent": check response?.PositionLimitSettings?.PaymentDate?.PaymentDate?.DateTimeContent,
                "TimeZoneCode": check response?.PositionLimitSettings?.PaymentDate?.PaymentDate?.TimeZoneCode,
                "DaylightSavingIndicator": check response?.PositionLimitSettings?.PaymentDate?.PaymentDate?.DaylightSavingIndicator,
                "DateTimeType": check response?.PositionLimitSettings?.PaymentDate?.PaymentDate?.DateTimeType
            },
            "PaymentDateType": check response?.PositionLimitSettings?.PaymentDate?.PaymentDateType
        },
        "PaymentPeriod": {
            "FromDateTime": {
                "DateTimeContent": check response?.PositionLimitSettings?.PaymentPeriod?.FromDateTime?.DateTimeContent,
                "TimeZoneCode": check response?.PositionLimitSettings?.PaymentPeriod?.FromDateTime?.TimeZoneCode,
                "DaylightSavingIndicator": check response?.PositionLimitSettings?.PaymentPeriod?.FromDateTime?.DaylightSavingIndicator,
                "DateTimeType": check response?.PositionLimitSettings?.PaymentPeriod?.FromDateTime?.DateTimeType
            },
            "ToDateTime": {
                "DateTimeContent": check response?.PositionLimitSettings?.PaymentPeriod?.ToDateTime?.DateTimeContent,
                "TimeZoneCode": check response?.PositionLimitSettings?.PaymentPeriod?.ToDateTime?.TimeZoneCode,
                "DaylightSavingIndicator": check response?.PositionLimitSettings?.PaymentPeriod?.ToDateTime?.DaylightSavingIndicator,
                "DateTimeType": check response?.PositionLimitSettings?.PaymentPeriod?.ToDateTime?.DateTimeType
            }
        },
        "PaymentPurpose": check response?.PositionLimitSettings?.PaymentPurpose,
        "PaymentAmountAndCurrency": {
            "PaymentAmountAndCurrencyType": check response?.PositionLimitSettings?.PaymentAmountAndCurrency?.PaymentAmountAndCurrencyType,
            "PaymentAmountAndCurrency": {
                "AmountValue": check response?.PositionLimitSettings?.PaymentAmountAndCurrency?.PaymentAmountAndCurrency?.AmountValue,
                "AmountCurrency": {
                    "Currencycode": check response?.PositionLimitSettings?.PaymentAmountAndCurrency?.PaymentAmountAndCurrency?.AmountCurrency?.Currencycode
                },
                "DecimalPointPosition": check response?.PositionLimitSettings?.PaymentAmountAndCurrency?.PaymentAmountAndCurrency?.DecimalPointPosition,
                "AmountType": check response?.PositionLimitSettings?.PaymentAmountAndCurrency?.PaymentAmountAndCurrency?.AmountType
            }
        },
        "PaymentMethod": check response?.PositionLimitSettings?.PaymentMethod,
        "PaymentType": check response?.PositionLimitSettings?.PaymentType,
        "PaymentTime": check response?.PositionLimitSettings?.PaymentTime,
        "RemittanceDeliveryMethod": check response?.PositionLimitSettings?.RemittanceDeliveryMethod,
        "RemittanceLocation": {
            "ContactPointType": check response?.PositionLimitSettings?.RemittanceLocation?.ContactPointType,
            "PartyLocationType": check response?.PositionLimitSettings?.RemittanceLocation?.PartyLocationType,
            "LocationReference": {
                "LocationDescription": check response?.PositionLimitSettings?.RemittanceLocation?.LocationReference?.LocationDescription,
                "LocationDateTime": {
                    "DateTimeContent": check response?.PositionLimitSettings?.RemittanceLocation?.LocationReference?.LocationDateTime?.DateTimeContent,
                    "TimeZoneCode": check response?.PositionLimitSettings?.RemittanceLocation?.LocationReference?.LocationDateTime?.TimeZoneCode,
                    "DaylightSavingIndicator": check response?.PositionLimitSettings?.RemittanceLocation?.LocationReference?.LocationDateTime?.DaylightSavingIndicator,
                    "DateTimeType": check response?.PositionLimitSettings?.RemittanceLocation?.LocationReference?.LocationDateTime?.DateTimeType
                },
                "LocationStatus": {
                    "StatusReason": check response?.PositionLimitSettings?.RemittanceLocation?.LocationReference?.LocationStatus?.StatusReason,
                    "StatusDateTime": {
                        "DateTimeContent": check response?.PositionLimitSettings?.RemittanceLocation?.LocationReference?.LocationStatus?.StatusDateTime?.DateTimeContent,
                        "TimeZoneCode": check response?.PositionLimitSettings?.RemittanceLocation?.LocationReference?.LocationStatus?.StatusDateTime?.TimeZoneCode,
                        "DaylightSavingIndicator": check response?.PositionLimitSettings?.RemittanceLocation?.LocationReference?.LocationStatus?.StatusDateTime?.DaylightSavingIndicator,
                        "DateTimeType": check response?.PositionLimitSettings?.RemittanceLocation?.LocationReference?.LocationStatus?.StatusDateTime?.DateTimeType
                    },
                    "StatusValidityPeriod": {
                        "FromDateTime": {
                            "DateTimeContent": check response?.PositionLimitSettings?.RemittanceLocation?.LocationReference?.LocationStatus?.StatusValidityPeriod?.FromDateTime?.DateTimeContent,
                            "TimeZoneCode": check response?.PositionLimitSettings?.RemittanceLocation?.LocationReference?.LocationStatus?.StatusValidityPeriod?.FromDateTime?.TimeZoneCode,
                            "DaylightSavingIndicator": check response?.PositionLimitSettings?.RemittanceLocation?.LocationReference?.LocationStatus?.StatusValidityPeriod?.FromDateTime?.DaylightSavingIndicator,
                            "DateTimeType": check response?.PositionLimitSettings?.RemittanceLocation?.LocationReference?.LocationStatus?.StatusValidityPeriod?.FromDateTime?.DateTimeType
                        },
                        "ToDateTime": {
                            "DateTimeContent": check response?.PositionLimitSettings?.RemittanceLocation?.LocationReference?.LocationStatus?.StatusValidityPeriod?.ToDateTime?.DateTimeContent,
                            "TimeZoneCode": check response?.PositionLimitSettings?.RemittanceLocation?.LocationReference?.LocationStatus?.StatusValidityPeriod?.ToDateTime?.TimeZoneCode,
                            "DaylightSavingIndicator": check response?.PositionLimitSettings?.RemittanceLocation?.LocationReference?.LocationStatus?.StatusValidityPeriod?.ToDateTime?.DaylightSavingIndicator,
                            "DateTimeType": check response?.PositionLimitSettings?.RemittanceLocation?.LocationReference?.LocationStatus?.StatusValidityPeriod?.ToDateTime?.DateTimeType
                        }
                    },
                    "StatusInvolvedPartyReference": {
                        "PartyReference": check response?.PositionLimitSettings?.RemittanceLocation?.LocationReference?.LocationStatus?.StatusInvolvedPartyReference?.PartyReference,
                        "InvolvementReference": check response?.PositionLimitSettings?.RemittanceLocation?.LocationReference?.LocationStatus?.StatusInvolvedPartyReference?.InvolvementReference
                    }
                },
                "LocationType": check response?.PositionLimitSettings?.RemittanceLocation?.LocationReference?.LocationType,
                "LocationZoningType": check response?.PositionLimitSettings?.RemittanceLocation?.LocationReference?.LocationZoningType,
                "LocationNeighborhoodType": check response?.PositionLimitSettings?.RemittanceLocation?.LocationReference?.LocationNeighborhoodType,
                "LocationConstructionType": check response?.PositionLimitSettings?.RemittanceLocation?.LocationReference?.LocationConstructionType,
                "LocationOccupancyType": check response?.PositionLimitSettings?.RemittanceLocation?.LocationReference?.LocationOccupancyType,
                "LocationValue": check response?.PositionLimitSettings?.RemittanceLocation?.LocationReference?.LocationValue,
                "LocationCapacity": check response?.PositionLimitSettings?.RemittanceLocation?.LocationReference?.LocationCapacity,
                "LocationIdentification": {
                    "IdentifierValue": check response?.PositionLimitSettings?.RemittanceLocation?.LocationReference?.LocationIdentification?.IdentifierValue,
                    "IdentifierIssuerReference": {
                        "PartyReference": check response?.PositionLimitSettings?.RemittanceLocation?.LocationReference?.LocationIdentification?.IdentifierIssuerReference?.PartyReference,
                        "InvolvementReference": check response?.PositionLimitSettings?.RemittanceLocation?.LocationReference?.LocationIdentification?.IdentifierIssuerReference?.InvolvementReference
                    },
                    "IdentifierStartDate": {
                        "DateTimeContent": check response?.PositionLimitSettings?.RemittanceLocation?.LocationReference?.LocationIdentification?.IdentifierStartDate?.DateTimeContent,
                        "TimeZoneCode": check response?.PositionLimitSettings?.RemittanceLocation?.LocationReference?.LocationIdentification?.IdentifierStartDate?.TimeZoneCode,
                        "DaylightSavingIndicator": check response?.PositionLimitSettings?.RemittanceLocation?.LocationReference?.LocationIdentification?.IdentifierStartDate?.DaylightSavingIndicator,
                        "DateTimeType": check response?.PositionLimitSettings?.RemittanceLocation?.LocationReference?.LocationIdentification?.IdentifierStartDate?.DateTimeType
                    },
                    "IdentifierEndDate": {
                        "DateTimeContent": check response?.PositionLimitSettings?.RemittanceLocation?.LocationReference?.LocationIdentification?.IdentifierEndDate?.DateTimeContent,
                        "TimeZoneCode": check response?.PositionLimitSettings?.RemittanceLocation?.LocationReference?.LocationIdentification?.IdentifierEndDate?.TimeZoneCode,
                        "DaylightSavingIndicator": check response?.PositionLimitSettings?.RemittanceLocation?.LocationReference?.LocationIdentification?.IdentifierEndDate?.DaylightSavingIndicator,
                        "DateTimeType": check response?.PositionLimitSettings?.RemittanceLocation?.LocationReference?.LocationIdentification?.IdentifierEndDate?.DateTimeType
                    }
                },
                "LocationAddress": check response?.PositionLimitSettings?.RemittanceLocation?.LocationReference?.LocationAddress,
                "LocationName": {
                    "Name": check response?.PositionLimitSettings?.RemittanceLocation?.LocationReference?.LocationName?.Name
                },
                "LocationTimeZone": check response?.PositionLimitSettings?.RemittanceLocation?.LocationReference?.LocationTimeZone
            },
            "PartyReference": {
                "PartyName": {
                    "Name": check response?.PositionLimitSettings?.RemittanceLocation?.PartyReference?.PartyName?.Name
                },
                "PartyType": check response?.PositionLimitSettings?.RemittanceLocation?.PartyReference?.PartyType,
                "PartyDateTime": {
                    "DateTimeContent": check response?.PositionLimitSettings?.RemittanceLocation?.PartyReference?.PartyDateTime?.DateTimeContent,
                    "TimeZoneCode": check response?.PositionLimitSettings?.RemittanceLocation?.PartyReference?.PartyDateTime?.TimeZoneCode,
                    "DaylightSavingIndicator": check response?.PositionLimitSettings?.RemittanceLocation?.PartyReference?.PartyDateTime?.DaylightSavingIndicator,
                    "DateTimeType": check response?.PositionLimitSettings?.RemittanceLocation?.PartyReference?.PartyDateTime?.DateTimeType
                },
                "PartyIdentification": {
                    "PartyIdentificationType": check response?.PositionLimitSettings?.RemittanceLocation?.PartyReference?.PartyIdentification?.PartyIdentificationType,
                    "PartyIdentification": {
                        "IdentifierValue": check response?.PositionLimitSettings?.RemittanceLocation?.PartyReference?.PartyIdentification?.PartyIdentification?.IdentifierValue,
                        "IdentifierIssuerReference": {
                            "PartyReference": check response?.PositionLimitSettings?.RemittanceLocation?.PartyReference?.PartyIdentification?.PartyIdentification?.IdentifierIssuerReference?.PartyReference,
                            "InvolvementReference": check response?.PositionLimitSettings?.RemittanceLocation?.PartyReference?.PartyIdentification?.PartyIdentification?.IdentifierIssuerReference?.InvolvementReference
                        },
                        "IdentifierStartDate": {
                            "DateTimeContent": check response?.PositionLimitSettings?.RemittanceLocation?.PartyReference?.PartyIdentification?.PartyIdentification?.IdentifierStartDate?.DateTimeContent,
                            "TimeZoneCode": check response?.PositionLimitSettings?.RemittanceLocation?.PartyReference?.PartyIdentification?.PartyIdentification?.IdentifierStartDate?.TimeZoneCode,
                            "DaylightSavingIndicator": check response?.PositionLimitSettings?.RemittanceLocation?.PartyReference?.PartyIdentification?.PartyIdentification?.IdentifierStartDate?.DaylightSavingIndicator,
                            "DateTimeType": check response?.PositionLimitSettings?.RemittanceLocation?.PartyReference?.PartyIdentification?.PartyIdentification?.IdentifierStartDate?.DateTimeType
                        },
                        "IdentifierEndDate": {
                            "DateTimeContent": check response?.PositionLimitSettings?.RemittanceLocation?.PartyReference?.PartyIdentification?.PartyIdentification?.IdentifierEndDate?.DateTimeContent,
                            "TimeZoneCode": check response?.PositionLimitSettings?.RemittanceLocation?.PartyReference?.PartyIdentification?.PartyIdentification?.IdentifierEndDate?.TimeZoneCode,
                            "DaylightSavingIndicator": check response?.PositionLimitSettings?.RemittanceLocation?.PartyReference?.PartyIdentification?.PartyIdentification?.IdentifierEndDate?.DaylightSavingIndicator,
                            "DateTimeType": check response?.PositionLimitSettings?.RemittanceLocation?.PartyReference?.PartyIdentification?.PartyIdentification?.IdentifierEndDate?.DateTimeType
                        }
                    }
                },
                "PartyLegalStructureType": check response?.PositionLimitSettings?.RemittanceLocation?.PartyReference?.PartyLegalStructureType,
                "PartyActivityIndicator": {
                    "Industrycode": check response?.PositionLimitSettings?.RemittanceLocation?.PartyReference?.PartyActivityIndicator?.Industrycode
                }
            }
        },
        "PaymentIdentification": {
            "PaymentIdentification": {
                "IdentifierValue": check response?.PositionLimitSettings?.PaymentIdentification?.PaymentIdentification?.IdentifierValue,
                "IdentifierIssuerReference": {
                    "PartyReference": check response?.PositionLimitSettings?.PaymentIdentification?.PaymentIdentification?.IdentifierIssuerReference?.PartyReference,
                    "InvolvementReference": check response?.PositionLimitSettings?.PaymentIdentification?.PaymentIdentification?.IdentifierIssuerReference?.InvolvementReference
                },
                "IdentifierStartDate": {
                    "DateTimeContent": check response?.PositionLimitSettings?.PaymentIdentification?.PaymentIdentification?.IdentifierStartDate?.DateTimeContent,
                    "TimeZoneCode": check response?.PositionLimitSettings?.PaymentIdentification?.PaymentIdentification?.IdentifierStartDate?.TimeZoneCode,
                    "DaylightSavingIndicator": check response?.PositionLimitSettings?.PaymentIdentification?.PaymentIdentification?.IdentifierStartDate?.DaylightSavingIndicator,
                    "DateTimeType": check response?.PositionLimitSettings?.PaymentIdentification?.PaymentIdentification?.IdentifierStartDate?.DateTimeType
                },
                "IdentifierEndDate": {
                    "DateTimeContent": check response?.PositionLimitSettings?.PaymentIdentification?.PaymentIdentification?.IdentifierEndDate?.DateTimeContent,
                    "TimeZoneCode": check response?.PositionLimitSettings?.PaymentIdentification?.PaymentIdentification?.IdentifierEndDate?.TimeZoneCode,
                    "DaylightSavingIndicator": check response?.PositionLimitSettings?.PaymentIdentification?.PaymentIdentification?.IdentifierEndDate?.DaylightSavingIndicator,
                    "DateTimeType": check response?.PositionLimitSettings?.PaymentIdentification?.PaymentIdentification?.IdentifierEndDate?.DateTimeType
                }
            },
            "PaymentIdentificationType": check response?.PositionLimitSettings?.PaymentIdentification?.PaymentIdentificationType
        },
        "PaymentSchedule": {
            "ScheduleType": check response?.PositionLimitSettings?.PaymentSchedule?.ScheduleType
        },
        "PaymentFrequency": {
            "FrequencyCode": check response?.PositionLimitSettings?.PaymentFrequency?.FrequencyCode,
            "FrequencyName": {
                "Name": check response?.PositionLimitSettings?.PaymentFrequency?.FrequencyName?.Name
            },
            "FrequencyDefinition": check response?.PositionLimitSettings?.PaymentFrequency?.FrequencyDefinition
        },
        "PaymentDescription": check response?.PositionLimitSettings?.PaymentDescription,
        "CreditFacilityDataTime": {
            "DateTimeContent": check response?.PositionLimitSettings?.CreditFacilityDataTime?.DateTimeContent,
            "TimeZoneCode": check response?.PositionLimitSettings?.CreditFacilityDataTime?.TimeZoneCode,
            "DaylightSavingIndicator": check response?.PositionLimitSettings?.CreditFacilityDataTime?.DaylightSavingIndicator,
            "DateTimeType": check response?.PositionLimitSettings?.CreditFacilityDataTime?.DateTimeType
        },
        "CreditFacilityType": check response?.PositionLimitSettings?.CreditFacilityType,
        "CreditFacilityRateType": check response?.PositionLimitSettings?.CreditFacilityRateType,
        "CreditFacilityNumber": {
            "IdentifierValue": check response?.PositionLimitSettings?.CreditFacilityNumber?.IdentifierValue,
            "IdentifierIssuerReference": {
                "PartyReference": check response?.PositionLimitSettings?.CreditFacilityNumber?.IdentifierIssuerReference?.PartyReference,
                "InvolvementReference": check response?.PositionLimitSettings?.CreditFacilityNumber?.IdentifierIssuerReference?.InvolvementReference
            },
            "IdentifierStartDate": {
                "DateTimeContent": check response?.PositionLimitSettings?.CreditFacilityNumber?.IdentifierStartDate?.DateTimeContent,
                "TimeZoneCode": check response?.PositionLimitSettings?.CreditFacilityNumber?.IdentifierStartDate?.TimeZoneCode,
                "DaylightSavingIndicator": check response?.PositionLimitSettings?.CreditFacilityNumber?.IdentifierStartDate?.DaylightSavingIndicator,
                "DateTimeType": check response?.PositionLimitSettings?.CreditFacilityNumber?.IdentifierStartDate?.DateTimeType
            },
            "IdentifierEndDate": {
                "DateTimeContent": check response?.PositionLimitSettings?.CreditFacilityNumber?.IdentifierEndDate?.DateTimeContent,
                "TimeZoneCode": check response?.PositionLimitSettings?.CreditFacilityNumber?.IdentifierEndDate?.TimeZoneCode,
                "DaylightSavingIndicator": check response?.PositionLimitSettings?.CreditFacilityNumber?.IdentifierEndDate?.DaylightSavingIndicator,
                "DateTimeType": check response?.PositionLimitSettings?.CreditFacilityNumber?.IdentifierEndDate?.DateTimeType
            }
        },
        "CreditFacilityAmount": {
            "AmountValue": check response?.PositionLimitSettings?.CreditFacilityAmount?.AmountValue,
            "AmountCurrency": {
                "Currencycode": check response?.PositionLimitSettings?.CreditFacilityAmount?.AmountCurrency?.Currencycode
            },
            "DecimalPointPosition": check response?.PositionLimitSettings?.CreditFacilityAmount?.DecimalPointPosition,
            "AmountType": check response?.PositionLimitSettings?.CreditFacilityAmount?.AmountType
        },
        "FuneralPolicyArrangementType": check response?.PositionLimitSettings?.FuneralPolicyArrangementType
    },
    "PositionLimitValue": check response?.PositionLimitValue,
    "AmountBlock": {
        "AmountValue": check response?.AmountBlock?.AmountValue,
        "AmountCurrency": {
            "Currencycode": check response?.AmountBlock?.AmountCurrency?.Currencycode
        },
        "DecimalPointPosition": check response?.AmountBlock?.DecimalPointPosition,
        "AmountType": check response?.AmountBlock?.AmountType
    },
    "AmountBlockType": check response?.AmountBlockType,
    "Priority": check response?.Priority,
    "Amount": {
        "AmountValue": check response?.Amount?.AmountValue,
        "AmountCurrency": {
            "Currencycode": check response?.Amount?.AmountCurrency?.Currencycode
        },
        "DecimalPointPosition": check response?.Amount?.DecimalPointPosition,
        "AmountType": check response?.Amount?.AmountType
    },
    "DateType": check response?.DateType,
    "Date": {
        "TimeIndication": check response?.Date?.TimeIndication,
        "TimeIndicationType": check response?.Date?.TimeIndicationType
    },
    "InitiationDate": {
        "DateContent": check response?.InitiationDate?.DateContent
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
