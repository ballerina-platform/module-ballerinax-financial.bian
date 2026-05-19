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

isolated function transformCorrespondentBankDetailRetrieveResponse(json response) returns operations:CorrespondentBankDirectoryEntry|error => {
    "CorrespondentBankReference": check response?.CorrespondentBankReference,
    "ContactAddresses": {
        "AddressType": check response?.ContactAddresses?.AddressType
    },
    "VostroAccountReference": {
        "AccountStatus": {
            "AccountStatus": {
                "StatusReason": check response?.VostroAccountReference?.AccountStatus?.AccountStatus?.StatusReason,
                "StatusDateTime": {
                    "DateTimeContent": check response?.VostroAccountReference?.AccountStatus?.AccountStatus?.StatusDateTime?.DateTimeContent,
                    "TimeZoneCode": check response?.VostroAccountReference?.AccountStatus?.AccountStatus?.StatusDateTime?.TimeZoneCode,
                    "DaylightSavingIndicator": check response?.VostroAccountReference?.AccountStatus?.AccountStatus?.StatusDateTime?.DaylightSavingIndicator,
                    "DateTimeType": check response?.VostroAccountReference?.AccountStatus?.AccountStatus?.StatusDateTime?.DateTimeType
                },
                "StatusValidityPeriod": {
                    "FromDateTime": {
                        "DateTimeContent": check response?.VostroAccountReference?.AccountStatus?.AccountStatus?.StatusValidityPeriod?.FromDateTime?.DateTimeContent,
                        "TimeZoneCode": check response?.VostroAccountReference?.AccountStatus?.AccountStatus?.StatusValidityPeriod?.FromDateTime?.TimeZoneCode,
                        "DaylightSavingIndicator": check response?.VostroAccountReference?.AccountStatus?.AccountStatus?.StatusValidityPeriod?.FromDateTime?.DaylightSavingIndicator,
                        "DateTimeType": check response?.VostroAccountReference?.AccountStatus?.AccountStatus?.StatusValidityPeriod?.FromDateTime?.DateTimeType
                    },
                    "ToDateTime": {
                        "DateTimeContent": check response?.VostroAccountReference?.AccountStatus?.AccountStatus?.StatusValidityPeriod?.ToDateTime?.DateTimeContent,
                        "TimeZoneCode": check response?.VostroAccountReference?.AccountStatus?.AccountStatus?.StatusValidityPeriod?.ToDateTime?.TimeZoneCode,
                        "DaylightSavingIndicator": check response?.VostroAccountReference?.AccountStatus?.AccountStatus?.StatusValidityPeriod?.ToDateTime?.DaylightSavingIndicator,
                        "DateTimeType": check response?.VostroAccountReference?.AccountStatus?.AccountStatus?.StatusValidityPeriod?.ToDateTime?.DateTimeType
                    }
                },
                "StatusInvolvedPartyReference": {
                    "PartyReference": check response?.VostroAccountReference?.AccountStatus?.AccountStatus?.StatusInvolvedPartyReference?.PartyReference,
                    "InvolvementReference": check response?.VostroAccountReference?.AccountStatus?.AccountStatus?.StatusInvolvedPartyReference?.InvolvementReference
                }
            },
            "AccountStatusType": check response?.VostroAccountReference?.AccountStatus?.AccountStatusType
        },
        "AccountIdentification": {
            "AccountIdentificationType": check response?.VostroAccountReference?.AccountIdentification?.AccountIdentificationType,
            "AccountIdentification": {
                "IdentifierValue": check response?.VostroAccountReference?.AccountIdentification?.AccountIdentification?.IdentifierValue,
                "IdentifierIssuerReference": {
                    "PartyReference": check response?.VostroAccountReference?.AccountIdentification?.AccountIdentification?.IdentifierIssuerReference?.PartyReference,
                    "InvolvementReference": check response?.VostroAccountReference?.AccountIdentification?.AccountIdentification?.IdentifierIssuerReference?.InvolvementReference
                },
                "IdentifierStartDate": {
                    "DateTimeContent": check response?.VostroAccountReference?.AccountIdentification?.AccountIdentification?.IdentifierStartDate?.DateTimeContent,
                    "TimeZoneCode": check response?.VostroAccountReference?.AccountIdentification?.AccountIdentification?.IdentifierStartDate?.TimeZoneCode,
                    "DaylightSavingIndicator": check response?.VostroAccountReference?.AccountIdentification?.AccountIdentification?.IdentifierStartDate?.DaylightSavingIndicator,
                    "DateTimeType": check response?.VostroAccountReference?.AccountIdentification?.AccountIdentification?.IdentifierStartDate?.DateTimeType
                },
                "IdentifierEndDate": {
                    "DateTimeContent": check response?.VostroAccountReference?.AccountIdentification?.AccountIdentification?.IdentifierEndDate?.DateTimeContent,
                    "TimeZoneCode": check response?.VostroAccountReference?.AccountIdentification?.AccountIdentification?.IdentifierEndDate?.TimeZoneCode,
                    "DaylightSavingIndicator": check response?.VostroAccountReference?.AccountIdentification?.AccountIdentification?.IdentifierEndDate?.DaylightSavingIndicator,
                    "DateTimeType": check response?.VostroAccountReference?.AccountIdentification?.AccountIdentification?.IdentifierEndDate?.DateTimeType
                }
            }
        },
        "AccountDate": {
            "AccountDateType": check response?.VostroAccountReference?.AccountDate?.AccountDateType,
            "AccountDate": {
                "DateTimeContent": check response?.VostroAccountReference?.AccountDate?.AccountDate?.DateTimeContent,
                "TimeZoneCode": check response?.VostroAccountReference?.AccountDate?.AccountDate?.TimeZoneCode,
                "DaylightSavingIndicator": check response?.VostroAccountReference?.AccountDate?.AccountDate?.DaylightSavingIndicator,
                "DateTimeType": check response?.VostroAccountReference?.AccountDate?.AccountDate?.DateTimeType
            }
        },
        "AccountType": check response?.VostroAccountReference?.AccountType,
        "AccountPurpose": check response?.VostroAccountReference?.AccountPurpose,
        "AccountBalance": {
            "BalanceAmount": {
                "AmountValue": check response?.VostroAccountReference?.AccountBalance?.BalanceAmount?.AmountValue,
                "AmountCurrency": {
                    "Currencycode": check response?.VostroAccountReference?.AccountBalance?.BalanceAmount?.AmountCurrency?.Currencycode
                },
                "DecimalPointPosition": check response?.VostroAccountReference?.AccountBalance?.BalanceAmount?.DecimalPointPosition,
                "AmountType": check response?.VostroAccountReference?.AccountBalance?.BalanceAmount?.AmountType
            },
            "BalanceType": check response?.VostroAccountReference?.AccountBalance?.BalanceType,
            "BalanceValueDate": {
                "DateTimeContent": check response?.VostroAccountReference?.AccountBalance?.BalanceValueDate?.DateTimeContent,
                "TimeZoneCode": check response?.VostroAccountReference?.AccountBalance?.BalanceValueDate?.TimeZoneCode,
                "DaylightSavingIndicator": check response?.VostroAccountReference?.AccountBalance?.BalanceValueDate?.DaylightSavingIndicator,
                "DateTimeType": check response?.VostroAccountReference?.AccountBalance?.BalanceValueDate?.DateTimeType
            },
            "BalanceIndicator": check response?.VostroAccountReference?.AccountBalance?.BalanceIndicator,
            "BalanceCounterpartyType": check response?.VostroAccountReference?.AccountBalance?.BalanceCounterpartyType,
            "BalanceCalculationDate": {
                "DateTimeContent": check response?.VostroAccountReference?.AccountBalance?.BalanceCalculationDate?.DateTimeContent,
                "TimeZoneCode": check response?.VostroAccountReference?.AccountBalance?.BalanceCalculationDate?.TimeZoneCode,
                "DaylightSavingIndicator": check response?.VostroAccountReference?.AccountBalance?.BalanceCalculationDate?.DaylightSavingIndicator,
                "DateTimeType": check response?.VostroAccountReference?.AccountBalance?.BalanceCalculationDate?.DateTimeType
            },
            "BalanceSubType": check response?.VostroAccountReference?.AccountBalance?.BalanceSubType
        },
        "AccountCurrency": {
            "AccountCurrencyType": check response?.VostroAccountReference?.AccountCurrency?.AccountCurrencyType,
            "AccountCurrency": {
                "Currencycode": check response?.VostroAccountReference?.AccountCurrency?.AccountCurrency?.Currencycode
            }
        },
        "AccountDescription": check response?.VostroAccountReference?.AccountDescription,
        "AccountName": {
            "Name": check response?.VostroAccountReference?.AccountName?.Name
        },
        "LogType": check response?.VostroAccountReference?.LogType,
        "LogPeriod": {
            "FromDateTime": {
                "DateTimeContent": check response?.VostroAccountReference?.LogPeriod?.FromDateTime?.DateTimeContent,
                "TimeZoneCode": check response?.VostroAccountReference?.LogPeriod?.FromDateTime?.TimeZoneCode,
                "DaylightSavingIndicator": check response?.VostroAccountReference?.LogPeriod?.FromDateTime?.DaylightSavingIndicator,
                "DateTimeType": check response?.VostroAccountReference?.LogPeriod?.FromDateTime?.DateTimeType
            },
            "ToDateTime": {
                "DateTimeContent": check response?.VostroAccountReference?.LogPeriod?.ToDateTime?.DateTimeContent,
                "TimeZoneCode": check response?.VostroAccountReference?.LogPeriod?.ToDateTime?.TimeZoneCode,
                "DaylightSavingIndicator": check response?.VostroAccountReference?.LogPeriod?.ToDateTime?.DaylightSavingIndicator,
                "DateTimeType": check response?.VostroAccountReference?.LogPeriod?.ToDateTime?.DateTimeType
            }
        },
        "LogDate": {
            "DateTimeContent": check response?.VostroAccountReference?.LogDate?.DateTimeContent,
            "TimeZoneCode": check response?.VostroAccountReference?.LogDate?.TimeZoneCode,
            "DaylightSavingIndicator": check response?.VostroAccountReference?.LogDate?.DaylightSavingIndicator,
            "DateTimeType": check response?.VostroAccountReference?.LogDate?.DateTimeType
        },
        "LogIdentification": {
            "IdentifierValue": check response?.VostroAccountReference?.LogIdentification?.IdentifierValue,
            "IdentifierIssuerReference": {
                "PartyReference": check response?.VostroAccountReference?.LogIdentification?.IdentifierIssuerReference?.PartyReference,
                "InvolvementReference": check response?.VostroAccountReference?.LogIdentification?.IdentifierIssuerReference?.InvolvementReference
            },
            "IdentifierStartDate": {
                "DateTimeContent": check response?.VostroAccountReference?.LogIdentification?.IdentifierStartDate?.DateTimeContent,
                "TimeZoneCode": check response?.VostroAccountReference?.LogIdentification?.IdentifierStartDate?.TimeZoneCode,
                "DaylightSavingIndicator": check response?.VostroAccountReference?.LogIdentification?.IdentifierStartDate?.DaylightSavingIndicator,
                "DateTimeType": check response?.VostroAccountReference?.LogIdentification?.IdentifierStartDate?.DateTimeType
            },
            "IdentifierEndDate": {
                "DateTimeContent": check response?.VostroAccountReference?.LogIdentification?.IdentifierEndDate?.DateTimeContent,
                "TimeZoneCode": check response?.VostroAccountReference?.LogIdentification?.IdentifierEndDate?.TimeZoneCode,
                "DaylightSavingIndicator": check response?.VostroAccountReference?.LogIdentification?.IdentifierEndDate?.DaylightSavingIndicator,
                "DateTimeType": check response?.VostroAccountReference?.LogIdentification?.IdentifierEndDate?.DateTimeType
            }
        }
    },
    "CorrespondentBankAgreementReference": {
        "AgreementSignedDate": {
            "DateContent": check response?.CorrespondentBankAgreementReference?.AgreementSignedDate?.DateContent
        },
        "AgreementType": check response?.CorrespondentBankAgreementReference?.AgreementType,
        "AgreementValidityPeriod": {
            "FromDateTime": {
                "DateTimeContent": {"Text": check response?.CorrespondentBankAgreementReference?.AgreementValidityPeriod?.FromDateTime?.DateTimeContent?.Text},
                "TimeZoneCode": {"Text": check response?.CorrespondentBankAgreementReference?.AgreementValidityPeriod?.FromDateTime?.TimeZoneCode?.Text},
                "DaylightSavingIndicator": {"Text": check response?.CorrespondentBankAgreementReference?.AgreementValidityPeriod?.FromDateTime?.DaylightSavingIndicator?.Text},
                "DateTimeType": check response?.CorrespondentBankAgreementReference?.AgreementValidityPeriod?.FromDateTime?.DateTimeType
            },
            "ToDateTime": {
                "DateTimeContent": {"Text": check response?.CorrespondentBankAgreementReference?.AgreementValidityPeriod?.ToDateTime?.DateTimeContent?.Text},
                "TimeZoneCode": {"Text": check response?.CorrespondentBankAgreementReference?.AgreementValidityPeriod?.ToDateTime?.TimeZoneCode?.Text},
                "DaylightSavingIndicator": {"Text": check response?.CorrespondentBankAgreementReference?.AgreementValidityPeriod?.ToDateTime?.DaylightSavingIndicator?.Text},
                "DateTimeType": check response?.CorrespondentBankAgreementReference?.AgreementValidityPeriod?.ToDateTime?.DateTimeType
            }
        },
        "AgreementVersion": check response?.CorrespondentBankAgreementReference?.AgreementVersion,
        "AgreementStatus": {
            "AgreementStatus": {
                "StatusReason": check response?.CorrespondentBankAgreementReference?.AgreementStatus?.AgreementStatus?.StatusReason,
                "StatusDateTime": {
                    "DateTimeContent": check response?.CorrespondentBankAgreementReference?.AgreementStatus?.AgreementStatus?.StatusDateTime?.DateTimeContent,
                    "TimeZoneCode": check response?.CorrespondentBankAgreementReference?.AgreementStatus?.AgreementStatus?.StatusDateTime?.TimeZoneCode,
                    "DaylightSavingIndicator": check response?.CorrespondentBankAgreementReference?.AgreementStatus?.AgreementStatus?.StatusDateTime?.DaylightSavingIndicator,
                    "DateTimeType": check response?.CorrespondentBankAgreementReference?.AgreementStatus?.AgreementStatus?.StatusDateTime?.DateTimeType
                },
                "StatusValidityPeriod": {
                    "FromDateTime": {
                        "DateTimeContent": check response?.CorrespondentBankAgreementReference?.AgreementStatus?.AgreementStatus?.StatusValidityPeriod?.FromDateTime?.DateTimeContent,
                        "TimeZoneCode": check response?.CorrespondentBankAgreementReference?.AgreementStatus?.AgreementStatus?.StatusValidityPeriod?.FromDateTime?.TimeZoneCode,
                        "DaylightSavingIndicator": check response?.CorrespondentBankAgreementReference?.AgreementStatus?.AgreementStatus?.StatusValidityPeriod?.FromDateTime?.DaylightSavingIndicator,
                        "DateTimeType": check response?.CorrespondentBankAgreementReference?.AgreementStatus?.AgreementStatus?.StatusValidityPeriod?.FromDateTime?.DateTimeType
                    },
                    "ToDateTime": {
                        "DateTimeContent": check response?.CorrespondentBankAgreementReference?.AgreementStatus?.AgreementStatus?.StatusValidityPeriod?.ToDateTime?.DateTimeContent,
                        "TimeZoneCode": check response?.CorrespondentBankAgreementReference?.AgreementStatus?.AgreementStatus?.StatusValidityPeriod?.ToDateTime?.TimeZoneCode,
                        "DaylightSavingIndicator": check response?.CorrespondentBankAgreementReference?.AgreementStatus?.AgreementStatus?.StatusValidityPeriod?.ToDateTime?.DaylightSavingIndicator,
                        "DateTimeType": check response?.CorrespondentBankAgreementReference?.AgreementStatus?.AgreementStatus?.StatusValidityPeriod?.ToDateTime?.DateTimeType
                    }
                },
                "StatusInvolvedPartyReference": {
                    "PartyReference": check response?.CorrespondentBankAgreementReference?.AgreementStatus?.AgreementStatus?.StatusInvolvedPartyReference?.PartyReference,
                    "InvolvementReference": check response?.CorrespondentBankAgreementReference?.AgreementStatus?.AgreementStatus?.StatusInvolvedPartyReference?.InvolvementReference
                }
            },
            "AgreementStatusType": check response?.CorrespondentBankAgreementReference?.AgreementStatus?.AgreementStatusType
        },
        "AgreementSubjectMatter": check response?.CorrespondentBankAgreementReference?.AgreementSubjectMatter,
        "AgreementIdentification": {
            "IdentifierValue": {"Value": check response?.CorrespondentBankAgreementReference?.AgreementIdentification?.IdentifierValue?.Value},
            "IdentifierIssuerReference": {
                "PartyReference": check response?.CorrespondentBankAgreementReference?.AgreementIdentification?.IdentifierIssuerReference?.PartyReference,
                "InvolvementReference": check response?.CorrespondentBankAgreementReference?.AgreementIdentification?.IdentifierIssuerReference?.InvolvementReference
            },
            "IdentifierStartDate": {
                "DateTimeContent": {"Text": check response?.CorrespondentBankAgreementReference?.AgreementIdentification?.IdentifierStartDate?.DateTimeContent?.Text},
                "TimeZoneCode": {"Text": check response?.CorrespondentBankAgreementReference?.AgreementIdentification?.IdentifierStartDate?.TimeZoneCode?.Text},
                "DaylightSavingIndicator": {"Text": check response?.CorrespondentBankAgreementReference?.AgreementIdentification?.IdentifierStartDate?.DaylightSavingIndicator?.Text},
                "DateTimeType": check response?.CorrespondentBankAgreementReference?.AgreementIdentification?.IdentifierStartDate?.DateTimeType
            },
            "IdentifierEndDate": {
                "DateTimeContent": {"Text": check response?.CorrespondentBankAgreementReference?.AgreementIdentification?.IdentifierEndDate?.DateTimeContent?.Text},
                "TimeZoneCode": {"Text": check response?.CorrespondentBankAgreementReference?.AgreementIdentification?.IdentifierEndDate?.TimeZoneCode?.Text},
                "DaylightSavingIndicator": {"Text": check response?.CorrespondentBankAgreementReference?.AgreementIdentification?.IdentifierEndDate?.DaylightSavingIndicator?.Text},
                "DateTimeType": check response?.CorrespondentBankAgreementReference?.AgreementIdentification?.IdentifierEndDate?.DateTimeType
            }
        },
        "AgreementDate": {
            "DateTimeContent": {"Text": check response?.CorrespondentBankAgreementReference?.AgreementDate?.DateTimeContent?.Text},
            "TimeZoneCode": {"Text": check response?.CorrespondentBankAgreementReference?.AgreementDate?.TimeZoneCode?.Text},
            "DaylightSavingIndicator": {"Text": check response?.CorrespondentBankAgreementReference?.AgreementDate?.DaylightSavingIndicator?.Text},
            "DateTimeType": check response?.CorrespondentBankAgreementReference?.AgreementDate?.DateTimeType
        },
        "AgreementDescription": check response?.CorrespondentBankAgreementReference?.AgreementDescription
    },
    "CorrespondentBankName": {
        "Name": check response?.CorrespondentBankName?.Name
    },
    "BIC": {
        "IdentifierValue": {"Value": check response?.BIC?.IdentifierValue?.Value},
        "IdentifierIssuerReference": {
            "PartyReference": check response?.BIC?.IdentifierIssuerReference?.PartyReference,
            "InvolvementReference": check response?.BIC?.IdentifierIssuerReference?.InvolvementReference
        },
        "IdentifierStartDate": {
            "DateTimeContent": {"Text": check response?.BIC?.IdentifierStartDate?.DateTimeContent?.Text},
            "TimeZoneCode": {"Text": check response?.BIC?.IdentifierStartDate?.TimeZoneCode?.Text},
            "DaylightSavingIndicator": {"Text": check response?.BIC?.IdentifierStartDate?.DaylightSavingIndicator?.Text},
            "DateTimeType": check response?.BIC?.IdentifierStartDate?.DateTimeType
        },
        "IdentifierEndDate": {
            "DateTimeContent": {"Text": check response?.BIC?.IdentifierEndDate?.DateTimeContent?.Text},
            "TimeZoneCode": {"Text": check response?.BIC?.IdentifierEndDate?.TimeZoneCode?.Text},
            "DaylightSavingIndicator": {"Text": check response?.BIC?.IdentifierEndDate?.DaylightSavingIndicator?.Text},
            "DateTimeType": check response?.BIC?.IdentifierEndDate?.DateTimeType
        }
    },
    "NationalClearingCode": {
        "IdentifierValue": {"Value": check response?.NationalClearingCode?.IdentifierValue?.Value},
        "IdentifierIssuerReference": {
            "PartyReference": check response?.NationalClearingCode?.IdentifierIssuerReference?.PartyReference,
            "InvolvementReference": check response?.NationalClearingCode?.IdentifierIssuerReference?.InvolvementReference
        },
        "IdentifierStartDate": {
            "DateTimeContent": {"Text": check response?.NationalClearingCode?.IdentifierStartDate?.DateTimeContent?.Text},
            "TimeZoneCode": {"Text": check response?.NationalClearingCode?.IdentifierStartDate?.TimeZoneCode?.Text},
            "DaylightSavingIndicator": {"Text": check response?.NationalClearingCode?.IdentifierStartDate?.DaylightSavingIndicator?.Text},
            "DateTimeType": check response?.NationalClearingCode?.IdentifierStartDate?.DateTimeType
        },
        "IdentifierEndDate": {
            "DateTimeContent": {"Text": check response?.NationalClearingCode?.IdentifierEndDate?.DateTimeContent?.Text},
            "TimeZoneCode": {"Text": check response?.NationalClearingCode?.IdentifierEndDate?.TimeZoneCode?.Text},
            "DaylightSavingIndicator": {"Text": check response?.NationalClearingCode?.IdentifierEndDate?.DaylightSavingIndicator?.Text},
            "DateTimeType": check response?.NationalClearingCode?.IdentifierEndDate?.DateTimeType
        }
    },
    "CorrespondentBankContactAddress": {
        "AddressType": check response?.CorrespondentBankContactAddress?.AddressType
    },
    "PartyReferenceDataDirectoryReference": {
        "DirectoryVersion": check response?.PartyReferenceDataDirectoryReference?.DirectoryVersion,
        "DirectoryConfiguration": check response?.PartyReferenceDataDirectoryReference?.DirectoryConfiguration,
        "DirectoryValidPeriod": {
            "FromDateTime": {
                "DateTimeContent": {"Text": check response?.PartyReferenceDataDirectoryReference?.DirectoryValidPeriod?.FromDateTime?.DateTimeContent?.Text},
                "TimeZoneCode": {"Text": check response?.PartyReferenceDataDirectoryReference?.DirectoryValidPeriod?.FromDateTime?.TimeZoneCode?.Text},
                "DaylightSavingIndicator": {"Text": check response?.PartyReferenceDataDirectoryReference?.DirectoryValidPeriod?.FromDateTime?.DaylightSavingIndicator?.Text},
                "DateTimeType": check response?.PartyReferenceDataDirectoryReference?.DirectoryValidPeriod?.FromDateTime?.DateTimeType
            },
            "ToDateTime": {
                "DateTimeContent": {"Text": check response?.PartyReferenceDataDirectoryReference?.DirectoryValidPeriod?.ToDateTime?.DateTimeContent?.Text},
                "TimeZoneCode": {"Text": check response?.PartyReferenceDataDirectoryReference?.DirectoryValidPeriod?.ToDateTime?.TimeZoneCode?.Text},
                "DaylightSavingIndicator": {"Text": check response?.PartyReferenceDataDirectoryReference?.DirectoryValidPeriod?.ToDateTime?.DaylightSavingIndicator?.Text},
                "DateTimeType": check response?.PartyReferenceDataDirectoryReference?.DirectoryValidPeriod?.ToDateTime?.DateTimeType
            }
        },
        "DirectoryStatus": {
            "StatusReason": {"Text": check response?.PartyReferenceDataDirectoryReference?.DirectoryStatus?.StatusReason?.Text},
            "StatusDateTime": {
                "DateTimeContent": {"Text": check response?.PartyReferenceDataDirectoryReference?.DirectoryStatus?.StatusDateTime?.DateTimeContent?.Text},
                "TimeZoneCode": {"Text": check response?.PartyReferenceDataDirectoryReference?.DirectoryStatus?.StatusDateTime?.TimeZoneCode?.Text},
                "DaylightSavingIndicator": {"Text": check response?.PartyReferenceDataDirectoryReference?.DirectoryStatus?.StatusDateTime?.DaylightSavingIndicator?.Text},
                "DateTimeType": check response?.PartyReferenceDataDirectoryReference?.DirectoryStatus?.StatusDateTime?.DateTimeType
            },
            "StatusValidityPeriod": {
                "FromDateTime": {
                    "DateTimeContent": {"Text": check response?.PartyReferenceDataDirectoryReference?.DirectoryStatus?.StatusValidityPeriod?.FromDateTime?.DateTimeContent?.Text},
                    "TimeZoneCode": {"Text": check response?.PartyReferenceDataDirectoryReference?.DirectoryStatus?.StatusValidityPeriod?.FromDateTime?.TimeZoneCode?.Text},
                    "DaylightSavingIndicator": {"Text": check response?.PartyReferenceDataDirectoryReference?.DirectoryStatus?.StatusValidityPeriod?.FromDateTime?.DaylightSavingIndicator?.Text},
                    "DateTimeType": check response?.PartyReferenceDataDirectoryReference?.DirectoryStatus?.StatusValidityPeriod?.FromDateTime?.DateTimeType
                },
                "ToDateTime": {
                    "DateTimeContent": {"Text": check response?.PartyReferenceDataDirectoryReference?.DirectoryStatus?.StatusValidityPeriod?.ToDateTime?.DateTimeContent?.Text},
                    "TimeZoneCode": {"Text": check response?.PartyReferenceDataDirectoryReference?.DirectoryStatus?.StatusValidityPeriod?.ToDateTime?.TimeZoneCode?.Text},
                    "DaylightSavingIndicator": {"Text": check response?.PartyReferenceDataDirectoryReference?.DirectoryStatus?.StatusValidityPeriod?.ToDateTime?.DaylightSavingIndicator?.Text},
                    "DateTimeType": check response?.PartyReferenceDataDirectoryReference?.DirectoryStatus?.StatusValidityPeriod?.ToDateTime?.DateTimeType
                }
            },
            "StatusInvolvedPartyReference": {
                "PartyReference": check response?.PartyReferenceDataDirectoryReference?.DirectoryStatus?.StatusInvolvedPartyReference?.PartyReference,
                "InvolvementReference": check response?.PartyReferenceDataDirectoryReference?.DirectoryStatus?.StatusInvolvedPartyReference?.InvolvementReference
            }
        }
    },
    "LegalEntityDirectoryReference": {
        "DirectoryVersion": check response?.LegalEntityDirectoryReference?.DirectoryVersion,
        "DirectoryConfiguration": check response?.LegalEntityDirectoryReference?.DirectoryConfiguration,
        "DirectoryValidPeriod": {
            "FromDateTime": {
                "DateTimeContent": {"Text": check response?.LegalEntityDirectoryReference?.DirectoryValidPeriod?.FromDateTime?.DateTimeContent?.Text},
                "TimeZoneCode": {"Text": check response?.LegalEntityDirectoryReference?.DirectoryValidPeriod?.FromDateTime?.TimeZoneCode?.Text},
                "DaylightSavingIndicator": {"Text": check response?.LegalEntityDirectoryReference?.DirectoryValidPeriod?.FromDateTime?.DaylightSavingIndicator?.Text},
                "DateTimeType": check response?.LegalEntityDirectoryReference?.DirectoryValidPeriod?.FromDateTime?.DateTimeType
            },
            "ToDateTime": {
                "DateTimeContent": {"Text": check response?.LegalEntityDirectoryReference?.DirectoryValidPeriod?.ToDateTime?.DateTimeContent?.Text},
                "TimeZoneCode": {"Text": check response?.LegalEntityDirectoryReference?.DirectoryValidPeriod?.ToDateTime?.TimeZoneCode?.Text},
                "DaylightSavingIndicator": {"Text": check response?.LegalEntityDirectoryReference?.DirectoryValidPeriod?.ToDateTime?.DaylightSavingIndicator?.Text},
                "DateTimeType": check response?.LegalEntityDirectoryReference?.DirectoryValidPeriod?.ToDateTime?.DateTimeType
            }
        },
        "DirectoryStatus": {
            "StatusReason": {"Text": check response?.LegalEntityDirectoryReference?.DirectoryStatus?.StatusReason?.Text},
            "StatusDateTime": {
                "DateTimeContent": {"Text": check response?.LegalEntityDirectoryReference?.DirectoryStatus?.StatusDateTime?.DateTimeContent?.Text},
                "TimeZoneCode": {"Text": check response?.LegalEntityDirectoryReference?.DirectoryStatus?.StatusDateTime?.TimeZoneCode?.Text},
                "DaylightSavingIndicator": {"Text": check response?.LegalEntityDirectoryReference?.DirectoryStatus?.StatusDateTime?.DaylightSavingIndicator?.Text},
                "DateTimeType": check response?.LegalEntityDirectoryReference?.DirectoryStatus?.StatusDateTime?.DateTimeType
            },
            "StatusValidityPeriod": {
                "FromDateTime": {
                    "DateTimeContent": {"Text": check response?.LegalEntityDirectoryReference?.DirectoryStatus?.StatusValidityPeriod?.FromDateTime?.DateTimeContent?.Text},
                    "TimeZoneCode": {"Text": check response?.LegalEntityDirectoryReference?.DirectoryStatus?.StatusValidityPeriod?.FromDateTime?.TimeZoneCode?.Text},
                    "DaylightSavingIndicator": {"Text": check response?.LegalEntityDirectoryReference?.DirectoryStatus?.StatusValidityPeriod?.FromDateTime?.DaylightSavingIndicator?.Text},
                    "DateTimeType": check response?.LegalEntityDirectoryReference?.DirectoryStatus?.StatusValidityPeriod?.FromDateTime?.DateTimeType
                },
                "ToDateTime": {
                    "DateTimeContent": {"Text": check response?.LegalEntityDirectoryReference?.DirectoryStatus?.StatusValidityPeriod?.ToDateTime?.DateTimeContent?.Text},
                    "TimeZoneCode": {"Text": check response?.LegalEntityDirectoryReference?.DirectoryStatus?.StatusValidityPeriod?.ToDateTime?.TimeZoneCode?.Text},
                    "DaylightSavingIndicator": {"Text": check response?.LegalEntityDirectoryReference?.DirectoryStatus?.StatusValidityPeriod?.ToDateTime?.DaylightSavingIndicator?.Text},
                    "DateTimeType": check response?.LegalEntityDirectoryReference?.DirectoryStatus?.StatusValidityPeriod?.ToDateTime?.DateTimeType
                }
            },
            "StatusInvolvedPartyReference": {
                "PartyReference": check response?.LegalEntityDirectoryReference?.DirectoryStatus?.StatusInvolvedPartyReference?.PartyReference,
                "InvolvementReference": check response?.LegalEntityDirectoryReference?.DirectoryStatus?.StatusInvolvedPartyReference?.InvolvementReference
            }
        }
    },
    "PaymentProcessingTimes": {
        "DateTimeContent": {"Text": check response?.PaymentProcessingTimes?.DateTimeContent?.Text},
        "TimeZoneCode": {"Text": check response?.PaymentProcessingTimes?.TimeZoneCode?.Text},
        "DaylightSavingIndicator": {"Text": check response?.PaymentProcessingTimes?.DaylightSavingIndicator?.Text},
        "DateTimeType": check response?.PaymentProcessingTimes?.DateTimeType
    },
    "NostroAccountReference": {
        "AccountStatus": {
            "AccountStatus": {
                "StatusReason": check response?.NostroAccountReference?.AccountStatus?.AccountStatus?.StatusReason,
                "StatusDateTime": {
                    "DateTimeContent": check response?.NostroAccountReference?.AccountStatus?.AccountStatus?.StatusDateTime?.DateTimeContent,
                    "TimeZoneCode": check response?.NostroAccountReference?.AccountStatus?.AccountStatus?.StatusDateTime?.TimeZoneCode,
                    "DaylightSavingIndicator": check response?.NostroAccountReference?.AccountStatus?.AccountStatus?.StatusDateTime?.DaylightSavingIndicator,
                    "DateTimeType": check response?.NostroAccountReference?.AccountStatus?.AccountStatus?.StatusDateTime?.DateTimeType
                },
                "StatusValidityPeriod": {
                    "FromDateTime": {
                        "DateTimeContent": check response?.NostroAccountReference?.AccountStatus?.AccountStatus?.StatusValidityPeriod?.FromDateTime?.DateTimeContent,
                        "TimeZoneCode": check response?.NostroAccountReference?.AccountStatus?.AccountStatus?.StatusValidityPeriod?.FromDateTime?.TimeZoneCode,
                        "DaylightSavingIndicator": check response?.NostroAccountReference?.AccountStatus?.AccountStatus?.StatusValidityPeriod?.FromDateTime?.DaylightSavingIndicator,
                        "DateTimeType": check response?.NostroAccountReference?.AccountStatus?.AccountStatus?.StatusValidityPeriod?.FromDateTime?.DateTimeType
                    },
                    "ToDateTime": {
                        "DateTimeContent": check response?.NostroAccountReference?.AccountStatus?.AccountStatus?.StatusValidityPeriod?.ToDateTime?.DateTimeContent,
                        "TimeZoneCode": check response?.NostroAccountReference?.AccountStatus?.AccountStatus?.StatusValidityPeriod?.ToDateTime?.TimeZoneCode,
                        "DaylightSavingIndicator": check response?.NostroAccountReference?.AccountStatus?.AccountStatus?.StatusValidityPeriod?.ToDateTime?.DaylightSavingIndicator,
                        "DateTimeType": check response?.NostroAccountReference?.AccountStatus?.AccountStatus?.StatusValidityPeriod?.ToDateTime?.DateTimeType
                    }
                },
                "StatusInvolvedPartyReference": {
                    "PartyReference": check response?.NostroAccountReference?.AccountStatus?.AccountStatus?.StatusInvolvedPartyReference?.PartyReference,
                    "InvolvementReference": check response?.NostroAccountReference?.AccountStatus?.AccountStatus?.StatusInvolvedPartyReference?.InvolvementReference
                }
            },
            "AccountStatusType": check response?.NostroAccountReference?.AccountStatus?.AccountStatusType
        },
        "AccountIdentification": {
            "AccountIdentificationType": check response?.NostroAccountReference?.AccountIdentification?.AccountIdentificationType,
            "AccountIdentification": {
                "IdentifierValue": check response?.NostroAccountReference?.AccountIdentification?.AccountIdentification?.IdentifierValue,
                "IdentifierIssuerReference": {
                    "PartyReference": check response?.NostroAccountReference?.AccountIdentification?.AccountIdentification?.IdentifierIssuerReference?.PartyReference,
                    "InvolvementReference": check response?.NostroAccountReference?.AccountIdentification?.AccountIdentification?.IdentifierIssuerReference?.InvolvementReference
                },
                "IdentifierStartDate": {
                    "DateTimeContent": check response?.NostroAccountReference?.AccountIdentification?.AccountIdentification?.IdentifierStartDate?.DateTimeContent,
                    "TimeZoneCode": check response?.NostroAccountReference?.AccountIdentification?.AccountIdentification?.IdentifierStartDate?.TimeZoneCode,
                    "DaylightSavingIndicator": check response?.NostroAccountReference?.AccountIdentification?.AccountIdentification?.IdentifierStartDate?.DaylightSavingIndicator,
                    "DateTimeType": check response?.NostroAccountReference?.AccountIdentification?.AccountIdentification?.IdentifierStartDate?.DateTimeType
                },
                "IdentifierEndDate": {
                    "DateTimeContent": check response?.NostroAccountReference?.AccountIdentification?.AccountIdentification?.IdentifierEndDate?.DateTimeContent,
                    "TimeZoneCode": check response?.NostroAccountReference?.AccountIdentification?.AccountIdentification?.IdentifierEndDate?.TimeZoneCode,
                    "DaylightSavingIndicator": check response?.NostroAccountReference?.AccountIdentification?.AccountIdentification?.IdentifierEndDate?.DaylightSavingIndicator,
                    "DateTimeType": check response?.NostroAccountReference?.AccountIdentification?.AccountIdentification?.IdentifierEndDate?.DateTimeType
                }
            }
        },
        "AccountDate": {
            "AccountDateType": check response?.NostroAccountReference?.AccountDate?.AccountDateType,
            "AccountDate": {
                "DateTimeContent": check response?.NostroAccountReference?.AccountDate?.AccountDate?.DateTimeContent,
                "TimeZoneCode": check response?.NostroAccountReference?.AccountDate?.AccountDate?.TimeZoneCode,
                "DaylightSavingIndicator": check response?.NostroAccountReference?.AccountDate?.AccountDate?.DaylightSavingIndicator,
                "DateTimeType": check response?.NostroAccountReference?.AccountDate?.AccountDate?.DateTimeType
            }
        },
        "AccountType": check response?.NostroAccountReference?.AccountType,
        "AccountPurpose": check response?.NostroAccountReference?.AccountPurpose,
        "AccountBalance": {
            "BalanceAmount": {
                "AmountValue": check response?.NostroAccountReference?.AccountBalance?.BalanceAmount?.AmountValue,
                "AmountCurrency": {
                    "Currencycode": check response?.NostroAccountReference?.AccountBalance?.BalanceAmount?.AmountCurrency?.Currencycode
                },
                "DecimalPointPosition": check response?.NostroAccountReference?.AccountBalance?.BalanceAmount?.DecimalPointPosition,
                "AmountType": check response?.NostroAccountReference?.AccountBalance?.BalanceAmount?.AmountType
            },
            "BalanceType": check response?.NostroAccountReference?.AccountBalance?.BalanceType,
            "BalanceValueDate": {
                "DateTimeContent": check response?.NostroAccountReference?.AccountBalance?.BalanceValueDate?.DateTimeContent,
                "TimeZoneCode": check response?.NostroAccountReference?.AccountBalance?.BalanceValueDate?.TimeZoneCode,
                "DaylightSavingIndicator": check response?.NostroAccountReference?.AccountBalance?.BalanceValueDate?.DaylightSavingIndicator,
                "DateTimeType": check response?.NostroAccountReference?.AccountBalance?.BalanceValueDate?.DateTimeType
            },
            "BalanceIndicator": check response?.NostroAccountReference?.AccountBalance?.BalanceIndicator,
            "BalanceCounterpartyType": check response?.NostroAccountReference?.AccountBalance?.BalanceCounterpartyType,
            "BalanceCalculationDate": {
                "DateTimeContent": check response?.NostroAccountReference?.AccountBalance?.BalanceCalculationDate?.DateTimeContent,
                "TimeZoneCode": check response?.NostroAccountReference?.AccountBalance?.BalanceCalculationDate?.TimeZoneCode,
                "DaylightSavingIndicator": check response?.NostroAccountReference?.AccountBalance?.BalanceCalculationDate?.DaylightSavingIndicator,
                "DateTimeType": check response?.NostroAccountReference?.AccountBalance?.BalanceCalculationDate?.DateTimeType
            },
            "BalanceSubType": check response?.NostroAccountReference?.AccountBalance?.BalanceSubType
        },
        "AccountCurrency": {
            "AccountCurrencyType": check response?.NostroAccountReference?.AccountCurrency?.AccountCurrencyType,
            "AccountCurrency": {
                "Currencycode": check response?.NostroAccountReference?.AccountCurrency?.AccountCurrency?.Currencycode
            }
        },
        "AccountDescription": check response?.NostroAccountReference?.AccountDescription,
        "AccountName": {
            "Name": check response?.NostroAccountReference?.AccountName?.Name
        },
        "LogType": check response?.NostroAccountReference?.LogType,
        "LogPeriod": {
            "FromDateTime": {
                "DateTimeContent": check response?.NostroAccountReference?.LogPeriod?.FromDateTime?.DateTimeContent,
                "TimeZoneCode": check response?.NostroAccountReference?.LogPeriod?.FromDateTime?.TimeZoneCode,
                "DaylightSavingIndicator": check response?.NostroAccountReference?.LogPeriod?.FromDateTime?.DaylightSavingIndicator,
                "DateTimeType": check response?.NostroAccountReference?.LogPeriod?.FromDateTime?.DateTimeType
            },
            "ToDateTime": {
                "DateTimeContent": check response?.NostroAccountReference?.LogPeriod?.ToDateTime?.DateTimeContent,
                "TimeZoneCode": check response?.NostroAccountReference?.LogPeriod?.ToDateTime?.TimeZoneCode,
                "DaylightSavingIndicator": check response?.NostroAccountReference?.LogPeriod?.ToDateTime?.DaylightSavingIndicator,
                "DateTimeType": check response?.NostroAccountReference?.LogPeriod?.ToDateTime?.DateTimeType
            }
        },
        "LogDate": {
            "DateTimeContent": check response?.NostroAccountReference?.LogDate?.DateTimeContent,
            "TimeZoneCode": check response?.NostroAccountReference?.LogDate?.TimeZoneCode,
            "DaylightSavingIndicator": check response?.NostroAccountReference?.LogDate?.DaylightSavingIndicator,
            "DateTimeType": check response?.NostroAccountReference?.LogDate?.DateTimeType
        },
        "LogIdentification": {
            "IdentifierValue": check response?.NostroAccountReference?.LogIdentification?.IdentifierValue,
            "IdentifierIssuerReference": {
                "PartyReference": check response?.NostroAccountReference?.LogIdentification?.IdentifierIssuerReference?.PartyReference,
                "InvolvementReference": check response?.NostroAccountReference?.LogIdentification?.IdentifierIssuerReference?.InvolvementReference
            },
            "IdentifierStartDate": {
                "DateTimeContent": check response?.NostroAccountReference?.LogIdentification?.IdentifierStartDate?.DateTimeContent,
                "TimeZoneCode": check response?.NostroAccountReference?.LogIdentification?.IdentifierStartDate?.TimeZoneCode,
                "DaylightSavingIndicator": check response?.NostroAccountReference?.LogIdentification?.IdentifierStartDate?.DaylightSavingIndicator,
                "DateTimeType": check response?.NostroAccountReference?.LogIdentification?.IdentifierStartDate?.DateTimeType
            },
            "IdentifierEndDate": {
                "DateTimeContent": check response?.NostroAccountReference?.LogIdentification?.IdentifierEndDate?.DateTimeContent,
                "TimeZoneCode": check response?.NostroAccountReference?.LogIdentification?.IdentifierEndDate?.TimeZoneCode,
                "DaylightSavingIndicator": check response?.NostroAccountReference?.LogIdentification?.IdentifierEndDate?.DaylightSavingIndicator,
                "DateTimeType": check response?.NostroAccountReference?.LogIdentification?.IdentifierEndDate?.DateTimeType
            }
        }
    }
};
