import ballerinax/financial.bian.attribute.groups.products as products;

// Data mapper function to transform JSON response to PaymentInitiationTransaction record
isolated function transformCurrentAccountRetrievalResponse(json response) returns products:CurrentAccountFacility|error => {
    "ProductInstanceReference": {
        "CurrentAccountAgreementType": check response?.ProductInstanceReference?.CurrentAccountAgreementType,
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
        "AgreementDescription": check response?.ProductInstanceReference?.AgreementDescription,
        "InvolvedParty": {
            "InvolvementType": check response?.ProductInstanceReference?.InvolvedParty?.InvolvementType,
            "PartyReference": {
                "PartyName": {
                    "Name": check response?.ProductInstanceReference?.InvolvedParty?.PartyReference?.PartyName?.Name
                },
                "PartyType": check response?.ProductInstanceReference?.InvolvedParty?.PartyReference?.PartyType,
                "PartyDateTime": {
                    "DateTimeContent": check response?.ProductInstanceReference?.InvolvedParty?.PartyReference?.PartyDateTime?.DateTimeContent,
                    "TimeZoneCode": check response?.ProductInstanceReference?.InvolvedParty?.PartyReference?.PartyDateTime?.TimeZoneCode,
                    "DaylightSavingIndicator": check response?.ProductInstanceReference?.InvolvedParty?.PartyReference?.PartyDateTime?.DaylightSavingIndicator,
                    "DateTimeType": check response?.ProductInstanceReference?.InvolvedParty?.PartyReference?.PartyDateTime?.DateTimeType
                },
                "PartyIdentification": {
                    "PartyIdentificationType": check response?.ProductInstanceReference?.InvolvedParty?.PartyReference?.PartyIdentification?.PartyIdentificationType,
                    "PartyIdentification": {
                        "IdentifierValue": check response?.ProductInstanceReference?.InvolvedParty?.PartyReference?.PartyIdentification?.PartyIdentification?.IdentifierValue,
                        "IdentifierIssuerReference": {
                            "PartyReference": check response?.ProductInstanceReference?.InvolvedParty?.PartyReference?.PartyIdentification?.PartyIdentification?.IdentifierIssuerReference?.PartyReference,
                            "InvolvementReference": check response?.ProductInstanceReference?.InvolvedParty?.PartyReference?.PartyIdentification?.PartyIdentification?.IdentifierIssuerReference?.InvolvementReference
                        },
                        "IdentifierStartDate": {
                            "DateTimeContent": check response?.ProductInstanceReference?.InvolvedParty?.PartyReference?.PartyIdentification?.PartyIdentification?.IdentifierStartDate?.DateTimeContent,
                            "TimeZoneCode": check response?.ProductInstanceReference?.InvolvedParty?.PartyReference?.PartyIdentification?.PartyIdentification?.IdentifierStartDate?.TimeZoneCode,
                            "DaylightSavingIndicator": check response?.ProductInstanceReference?.InvolvedParty?.PartyReference?.PartyIdentification?.PartyIdentification?.IdentifierStartDate?.DaylightSavingIndicator,
                            "DateTimeType": check response?.ProductInstanceReference?.InvolvedParty?.PartyReference?.PartyIdentification?.PartyIdentification?.IdentifierStartDate?.DateTimeType
                        },
                        "IdentifierEndDate": {
                            "DateTimeContent": check response?.ProductInstanceReference?.InvolvedParty?.PartyReference?.PartyIdentification?.PartyIdentification?.IdentifierEndDate?.DateTimeContent,
                            "TimeZoneCode": check response?.ProductInstanceReference?.InvolvedParty?.PartyReference?.PartyIdentification?.PartyIdentification?.IdentifierEndDate?.TimeZoneCode,
                            "DaylightSavingIndicator": check response?.ProductInstanceReference?.InvolvedParty?.PartyReference?.PartyIdentification?.PartyIdentification?.IdentifierEndDate?.DaylightSavingIndicator,
                            "DateTimeType": check response?.ProductInstanceReference?.InvolvedParty?.PartyReference?.PartyIdentification?.PartyIdentification?.IdentifierEndDate?.DateTimeType
                        }
                    }
                },
                "PartyLegalStructureType": check response?.ProductInstanceReference?.InvolvedParty?.PartyReference?.PartyLegalStructureType,
                "PartyActivityIndicator": {
                    "Industrycode": check response?.ProductInstanceReference?.InvolvedParty?.PartyReference?.PartyActivityIndicator?.Industrycode
                }
            },
            "AgreementReference": {
                "Agreement": check response?.ProductInstanceReference?.InvolvedParty?.AgreementReference?.Agreement
            },
            "PartyRoleType": check response?.ProductInstanceReference?.InvolvedParty?.PartyRoleType,
            "PartyRoleName": {
                "Name": check response?.ProductInstanceReference?.InvolvedParty?.PartyRoleName?.Name
            },
            "PartyRoleValidityPeriod": {
                "FromDateTime": {
                    "DateTimeContent": check response?.ProductInstanceReference?.InvolvedParty?.PartyRoleValidityPeriod?.FromDateTime?.DateTimeContent,
                    "TimeZoneCode": check response?.ProductInstanceReference?.InvolvedParty?.PartyRoleValidityPeriod?.FromDateTime?.TimeZoneCode,
                    "DaylightSavingIndicator": check response?.ProductInstanceReference?.InvolvedParty?.PartyRoleValidityPeriod?.FromDateTime?.DaylightSavingIndicator,
                    "DateTimeType": check response?.ProductInstanceReference?.InvolvedParty?.PartyRoleValidityPeriod?.FromDateTime?.DateTimeType
                },
                "ToDateTime": {
                    "DateTimeContent": check response?.ProductInstanceReference?.InvolvedParty?.PartyRoleValidityPeriod?.ToDateTime?.DateTimeContent,
                    "TimeZoneCode": check response?.ProductInstanceReference?.InvolvedParty?.PartyRoleValidityPeriod?.ToDateTime?.TimeZoneCode,
                    "DaylightSavingIndicator": check response?.ProductInstanceReference?.InvolvedParty?.PartyRoleValidityPeriod?.ToDateTime?.DaylightSavingIndicator,
                    "DateTimeType": check response?.ProductInstanceReference?.InvolvedParty?.PartyRoleValidityPeriod?.ToDateTime?.DateTimeType
                }
            },
            "PartyInvolvementType": check response?.ProductInstanceReference?.InvolvedParty?.PartyInvolvementType
        },
        "ProductReference": {
            "ProductIdentification": {
                "ProductIdentification": {
                    "IdentifierValue": check response?.ProductInstanceReference?.ProductReference?.ProductIdentification?.ProductIdentification?.IdentifierValue,
                    "IdentifierIssuerReference": {
                        "PartyReference": check response?.ProductInstanceReference?.ProductReference?.ProductIdentification?.ProductIdentification?.IdentifierIssuerReference?.PartyReference,
                        "InvolvementReference": check response?.ProductInstanceReference?.ProductReference?.ProductIdentification?.ProductIdentification?.IdentifierIssuerReference?.InvolvementReference
                    },
                    "IdentifierStartDate": {
                        "DateTimeContent": check response?.ProductInstanceReference?.ProductReference?.ProductIdentification?.ProductIdentification?.IdentifierStartDate?.DateTimeContent,
                        "TimeZoneCode": check response?.ProductInstanceReference?.ProductReference?.ProductIdentification?.ProductIdentification?.IdentifierStartDate?.TimeZoneCode,
                        "DaylightSavingIndicator": check response?.ProductInstanceReference?.ProductReference?.ProductIdentification?.ProductIdentification?.IdentifierStartDate?.DaylightSavingIndicator,
                        "DateTimeType": check response?.ProductInstanceReference?.ProductReference?.ProductIdentification?.ProductIdentification?.IdentifierStartDate?.DateTimeType
                    },
                    "IdentifierEndDate": {
                        "DateTimeContent": check response?.ProductInstanceReference?.ProductReference?.ProductIdentification?.ProductIdentification?.IdentifierEndDate?.DateTimeContent,
                        "TimeZoneCode": check response?.ProductInstanceReference?.ProductReference?.ProductIdentification?.ProductIdentification?.IdentifierEndDate?.TimeZoneCode,
                        "DaylightSavingIndicator": check response?.ProductInstanceReference?.ProductReference?.ProductIdentification?.ProductIdentification?.IdentifierEndDate?.DaylightSavingIndicator,
                        "DateTimeType": check response?.ProductInstanceReference?.ProductReference?.ProductIdentification?.ProductIdentification?.IdentifierEndDate?.DateTimeType
                    }
                },
                "ProductIdentificationType": check response?.ProductInstanceReference?.ProductReference?.ProductIdentification?.ProductIdentificationType
            },
            "ProductType": check response?.ProductInstanceReference?.ProductReference?.ProductType,
            "ProductLifecycleStatus": {
                "ProductStatus": {
                    "StatusReason": check response?.ProductInstanceReference?.ProductReference?.ProductLifecycleStatus?.ProductStatus?.StatusReason,
                    "StatusDateTime": {
                        "DateTimeContent": check response?.ProductInstanceReference?.ProductReference?.ProductLifecycleStatus?.ProductStatus?.StatusDateTime?.DateTimeContent,
                        "TimeZoneCode": check response?.ProductInstanceReference?.ProductReference?.ProductLifecycleStatus?.ProductStatus?.StatusDateTime?.TimeZoneCode,
                        "DaylightSavingIndicator": check response?.ProductInstanceReference?.ProductReference?.ProductLifecycleStatus?.ProductStatus?.StatusDateTime?.DaylightSavingIndicator,
                        "DateTimeType": check response?.ProductInstanceReference?.ProductReference?.ProductLifecycleStatus?.ProductStatus?.StatusDateTime?.DateTimeType
                    },
                    "StatusValidityPeriod": {
                        "FromDateTime": {
                            "DateTimeContent": check response?.ProductInstanceReference?.ProductReference?.ProductLifecycleStatus?.ProductStatus?.StatusValidityPeriod?.FromDateTime?.DateTimeContent,
                            "TimeZoneCode": check response?.ProductInstanceReference?.ProductReference?.ProductLifecycleStatus?.ProductStatus?.StatusValidityPeriod?.FromDateTime?.TimeZoneCode,
                            "DaylightSavingIndicator": check response?.ProductInstanceReference?.ProductReference?.ProductLifecycleStatus?.ProductStatus?.StatusValidityPeriod?.FromDateTime?.DaylightSavingIndicator,
                            "DateTimeType": check response?.ProductInstanceReference?.ProductReference?.ProductLifecycleStatus?.ProductStatus?.StatusValidityPeriod?.FromDateTime?.DateTimeType
                        },
                        "ToDateTime": {
                            "DateTimeContent": check response?.ProductInstanceReference?.ProductReference?.ProductLifecycleStatus?.ProductStatus?.StatusValidityPeriod?.ToDateTime?.DateTimeContent,
                            "TimeZoneCode": check response?.ProductInstanceReference?.ProductReference?.ProductLifecycleStatus?.ProductStatus?.StatusValidityPeriod?.ToDateTime?.TimeZoneCode,
                            "DaylightSavingIndicator": check response?.ProductInstanceReference?.ProductReference?.ProductLifecycleStatus?.ProductStatus?.StatusValidityPeriod?.ToDateTime?.DaylightSavingIndicator,
                            "DateTimeType": check response?.ProductInstanceReference?.ProductReference?.ProductLifecycleStatus?.ProductStatus?.StatusValidityPeriod?.ToDateTime?.DateTimeType
                        }
                    },
                    "StatusInvolvedPartyReference": {
                        "PartyReference": check response?.ProductInstanceReference?.ProductReference?.ProductLifecycleStatus?.ProductStatus?.StatusInvolvedPartyReference?.PartyReference,
                        "InvolvementReference": check response?.ProductInstanceReference?.ProductReference?.ProductLifecycleStatus?.ProductStatus?.StatusInvolvedPartyReference?.InvolvementReference
                    }
                },
                "ProductStatusType": check response?.ProductInstanceReference?.ProductReference?.ProductLifecycleStatus?.ProductStatusType
            },
            "ProductPriority": check response?.ProductInstanceReference?.ProductReference?.ProductPriority,
            "ProductDescription": check response?.ProductInstanceReference?.ProductReference?.ProductDescription,
            "ProductVersion": check response?.ProductInstanceReference?.ProductReference?.ProductVersion,
            "ProductName": {
                "Name": check response?.ProductInstanceReference?.ProductReference?.ProductName?.Name
            },
            "FinancialInstrumentType": check response?.ProductInstanceReference?.ProductReference?.FinancialInstrumentType,
            "FinancialInstrumentIdentification": {
                "FinancialInstrumentIdentification": {
                    "IdentifierValue": check response?.ProductInstanceReference?.ProductReference?.FinancialInstrumentIdentification?.FinancialInstrumentIdentification?.IdentifierValue,
                    "IdentifierIssuerReference": {
                        "PartyReference": check response?.ProductInstanceReference?.ProductReference?.FinancialInstrumentIdentification?.FinancialInstrumentIdentification?.IdentifierIssuerReference?.PartyReference,
                        "InvolvementReference": check response?.ProductInstanceReference?.ProductReference?.FinancialInstrumentIdentification?.FinancialInstrumentIdentification?.IdentifierIssuerReference?.InvolvementReference
                    },
                    "IdentifierStartDate": {
                        "DateTimeContent": check response?.ProductInstanceReference?.ProductReference?.FinancialInstrumentIdentification?.FinancialInstrumentIdentification?.IdentifierStartDate?.DateTimeContent,
                        "TimeZoneCode": check response?.ProductInstanceReference?.ProductReference?.FinancialInstrumentIdentification?.FinancialInstrumentIdentification?.IdentifierStartDate?.TimeZoneCode,
                        "DaylightSavingIndicator": check response?.ProductInstanceReference?.ProductReference?.FinancialInstrumentIdentification?.FinancialInstrumentIdentification?.IdentifierStartDate?.DaylightSavingIndicator,
                        "DateTimeType": check response?.ProductInstanceReference?.ProductReference?.FinancialInstrumentIdentification?.FinancialInstrumentIdentification?.IdentifierStartDate?.DateTimeType
                    },
                    "IdentifierEndDate": {
                        "DateTimeContent": check response?.ProductInstanceReference?.ProductReference?.FinancialInstrumentIdentification?.FinancialInstrumentIdentification?.IdentifierEndDate?.DateTimeContent,
                        "TimeZoneCode": check response?.ProductInstanceReference?.ProductReference?.FinancialInstrumentIdentification?.FinancialInstrumentIdentification?.IdentifierEndDate?.TimeZoneCode,
                        "DaylightSavingIndicator": check response?.ProductInstanceReference?.ProductReference?.FinancialInstrumentIdentification?.FinancialInstrumentIdentification?.IdentifierEndDate?.DaylightSavingIndicator,
                        "DateTimeType": check response?.ProductInstanceReference?.ProductReference?.FinancialInstrumentIdentification?.FinancialInstrumentIdentification?.IdentifierEndDate?.DateTimeType
                    }
                },
                "FinancialInstrumentIdentificationType": check response?.ProductInstanceReference?.ProductReference?.FinancialInstrumentIdentification?.FinancialInstrumentIdentificationType
            },
            "FinancialInstrumentName": {
                "Name": check response?.ProductInstanceReference?.ProductReference?.FinancialInstrumentName?.Name
            },
            "FinancialInstrumentDate": {
                "FinancialInstrumentDate": {
                    "DateTimeContent": check response?.ProductInstanceReference?.ProductReference?.FinancialInstrumentDate?.FinancialInstrumentDate?.DateTimeContent,
                    "TimeZoneCode": check response?.ProductInstanceReference?.ProductReference?.FinancialInstrumentDate?.FinancialInstrumentDate?.TimeZoneCode,
                    "DaylightSavingIndicator": check response?.ProductInstanceReference?.ProductReference?.FinancialInstrumentDate?.FinancialInstrumentDate?.DaylightSavingIndicator,
                    "DateTimeType": check response?.ProductInstanceReference?.ProductReference?.FinancialInstrumentDate?.FinancialInstrumentDate?.DateTimeType
                },
                "FinancialInstrumentDateType": check response?.ProductInstanceReference?.ProductReference?.FinancialInstrumentDate?.FinancialInstrumentDateType
            },
            "AssetTitle": check response?.ProductInstanceReference?.ProductReference?.AssetTitle,
            "AssetIdentification": {
                "IdentifierValue": check response?.ProductInstanceReference?.ProductReference?.AssetIdentification?.IdentifierValue,
                "IdentifierIssuerReference": {
                    "PartyReference": check response?.ProductInstanceReference?.ProductReference?.AssetIdentification?.IdentifierIssuerReference?.PartyReference,
                    "InvolvementReference": check response?.ProductInstanceReference?.ProductReference?.AssetIdentification?.IdentifierIssuerReference?.InvolvementReference
                },
                "IdentifierStartDate": {
                    "DateTimeContent": check response?.ProductInstanceReference?.ProductReference?.AssetIdentification?.IdentifierStartDate?.DateTimeContent,
                    "TimeZoneCode": check response?.ProductInstanceReference?.ProductReference?.AssetIdentification?.IdentifierStartDate?.TimeZoneCode,
                    "DaylightSavingIndicator": check response?.ProductInstanceReference?.ProductReference?.AssetIdentification?.IdentifierStartDate?.DaylightSavingIndicator,
                    "DateTimeType": check response?.ProductInstanceReference?.ProductReference?.AssetIdentification?.IdentifierStartDate?.DateTimeType
                },
                "IdentifierEndDate": {
                    "DateTimeContent": check response?.ProductInstanceReference?.ProductReference?.AssetIdentification?.IdentifierEndDate?.DateTimeContent,
                    "TimeZoneCode": check response?.ProductInstanceReference?.ProductReference?.AssetIdentification?.IdentifierEndDate?.TimeZoneCode,
                    "DaylightSavingIndicator": check response?.ProductInstanceReference?.ProductReference?.AssetIdentification?.IdentifierEndDate?.DaylightSavingIndicator,
                    "DateTimeType": check response?.ProductInstanceReference?.ProductReference?.AssetIdentification?.IdentifierEndDate?.DateTimeType
                }
            },
            "AssetType": check response?.ProductInstanceReference?.ProductReference?.AssetType,
            "AssetDescription": check response?.ProductInstanceReference?.ProductReference?.AssetDescription,
            "AssetStatus": {
                "StatusReason": check response?.ProductInstanceReference?.ProductReference?.AssetStatus?.StatusReason,
                "StatusDateTime": {
                    "DateTimeContent": check response?.ProductInstanceReference?.ProductReference?.AssetStatus?.StatusDateTime?.DateTimeContent,
                    "TimeZoneCode": check response?.ProductInstanceReference?.ProductReference?.AssetStatus?.StatusDateTime?.TimeZoneCode,
                    "DaylightSavingIndicator": check response?.ProductInstanceReference?.ProductReference?.AssetStatus?.StatusDateTime?.DaylightSavingIndicator,
                    "DateTimeType": check response?.ProductInstanceReference?.ProductReference?.AssetStatus?.StatusDateTime?.DateTimeType
                },
                "StatusValidityPeriod": {
                    "FromDateTime": {
                        "DateTimeContent": check response?.ProductInstanceReference?.ProductReference?.AssetStatus?.StatusValidityPeriod?.FromDateTime?.DateTimeContent,
                        "TimeZoneCode": check response?.ProductInstanceReference?.ProductReference?.AssetStatus?.StatusValidityPeriod?.FromDateTime?.TimeZoneCode,
                        "DaylightSavingIndicator": check response?.ProductInstanceReference?.ProductReference?.AssetStatus?.StatusValidityPeriod?.FromDateTime?.DaylightSavingIndicator,
                        "DateTimeType": check response?.ProductInstanceReference?.ProductReference?.AssetStatus?.StatusValidityPeriod?.FromDateTime?.DateTimeType
                    },
                    "ToDateTime": {
                        "DateTimeContent": check response?.ProductInstanceReference?.ProductReference?.AssetStatus?.StatusValidityPeriod?.ToDateTime?.DateTimeContent,
                        "TimeZoneCode": check response?.ProductInstanceReference?.ProductReference?.AssetStatus?.StatusValidityPeriod?.ToDateTime?.TimeZoneCode,
                        "DaylightSavingIndicator": check response?.ProductInstanceReference?.ProductReference?.AssetStatus?.StatusValidityPeriod?.ToDateTime?.DaylightSavingIndicator,
                        "DateTimeType": check response?.ProductInstanceReference?.ProductReference?.AssetStatus?.StatusValidityPeriod?.ToDateTime?.DateTimeType
                    }
                },
                "StatusInvolvedPartyReference": {
                    "PartyReference": check response?.ProductInstanceReference?.ProductReference?.AssetStatus?.StatusInvolvedPartyReference?.PartyReference,
                    "InvolvementReference": check response?.ProductInstanceReference?.ProductReference?.AssetStatus?.StatusInvolvedPartyReference?.InvolvementReference
                }
            },
            "AssetDate": {
                "DateTimeContent": check response?.ProductInstanceReference?.ProductReference?.AssetDate?.DateTimeContent,
                "TimeZoneCode": check response?.ProductInstanceReference?.ProductReference?.AssetDate?.TimeZoneCode,
                "DaylightSavingIndicator": check response?.ProductInstanceReference?.ProductReference?.AssetDate?.DaylightSavingIndicator,
                "DateTimeType": check response?.ProductInstanceReference?.ProductReference?.AssetDate?.DateTimeType
            },
            "AssetClassification": check response?.ProductInstanceReference?.ProductReference?.AssetClassification,
            "AssetClassificationType": {
                "Assetclassificationtypevalues": check response?.ProductInstanceReference?.ProductReference?.AssetClassificationType?.Assetclassificationtypevalues
            },
            "AssetSubClassificationType": check response?.ProductInstanceReference?.ProductReference?.AssetSubClassificationType,
            "AssetSubClassification": check response?.ProductInstanceReference?.ProductReference?.AssetSubClassification
        }
    },
    "CurrentAccountNumber": {
        "AccountIdentificationType": check response?.CurrentAccountNumber?.AccountIdentificationType,
        "AccountIdentification": {
            "IdentifierValue": check response?.CurrentAccountNumber?.AccountIdentification?.IdentifierValue,
            "IdentifierIssuerReference": {
                "PartyReference": check response?.CurrentAccountNumber?.AccountIdentification?.IdentifierIssuerReference?.PartyReference,
                "InvolvementReference": check response?.CurrentAccountNumber?.AccountIdentification?.IdentifierIssuerReference?.InvolvementReference
            },
            "IdentifierStartDate": {
                "DateTimeContent": check response?.CurrentAccountNumber?.AccountIdentification?.IdentifierStartDate?.DateTimeContent,
                "TimeZoneCode": check response?.CurrentAccountNumber?.AccountIdentification?.IdentifierStartDate?.TimeZoneCode,
                "DaylightSavingIndicator": check response?.CurrentAccountNumber?.AccountIdentification?.IdentifierStartDate?.DaylightSavingIndicator,
                "DateTimeType": check response?.CurrentAccountNumber?.AccountIdentification?.IdentifierStartDate?.DateTimeType
            },
            "IdentifierEndDate": {
                "DateTimeContent": check response?.CurrentAccountNumber?.AccountIdentification?.IdentifierEndDate?.DateTimeContent,
                "TimeZoneCode": check response?.CurrentAccountNumber?.AccountIdentification?.IdentifierEndDate?.TimeZoneCode,
                "DaylightSavingIndicator": check response?.CurrentAccountNumber?.AccountIdentification?.IdentifierEndDate?.DaylightSavingIndicator,
                "DateTimeType": check response?.CurrentAccountNumber?.AccountIdentification?.IdentifierEndDate?.DateTimeType
            }
        }
    },
    "CustomerReference": {
        "ItemInventoryType": check response?.CustomerReference?.ItemInventoryType
    },
    "BankBranchLocationReference": {
        "BranchIdentification": {
            //   "IdentifierValue": "string",
            "IdentifierIssuerReference": {
                "PartyReference": check response?.BankBranchLocationReference?.IdentifierIssuerReference?.PartyReference,
                "InvolvementReference": check response?.BankBranchLocationReference?.IdentifierIssuerReference?.InvolvementReference
            },
            "IdentifierStartDate": {
                // "DateTimeContent": "string",
                // "TimeZoneCode": "string",
                // "DaylightSavingIndicator": "string",
                "DateTimeType": check response?.BankBranchLocationReference?.IdentifierStartDate?.DateTimeType
            },
            "IdentifierEndDate": {
                // "DateTimeContent": "string",
                // "TimeZoneCode": "string",
                // "DaylightSavingIndicator": "string",
                "DateTimeType": check response?.BankBranchLocationReference?.IdentifierEndDate?.DateTimeType
            }
        },
        "BranchLegalEntityIdentification": {
            //   "IdentifierValue": "string",
            "IdentifierIssuerReference": {
                "PartyReference": check response?.BankBranchLocationReference?.IdentifierIssuerReference?.PartyReference,
                "InvolvementReference": check response?.BankBranchLocationReference?.IdentifierIssuerReference?.InvolvementReference
            },
            "IdentifierStartDate": {
                // "DateTimeContent": "string",
                // "TimeZoneCode": "string",
                // "DaylightSavingIndicator": "string",
                "DateTimeType": check response?.BankBranchLocationReference?.IdentifierStartDate?.DateTimeType
            },
            "IdentifierEndDate": {
                // "DateTimeContent": "string",
                // "TimeZoneCode": "string",
                // "DaylightSavingIndicator": "string",
                "DateTimeType": check response?.BankBranchLocationReference?.IdentifierEndDate?.DateTimeType
            }
        },
        "BranchAddress": {
            "AddressType": check response?.BankBranchLocationReference?.BranchAddress?.AddressType,
            "AddressDescription": check response?.BankBranchLocationReference?.BranchAddress?.AddressDescription
        },
        "BranchName": {
            "Name": check response?.BankBranchLocationReference?.BranchName?.Name
        }
    },
    "AccountType": check response?.AccountType,
    "AccountCurrency": {
        "AccountCurrencyType": check response?.AccountCurrency?.AccountCurrencyType,
        "AccountCurrency": {
            "Currencycode": check response?.AccountCurrency?.AccountCurrency?.Currencycode
        }
    },
    "TaxReference": {
        // "IdentifierValue": "string",
        "IdentifierIssuerReference": {
            "PartyReference": check response?.TaxReference?.IdentifierIssuerReference?.PartyReference,
            "InvolvementReference": check response?.TaxReference?.IdentifierIssuerReference?.InvolvementReference
        },
        "IdentifierStartDate": {
            //   "DateTimeContent": "string",
            //   "TimeZoneCode": "string",
            //   "DaylightSavingIndicator": "string",
            "DateTimeType": check response?.TaxReference?.DateTimeType
        },
        "IdentifierEndDate": {
            //   "DateTimeContent": "string",
            //   "TimeZoneCode": "string",
            //   "DaylightSavingIndicator": "string",
            "DateTimeType": check response?.TaxReference?.DateTimeType
        }
    },
    "EntitlementOptionDefinition": {
        "ObligationOrEntitlementSubject": {
            "Subject": check response?.EntitlementOptionDefinition?.ObligationOrEntitlementSubject?.Subject
        },
        "ObligationOrEntitlementType": check response?.EntitlementOptionDefinition?.ObligationOrEntitlementType,
        "ObligationOrEntitlementModality": {
            "ServiceArrangementModalityType": check response?.EntitlementOptionDefinition?.ObligationOrEntitlementModality?.ServiceArrangementModalityType
        },
        // "ObligationOrEntitlementDefinition": "string",
        "ArrangementAction": {
            "ActionType": check response?.EntitlementOptionDefinition?.ArrangementAction?.ActionType,
            "EventType": check response?.EntitlementOptionDefinition?.ArrangementAction?.EventType,
            "EventDateTime": {
                "DateTimeContent": check response?.EntitlementOptionDefinition?.ArrangementAction?.EventDateTime?.DateTimeContent,
                "TimeZoneCode": check response?.EntitlementOptionDefinition?.ArrangementAction?.EventDateTime?.TimeZoneCode,
                "DaylightSavingIndicator": check response?.EntitlementOptionDefinition?.ArrangementAction?.EventDateTime?.DaylightSavingIndicator,
                "DateTimeType": check response?.EntitlementOptionDefinition?.ArrangementAction?.EventDateTime?.DateTimeType
            },
            "EventDescription": check response?.EntitlementOptionDefinition?.ArrangementAction?.EventDescription,
            "EventSource": check response?.EntitlementOptionDefinition?.ArrangementAction?.EventSource,
            "EventLocation": {
                "LocationDescription": check response?.EntitlementOptionDefinition?.ArrangementAction?.EventLocation?.LocationDescription,
                "LocationDateTime": {
                    "DateTimeContent": check response?.EntitlementOptionDefinition?.ArrangementAction?.EventLocation?.LocationDateTime?.DateTimeContent,
                    "TimeZoneCode": check response?.EntitlementOptionDefinition?.ArrangementAction?.EventLocation?.LocationDateTime?.TimeZoneCode,
                    "DaylightSavingIndicator": check response?.EntitlementOptionDefinition?.ArrangementAction?.EventLocation?.LocationDateTime?.DaylightSavingIndicator,
                    "DateTimeType": check response?.EntitlementOptionDefinition?.ArrangementAction?.EventLocation?.LocationDateTime?.DateTimeType
                },
                "LocationStatus": {
                    "StatusReason": check response?.EntitlementOptionDefinition?.ArrangementAction?.EventLocation?.LocationStatus?.StatusReason,
                    "StatusDateTime": {
                        "DateTimeContent": check response?.EntitlementOptionDefinition?.ArrangementAction?.EventLocation?.LocationStatus?.StatusDateTime?.DateTimeContent,
                        "TimeZoneCode": check response?.EntitlementOptionDefinition?.ArrangementAction?.EventLocation?.LocationStatus?.StatusDateTime?.TimeZoneCode,
                        "DaylightSavingIndicator": check response?.EntitlementOptionDefinition?.ArrangementAction?.EventLocation?.LocationStatus?.StatusDateTime?.DaylightSavingIndicator,
                        "DateTimeType": check response?.EntitlementOptionDefinition?.ArrangementAction?.EventLocation?.LocationStatus?.StatusDateTime?.DateTimeType
                    },
                    "StatusValidityPeriod": {
                        "FromDateTime": {
                            "DateTimeContent": check response?.EntitlementOptionDefinition?.ArrangementAction?.EventLocation?.LocationStatus?.StatusValidityPeriod?.FromDateTime?.DateTimeContent,
                            "TimeZoneCode": check response?.EntitlementOptionDefinition?.ArrangementAction?.EventLocation?.LocationStatus?.StatusValidityPeriod?.FromDateTime?.TimeZoneCode,
                            "DaylightSavingIndicator": check response?.EntitlementOptionDefinition?.ArrangementAction?.EventLocation?.LocationStatus?.StatusValidityPeriod?.FromDateTime?.DaylightSavingIndicator,
                            "DateTimeType": check response?.EntitlementOptionDefinition?.ArrangementAction?.EventLocation?.LocationStatus?.StatusValidityPeriod?.FromDateTime?.DateTimeType
                        },
                        "ToDateTime": {
                            "DateTimeContent": check response?.EntitlementOptionDefinition?.ArrangementAction?.EventLocation?.LocationStatus?.StatusValidityPeriod?.ToDateTime?.DateTimeContent,
                            "TimeZoneCode": check response?.EntitlementOptionDefinition?.ArrangementAction?.EventLocation?.LocationStatus?.StatusValidityPeriod?.ToDateTime?.TimeZoneCode,
                            "DaylightSavingIndicator": check response?.EntitlementOptionDefinition?.ArrangementAction?.EventLocation?.LocationStatus?.StatusValidityPeriod?.ToDateTime?.DaylightSavingIndicator,
                            "DateTimeType": check response?.EntitlementOptionDefinition?.ArrangementAction?.EventLocation?.LocationStatus?.StatusValidityPeriod?.ToDateTime?.DateTimeType
                        }
                    },
                    "StatusInvolvedPartyReference": {
                        "PartyReference": check response?.EntitlementOptionDefinition?.ArrangementAction?.EventLocation?.LocationStatus?.StatusInvolvedPartyReference?.PartyReference,
                        "InvolvementReference": check response?.EntitlementOptionDefinition?.ArrangementAction?.EventLocation?.LocationStatus?.StatusInvolvedPartyReference?.InvolvementReference
                    }
                },
                "LocationType": check response?.EntitlementOptionDefinition?.ArrangementAction?.EventLocation?.LocationType,
                "LocationZoningType": check response?.EntitlementOptionDefinition?.ArrangementAction?.EventLocation?.LocationZoningType,
                "LocationNeighborhoodType": check response?.EntitlementOptionDefinition?.ArrangementAction?.EventLocation?.LocationNeighborhoodType,
                "LocationConstructionType": check response?.EntitlementOptionDefinition?.ArrangementAction?.EventLocation?.LocationConstructionType,
                "LocationOccupancyType": check response?.EntitlementOptionDefinition?.ArrangementAction?.EventLocation?.LocationOccupancyType,
                "LocationValue": check response?.EntitlementOptionDefinition?.ArrangementAction?.EventLocation?.LocationValue,
                "LocationCapacity": check response?.EntitlementOptionDefinition?.ArrangementAction?.EventLocation?.LocationCapacity,
                "LocationIdentification": {
                    "IdentifierValue": check response?.EntitlementOptionDefinition?.ArrangementAction?.EventLocation?.LocationIdentification?.IdentifierValue,
                    "IdentifierIssuerReference": {
                        "PartyReference": check response?.EntitlementOptionDefinition?.ArrangementAction?.EventLocation?.LocationIdentification?.IdentifierIssuerReference?.PartyReference,
                        "InvolvementReference": check response?.EntitlementOptionDefinition?.ArrangementAction?.EventLocation?.LocationIdentification?.IdentifierIssuerReference?.InvolvementReference
                    },
                    "IdentifierStartDate": {
                        "DateTimeContent": check response?.EntitlementOptionDefinition?.ArrangementAction?.EventLocation?.LocationIdentification?.IdentifierStartDate?.DateTimeContent,
                        "TimeZoneCode": check response?.EntitlementOptionDefinition?.ArrangementAction?.EventLocation?.LocationIdentification?.IdentifierStartDate?.TimeZoneCode,
                        "DaylightSavingIndicator": check response?.EntitlementOptionDefinition?.ArrangementAction?.EventLocation?.LocationIdentification?.IdentifierStartDate?.DaylightSavingIndicator,
                        "DateTimeType": check response?.EntitlementOptionDefinition?.ArrangementAction?.EventLocation?.LocationIdentification?.IdentifierStartDate?.DateTimeType
                    },
                    "IdentifierEndDate": {
                        "DateTimeContent": check response?.EntitlementOptionDefinition?.ArrangementAction?.EventLocation?.LocationIdentification?.IdentifierEndDate?.DateTimeContent,
                        "TimeZoneCode": check response?.EntitlementOptionDefinition?.ArrangementAction?.EventLocation?.LocationIdentification?.IdentifierEndDate?.TimeZoneCode,
                        "DaylightSavingIndicator": check response?.EntitlementOptionDefinition?.ArrangementAction?.EventLocation?.LocationIdentification?.IdentifierEndDate?.DaylightSavingIndicator,
                        "DateTimeType": check response?.EntitlementOptionDefinition?.ArrangementAction?.EventLocation?.LocationIdentification?.IdentifierEndDate?.DateTimeType
                    }
                },
                "LocationAddress": check response?.EntitlementOptionDefinition?.ArrangementAction?.EventLocation?.LocationAddress,
                "LocationName": {
                    "Name": check response?.EntitlementOptionDefinition?.ArrangementAction?.EventLocation?.LocationName?.Name
                },
                "LocationTimeZone": check response?.EntitlementOptionDefinition?.ArrangementAction?.EventLocation?.LocationTimeZone
            },
            "EventAction": check response?.EntitlementOptionDefinition?.ArrangementAction?.EventAction,
            "EventStatus": {
                "StatusReason": check response?.EntitlementOptionDefinition?.ArrangementAction?.EventStatus?.StatusReason,
                "StatusDateTime": {
                    "DateTimeContent": check response?.EntitlementOptionDefinition?.ArrangementAction?.EventStatus?.StatusDateTime?.DateTimeContent,
                    "TimeZoneCode": check response?.EntitlementOptionDefinition?.ArrangementAction?.EventStatus?.StatusDateTime?.TimeZoneCode,
                    "DaylightSavingIndicator": check response?.EntitlementOptionDefinition?.ArrangementAction?.EventStatus?.StatusDateTime?.DaylightSavingIndicator,
                    "DateTimeType": check response?.EntitlementOptionDefinition?.ArrangementAction?.EventStatus?.StatusDateTime?.DateTimeType
                },
                "StatusValidityPeriod": {
                    "FromDateTime": {
                        "DateTimeContent": check response?.EntitlementOptionDefinition?.ArrangementAction?.EventStatus?.StatusValidityPeriod?.FromDateTime?.DateTimeContent,
                        "TimeZoneCode": check response?.EntitlementOptionDefinition?.ArrangementAction?.EventStatus?.StatusValidityPeriod?.FromDateTime?.TimeZoneCode,
                        "DaylightSavingIndicator": check response?.EntitlementOptionDefinition?.ArrangementAction?.EventStatus?.StatusValidityPeriod?.FromDateTime?.DaylightSavingIndicator,
                        "DateTimeType": check response?.EntitlementOptionDefinition?.ArrangementAction?.EventStatus?.StatusValidityPeriod?.FromDateTime?.DateTimeType
                    },
                    "ToDateTime": {
                        "DateTimeContent": check response?.EntitlementOptionDefinition?.ArrangementAction?.EventStatus?.StatusValidityPeriod?.ToDateTime?.DateTimeContent,
                        "TimeZoneCode": check response?.EntitlementOptionDefinition?.ArrangementAction?.EventStatus?.StatusValidityPeriod?.ToDateTime?.TimeZoneCode,
                        "DaylightSavingIndicator": check response?.EntitlementOptionDefinition?.ArrangementAction?.EventStatus?.StatusValidityPeriod?.ToDateTime?.DaylightSavingIndicator,
                        "DateTimeType": check response?.EntitlementOptionDefinition?.ArrangementAction?.EventStatus?.StatusValidityPeriod?.ToDateTime?.DateTimeType
                    }
                },
                "StatusInvolvedPartyReference": {
                    "PartyReference": check response?.EntitlementOptionDefinition?.ArrangementAction?.EventStatus?.StatusInvolvedPartyReference?.PartyReference,
                    "InvolvementReference": check response?.EntitlementOptionDefinition?.ArrangementAction?.EventStatus?.StatusInvolvedPartyReference?.InvolvementReference
                }
            },
            "EventValue": check response?.EntitlementOptionDefinition?.ArrangementAction?.EventValue,
            "EventValidityPeriod": {
                "FromDateTime": {
                    "DateTimeContent": check response?.EntitlementOptionDefinition?.ArrangementAction?.EventValidityPeriod?.FromDateTime?.DateTimeContent,
                    "TimeZoneCode": check response?.EntitlementOptionDefinition?.ArrangementAction?.EventValidityPeriod?.FromDateTime?.TimeZoneCode,
                    "DaylightSavingIndicator": check response?.EntitlementOptionDefinition?.ArrangementAction?.EventValidityPeriod?.FromDateTime?.DaylightSavingIndicator,
                    "DateTimeType": check response?.EntitlementOptionDefinition?.ArrangementAction?.EventValidityPeriod?.FromDateTime?.DateTimeType
                },
                "ToDateTime": {
                    "DateTimeContent": check response?.EntitlementOptionDefinition?.ArrangementAction?.EventValidityPeriod?.ToDateTime?.DateTimeContent,
                    "TimeZoneCode": check response?.EntitlementOptionDefinition?.ArrangementAction?.EventValidityPeriod?.ToDateTime?.TimeZoneCode,
                    "DaylightSavingIndicator": check response?.EntitlementOptionDefinition?.ArrangementAction?.EventValidityPeriod?.ToDateTime?.DaylightSavingIndicator,
                    "DateTimeType": check response?.EntitlementOptionDefinition?.ArrangementAction?.EventValidityPeriod?.ToDateTime?.DateTimeType
                }
            },
            "EventIdentification": {
                "IdentifierValue": check response?.EntitlementOptionDefinition?.ArrangementAction?.EventIdentification?.IdentifierValue,
                "IdentifierIssuerReference": {
                    "PartyReference": check response?.EntitlementOptionDefinition?.ArrangementAction?.EventIdentification?.IdentifierIssuerReference?.PartyReference,
                    "InvolvementReference": check response?.EntitlementOptionDefinition?.ArrangementAction?.EventIdentification?.IdentifierIssuerReference?.InvolvementReference
                },
                "IdentifierStartDate": {
                    "DateTimeContent": check response?.EntitlementOptionDefinition?.ArrangementAction?.EventIdentification?.IdentifierStartDate?.DateTimeContent,
                    "TimeZoneCode": check response?.EntitlementOptionDefinition?.ArrangementAction?.EventIdentification?.IdentifierStartDate?.TimeZoneCode,
                    "DaylightSavingIndicator": check response?.EntitlementOptionDefinition?.ArrangementAction?.EventIdentification?.IdentifierStartDate?.DaylightSavingIndicator,
                    "DateTimeType": check response?.EntitlementOptionDefinition?.ArrangementAction?.EventIdentification?.IdentifierStartDate?.DateTimeType
                },
                "IdentifierEndDate": {
                    "DateTimeContent": check response?.EntitlementOptionDefinition?.ArrangementAction?.EventIdentification?.IdentifierEndDate?.DateTimeContent,
                    "TimeZoneCode": check response?.EntitlementOptionDefinition?.ArrangementAction?.EventIdentification?.IdentifierEndDate?.TimeZoneCode,
                    "DaylightSavingIndicator": check response?.EntitlementOptionDefinition?.ArrangementAction?.EventIdentification?.IdentifierEndDate?.DaylightSavingIndicator,
                    "DateTimeType": check response?.EntitlementOptionDefinition?.ArrangementAction?.EventIdentification?.IdentifierEndDate?.DateTimeType
                }
            }
        },
        "ArrangementStartDate": {
            "DateTimeContent": check response?.EntitlementOptionDefinition?.ArrangementStartDate?.DateTimeContent,
            "TimeZoneCode": check response?.EntitlementOptionDefinition?.ArrangementStartDate?.TimeZoneCode,
            "DaylightSavingIndicator": check response?.EntitlementOptionDefinition?.ArrangementStartDate?.DaylightSavingIndicator,
            "DateTimeType": check response?.EntitlementOptionDefinition?.ArrangementStartDate?.DateTimeType
        },
        "ArrangementEndDate": {
            "DateTimeContent": check response?.EntitlementOptionDefinition?.ArrangementEndDate?.DateTimeContent,
            "TimeZoneCode": check response?.EntitlementOptionDefinition?.ArrangementEndDate?.TimeZoneCode,
            "DaylightSavingIndicator": check response?.EntitlementOptionDefinition?.ArrangementEndDate?.DaylightSavingIndicator,
            "DateTimeType": check response?.EntitlementOptionDefinition?.ArrangementEndDate?.DateTimeType
        },
        "ArrangementStatus": {
            "ArrangementStatus": {
                "StatusReason": check response?.EntitlementOptionDefinition?.ArrangementStatus?.ArrangementStatus?.StatusReason,
                "StatusDateTime": {
                    "DateTimeContent": check response?.EntitlementOptionDefinition?.ArrangementStatus?.ArrangementStatus?.StatusDateTime?.DateTimeContent,
                    "TimeZoneCode": check response?.EntitlementOptionDefinition?.ArrangementStatus?.ArrangementStatus?.StatusDateTime?.TimeZoneCode,
                    "DaylightSavingIndicator": check response?.EntitlementOptionDefinition?.ArrangementStatus?.ArrangementStatus?.StatusDateTime?.DaylightSavingIndicator,
                    "DateTimeType": check response?.EntitlementOptionDefinition?.ArrangementStatus?.ArrangementStatus?.StatusDateTime?.DateTimeType
                },
                "StatusValidityPeriod": {
                    "FromDateTime": {
                        "DateTimeContent": check response?.EntitlementOptionDefinition?.ArrangementStatus?.ArrangementStatus?.StatusValidityPeriod?.FromDateTime?.DateTimeContent,
                        "TimeZoneCode": check response?.EntitlementOptionDefinition?.ArrangementStatus?.ArrangementStatus?.StatusValidityPeriod?.FromDateTime?.TimeZoneCode,
                        "DaylightSavingIndicator": check response?.EntitlementOptionDefinition?.ArrangementStatus?.ArrangementStatus?.StatusValidityPeriod?.FromDateTime?.DaylightSavingIndicator,
                        "DateTimeType": check response?.EntitlementOptionDefinition?.ArrangementStatus?.ArrangementStatus?.StatusValidityPeriod?.FromDateTime?.DateTimeType
                    },
                    "ToDateTime": {
                        "DateTimeContent": check response?.EntitlementOptionDefinition?.ArrangementStatus?.ArrangementStatus?.StatusValidityPeriod?.ToDateTime?.DateTimeContent,
                        "TimeZoneCode": check response?.EntitlementOptionDefinition?.ArrangementStatus?.ArrangementStatus?.StatusValidityPeriod?.ToDateTime?.TimeZoneCode,
                        "DaylightSavingIndicator": check response?.EntitlementOptionDefinition?.ArrangementStatus?.ArrangementStatus?.StatusValidityPeriod?.ToDateTime?.DaylightSavingIndicator,
                        "DateTimeType": check response?.EntitlementOptionDefinition?.ArrangementStatus?.ArrangementStatus?.StatusValidityPeriod?.ToDateTime?.DateTimeType
                    }
                },
                "StatusInvolvedPartyReference": {
                    "PartyReference": check response?.EntitlementOptionDefinition?.ArrangementStatus?.ArrangementStatus?.StatusInvolvedPartyReference?.PartyReference,
                    "InvolvementReference": check response?.EntitlementOptionDefinition?.ArrangementStatus?.ArrangementStatus?.StatusInvolvedPartyReference?.InvolvementReference
                }
            },
            "ArrangementStatusType": check response?.EntitlementOptionDefinition?.ArrangementStatus?.ArrangementStatusType
        },
        "ArrangementSubjectMatter": {
            "Subject": check response?.EntitlementOptionDefinition?.ArrangementSubjectMatter?.Subject
        },
        "Arrangementtype": check response?.EntitlementOptionDefinition?.Arrangementtype,
        "ArrangementIdentification": {
            "IdentifierValue": check response?.EntitlementOptionDefinition?.ArrangementIdentification?.IdentifierValue,
            "IdentifierIssuerReference": {
                "PartyReference": check response?.EntitlementOptionDefinition?.ArrangementIdentification?.IdentifierIssuerReference?.PartyReference,
                "InvolvementReference": check response?.EntitlementOptionDefinition?.ArrangementIdentification?.IdentifierIssuerReference?.InvolvementReference
            },
            "IdentifierStartDate": {
                "DateTimeContent": check response?.EntitlementOptionDefinition?.ArrangementIdentification?.IdentifierStartDate?.DateTimeContent,
                "TimeZoneCode": check response?.EntitlementOptionDefinition?.ArrangementIdentification?.IdentifierStartDate?.TimeZoneCode,
                "DaylightSavingIndicator": check response?.EntitlementOptionDefinition?.ArrangementIdentification?.IdentifierStartDate?.DaylightSavingIndicator,
                "DateTimeType": check response?.EntitlementOptionDefinition?.ArrangementIdentification?.IdentifierStartDate?.DateTimeType
            },
            "IdentifierEndDate": {
                "DateTimeContent": check response?.EntitlementOptionDefinition?.ArrangementIdentification?.IdentifierEndDate?.DateTimeContent,
                "TimeZoneCode": check response?.EntitlementOptionDefinition?.ArrangementIdentification?.IdentifierEndDate?.TimeZoneCode,
                "DaylightSavingIndicator": check response?.EntitlementOptionDefinition?.ArrangementIdentification?.IdentifierEndDate?.DaylightSavingIndicator,
                "DateTimeType": check response?.EntitlementOptionDefinition?.ArrangementIdentification?.IdentifierEndDate?.DateTimeType
            }
        },
        "SavingsAccountArrangementType": check response?.EntitlementOptionDefinition?.SavingsAccountArrangementType,
        "SavingsAccountArrangementProductFeatureType": {
            "ProductFeatureTypeValues": check response?.EntitlementOptionDefinition?.SavingsAccountArrangementProductFeatureType?.ProductFeatureTypeValues
        },
        "TermDepositArrangementType": check response?.EntitlementOptionDefinition?.TermDepositArrangementType,
        "TermDepositArrangementProductFeatureType": {
            "ProductFeatureTypeValues": check response?.EntitlementOptionDefinition?.TermDepositArrangementProductFeatureType?.ProductFeatureTypeValues
        },
        "TermDepositMaturityDate": {
            "DateTimeContent": check response?.EntitlementOptionDefinition?.TermDepositMaturityDate?.DateTimeContent,
            "TimeZoneCode": check response?.EntitlementOptionDefinition?.TermDepositMaturityDate?.TimeZoneCode,
            "DaylightSavingIndicator": check response?.EntitlementOptionDefinition?.TermDepositMaturityDate?.DaylightSavingIndicator,
            "DateTimeType": check response?.EntitlementOptionDefinition?.TermDepositMaturityDate?.DateTimeType
        },
        "TermDepositOpenDate": {
            "DateTimeContent": check response?.EntitlementOptionDefinition?.TermDepositOpenDate?.DateTimeContent,
            "TimeZoneCode": check response?.EntitlementOptionDefinition?.TermDepositOpenDate?.TimeZoneCode,
            "DaylightSavingIndicator": check response?.EntitlementOptionDefinition?.TermDepositOpenDate?.DaylightSavingIndicator,
            "DateTimeType": check response?.EntitlementOptionDefinition?.TermDepositOpenDate?.DateTimeType
        },
        "TermDepositAmount": {
            "AmountValue": check response?.EntitlementOptionDefinition?.TermDepositAmount?.AmountValue,
            "AmountCurrency": {
                "Currencycode": check response?.EntitlementOptionDefinition?.TermDepositAmount?.AmountCurrency?.Currencycode
            },
            "DecimalPointPosition": check response?.EntitlementOptionDefinition?.TermDepositAmount?.DecimalPointPosition,
            "AmountType": check response?.EntitlementOptionDefinition?.TermDepositAmount?.AmountType
        },
        "TermDepositDuration": {
            "Duration": check response?.EntitlementOptionDefinition?.TermDepositDuration?.Duration
        },
        "DepositTerm": check response?.EntitlementOptionDefinition?.DepositTerm
    },
    "EntitlementOptionSetting": {
        "ObligationOrEntitlementSubject": {
            "Subject": check response?.EntitlementOptionSetting?.ObligationOrEntitlementSubject?.Subject
        },
        "ObligationOrEntitlementType": check response?.EntitlementOptionSetting?.ObligationOrEntitlementType,
        "ObligationOrEntitlementModality": {
            "ServiceArrangementModalityType": check response?.EntitlementOptionSetting?.ObligationOrEntitlementModality?.ServiceArrangementModalityType
        },
        // "ObligationOrEntitlementDefinition": "string",
        "ArrangementAction": {
            "ActionType": check response?.EntitlementOptionSetting?.ArrangementAction?.ActionType,
            "EventType": check response?.EntitlementOptionSetting?.ArrangementAction?.EventType,
            "EventDateTime": {
                "DateTimeContent": check response?.EntitlementOptionSetting?.ArrangementAction?.EventDateTime?.DateTimeContent,
                "TimeZoneCode": check response?.EntitlementOptionSetting?.ArrangementAction?.EventDateTime?.TimeZoneCode,
                "DaylightSavingIndicator": check response?.EntitlementOptionSetting?.ArrangementAction?.EventDateTime?.DaylightSavingIndicator,
                "DateTimeType": check response?.EntitlementOptionSetting?.ArrangementAction?.EventDateTime?.DateTimeType
            },
            "EventDescription": check response?.EntitlementOptionSetting?.ArrangementAction?.EventDescription,
            "EventSource": check response?.EntitlementOptionSetting?.ArrangementAction?.EventSource,
            "EventLocation": {
                "LocationDescription": check response?.EntitlementOptionSetting?.ArrangementAction?.EventLocation?.LocationDescription,
                "LocationDateTime": {
                    "DateTimeContent": check response?.EntitlementOptionSetting?.ArrangementAction?.EventLocation?.LocationDateTime?.DateTimeContent,
                    "TimeZoneCode": check response?.EntitlementOptionSetting?.ArrangementAction?.EventLocation?.LocationDateTime?.TimeZoneCode,
                    "DaylightSavingIndicator": check response?.EntitlementOptionSetting?.ArrangementAction?.EventLocation?.LocationDateTime?.DaylightSavingIndicator,
                    "DateTimeType": check response?.EntitlementOptionSetting?.ArrangementAction?.EventLocation?.LocationDateTime?.DateTimeType
                },
                "LocationStatus": {
                    "StatusReason": check response?.EntitlementOptionSetting?.ArrangementAction?.EventLocation?.LocationStatus?.StatusReason,
                    "StatusDateTime": {
                        "DateTimeContent": check response?.EntitlementOptionSetting?.ArrangementAction?.EventLocation?.LocationStatus?.StatusDateTime?.DateTimeContent,
                        "TimeZoneCode": check response?.EntitlementOptionSetting?.ArrangementAction?.EventLocation?.LocationStatus?.StatusDateTime?.TimeZoneCode,
                        "DaylightSavingIndicator": check response?.EntitlementOptionSetting?.ArrangementAction?.EventLocation?.LocationStatus?.StatusDateTime?.DaylightSavingIndicator,
                        "DateTimeType": check response?.EntitlementOptionSetting?.ArrangementAction?.EventLocation?.LocationStatus?.StatusDateTime?.DateTimeType
                    },
                    "StatusValidityPeriod": {
                        "FromDateTime": {
                            "DateTimeContent": check response?.EntitlementOptionSetting?.ArrangementAction?.EventLocation?.LocationStatus?.StatusValidityPeriod?.FromDateTime?.DateTimeContent,
                            "TimeZoneCode": check response?.EntitlementOptionSetting?.ArrangementAction?.EventLocation?.LocationStatus?.StatusValidityPeriod?.FromDateTime?.TimeZoneCode,
                            "DaylightSavingIndicator": check response?.EntitlementOptionSetting?.ArrangementAction?.EventLocation?.LocationStatus?.StatusValidityPeriod?.FromDateTime?.DaylightSavingIndicator,
                            "DateTimeType": check response?.EntitlementOptionSetting?.ArrangementAction?.EventLocation?.LocationStatus?.StatusValidityPeriod?.FromDateTime?.DateTimeType
                        },
                        "ToDateTime": {
                            "DateTimeContent": check response?.EntitlementOptionSetting?.ArrangementAction?.EventLocation?.LocationStatus?.StatusValidityPeriod?.ToDateTime?.DateTimeContent,
                            "TimeZoneCode": check response?.EntitlementOptionSetting?.ArrangementAction?.EventLocation?.LocationStatus?.StatusValidityPeriod?.ToDateTime?.TimeZoneCode,
                            "DaylightSavingIndicator": check response?.EntitlementOptionSetting?.ArrangementAction?.EventLocation?.LocationStatus?.StatusValidityPeriod?.ToDateTime?.DaylightSavingIndicator,
                            "DateTimeType": check response?.EntitlementOptionSetting?.ArrangementAction?.EventLocation?.LocationStatus?.StatusValidityPeriod?.ToDateTime?.DateTimeType
                        }
                    },
                    "StatusInvolvedPartyReference": {
                        "PartyReference": check response?.EntitlementOptionSetting?.ArrangementAction?.EventLocation?.LocationStatus?.StatusInvolvedPartyReference?.PartyReference,
                        "InvolvementReference": check response?.EntitlementOptionSetting?.ArrangementAction?.EventLocation?.LocationStatus?.StatusInvolvedPartyReference?.InvolvementReference
                    }
                },
                "LocationType": check response?.EntitlementOptionSetting?.ArrangementAction?.EventLocation?.LocationType,
                "LocationZoningType": check response?.EntitlementOptionSetting?.ArrangementAction?.EventLocation?.LocationZoningType,
                "LocationNeighborhoodType": check response?.EntitlementOptionSetting?.ArrangementAction?.EventLocation?.LocationNeighborhoodType,
                "LocationConstructionType": check response?.EntitlementOptionSetting?.ArrangementAction?.EventLocation?.LocationConstructionType,
                "LocationOccupancyType": check response?.EntitlementOptionSetting?.ArrangementAction?.EventLocation?.LocationOccupancyType,
                "LocationValue": check response?.EntitlementOptionSetting?.ArrangementAction?.EventLocation?.LocationValue,
                "LocationCapacity": check response?.EntitlementOptionSetting?.ArrangementAction?.EventLocation?.LocationCapacity,
                "LocationIdentification": {
                    "IdentifierValue": check response?.EntitlementOptionSetting?.ArrangementAction?.EventLocation?.LocationIdentification?.IdentifierValue,
                    "IdentifierIssuerReference": {
                        "PartyReference": check response?.EntitlementOptionSetting?.ArrangementAction?.EventLocation?.LocationIdentification?.IdentifierIssuerReference?.PartyReference,
                        "InvolvementReference": check response?.EntitlementOptionSetting?.ArrangementAction?.EventLocation?.LocationIdentification?.IdentifierIssuerReference?.InvolvementReference
                    },
                    "IdentifierStartDate": {
                        "DateTimeContent": check response?.EntitlementOptionSetting?.ArrangementAction?.EventLocation?.LocationIdentification?.IdentifierStartDate?.DateTimeContent,
                        "TimeZoneCode": check response?.EntitlementOptionSetting?.ArrangementAction?.EventLocation?.LocationIdentification?.IdentifierStartDate?.TimeZoneCode,
                        "DaylightSavingIndicator": check response?.EntitlementOptionSetting?.ArrangementAction?.EventLocation?.LocationIdentification?.IdentifierStartDate?.DaylightSavingIndicator,
                        "DateTimeType": check response?.EntitlementOptionSetting?.ArrangementAction?.EventLocation?.LocationIdentification?.IdentifierStartDate?.DateTimeType
                    },
                    "IdentifierEndDate": {
                        "DateTimeContent": check response?.EntitlementOptionSetting?.ArrangementAction?.EventLocation?.LocationIdentification?.IdentifierEndDate?.DateTimeContent,
                        "TimeZoneCode": check response?.EntitlementOptionSetting?.ArrangementAction?.EventLocation?.LocationIdentification?.IdentifierEndDate?.TimeZoneCode,
                        "DaylightSavingIndicator": check response?.EntitlementOptionSetting?.ArrangementAction?.EventLocation?.LocationIdentification?.IdentifierEndDate?.DaylightSavingIndicator,
                        "DateTimeType": check response?.EntitlementOptionSetting?.ArrangementAction?.EventLocation?.LocationIdentification?.IdentifierEndDate?.DateTimeType
                    }
                },
                "LocationAddress": check response?.EntitlementOptionSetting?.ArrangementAction?.EventLocation?.LocationAddress,
                "LocationName": {
                    "Name": check response?.EntitlementOptionSetting?.ArrangementAction?.EventLocation?.LocationName?.Name
                },
                "LocationTimeZone": check response?.EntitlementOptionSetting?.ArrangementAction?.EventLocation?.LocationTimeZone
            },
            "EventAction": check response?.EntitlementOptionSetting?.ArrangementAction?.EventAction,
            "EventStatus": {
                "StatusReason": check response?.EntitlementOptionSetting?.ArrangementAction?.EventStatus?.StatusReason,
                "StatusDateTime": {
                    "DateTimeContent": check response?.EntitlementOptionSetting?.ArrangementAction?.EventStatus?.StatusDateTime?.DateTimeContent,
                    "TimeZoneCode": check response?.EntitlementOptionSetting?.ArrangementAction?.EventStatus?.StatusDateTime?.TimeZoneCode,
                    "DaylightSavingIndicator": check response?.EntitlementOptionSetting?.ArrangementAction?.EventStatus?.StatusDateTime?.DaylightSavingIndicator,
                    "DateTimeType": check response?.EntitlementOptionSetting?.ArrangementAction?.EventStatus?.StatusDateTime?.DateTimeType
                },
                "StatusValidityPeriod": {
                    "FromDateTime": {
                        "DateTimeContent": check response?.EntitlementOptionSetting?.ArrangementAction?.EventStatus?.StatusValidityPeriod?.FromDateTime?.DateTimeContent,
                        "TimeZoneCode": check response?.EntitlementOptionSetting?.ArrangementAction?.EventStatus?.StatusValidityPeriod?.FromDateTime?.TimeZoneCode,
                        "DaylightSavingIndicator": check response?.EntitlementOptionSetting?.ArrangementAction?.EventStatus?.StatusValidityPeriod?.FromDateTime?.DaylightSavingIndicator,
                        "DateTimeType": check response?.EntitlementOptionSetting?.ArrangementAction?.EventStatus?.StatusValidityPeriod?.FromDateTime?.DateTimeType
                    },
                    "ToDateTime": {
                        "DateTimeContent": check response?.EntitlementOptionSetting?.ArrangementAction?.EventStatus?.StatusValidityPeriod?.ToDateTime?.DateTimeContent,
                        "TimeZoneCode": check response?.EntitlementOptionSetting?.ArrangementAction?.EventStatus?.StatusValidityPeriod?.ToDateTime?.TimeZoneCode,
                        "DaylightSavingIndicator": check response?.EntitlementOptionSetting?.ArrangementAction?.EventStatus?.StatusValidityPeriod?.ToDateTime?.DaylightSavingIndicator,
                        "DateTimeType": check response?.EntitlementOptionSetting?.ArrangementAction?.EventStatus?.StatusValidityPeriod?.ToDateTime?.DateTimeType
                    }
                },
                "StatusInvolvedPartyReference": {
                    "PartyReference": check response?.EntitlementOptionSetting?.ArrangementAction?.EventStatus?.StatusInvolvedPartyReference?.PartyReference,
                    "InvolvementReference": check response?.EntitlementOptionSetting?.ArrangementAction?.EventStatus?.StatusInvolvedPartyReference?.InvolvementReference
                }
            },
            "EventValue": check response?.EntitlementOptionSetting?.ArrangementAction?.EventValue,
            "EventValidityPeriod": {
                "FromDateTime": {
                    "DateTimeContent": check response?.EntitlementOptionSetting?.ArrangementAction?.EventValidityPeriod?.FromDateTime?.DateTimeContent,
                    "TimeZoneCode": check response?.EntitlementOptionSetting?.ArrangementAction?.EventValidityPeriod?.FromDateTime?.TimeZoneCode,
                    "DaylightSavingIndicator": check response?.EntitlementOptionSetting?.ArrangementAction?.EventValidityPeriod?.FromDateTime?.DaylightSavingIndicator,
                    "DateTimeType": check response?.EntitlementOptionSetting?.ArrangementAction?.EventValidityPeriod?.FromDateTime?.DateTimeType
                },
                "ToDateTime": {
                    "DateTimeContent": check response?.EntitlementOptionSetting?.ArrangementAction?.EventValidityPeriod?.ToDateTime?.DateTimeContent,
                    "TimeZoneCode": check response?.EntitlementOptionSetting?.ArrangementAction?.EventValidityPeriod?.ToDateTime?.TimeZoneCode,
                    "DaylightSavingIndicator": check response?.EntitlementOptionSetting?.ArrangementAction?.EventValidityPeriod?.ToDateTime?.DaylightSavingIndicator,
                    "DateTimeType": check response?.EntitlementOptionSetting?.ArrangementAction?.EventValidityPeriod?.ToDateTime?.DateTimeType
                }
            },
            "EventIdentification": {
                "IdentifierValue": check response?.EntitlementOptionSetting?.ArrangementAction?.EventIdentification?.IdentifierValue,
                "IdentifierIssuerReference": {
                    "PartyReference": check response?.EntitlementOptionSetting?.ArrangementAction?.EventIdentification?.IdentifierIssuerReference?.PartyReference,
                    "InvolvementReference": check response?.EntitlementOptionSetting?.ArrangementAction?.EventIdentification?.IdentifierIssuerReference?.InvolvementReference
                },
                "IdentifierStartDate": {
                    "DateTimeContent": check response?.EntitlementOptionSetting?.ArrangementAction?.EventIdentification?.IdentifierStartDate?.DateTimeContent,
                    "TimeZoneCode": check response?.EntitlementOptionSetting?.ArrangementAction?.EventIdentification?.IdentifierStartDate?.TimeZoneCode,
                    "DaylightSavingIndicator": check response?.EntitlementOptionSetting?.ArrangementAction?.EventIdentification?.IdentifierStartDate?.DaylightSavingIndicator,
                    "DateTimeType": check response?.EntitlementOptionSetting?.ArrangementAction?.EventIdentification?.IdentifierStartDate?.DateTimeType
                },
                "IdentifierEndDate": {
                    "DateTimeContent": check response?.EntitlementOptionSetting?.ArrangementAction?.EventIdentification?.IdentifierEndDate?.DateTimeContent,
                    "TimeZoneCode": check response?.EntitlementOptionSetting?.ArrangementAction?.EventIdentification?.IdentifierEndDate?.TimeZoneCode,
                    "DaylightSavingIndicator": check response?.EntitlementOptionSetting?.ArrangementAction?.EventIdentification?.IdentifierEndDate?.DaylightSavingIndicator,
                    "DateTimeType": check response?.EntitlementOptionSetting?.ArrangementAction?.EventIdentification?.IdentifierEndDate?.DateTimeType
                }
            }
        },
        "ArrangementStartDate": {
            "DateTimeContent": check response?.EntitlementOptionSetting?.ArrangementStartDate?.DateTimeContent,
            "TimeZoneCode": check response?.EntitlementOptionSetting?.ArrangementStartDate?.TimeZoneCode,
            "DaylightSavingIndicator": check response?.EntitlementOptionSetting?.ArrangementStartDate?.DaylightSavingIndicator,
            "DateTimeType": check response?.EntitlementOptionSetting?.ArrangementStartDate?.DateTimeType
        },
        "ArrangementEndDate": {
            "DateTimeContent": check response?.EntitlementOptionSetting?.ArrangementEndDate?.DateTimeContent,
            "TimeZoneCode": check response?.EntitlementOptionSetting?.ArrangementEndDate?.TimeZoneCode,
            "DaylightSavingIndicator": check response?.EntitlementOptionSetting?.ArrangementEndDate?.DaylightSavingIndicator,
            "DateTimeType": check response?.EntitlementOptionSetting?.ArrangementEndDate?.DateTimeType
        },
        "ArrangementStatus": {
            "ArrangementStatus": {
                "StatusReason": check response?.EntitlementOptionSetting?.ArrangementStatus?.ArrangementStatus?.StatusReason,
                "StatusDateTime": {
                    "DateTimeContent": check response?.EntitlementOptionSetting?.ArrangementStatus?.ArrangementStatus?.StatusDateTime?.DateTimeContent,
                    "TimeZoneCode": check response?.EntitlementOptionSetting?.ArrangementStatus?.ArrangementStatus?.StatusDateTime?.TimeZoneCode,
                    "DaylightSavingIndicator": check response?.EntitlementOptionSetting?.ArrangementStatus?.ArrangementStatus?.StatusDateTime?.DaylightSavingIndicator,
                    "DateTimeType": check response?.EntitlementOptionSetting?.ArrangementStatus?.ArrangementStatus?.StatusDateTime?.DateTimeType
                },
                "StatusValidityPeriod": {
                    "FromDateTime": {
                        "DateTimeContent": check response?.EntitlementOptionSetting?.ArrangementStatus?.ArrangementStatus?.StatusValidityPeriod?.FromDateTime?.DateTimeContent,
                        "TimeZoneCode": check response?.EntitlementOptionSetting?.ArrangementStatus?.ArrangementStatus?.StatusValidityPeriod?.FromDateTime?.TimeZoneCode,
                        "DaylightSavingIndicator": check response?.EntitlementOptionSetting?.ArrangementStatus?.ArrangementStatus?.StatusValidityPeriod?.FromDateTime?.DaylightSavingIndicator,
                        "DateTimeType": check response?.EntitlementOptionSetting?.ArrangementStatus?.ArrangementStatus?.StatusValidityPeriod?.FromDateTime?.DateTimeType
                    },
                    "ToDateTime": {
                        "DateTimeContent": check response?.EntitlementOptionSetting?.ArrangementStatus?.ArrangementStatus?.StatusValidityPeriod?.ToDateTime?.DateTimeContent,
                        "TimeZoneCode": check response?.EntitlementOptionSetting?.ArrangementStatus?.ArrangementStatus?.StatusValidityPeriod?.ToDateTime?.TimeZoneCode,
                        "DaylightSavingIndicator": check response?.EntitlementOptionSetting?.ArrangementStatus?.ArrangementStatus?.StatusValidityPeriod?.ToDateTime?.DaylightSavingIndicator,
                        "DateTimeType": check response?.EntitlementOptionSetting?.ArrangementStatus?.ArrangementStatus?.StatusValidityPeriod?.ToDateTime?.DateTimeType
                    }
                },
                "StatusInvolvedPartyReference": {
                    "PartyReference": check response?.EntitlementOptionSetting?.ArrangementStatus?.ArrangementStatus?.StatusInvolvedPartyReference?.PartyReference,
                    "InvolvementReference": check response?.EntitlementOptionSetting?.ArrangementStatus?.ArrangementStatus?.StatusInvolvedPartyReference?.InvolvementReference
                }
            },
            "ArrangementStatusType": check response?.EntitlementOptionSetting?.ArrangementStatus?.ArrangementStatusType
        },
        "ArrangementSubjectMatter": {
            "Subject": check response?.EntitlementOptionSetting?.ArrangementSubjectMatter?.Subject
        },
        "Arrangementtype": check response?.EntitlementOptionSetting?.Arrangementtype,
        "ArrangementIdentification": {
            "IdentifierValue": check response?.EntitlementOptionSetting?.ArrangementIdentification?.IdentifierValue,
            "IdentifierIssuerReference": {
                "PartyReference": check response?.EntitlementOptionSetting?.ArrangementIdentification?.IdentifierIssuerReference?.PartyReference,
                "InvolvementReference": check response?.EntitlementOptionSetting?.ArrangementIdentification?.IdentifierIssuerReference?.InvolvementReference
            },
            "IdentifierStartDate": {
                "DateTimeContent": check response?.EntitlementOptionSetting?.ArrangementIdentification?.IdentifierStartDate?.DateTimeContent,
                "TimeZoneCode": check response?.EntitlementOptionSetting?.ArrangementIdentification?.IdentifierStartDate?.TimeZoneCode,
                "DaylightSavingIndicator": check response?.EntitlementOptionSetting?.ArrangementIdentification?.IdentifierStartDate?.DaylightSavingIndicator,
                "DateTimeType": check response?.EntitlementOptionSetting?.ArrangementIdentification?.IdentifierStartDate?.DateTimeType
            },
            "IdentifierEndDate": {
                "DateTimeContent": check response?.EntitlementOptionSetting?.ArrangementIdentification?.IdentifierEndDate?.DateTimeContent,
                "TimeZoneCode": check response?.EntitlementOptionSetting?.ArrangementIdentification?.IdentifierEndDate?.TimeZoneCode,
                "DaylightSavingIndicator": check response?.EntitlementOptionSetting?.ArrangementIdentification?.IdentifierEndDate?.DaylightSavingIndicator,
                "DateTimeType": check response?.EntitlementOptionSetting?.ArrangementIdentification?.IdentifierEndDate?.DateTimeType
            }
        },
        "SavingsAccountArrangementType": check response?.EntitlementOptionSetting?.SavingsAccountArrangementType,
        "SavingsAccountArrangementProductFeatureType": {
            "ProductFeatureTypeValues": check response?.EntitlementOptionSetting?.SavingsAccountArrangementProductFeatureType?.ProductFeatureTypeValues
        },
        "TermDepositArrangementType": check response?.EntitlementOptionSetting?.TermDepositArrangementType,
        "TermDepositArrangementProductFeatureType": {
            "ProductFeatureTypeValues": check response?.EntitlementOptionSetting?.TermDepositArrangementProductFeatureType?.ProductFeatureTypeValues
        },
        "TermDepositMaturityDate": {
            "DateTimeContent": check response?.EntitlementOptionSetting?.TermDepositMaturityDate?.DateTimeContent,
            "TimeZoneCode": check response?.EntitlementOptionSetting?.TermDepositMaturityDate?.TimeZoneCode,
            "DaylightSavingIndicator": check response?.EntitlementOptionSetting?.TermDepositMaturityDate?.DaylightSavingIndicator,
            "DateTimeType": check response?.EntitlementOptionSetting?.TermDepositMaturityDate?.DateTimeType
        },
        "TermDepositOpenDate": {
            "DateTimeContent": check response?.EntitlementOptionSetting?.TermDepositOpenDate?.DateTimeContent,
            "TimeZoneCode": check response?.EntitlementOptionSetting?.TermDepositOpenDate?.TimeZoneCode,
            "DaylightSavingIndicator": check response?.EntitlementOptionSetting?.TermDepositOpenDate?.DaylightSavingIndicator,
            "DateTimeType": check response?.EntitlementOptionSetting?.TermDepositOpenDate?.DateTimeType
        },
        "TermDepositAmount": {
            "AmountValue": check response?.EntitlementOptionSetting?.TermDepositAmount?.AmountValue,
            "AmountCurrency": {
                "Currencycode": check response?.EntitlementOptionSetting?.TermDepositAmount?.AmountCurrency?.Currencycode
            },
            "DecimalPointPosition": check response?.EntitlementOptionSetting?.TermDepositAmount?.DecimalPointPosition,
            "AmountType": check response?.EntitlementOptionSetting?.TermDepositAmount?.AmountType
        },
        "TermDepositDuration": {
            "Duration": check response?.EntitlementOptionSetting?.TermDepositDuration?.Duration
        },
        "DepositTerm": check response?.EntitlementOptionSetting?.DepositTerm
    },
    "RestrictionOptionDefinition": {
        "AccountRestrictionIdentifier": {
            //   "IdentifierValue": "string",
            "IdentifierIssuerReference": {
                "PartyReference": check response?.RestrictionOptionDefinition?.IdentifierIssuerReference?.PartyReference,
                "InvolvementReference": check response?.RestrictionOptionDefinition?.IdentifierIssuerReference?.InvolvementReference
            },
            "IdentifierStartDate": {
                // "DateTimeContent": "string",
                // "TimeZoneCode": "string",
                // "DaylightSavingIndicator": "string",
                "DateTimeType": check response?.RestrictionOptionDefinition?.IdentifierStartDate?.DateTimeType
            },
            "IdentifierEndDate": {
                // "DateTimeContent": "string",
                // "TimeZoneCode": "string",
                // "DaylightSavingIndicator": "string",
                "DateTimeType": check response?.RestrictionOptionDefinition?.IdentifierEndDate?.DateTimeType
            }
        },
        // "AccountRestrictionType": "string",
        // "AccountRestrictionDescription": "string",
        "AccountRestrictionValidityPeriod": {
            "FromDateTime": {
                // "DateTimeContent": "string",
                // "TimeZoneCode": "string",
                // "DaylightSavingIndicator": "string",
                "DateTimeType": check response?.RestrictionOptionDefinition?.AccountRestrictionValidityPeriod?.FromDateTime?.DateTimeType
            },
            "ToDateTime": {
                // "DateTimeContent": "string",
                // "TimeZoneCode": "string",
                // "DaylightSavingIndicator": "string",
                "DateTimeType": check response?.RestrictionOptionDefinition?.AccountRestrictionValidityPeriod?.ToDateTime?.DateTimeType
            }
        },
        "AccountRestrictionStatus": {
            "AccountRestrictionStatus": {
                // "StatusReason": "string",
                "StatusDateTime": {
                    //   "DateTimeContent": "string",
                    //   "TimeZoneCode": "string",
                    //   "DaylightSavingIndicator": "string",
                    "DateTimeType": check response?.RestrictionOptionDefinition?.AccountRestrictionStatus?.AccountRestrictionStatus?.DateTimeType
                },
                "StatusValidityPeriod": {
                    "FromDateTime": {
                        // "DateTimeContent": "string",
                        // "TimeZoneCode": "string",
                        // "DaylightSavingIndicator": "string",
                        "DateTimeType": check response?.RestrictionOptionDefinition?.AccountRestrictionStatus?.AccountRestrictionStatus?.StatusValidityPeriod?.FromDateTime?.DateTimeType
                    },
                    "ToDateTime": {
                        // "DateTimeContent": "string",
                        // "TimeZoneCode": "string",
                        // "DaylightSavingIndicator": "string",
                        "DateTimeType": check response?.RestrictionOptionDefinition?.AccountRestrictionStatus?.AccountRestrictionStatus?.StatusValidityPeriod?.ToDateTime?.DateTimeType
                    }
                },
                "StatusInvolvedPartyReference": {
                    "PartyReference": check response?.RestrictionOptionDefinition?.AccountRestrictionStatus?.AccountRestrictionStatus?.StatusInvolvedPartyReference?.PartyReference,
                    "InvolvementReference": check response?.RestrictionOptionDefinition?.AccountRestrictionStatus?.AccountRestrictionStatus?.StatusInvolvedPartyReference?.InvolvementReference
                }
            },
            "AccountRestrictionStatusType": check response?.RestrictionOptionDefinition?.AccountRestrictionStatus?.AccountRestrictionStatusType
        },
        "AccountRestrictionRegulator": {
            //   "PartyReference": "string",
            "InvolvementReference": check response?.RestrictionOptionDefinition?.InvolvementReference
        },
        "ArrangementAction": {
            "ActionType": check response?.RestrictionOptionDefinition?.ArrangementAction?.ActionType,
            "EventType": check response?.RestrictionOptionDefinition?.ArrangementAction?.EventType,
            "EventDateTime": {
                "DateTimeContent": check response?.RestrictionOptionDefinition?.ArrangementAction?.EventDateTime?.DateTimeContent,
                "TimeZoneCode": check response?.RestrictionOptionDefinition?.ArrangementAction?.EventDateTime?.TimeZoneCode,
                "DaylightSavingIndicator": check response?.RestrictionOptionDefinition?.ArrangementAction?.EventDateTime?.DaylightSavingIndicator,
                "DateTimeType": check response?.RestrictionOptionDefinition?.ArrangementAction?.EventDateTime?.DateTimeType
            },
            "EventDescription": check response?.RestrictionOptionDefinition?.ArrangementAction?.EventDescription,
            "EventSource": check response?.RestrictionOptionDefinition?.ArrangementAction?.EventSource,
            "EventLocation": {
                "LocationDescription": check response?.RestrictionOptionDefinition?.ArrangementAction?.EventLocation?.LocationDescription,
                "LocationDateTime": {
                    "DateTimeContent": check response?.RestrictionOptionDefinition?.ArrangementAction?.EventLocation?.LocationDateTime?.DateTimeContent,
                    "TimeZoneCode": check response?.RestrictionOptionDefinition?.ArrangementAction?.EventLocation?.LocationDateTime?.TimeZoneCode,
                    "DaylightSavingIndicator": check response?.RestrictionOptionDefinition?.ArrangementAction?.EventLocation?.LocationDateTime?.DaylightSavingIndicator,
                    "DateTimeType": check response?.RestrictionOptionDefinition?.ArrangementAction?.EventLocation?.LocationDateTime?.DateTimeType
                },
                "LocationStatus": {
                    "StatusReason": check response?.RestrictionOptionDefinition?.ArrangementAction?.EventLocation?.LocationStatus?.StatusReason,
                    "StatusDateTime": {
                        "DateTimeContent": check response?.RestrictionOptionDefinition?.ArrangementAction?.EventLocation?.LocationStatus?.StatusDateTime?.DateTimeContent,
                        "TimeZoneCode": check response?.RestrictionOptionDefinition?.ArrangementAction?.EventLocation?.LocationStatus?.StatusDateTime?.TimeZoneCode,
                        "DaylightSavingIndicator": check response?.RestrictionOptionDefinition?.ArrangementAction?.EventLocation?.LocationStatus?.StatusDateTime?.DaylightSavingIndicator,
                        "DateTimeType": check response?.RestrictionOptionDefinition?.ArrangementAction?.EventLocation?.LocationStatus?.StatusDateTime?.DateTimeType
                    },
                    "StatusValidityPeriod": {
                        "FromDateTime": {
                            "DateTimeContent": check response?.RestrictionOptionDefinition?.ArrangementAction?.EventLocation?.LocationStatus?.StatusValidityPeriod?.FromDateTime?.DateTimeContent,
                            "TimeZoneCode": check response?.RestrictionOptionDefinition?.ArrangementAction?.EventLocation?.LocationStatus?.StatusValidityPeriod?.FromDateTime?.TimeZoneCode,
                            "DaylightSavingIndicator": check response?.RestrictionOptionDefinition?.ArrangementAction?.EventLocation?.LocationStatus?.StatusValidityPeriod?.FromDateTime?.DaylightSavingIndicator,
                            "DateTimeType": check response?.RestrictionOptionDefinition?.ArrangementAction?.EventLocation?.LocationStatus?.StatusValidityPeriod?.FromDateTime?.DateTimeType
                        },
                        "ToDateTime": {
                            "DateTimeContent": check response?.RestrictionOptionDefinition?.ArrangementAction?.EventLocation?.LocationStatus?.StatusValidityPeriod?.ToDateTime?.DateTimeContent,
                            "TimeZoneCode": check response?.RestrictionOptionDefinition?.ArrangementAction?.EventLocation?.LocationStatus?.StatusValidityPeriod?.ToDateTime?.TimeZoneCode,
                            "DaylightSavingIndicator": check response?.RestrictionOptionDefinition?.ArrangementAction?.EventLocation?.LocationStatus?.StatusValidityPeriod?.ToDateTime?.DaylightSavingIndicator,
                            "DateTimeType": check response?.RestrictionOptionDefinition?.ArrangementAction?.EventLocation?.LocationStatus?.StatusValidityPeriod?.ToDateTime?.DateTimeType
                        }
                    },
                    "StatusInvolvedPartyReference": {
                        "PartyReference": check response?.RestrictionOptionDefinition?.ArrangementAction?.EventLocation?.LocationStatus?.StatusInvolvedPartyReference?.PartyReference,
                        "InvolvementReference": check response?.RestrictionOptionDefinition?.ArrangementAction?.EventLocation?.LocationStatus?.StatusInvolvedPartyReference?.InvolvementReference
                    }
                },
                "LocationType": check response?.RestrictionOptionDefinition?.ArrangementAction?.EventLocation?.LocationType,
                "LocationZoningType": check response?.RestrictionOptionDefinition?.ArrangementAction?.EventLocation?.LocationZoningType,
                "LocationNeighborhoodType": check response?.RestrictionOptionDefinition?.ArrangementAction?.EventLocation?.LocationNeighborhoodType,
                "LocationConstructionType": check response?.RestrictionOptionDefinition?.ArrangementAction?.EventLocation?.LocationConstructionType,
                "LocationOccupancyType": check response?.RestrictionOptionDefinition?.ArrangementAction?.EventLocation?.LocationOccupancyType,
                "LocationValue": check response?.RestrictionOptionDefinition?.ArrangementAction?.EventLocation?.LocationValue,
                "LocationCapacity": check response?.RestrictionOptionDefinition?.ArrangementAction?.EventLocation?.LocationCapacity,
                "LocationIdentification": {
                    "IdentifierValue": check response?.RestrictionOptionDefinition?.ArrangementAction?.EventLocation?.LocationIdentification?.IdentifierValue,
                    "IdentifierIssuerReference": {
                        "PartyReference": check response?.RestrictionOptionDefinition?.ArrangementAction?.EventLocation?.LocationIdentification?.IdentifierIssuerReference?.PartyReference,
                        "InvolvementReference": check response?.RestrictionOptionDefinition?.ArrangementAction?.EventLocation?.LocationIdentification?.IdentifierIssuerReference?.InvolvementReference
                    },
                    "IdentifierStartDate": {
                        "DateTimeContent": check response?.RestrictionOptionDefinition?.ArrangementAction?.EventLocation?.LocationIdentification?.IdentifierStartDate?.DateTimeContent,
                        "TimeZoneCode": check response?.RestrictionOptionDefinition?.ArrangementAction?.EventLocation?.LocationIdentification?.IdentifierStartDate?.TimeZoneCode,
                        "DaylightSavingIndicator": check response?.RestrictionOptionDefinition?.ArrangementAction?.EventLocation?.LocationIdentification?.IdentifierStartDate?.DaylightSavingIndicator,
                        "DateTimeType": check response?.RestrictionOptionDefinition?.ArrangementAction?.EventLocation?.LocationIdentification?.IdentifierStartDate?.DateTimeType
                    },
                    "IdentifierEndDate": {
                        "DateTimeContent": check response?.RestrictionOptionDefinition?.ArrangementAction?.EventLocation?.LocationIdentification?.IdentifierEndDate?.DateTimeContent,
                        "TimeZoneCode": check response?.RestrictionOptionDefinition?.ArrangementAction?.EventLocation?.LocationIdentification?.IdentifierEndDate?.TimeZoneCode,
                        "DaylightSavingIndicator": check response?.RestrictionOptionDefinition?.ArrangementAction?.EventLocation?.LocationIdentification?.IdentifierEndDate?.DaylightSavingIndicator,
                        "DateTimeType": check response?.RestrictionOptionDefinition?.ArrangementAction?.EventLocation?.LocationIdentification?.IdentifierEndDate?.DateTimeType
                    }
                },
                "LocationAddress": check response?.RestrictionOptionDefinition?.ArrangementAction?.EventLocation?.LocationAddress,
                "LocationName": {
                    "Name": check response?.RestrictionOptionDefinition?.ArrangementAction?.EventLocation?.LocationName?.Name
                },
                "LocationTimeZone": check response?.RestrictionOptionDefinition?.ArrangementAction?.EventLocation?.LocationTimeZone
            },
            "EventAction": check response?.RestrictionOptionDefinition?.ArrangementAction?.EventAction,
            "EventStatus": {
                "StatusReason": check response?.RestrictionOptionDefinition?.ArrangementAction?.EventStatus?.StatusReason,
                "StatusDateTime": {
                    "DateTimeContent": check response?.RestrictionOptionDefinition?.ArrangementAction?.EventStatus?.StatusDateTime?.DateTimeContent,
                    "TimeZoneCode": check response?.RestrictionOptionDefinition?.ArrangementAction?.EventStatus?.StatusDateTime?.TimeZoneCode,
                    "DaylightSavingIndicator": check response?.RestrictionOptionDefinition?.ArrangementAction?.EventStatus?.StatusDateTime?.DaylightSavingIndicator,
                    "DateTimeType": check response?.RestrictionOptionDefinition?.ArrangementAction?.EventStatus?.StatusDateTime?.DateTimeType
                },
                "StatusValidityPeriod": {
                    "FromDateTime": {
                        "DateTimeContent": check response?.RestrictionOptionDefinition?.ArrangementAction?.EventStatus?.StatusValidityPeriod?.FromDateTime?.DateTimeContent,
                        "TimeZoneCode": check response?.RestrictionOptionDefinition?.ArrangementAction?.EventStatus?.StatusValidityPeriod?.FromDateTime?.TimeZoneCode,
                        "DaylightSavingIndicator": check response?.RestrictionOptionDefinition?.ArrangementAction?.EventStatus?.StatusValidityPeriod?.FromDateTime?.DaylightSavingIndicator,
                        "DateTimeType": check response?.RestrictionOptionDefinition?.ArrangementAction?.EventStatus?.StatusValidityPeriod?.FromDateTime?.DateTimeType
                    },
                    "ToDateTime": {
                        "DateTimeContent": check response?.RestrictionOptionDefinition?.ArrangementAction?.EventStatus?.StatusValidityPeriod?.ToDateTime?.DateTimeContent,
                        "TimeZoneCode": check response?.RestrictionOptionDefinition?.ArrangementAction?.EventStatus?.StatusValidityPeriod?.ToDateTime?.TimeZoneCode,
                        "DaylightSavingIndicator": check response?.RestrictionOptionDefinition?.ArrangementAction?.EventStatus?.StatusValidityPeriod?.ToDateTime?.DaylightSavingIndicator,
                        "DateTimeType": check response?.RestrictionOptionDefinition?.ArrangementAction?.EventStatus?.StatusValidityPeriod?.ToDateTime?.DateTimeType
                    }
                },
                "StatusInvolvedPartyReference": {
                    "PartyReference": check response?.RestrictionOptionDefinition?.ArrangementAction?.EventStatus?.StatusInvolvedPartyReference?.PartyReference,
                    "InvolvementReference": check response?.RestrictionOptionDefinition?.ArrangementAction?.EventStatus?.StatusInvolvedPartyReference?.InvolvementReference
                }
            },
            "EventValue": check response?.RestrictionOptionDefinition?.ArrangementAction?.EventValue,
            "EventValidityPeriod": {
                "FromDateTime": {
                    "DateTimeContent": check response?.RestrictionOptionDefinition?.ArrangementAction?.EventValidityPeriod?.FromDateTime?.DateTimeContent,
                    "TimeZoneCode": check response?.RestrictionOptionDefinition?.ArrangementAction?.EventValidityPeriod?.FromDateTime?.TimeZoneCode,
                    "DaylightSavingIndicator": check response?.RestrictionOptionDefinition?.ArrangementAction?.EventValidityPeriod?.FromDateTime?.DaylightSavingIndicator,
                    "DateTimeType": check response?.RestrictionOptionDefinition?.ArrangementAction?.EventValidityPeriod?.FromDateTime?.DateTimeType
                },
                "ToDateTime": {
                    "DateTimeContent": check response?.RestrictionOptionDefinition?.ArrangementAction?.EventValidityPeriod?.ToDateTime?.DateTimeContent,
                    "TimeZoneCode": check response?.RestrictionOptionDefinition?.ArrangementAction?.EventValidityPeriod?.ToDateTime?.TimeZoneCode,
                    "DaylightSavingIndicator": check response?.RestrictionOptionDefinition?.ArrangementAction?.EventValidityPeriod?.ToDateTime?.DaylightSavingIndicator,
                    "DateTimeType": check response?.RestrictionOptionDefinition?.ArrangementAction?.EventValidityPeriod?.ToDateTime?.DateTimeType
                }
            },
            "EventIdentification": {
                "IdentifierValue": check response?.RestrictionOptionDefinition?.ArrangementAction?.EventIdentification?.IdentifierValue,
                "IdentifierIssuerReference": {
                    "PartyReference": check response?.RestrictionOptionDefinition?.ArrangementAction?.EventIdentification?.IdentifierIssuerReference?.PartyReference,
                    "InvolvementReference": check response?.RestrictionOptionDefinition?.ArrangementAction?.EventIdentification?.IdentifierIssuerReference?.InvolvementReference
                },
                "IdentifierStartDate": {
                    "DateTimeContent": check response?.RestrictionOptionDefinition?.ArrangementAction?.EventIdentification?.IdentifierStartDate?.DateTimeContent,
                    "TimeZoneCode": check response?.RestrictionOptionDefinition?.ArrangementAction?.EventIdentification?.IdentifierStartDate?.TimeZoneCode,
                    "DaylightSavingIndicator": check response?.RestrictionOptionDefinition?.ArrangementAction?.EventIdentification?.IdentifierStartDate?.DaylightSavingIndicator,
                    "DateTimeType": check response?.RestrictionOptionDefinition?.ArrangementAction?.EventIdentification?.IdentifierStartDate?.DateTimeType
                },
                "IdentifierEndDate": {
                    "DateTimeContent": check response?.RestrictionOptionDefinition?.ArrangementAction?.EventIdentification?.IdentifierEndDate?.DateTimeContent,
                    "TimeZoneCode": check response?.RestrictionOptionDefinition?.ArrangementAction?.EventIdentification?.IdentifierEndDate?.TimeZoneCode,
                    "DaylightSavingIndicator": check response?.RestrictionOptionDefinition?.ArrangementAction?.EventIdentification?.IdentifierEndDate?.DaylightSavingIndicator,
                    "DateTimeType": check response?.RestrictionOptionDefinition?.ArrangementAction?.EventIdentification?.IdentifierEndDate?.DateTimeType
                }
            }
        },
        "ArrangementStartDate": {
            "DateTimeContent": check response?.RestrictionOptionDefinition?.ArrangementStartDate?.DateTimeContent,
            "TimeZoneCode": check response?.RestrictionOptionDefinition?.ArrangementStartDate?.TimeZoneCode,
            "DaylightSavingIndicator": check response?.RestrictionOptionDefinition?.ArrangementStartDate?.DaylightSavingIndicator,
            "DateTimeType": check response?.RestrictionOptionDefinition?.ArrangementStartDate?.DateTimeType
        },
        "ArrangementEndDate": {
            "DateTimeContent": check response?.RestrictionOptionDefinition?.ArrangementEndDate?.DateTimeContent,
            "TimeZoneCode": check response?.RestrictionOptionDefinition?.ArrangementEndDate?.TimeZoneCode,
            "DaylightSavingIndicator": check response?.RestrictionOptionDefinition?.ArrangementEndDate?.DaylightSavingIndicator,
            "DateTimeType": check response?.RestrictionOptionDefinition?.ArrangementEndDate?.DateTimeType
        },
        "ArrangementStatus": {
            "ArrangementStatus": {
                "StatusReason": check response?.RestrictionOptionDefinition?.ArrangementStatus?.ArrangementStatus?.StatusReason,
                "StatusDateTime": {
                    "DateTimeContent": check response?.RestrictionOptionDefinition?.ArrangementStatus?.ArrangementStatus?.StatusDateTime?.DateTimeContent,
                    "TimeZoneCode": check response?.RestrictionOptionDefinition?.ArrangementStatus?.ArrangementStatus?.StatusDateTime?.TimeZoneCode,
                    "DaylightSavingIndicator": check response?.RestrictionOptionDefinition?.ArrangementStatus?.ArrangementStatus?.StatusDateTime?.DaylightSavingIndicator,
                    "DateTimeType": check response?.RestrictionOptionDefinition?.ArrangementStatus?.ArrangementStatus?.StatusDateTime?.DateTimeType
                },
                "StatusValidityPeriod": {
                    "FromDateTime": {
                        "DateTimeContent": check response?.RestrictionOptionDefinition?.ArrangementStatus?.ArrangementStatus?.StatusValidityPeriod?.FromDateTime?.DateTimeContent,
                        "TimeZoneCode": check response?.RestrictionOptionDefinition?.ArrangementStatus?.ArrangementStatus?.StatusValidityPeriod?.FromDateTime?.TimeZoneCode,
                        "DaylightSavingIndicator": check response?.RestrictionOptionDefinition?.ArrangementStatus?.ArrangementStatus?.StatusValidityPeriod?.FromDateTime?.DaylightSavingIndicator,
                        "DateTimeType": check response?.RestrictionOptionDefinition?.ArrangementStatus?.ArrangementStatus?.StatusValidityPeriod?.FromDateTime?.DateTimeType
                    },
                    "ToDateTime": {
                        "DateTimeContent": check response?.RestrictionOptionDefinition?.ArrangementStatus?.ArrangementStatus?.StatusValidityPeriod?.ToDateTime?.DateTimeContent,
                        "TimeZoneCode": check response?.RestrictionOptionDefinition?.ArrangementStatus?.ArrangementStatus?.StatusValidityPeriod?.ToDateTime?.TimeZoneCode,
                        "DaylightSavingIndicator": check response?.RestrictionOptionDefinition?.ArrangementStatus?.ArrangementStatus?.StatusValidityPeriod?.ToDateTime?.DaylightSavingIndicator,
                        "DateTimeType": check response?.RestrictionOptionDefinition?.ArrangementStatus?.ArrangementStatus?.StatusValidityPeriod?.ToDateTime?.DateTimeType
                    }
                },
                "StatusInvolvedPartyReference": {
                    "PartyReference": check response?.RestrictionOptionDefinition?.ArrangementStatus?.ArrangementStatus?.StatusInvolvedPartyReference?.PartyReference,
                    "InvolvementReference": check response?.RestrictionOptionDefinition?.ArrangementStatus?.ArrangementStatus?.StatusInvolvedPartyReference?.InvolvementReference
                }
            },
            "ArrangementStatusType": check response?.RestrictionOptionDefinition?.ArrangementStatus?.ArrangementStatusType
        },
        "ArrangementSubjectMatter": {
            "Subject": check response?.RestrictionOptionDefinition?.ArrangementSubjectMatter?.Subject
        },
        "Arrangementtype": check response?.RestrictionOptionDefinition?.Arrangementtype,
        "ArrangementIdentification": {
            "IdentifierValue": check response?.RestrictionOptionDefinition?.ArrangementIdentification?.IdentifierValue,
            "IdentifierIssuerReference": {
                "PartyReference": check response?.RestrictionOptionDefinition?.ArrangementIdentification?.IdentifierIssuerReference?.PartyReference,
                "InvolvementReference": check response?.RestrictionOptionDefinition?.ArrangementIdentification?.IdentifierIssuerReference?.InvolvementReference
            },
            "IdentifierStartDate": {
                "DateTimeContent": check response?.RestrictionOptionDefinition?.ArrangementIdentification?.IdentifierStartDate?.DateTimeContent,
                "TimeZoneCode": check response?.RestrictionOptionDefinition?.ArrangementIdentification?.IdentifierStartDate?.TimeZoneCode,
                "DaylightSavingIndicator": check response?.RestrictionOptionDefinition?.ArrangementIdentification?.IdentifierStartDate?.DaylightSavingIndicator,
                "DateTimeType": check response?.RestrictionOptionDefinition?.ArrangementIdentification?.IdentifierStartDate?.DateTimeType
            },
            "IdentifierEndDate": {
                "DateTimeContent": check response?.RestrictionOptionDefinition?.ArrangementIdentification?.IdentifierEndDate?.DateTimeContent,
                "TimeZoneCode": check response?.RestrictionOptionDefinition?.ArrangementIdentification?.IdentifierEndDate?.TimeZoneCode,
                "DaylightSavingIndicator": check response?.RestrictionOptionDefinition?.ArrangementIdentification?.IdentifierEndDate?.DaylightSavingIndicator,
                "DateTimeType": check response?.RestrictionOptionDefinition?.ArrangementIdentification?.IdentifierEndDate?.DateTimeType
            }
        }
    },
    "RestrictionOptionSetting": {
        "AccountRestrictionIdentifier": {
            //   "IdentifierValue": "string",
            "IdentifierIssuerReference": {
                "PartyReference": check response?.RestrictionOptionSetting?.IdentifierIssuerReference?.PartyReference,
                "InvolvementReference": check response?.RestrictionOptionSetting?.IdentifierIssuerReference?.InvolvementReference
            },
            "IdentifierStartDate": {
                // "DateTimeContent": "string",
                // "TimeZoneCode": "string",
                // "DaylightSavingIndicator": "string",
                "DateTimeType": check response?.RestrictionOptionSetting?.IdentifierStartDate?.DateTimeType
            },
            "IdentifierEndDate": {
                // "DateTimeContent": "string",
                // "TimeZoneCode": "string",
                // "DaylightSavingIndicator": "string",
                "DateTimeType": check response?.RestrictionOptionSetting?.IdentifierEndDate?.DateTimeType
            }
        },
        // "AccountRestrictionType": "string",
        // "AccountRestrictionDescription": "string",
        "AccountRestrictionValidityPeriod": {
            "FromDateTime": {
                // "DateTimeContent": "string",
                // "TimeZoneCode": "string",
                // "DaylightSavingIndicator": "string",
                "DateTimeType": check response?.RestrictionOptionSetting?.AccountRestrictionValidityPeriod?.FromDateTime?.DateTimeType
            },
            "ToDateTime": {
                // "DateTimeContent": "string",
                // "TimeZoneCode": "string",
                // "DaylightSavingIndicator": "string",
                "DateTimeType": check response?.RestrictionOptionSetting?.AccountRestrictionValidityPeriod?.ToDateTime?.DateTimeType
            }
        },
        "AccountRestrictionStatus": {
            "AccountRestrictionStatus": {
                // "StatusReason": "string",
                "StatusDateTime": {
                    //   "DateTimeContent": "string",
                    //   "TimeZoneCode": "string",
                    //   "DaylightSavingIndicator": "string",
                    "DateTimeType": check response?.RestrictionOptionSetting?.AccountRestrictionStatus?.AccountRestrictionStatus?.DateTimeType
                },
                "StatusValidityPeriod": {
                    "FromDateTime": {
                        // "DateTimeContent": "string",
                        //     "TimeZoneCode": "string",
                        //     "DaylightSavingIndicator": "string",
                        "DateTimeType": check response?.RestrictionOptionSetting?.AccountRestrictionStatus?.AccountRestrictionStatus?.StatusValidityPeriod?.FromDateTime?.DateTimeType
                    },
                    "ToDateTime": {
                        // "DateTimeContent": "string",
                        // "TimeZoneCode": "string",
                        // "DaylightSavingIndicator": "string",
                        "DateTimeType": check response?.RestrictionOptionSetting?.AccountRestrictionStatus?.AccountRestrictionStatus?.StatusValidityPeriod?.ToDateTime?.DateTimeType
                    }
                },
                "StatusInvolvedPartyReference": {
                    "PartyReference": check response?.RestrictionOptionSetting?.AccountRestrictionStatus?.AccountRestrictionStatus?.StatusInvolvedPartyReference?.PartyReference,
                    "InvolvementReference": check response?.RestrictionOptionSetting?.AccountRestrictionStatus?.AccountRestrictionStatus?.StatusInvolvedPartyReference?.InvolvementReference
                }
            },
            "AccountRestrictionStatusType": check response?.RestrictionOptionSetting?.AccountRestrictionStatus?.AccountRestrictionStatusType
        },
        "AccountRestrictionRegulator": {
            //   "PartyReference": "string",
            "InvolvementReference": check response?.RestrictionOptionSetting?.InvolvementReference
        },
        "ArrangementAction": {
            "ActionType": check response?.RestrictionOptionSetting?.ArrangementAction?.ActionType,
            "EventType": check response?.RestrictionOptionSetting?.ArrangementAction?.EventType,
            "EventDateTime": {
                "DateTimeContent": check response?.RestrictionOptionSetting?.ArrangementAction?.EventDateTime?.DateTimeContent,
                "TimeZoneCode": check response?.RestrictionOptionSetting?.ArrangementAction?.EventDateTime?.TimeZoneCode,
                "DaylightSavingIndicator": check response?.RestrictionOptionSetting?.ArrangementAction?.EventDateTime?.DaylightSavingIndicator,
                "DateTimeType": check response?.RestrictionOptionSetting?.ArrangementAction?.EventDateTime?.DateTimeType
            },
            "EventDescription": check response?.RestrictionOptionSetting?.ArrangementAction?.EventDescription,
            "EventSource": check response?.RestrictionOptionSetting?.ArrangementAction?.EventSource,
            "EventLocation": {
                "LocationDescription": check response?.RestrictionOptionSetting?.ArrangementAction?.EventLocation?.LocationDescription,
                "LocationDateTime": {
                    "DateTimeContent": check response?.RestrictionOptionSetting?.ArrangementAction?.EventLocation?.LocationDateTime?.DateTimeContent,
                    "TimeZoneCode": check response?.RestrictionOptionSetting?.ArrangementAction?.EventLocation?.LocationDateTime?.TimeZoneCode,
                    "DaylightSavingIndicator": check response?.RestrictionOptionSetting?.ArrangementAction?.EventLocation?.LocationDateTime?.DaylightSavingIndicator,
                    "DateTimeType": check response?.RestrictionOptionSetting?.ArrangementAction?.EventLocation?.LocationDateTime?.DateTimeType
                },
                "LocationStatus": {
                    "StatusReason": check response?.RestrictionOptionSetting?.ArrangementAction?.EventLocation?.LocationStatus?.StatusReason,
                    "StatusDateTime": {
                        "DateTimeContent": check response?.RestrictionOptionSetting?.ArrangementAction?.EventLocation?.LocationStatus?.StatusDateTime?.DateTimeContent,
                        "TimeZoneCode": check response?.RestrictionOptionSetting?.ArrangementAction?.EventLocation?.LocationStatus?.StatusDateTime?.TimeZoneCode,
                        "DaylightSavingIndicator": check response?.RestrictionOptionSetting?.ArrangementAction?.EventLocation?.LocationStatus?.StatusDateTime?.DaylightSavingIndicator,
                        "DateTimeType": check response?.RestrictionOptionSetting?.ArrangementAction?.EventLocation?.LocationStatus?.StatusDateTime?.DateTimeType
                    },
                    "StatusValidityPeriod": {
                        "FromDateTime": {
                            "DateTimeContent": check response?.RestrictionOptionSetting?.ArrangementAction?.EventLocation?.LocationStatus?.StatusValidityPeriod?.FromDateTime?.DateTimeContent,
                            "TimeZoneCode": check response?.RestrictionOptionSetting?.ArrangementAction?.EventLocation?.LocationStatus?.StatusValidityPeriod?.FromDateTime?.TimeZoneCode,
                            "DaylightSavingIndicator": check response?.RestrictionOptionSetting?.ArrangementAction?.EventLocation?.LocationStatus?.StatusValidityPeriod?.FromDateTime?.DaylightSavingIndicator,
                            "DateTimeType": check response?.RestrictionOptionSetting?.ArrangementAction?.EventLocation?.LocationStatus?.StatusValidityPeriod?.FromDateTime?.DateTimeType
                        },
                        "ToDateTime": {
                            "DateTimeContent": check response?.RestrictionOptionSetting?.ArrangementAction?.EventLocation?.LocationStatus?.StatusValidityPeriod?.ToDateTime?.DateTimeContent,
                            "TimeZoneCode": check response?.RestrictionOptionSetting?.ArrangementAction?.EventLocation?.LocationStatus?.StatusValidityPeriod?.ToDateTime?.TimeZoneCode,
                            "DaylightSavingIndicator": check response?.RestrictionOptionSetting?.ArrangementAction?.EventLocation?.LocationStatus?.StatusValidityPeriod?.ToDateTime?.DaylightSavingIndicator,
                            "DateTimeType": check response?.RestrictionOptionSetting?.ArrangementAction?.EventLocation?.LocationStatus?.StatusValidityPeriod?.ToDateTime?.DateTimeType
                        }
                    },
                    "StatusInvolvedPartyReference": {
                        "PartyReference": check response?.RestrictionOptionSetting?.ArrangementAction?.EventLocation?.LocationStatus?.StatusInvolvedPartyReference?.PartyReference,
                        "InvolvementReference": check response?.RestrictionOptionSetting?.ArrangementAction?.EventLocation?.LocationStatus?.StatusInvolvedPartyReference?.InvolvementReference
                    }
                },
                "LocationType": check response?.RestrictionOptionSetting?.ArrangementAction?.EventLocation?.LocationType,
                "LocationZoningType": check response?.RestrictionOptionSetting?.ArrangementAction?.EventLocation?.LocationZoningType,
                "LocationNeighborhoodType": check response?.RestrictionOptionSetting?.ArrangementAction?.EventLocation?.LocationNeighborhoodType,
                "LocationConstructionType": check response?.RestrictionOptionSetting?.ArrangementAction?.EventLocation?.LocationConstructionType,
                "LocationOccupancyType": check response?.RestrictionOptionSetting?.ArrangementAction?.EventLocation?.LocationOccupancyType,
                "LocationValue": check response?.RestrictionOptionSetting?.ArrangementAction?.EventLocation?.LocationValue,
                "LocationCapacity": check response?.RestrictionOptionSetting?.ArrangementAction?.EventLocation?.LocationCapacity,
                "LocationIdentification": {
                    "IdentifierValue": check response?.RestrictionOptionSetting?.ArrangementAction?.EventLocation?.LocationIdentification?.IdentifierValue,
                    "IdentifierIssuerReference": {
                        "PartyReference": check response?.RestrictionOptionSetting?.ArrangementAction?.EventLocation?.LocationIdentification?.IdentifierIssuerReference?.PartyReference,
                        "InvolvementReference": check response?.RestrictionOptionSetting?.ArrangementAction?.EventLocation?.LocationIdentification?.IdentifierIssuerReference?.InvolvementReference
                    },
                    "IdentifierStartDate": {
                        "DateTimeContent": check response?.RestrictionOptionSetting?.ArrangementAction?.EventLocation?.LocationIdentification?.IdentifierStartDate?.DateTimeContent,
                        "TimeZoneCode": check response?.RestrictionOptionSetting?.ArrangementAction?.EventLocation?.LocationIdentification?.IdentifierStartDate?.TimeZoneCode,
                        "DaylightSavingIndicator": check response?.RestrictionOptionSetting?.ArrangementAction?.EventLocation?.LocationIdentification?.IdentifierStartDate?.DaylightSavingIndicator,
                        "DateTimeType": check response?.RestrictionOptionSetting?.ArrangementAction?.EventLocation?.LocationIdentification?.IdentifierStartDate?.DateTimeType
                    },
                    "IdentifierEndDate": {
                        "DateTimeContent": check response?.RestrictionOptionSetting?.ArrangementAction?.EventLocation?.LocationIdentification?.IdentifierEndDate?.DateTimeContent,
                        "TimeZoneCode": check response?.RestrictionOptionSetting?.ArrangementAction?.EventLocation?.LocationIdentification?.IdentifierEndDate?.TimeZoneCode,
                        "DaylightSavingIndicator": check response?.RestrictionOptionSetting?.ArrangementAction?.EventLocation?.LocationIdentification?.IdentifierEndDate?.DaylightSavingIndicator,
                        "DateTimeType": check response?.RestrictionOptionSetting?.ArrangementAction?.EventLocation?.LocationIdentification?.IdentifierEndDate?.DateTimeType
                    }
                },
                "LocationAddress": check response?.RestrictionOptionSetting?.ArrangementAction?.EventLocation?.LocationAddress,
                "LocationName": {
                    "Name": check response?.RestrictionOptionSetting?.ArrangementAction?.EventLocation?.LocationName?.Name
                },
                "LocationTimeZone": check response?.RestrictionOptionSetting?.ArrangementAction?.EventLocation?.LocationTimeZone
            },
            "EventAction": check response?.RestrictionOptionSetting?.ArrangementAction?.EventAction,
            "EventStatus": {
                "StatusReason": check response?.RestrictionOptionSetting?.ArrangementAction?.EventStatus?.StatusReason,
                "StatusDateTime": {
                    "DateTimeContent": check response?.RestrictionOptionSetting?.ArrangementAction?.EventStatus?.StatusDateTime?.DateTimeContent,
                    "TimeZoneCode": check response?.RestrictionOptionSetting?.ArrangementAction?.EventStatus?.StatusDateTime?.TimeZoneCode,
                    "DaylightSavingIndicator": check response?.RestrictionOptionSetting?.ArrangementAction?.EventStatus?.StatusDateTime?.DaylightSavingIndicator,
                    "DateTimeType": check response?.RestrictionOptionSetting?.ArrangementAction?.EventStatus?.StatusDateTime?.DateTimeType
                },
                "StatusValidityPeriod": {
                    "FromDateTime": {
                        "DateTimeContent": check response?.RestrictionOptionSetting?.ArrangementAction?.EventStatus?.StatusValidityPeriod?.FromDateTime?.DateTimeContent,
                        "TimeZoneCode": check response?.RestrictionOptionSetting?.ArrangementAction?.EventStatus?.StatusValidityPeriod?.FromDateTime?.TimeZoneCode,
                        "DaylightSavingIndicator": check response?.RestrictionOptionSetting?.ArrangementAction?.EventStatus?.StatusValidityPeriod?.FromDateTime?.DaylightSavingIndicator,
                        "DateTimeType": check response?.RestrictionOptionSetting?.ArrangementAction?.EventStatus?.StatusValidityPeriod?.FromDateTime?.DateTimeType
                    },
                    "ToDateTime": {
                        "DateTimeContent": check response?.RestrictionOptionSetting?.ArrangementAction?.EventStatus?.StatusValidityPeriod?.ToDateTime?.DateTimeContent,
                        "TimeZoneCode": check response?.RestrictionOptionSetting?.ArrangementAction?.EventStatus?.StatusValidityPeriod?.ToDateTime?.TimeZoneCode,
                        "DaylightSavingIndicator": check response?.RestrictionOptionSetting?.ArrangementAction?.EventStatus?.StatusValidityPeriod?.ToDateTime?.DaylightSavingIndicator,
                        "DateTimeType": check response?.RestrictionOptionSetting?.ArrangementAction?.EventStatus?.StatusValidityPeriod?.ToDateTime?.DateTimeType
                    }
                },
                "StatusInvolvedPartyReference": {
                    "PartyReference": check response?.RestrictionOptionSetting?.ArrangementAction?.EventStatus?.StatusInvolvedPartyReference?.PartyReference,
                    "InvolvementReference": check response?.RestrictionOptionSetting?.ArrangementAction?.EventStatus?.StatusInvolvedPartyReference?.InvolvementReference
                }
            },
            "EventValue": check response?.RestrictionOptionSetting?.ArrangementAction?.EventValue,
            "EventValidityPeriod": {
                "FromDateTime": {
                    "DateTimeContent": check response?.RestrictionOptionSetting?.ArrangementAction?.EventValidityPeriod?.FromDateTime?.DateTimeContent,
                    "TimeZoneCode": check response?.RestrictionOptionSetting?.ArrangementAction?.EventValidityPeriod?.FromDateTime?.TimeZoneCode,
                    "DaylightSavingIndicator": check response?.RestrictionOptionSetting?.ArrangementAction?.EventValidityPeriod?.FromDateTime?.DaylightSavingIndicator,
                    "DateTimeType": check response?.RestrictionOptionSetting?.ArrangementAction?.EventValidityPeriod?.FromDateTime?.DateTimeType
                },
                "ToDateTime": {
                    "DateTimeContent": check response?.RestrictionOptionSetting?.ArrangementAction?.EventValidityPeriod?.ToDateTime?.DateTimeContent,
                    "TimeZoneCode": check response?.RestrictionOptionSetting?.ArrangementAction?.EventValidityPeriod?.ToDateTime?.TimeZoneCode,
                    "DaylightSavingIndicator": check response?.RestrictionOptionSetting?.ArrangementAction?.EventValidityPeriod?.ToDateTime?.DaylightSavingIndicator,
                    "DateTimeType": check response?.RestrictionOptionSetting?.ArrangementAction?.EventValidityPeriod?.ToDateTime?.DateTimeType
                }
            },
            "EventIdentification": {
                "IdentifierValue": check response?.RestrictionOptionSetting?.ArrangementAction?.EventIdentification?.IdentifierValue,
                "IdentifierIssuerReference": {
                    "PartyReference": check response?.RestrictionOptionSetting?.ArrangementAction?.EventIdentification?.IdentifierIssuerReference?.PartyReference,
                    "InvolvementReference": check response?.RestrictionOptionSetting?.ArrangementAction?.EventIdentification?.IdentifierIssuerReference?.InvolvementReference
                },
                "IdentifierStartDate": {
                    "DateTimeContent": check response?.RestrictionOptionSetting?.ArrangementAction?.EventIdentification?.IdentifierStartDate?.DateTimeContent,
                    "TimeZoneCode": check response?.RestrictionOptionSetting?.ArrangementAction?.EventIdentification?.IdentifierStartDate?.TimeZoneCode,
                    "DaylightSavingIndicator": check response?.RestrictionOptionSetting?.ArrangementAction?.EventIdentification?.IdentifierStartDate?.DaylightSavingIndicator,
                    "DateTimeType": check response?.RestrictionOptionSetting?.ArrangementAction?.EventIdentification?.IdentifierStartDate?.DateTimeType
                },
                "IdentifierEndDate": {
                    "DateTimeContent": check response?.RestrictionOptionSetting?.ArrangementAction?.EventIdentification?.IdentifierEndDate?.DateTimeContent,
                    "TimeZoneCode": check response?.RestrictionOptionSetting?.ArrangementAction?.EventIdentification?.IdentifierEndDate?.TimeZoneCode,
                    "DaylightSavingIndicator": check response?.RestrictionOptionSetting?.ArrangementAction?.EventIdentification?.IdentifierEndDate?.DaylightSavingIndicator,
                    "DateTimeType": check response?.RestrictionOptionSetting?.ArrangementAction?.EventIdentification?.IdentifierEndDate?.DateTimeType
                }
            }
        },
        "ArrangementStartDate": {
            "DateTimeContent": check response?.RestrictionOptionSetting?.ArrangementStartDate?.DateTimeContent,
            "TimeZoneCode": check response?.RestrictionOptionSetting?.ArrangementStartDate?.TimeZoneCode,
            "DaylightSavingIndicator": check response?.RestrictionOptionSetting?.ArrangementStartDate?.DaylightSavingIndicator,
            "DateTimeType": check response?.RestrictionOptionSetting?.ArrangementStartDate?.DateTimeType
        },
        "ArrangementEndDate": {
            "DateTimeContent": check response?.RestrictionOptionSetting?.ArrangementEndDate?.DateTimeContent,
            "TimeZoneCode": check response?.RestrictionOptionSetting?.ArrangementEndDate?.TimeZoneCode,
            "DaylightSavingIndicator": check response?.RestrictionOptionSetting?.ArrangementEndDate?.DaylightSavingIndicator,
            "DateTimeType": check response?.RestrictionOptionSetting?.ArrangementEndDate?.DateTimeType
        },
        "ArrangementStatus": {
            "ArrangementStatus": {
                "StatusReason": check response?.RestrictionOptionSetting?.ArrangementStatus?.ArrangementStatus?.StatusReason,
                "StatusDateTime": {
                    "DateTimeContent": check response?.RestrictionOptionSetting?.ArrangementStatus?.ArrangementStatus?.StatusDateTime?.DateTimeContent,
                    "TimeZoneCode": check response?.RestrictionOptionSetting?.ArrangementStatus?.ArrangementStatus?.StatusDateTime?.TimeZoneCode,
                    "DaylightSavingIndicator": check response?.RestrictionOptionSetting?.ArrangementStatus?.ArrangementStatus?.StatusDateTime?.DaylightSavingIndicator,
                    "DateTimeType": check response?.RestrictionOptionSetting?.ArrangementStatus?.ArrangementStatus?.StatusDateTime?.DateTimeType
                },
                "StatusValidityPeriod": {
                    "FromDateTime": {
                        "DateTimeContent": check response?.RestrictionOptionSetting?.ArrangementStatus?.ArrangementStatus?.StatusValidityPeriod?.FromDateTime?.DateTimeContent,
                        "TimeZoneCode": check response?.RestrictionOptionSetting?.ArrangementStatus?.ArrangementStatus?.StatusValidityPeriod?.FromDateTime?.TimeZoneCode,
                        "DaylightSavingIndicator": check response?.RestrictionOptionSetting?.ArrangementStatus?.ArrangementStatus?.StatusValidityPeriod?.FromDateTime?.DaylightSavingIndicator,
                        "DateTimeType": check response?.RestrictionOptionSetting?.ArrangementStatus?.ArrangementStatus?.StatusValidityPeriod?.FromDateTime?.DateTimeType
                    },
                    "ToDateTime": {
                        "DateTimeContent": check response?.RestrictionOptionSetting?.ArrangementStatus?.ArrangementStatus?.StatusValidityPeriod?.ToDateTime?.DateTimeContent,
                        "TimeZoneCode": check response?.RestrictionOptionSetting?.ArrangementStatus?.ArrangementStatus?.StatusValidityPeriod?.ToDateTime?.TimeZoneCode,
                        "DaylightSavingIndicator": check response?.RestrictionOptionSetting?.ArrangementStatus?.ArrangementStatus?.StatusValidityPeriod?.ToDateTime?.DaylightSavingIndicator,
                        "DateTimeType": check response?.RestrictionOptionSetting?.ArrangementStatus?.ArrangementStatus?.StatusValidityPeriod?.ToDateTime?.DateTimeType
                    }
                },
                "StatusInvolvedPartyReference": {
                    "PartyReference": check response?.RestrictionOptionSetting?.ArrangementStatus?.ArrangementStatus?.StatusInvolvedPartyReference?.PartyReference,
                    "InvolvementReference": check response?.RestrictionOptionSetting?.ArrangementStatus?.ArrangementStatus?.StatusInvolvedPartyReference?.InvolvementReference
                }
            },
            "ArrangementStatusType": check response?.RestrictionOptionSetting?.ArrangementStatus?.ArrangementStatusType
        },
        "ArrangementSubjectMatter": {
            "Subject": check response?.RestrictionOptionSetting?.ArrangementSubjectMatter?.Subject
        },
        "Arrangementtype": check response?.RestrictionOptionSetting?.Arrangementtype,
        "ArrangementIdentification": {
            "IdentifierValue": check response?.RestrictionOptionSetting?.ArrangementIdentification?.IdentifierValue,
            "IdentifierIssuerReference": {
                "PartyReference": check response?.RestrictionOptionSetting?.ArrangementIdentification?.IdentifierIssuerReference?.PartyReference,
                "InvolvementReference": check response?.RestrictionOptionSetting?.ArrangementIdentification?.IdentifierIssuerReference?.InvolvementReference
            },
            "IdentifierStartDate": {
                "DateTimeContent": check response?.RestrictionOptionSetting?.ArrangementIdentification?.IdentifierStartDate?.DateTimeContent,
                "TimeZoneCode": check response?.RestrictionOptionSetting?.ArrangementIdentification?.IdentifierStartDate?.TimeZoneCode,
                "DaylightSavingIndicator": check response?.RestrictionOptionSetting?.ArrangementIdentification?.IdentifierStartDate?.DaylightSavingIndicator,
                "DateTimeType": check response?.RestrictionOptionSetting?.ArrangementIdentification?.IdentifierStartDate?.DateTimeType
            },
            "IdentifierEndDate": {
                "DateTimeContent": check response?.RestrictionOptionSetting?.ArrangementIdentification?.IdentifierEndDate?.DateTimeContent,
                "TimeZoneCode": check response?.RestrictionOptionSetting?.ArrangementIdentification?.IdentifierEndDate?.TimeZoneCode,
                "DaylightSavingIndicator": check response?.RestrictionOptionSetting?.ArrangementIdentification?.IdentifierEndDate?.DaylightSavingIndicator,
                "DateTimeType": check response?.RestrictionOptionSetting?.ArrangementIdentification?.IdentifierEndDate?.DateTimeType
            }
        }
    },
    "Associations": {
        "AccountInvolvementType": check response?.Associations?.AccountInvolvementType,
        "AccountReference": {
            "AccountStatus": {
                "AccountStatus": {
                    //   "StatusReason": "string",
                    "StatusDateTime": {
                        // "DateTimeContent": "string",
                        // "TimeZoneCode": "string",
                        // "DaylightSavingIndicator": "string",
                        "DateTimeType": check response?.Associations?.AccountReference?.AccountStatus?.StatusDateTime?.DateTimeType
                    },
                    "StatusValidityPeriod": {
                        "FromDateTime": {
                            //   "DateTimeContent": "string",
                            //   "TimeZoneCode": "string",
                            //   "DaylightSavingIndicator": "string",
                            "DateTimeType": check response?.Associations?.AccountReference?.AccountStatus?.StatusValidityPeriod?.DateTimeType
                        },
                        "ToDateTime": {
                            //   "DateTimeContent": "string",
                            //   "TimeZoneCode": "string",
                            //   "DaylightSavingIndicator": "string",
                            "DateTimeType": check response?.Associations?.AccountReference?.AccountStatus?.StatusValidityPeriod?.DateTimeType
                        }
                    },
                    "StatusInvolvedPartyReference": {
                        "PartyReference": check response?.Associations?.AccountReference?.AccountStatus?.StatusInvolvedPartyReference?.PartyReference,
                        "InvolvementReference": check response?.Associations?.AccountReference?.AccountStatus?.StatusInvolvedPartyReference?.InvolvementReference
                    }
                },
                "AccountStatusType": check response?.Associations?.AccountReference?.AccountStatus?.AccountStatusType
            },
            "AccountIdentification": {
                "AccountIdentificationType": check response?.Associations?.AccountReference?.AccountIdentification?.AccountIdentificationType,
                "AccountIdentification": {
                    //   "IdentifierValue": "string",
                    "IdentifierIssuerReference": {
                        "PartyReference": check response?.Associations?.AccountReference?.AccountIdentification?.IdentifierIssuerReference?.PartyReference,
                        "InvolvementReference": check response?.Associations?.AccountReference?.AccountIdentification?.IdentifierIssuerReference?.InvolvementReference
                    },
                    "IdentifierStartDate": {
                        // "DateTimeContent": "string",
                        // "TimeZoneCode": "string",
                        // "DaylightSavingIndicator": "string",
                        "DateTimeType": check response?.Associations?.AccountReference?.AccountIdentification?.IdentifierStartDate?.DateTimeType
                    },
                    "IdentifierEndDate": {
                        // "DateTimeContent": "string",
                        // "TimeZoneCode": "string",
                        // "DaylightSavingIndicator": "string",
                        "DateTimeType": check response?.Associations?.AccountReference?.AccountIdentification?.IdentifierEndDate?.DateTimeType
                    }
                }
            },
            "AccountDate": {
                "AccountDateType": check response?.Associations?.AccountReference?.AccountDate?.AccountDateType,
                "AccountDate": {
                    //   "DateTimeContent": "string",
                    //   "TimeZoneCode": "string",
                    //   "DaylightSavingIndicator": "string",
                    "DateTimeType": check response?.Associations?.AccountReference?.AccountDate?.DateTimeType
                }
            },
            "AccountType": check response?.Associations?.AccountReference?.AccountType,
            //   "AccountPurpose": "string",
            "AccountBalance": {
                "BalanceAmount": {
                    //   "AmountValue": "string",
                    "AmountCurrency": {
                        "Currencycode": check response?.Associations?.AccountBalance?.AmountCurrency?.Currencycode
                    },
                    //   "DecimalPointPosition": "string",
                    "AmountType": check response?.Associations?.AccountBalance?.AmountType
                },
                "BalanceType": check response?.Associations?.AccountBalance?.BalanceType,
                "BalanceValueDate": {
                    //   "DateTimeContent": "string",
                    //   "TimeZoneCode": "string",
                    //   "DaylightSavingIndicator": "string",
                    "DateTimeType": check response?.Associations?.AccountBalance?.DateTimeType
                },
                "BalanceIndicator": check response?.Associations?.AccountBalance?.BalanceIndicator,
                "BalanceCounterpartyType": check response?.Associations?.AccountBalance?.BalanceCounterpartyType,
                "BalanceCalculationDate": {
                    //   "DateTimeContent": "string",
                    //   "TimeZoneCode": "string",
                    //   "DaylightSavingIndicator": "string",
                    "DateTimeType": check response?.Associations?.AccountBalance?.DateTimeType
                },
                "BalanceSubType": check response?.Associations?.AccountBalance?.BalanceSubType
            },
            "AccountCurrency": {
                "AccountCurrencyType": check response?.Associations?.AccountCurrency?.AccountCurrencyType,
                "AccountCurrency": {
                    "Currencycode": check response?.Associations?.AccountCurrency?.AccountCurrency?.Currencycode
                }
            },
            //   "AccountDescription": "string",
            "AccountName": {
                "Name": check response?.Associations?.AccountName?.Name
            },
            "LogType": check response?.Associations?.LogType,
            "LogPeriod": {
                "FromDateTime": {
                    "DateTimeContent": check response?.Associations?.LogPeriod?.FromDateTime?.DateTimeContent,
                    "TimeZoneCode": check response?.Associations?.LogPeriod?.FromDateTime?.TimeZoneCode,
                    "DaylightSavingIndicator": check response?.Associations?.LogPeriod?.FromDateTime?.DaylightSavingIndicator,
                    "DateTimeType": check response?.Associations?.LogPeriod?.FromDateTime?.DateTimeType
                },
                "ToDateTime": {
                    "DateTimeContent": check response?.Associations?.LogPeriod?.ToDateTime?.DateTimeContent,
                    "TimeZoneCode": check response?.Associations?.LogPeriod?.ToDateTime?.TimeZoneCode,
                    "DaylightSavingIndicator": check response?.Associations?.LogPeriod?.ToDateTime?.DaylightSavingIndicator,
                    "DateTimeType": check response?.Associations?.LogPeriod?.ToDateTime?.DateTimeType
                }
            },
            "LogDate": {
                "DateTimeContent": check response?.Associations?.LogDate?.DateTimeContent,
                "TimeZoneCode": check response?.Associations?.LogDate?.TimeZoneCode,
                "DaylightSavingIndicator": check response?.Associations?.LogDate?.DaylightSavingIndicator,
                "DateTimeType": check response?.Associations?.LogDate?.DateTimeType
            },
            "LogIdentification": {
                "IdentifierValue": check response?.Associations?.LogIdentification?.IdentifierValue,
                "IdentifierIssuerReference": {
                    "PartyReference": check response?.Associations?.LogIdentification?.IdentifierIssuerReference?.PartyReference,
                    "InvolvementReference": check response?.Associations?.LogIdentification?.IdentifierIssuerReference?.InvolvementReference
                },
                "IdentifierStartDate": {
                    "DateTimeContent": check response?.Associations?.LogIdentification?.IdentifierStartDate?.DateTimeContent,
                    "TimeZoneCode": check response?.Associations?.LogIdentification?.IdentifierStartDate?.TimeZoneCode,
                    "DaylightSavingIndicator": check response?.Associations?.LogIdentification?.IdentifierStartDate?.DaylightSavingIndicator,
                    "DateTimeType": check response?.Associations?.LogIdentification?.IdentifierStartDate?.DateTimeType
                },
                "IdentifierEndDate": {
                    "DateTimeContent": check response?.Associations?.LogIdentification?.IdentifierEndDate?.DateTimeContent,
                    "TimeZoneCode": check response?.Associations?.LogIdentification?.IdentifierEndDate?.TimeZoneCode,
                    "DaylightSavingIndicator": check response?.Associations?.LogIdentification?.IdentifierEndDate?.DaylightSavingIndicator,
                    "DateTimeType": check response?.Associations?.LogIdentification?.IdentifierEndDate?.DateTimeType
                }
            }
        },
        "PartyReference": {
            "PartyName": {
                "Name": check response?.Associations?.PartyReference?.PartyName?.Name
            },
            "PartyType": check response?.Associations?.PartyReference?.PartyType,
            "PartyDateTime": {
                // "DateTimeContent": "string",
                // "TimeZoneCode": "string",
                // "DaylightSavingIndicator": "string",
                "DateTimeType": check response?.Associations?.PartyReference?.PartyDateTime?.DateTimeType
            },
            "PartyIdentification": {
                "PartyIdentificationType": check response?.Associations?.PartyReference?.PartyIdentification?.PartyIdentificationType,
                "PartyIdentification": {
                    //   "IdentifierValue": "string",
                    "IdentifierIssuerReference": {
                        "PartyReference": check response?.Associations?.PartyReference?.PartyIdentification?.IdentifierIssuerReference?.PartyReference,
                        "InvolvementReference": check response?.Associations?.PartyReference?.PartyIdentification?.IdentifierIssuerReference?.InvolvementReference
                    },
                    "IdentifierStartDate": {
                        // "DateTimeContent": "string",
                        // "TimeZoneCode": "string",
                        // "DaylightSavingIndicator": "string",
                        "DateTimeType": check response?.Associations?.PartyReference?.PartyIdentification?.IdentifierStartDate?.DateTimeType
                    },
                    "IdentifierEndDate": {
                        // "DateTimeContent": "string",
                        // "TimeZoneCode": "string",
                        // "DaylightSavingIndicator": "string",
                        "DateTimeType": check response?.Associations?.PartyReference?.PartyIdentification?.IdentifierEndDate?.DateTimeType
                    }
                }
            },
            "PartyLegalStructureType": check response?.Associations?.PartyReference?.PartyLegalStructureType,
            "PartyActivityIndicator": {
                "Industrycode": check response?.Associations?.PartyReference?.PartyActivityIndicator?.Industrycode
            }
        },
        "PartyRoleType": check response?.Associations?.PartyRoleType,
        "PartyRoleName": {
            "Name": check response?.Associations?.PartyRoleName?.Name
        },
        "PartyRoleValidityPeriod": {
            "FromDateTime": {
                "DateTimeContent": check response?.Associations?.PartyRoleValidityPeriod?.FromDateTime?.DateTimeContent,
                "TimeZoneCode": check response?.Associations?.PartyRoleValidityPeriod?.FromDateTime?.TimeZoneCode,
                "DaylightSavingIndicator": check response?.Associations?.PartyRoleValidityPeriod?.FromDateTime?.DaylightSavingIndicator,
                "DateTimeType": check response?.Associations?.PartyRoleValidityPeriod?.FromDateTime?.DateTimeType
            },
            "ToDateTime": {
                "DateTimeContent": check response?.Associations?.PartyRoleValidityPeriod?.ToDateTime?.DateTimeContent,
                "TimeZoneCode": check response?.Associations?.PartyRoleValidityPeriod?.ToDateTime?.TimeZoneCode,
                "DaylightSavingIndicator": check response?.Associations?.PartyRoleValidityPeriod?.ToDateTime?.DaylightSavingIndicator,
                "DateTimeType": check response?.Associations?.PartyRoleValidityPeriod?.ToDateTime?.DateTimeType
            }
        },
        "PartyInvolvementType": check response?.Associations?.PartyInvolvementType
    },
    "AssociationType": check response?.AssociationType,
    "AssociationObligationorEntitlement": {
        "ObligationOrEntitlementSubject": {
            "Subject": check response?.AssociationObligationorEntitlement?.ObligationOrEntitlementSubject?.Subject
        },
        "ObligationOrEntitlementType": check response?.AssociationObligationorEntitlement?.ObligationOrEntitlementType,
        "ObligationOrEntitlementModality": {
            "ServiceArrangementModalityType": check response?.AssociationObligationorEntitlement?.ObligationOrEntitlementModality?.ServiceArrangementModalityType
        },
        // "ObligationOrEntitlementDefinition": "string",
        "ArrangementAction": {
            "ActionType": check response?.AssociationObligationorEntitlement?.ArrangementAction?.ActionType,
            "EventType": check response?.AssociationObligationorEntitlement?.ArrangementAction?.EventType,
            "EventDateTime": {
                "DateTimeContent": check response?.AssociationObligationorEntitlement?.ArrangementAction?.EventDateTime?.DateTimeContent,
                "TimeZoneCode": check response?.AssociationObligationorEntitlement?.ArrangementAction?.EventDateTime?.TimeZoneCode,
                "DaylightSavingIndicator": check response?.AssociationObligationorEntitlement?.ArrangementAction?.EventDateTime?.DaylightSavingIndicator,
                "DateTimeType": check response?.AssociationObligationorEntitlement?.ArrangementAction?.EventDateTime?.DateTimeType
            },
            "EventDescription": check response?.AssociationObligationorEntitlement?.ArrangementAction?.EventDescription,
            "EventSource": check response?.AssociationObligationorEntitlement?.ArrangementAction?.EventSource,
            "EventLocation": {
                "LocationDescription": check response?.AssociationObligationorEntitlement?.ArrangementAction?.EventLocation?.LocationDescription,
                "LocationDateTime": {
                    "DateTimeContent": check response?.AssociationObligationorEntitlement?.ArrangementAction?.EventLocation?.LocationDateTime?.DateTimeContent,
                    "TimeZoneCode": check response?.AssociationObligationorEntitlement?.ArrangementAction?.EventLocation?.LocationDateTime?.TimeZoneCode,
                    "DaylightSavingIndicator": check response?.AssociationObligationorEntitlement?.ArrangementAction?.EventLocation?.LocationDateTime?.DaylightSavingIndicator,
                    "DateTimeType": check response?.AssociationObligationorEntitlement?.ArrangementAction?.EventLocation?.LocationDateTime?.DateTimeType
                },
                "LocationStatus": {
                    "StatusReason": check response?.AssociationObligationorEntitlement?.ArrangementAction?.EventLocation?.LocationStatus?.StatusReason,
                    "StatusDateTime": {
                        "DateTimeContent": check response?.AssociationObligationorEntitlement?.ArrangementAction?.EventLocation?.LocationStatus?.StatusDateTime?.DateTimeContent,
                        "TimeZoneCode": check response?.AssociationObligationorEntitlement?.ArrangementAction?.EventLocation?.LocationStatus?.StatusDateTime?.TimeZoneCode,
                        "DaylightSavingIndicator": check response?.AssociationObligationorEntitlement?.ArrangementAction?.EventLocation?.LocationStatus?.StatusDateTime?.DaylightSavingIndicator,
                        "DateTimeType": check response?.AssociationObligationorEntitlement?.ArrangementAction?.EventLocation?.LocationStatus?.StatusDateTime?.DateTimeType
                    },
                    "StatusValidityPeriod": {
                        "FromDateTime": {
                            "DateTimeContent": check response?.AssociationObligationorEntitlement?.ArrangementAction?.EventLocation?.LocationStatus?.StatusValidityPeriod?.FromDateTime?.DateTimeContent,
                            "TimeZoneCode": check response?.AssociationObligationorEntitlement?.ArrangementAction?.EventLocation?.LocationStatus?.StatusValidityPeriod?.FromDateTime?.TimeZoneCode,
                            "DaylightSavingIndicator": check response?.AssociationObligationorEntitlement?.ArrangementAction?.EventLocation?.LocationStatus?.StatusValidityPeriod?.FromDateTime?.DaylightSavingIndicator,
                            "DateTimeType": check response?.AssociationObligationorEntitlement?.ArrangementAction?.EventLocation?.LocationStatus?.StatusValidityPeriod?.FromDateTime?.DateTimeType
                        },
                        "ToDateTime": {
                            "DateTimeContent": check response?.AssociationObligationorEntitlement?.ArrangementAction?.EventLocation?.LocationStatus?.StatusValidityPeriod?.ToDateTime?.DateTimeContent,
                            "TimeZoneCode": check response?.AssociationObligationorEntitlement?.ArrangementAction?.EventLocation?.LocationStatus?.StatusValidityPeriod?.ToDateTime?.TimeZoneCode,
                            "DaylightSavingIndicator": check response?.AssociationObligationorEntitlement?.ArrangementAction?.EventLocation?.LocationStatus?.StatusValidityPeriod?.ToDateTime?.DaylightSavingIndicator,
                            "DateTimeType": check response?.AssociationObligationorEntitlement?.ArrangementAction?.EventLocation?.LocationStatus?.StatusValidityPeriod?.ToDateTime?.DateTimeType
                        }
                    },
                    "StatusInvolvedPartyReference": {
                        "PartyReference": check response?.AssociationObligationorEntitlement?.ArrangementAction?.EventLocation?.LocationStatus?.StatusInvolvedPartyReference?.PartyReference,
                        "InvolvementReference": check response?.AssociationObligationorEntitlement?.ArrangementAction?.EventLocation?.LocationStatus?.StatusInvolvedPartyReference?.InvolvementReference
                    }
                },
                "LocationType": check response?.AssociationObligationorEntitlement?.ArrangementAction?.EventLocation?.LocationType,
                "LocationZoningType": check response?.AssociationObligationorEntitlement?.ArrangementAction?.EventLocation?.LocationZoningType,
                "LocationNeighborhoodType": check response?.AssociationObligationorEntitlement?.ArrangementAction?.EventLocation?.LocationNeighborhoodType,
                "LocationConstructionType": check response?.AssociationObligationorEntitlement?.ArrangementAction?.EventLocation?.LocationConstructionType,
                "LocationOccupancyType": check response?.AssociationObligationorEntitlement?.ArrangementAction?.EventLocation?.LocationOccupancyType,
                "LocationValue": check response?.AssociationObligationorEntitlement?.ArrangementAction?.EventLocation?.LocationValue,
                "LocationCapacity": check response?.AssociationObligationorEntitlement?.ArrangementAction?.EventLocation?.LocationCapacity,
                "LocationIdentification": {
                    "IdentifierValue": check response?.AssociationObligationorEntitlement?.ArrangementAction?.EventLocation?.LocationIdentification?.IdentifierValue,
                    "IdentifierIssuerReference": {
                        "PartyReference": check response?.AssociationObligationorEntitlement?.ArrangementAction?.EventLocation?.LocationIdentification?.IdentifierIssuerReference?.PartyReference,
                        "InvolvementReference": check response?.AssociationObligationorEntitlement?.ArrangementAction?.EventLocation?.LocationIdentification?.IdentifierIssuerReference?.InvolvementReference
                    },
                    "IdentifierStartDate": {
                        "DateTimeContent": check response?.AssociationObligationorEntitlement?.ArrangementAction?.EventLocation?.LocationIdentification?.IdentifierStartDate?.DateTimeContent,
                        "TimeZoneCode": check response?.AssociationObligationorEntitlement?.ArrangementAction?.EventLocation?.LocationIdentification?.IdentifierStartDate?.TimeZoneCode,
                        "DaylightSavingIndicator": check response?.AssociationObligationorEntitlement?.ArrangementAction?.EventLocation?.LocationIdentification?.IdentifierStartDate?.DaylightSavingIndicator,
                        "DateTimeType": check response?.AssociationObligationorEntitlement?.ArrangementAction?.EventLocation?.LocationIdentification?.IdentifierStartDate?.DateTimeType
                    },
                    "IdentifierEndDate": {
                        "DateTimeContent": check response?.AssociationObligationorEntitlement?.ArrangementAction?.EventLocation?.LocationIdentification?.IdentifierEndDate?.DateTimeContent,
                        "TimeZoneCode": check response?.AssociationObligationorEntitlement?.ArrangementAction?.EventLocation?.LocationIdentification?.IdentifierEndDate?.TimeZoneCode,
                        "DaylightSavingIndicator": check response?.AssociationObligationorEntitlement?.ArrangementAction?.EventLocation?.LocationIdentification?.IdentifierEndDate?.DaylightSavingIndicator,
                        "DateTimeType": check response?.AssociationObligationorEntitlement?.ArrangementAction?.EventLocation?.LocationIdentification?.IdentifierEndDate?.DateTimeType
                    }
                },
                "LocationAddress": check response?.AssociationObligationorEntitlement?.ArrangementAction?.EventLocation?.LocationAddress,
                "LocationName": {
                    "Name": check response?.AssociationObligationorEntitlement?.ArrangementAction?.EventLocation?.LocationName?.Name
                },
                "LocationTimeZone": check response?.AssociationObligationorEntitlement?.ArrangementAction?.EventLocation?.LocationTimeZone
            },
            "EventAction": check response?.AssociationObligationorEntitlement?.ArrangementAction?.EventAction,
            "EventStatus": {
                "StatusReason": check response?.AssociationObligationorEntitlement?.ArrangementAction?.EventStatus?.StatusReason,
                "StatusDateTime": {
                    "DateTimeContent": check response?.AssociationObligationorEntitlement?.ArrangementAction?.EventStatus?.StatusDateTime?.DateTimeContent,
                    "TimeZoneCode": check response?.AssociationObligationorEntitlement?.ArrangementAction?.EventStatus?.StatusDateTime?.TimeZoneCode,
                    "DaylightSavingIndicator": check response?.AssociationObligationorEntitlement?.ArrangementAction?.EventStatus?.StatusDateTime?.DaylightSavingIndicator,
                    "DateTimeType": check response?.AssociationObligationorEntitlement?.ArrangementAction?.EventStatus?.StatusDateTime?.DateTimeType
                },
                "StatusValidityPeriod": {
                    "FromDateTime": {
                        "DateTimeContent": check response?.AssociationObligationorEntitlement?.ArrangementAction?.EventStatus?.StatusValidityPeriod?.FromDateTime?.DateTimeContent,
                        "TimeZoneCode": check response?.AssociationObligationorEntitlement?.ArrangementAction?.EventStatus?.StatusValidityPeriod?.FromDateTime?.TimeZoneCode,
                        "DaylightSavingIndicator": check response?.AssociationObligationorEntitlement?.ArrangementAction?.EventStatus?.StatusValidityPeriod?.FromDateTime?.DaylightSavingIndicator,
                        "DateTimeType": check response?.AssociationObligationorEntitlement?.ArrangementAction?.EventStatus?.StatusValidityPeriod?.FromDateTime?.DateTimeType
                    },
                    "ToDateTime": {
                        "DateTimeContent": check response?.AssociationObligationorEntitlement?.ArrangementAction?.EventStatus?.StatusValidityPeriod?.ToDateTime?.DateTimeContent,
                        "TimeZoneCode": check response?.AssociationObligationorEntitlement?.ArrangementAction?.EventStatus?.StatusValidityPeriod?.ToDateTime?.TimeZoneCode,
                        "DaylightSavingIndicator": check response?.AssociationObligationorEntitlement?.ArrangementAction?.EventStatus?.StatusValidityPeriod?.ToDateTime?.DaylightSavingIndicator,
                        "DateTimeType": check response?.AssociationObligationorEntitlement?.ArrangementAction?.EventStatus?.StatusValidityPeriod?.ToDateTime?.DateTimeType
                    }
                },
                "StatusInvolvedPartyReference": {
                    "PartyReference": check response?.AssociationObligationorEntitlement?.ArrangementAction?.EventStatus?.StatusInvolvedPartyReference?.PartyReference,
                    "InvolvementReference": check response?.AssociationObligationorEntitlement?.ArrangementAction?.EventStatus?.StatusInvolvedPartyReference?.InvolvementReference
                }
            },
            "EventValue": check response?.AssociationObligationorEntitlement?.ArrangementAction?.EventValue,
            "EventValidityPeriod": {
                "FromDateTime": {
                    "DateTimeContent": check response?.AssociationObligationorEntitlement?.ArrangementAction?.EventValidityPeriod?.FromDateTime?.DateTimeContent,
                    "TimeZoneCode": check response?.AssociationObligationorEntitlement?.ArrangementAction?.EventValidityPeriod?.FromDateTime?.TimeZoneCode,
                    "DaylightSavingIndicator": check response?.AssociationObligationorEntitlement?.ArrangementAction?.EventValidityPeriod?.FromDateTime?.DaylightSavingIndicator,
                    "DateTimeType": check response?.AssociationObligationorEntitlement?.ArrangementAction?.EventValidityPeriod?.FromDateTime?.DateTimeType
                },
                "ToDateTime": {
                    "DateTimeContent": check response?.AssociationObligationorEntitlement?.ArrangementAction?.EventValidityPeriod?.ToDateTime?.DateTimeContent,
                    "TimeZoneCode": check response?.AssociationObligationorEntitlement?.ArrangementAction?.EventValidityPeriod?.ToDateTime?.TimeZoneCode,
                    "DaylightSavingIndicator": check response?.AssociationObligationorEntitlement?.ArrangementAction?.EventValidityPeriod?.ToDateTime?.DaylightSavingIndicator,
                    "DateTimeType": check response?.AssociationObligationorEntitlement?.ArrangementAction?.EventValidityPeriod?.ToDateTime?.DateTimeType
                }
            },
            "EventIdentification": {
                "IdentifierValue": check response?.AssociationObligationorEntitlement?.ArrangementAction?.EventIdentification?.IdentifierValue,
                "IdentifierIssuerReference": {
                    "PartyReference": check response?.AssociationObligationorEntitlement?.ArrangementAction?.EventIdentification?.IdentifierIssuerReference?.PartyReference,
                    "InvolvementReference": check response?.AssociationObligationorEntitlement?.ArrangementAction?.EventIdentification?.IdentifierIssuerReference?.InvolvementReference
                },
                "IdentifierStartDate": {
                    "DateTimeContent": check response?.AssociationObligationorEntitlement?.ArrangementAction?.EventIdentification?.IdentifierStartDate?.DateTimeContent,
                    "TimeZoneCode": check response?.AssociationObligationorEntitlement?.ArrangementAction?.EventIdentification?.IdentifierStartDate?.TimeZoneCode,
                    "DaylightSavingIndicator": check response?.AssociationObligationorEntitlement?.ArrangementAction?.EventIdentification?.IdentifierStartDate?.DaylightSavingIndicator,
                    "DateTimeType": check response?.AssociationObligationorEntitlement?.ArrangementAction?.EventIdentification?.IdentifierStartDate?.DateTimeType
                },
                "IdentifierEndDate": {
                    "DateTimeContent": check response?.AssociationObligationorEntitlement?.ArrangementAction?.EventIdentification?.IdentifierEndDate?.DateTimeContent,
                    "TimeZoneCode": check response?.AssociationObligationorEntitlement?.ArrangementAction?.EventIdentification?.IdentifierEndDate?.TimeZoneCode,
                    "DaylightSavingIndicator": check response?.AssociationObligationorEntitlement?.ArrangementAction?.EventIdentification?.IdentifierEndDate?.DaylightSavingIndicator,
                    "DateTimeType": check response?.AssociationObligationorEntitlement?.ArrangementAction?.EventIdentification?.IdentifierEndDate?.DateTimeType
                }
            }
        },
        "ArrangementStartDate": {
            "DateTimeContent": check response?.AssociationObligationorEntitlement?.ArrangementStartDate?.DateTimeContent,
            "TimeZoneCode": check response?.AssociationObligationorEntitlement?.ArrangementStartDate?.TimeZoneCode,
            "DaylightSavingIndicator": check response?.AssociationObligationorEntitlement?.ArrangementStartDate?.DaylightSavingIndicator,
            "DateTimeType": check response?.AssociationObligationorEntitlement?.ArrangementStartDate?.DateTimeType
        },
        "ArrangementEndDate": {
            "DateTimeContent": check response?.AssociationObligationorEntitlement?.ArrangementEndDate?.DateTimeContent,
            "TimeZoneCode": check response?.AssociationObligationorEntitlement?.ArrangementEndDate?.TimeZoneCode,
            "DaylightSavingIndicator": check response?.AssociationObligationorEntitlement?.ArrangementEndDate?.DaylightSavingIndicator,
            "DateTimeType": check response?.AssociationObligationorEntitlement?.ArrangementEndDate?.DateTimeType
        },
        "ArrangementStatus": {
            "ArrangementStatus": {
                "StatusReason": check response?.AssociationObligationorEntitlement?.ArrangementStatus?.ArrangementStatus?.StatusReason,
                "StatusDateTime": {
                    "DateTimeContent": check response?.AssociationObligationorEntitlement?.ArrangementStatus?.ArrangementStatus?.StatusDateTime?.DateTimeContent,
                    "TimeZoneCode": check response?.AssociationObligationorEntitlement?.ArrangementStatus?.ArrangementStatus?.StatusDateTime?.TimeZoneCode,
                    "DaylightSavingIndicator": check response?.AssociationObligationorEntitlement?.ArrangementStatus?.ArrangementStatus?.StatusDateTime?.DaylightSavingIndicator,
                    "DateTimeType": check response?.AssociationObligationorEntitlement?.ArrangementStatus?.ArrangementStatus?.StatusDateTime?.DateTimeType
                },
                "StatusValidityPeriod": {
                    "FromDateTime": {
                        "DateTimeContent": check response?.AssociationObligationorEntitlement?.ArrangementStatus?.ArrangementStatus?.StatusValidityPeriod?.FromDateTime?.DateTimeContent,
                        "TimeZoneCode": check response?.AssociationObligationorEntitlement?.ArrangementStatus?.ArrangementStatus?.StatusValidityPeriod?.FromDateTime?.TimeZoneCode,
                        "DaylightSavingIndicator": check response?.AssociationObligationorEntitlement?.ArrangementStatus?.ArrangementStatus?.StatusValidityPeriod?.FromDateTime?.DaylightSavingIndicator,
                        "DateTimeType": check response?.AssociationObligationorEntitlement?.ArrangementStatus?.ArrangementStatus?.StatusValidityPeriod?.FromDateTime?.DateTimeType
                    },
                    "ToDateTime": {
                        "DateTimeContent": check response?.AssociationObligationorEntitlement?.ArrangementStatus?.ArrangementStatus?.StatusValidityPeriod?.ToDateTime?.DateTimeContent,
                        "TimeZoneCode": check response?.AssociationObligationorEntitlement?.ArrangementStatus?.ArrangementStatus?.StatusValidityPeriod?.ToDateTime?.TimeZoneCode,
                        "DaylightSavingIndicator": check response?.AssociationObligationorEntitlement?.ArrangementStatus?.ArrangementStatus?.StatusValidityPeriod?.ToDateTime?.DaylightSavingIndicator,
                        "DateTimeType": check response?.AssociationObligationorEntitlement?.ArrangementStatus?.ArrangementStatus?.StatusValidityPeriod?.ToDateTime?.DateTimeType
                    }
                },
                "StatusInvolvedPartyReference": {
                    "PartyReference": check response?.AssociationObligationorEntitlement?.ArrangementStatus?.ArrangementStatus?.StatusInvolvedPartyReference?.PartyReference,
                    "InvolvementReference": check response?.AssociationObligationorEntitlement?.ArrangementStatus?.ArrangementStatus?.StatusInvolvedPartyReference?.InvolvementReference
                }
            },
            "ArrangementStatusType": check response?.AssociationObligationorEntitlement?.ArrangementStatus?.ArrangementStatusType
        },
        "ArrangementSubjectMatter": {
            "Subject": check response?.AssociationObligationorEntitlement?.ArrangementSubjectMatter?.Subject
        },
        "Arrangementtype": check response?.AssociationObligationorEntitlement?.Arrangementtype,
        "ArrangementIdentification": {
            "IdentifierValue": check response?.AssociationObligationorEntitlement?.ArrangementIdentification?.IdentifierValue,
            "IdentifierIssuerReference": {
                "PartyReference": check response?.AssociationObligationorEntitlement?.ArrangementIdentification?.IdentifierIssuerReference?.PartyReference,
                "InvolvementReference": check response?.AssociationObligationorEntitlement?.ArrangementIdentification?.IdentifierIssuerReference?.InvolvementReference
            },
            "IdentifierStartDate": {
                "DateTimeContent": check response?.AssociationObligationorEntitlement?.ArrangementIdentification?.IdentifierStartDate?.DateTimeContent,
                "TimeZoneCode": check response?.AssociationObligationorEntitlement?.ArrangementIdentification?.IdentifierStartDate?.TimeZoneCode,
                "DaylightSavingIndicator": check response?.AssociationObligationorEntitlement?.ArrangementIdentification?.IdentifierStartDate?.DaylightSavingIndicator,
                "DateTimeType": check response?.AssociationObligationorEntitlement?.ArrangementIdentification?.IdentifierStartDate?.DateTimeType
            },
            "IdentifierEndDate": {
                "DateTimeContent": check response?.AssociationObligationorEntitlement?.ArrangementIdentification?.IdentifierEndDate?.DateTimeContent,
                "TimeZoneCode": check response?.AssociationObligationorEntitlement?.ArrangementIdentification?.IdentifierEndDate?.TimeZoneCode,
                "DaylightSavingIndicator": check response?.AssociationObligationorEntitlement?.ArrangementIdentification?.IdentifierEndDate?.DaylightSavingIndicator,
                "DateTimeType": check response?.AssociationObligationorEntitlement?.ArrangementIdentification?.IdentifierEndDate?.DateTimeType
            }
        },
        "SavingsAccountArrangementType": check response?.AssociationObligationorEntitlement?.SavingsAccountArrangementType,
        "SavingsAccountArrangementProductFeatureType": {
            "ProductFeatureTypeValues": check response?.AssociationObligationorEntitlement?.SavingsAccountArrangementProductFeatureType?.ProductFeatureTypeValues
        },
        "TermDepositArrangementType": check response?.AssociationObligationorEntitlement?.TermDepositArrangementType,
        "TermDepositArrangementProductFeatureType": {
            "ProductFeatureTypeValues": check response?.AssociationObligationorEntitlement?.TermDepositArrangementProductFeatureType?.ProductFeatureTypeValues
        },
        "TermDepositMaturityDate": {
            "DateTimeContent": check response?.AssociationObligationorEntitlement?.TermDepositMaturityDate?.DateTimeContent,
            "TimeZoneCode": check response?.AssociationObligationorEntitlement?.TermDepositMaturityDate?.TimeZoneCode,
            "DaylightSavingIndicator": check response?.AssociationObligationorEntitlement?.TermDepositMaturityDate?.DaylightSavingIndicator,
            "DateTimeType": check response?.AssociationObligationorEntitlement?.TermDepositMaturityDate?.DateTimeType
        },
        "TermDepositOpenDate": {
            "DateTimeContent": check response?.AssociationObligationorEntitlement?.TermDepositOpenDate?.DateTimeContent,
            "TimeZoneCode": check response?.AssociationObligationorEntitlement?.TermDepositOpenDate?.TimeZoneCode,
            "DaylightSavingIndicator": check response?.AssociationObligationorEntitlement?.TermDepositOpenDate?.DaylightSavingIndicator,
            "DateTimeType": check response?.AssociationObligationorEntitlement?.TermDepositOpenDate?.DateTimeType
        },
        "TermDepositAmount": {
            "AmountValue": check response?.AssociationObligationorEntitlement?.TermDepositAmount?.AmountValue,
            "AmountCurrency": {
                "Currencycode": check response?.AssociationObligationorEntitlement?.TermDepositAmount?.AmountCurrency?.Currencycode
            },
            "DecimalPointPosition": check response?.AssociationObligationorEntitlement?.TermDepositAmount?.DecimalPointPosition,
            "AmountType": check response?.AssociationObligationorEntitlement?.TermDepositAmount?.AmountType
        },
        "TermDepositDuration": {
            "Duration": check response?.AssociationObligationorEntitlement?.TermDepositDuration?.Duration
        },
        "DepositTerm": check response?.AssociationObligationorEntitlement?.DepositTerm
    },
    "AssociationReference": {
        "PartyName": {
            "Name": check response?.AssociationReference?.PartyName?.Name
        },
        "PartyType": check response?.AssociationReference?.PartyType,
        "PartyDateTime": {
            //   "DateTimeContent": "string",
            //   "TimeZoneCode": "string",
            //   "DaylightSavingIndicator": "string",
            "DateTimeType": check response?.AssociationReference?.DateTimeType
        },
        "PartyIdentification": {
            "PartyIdentificationType": check response?.AssociationReference?.PartyIdentification?.PartyIdentificationType,
            "PartyIdentification": {
                // "IdentifierValue": "string",
                "IdentifierIssuerReference": {
                    "PartyReference": check response?.AssociationReference?.PartyIdentification?.PartyIdentification?.IdentifierIssuerReference?.PartyReference,
                    "InvolvementReference": check response?.AssociationReference?.PartyIdentification?.PartyIdentification?.IdentifierIssuerReference?.InvolvementReference
                },
                "IdentifierStartDate": {
                    //   "DateTimeContent": "string",
                    //   "TimeZoneCode": "string",
                    //   "DaylightSavingIndicator": "string",
                    "DateTimeType": check response?.AssociationReference?.PartyIdentification?.PartyIdentification?.DateTimeType
                },
                "IdentifierEndDate": {
                    //   "DateTimeContent": "string",
                    //   "TimeZoneCode": "string",
                    //   "DaylightSavingIndicator": "string",
                    "DateTimeType": check response?.AssociationReference?.PartyIdentification?.PartyIdentification?.DateTimeType
                }
            }
        },
        "PartyLegalStructureType": check response?.AssociationReference?.PartyLegalStructureType,
        "PartyActivityIndicator": {
            "Industrycode": check response?.AssociationReference?.PartyActivityIndicator?.Industrycode
        }
    },
    "LinkedAccounts": {
        "AccountStatus": {
            "AccountStatus": {
                // "StatusReason": "string",
                "StatusDateTime": {
                    //   "DateTimeContent": "string",
                    //   "TimeZoneCode": "string",
                    //   "DaylightSavingIndicator": "string",
                    "DateTimeType": check response?.LinkedAccounts?.AccountStatus?.AccountStatus?.DateTimeType
                },
                "StatusValidityPeriod": {
                    "FromDateTime": {
                        // "DateTimeContent": "string",
                        // "TimeZoneCode": "string",
                        // "DaylightSavingIndicator": "string",
                        "DateTimeType": check response?.LinkedAccounts?.AccountStatus?.AccountStatus?.StatusValidityPeriod?.FromDateTime?.DateTimeType
                    },
                    "ToDateTime": {
                        // "DateTimeContent": "string",
                        // "TimeZoneCode": "string",
                        // "DaylightSavingIndicator": "string",
                        "DateTimeType": check response?.LinkedAccounts?.AccountStatus?.AccountStatus?.StatusValidityPeriod?.ToDateTime?.DateTimeType
                    }
                },
                "StatusInvolvedPartyReference": {
                    "PartyReference": check response?.LinkedAccounts?.AccountStatus?.AccountStatus?.StatusInvolvedPartyReference?.PartyReference,
                    "InvolvementReference": check response?.LinkedAccounts?.AccountStatus?.AccountStatus?.StatusInvolvedPartyReference?.InvolvementReference
                }
            },
            "AccountStatusType": check response?.LinkedAccounts?.AccountStatus?.AccountStatusType
        },
        "AccountIdentification": {
            "AccountIdentificationType": check response?.LinkedAccounts?.AccountIdentification?.AccountIdentificationType,
            "AccountIdentification": {
                // "IdentifierValue": "string",
                "IdentifierIssuerReference": {
                    "PartyReference": check response?.LinkedAccounts?.AccountIdentification?.AccountIdentification?.IdentifierIssuerReference?.PartyReference,
                    "InvolvementReference": check response?.LinkedAccounts?.AccountIdentification?.AccountIdentification?.IdentifierIssuerReference?.InvolvementReference
                },
                "IdentifierStartDate": {
                    //   "DateTimeContent": "string",
                    //   "TimeZoneCode": "string",
                    //   "DaylightSavingIndicator": "string",
                    "DateTimeType": check response?.LinkedAccounts?.AccountIdentification?.AccountIdentification?.DateTimeType
                },
                "IdentifierEndDate": {
                    //   "DateTimeContent": "string",
                    //   "TimeZoneCode": "string",
                    //   "DaylightSavingIndicator": "string",
                    "DateTimeType": check response?.LinkedAccounts?.AccountIdentification?.AccountIdentification?.DateTimeType
                }
            }
        },
        "AccountDate": {
            "AccountDateType": check response?.LinkedAccounts?.AccountDate?.AccountDateType,
            "AccountDate": {
                // "DateTimeContent": "string",
                // "TimeZoneCode": "string",
                // "DaylightSavingIndicator": "string",
                "DateTimeType": check response?.LinkedAccounts?.AccountDate?.AccountDate?.DateTimeType
            }
        },
        "AccountType": check response?.LinkedAccounts?.AccountType,
        // "AccountPurpose": "string",
        "AccountBalance": {
            "BalanceAmount": {
                // "AmountValue": "string",
                "AmountCurrency": {
                    "Currencycode": check response?.LinkedAccounts?.AccountBalance?.BalanceAmount?.AmountCurrency?.Currencycode
                },
                // "DecimalPointPosition": "string",
                "AmountType": check response?.LinkedAccounts?.AccountBalance?.BalanceAmount?.AmountType
            },
            "BalanceType": check response?.LinkedAccounts?.AccountBalance?.BalanceType,
            "BalanceValueDate": {
                // "DateTimeContent": "string",
                // "TimeZoneCode": "string",
                // "DaylightSavingIndicator": "string",
                "DateTimeType": check response?.LinkedAccounts?.AccountBalance?.BalanceValueDate?.DateTimeType
            },
            "BalanceIndicator": check response?.LinkedAccounts?.AccountBalance?.BalanceIndicator,
            "BalanceCounterpartyType": check response?.LinkedAccounts?.AccountBalance?.BalanceCounterpartyType,
            "BalanceCalculationDate": {
                // "DateTimeContent": "string",
                // "TimeZoneCode": "string",
                // "DaylightSavingIndicator": "string",
                "DateTimeType": check response?.LinkedAccounts?.AccountBalance?.BalanceCalculationDate?.DateTimeType
            },
            "BalanceSubType": check response?.LinkedAccounts?.AccountBalance?.BalanceSubType
        },
        "AccountCurrency": {
            "AccountCurrencyType": check response?.LinkedAccounts?.AccountCurrency?.AccountCurrencyType,
            "AccountCurrency": {
                "Currencycode": check response?.LinkedAccounts?.AccountCurrency?.AccountCurrency?.Currencycode
            }
        },
        // "AccountDescription": "string",
        "AccountName": {
            "Name": check response?.LinkedAccounts?.AccountName?.Name
        },
        "LogType": check response?.LinkedAccounts?.LogType,
        "LogPeriod": {
            "FromDateTime": {
                "DateTimeContent": check response?.LinkedAccounts?.LogPeriod?.FromDateTime?.DateTimeContent,
                "TimeZoneCode": check response?.LinkedAccounts?.LogPeriod?.FromDateTime?.TimeZoneCode,
                "DaylightSavingIndicator": check response?.LinkedAccounts?.LogPeriod?.FromDateTime?.DaylightSavingIndicator,
                "DateTimeType": check response?.LinkedAccounts?.LogPeriod?.FromDateTime?.DateTimeType
            },
            "ToDateTime": {
                "DateTimeContent": check response?.LinkedAccounts?.LogPeriod?.ToDateTime?.DateTimeContent,
                "TimeZoneCode": check response?.LinkedAccounts?.LogPeriod?.ToDateTime?.TimeZoneCode,
                "DaylightSavingIndicator": check response?.LinkedAccounts?.LogPeriod?.ToDateTime?.DaylightSavingIndicator,
                "DateTimeType": check response?.LinkedAccounts?.LogPeriod?.ToDateTime?.DateTimeType
            }
        },
        "LogDate": {
            "DateTimeContent": check response?.LinkedAccounts?.LogDate?.DateTimeContent,
            "TimeZoneCode": check response?.LinkedAccounts?.LogDate?.TimeZoneCode,
            "DaylightSavingIndicator": check response?.LinkedAccounts?.LogDate?.DaylightSavingIndicator,
            "DateTimeType": check response?.LinkedAccounts?.LogDate?.DateTimeType
        },
        "LogIdentification": {
            "IdentifierValue": check response?.LinkedAccounts?.LogIdentification?.IdentifierValue,
            "IdentifierIssuerReference": {
                "PartyReference": check response?.LinkedAccounts?.LogIdentification?.IdentifierIssuerReference?.PartyReference,
                "InvolvementReference": check response?.LinkedAccounts?.LogIdentification?.IdentifierIssuerReference?.InvolvementReference
            },
            "IdentifierStartDate": {
                "DateTimeContent": check response?.LinkedAccounts?.LogIdentification?.IdentifierStartDate?.DateTimeContent,
                "TimeZoneCode": check response?.LinkedAccounts?.LogIdentification?.IdentifierStartDate?.TimeZoneCode,
                "DaylightSavingIndicator": check response?.LinkedAccounts?.LogIdentification?.IdentifierStartDate?.DaylightSavingIndicator,
                "DateTimeType": check response?.LinkedAccounts?.LogIdentification?.IdentifierStartDate?.DateTimeType
            },
            "IdentifierEndDate": {
                "DateTimeContent": check response?.LinkedAccounts?.LogIdentification?.IdentifierEndDate?.DateTimeContent,
                "TimeZoneCode": check response?.LinkedAccounts?.LogIdentification?.IdentifierEndDate?.TimeZoneCode,
                "DaylightSavingIndicator": check response?.LinkedAccounts?.LogIdentification?.IdentifierEndDate?.DaylightSavingIndicator,
                "DateTimeType": check response?.LinkedAccounts?.LogIdentification?.IdentifierEndDate?.DateTimeType
            }
        }
    },
    "LinkType": check response?.LinkType,
    "AccountDetails": {
        "AccountStatus": {
            "AccountStatus": {
                // "StatusReason": "string",
                "StatusDateTime": {
                    //   "DateTimeContent": "string",
                    //   "TimeZoneCode": "string",
                    //   "DaylightSavingIndicator": "string",
                    "DateTimeType": check response?.AccountDetails?.AccountStatus?.AccountStatus?.DateTimeType
                },
                "StatusValidityPeriod": {
                    "FromDateTime": {
                        // "DateTimeContent": "string",
                        // "TimeZoneCode": "string",
                        // "DaylightSavingIndicator": "string",
                        "DateTimeType": check response?.AccountDetails?.AccountStatus?.AccountStatus?.StatusValidityPeriod?.FromDateTime?.DateTimeType
                    },
                    "ToDateTime": {
                        // "DateTimeContent": "string",
                        // "TimeZoneCode": "string",
                        // "DaylightSavingIndicator": "string",
                        "DateTimeType": check response?.AccountDetails?.AccountStatus?.AccountStatus?.StatusValidityPeriod?.ToDateTime?.DateTimeType
                    }
                },
                "StatusInvolvedPartyReference": {
                    "PartyReference": check response?.AccountDetails?.AccountStatus?.AccountStatus?.StatusInvolvedPartyReference?.PartyReference,
                    "InvolvementReference": check response?.AccountDetails?.AccountStatus?.AccountStatus?.StatusInvolvedPartyReference?.InvolvementReference
                }
            },
            "AccountStatusType": check response?.AccountDetails?.AccountStatus?.AccountStatusType
        },
        "AccountIdentification": {
            "AccountIdentificationType": check response?.AccountDetails?.AccountIdentification?.AccountIdentificationType,
            "AccountIdentification": {
                // "IdentifierValue": "string",
                "IdentifierIssuerReference": {
                    "PartyReference": check response?.AccountDetails?.AccountIdentification?.AccountIdentification?.IdentifierIssuerReference?.PartyReference,
                    "InvolvementReference": check response?.AccountDetails?.AccountIdentification?.AccountIdentification?.IdentifierIssuerReference?.InvolvementReference
                },
                "IdentifierStartDate": {
                    //   "DateTimeContent": "string",
                    //   "TimeZoneCode": "string",
                    //   "DaylightSavingIndicator": "string",
                    "DateTimeType": check response?.AccountDetails?.AccountIdentification?.AccountIdentification?.DateTimeType
                },
                "IdentifierEndDate": {
                    //   "DateTimeContent": "string",
                    //   "TimeZoneCode": "string",
                    //   "DaylightSavingIndicator": "string",
                    "DateTimeType": check response?.AccountDetails?.AccountIdentification?.AccountIdentification?.DateTimeType
                }
            }
        },
        "AccountDate": {
            "AccountDateType": check response?.AccountDetails?.AccountDate?.AccountDateType,
            "AccountDate": {
                // "DateTimeContent": "string",
                // "TimeZoneCode": "string",
                // "DaylightSavingIndicator": "string",
                "DateTimeType": check response?.AccountDetails?.AccountDate?.AccountDate?.DateTimeType
            }
        },
        "AccountType": check response?.AccountDetails?.AccountType,
        // "AccountPurpose": "string",
        "AccountBalance": {
            "BalanceAmount": {
                // "AmountValue": "string",
                "AmountCurrency": {
                    "Currencycode": check response?.AccountDetails?.AccountBalance?.BalanceAmount?.AmountCurrency?.Currencycode
                },
                // "DecimalPointPosition": "string",
                "AmountType": check response?.AccountDetails?.AccountBalance?.BalanceAmount?.AmountType
            },
            "BalanceType": check response?.AccountDetails?.AccountBalance?.BalanceType,
            "BalanceValueDate": {
                // "DateTimeContent": "string",
                // "TimeZoneCode": "string",
                // "DaylightSavingIndicator": "string",
                "DateTimeType": check response?.AccountDetails?.AccountBalance?.BalanceValueDate?.DateTimeType
            },
            "BalanceIndicator": check response?.AccountDetails?.AccountBalance?.BalanceIndicator,
            "BalanceCounterpartyType": check response?.AccountDetails?.AccountBalance?.BalanceCounterpartyType,
            "BalanceCalculationDate": {
                // "DateTimeContent": "string",
                // "TimeZoneCode": "string",
                // "DaylightSavingIndicator": "string",
                "DateTimeType": check response?.AccountDetails?.AccountBalance?.BalanceCalculationDate?.DateTimeType
            },
            "BalanceSubType": check response?.AccountDetails?.AccountBalance?.BalanceSubType
        },
        "AccountCurrency": {
            "AccountCurrencyType": check response?.AccountDetails?.AccountCurrency?.AccountCurrencyType,
            "AccountCurrency": {
                "Currencycode": check response?.AccountDetails?.AccountCurrency?.AccountCurrency?.Currencycode
            }
        },
        // "AccountDescription": "string",
        "AccountName": {
            "Name": check response?.AccountDetails?.AccountName?.Name
        },
        "LogType": check response?.AccountDetails?.LogType,
        "LogPeriod": {
            "FromDateTime": {
                "DateTimeContent": check response?.AccountDetails?.LogPeriod?.FromDateTime?.DateTimeContent,
                "TimeZoneCode": check response?.AccountDetails?.LogPeriod?.FromDateTime?.TimeZoneCode,
                "DaylightSavingIndicator": check response?.AccountDetails?.LogPeriod?.FromDateTime?.DaylightSavingIndicator,
                "DateTimeType": check response?.AccountDetails?.LogPeriod?.FromDateTime?.DateTimeType
            },
            "ToDateTime": {
                "DateTimeContent": check response?.AccountDetails?.LogPeriod?.ToDateTime?.DateTimeContent,
                "TimeZoneCode": check response?.AccountDetails?.LogPeriod?.ToDateTime?.TimeZoneCode,
                "DaylightSavingIndicator": check response?.AccountDetails?.LogPeriod?.ToDateTime?.DaylightSavingIndicator,
                "DateTimeType": check response?.AccountDetails?.LogPeriod?.ToDateTime?.DateTimeType
            }
        },
        "LogDate": {
            "DateTimeContent": check response?.AccountDetails?.LogDate?.DateTimeContent,
            "TimeZoneCode": check response?.AccountDetails?.LogDate?.TimeZoneCode,
            "DaylightSavingIndicator": check response?.AccountDetails?.LogDate?.DaylightSavingIndicator,
            "DateTimeType": check response?.AccountDetails?.LogDate?.DateTimeType
        },
        "LogIdentification": {
            "IdentifierValue": check response?.AccountDetails?.LogIdentification?.IdentifierValue,
            "IdentifierIssuerReference": {
                "PartyReference": check response?.AccountDetails?.LogIdentification?.IdentifierIssuerReference?.PartyReference,
                "InvolvementReference": check response?.AccountDetails?.LogIdentification?.IdentifierIssuerReference?.InvolvementReference
            },
            "IdentifierStartDate": {
                "DateTimeContent": check response?.AccountDetails?.LogIdentification?.IdentifierStartDate?.DateTimeContent,
                "TimeZoneCode": check response?.AccountDetails?.LogIdentification?.IdentifierStartDate?.TimeZoneCode,
                "DaylightSavingIndicator": check response?.AccountDetails?.LogIdentification?.IdentifierStartDate?.DaylightSavingIndicator,
                "DateTimeType": check response?.AccountDetails?.LogIdentification?.IdentifierStartDate?.DateTimeType
            },
            "IdentifierEndDate": {
                "DateTimeContent": check response?.AccountDetails?.LogIdentification?.IdentifierEndDate?.DateTimeContent,
                "TimeZoneCode": check response?.AccountDetails?.LogIdentification?.IdentifierEndDate?.TimeZoneCode,
                "DaylightSavingIndicator": check response?.AccountDetails?.LogIdentification?.IdentifierEndDate?.DaylightSavingIndicator,
                "DateTimeType": check response?.AccountDetails?.LogIdentification?.IdentifierEndDate?.DateTimeType
            }
        }
    },
    "LimitType": check response?.LimitType,
    "LimitSettings": {
        "LimitType": check response?.LimitSettings?.LimitType,
        "LimitCurrency": {
            "Currencycode": check response?.LimitSettings?.LimitCurrency?.Currencycode
        },
        "LimitValidityPeriod": {
            "FromDateTime": {
                // "DateTimeContent": "string",
                // "TimeZoneCode": "string",
                // "DaylightSavingIndicator": "string",
                "DateTimeType": check response?.LimitSettings?.LimitValidityPeriod?.FromDateTime?.DateTimeType
            },
            "ToDateTime": {
                // "DateTimeContent": "string",
                // "TimeZoneCode": "string",
                // "DaylightSavingIndicator": "string",
                "DateTimeType": check response?.LimitSettings?.LimitValidityPeriod?.ToDateTime?.DateTimeType
            }
        },
        "LimitAmount": {
            //   "AmountValue": "string",
            "AmountCurrency": {
                "Currencycode": check response?.LimitSettings?.AmountCurrency?.Currencycode
            },
            //   "DecimalPointPosition": "string",
            "AmountType": check response?.LimitSettings?.AmountType
        },
        "LimitStatus": {
            "LimitStatus": {
                // "StatusReason": "string",
                "StatusDateTime": {
                    //   "DateTimeContent": "string",
                    //   "TimeZoneCode": "string",
                    //   "DaylightSavingIndicator": "string",
                    "DateTimeType": check response?.LimitSettings?.LimitStatus?.LimitStatus?.DateTimeType
                },
                "StatusValidityPeriod": {
                    "FromDateTime": {
                        // "DateTimeContent": "string",
                        // "TimeZoneCode": "string",
                        // "DaylightSavingIndicator": "string",
                        "DateTimeType": check response?.LimitSettings?.LimitStatus?.LimitStatus?.StatusValidityPeriod?.FromDateTime?.DateTimeType
                    },
                    "ToDateTime": {
                        // "DateTimeContent": "string",
                        // "TimeZoneCode": "string",
                        // "DaylightSavingIndicator": "string",
                        "DateTimeType": check response?.LimitSettings?.LimitStatus?.LimitStatus?.StatusValidityPeriod?.ToDateTime?.DateTimeType
                    }
                },
                "StatusInvolvedPartyReference": {
                    "PartyReference": check response?.LimitSettings?.LimitStatus?.LimitStatus?.StatusInvolvedPartyReference?.PartyReference,
                    "InvolvementReference": check response?.LimitSettings?.LimitStatus?.LimitStatus?.StatusInvolvedPartyReference?.InvolvementReference
                }
            },
            "LimitStatusType": check response?.LimitSettings?.LimitStatus?.LimitStatusType
        },
        "LimitRate": {
            //   "RateValue": "string",
            //   "RateUnit": "string",
            "RatePeriod": {
                "FromDateTime": {
                    //   "DateTimeContent": "string",
                    //   "TimeZoneCode": "string",
                    //   "DaylightSavingIndicator": "string",
                    "DateTimeType": check response?.LimitSettings?.RatePeriod?.DateTimeType
                },
                "ToDateTime": {
                    //   "DateTimeContent": "string",
                    //   "TimeZoneCode": "string",
                    //   "DaylightSavingIndicator": "string",
                    "DateTimeType": check response?.LimitSettings?.RatePeriod?.DateTimeType
                }
            }
            //   "RateCapitalUnit": "string"
        },
        "LimitFrequency": {
            "FrequencyCode": check response?.LimitSettings?.LimitFrequency?.FrequencyCode,
            "FrequencyName": {
                "Name": check response?.LimitSettings?.LimitFrequency?.FrequencyName?.Name
            }
            //   "FrequencyDefinition": "string"
        },
        "LimitIdentification": {
            //   "IdentifierValue": "string",
            "IdentifierIssuerReference": {
                "PartyReference": check response?.LimitSettings?.IdentifierIssuerReference?.PartyReference,
                "InvolvementReference": check response?.LimitSettings?.IdentifierIssuerReference?.InvolvementReference
            },
            "IdentifierStartDate": {
                // "DateTimeContent": "string",
                // "TimeZoneCode": "string",
                // "DaylightSavingIndicator": "string",
                "DateTimeType": check response?.LimitSettings?.IdentifierStartDate?.DateTimeType
            },
            "IdentifierEndDate": {
                // "DateTimeContent": "string",
                // "TimeZoneCode": "string",
                // "DaylightSavingIndicator": "string",
                "DateTimeType": check response?.LimitSettings?.IdentifierEndDate?.DateTimeType
            }
        },
        "LimitStartDatetime": {
            //   "DateTimeContent": "string",
            //   "TimeZoneCode": "string",
            //   "DaylightSavingIndicator": "string",
            "DateTimeType": check response?.LimitSettings?.DateTimeType
        },
        "LimitCreditDebitIndicator": check response?.LimitSettings?.LimitCreditDebitIndicator,
        "LimitAmountType": check response?.LimitSettings?.LimitAmountType,
        "LoanOriginationDate": {
            "DateContent": check response?.LimitSettings?.LoanOriginationDate?.DateContent
        },
        "LoanMaturityDate": {
            "DateContent": check response?.LimitSettings?.LoanMaturityDate?.DateContent
        },
        "LoanEndDate": {
            "DateContent": check response?.LimitSettings?.LoanEndDate?.DateContent
        },
        "LoanAmount": {
            "AmountValue": check response?.LimitSettings?.LoanAmount?.AmountValue,
            "AmountCurrency": {
                "Currencycode": check response?.LimitSettings?.LoanAmount?.AmountCurrency?.Currencycode
            },
            "DecimalPointPosition": check response?.LimitSettings?.LoanAmount?.DecimalPointPosition,
            "AmountType": check response?.LimitSettings?.LoanAmount?.AmountType
        },
        "LoanArrangementType": check response?.LimitSettings?.LoanArrangementType,
        "ArrangementAction": {
            "ActionType": check response?.LimitSettings?.ArrangementAction?.ActionType,
            "EventType": check response?.LimitSettings?.ArrangementAction?.EventType,
            "EventDateTime": {
                "DateTimeContent": check response?.LimitSettings?.ArrangementAction?.EventDateTime?.DateTimeContent,
                "TimeZoneCode": check response?.LimitSettings?.ArrangementAction?.EventDateTime?.TimeZoneCode,
                "DaylightSavingIndicator": check response?.LimitSettings?.ArrangementAction?.EventDateTime?.DaylightSavingIndicator,
                "DateTimeType": check response?.LimitSettings?.ArrangementAction?.EventDateTime?.DateTimeType
            },
            "EventDescription": check response?.LimitSettings?.ArrangementAction?.EventDescription,
            "EventSource": check response?.LimitSettings?.ArrangementAction?.EventSource,
            "EventLocation": {
                "LocationDescription": check response?.LimitSettings?.ArrangementAction?.EventLocation?.LocationDescription,
                "LocationDateTime": {
                    "DateTimeContent": check response?.LimitSettings?.ArrangementAction?.EventLocation?.LocationDateTime?.DateTimeContent,
                    "TimeZoneCode": check response?.LimitSettings?.ArrangementAction?.EventLocation?.LocationDateTime?.TimeZoneCode,
                    "DaylightSavingIndicator": check response?.LimitSettings?.ArrangementAction?.EventLocation?.LocationDateTime?.DaylightSavingIndicator,
                    "DateTimeType": check response?.LimitSettings?.ArrangementAction?.EventLocation?.LocationDateTime?.DateTimeType
                },
                "LocationStatus": {
                    "StatusReason": check response?.LimitSettings?.ArrangementAction?.EventLocation?.LocationStatus?.StatusReason,
                    "StatusDateTime": {
                        "DateTimeContent": check response?.LimitSettings?.ArrangementAction?.EventLocation?.LocationStatus?.StatusDateTime?.DateTimeContent,
                        "TimeZoneCode": check response?.LimitSettings?.ArrangementAction?.EventLocation?.LocationStatus?.StatusDateTime?.TimeZoneCode,
                        "DaylightSavingIndicator": check response?.LimitSettings?.ArrangementAction?.EventLocation?.LocationStatus?.StatusDateTime?.DaylightSavingIndicator,
                        "DateTimeType": check response?.LimitSettings?.ArrangementAction?.EventLocation?.LocationStatus?.StatusDateTime?.DateTimeType
                    },
                    "StatusValidityPeriod": {
                        "FromDateTime": {
                            "DateTimeContent": check response?.LimitSettings?.ArrangementAction?.EventLocation?.LocationStatus?.StatusValidityPeriod?.FromDateTime?.DateTimeContent,
                            "TimeZoneCode": check response?.LimitSettings?.ArrangementAction?.EventLocation?.LocationStatus?.StatusValidityPeriod?.FromDateTime?.TimeZoneCode,
                            "DaylightSavingIndicator": check response?.LimitSettings?.ArrangementAction?.EventLocation?.LocationStatus?.StatusValidityPeriod?.FromDateTime?.DaylightSavingIndicator,
                            "DateTimeType": check response?.LimitSettings?.ArrangementAction?.EventLocation?.LocationStatus?.StatusValidityPeriod?.FromDateTime?.DateTimeType
                        },
                        "ToDateTime": {
                            "DateTimeContent": check response?.LimitSettings?.ArrangementAction?.EventLocation?.LocationStatus?.StatusValidityPeriod?.ToDateTime?.DateTimeContent,
                            "TimeZoneCode": check response?.LimitSettings?.ArrangementAction?.EventLocation?.LocationStatus?.StatusValidityPeriod?.ToDateTime?.TimeZoneCode,
                            "DaylightSavingIndicator": check response?.LimitSettings?.ArrangementAction?.EventLocation?.LocationStatus?.StatusValidityPeriod?.ToDateTime?.DaylightSavingIndicator,
                            "DateTimeType": check response?.LimitSettings?.ArrangementAction?.EventLocation?.LocationStatus?.StatusValidityPeriod?.ToDateTime?.DateTimeType
                        }
                    },
                    "StatusInvolvedPartyReference": {
                        "PartyReference": check response?.LimitSettings?.ArrangementAction?.EventLocation?.LocationStatus?.StatusInvolvedPartyReference?.PartyReference,
                        "InvolvementReference": check response?.LimitSettings?.ArrangementAction?.EventLocation?.LocationStatus?.StatusInvolvedPartyReference?.InvolvementReference
                    }
                },
                "LocationType": check response?.LimitSettings?.ArrangementAction?.EventLocation?.LocationType,
                "LocationZoningType": check response?.LimitSettings?.ArrangementAction?.EventLocation?.LocationZoningType,
                "LocationNeighborhoodType": check response?.LimitSettings?.ArrangementAction?.EventLocation?.LocationNeighborhoodType,
                "LocationConstructionType": check response?.LimitSettings?.ArrangementAction?.EventLocation?.LocationConstructionType,
                "LocationOccupancyType": check response?.LimitSettings?.ArrangementAction?.EventLocation?.LocationOccupancyType,
                "LocationValue": check response?.LimitSettings?.ArrangementAction?.EventLocation?.LocationValue,
                "LocationCapacity": check response?.LimitSettings?.ArrangementAction?.EventLocation?.LocationCapacity,
                "LocationIdentification": {
                    "IdentifierValue": check response?.LimitSettings?.ArrangementAction?.EventLocation?.LocationIdentification?.IdentifierValue,
                    "IdentifierIssuerReference": {
                        "PartyReference": check response?.LimitSettings?.ArrangementAction?.EventLocation?.LocationIdentification?.IdentifierIssuerReference?.PartyReference,
                        "InvolvementReference": check response?.LimitSettings?.ArrangementAction?.EventLocation?.LocationIdentification?.IdentifierIssuerReference?.InvolvementReference
                    },
                    "IdentifierStartDate": {
                        "DateTimeContent": check response?.LimitSettings?.ArrangementAction?.EventLocation?.LocationIdentification?.IdentifierStartDate?.DateTimeContent,
                        "TimeZoneCode": check response?.LimitSettings?.ArrangementAction?.EventLocation?.LocationIdentification?.IdentifierStartDate?.TimeZoneCode,
                        "DaylightSavingIndicator": check response?.LimitSettings?.ArrangementAction?.EventLocation?.LocationIdentification?.IdentifierStartDate?.DaylightSavingIndicator,
                        "DateTimeType": check response?.LimitSettings?.ArrangementAction?.EventLocation?.LocationIdentification?.IdentifierStartDate?.DateTimeType
                    },
                    "IdentifierEndDate": {
                        "DateTimeContent": check response?.LimitSettings?.ArrangementAction?.EventLocation?.LocationIdentification?.IdentifierEndDate?.DateTimeContent,
                        "TimeZoneCode": check response?.LimitSettings?.ArrangementAction?.EventLocation?.LocationIdentification?.IdentifierEndDate?.TimeZoneCode,
                        "DaylightSavingIndicator": check response?.LimitSettings?.ArrangementAction?.EventLocation?.LocationIdentification?.IdentifierEndDate?.DaylightSavingIndicator,
                        "DateTimeType": check response?.LimitSettings?.ArrangementAction?.EventLocation?.LocationIdentification?.IdentifierEndDate?.DateTimeType
                    }
                },
                "LocationAddress": check response?.LimitSettings?.ArrangementAction?.EventLocation?.LocationAddress,
                "LocationName": {
                    "Name": check response?.LimitSettings?.ArrangementAction?.EventLocation?.LocationName?.Name
                },
                "LocationTimeZone": check response?.LimitSettings?.ArrangementAction?.EventLocation?.LocationTimeZone
            },
            "EventAction": check response?.LimitSettings?.ArrangementAction?.EventAction,
            "EventStatus": {
                "StatusReason": check response?.LimitSettings?.ArrangementAction?.EventStatus?.StatusReason,
                "StatusDateTime": {
                    "DateTimeContent": check response?.LimitSettings?.ArrangementAction?.EventStatus?.StatusDateTime?.DateTimeContent,
                    "TimeZoneCode": check response?.LimitSettings?.ArrangementAction?.EventStatus?.StatusDateTime?.TimeZoneCode,
                    "DaylightSavingIndicator": check response?.LimitSettings?.ArrangementAction?.EventStatus?.StatusDateTime?.DaylightSavingIndicator,
                    "DateTimeType": check response?.LimitSettings?.ArrangementAction?.EventStatus?.StatusDateTime?.DateTimeType
                },
                "StatusValidityPeriod": {
                    "FromDateTime": {
                        "DateTimeContent": check response?.LimitSettings?.ArrangementAction?.EventStatus?.StatusValidityPeriod?.FromDateTime?.DateTimeContent,
                        "TimeZoneCode": check response?.LimitSettings?.ArrangementAction?.EventStatus?.StatusValidityPeriod?.FromDateTime?.TimeZoneCode,
                        "DaylightSavingIndicator": check response?.LimitSettings?.ArrangementAction?.EventStatus?.StatusValidityPeriod?.FromDateTime?.DaylightSavingIndicator,
                        "DateTimeType": check response?.LimitSettings?.ArrangementAction?.EventStatus?.StatusValidityPeriod?.FromDateTime?.DateTimeType
                    },
                    "ToDateTime": {
                        "DateTimeContent": check response?.LimitSettings?.ArrangementAction?.EventStatus?.StatusValidityPeriod?.ToDateTime?.DateTimeContent,
                        "TimeZoneCode": check response?.LimitSettings?.ArrangementAction?.EventStatus?.StatusValidityPeriod?.ToDateTime?.TimeZoneCode,
                        "DaylightSavingIndicator": check response?.LimitSettings?.ArrangementAction?.EventStatus?.StatusValidityPeriod?.ToDateTime?.DaylightSavingIndicator,
                        "DateTimeType": check response?.LimitSettings?.ArrangementAction?.EventStatus?.StatusValidityPeriod?.ToDateTime?.DateTimeType
                    }
                },
                "StatusInvolvedPartyReference": {
                    "PartyReference": check response?.LimitSettings?.ArrangementAction?.EventStatus?.StatusInvolvedPartyReference?.PartyReference,
                    "InvolvementReference": check response?.LimitSettings?.ArrangementAction?.EventStatus?.StatusInvolvedPartyReference?.InvolvementReference
                }
            },
            "EventValue": check response?.LimitSettings?.ArrangementAction?.EventValue,
            "EventValidityPeriod": {
                "FromDateTime": {
                    "DateTimeContent": check response?.LimitSettings?.ArrangementAction?.EventValidityPeriod?.FromDateTime?.DateTimeContent,
                    "TimeZoneCode": check response?.LimitSettings?.ArrangementAction?.EventValidityPeriod?.FromDateTime?.TimeZoneCode,
                    "DaylightSavingIndicator": check response?.LimitSettings?.ArrangementAction?.EventValidityPeriod?.FromDateTime?.DaylightSavingIndicator,
                    "DateTimeType": check response?.LimitSettings?.ArrangementAction?.EventValidityPeriod?.FromDateTime?.DateTimeType
                },
                "ToDateTime": {
                    "DateTimeContent": check response?.LimitSettings?.ArrangementAction?.EventValidityPeriod?.ToDateTime?.DateTimeContent,
                    "TimeZoneCode": check response?.LimitSettings?.ArrangementAction?.EventValidityPeriod?.ToDateTime?.TimeZoneCode,
                    "DaylightSavingIndicator": check response?.LimitSettings?.ArrangementAction?.EventValidityPeriod?.ToDateTime?.DaylightSavingIndicator,
                    "DateTimeType": check response?.LimitSettings?.ArrangementAction?.EventValidityPeriod?.ToDateTime?.DateTimeType
                }
            },
            "EventIdentification": {
                "IdentifierValue": check response?.LimitSettings?.ArrangementAction?.EventIdentification?.IdentifierValue,
                "IdentifierIssuerReference": {
                    "PartyReference": check response?.LimitSettings?.ArrangementAction?.EventIdentification?.IdentifierIssuerReference?.PartyReference,
                    "InvolvementReference": check response?.LimitSettings?.ArrangementAction?.EventIdentification?.IdentifierIssuerReference?.InvolvementReference
                },
                "IdentifierStartDate": {
                    "DateTimeContent": check response?.LimitSettings?.ArrangementAction?.EventIdentification?.IdentifierStartDate?.DateTimeContent,
                    "TimeZoneCode": check response?.LimitSettings?.ArrangementAction?.EventIdentification?.IdentifierStartDate?.TimeZoneCode,
                    "DaylightSavingIndicator": check response?.LimitSettings?.ArrangementAction?.EventIdentification?.IdentifierStartDate?.DaylightSavingIndicator,
                    "DateTimeType": check response?.LimitSettings?.ArrangementAction?.EventIdentification?.IdentifierStartDate?.DateTimeType
                },
                "IdentifierEndDate": {
                    "DateTimeContent": check response?.LimitSettings?.ArrangementAction?.EventIdentification?.IdentifierEndDate?.DateTimeContent,
                    "TimeZoneCode": check response?.LimitSettings?.ArrangementAction?.EventIdentification?.IdentifierEndDate?.TimeZoneCode,
                    "DaylightSavingIndicator": check response?.LimitSettings?.ArrangementAction?.EventIdentification?.IdentifierEndDate?.DaylightSavingIndicator,
                    "DateTimeType": check response?.LimitSettings?.ArrangementAction?.EventIdentification?.IdentifierEndDate?.DateTimeType
                }
            }
        },
        "ArrangementStartDate": {
            "DateTimeContent": check response?.LimitSettings?.ArrangementStartDate?.DateTimeContent,
            "TimeZoneCode": check response?.LimitSettings?.ArrangementStartDate?.TimeZoneCode,
            "DaylightSavingIndicator": check response?.LimitSettings?.ArrangementStartDate?.DaylightSavingIndicator,
            "DateTimeType": check response?.LimitSettings?.ArrangementStartDate?.DateTimeType
        },
        "ArrangementEndDate": {
            "DateTimeContent": check response?.LimitSettings?.ArrangementEndDate?.DateTimeContent,
            "TimeZoneCode": check response?.LimitSettings?.ArrangementEndDate?.TimeZoneCode,
            "DaylightSavingIndicator": check response?.LimitSettings?.ArrangementEndDate?.DaylightSavingIndicator,
            "DateTimeType": check response?.LimitSettings?.ArrangementEndDate?.DateTimeType
        },
        "ArrangementStatus": {
            "ArrangementStatus": {
                "StatusReason": check response?.LimitSettings?.ArrangementStatus?.ArrangementStatus?.StatusReason,
                "StatusDateTime": {
                    "DateTimeContent": check response?.LimitSettings?.ArrangementStatus?.ArrangementStatus?.StatusDateTime?.DateTimeContent,
                    "TimeZoneCode": check response?.LimitSettings?.ArrangementStatus?.ArrangementStatus?.StatusDateTime?.TimeZoneCode,
                    "DaylightSavingIndicator": check response?.LimitSettings?.ArrangementStatus?.ArrangementStatus?.StatusDateTime?.DaylightSavingIndicator,
                    "DateTimeType": check response?.LimitSettings?.ArrangementStatus?.ArrangementStatus?.StatusDateTime?.DateTimeType
                },
                "StatusValidityPeriod": {
                    "FromDateTime": {
                        "DateTimeContent": check response?.LimitSettings?.ArrangementStatus?.ArrangementStatus?.StatusValidityPeriod?.FromDateTime?.DateTimeContent,
                        "TimeZoneCode": check response?.LimitSettings?.ArrangementStatus?.ArrangementStatus?.StatusValidityPeriod?.FromDateTime?.TimeZoneCode,
                        "DaylightSavingIndicator": check response?.LimitSettings?.ArrangementStatus?.ArrangementStatus?.StatusValidityPeriod?.FromDateTime?.DaylightSavingIndicator,
                        "DateTimeType": check response?.LimitSettings?.ArrangementStatus?.ArrangementStatus?.StatusValidityPeriod?.FromDateTime?.DateTimeType
                    },
                    "ToDateTime": {
                        "DateTimeContent": check response?.LimitSettings?.ArrangementStatus?.ArrangementStatus?.StatusValidityPeriod?.ToDateTime?.DateTimeContent,
                        "TimeZoneCode": check response?.LimitSettings?.ArrangementStatus?.ArrangementStatus?.StatusValidityPeriod?.ToDateTime?.TimeZoneCode,
                        "DaylightSavingIndicator": check response?.LimitSettings?.ArrangementStatus?.ArrangementStatus?.StatusValidityPeriod?.ToDateTime?.DaylightSavingIndicator,
                        "DateTimeType": check response?.LimitSettings?.ArrangementStatus?.ArrangementStatus?.StatusValidityPeriod?.ToDateTime?.DateTimeType
                    }
                },
                "StatusInvolvedPartyReference": {
                    "PartyReference": check response?.LimitSettings?.ArrangementStatus?.ArrangementStatus?.StatusInvolvedPartyReference?.PartyReference,
                    "InvolvementReference": check response?.LimitSettings?.ArrangementStatus?.ArrangementStatus?.StatusInvolvedPartyReference?.InvolvementReference
                }
            },
            "ArrangementStatusType": check response?.LimitSettings?.ArrangementStatus?.ArrangementStatusType
        },
        "ArrangementSubjectMatter": {
            "Subject": check response?.LimitSettings?.ArrangementSubjectMatter?.Subject
        },
        "Arrangementtype": check response?.LimitSettings?.Arrangementtype,
        "ArrangementIdentification": {
            "IdentifierValue": check response?.LimitSettings?.ArrangementIdentification?.IdentifierValue,
            "IdentifierIssuerReference": {
                "PartyReference": check response?.LimitSettings?.ArrangementIdentification?.IdentifierIssuerReference?.PartyReference,
                "InvolvementReference": check response?.LimitSettings?.ArrangementIdentification?.IdentifierIssuerReference?.InvolvementReference
            },
            "IdentifierStartDate": {
                "DateTimeContent": check response?.LimitSettings?.ArrangementIdentification?.IdentifierStartDate?.DateTimeContent,
                "TimeZoneCode": check response?.LimitSettings?.ArrangementIdentification?.IdentifierStartDate?.TimeZoneCode,
                "DaylightSavingIndicator": check response?.LimitSettings?.ArrangementIdentification?.IdentifierStartDate?.DaylightSavingIndicator,
                "DateTimeType": check response?.LimitSettings?.ArrangementIdentification?.IdentifierStartDate?.DateTimeType
            },
            "IdentifierEndDate": {
                "DateTimeContent": check response?.LimitSettings?.ArrangementIdentification?.IdentifierEndDate?.DateTimeContent,
                "TimeZoneCode": check response?.LimitSettings?.ArrangementIdentification?.IdentifierEndDate?.TimeZoneCode,
                "DaylightSavingIndicator": check response?.LimitSettings?.ArrangementIdentification?.IdentifierEndDate?.DaylightSavingIndicator,
                "DateTimeType": check response?.LimitSettings?.ArrangementIdentification?.IdentifierEndDate?.DateTimeType
            }
        },
        "SavingsAccountArrangementType": check response?.LimitSettings?.SavingsAccountArrangementType,
        "SavingsAccountArrangementProductFeatureType": {
            "ProductFeatureTypeValues": check response?.LimitSettings?.SavingsAccountArrangementProductFeatureType?.ProductFeatureTypeValues
        },
        "ProductArrangementType": check response?.LimitSettings?.ProductArrangementType,
        "CurrentAccountArrangementType": check response?.LimitSettings?.CurrentAccountArrangementType,
        "CurrentAccountArrangementProductFeatureType": {
            "ProductFeatureTypeValues": check response?.LimitSettings?.CurrentAccountArrangementProductFeatureType?.ProductFeatureTypeValues
        },
        "TermDepositArrangementType": check response?.LimitSettings?.TermDepositArrangementType,
        "TermDepositArrangementProductFeatureType": {
            "ProductFeatureTypeValues": check response?.LimitSettings?.TermDepositArrangementProductFeatureType?.ProductFeatureTypeValues
        },
        "TermDepositMaturityDate": {
            "DateTimeContent": check response?.LimitSettings?.TermDepositMaturityDate?.DateTimeContent,
            "TimeZoneCode": check response?.LimitSettings?.TermDepositMaturityDate?.TimeZoneCode,
            "DaylightSavingIndicator": check response?.LimitSettings?.TermDepositMaturityDate?.DaylightSavingIndicator,
            "DateTimeType": check response?.LimitSettings?.TermDepositMaturityDate?.DateTimeType
        },
        "TermDepositOpenDate": {
            "DateTimeContent": check response?.LimitSettings?.TermDepositOpenDate?.DateTimeContent,
            "TimeZoneCode": check response?.LimitSettings?.TermDepositOpenDate?.TimeZoneCode,
            "DaylightSavingIndicator": check response?.LimitSettings?.TermDepositOpenDate?.DaylightSavingIndicator,
            "DateTimeType": check response?.LimitSettings?.TermDepositOpenDate?.DateTimeType
        },
        "TermDepositAmount": {
            "AmountValue": check response?.LimitSettings?.TermDepositAmount?.AmountValue,
            "AmountCurrency": {
                "Currencycode": check response?.LimitSettings?.TermDepositAmount?.AmountCurrency?.Currencycode
            },
            "DecimalPointPosition": check response?.LimitSettings?.TermDepositAmount?.DecimalPointPosition,
            "AmountType": check response?.LimitSettings?.TermDepositAmount?.AmountType
        },
        "TermDepositDuration": {
            "Duration": check response?.LimitSettings?.TermDepositDuration?.Duration
        },
        "DepositTerm": check response?.LimitSettings?.DepositTerm,
        "DepositType": check response?.LimitSettings?.DepositType,
        "DepositLimit": {
            "LimitType": check response?.LimitSettings?.DepositLimit?.LimitType,
            "LimitCurrency": {
                "Currencycode": check response?.LimitSettings?.DepositLimit?.LimitCurrency?.Currencycode
            },
            "LimitValidityPeriod": {
                "FromDateTime": {
                    "DateTimeContent": check response?.LimitSettings?.DepositLimit?.LimitValidityPeriod?.FromDateTime?.DateTimeContent,
                    "TimeZoneCode": check response?.LimitSettings?.DepositLimit?.LimitValidityPeriod?.FromDateTime?.TimeZoneCode,
                    "DaylightSavingIndicator": check response?.LimitSettings?.DepositLimit?.LimitValidityPeriod?.FromDateTime?.DaylightSavingIndicator,
                    "DateTimeType": check response?.LimitSettings?.DepositLimit?.LimitValidityPeriod?.FromDateTime?.DateTimeType
                },
                "ToDateTime": {
                    "DateTimeContent": check response?.LimitSettings?.DepositLimit?.LimitValidityPeriod?.ToDateTime?.DateTimeContent,
                    "TimeZoneCode": check response?.LimitSettings?.DepositLimit?.LimitValidityPeriod?.ToDateTime?.TimeZoneCode,
                    "DaylightSavingIndicator": check response?.LimitSettings?.DepositLimit?.LimitValidityPeriod?.ToDateTime?.DaylightSavingIndicator,
                    "DateTimeType": check response?.LimitSettings?.DepositLimit?.LimitValidityPeriod?.ToDateTime?.DateTimeType
                }
            },
            "LimitAmount": {
                "AmountValue": check response?.LimitSettings?.DepositLimit?.LimitAmount?.AmountValue,
                "AmountCurrency": {
                    "Currencycode": check response?.LimitSettings?.DepositLimit?.LimitAmount?.AmountCurrency?.Currencycode
                },
                "DecimalPointPosition": check response?.LimitSettings?.DepositLimit?.LimitAmount?.DecimalPointPosition,
                "AmountType": check response?.LimitSettings?.DepositLimit?.LimitAmount?.AmountType
            },
            "LimitStatus": {
                "LimitStatus": {
                    "StatusReason": check response?.LimitSettings?.DepositLimit?.LimitStatus?.LimitStatus?.StatusReason,
                    "StatusDateTime": {
                        "DateTimeContent": check response?.LimitSettings?.DepositLimit?.LimitStatus?.LimitStatus?.StatusDateTime?.DateTimeContent,
                        "TimeZoneCode": check response?.LimitSettings?.DepositLimit?.LimitStatus?.LimitStatus?.StatusDateTime?.TimeZoneCode,
                        "DaylightSavingIndicator": check response?.LimitSettings?.DepositLimit?.LimitStatus?.LimitStatus?.StatusDateTime?.DaylightSavingIndicator,
                        "DateTimeType": check response?.LimitSettings?.DepositLimit?.LimitStatus?.LimitStatus?.StatusDateTime?.DateTimeType
                    },
                    "StatusValidityPeriod": {
                        "FromDateTime": {
                            "DateTimeContent": check response?.LimitSettings?.DepositLimit?.LimitStatus?.LimitStatus?.StatusValidityPeriod?.FromDateTime?.DateTimeContent,
                            "TimeZoneCode": check response?.LimitSettings?.DepositLimit?.LimitStatus?.LimitStatus?.StatusValidityPeriod?.FromDateTime?.TimeZoneCode,
                            "DaylightSavingIndicator": check response?.LimitSettings?.DepositLimit?.LimitStatus?.LimitStatus?.StatusValidityPeriod?.FromDateTime?.DaylightSavingIndicator,
                            "DateTimeType": check response?.LimitSettings?.DepositLimit?.LimitStatus?.LimitStatus?.StatusValidityPeriod?.FromDateTime?.DateTimeType
                        },
                        "ToDateTime": {
                            "DateTimeContent": check response?.LimitSettings?.DepositLimit?.LimitStatus?.LimitStatus?.StatusValidityPeriod?.ToDateTime?.DateTimeContent,
                            "TimeZoneCode": check response?.LimitSettings?.DepositLimit?.LimitStatus?.LimitStatus?.StatusValidityPeriod?.ToDateTime?.TimeZoneCode,
                            "DaylightSavingIndicator": check response?.LimitSettings?.DepositLimit?.LimitStatus?.LimitStatus?.StatusValidityPeriod?.ToDateTime?.DaylightSavingIndicator,
                            "DateTimeType": check response?.LimitSettings?.DepositLimit?.LimitStatus?.LimitStatus?.StatusValidityPeriod?.ToDateTime?.DateTimeType
                        }
                    },
                    "StatusInvolvedPartyReference": {
                        "PartyReference": check response?.LimitSettings?.DepositLimit?.LimitStatus?.LimitStatus?.StatusInvolvedPartyReference?.PartyReference,
                        "InvolvementReference": check response?.LimitSettings?.DepositLimit?.LimitStatus?.LimitStatus?.StatusInvolvedPartyReference?.InvolvementReference
                    }
                },
                "LimitStatusType": check response?.LimitSettings?.DepositLimit?.LimitStatus?.LimitStatusType
            },
            "LimitRate": {
                "RateValue": check response?.LimitSettings?.DepositLimit?.LimitRate?.RateValue,
                "RateUnit": check response?.LimitSettings?.DepositLimit?.LimitRate?.RateUnit,
                "RatePeriod": {
                    "FromDateTime": {
                        "DateTimeContent": check response?.LimitSettings?.DepositLimit?.LimitRate?.RatePeriod?.FromDateTime?.DateTimeContent,
                        "TimeZoneCode": check response?.LimitSettings?.DepositLimit?.LimitRate?.RatePeriod?.FromDateTime?.TimeZoneCode,
                        "DaylightSavingIndicator": check response?.LimitSettings?.DepositLimit?.LimitRate?.RatePeriod?.FromDateTime?.DaylightSavingIndicator,
                        "DateTimeType": check response?.LimitSettings?.DepositLimit?.LimitRate?.RatePeriod?.FromDateTime?.DateTimeType
                    },
                    "ToDateTime": {
                        "DateTimeContent": check response?.LimitSettings?.DepositLimit?.LimitRate?.RatePeriod?.ToDateTime?.DateTimeContent,
                        "TimeZoneCode": check response?.LimitSettings?.DepositLimit?.LimitRate?.RatePeriod?.ToDateTime?.TimeZoneCode,
                        "DaylightSavingIndicator": check response?.LimitSettings?.DepositLimit?.LimitRate?.RatePeriod?.ToDateTime?.DaylightSavingIndicator,
                        "DateTimeType": check response?.LimitSettings?.DepositLimit?.LimitRate?.RatePeriod?.ToDateTime?.DateTimeType
                    }
                },
                "RateCapitalUnit": check response?.LimitSettings?.DepositLimit?.LimitRate?.RateCapitalUnit
            },
            "LimitFrequency": {
                "FrequencyCode": check response?.LimitSettings?.DepositLimit?.LimitFrequency?.FrequencyCode,
                "FrequencyName": {
                    "Name": check response?.LimitSettings?.DepositLimit?.LimitFrequency?.FrequencyName?.Name
                },
                "FrequencyDefinition": check response?.LimitSettings?.DepositLimit?.LimitFrequency?.FrequencyDefinition
            },
            "LimitIdentification": {
                "IdentifierValue": check response?.LimitSettings?.DepositLimit?.LimitIdentification?.IdentifierValue,
                "IdentifierIssuerReference": {
                    "PartyReference": check response?.LimitSettings?.DepositLimit?.LimitIdentification?.IdentifierIssuerReference?.PartyReference,
                    "InvolvementReference": check response?.LimitSettings?.DepositLimit?.LimitIdentification?.IdentifierIssuerReference?.InvolvementReference
                },
                "IdentifierStartDate": {
                    "DateTimeContent": check response?.LimitSettings?.DepositLimit?.LimitIdentification?.IdentifierStartDate?.DateTimeContent,
                    "TimeZoneCode": check response?.LimitSettings?.DepositLimit?.LimitIdentification?.IdentifierStartDate?.TimeZoneCode,
                    "DaylightSavingIndicator": check response?.LimitSettings?.DepositLimit?.LimitIdentification?.IdentifierStartDate?.DaylightSavingIndicator,
                    "DateTimeType": check response?.LimitSettings?.DepositLimit?.LimitIdentification?.IdentifierStartDate?.DateTimeType
                },
                "IdentifierEndDate": {
                    "DateTimeContent": check response?.LimitSettings?.DepositLimit?.LimitIdentification?.IdentifierEndDate?.DateTimeContent,
                    "TimeZoneCode": check response?.LimitSettings?.DepositLimit?.LimitIdentification?.IdentifierEndDate?.TimeZoneCode,
                    "DaylightSavingIndicator": check response?.LimitSettings?.DepositLimit?.LimitIdentification?.IdentifierEndDate?.DaylightSavingIndicator,
                    "DateTimeType": check response?.LimitSettings?.DepositLimit?.LimitIdentification?.IdentifierEndDate?.DateTimeType
                }
            },
            "LimitStartDatetime": {
                "DateTimeContent": check response?.LimitSettings?.DepositLimit?.LimitStartDatetime?.DateTimeContent,
                "TimeZoneCode": check response?.LimitSettings?.DepositLimit?.LimitStartDatetime?.TimeZoneCode,
                "DaylightSavingIndicator": check response?.LimitSettings?.DepositLimit?.LimitStartDatetime?.DaylightSavingIndicator,
                "DateTimeType": check response?.LimitSettings?.DepositLimit?.LimitStartDatetime?.DateTimeType
            },
            "LimitCreditDebitIndicator": check response?.LimitSettings?.DepositLimit?.LimitCreditDebitIndicator,
            "LimitAmountType": check response?.LimitSettings?.DepositLimit?.LimitAmountType,
            "LoanOriginationDate": {
                "DateContent": check response?.LimitSettings?.DepositLimit?.LoanOriginationDate?.DateContent
            },
            "LoanMaturityDate": {
                "DateContent": check response?.LimitSettings?.DepositLimit?.LoanMaturityDate?.DateContent
            },
            "LoanEndDate": {
                "DateContent": check response?.LimitSettings?.DepositLimit?.LoanEndDate?.DateContent
            },
            "LoanAmount": {
                "AmountValue": check response?.LimitSettings?.DepositLimit?.LoanAmount?.AmountValue,
                "AmountCurrency": {
                    "Currencycode": check response?.LimitSettings?.DepositLimit?.LoanAmount?.AmountCurrency?.Currencycode
                },
                "DecimalPointPosition": check response?.LimitSettings?.DepositLimit?.LoanAmount?.DecimalPointPosition,
                "AmountType": check response?.LimitSettings?.DepositLimit?.LoanAmount?.AmountType
            },
            "LoanArrangementType": check response?.LimitSettings?.DepositLimit?.LoanArrangementType,
            "ArrangementAction": {
                "ActionType": check response?.LimitSettings?.DepositLimit?.ArrangementAction?.ActionType,
                "EventType": check response?.LimitSettings?.DepositLimit?.ArrangementAction?.EventType,
                "EventDateTime": {
                    "DateTimeContent": check response?.LimitSettings?.DepositLimit?.ArrangementAction?.EventDateTime?.DateTimeContent,
                    "TimeZoneCode": check response?.LimitSettings?.DepositLimit?.ArrangementAction?.EventDateTime?.TimeZoneCode,
                    "DaylightSavingIndicator": check response?.LimitSettings?.DepositLimit?.ArrangementAction?.EventDateTime?.DaylightSavingIndicator,
                    "DateTimeType": check response?.LimitSettings?.DepositLimit?.ArrangementAction?.EventDateTime?.DateTimeType
                },
                "EventDescription": check response?.LimitSettings?.DepositLimit?.ArrangementAction?.EventDescription,
                "EventSource": check response?.LimitSettings?.DepositLimit?.ArrangementAction?.EventSource,
                "EventLocation": {
                    "LocationDescription": check response?.LimitSettings?.DepositLimit?.ArrangementAction?.EventLocation?.LocationDescription,
                    "LocationDateTime": {
                        "DateTimeContent": check response?.LimitSettings?.DepositLimit?.ArrangementAction?.EventLocation?.LocationDateTime?.DateTimeContent,
                        "TimeZoneCode": check response?.LimitSettings?.DepositLimit?.ArrangementAction?.EventLocation?.LocationDateTime?.TimeZoneCode,
                        "DaylightSavingIndicator": check response?.LimitSettings?.DepositLimit?.ArrangementAction?.EventLocation?.LocationDateTime?.DaylightSavingIndicator,
                        "DateTimeType": check response?.LimitSettings?.DepositLimit?.ArrangementAction?.EventLocation?.LocationDateTime?.DateTimeType
                    },
                    "LocationStatus": {
                        "StatusReason": check response?.LimitSettings?.DepositLimit?.ArrangementAction?.EventLocation?.LocationStatus?.StatusReason,
                        "StatusDateTime": {
                            "DateTimeContent": check response?.LimitSettings?.DepositLimit?.ArrangementAction?.EventLocation?.LocationStatus?.StatusDateTime?.DateTimeContent,
                            "TimeZoneCode": check response?.LimitSettings?.DepositLimit?.ArrangementAction?.EventLocation?.LocationStatus?.StatusDateTime?.TimeZoneCode,
                            "DaylightSavingIndicator": check response?.LimitSettings?.DepositLimit?.ArrangementAction?.EventLocation?.LocationStatus?.StatusDateTime?.DaylightSavingIndicator,
                            "DateTimeType": check response?.LimitSettings?.DepositLimit?.ArrangementAction?.EventLocation?.LocationStatus?.StatusDateTime?.DateTimeType
                        },
                        "StatusValidityPeriod": {
                            "FromDateTime": {
                                "DateTimeContent": check response?.LimitSettings?.DepositLimit?.ArrangementAction?.EventLocation?.LocationStatus?.StatusValidityPeriod?.FromDateTime?.DateTimeContent,
                                "TimeZoneCode": check response?.LimitSettings?.DepositLimit?.ArrangementAction?.EventLocation?.LocationStatus?.StatusValidityPeriod?.FromDateTime?.TimeZoneCode,
                                "DaylightSavingIndicator": check response?.LimitSettings?.DepositLimit?.ArrangementAction?.EventLocation?.LocationStatus?.StatusValidityPeriod?.FromDateTime?.DaylightSavingIndicator,
                                "DateTimeType": check response?.LimitSettings?.DepositLimit?.ArrangementAction?.EventLocation?.LocationStatus?.StatusValidityPeriod?.FromDateTime?.DateTimeType
                            },
                            "ToDateTime": {
                                "DateTimeContent": check response?.LimitSettings?.DepositLimit?.ArrangementAction?.EventLocation?.LocationStatus?.StatusValidityPeriod?.ToDateTime?.DateTimeContent,
                                "TimeZoneCode": check response?.LimitSettings?.DepositLimit?.ArrangementAction?.EventLocation?.LocationStatus?.StatusValidityPeriod?.ToDateTime?.TimeZoneCode,
                                "DaylightSavingIndicator": check response?.LimitSettings?.DepositLimit?.ArrangementAction?.EventLocation?.LocationStatus?.StatusValidityPeriod?.ToDateTime?.DaylightSavingIndicator,
                                "DateTimeType": check response?.LimitSettings?.DepositLimit?.ArrangementAction?.EventLocation?.LocationStatus?.StatusValidityPeriod?.ToDateTime?.DateTimeType
                            }
                        },
                        "StatusInvolvedPartyReference": {
                            "PartyReference": check response?.LimitSettings?.DepositLimit?.ArrangementAction?.EventLocation?.LocationStatus?.StatusInvolvedPartyReference?.PartyReference,
                            "InvolvementReference": check response?.LimitSettings?.DepositLimit?.ArrangementAction?.EventLocation?.LocationStatus?.StatusInvolvedPartyReference?.InvolvementReference
                        }
                    },
                    "LocationType": check response?.LimitSettings?.DepositLimit?.ArrangementAction?.EventLocation?.LocationType,
                    "LocationZoningType": check response?.LimitSettings?.DepositLimit?.ArrangementAction?.EventLocation?.LocationZoningType,
                    "LocationNeighborhoodType": check response?.LimitSettings?.DepositLimit?.ArrangementAction?.EventLocation?.LocationNeighborhoodType,
                    "LocationConstructionType": check response?.LimitSettings?.DepositLimit?.ArrangementAction?.EventLocation?.LocationConstructionType,
                    "LocationOccupancyType": check response?.LimitSettings?.DepositLimit?.ArrangementAction?.EventLocation?.LocationOccupancyType,
                    "LocationValue": check response?.LimitSettings?.DepositLimit?.ArrangementAction?.EventLocation?.LocationValue,
                    "LocationCapacity": check response?.LimitSettings?.DepositLimit?.ArrangementAction?.EventLocation?.LocationCapacity,
                    "LocationIdentification": {
                        "IdentifierValue": check response?.LimitSettings?.DepositLimit?.ArrangementAction?.EventLocation?.LocationIdentification?.IdentifierValue,
                        "IdentifierIssuerReference": {
                            "PartyReference": check response?.LimitSettings?.DepositLimit?.ArrangementAction?.EventLocation?.LocationIdentification?.IdentifierIssuerReference?.PartyReference,
                            "InvolvementReference": check response?.LimitSettings?.DepositLimit?.ArrangementAction?.EventLocation?.LocationIdentification?.IdentifierIssuerReference?.InvolvementReference
                        },
                        "IdentifierStartDate": {
                            "DateTimeContent": check response?.LimitSettings?.DepositLimit?.ArrangementAction?.EventLocation?.LocationIdentification?.IdentifierStartDate?.DateTimeContent,
                            "TimeZoneCode": check response?.LimitSettings?.DepositLimit?.ArrangementAction?.EventLocation?.LocationIdentification?.IdentifierStartDate?.TimeZoneCode,
                            "DaylightSavingIndicator": check response?.LimitSettings?.DepositLimit?.ArrangementAction?.EventLocation?.LocationIdentification?.IdentifierStartDate?.DaylightSavingIndicator,
                            "DateTimeType": check response?.LimitSettings?.DepositLimit?.ArrangementAction?.EventLocation?.LocationIdentification?.IdentifierStartDate?.DateTimeType
                        },
                        "IdentifierEndDate": {
                            "DateTimeContent": check response?.LimitSettings?.DepositLimit?.ArrangementAction?.EventLocation?.LocationIdentification?.IdentifierEndDate?.DateTimeContent,
                            "TimeZoneCode": check response?.LimitSettings?.DepositLimit?.ArrangementAction?.EventLocation?.LocationIdentification?.IdentifierEndDate?.TimeZoneCode,
                            "DaylightSavingIndicator": check response?.LimitSettings?.DepositLimit?.ArrangementAction?.EventLocation?.LocationIdentification?.IdentifierEndDate?.DaylightSavingIndicator,
                            "DateTimeType": check response?.LimitSettings?.DepositLimit?.ArrangementAction?.EventLocation?.LocationIdentification?.IdentifierEndDate?.DateTimeType
                        }
                    },
                    "LocationAddress": check response?.LimitSettings?.DepositLimit?.ArrangementAction?.EventLocation?.LocationAddress,
                    "LocationName": {
                        "Name": check response?.LimitSettings?.DepositLimit?.ArrangementAction?.EventLocation?.LocationName?.Name
                    },
                    "LocationTimeZone": check response?.LimitSettings?.DepositLimit?.ArrangementAction?.EventLocation?.LocationTimeZone
                },
                "EventAction": check response?.LimitSettings?.DepositLimit?.ArrangementAction?.EventAction,
                "EventStatus": {
                    "StatusReason": check response?.LimitSettings?.DepositLimit?.ArrangementAction?.EventStatus?.StatusReason,
                    "StatusDateTime": {
                        "DateTimeContent": check response?.LimitSettings?.DepositLimit?.ArrangementAction?.EventStatus?.StatusDateTime?.DateTimeContent,
                        "TimeZoneCode": check response?.LimitSettings?.DepositLimit?.ArrangementAction?.EventStatus?.StatusDateTime?.TimeZoneCode,
                        "DaylightSavingIndicator": check response?.LimitSettings?.DepositLimit?.ArrangementAction?.EventStatus?.StatusDateTime?.DaylightSavingIndicator,
                        "DateTimeType": check response?.LimitSettings?.DepositLimit?.ArrangementAction?.EventStatus?.StatusDateTime?.DateTimeType
                    },
                    "StatusValidityPeriod": {
                        "FromDateTime": {
                            "DateTimeContent": check response?.LimitSettings?.DepositLimit?.ArrangementAction?.EventStatus?.StatusValidityPeriod?.FromDateTime?.DateTimeContent,
                            "TimeZoneCode": check response?.LimitSettings?.DepositLimit?.ArrangementAction?.EventStatus?.StatusValidityPeriod?.FromDateTime?.TimeZoneCode,
                            "DaylightSavingIndicator": check response?.LimitSettings?.DepositLimit?.ArrangementAction?.EventStatus?.StatusValidityPeriod?.FromDateTime?.DaylightSavingIndicator,
                            "DateTimeType": check response?.LimitSettings?.DepositLimit?.ArrangementAction?.EventStatus?.StatusValidityPeriod?.FromDateTime?.DateTimeType
                        },
                        "ToDateTime": {
                            "DateTimeContent": check response?.LimitSettings?.DepositLimit?.ArrangementAction?.EventStatus?.StatusValidityPeriod?.ToDateTime?.DateTimeContent,
                            "TimeZoneCode": check response?.LimitSettings?.DepositLimit?.ArrangementAction?.EventStatus?.StatusValidityPeriod?.ToDateTime?.TimeZoneCode,
                            "DaylightSavingIndicator": check response?.LimitSettings?.DepositLimit?.ArrangementAction?.EventStatus?.StatusValidityPeriod?.ToDateTime?.DaylightSavingIndicator,
                            "DateTimeType": check response?.LimitSettings?.DepositLimit?.ArrangementAction?.EventStatus?.StatusValidityPeriod?.ToDateTime?.DateTimeType
                        }
                    },
                    "StatusInvolvedPartyReference": {
                        "PartyReference": check response?.LimitSettings?.DepositLimit?.ArrangementAction?.EventStatus?.StatusInvolvedPartyReference?.PartyReference,
                        "InvolvementReference": check response?.LimitSettings?.DepositLimit?.ArrangementAction?.EventStatus?.StatusInvolvedPartyReference?.InvolvementReference
                    }
                },
                "EventValue": check response?.LimitSettings?.DepositLimit?.ArrangementAction?.EventValue,
                "EventValidityPeriod": {
                    "FromDateTime": {
                        "DateTimeContent": check response?.LimitSettings?.DepositLimit?.ArrangementAction?.EventValidityPeriod?.FromDateTime?.DateTimeContent,
                        "TimeZoneCode": check response?.LimitSettings?.DepositLimit?.ArrangementAction?.EventValidityPeriod?.FromDateTime?.TimeZoneCode,
                        "DaylightSavingIndicator": check response?.LimitSettings?.DepositLimit?.ArrangementAction?.EventValidityPeriod?.FromDateTime?.DaylightSavingIndicator,
                        "DateTimeType": check response?.LimitSettings?.DepositLimit?.ArrangementAction?.EventValidityPeriod?.FromDateTime?.DateTimeType
                    },
                    "ToDateTime": {
                        "DateTimeContent": check response?.LimitSettings?.DepositLimit?.ArrangementAction?.EventValidityPeriod?.ToDateTime?.DateTimeContent,
                        "TimeZoneCode": check response?.LimitSettings?.DepositLimit?.ArrangementAction?.EventValidityPeriod?.ToDateTime?.TimeZoneCode,
                        "DaylightSavingIndicator": check response?.LimitSettings?.DepositLimit?.ArrangementAction?.EventValidityPeriod?.ToDateTime?.DaylightSavingIndicator,
                        "DateTimeType": check response?.LimitSettings?.DepositLimit?.ArrangementAction?.EventValidityPeriod?.ToDateTime?.DateTimeType
                    }
                },
                "EventIdentification": {
                    "IdentifierValue": check response?.LimitSettings?.DepositLimit?.ArrangementAction?.EventIdentification?.IdentifierValue,
                    "IdentifierIssuerReference": {
                        "PartyReference": check response?.LimitSettings?.DepositLimit?.ArrangementAction?.EventIdentification?.IdentifierIssuerReference?.PartyReference,
                        "InvolvementReference": check response?.LimitSettings?.DepositLimit?.ArrangementAction?.EventIdentification?.IdentifierIssuerReference?.InvolvementReference
                    },
                    "IdentifierStartDate": {
                        "DateTimeContent": check response?.LimitSettings?.DepositLimit?.ArrangementAction?.EventIdentification?.IdentifierStartDate?.DateTimeContent,
                        "TimeZoneCode": check response?.LimitSettings?.DepositLimit?.ArrangementAction?.EventIdentification?.IdentifierStartDate?.TimeZoneCode,
                        "DaylightSavingIndicator": check response?.LimitSettings?.DepositLimit?.ArrangementAction?.EventIdentification?.IdentifierStartDate?.DaylightSavingIndicator,
                        "DateTimeType": check response?.LimitSettings?.DepositLimit?.ArrangementAction?.EventIdentification?.IdentifierStartDate?.DateTimeType
                    },
                    "IdentifierEndDate": {
                        "DateTimeContent": check response?.LimitSettings?.DepositLimit?.ArrangementAction?.EventIdentification?.IdentifierEndDate?.DateTimeContent,
                        "TimeZoneCode": check response?.LimitSettings?.DepositLimit?.ArrangementAction?.EventIdentification?.IdentifierEndDate?.TimeZoneCode,
                        "DaylightSavingIndicator": check response?.LimitSettings?.DepositLimit?.ArrangementAction?.EventIdentification?.IdentifierEndDate?.DaylightSavingIndicator,
                        "DateTimeType": check response?.LimitSettings?.DepositLimit?.ArrangementAction?.EventIdentification?.IdentifierEndDate?.DateTimeType
                    }
                }
            },
            "ArrangementStartDate": {
                "DateTimeContent": check response?.LimitSettings?.DepositLimit?.ArrangementStartDate?.DateTimeContent,
                "TimeZoneCode": check response?.LimitSettings?.DepositLimit?.ArrangementStartDate?.TimeZoneCode,
                "DaylightSavingIndicator": check response?.LimitSettings?.DepositLimit?.ArrangementStartDate?.DaylightSavingIndicator,
                "DateTimeType": check response?.LimitSettings?.DepositLimit?.ArrangementStartDate?.DateTimeType
            },
            "ArrangementEndDate": {
                "DateTimeContent": check response?.LimitSettings?.DepositLimit?.ArrangementEndDate?.DateTimeContent,
                "TimeZoneCode": check response?.LimitSettings?.DepositLimit?.ArrangementEndDate?.TimeZoneCode,
                "DaylightSavingIndicator": check response?.LimitSettings?.DepositLimit?.ArrangementEndDate?.DaylightSavingIndicator,
                "DateTimeType": check response?.LimitSettings?.DepositLimit?.ArrangementEndDate?.DateTimeType
            },
            "ArrangementStatus": {
                "ArrangementStatus": {
                    "StatusReason": check response?.LimitSettings?.DepositLimit?.ArrangementStatus?.ArrangementStatus?.StatusReason,
                    "StatusDateTime": {
                        "DateTimeContent": check response?.LimitSettings?.DepositLimit?.ArrangementStatus?.ArrangementStatus?.StatusDateTime?.DateTimeContent,
                        "TimeZoneCode": check response?.LimitSettings?.DepositLimit?.ArrangementStatus?.ArrangementStatus?.StatusDateTime?.TimeZoneCode,
                        "DaylightSavingIndicator": check response?.LimitSettings?.DepositLimit?.ArrangementStatus?.ArrangementStatus?.StatusDateTime?.DaylightSavingIndicator,
                        "DateTimeType": check response?.LimitSettings?.DepositLimit?.ArrangementStatus?.ArrangementStatus?.StatusDateTime?.DateTimeType
                    },
                    "StatusValidityPeriod": {
                        "FromDateTime": {
                            "DateTimeContent": check response?.LimitSettings?.DepositLimit?.ArrangementStatus?.ArrangementStatus?.StatusValidityPeriod?.FromDateTime?.DateTimeContent,
                            "TimeZoneCode": check response?.LimitSettings?.DepositLimit?.ArrangementStatus?.ArrangementStatus?.StatusValidityPeriod?.FromDateTime?.TimeZoneCode,
                            "DaylightSavingIndicator": check response?.LimitSettings?.DepositLimit?.ArrangementStatus?.ArrangementStatus?.StatusValidityPeriod?.FromDateTime?.DaylightSavingIndicator,
                            "DateTimeType": check response?.LimitSettings?.DepositLimit?.ArrangementStatus?.ArrangementStatus?.StatusValidityPeriod?.FromDateTime?.DateTimeType
                        },
                        "ToDateTime": {
                            "DateTimeContent": check response?.LimitSettings?.DepositLimit?.ArrangementStatus?.ArrangementStatus?.StatusValidityPeriod?.ToDateTime?.DateTimeContent,
                            "TimeZoneCode": check response?.LimitSettings?.DepositLimit?.ArrangementStatus?.ArrangementStatus?.StatusValidityPeriod?.ToDateTime?.TimeZoneCode,
                            "DaylightSavingIndicator": check response?.LimitSettings?.DepositLimit?.ArrangementStatus?.ArrangementStatus?.StatusValidityPeriod?.ToDateTime?.DaylightSavingIndicator,
                            "DateTimeType": check response?.LimitSettings?.DepositLimit?.ArrangementStatus?.ArrangementStatus?.StatusValidityPeriod?.ToDateTime?.DateTimeType
                        }
                    },
                    "StatusInvolvedPartyReference": {
                        "PartyReference": check response?.LimitSettings?.DepositLimit?.ArrangementStatus?.ArrangementStatus?.StatusInvolvedPartyReference?.PartyReference,
                        "InvolvementReference": check response?.LimitSettings?.DepositLimit?.ArrangementStatus?.ArrangementStatus?.StatusInvolvedPartyReference?.InvolvementReference
                    }
                },
                "ArrangementStatusType": check response?.LimitSettings?.DepositLimit?.ArrangementStatus?.ArrangementStatusType
            },
            "ArrangementSubjectMatter": {
                "Subject": check response?.LimitSettings?.DepositLimit?.ArrangementSubjectMatter?.Subject
            },
            "Arrangementtype": check response?.LimitSettings?.DepositLimit?.Arrangementtype,
            "ArrangementIdentification": {
                "IdentifierValue": check response?.LimitSettings?.DepositLimit?.ArrangementIdentification?.IdentifierValue,
                "IdentifierIssuerReference": {
                    "PartyReference": check response?.LimitSettings?.DepositLimit?.ArrangementIdentification?.IdentifierIssuerReference?.PartyReference,
                    "InvolvementReference": check response?.LimitSettings?.DepositLimit?.ArrangementIdentification?.IdentifierIssuerReference?.InvolvementReference
                },
                "IdentifierStartDate": {
                    "DateTimeContent": check response?.LimitSettings?.DepositLimit?.ArrangementIdentification?.IdentifierStartDate?.DateTimeContent,
                    "TimeZoneCode": check response?.LimitSettings?.DepositLimit?.ArrangementIdentification?.IdentifierStartDate?.TimeZoneCode,
                    "DaylightSavingIndicator": check response?.LimitSettings?.DepositLimit?.ArrangementIdentification?.IdentifierStartDate?.DaylightSavingIndicator,
                    "DateTimeType": check response?.LimitSettings?.DepositLimit?.ArrangementIdentification?.IdentifierStartDate?.DateTimeType
                },
                "IdentifierEndDate": {
                    "DateTimeContent": check response?.LimitSettings?.DepositLimit?.ArrangementIdentification?.IdentifierEndDate?.DateTimeContent,
                    "TimeZoneCode": check response?.LimitSettings?.DepositLimit?.ArrangementIdentification?.IdentifierEndDate?.TimeZoneCode,
                    "DaylightSavingIndicator": check response?.LimitSettings?.DepositLimit?.ArrangementIdentification?.IdentifierEndDate?.DaylightSavingIndicator,
                    "DateTimeType": check response?.LimitSettings?.DepositLimit?.ArrangementIdentification?.IdentifierEndDate?.DateTimeType
                }
            },
            "SavingsAccountArrangementType": check response?.LimitSettings?.DepositLimit?.SavingsAccountArrangementType,
            "SavingsAccountArrangementProductFeatureType": {
                "ProductFeatureTypeValues": check response?.LimitSettings?.DepositLimit?.SavingsAccountArrangementProductFeatureType?.ProductFeatureTypeValues
            },
            "ProductArrangementType": check response?.LimitSettings?.DepositLimit?.ProductArrangementType,
            "CurrentAccountArrangementType": check response?.LimitSettings?.DepositLimit?.CurrentAccountArrangementType,
            "CurrentAccountArrangementProductFeatureType": {
                "ProductFeatureTypeValues": check response?.LimitSettings?.DepositLimit?.CurrentAccountArrangementProductFeatureType?.ProductFeatureTypeValues
            },
            "TermDepositArrangementType": check response?.LimitSettings?.DepositLimit?.TermDepositArrangementType,
            "TermDepositArrangementProductFeatureType": {
                "ProductFeatureTypeValues": check response?.LimitSettings?.DepositLimit?.TermDepositArrangementProductFeatureType?.ProductFeatureTypeValues
            },
            "TermDepositMaturityDate": {
                "DateTimeContent": check response?.LimitSettings?.DepositLimit?.TermDepositMaturityDate?.DateTimeContent,
                "TimeZoneCode": check response?.LimitSettings?.DepositLimit?.TermDepositMaturityDate?.TimeZoneCode,
                "DaylightSavingIndicator": check response?.LimitSettings?.DepositLimit?.TermDepositMaturityDate?.DaylightSavingIndicator,
                "DateTimeType": check response?.LimitSettings?.DepositLimit?.TermDepositMaturityDate?.DateTimeType
            },
            "TermDepositOpenDate": {
                "DateTimeContent": check response?.LimitSettings?.DepositLimit?.TermDepositOpenDate?.DateTimeContent,
                "TimeZoneCode": check response?.LimitSettings?.DepositLimit?.TermDepositOpenDate?.TimeZoneCode,
                "DaylightSavingIndicator": check response?.LimitSettings?.DepositLimit?.TermDepositOpenDate?.DaylightSavingIndicator,
                "DateTimeType": check response?.LimitSettings?.DepositLimit?.TermDepositOpenDate?.DateTimeType
            },
            "TermDepositAmount": {
                "AmountValue": check response?.LimitSettings?.DepositLimit?.TermDepositAmount?.AmountValue,
                "AmountCurrency": {
                    "Currencycode": check response?.LimitSettings?.DepositLimit?.TermDepositAmount?.AmountCurrency?.Currencycode
                },
                "DecimalPointPosition": check response?.LimitSettings?.DepositLimit?.TermDepositAmount?.DecimalPointPosition,
                "AmountType": check response?.LimitSettings?.DepositLimit?.TermDepositAmount?.AmountType
            },
            "TermDepositDuration": {
                "Duration": check response?.LimitSettings?.DepositLimit?.TermDepositDuration?.Duration
            },
            "DepositTerm": check response?.LimitSettings?.DepositLimit?.DepositTerm,
            "DepositType": check response?.LimitSettings?.DepositLimit?.DepositType,
            "DepositLimit": check response?.LimitSettings?.DepositLimit?.DepositLimit,
            "DepositLimitType": check response?.LimitSettings?.DepositLimit?.DepositLimitType,
            "DepositAmount": {
                "AmountValue": check response?.LimitSettings?.DepositLimit?.DepositAmount?.AmountValue,
                "AmountCurrency": {
                    "Currencycode": check response?.LimitSettings?.DepositLimit?.DepositAmount?.AmountCurrency?.Currencycode
                },
                "DecimalPointPosition": check response?.LimitSettings?.DepositLimit?.DepositAmount?.DecimalPointPosition,
                "AmountType": check response?.LimitSettings?.DepositLimit?.DepositAmount?.AmountType
            },
            "DepositDatetime": {
                "DateTimeContent": check response?.LimitSettings?.DepositLimit?.DepositDatetime?.DateTimeContent,
                "TimeZoneCode": check response?.LimitSettings?.DepositLimit?.DepositDatetime?.TimeZoneCode,
                "DaylightSavingIndicator": check response?.LimitSettings?.DepositLimit?.DepositDatetime?.DaylightSavingIndicator,
                "DateTimeType": check response?.LimitSettings?.DepositLimit?.DepositDatetime?.DateTimeType
            },
            "DepositDatetimeType": check response?.LimitSettings?.DepositLimit?.DepositDatetimeType,
            "DepositAmountType": check response?.LimitSettings?.DepositLimit?.DepositAmountType,
            "DepositInterest": {
                "InterestType": check response?.LimitSettings?.DepositLimit?.DepositInterest?.InterestType,
                "InterestRate": {
                    "RateValue": check response?.LimitSettings?.DepositLimit?.DepositInterest?.InterestRate?.RateValue,
                    "RateUnit": check response?.LimitSettings?.DepositLimit?.DepositInterest?.InterestRate?.RateUnit,
                    "RatePeriod": {
                        "FromDateTime": {
                            "DateTimeContent": check response?.LimitSettings?.DepositLimit?.DepositInterest?.InterestRate?.RatePeriod?.FromDateTime?.DateTimeContent,
                            "TimeZoneCode": check response?.LimitSettings?.DepositLimit?.DepositInterest?.InterestRate?.RatePeriod?.FromDateTime?.TimeZoneCode,
                            "DaylightSavingIndicator": check response?.LimitSettings?.DepositLimit?.DepositInterest?.InterestRate?.RatePeriod?.FromDateTime?.DaylightSavingIndicator,
                            "DateTimeType": check response?.LimitSettings?.DepositLimit?.DepositInterest?.InterestRate?.RatePeriod?.FromDateTime?.DateTimeType
                        },
                        "ToDateTime": {
                            "DateTimeContent": check response?.LimitSettings?.DepositLimit?.DepositInterest?.InterestRate?.RatePeriod?.ToDateTime?.DateTimeContent,
                            "TimeZoneCode": check response?.LimitSettings?.DepositLimit?.DepositInterest?.InterestRate?.RatePeriod?.ToDateTime?.TimeZoneCode,
                            "DaylightSavingIndicator": check response?.LimitSettings?.DepositLimit?.DepositInterest?.InterestRate?.RatePeriod?.ToDateTime?.DaylightSavingIndicator,
                            "DateTimeType": check response?.LimitSettings?.DepositLimit?.DepositInterest?.InterestRate?.RatePeriod?.ToDateTime?.DateTimeType
                        }
                    },
                    "RateCapitalUnit": check response?.LimitSettings?.DepositLimit?.DepositInterest?.InterestRate?.RateCapitalUnit
                },
                "InterestDefinition": check response?.LimitSettings?.DepositLimit?.DepositInterest?.InterestDefinition,
                "InterestRateType": check response?.LimitSettings?.DepositLimit?.DepositInterest?.InterestRateType,
                "InterestPeriod": {
                    "FromDateTime": {
                        "DateTimeContent": check response?.LimitSettings?.DepositLimit?.DepositInterest?.InterestPeriod?.FromDateTime?.DateTimeContent,
                        "TimeZoneCode": check response?.LimitSettings?.DepositLimit?.DepositInterest?.InterestPeriod?.FromDateTime?.TimeZoneCode,
                        "DaylightSavingIndicator": check response?.LimitSettings?.DepositLimit?.DepositInterest?.InterestPeriod?.FromDateTime?.DaylightSavingIndicator,
                        "DateTimeType": check response?.LimitSettings?.DepositLimit?.DepositInterest?.InterestPeriod?.FromDateTime?.DateTimeType
                    },
                    "ToDateTime": {
                        "DateTimeContent": check response?.LimitSettings?.DepositLimit?.DepositInterest?.InterestPeriod?.ToDateTime?.DateTimeContent,
                        "TimeZoneCode": check response?.LimitSettings?.DepositLimit?.DepositInterest?.InterestPeriod?.ToDateTime?.TimeZoneCode,
                        "DaylightSavingIndicator": check response?.LimitSettings?.DepositLimit?.DepositInterest?.InterestPeriod?.ToDateTime?.DaylightSavingIndicator,
                        "DateTimeType": check response?.LimitSettings?.DepositLimit?.DepositInterest?.InterestPeriod?.ToDateTime?.DateTimeType
                    }
                },
                "InterestRatePlan": {
                    "RatePlanName": check response?.LimitSettings?.DepositLimit?.DepositInterest?.InterestRatePlan?.RatePlanName,
                    "RatePlanType": check response?.LimitSettings?.DepositLimit?.DepositInterest?.InterestRatePlan?.RatePlanType,
                    "RatePlan": check response?.LimitSettings?.DepositLimit?.DepositInterest?.InterestRatePlan?.RatePlan
                },
                "InterestSchedule": {
                    "ScheduleType": check response?.LimitSettings?.DepositLimit?.DepositInterest?.InterestSchedule?.ScheduleType
                },
                "LoanOriginationDate": {
                    "DateContent": check response?.LimitSettings?.DepositLimit?.DepositInterest?.LoanOriginationDate?.DateContent
                },
                "LoanMaturityDate": {
                    "DateContent": check response?.LimitSettings?.DepositLimit?.DepositInterest?.LoanMaturityDate?.DateContent
                },
                "LoanEndDate": {
                    "DateContent": check response?.LimitSettings?.DepositLimit?.DepositInterest?.LoanEndDate?.DateContent
                },
                "LoanAmount": {
                    "AmountValue": check response?.LimitSettings?.DepositLimit?.DepositInterest?.LoanAmount?.AmountValue,
                    "AmountCurrency": {
                        "Currencycode": check response?.LimitSettings?.DepositLimit?.DepositInterest?.LoanAmount?.AmountCurrency?.Currencycode
                    },
                    "DecimalPointPosition": check response?.LimitSettings?.DepositLimit?.DepositInterest?.LoanAmount?.DecimalPointPosition,
                    "AmountType": check response?.LimitSettings?.DepositLimit?.DepositInterest?.LoanAmount?.AmountType
                },
                "LoanArrangementType": check response?.LimitSettings?.DepositLimit?.DepositInterest?.LoanArrangementType,
                "ArrangementAction": {
                    "ActionType": check response?.LimitSettings?.DepositLimit?.DepositInterest?.ArrangementAction?.ActionType,
                    "EventType": check response?.LimitSettings?.DepositLimit?.DepositInterest?.ArrangementAction?.EventType,
                    "EventDateTime": {
                        "DateTimeContent": check response?.LimitSettings?.DepositLimit?.DepositInterest?.ArrangementAction?.EventDateTime?.DateTimeContent,
                        "TimeZoneCode": check response?.LimitSettings?.DepositLimit?.DepositInterest?.ArrangementAction?.EventDateTime?.TimeZoneCode,
                        "DaylightSavingIndicator": check response?.LimitSettings?.DepositLimit?.DepositInterest?.ArrangementAction?.EventDateTime?.DaylightSavingIndicator,
                        "DateTimeType": check response?.LimitSettings?.DepositLimit?.DepositInterest?.ArrangementAction?.EventDateTime?.DateTimeType
                    },
                    "EventDescription": check response?.LimitSettings?.DepositLimit?.DepositInterest?.ArrangementAction?.EventDescription,
                    "EventSource": check response?.LimitSettings?.DepositLimit?.DepositInterest?.ArrangementAction?.EventSource,
                    "EventLocation": {
                        "LocationDescription": check response?.LimitSettings?.DepositLimit?.DepositInterest?.ArrangementAction?.EventLocation?.LocationDescription,
                        "LocationDateTime": {
                            "DateTimeContent": check response?.LimitSettings?.DepositLimit?.DepositInterest?.ArrangementAction?.EventLocation?.LocationDateTime?.DateTimeContent,
                            "TimeZoneCode": check response?.LimitSettings?.DepositLimit?.DepositInterest?.ArrangementAction?.EventLocation?.LocationDateTime?.TimeZoneCode,
                            "DaylightSavingIndicator": check response?.LimitSettings?.DepositLimit?.DepositInterest?.ArrangementAction?.EventLocation?.LocationDateTime?.DaylightSavingIndicator,
                            "DateTimeType": check response?.LimitSettings?.DepositLimit?.DepositInterest?.ArrangementAction?.EventLocation?.LocationDateTime?.DateTimeType
                        },
                        "LocationStatus": {
                            "StatusReason": check response?.LimitSettings?.DepositLimit?.DepositInterest?.ArrangementAction?.EventLocation?.LocationStatus?.StatusReason,
                            "StatusDateTime": {
                                "DateTimeContent": check response?.LimitSettings?.DepositLimit?.DepositInterest?.ArrangementAction?.EventLocation?.LocationStatus?.StatusDateTime?.DateTimeContent,
                                "TimeZoneCode": check response?.LimitSettings?.DepositLimit?.DepositInterest?.ArrangementAction?.EventLocation?.LocationStatus?.StatusDateTime?.TimeZoneCode,
                                "DaylightSavingIndicator": check response?.LimitSettings?.DepositLimit?.DepositInterest?.ArrangementAction?.EventLocation?.LocationStatus?.StatusDateTime?.DaylightSavingIndicator,
                                "DateTimeType": check response?.LimitSettings?.DepositLimit?.DepositInterest?.ArrangementAction?.EventLocation?.LocationStatus?.StatusDateTime?.DateTimeType
                            },
                            "StatusValidityPeriod": {
                                "FromDateTime": {
                                    "DateTimeContent": check response?.LimitSettings?.DepositLimit?.DepositInterest?.ArrangementAction?.EventLocation?.LocationStatus?.StatusValidityPeriod?.FromDateTime?.DateTimeContent,
                                    "TimeZoneCode": check response?.LimitSettings?.DepositLimit?.DepositInterest?.ArrangementAction?.EventLocation?.LocationStatus?.StatusValidityPeriod?.FromDateTime?.TimeZoneCode,
                                    "DaylightSavingIndicator": check response?.LimitSettings?.DepositLimit?.DepositInterest?.ArrangementAction?.EventLocation?.LocationStatus?.StatusValidityPeriod?.FromDateTime?.DaylightSavingIndicator,
                                    "DateTimeType": check response?.LimitSettings?.DepositLimit?.DepositInterest?.ArrangementAction?.EventLocation?.LocationStatus?.StatusValidityPeriod?.FromDateTime?.DateTimeType
                                },
                                "ToDateTime": {
                                    "DateTimeContent": check response?.LimitSettings?.DepositLimit?.DepositInterest?.ArrangementAction?.EventLocation?.LocationStatus?.StatusValidityPeriod?.ToDateTime?.DateTimeContent,
                                    "TimeZoneCode": check response?.LimitSettings?.DepositLimit?.DepositInterest?.ArrangementAction?.EventLocation?.LocationStatus?.StatusValidityPeriod?.ToDateTime?.TimeZoneCode,
                                    "DaylightSavingIndicator": check response?.LimitSettings?.DepositLimit?.DepositInterest?.ArrangementAction?.EventLocation?.LocationStatus?.StatusValidityPeriod?.ToDateTime?.DaylightSavingIndicator,
                                    "DateTimeType": check response?.LimitSettings?.DepositLimit?.DepositInterest?.ArrangementAction?.EventLocation?.LocationStatus?.StatusValidityPeriod?.ToDateTime?.DateTimeType
                                }
                            },
                            "StatusInvolvedPartyReference": {
                                "PartyReference": check response?.LimitSettings?.DepositLimit?.DepositInterest?.ArrangementAction?.EventLocation?.LocationStatus?.StatusInvolvedPartyReference?.PartyReference,
                                "InvolvementReference": check response?.LimitSettings?.DepositLimit?.DepositInterest?.ArrangementAction?.EventLocation?.LocationStatus?.StatusInvolvedPartyReference?.InvolvementReference
                            }
                        },
                        "LocationType": check response?.LimitSettings?.DepositLimit?.DepositInterest?.ArrangementAction?.EventLocation?.LocationType,
                        "LocationZoningType": check response?.LimitSettings?.DepositLimit?.DepositInterest?.ArrangementAction?.EventLocation?.LocationZoningType,
                        "LocationNeighborhoodType": check response?.LimitSettings?.DepositLimit?.DepositInterest?.ArrangementAction?.EventLocation?.LocationNeighborhoodType,
                        "LocationConstructionType": check response?.LimitSettings?.DepositLimit?.DepositInterest?.ArrangementAction?.EventLocation?.LocationConstructionType,
                        "LocationOccupancyType": check response?.LimitSettings?.DepositLimit?.DepositInterest?.ArrangementAction?.EventLocation?.LocationOccupancyType,
                        "LocationValue": check response?.LimitSettings?.DepositLimit?.DepositInterest?.ArrangementAction?.EventLocation?.LocationValue,
                        "LocationCapacity": check response?.LimitSettings?.DepositLimit?.DepositInterest?.ArrangementAction?.EventLocation?.LocationCapacity,
                        "LocationIdentification": {
                            "IdentifierValue": check response?.LimitSettings?.DepositLimit?.DepositInterest?.ArrangementAction?.EventLocation?.LocationIdentification?.IdentifierValue,
                            "IdentifierIssuerReference": {
                                "PartyReference": check response?.LimitSettings?.DepositLimit?.DepositInterest?.ArrangementAction?.EventLocation?.LocationIdentification?.IdentifierIssuerReference?.PartyReference,
                                "InvolvementReference": check response?.LimitSettings?.DepositLimit?.DepositInterest?.ArrangementAction?.EventLocation?.LocationIdentification?.IdentifierIssuerReference?.InvolvementReference
                            },
                            "IdentifierStartDate": {
                                "DateTimeContent": check response?.LimitSettings?.DepositLimit?.DepositInterest?.ArrangementAction?.EventLocation?.LocationIdentification?.IdentifierStartDate?.DateTimeContent,
                                "TimeZoneCode": check response?.LimitSettings?.DepositLimit?.DepositInterest?.ArrangementAction?.EventLocation?.LocationIdentification?.IdentifierStartDate?.TimeZoneCode,
                                "DaylightSavingIndicator": check response?.LimitSettings?.DepositLimit?.DepositInterest?.ArrangementAction?.EventLocation?.LocationIdentification?.IdentifierStartDate?.DaylightSavingIndicator,
                                "DateTimeType": check response?.LimitSettings?.DepositLimit?.DepositInterest?.ArrangementAction?.EventLocation?.LocationIdentification?.IdentifierStartDate?.DateTimeType
                            },
                            "IdentifierEndDate": {
                                "DateTimeContent": check response?.LimitSettings?.DepositLimit?.DepositInterest?.ArrangementAction?.EventLocation?.LocationIdentification?.IdentifierEndDate?.DateTimeContent,
                                "TimeZoneCode": check response?.LimitSettings?.DepositLimit?.DepositInterest?.ArrangementAction?.EventLocation?.LocationIdentification?.IdentifierEndDate?.TimeZoneCode,
                                "DaylightSavingIndicator": check response?.LimitSettings?.DepositLimit?.DepositInterest?.ArrangementAction?.EventLocation?.LocationIdentification?.IdentifierEndDate?.DaylightSavingIndicator,
                                "DateTimeType": check response?.LimitSettings?.DepositLimit?.DepositInterest?.ArrangementAction?.EventLocation?.LocationIdentification?.IdentifierEndDate?.DateTimeType
                            }
                        },
                        "LocationAddress": check response?.LimitSettings?.DepositLimit?.DepositInterest?.ArrangementAction?.EventLocation?.LocationAddress,
                        "LocationName": {
                            "Name": check response?.LimitSettings?.DepositLimit?.DepositInterest?.ArrangementAction?.EventLocation?.LocationName?.Name
                        },
                        "LocationTimeZone": check response?.LimitSettings?.DepositLimit?.DepositInterest?.ArrangementAction?.EventLocation?.LocationTimeZone
                    },
                    "EventAction": check response?.LimitSettings?.DepositLimit?.DepositInterest?.ArrangementAction?.EventAction,
                    "EventStatus": {
                        "StatusReason": check response?.LimitSettings?.DepositLimit?.DepositInterest?.ArrangementAction?.EventStatus?.StatusReason,
                        "StatusDateTime": {
                            "DateTimeContent": check response?.LimitSettings?.DepositLimit?.DepositInterest?.ArrangementAction?.EventStatus?.StatusDateTime?.DateTimeContent,
                            "TimeZoneCode": check response?.LimitSettings?.DepositLimit?.DepositInterest?.ArrangementAction?.EventStatus?.StatusDateTime?.TimeZoneCode,
                            "DaylightSavingIndicator": check response?.LimitSettings?.DepositLimit?.DepositInterest?.ArrangementAction?.EventStatus?.StatusDateTime?.DaylightSavingIndicator,
                            "DateTimeType": check response?.LimitSettings?.DepositLimit?.DepositInterest?.ArrangementAction?.EventStatus?.StatusDateTime?.DateTimeType
                        },
                        "StatusValidityPeriod": {
                            "FromDateTime": {
                                "DateTimeContent": check response?.LimitSettings?.DepositLimit?.DepositInterest?.ArrangementAction?.EventStatus?.StatusValidityPeriod?.FromDateTime?.DateTimeContent,
                                "TimeZoneCode": check response?.LimitSettings?.DepositLimit?.DepositInterest?.ArrangementAction?.EventStatus?.StatusValidityPeriod?.FromDateTime?.TimeZoneCode,
                                "DaylightSavingIndicator": check response?.LimitSettings?.DepositLimit?.DepositInterest?.ArrangementAction?.EventStatus?.StatusValidityPeriod?.FromDateTime?.DaylightSavingIndicator,
                                "DateTimeType": check response?.LimitSettings?.DepositLimit?.DepositInterest?.ArrangementAction?.EventStatus?.StatusValidityPeriod?.FromDateTime?.DateTimeType
                            },
                            "ToDateTime": {
                                "DateTimeContent": check response?.LimitSettings?.DepositLimit?.DepositInterest?.ArrangementAction?.EventStatus?.StatusValidityPeriod?.ToDateTime?.DateTimeContent,
                                "TimeZoneCode": check response?.LimitSettings?.DepositLimit?.DepositInterest?.ArrangementAction?.EventStatus?.StatusValidityPeriod?.ToDateTime?.TimeZoneCode,
                                "DaylightSavingIndicator": check response?.LimitSettings?.DepositLimit?.DepositInterest?.ArrangementAction?.EventStatus?.StatusValidityPeriod?.ToDateTime?.DaylightSavingIndicator,
                                "DateTimeType": check response?.LimitSettings?.DepositLimit?.DepositInterest?.ArrangementAction?.EventStatus?.StatusValidityPeriod?.ToDateTime?.DateTimeType
                            }
                        },
                        "StatusInvolvedPartyReference": {
                            "PartyReference": check response?.LimitSettings?.DepositLimit?.DepositInterest?.ArrangementAction?.EventStatus?.StatusInvolvedPartyReference?.PartyReference,
                            "InvolvementReference": check response?.LimitSettings?.DepositLimit?.DepositInterest?.ArrangementAction?.EventStatus?.StatusInvolvedPartyReference?.InvolvementReference
                        }
                    },
                    "EventValue": check response?.LimitSettings?.DepositLimit?.DepositInterest?.ArrangementAction?.EventValue,
                    "EventValidityPeriod": {
                        "FromDateTime": {
                            "DateTimeContent": check response?.LimitSettings?.DepositLimit?.DepositInterest?.ArrangementAction?.EventValidityPeriod?.FromDateTime?.DateTimeContent,
                            "TimeZoneCode": check response?.LimitSettings?.DepositLimit?.DepositInterest?.ArrangementAction?.EventValidityPeriod?.FromDateTime?.TimeZoneCode,
                            "DaylightSavingIndicator": check response?.LimitSettings?.DepositLimit?.DepositInterest?.ArrangementAction?.EventValidityPeriod?.FromDateTime?.DaylightSavingIndicator,
                            "DateTimeType": check response?.LimitSettings?.DepositLimit?.DepositInterest?.ArrangementAction?.EventValidityPeriod?.FromDateTime?.DateTimeType
                        },
                        "ToDateTime": {
                            "DateTimeContent": check response?.LimitSettings?.DepositLimit?.DepositInterest?.ArrangementAction?.EventValidityPeriod?.ToDateTime?.DateTimeContent,
                            "TimeZoneCode": check response?.LimitSettings?.DepositLimit?.DepositInterest?.ArrangementAction?.EventValidityPeriod?.ToDateTime?.TimeZoneCode,
                            "DaylightSavingIndicator": check response?.LimitSettings?.DepositLimit?.DepositInterest?.ArrangementAction?.EventValidityPeriod?.ToDateTime?.DaylightSavingIndicator,
                            "DateTimeType": check response?.LimitSettings?.DepositLimit?.DepositInterest?.ArrangementAction?.EventValidityPeriod?.ToDateTime?.DateTimeType
                        }
                    },
                    "EventIdentification": {
                        "IdentifierValue": check response?.LimitSettings?.DepositLimit?.DepositInterest?.ArrangementAction?.EventIdentification?.IdentifierValue,
                        "IdentifierIssuerReference": {
                            "PartyReference": check response?.LimitSettings?.DepositLimit?.DepositInterest?.ArrangementAction?.EventIdentification?.IdentifierIssuerReference?.PartyReference,
                            "InvolvementReference": check response?.LimitSettings?.DepositLimit?.DepositInterest?.ArrangementAction?.EventIdentification?.IdentifierIssuerReference?.InvolvementReference
                        },
                        "IdentifierStartDate": {
                            "DateTimeContent": check response?.LimitSettings?.DepositLimit?.DepositInterest?.ArrangementAction?.EventIdentification?.IdentifierStartDate?.DateTimeContent,
                            "TimeZoneCode": check response?.LimitSettings?.DepositLimit?.DepositInterest?.ArrangementAction?.EventIdentification?.IdentifierStartDate?.TimeZoneCode,
                            "DaylightSavingIndicator": check response?.LimitSettings?.DepositLimit?.DepositInterest?.ArrangementAction?.EventIdentification?.IdentifierStartDate?.DaylightSavingIndicator,
                            "DateTimeType": check response?.LimitSettings?.DepositLimit?.DepositInterest?.ArrangementAction?.EventIdentification?.IdentifierStartDate?.DateTimeType
                        },
                        "IdentifierEndDate": {
                            "DateTimeContent": check response?.LimitSettings?.DepositLimit?.DepositInterest?.ArrangementAction?.EventIdentification?.IdentifierEndDate?.DateTimeContent,
                            "TimeZoneCode": check response?.LimitSettings?.DepositLimit?.DepositInterest?.ArrangementAction?.EventIdentification?.IdentifierEndDate?.TimeZoneCode,
                            "DaylightSavingIndicator": check response?.LimitSettings?.DepositLimit?.DepositInterest?.ArrangementAction?.EventIdentification?.IdentifierEndDate?.DaylightSavingIndicator,
                            "DateTimeType": check response?.LimitSettings?.DepositLimit?.DepositInterest?.ArrangementAction?.EventIdentification?.IdentifierEndDate?.DateTimeType
                        }
                    }
                },
                "ArrangementStartDate": {
                    "DateTimeContent": check response?.LimitSettings?.DepositLimit?.DepositInterest?.ArrangementStartDate?.DateTimeContent,
                    "TimeZoneCode": check response?.LimitSettings?.DepositLimit?.DepositInterest?.ArrangementStartDate?.TimeZoneCode,
                    "DaylightSavingIndicator": check response?.LimitSettings?.DepositLimit?.DepositInterest?.ArrangementStartDate?.DaylightSavingIndicator,
                    "DateTimeType": check response?.LimitSettings?.DepositLimit?.DepositInterest?.ArrangementStartDate?.DateTimeType
                },
                "ArrangementEndDate": {
                    "DateTimeContent": check response?.LimitSettings?.DepositLimit?.DepositInterest?.ArrangementEndDate?.DateTimeContent,
                    "TimeZoneCode": check response?.LimitSettings?.DepositLimit?.DepositInterest?.ArrangementEndDate?.TimeZoneCode,
                    "DaylightSavingIndicator": check response?.LimitSettings?.DepositLimit?.DepositInterest?.ArrangementEndDate?.DaylightSavingIndicator,
                    "DateTimeType": check response?.LimitSettings?.DepositLimit?.DepositInterest?.ArrangementEndDate?.DateTimeType
                },
                "ArrangementStatus": {
                    "ArrangementStatus": {
                        "StatusReason": check response?.LimitSettings?.DepositLimit?.DepositInterest?.ArrangementStatus?.ArrangementStatus?.StatusReason,
                        "StatusDateTime": {
                            "DateTimeContent": check response?.LimitSettings?.DepositLimit?.DepositInterest?.ArrangementStatus?.ArrangementStatus?.StatusDateTime?.DateTimeContent,
                            "TimeZoneCode": check response?.LimitSettings?.DepositLimit?.DepositInterest?.ArrangementStatus?.ArrangementStatus?.StatusDateTime?.TimeZoneCode,
                            "DaylightSavingIndicator": check response?.LimitSettings?.DepositLimit?.DepositInterest?.ArrangementStatus?.ArrangementStatus?.StatusDateTime?.DaylightSavingIndicator,
                            "DateTimeType": check response?.LimitSettings?.DepositLimit?.DepositInterest?.ArrangementStatus?.ArrangementStatus?.StatusDateTime?.DateTimeType
                        },
                        "StatusValidityPeriod": {
                            "FromDateTime": {
                                "DateTimeContent": check response?.LimitSettings?.DepositLimit?.DepositInterest?.ArrangementStatus?.ArrangementStatus?.StatusValidityPeriod?.FromDateTime?.DateTimeContent,
                                "TimeZoneCode": check response?.LimitSettings?.DepositLimit?.DepositInterest?.ArrangementStatus?.ArrangementStatus?.StatusValidityPeriod?.FromDateTime?.TimeZoneCode,
                                "DaylightSavingIndicator": check response?.LimitSettings?.DepositLimit?.DepositInterest?.ArrangementStatus?.ArrangementStatus?.StatusValidityPeriod?.FromDateTime?.DaylightSavingIndicator,
                                "DateTimeType": check response?.LimitSettings?.DepositLimit?.DepositInterest?.ArrangementStatus?.ArrangementStatus?.StatusValidityPeriod?.FromDateTime?.DateTimeType
                            },
                            "ToDateTime": {
                                "DateTimeContent": check response?.LimitSettings?.DepositLimit?.DepositInterest?.ArrangementStatus?.ArrangementStatus?.StatusValidityPeriod?.ToDateTime?.DateTimeContent,
                                "TimeZoneCode": check response?.LimitSettings?.DepositLimit?.DepositInterest?.ArrangementStatus?.ArrangementStatus?.StatusValidityPeriod?.ToDateTime?.TimeZoneCode,
                                "DaylightSavingIndicator": check response?.LimitSettings?.DepositLimit?.DepositInterest?.ArrangementStatus?.ArrangementStatus?.StatusValidityPeriod?.ToDateTime?.DaylightSavingIndicator,
                                "DateTimeType": check response?.LimitSettings?.DepositLimit?.DepositInterest?.ArrangementStatus?.ArrangementStatus?.StatusValidityPeriod?.ToDateTime?.DateTimeType
                            }
                        },
                        "StatusInvolvedPartyReference": {
                            "PartyReference": check response?.LimitSettings?.DepositLimit?.DepositInterest?.ArrangementStatus?.ArrangementStatus?.StatusInvolvedPartyReference?.PartyReference,
                            "InvolvementReference": check response?.LimitSettings?.DepositLimit?.DepositInterest?.ArrangementStatus?.ArrangementStatus?.StatusInvolvedPartyReference?.InvolvementReference
                        }
                    },
                    "ArrangementStatusType": check response?.LimitSettings?.DepositLimit?.DepositInterest?.ArrangementStatus?.ArrangementStatusType
                },
                "ArrangementSubjectMatter": {
                    "Subject": check response?.LimitSettings?.DepositLimit?.DepositInterest?.ArrangementSubjectMatter?.Subject
                },
                "Arrangementtype": check response?.LimitSettings?.DepositLimit?.DepositInterest?.Arrangementtype,
                "ArrangementIdentification": {
                    "IdentifierValue": check response?.LimitSettings?.DepositLimit?.DepositInterest?.ArrangementIdentification?.IdentifierValue,
                    "IdentifierIssuerReference": {
                        "PartyReference": check response?.LimitSettings?.DepositLimit?.DepositInterest?.ArrangementIdentification?.IdentifierIssuerReference?.PartyReference,
                        "InvolvementReference": check response?.LimitSettings?.DepositLimit?.DepositInterest?.ArrangementIdentification?.IdentifierIssuerReference?.InvolvementReference
                    },
                    "IdentifierStartDate": {
                        "DateTimeContent": check response?.LimitSettings?.DepositLimit?.DepositInterest?.ArrangementIdentification?.IdentifierStartDate?.DateTimeContent,
                        "TimeZoneCode": check response?.LimitSettings?.DepositLimit?.DepositInterest?.ArrangementIdentification?.IdentifierStartDate?.TimeZoneCode,
                        "DaylightSavingIndicator": check response?.LimitSettings?.DepositLimit?.DepositInterest?.ArrangementIdentification?.IdentifierStartDate?.DaylightSavingIndicator,
                        "DateTimeType": check response?.LimitSettings?.DepositLimit?.DepositInterest?.ArrangementIdentification?.IdentifierStartDate?.DateTimeType
                    },
                    "IdentifierEndDate": {
                        "DateTimeContent": check response?.LimitSettings?.DepositLimit?.DepositInterest?.ArrangementIdentification?.IdentifierEndDate?.DateTimeContent,
                        "TimeZoneCode": check response?.LimitSettings?.DepositLimit?.DepositInterest?.ArrangementIdentification?.IdentifierEndDate?.TimeZoneCode,
                        "DaylightSavingIndicator": check response?.LimitSettings?.DepositLimit?.DepositInterest?.ArrangementIdentification?.IdentifierEndDate?.DaylightSavingIndicator,
                        "DateTimeType": check response?.LimitSettings?.DepositLimit?.DepositInterest?.ArrangementIdentification?.IdentifierEndDate?.DateTimeType
                    }
                },
                "PaymentCardArrangementIdentifier": {
                    "IdentifierValue": check response?.LimitSettings?.DepositLimit?.DepositInterest?.PaymentCardArrangementIdentifier?.IdentifierValue,
                    "IdentifierIssuerReference": {
                        "PartyReference": check response?.LimitSettings?.DepositLimit?.DepositInterest?.PaymentCardArrangementIdentifier?.IdentifierIssuerReference?.PartyReference,
                        "InvolvementReference": check response?.LimitSettings?.DepositLimit?.DepositInterest?.PaymentCardArrangementIdentifier?.IdentifierIssuerReference?.InvolvementReference
                    },
                    "IdentifierStartDate": {
                        "DateTimeContent": check response?.LimitSettings?.DepositLimit?.DepositInterest?.PaymentCardArrangementIdentifier?.IdentifierStartDate?.DateTimeContent,
                        "TimeZoneCode": check response?.LimitSettings?.DepositLimit?.DepositInterest?.PaymentCardArrangementIdentifier?.IdentifierStartDate?.TimeZoneCode,
                        "DaylightSavingIndicator": check response?.LimitSettings?.DepositLimit?.DepositInterest?.PaymentCardArrangementIdentifier?.IdentifierStartDate?.DaylightSavingIndicator,
                        "DateTimeType": check response?.LimitSettings?.DepositLimit?.DepositInterest?.PaymentCardArrangementIdentifier?.IdentifierStartDate?.DateTimeType
                    },
                    "IdentifierEndDate": {
                        "DateTimeContent": check response?.LimitSettings?.DepositLimit?.DepositInterest?.PaymentCardArrangementIdentifier?.IdentifierEndDate?.DateTimeContent,
                        "TimeZoneCode": check response?.LimitSettings?.DepositLimit?.DepositInterest?.PaymentCardArrangementIdentifier?.IdentifierEndDate?.TimeZoneCode,
                        "DaylightSavingIndicator": check response?.LimitSettings?.DepositLimit?.DepositInterest?.PaymentCardArrangementIdentifier?.IdentifierEndDate?.DaylightSavingIndicator,
                        "DateTimeType": check response?.LimitSettings?.DepositLimit?.DepositInterest?.PaymentCardArrangementIdentifier?.IdentifierEndDate?.DateTimeType
                    }
                },
                "CardPaymentArrangementType": check response?.LimitSettings?.DepositLimit?.DepositInterest?.CardPaymentArrangementType,
                "SavingsAccountArrangementType": check response?.LimitSettings?.DepositLimit?.DepositInterest?.SavingsAccountArrangementType,
                "SavingsAccountArrangementProductFeatureType": {
                    "ProductFeatureTypeValues": check response?.LimitSettings?.DepositLimit?.DepositInterest?.SavingsAccountArrangementProductFeatureType?.ProductFeatureTypeValues
                },
                "CurrentAccountArrangementType": check response?.LimitSettings?.DepositLimit?.DepositInterest?.CurrentAccountArrangementType,
                "CurrentAccountArrangementProductFeatureType": {
                    "ProductFeatureTypeValues": check response?.LimitSettings?.DepositLimit?.DepositInterest?.CurrentAccountArrangementProductFeatureType?.ProductFeatureTypeValues
                },
                "ProductArrangementType": check response?.LimitSettings?.DepositLimit?.DepositInterest?.ProductArrangementType,
                "TermDepositArrangementType": check response?.LimitSettings?.DepositLimit?.DepositInterest?.TermDepositArrangementType,
                "TermDepositArrangementProductFeatureType": {
                    "ProductFeatureTypeValues": check response?.LimitSettings?.DepositLimit?.DepositInterest?.TermDepositArrangementProductFeatureType?.ProductFeatureTypeValues
                },
                "TermDepositMaturityDate": {
                    "DateTimeContent": check response?.LimitSettings?.DepositLimit?.DepositInterest?.TermDepositMaturityDate?.DateTimeContent,
                    "TimeZoneCode": check response?.LimitSettings?.DepositLimit?.DepositInterest?.TermDepositMaturityDate?.TimeZoneCode,
                    "DaylightSavingIndicator": check response?.LimitSettings?.DepositLimit?.DepositInterest?.TermDepositMaturityDate?.DaylightSavingIndicator,
                    "DateTimeType": check response?.LimitSettings?.DepositLimit?.DepositInterest?.TermDepositMaturityDate?.DateTimeType
                },
                "TermDepositOpenDate": {
                    "DateTimeContent": check response?.LimitSettings?.DepositLimit?.DepositInterest?.TermDepositOpenDate?.DateTimeContent,
                    "TimeZoneCode": check response?.LimitSettings?.DepositLimit?.DepositInterest?.TermDepositOpenDate?.TimeZoneCode,
                    "DaylightSavingIndicator": check response?.LimitSettings?.DepositLimit?.DepositInterest?.TermDepositOpenDate?.DaylightSavingIndicator,
                    "DateTimeType": check response?.LimitSettings?.DepositLimit?.DepositInterest?.TermDepositOpenDate?.DateTimeType
                },
                "TermDepositAmount": {
                    "AmountValue": check response?.LimitSettings?.DepositLimit?.DepositInterest?.TermDepositAmount?.AmountValue,
                    "AmountCurrency": {
                        "Currencycode": check response?.LimitSettings?.DepositLimit?.DepositInterest?.TermDepositAmount?.AmountCurrency?.Currencycode
                    },
                    "DecimalPointPosition": check response?.LimitSettings?.DepositLimit?.DepositInterest?.TermDepositAmount?.DecimalPointPosition,
                    "AmountType": check response?.LimitSettings?.DepositLimit?.DepositInterest?.TermDepositAmount?.AmountType
                },
                "TermDepositDuration": {
                    "Duration": check response?.LimitSettings?.DepositLimit?.DepositInterest?.TermDepositDuration?.Duration
                },
                "DepositTerm": check response?.LimitSettings?.DepositLimit?.DepositInterest?.DepositTerm,
                "VirtualAccountArrangementType": check response?.LimitSettings?.DepositLimit?.DepositInterest?.VirtualAccountArrangementType,
                "BankPlanArrangementType": check response?.LimitSettings?.DepositLimit?.DepositInterest?.BankPlanArrangementType,
                "CreditFacilityDataTime": {
                    "DateTimeContent": check response?.LimitSettings?.DepositLimit?.DepositInterest?.CreditFacilityDataTime?.DateTimeContent,
                    "TimeZoneCode": check response?.LimitSettings?.DepositLimit?.DepositInterest?.CreditFacilityDataTime?.TimeZoneCode,
                    "DaylightSavingIndicator": check response?.LimitSettings?.DepositLimit?.DepositInterest?.CreditFacilityDataTime?.DaylightSavingIndicator,
                    "DateTimeType": check response?.LimitSettings?.DepositLimit?.DepositInterest?.CreditFacilityDataTime?.DateTimeType
                },
                "CreditFacilityType": check response?.LimitSettings?.DepositLimit?.DepositInterest?.CreditFacilityType,
                "CreditFacilityRateType": check response?.LimitSettings?.DepositLimit?.DepositInterest?.CreditFacilityRateType,
                "CreditFacilityNumber": {
                    "IdentifierValue": check response?.LimitSettings?.DepositLimit?.DepositInterest?.CreditFacilityNumber?.IdentifierValue,
                    "IdentifierIssuerReference": {
                        "PartyReference": check response?.LimitSettings?.DepositLimit?.DepositInterest?.CreditFacilityNumber?.IdentifierIssuerReference?.PartyReference,
                        "InvolvementReference": check response?.LimitSettings?.DepositLimit?.DepositInterest?.CreditFacilityNumber?.IdentifierIssuerReference?.InvolvementReference
                    },
                    "IdentifierStartDate": {
                        "DateTimeContent": check response?.LimitSettings?.DepositLimit?.DepositInterest?.CreditFacilityNumber?.IdentifierStartDate?.DateTimeContent,
                        "TimeZoneCode": check response?.LimitSettings?.DepositLimit?.DepositInterest?.CreditFacilityNumber?.IdentifierStartDate?.TimeZoneCode,
                        "DaylightSavingIndicator": check response?.LimitSettings?.DepositLimit?.DepositInterest?.CreditFacilityNumber?.IdentifierStartDate?.DaylightSavingIndicator,
                        "DateTimeType": check response?.LimitSettings?.DepositLimit?.DepositInterest?.CreditFacilityNumber?.IdentifierStartDate?.DateTimeType
                    },
                    "IdentifierEndDate": {
                        "DateTimeContent": check response?.LimitSettings?.DepositLimit?.DepositInterest?.CreditFacilityNumber?.IdentifierEndDate?.DateTimeContent,
                        "TimeZoneCode": check response?.LimitSettings?.DepositLimit?.DepositInterest?.CreditFacilityNumber?.IdentifierEndDate?.TimeZoneCode,
                        "DaylightSavingIndicator": check response?.LimitSettings?.DepositLimit?.DepositInterest?.CreditFacilityNumber?.IdentifierEndDate?.DaylightSavingIndicator,
                        "DateTimeType": check response?.LimitSettings?.DepositLimit?.DepositInterest?.CreditFacilityNumber?.IdentifierEndDate?.DateTimeType
                    }
                },
                "CreditFacilityAmount": {
                    "AmountValue": check response?.LimitSettings?.DepositLimit?.DepositInterest?.CreditFacilityAmount?.AmountValue,
                    "AmountCurrency": {
                        "Currencycode": check response?.LimitSettings?.DepositLimit?.DepositInterest?.CreditFacilityAmount?.AmountCurrency?.Currencycode
                    },
                    "DecimalPointPosition": check response?.LimitSettings?.DepositLimit?.DepositInterest?.CreditFacilityAmount?.DecimalPointPosition,
                    "AmountType": check response?.LimitSettings?.DepositLimit?.DepositInterest?.CreditFacilityAmount?.AmountType
                }
            },
            "DepositDuration": {
                "Duration": check response?.LimitSettings?.DepositLimit?.DepositDuration?.Duration
            },
            "DepositRate": {
                "RateValue": check response?.LimitSettings?.DepositLimit?.DepositRate?.RateValue,
                "RateUnit": check response?.LimitSettings?.DepositLimit?.DepositRate?.RateUnit,
                "RatePeriod": {
                    "FromDateTime": {
                        "DateTimeContent": check response?.LimitSettings?.DepositLimit?.DepositRate?.RatePeriod?.FromDateTime?.DateTimeContent,
                        "TimeZoneCode": check response?.LimitSettings?.DepositLimit?.DepositRate?.RatePeriod?.FromDateTime?.TimeZoneCode,
                        "DaylightSavingIndicator": check response?.LimitSettings?.DepositLimit?.DepositRate?.RatePeriod?.FromDateTime?.DaylightSavingIndicator,
                        "DateTimeType": check response?.LimitSettings?.DepositLimit?.DepositRate?.RatePeriod?.FromDateTime?.DateTimeType
                    },
                    "ToDateTime": {
                        "DateTimeContent": check response?.LimitSettings?.DepositLimit?.DepositRate?.RatePeriod?.ToDateTime?.DateTimeContent,
                        "TimeZoneCode": check response?.LimitSettings?.DepositLimit?.DepositRate?.RatePeriod?.ToDateTime?.TimeZoneCode,
                        "DaylightSavingIndicator": check response?.LimitSettings?.DepositLimit?.DepositRate?.RatePeriod?.ToDateTime?.DaylightSavingIndicator,
                        "DateTimeType": check response?.LimitSettings?.DepositLimit?.DepositRate?.RatePeriod?.ToDateTime?.DateTimeType
                    }
                },
                "RateCapitalUnit": check response?.LimitSettings?.DepositLimit?.DepositRate?.RateCapitalUnit
            },
            "ServiceType": check response?.LimitSettings?.DepositLimit?.ServiceType,
            "PaymentDate": {
                "PaymentDate": {
                    "DateTimeContent": check response?.LimitSettings?.DepositLimit?.PaymentDate?.PaymentDate?.DateTimeContent,
                    "TimeZoneCode": check response?.LimitSettings?.DepositLimit?.PaymentDate?.PaymentDate?.TimeZoneCode,
                    "DaylightSavingIndicator": check response?.LimitSettings?.DepositLimit?.PaymentDate?.PaymentDate?.DaylightSavingIndicator,
                    "DateTimeType": check response?.LimitSettings?.DepositLimit?.PaymentDate?.PaymentDate?.DateTimeType
                },
                "PaymentDateType": check response?.LimitSettings?.DepositLimit?.PaymentDate?.PaymentDateType
            },
            "PaymentPeriod": {
                "FromDateTime": {
                    "DateTimeContent": check response?.LimitSettings?.DepositLimit?.PaymentPeriod?.FromDateTime?.DateTimeContent,
                    "TimeZoneCode": check response?.LimitSettings?.DepositLimit?.PaymentPeriod?.FromDateTime?.TimeZoneCode,
                    "DaylightSavingIndicator": check response?.LimitSettings?.DepositLimit?.PaymentPeriod?.FromDateTime?.DaylightSavingIndicator,
                    "DateTimeType": check response?.LimitSettings?.DepositLimit?.PaymentPeriod?.FromDateTime?.DateTimeType
                },
                "ToDateTime": {
                    "DateTimeContent": check response?.LimitSettings?.DepositLimit?.PaymentPeriod?.ToDateTime?.DateTimeContent,
                    "TimeZoneCode": check response?.LimitSettings?.DepositLimit?.PaymentPeriod?.ToDateTime?.TimeZoneCode,
                    "DaylightSavingIndicator": check response?.LimitSettings?.DepositLimit?.PaymentPeriod?.ToDateTime?.DaylightSavingIndicator,
                    "DateTimeType": check response?.LimitSettings?.DepositLimit?.PaymentPeriod?.ToDateTime?.DateTimeType
                }
            },
            "PaymentPurpose": check response?.LimitSettings?.DepositLimit?.PaymentPurpose,
            "PaymentAmountAndCurrency": {
                "PaymentAmountAndCurrencyType": check response?.LimitSettings?.DepositLimit?.PaymentAmountAndCurrency?.PaymentAmountAndCurrencyType,
                "PaymentAmountAndCurrency": {
                    "AmountValue": check response?.LimitSettings?.DepositLimit?.PaymentAmountAndCurrency?.PaymentAmountAndCurrency?.AmountValue,
                    "AmountCurrency": {
                        "Currencycode": check response?.LimitSettings?.DepositLimit?.PaymentAmountAndCurrency?.PaymentAmountAndCurrency?.AmountCurrency?.Currencycode
                    },
                    "DecimalPointPosition": check response?.LimitSettings?.DepositLimit?.PaymentAmountAndCurrency?.PaymentAmountAndCurrency?.DecimalPointPosition,
                    "AmountType": check response?.LimitSettings?.DepositLimit?.PaymentAmountAndCurrency?.PaymentAmountAndCurrency?.AmountType
                }
            },
            "PaymentMethod": check response?.LimitSettings?.DepositLimit?.PaymentMethod,
            "PaymentType": check response?.LimitSettings?.DepositLimit?.PaymentType,
            "PaymentTime": check response?.LimitSettings?.DepositLimit?.PaymentTime,
            "RemittanceDeliveryMethod": check response?.LimitSettings?.DepositLimit?.RemittanceDeliveryMethod,
            "RemittanceLocation": {
                "ContactPointType": check response?.LimitSettings?.DepositLimit?.RemittanceLocation?.ContactPointType,
                "PartyLocationType": check response?.LimitSettings?.DepositLimit?.RemittanceLocation?.PartyLocationType,
                "LocationReference": {
                    "LocationDescription": check response?.LimitSettings?.DepositLimit?.RemittanceLocation?.LocationReference?.LocationDescription,
                    "LocationDateTime": {
                        "DateTimeContent": check response?.LimitSettings?.DepositLimit?.RemittanceLocation?.LocationReference?.LocationDateTime?.DateTimeContent,
                        "TimeZoneCode": check response?.LimitSettings?.DepositLimit?.RemittanceLocation?.LocationReference?.LocationDateTime?.TimeZoneCode,
                        "DaylightSavingIndicator": check response?.LimitSettings?.DepositLimit?.RemittanceLocation?.LocationReference?.LocationDateTime?.DaylightSavingIndicator,
                        "DateTimeType": check response?.LimitSettings?.DepositLimit?.RemittanceLocation?.LocationReference?.LocationDateTime?.DateTimeType
                    },
                    "LocationStatus": {
                        "StatusReason": check response?.LimitSettings?.DepositLimit?.RemittanceLocation?.LocationReference?.LocationStatus?.StatusReason,
                        "StatusDateTime": {
                            "DateTimeContent": check response?.LimitSettings?.DepositLimit?.RemittanceLocation?.LocationReference?.LocationStatus?.StatusDateTime?.DateTimeContent,
                            "TimeZoneCode": check response?.LimitSettings?.DepositLimit?.RemittanceLocation?.LocationReference?.LocationStatus?.StatusDateTime?.TimeZoneCode,
                            "DaylightSavingIndicator": check response?.LimitSettings?.DepositLimit?.RemittanceLocation?.LocationReference?.LocationStatus?.StatusDateTime?.DaylightSavingIndicator,
                            "DateTimeType": check response?.LimitSettings?.DepositLimit?.RemittanceLocation?.LocationReference?.LocationStatus?.StatusDateTime?.DateTimeType
                        },
                        "StatusValidityPeriod": {
                            "FromDateTime": {
                                "DateTimeContent": check response?.LimitSettings?.DepositLimit?.RemittanceLocation?.LocationReference?.LocationStatus?.StatusValidityPeriod?.FromDateTime?.DateTimeContent,
                                "TimeZoneCode": check response?.LimitSettings?.DepositLimit?.RemittanceLocation?.LocationReference?.LocationStatus?.StatusValidityPeriod?.FromDateTime?.TimeZoneCode,
                                "DaylightSavingIndicator": check response?.LimitSettings?.DepositLimit?.RemittanceLocation?.LocationReference?.LocationStatus?.StatusValidityPeriod?.FromDateTime?.DaylightSavingIndicator,
                                "DateTimeType": check response?.LimitSettings?.DepositLimit?.RemittanceLocation?.LocationReference?.LocationStatus?.StatusValidityPeriod?.FromDateTime?.DateTimeType
                            },
                            "ToDateTime": {
                                "DateTimeContent": check response?.LimitSettings?.DepositLimit?.RemittanceLocation?.LocationReference?.LocationStatus?.StatusValidityPeriod?.ToDateTime?.DateTimeContent,
                                "TimeZoneCode": check response?.LimitSettings?.DepositLimit?.RemittanceLocation?.LocationReference?.LocationStatus?.StatusValidityPeriod?.ToDateTime?.TimeZoneCode,
                                "DaylightSavingIndicator": check response?.LimitSettings?.DepositLimit?.RemittanceLocation?.LocationReference?.LocationStatus?.StatusValidityPeriod?.ToDateTime?.DaylightSavingIndicator,
                                "DateTimeType": check response?.LimitSettings?.DepositLimit?.RemittanceLocation?.LocationReference?.LocationStatus?.StatusValidityPeriod?.ToDateTime?.DateTimeType
                            }
                        },
                        "StatusInvolvedPartyReference": {
                            "PartyReference": check response?.LimitSettings?.DepositLimit?.RemittanceLocation?.LocationReference?.LocationStatus?.StatusInvolvedPartyReference?.PartyReference,
                            "InvolvementReference": check response?.LimitSettings?.DepositLimit?.RemittanceLocation?.LocationReference?.LocationStatus?.StatusInvolvedPartyReference?.InvolvementReference
                        }
                    },
                    "LocationType": check response?.LimitSettings?.DepositLimit?.RemittanceLocation?.LocationReference?.LocationType,
                    "LocationZoningType": check response?.LimitSettings?.DepositLimit?.RemittanceLocation?.LocationReference?.LocationZoningType,
                    "LocationNeighborhoodType": check response?.LimitSettings?.DepositLimit?.RemittanceLocation?.LocationReference?.LocationNeighborhoodType,
                    "LocationConstructionType": check response?.LimitSettings?.DepositLimit?.RemittanceLocation?.LocationReference?.LocationConstructionType,
                    "LocationOccupancyType": check response?.LimitSettings?.DepositLimit?.RemittanceLocation?.LocationReference?.LocationOccupancyType,
                    "LocationValue": check response?.LimitSettings?.DepositLimit?.RemittanceLocation?.LocationReference?.LocationValue,
                    "LocationCapacity": check response?.LimitSettings?.DepositLimit?.RemittanceLocation?.LocationReference?.LocationCapacity,
                    "LocationIdentification": {
                        "IdentifierValue": check response?.LimitSettings?.DepositLimit?.RemittanceLocation?.LocationReference?.LocationIdentification?.IdentifierValue,
                        "IdentifierIssuerReference": {
                            "PartyReference": check response?.LimitSettings?.DepositLimit?.RemittanceLocation?.LocationReference?.LocationIdentification?.IdentifierIssuerReference?.PartyReference,
                            "InvolvementReference": check response?.LimitSettings?.DepositLimit?.RemittanceLocation?.LocationReference?.LocationIdentification?.IdentifierIssuerReference?.InvolvementReference
                        },
                        "IdentifierStartDate": {
                            "DateTimeContent": check response?.LimitSettings?.DepositLimit?.RemittanceLocation?.LocationReference?.LocationIdentification?.IdentifierStartDate?.DateTimeContent,
                            "TimeZoneCode": check response?.LimitSettings?.DepositLimit?.RemittanceLocation?.LocationReference?.LocationIdentification?.IdentifierStartDate?.TimeZoneCode,
                            "DaylightSavingIndicator": check response?.LimitSettings?.DepositLimit?.RemittanceLocation?.LocationReference?.LocationIdentification?.IdentifierStartDate?.DaylightSavingIndicator,
                            "DateTimeType": check response?.LimitSettings?.DepositLimit?.RemittanceLocation?.LocationReference?.LocationIdentification?.IdentifierStartDate?.DateTimeType
                        },
                        "IdentifierEndDate": {
                            "DateTimeContent": check response?.LimitSettings?.DepositLimit?.RemittanceLocation?.LocationReference?.LocationIdentification?.IdentifierEndDate?.DateTimeContent,
                            "TimeZoneCode": check response?.LimitSettings?.DepositLimit?.RemittanceLocation?.LocationReference?.LocationIdentification?.IdentifierEndDate?.TimeZoneCode,
                            "DaylightSavingIndicator": check response?.LimitSettings?.DepositLimit?.RemittanceLocation?.LocationReference?.LocationIdentification?.IdentifierEndDate?.DaylightSavingIndicator,
                            "DateTimeType": check response?.LimitSettings?.DepositLimit?.RemittanceLocation?.LocationReference?.LocationIdentification?.IdentifierEndDate?.DateTimeType
                        }
                    },
                    "LocationAddress": check response?.LimitSettings?.DepositLimit?.RemittanceLocation?.LocationReference?.LocationAddress,
                    "LocationName": {
                        "Name": check response?.LimitSettings?.DepositLimit?.RemittanceLocation?.LocationReference?.LocationName?.Name
                    },
                    "LocationTimeZone": check response?.LimitSettings?.DepositLimit?.RemittanceLocation?.LocationReference?.LocationTimeZone
                },
                "PartyReference": {
                    "PartyName": {
                        "Name": check response?.LimitSettings?.DepositLimit?.RemittanceLocation?.PartyReference?.PartyName?.Name
                    },
                    "PartyType": check response?.LimitSettings?.DepositLimit?.RemittanceLocation?.PartyReference?.PartyType,
                    "PartyDateTime": {
                        "DateTimeContent": check response?.LimitSettings?.DepositLimit?.RemittanceLocation?.PartyReference?.PartyDateTime?.DateTimeContent,
                        "TimeZoneCode": check response?.LimitSettings?.DepositLimit?.RemittanceLocation?.PartyReference?.PartyDateTime?.TimeZoneCode,
                        "DaylightSavingIndicator": check response?.LimitSettings?.DepositLimit?.RemittanceLocation?.PartyReference?.PartyDateTime?.DaylightSavingIndicator,
                        "DateTimeType": check response?.LimitSettings?.DepositLimit?.RemittanceLocation?.PartyReference?.PartyDateTime?.DateTimeType
                    },
                    "PartyIdentification": {
                        "PartyIdentificationType": check response?.LimitSettings?.DepositLimit?.RemittanceLocation?.PartyReference?.PartyIdentification?.PartyIdentificationType,
                        "PartyIdentification": {
                            "IdentifierValue": check response?.LimitSettings?.DepositLimit?.RemittanceLocation?.PartyReference?.PartyIdentification?.PartyIdentification?.IdentifierValue,
                            "IdentifierIssuerReference": {
                                "PartyReference": check response?.LimitSettings?.DepositLimit?.RemittanceLocation?.PartyReference?.PartyIdentification?.PartyIdentification?.IdentifierIssuerReference?.PartyReference,
                                "InvolvementReference": check response?.LimitSettings?.DepositLimit?.RemittanceLocation?.PartyReference?.PartyIdentification?.PartyIdentification?.IdentifierIssuerReference?.InvolvementReference
                            },
                            "IdentifierStartDate": {
                                "DateTimeContent": check response?.LimitSettings?.DepositLimit?.RemittanceLocation?.PartyReference?.PartyIdentification?.PartyIdentification?.IdentifierStartDate?.DateTimeContent,
                                "TimeZoneCode": check response?.LimitSettings?.DepositLimit?.RemittanceLocation?.PartyReference?.PartyIdentification?.PartyIdentification?.IdentifierStartDate?.TimeZoneCode,
                                "DaylightSavingIndicator": check response?.LimitSettings?.DepositLimit?.RemittanceLocation?.PartyReference?.PartyIdentification?.PartyIdentification?.IdentifierStartDate?.DaylightSavingIndicator,
                                "DateTimeType": check response?.LimitSettings?.DepositLimit?.RemittanceLocation?.PartyReference?.PartyIdentification?.PartyIdentification?.IdentifierStartDate?.DateTimeType
                            },
                            "IdentifierEndDate": {
                                "DateTimeContent": check response?.LimitSettings?.DepositLimit?.RemittanceLocation?.PartyReference?.PartyIdentification?.PartyIdentification?.IdentifierEndDate?.DateTimeContent,
                                "TimeZoneCode": check response?.LimitSettings?.DepositLimit?.RemittanceLocation?.PartyReference?.PartyIdentification?.PartyIdentification?.IdentifierEndDate?.TimeZoneCode,
                                "DaylightSavingIndicator": check response?.LimitSettings?.DepositLimit?.RemittanceLocation?.PartyReference?.PartyIdentification?.PartyIdentification?.IdentifierEndDate?.DaylightSavingIndicator,
                                "DateTimeType": check response?.LimitSettings?.DepositLimit?.RemittanceLocation?.PartyReference?.PartyIdentification?.PartyIdentification?.IdentifierEndDate?.DateTimeType
                            }
                        }
                    },
                    "PartyLegalStructureType": check response?.LimitSettings?.DepositLimit?.RemittanceLocation?.PartyReference?.PartyLegalStructureType,
                    "PartyActivityIndicator": {
                        "Industrycode": check response?.LimitSettings?.DepositLimit?.RemittanceLocation?.PartyReference?.PartyActivityIndicator?.Industrycode
                    }
                }
            },
            "PaymentIdentification": {
                "PaymentIdentification": {
                    "IdentifierValue": check response?.LimitSettings?.DepositLimit?.PaymentIdentification?.PaymentIdentification?.IdentifierValue,
                    "IdentifierIssuerReference": {
                        "PartyReference": check response?.LimitSettings?.DepositLimit?.PaymentIdentification?.PaymentIdentification?.IdentifierIssuerReference?.PartyReference,
                        "InvolvementReference": check response?.LimitSettings?.DepositLimit?.PaymentIdentification?.PaymentIdentification?.IdentifierIssuerReference?.InvolvementReference
                    },
                    "IdentifierStartDate": {
                        "DateTimeContent": check response?.LimitSettings?.DepositLimit?.PaymentIdentification?.PaymentIdentification?.IdentifierStartDate?.DateTimeContent,
                        "TimeZoneCode": check response?.LimitSettings?.DepositLimit?.PaymentIdentification?.PaymentIdentification?.IdentifierStartDate?.TimeZoneCode,
                        "DaylightSavingIndicator": check response?.LimitSettings?.DepositLimit?.PaymentIdentification?.PaymentIdentification?.IdentifierStartDate?.DaylightSavingIndicator,
                        "DateTimeType": check response?.LimitSettings?.DepositLimit?.PaymentIdentification?.PaymentIdentification?.IdentifierStartDate?.DateTimeType
                    },
                    "IdentifierEndDate": {
                        "DateTimeContent": check response?.LimitSettings?.DepositLimit?.PaymentIdentification?.PaymentIdentification?.IdentifierEndDate?.DateTimeContent,
                        "TimeZoneCode": check response?.LimitSettings?.DepositLimit?.PaymentIdentification?.PaymentIdentification?.IdentifierEndDate?.TimeZoneCode,
                        "DaylightSavingIndicator": check response?.LimitSettings?.DepositLimit?.PaymentIdentification?.PaymentIdentification?.IdentifierEndDate?.DaylightSavingIndicator,
                        "DateTimeType": check response?.LimitSettings?.DepositLimit?.PaymentIdentification?.PaymentIdentification?.IdentifierEndDate?.DateTimeType
                    }
                },
                "PaymentIdentificationType": check response?.LimitSettings?.DepositLimit?.PaymentIdentification?.PaymentIdentificationType
            },
            "PaymentSchedule": {
                "ScheduleType": check response?.LimitSettings?.DepositLimit?.PaymentSchedule?.ScheduleType
            },
            "PaymentFrequency": {
                "FrequencyCode": check response?.LimitSettings?.DepositLimit?.PaymentFrequency?.FrequencyCode,
                "FrequencyName": {
                    "Name": check response?.LimitSettings?.DepositLimit?.PaymentFrequency?.FrequencyName?.Name
                },
                "FrequencyDefinition": check response?.LimitSettings?.DepositLimit?.PaymentFrequency?.FrequencyDefinition
            },
            "PaymentDescription": check response?.LimitSettings?.DepositLimit?.PaymentDescription,
            "CreditFacilityDataTime": {
                "DateTimeContent": check response?.LimitSettings?.DepositLimit?.CreditFacilityDataTime?.DateTimeContent,
                "TimeZoneCode": check response?.LimitSettings?.DepositLimit?.CreditFacilityDataTime?.TimeZoneCode,
                "DaylightSavingIndicator": check response?.LimitSettings?.DepositLimit?.CreditFacilityDataTime?.DaylightSavingIndicator,
                "DateTimeType": check response?.LimitSettings?.DepositLimit?.CreditFacilityDataTime?.DateTimeType
            },
            "CreditFacilityType": check response?.LimitSettings?.DepositLimit?.CreditFacilityType,
            "CreditFacilityRateType": check response?.LimitSettings?.DepositLimit?.CreditFacilityRateType,
            "CreditFacilityNumber": {
                "IdentifierValue": check response?.LimitSettings?.DepositLimit?.CreditFacilityNumber?.IdentifierValue,
                "IdentifierIssuerReference": {
                    "PartyReference": check response?.LimitSettings?.DepositLimit?.CreditFacilityNumber?.IdentifierIssuerReference?.PartyReference,
                    "InvolvementReference": check response?.LimitSettings?.DepositLimit?.CreditFacilityNumber?.IdentifierIssuerReference?.InvolvementReference
                },
                "IdentifierStartDate": {
                    "DateTimeContent": check response?.LimitSettings?.DepositLimit?.CreditFacilityNumber?.IdentifierStartDate?.DateTimeContent,
                    "TimeZoneCode": check response?.LimitSettings?.DepositLimit?.CreditFacilityNumber?.IdentifierStartDate?.TimeZoneCode,
                    "DaylightSavingIndicator": check response?.LimitSettings?.DepositLimit?.CreditFacilityNumber?.IdentifierStartDate?.DaylightSavingIndicator,
                    "DateTimeType": check response?.LimitSettings?.DepositLimit?.CreditFacilityNumber?.IdentifierStartDate?.DateTimeType
                },
                "IdentifierEndDate": {
                    "DateTimeContent": check response?.LimitSettings?.DepositLimit?.CreditFacilityNumber?.IdentifierEndDate?.DateTimeContent,
                    "TimeZoneCode": check response?.LimitSettings?.DepositLimit?.CreditFacilityNumber?.IdentifierEndDate?.TimeZoneCode,
                    "DaylightSavingIndicator": check response?.LimitSettings?.DepositLimit?.CreditFacilityNumber?.IdentifierEndDate?.DaylightSavingIndicator,
                    "DateTimeType": check response?.LimitSettings?.DepositLimit?.CreditFacilityNumber?.IdentifierEndDate?.DateTimeType
                }
            },
            "CreditFacilityAmount": {
                "AmountValue": check response?.LimitSettings?.DepositLimit?.CreditFacilityAmount?.AmountValue,
                "AmountCurrency": {
                    "Currencycode": check response?.LimitSettings?.DepositLimit?.CreditFacilityAmount?.AmountCurrency?.Currencycode
                },
                "DecimalPointPosition": check response?.LimitSettings?.DepositLimit?.CreditFacilityAmount?.DecimalPointPosition,
                "AmountType": check response?.LimitSettings?.DepositLimit?.CreditFacilityAmount?.AmountType
            },
            "FuneralPolicyArrangementType": check response?.LimitSettings?.DepositLimit?.FuneralPolicyArrangementType
        },
        "DepositLimitType": check response?.LimitSettings?.DepositLimitType,
        "DepositAmount": {
            "AmountValue": check response?.LimitSettings?.DepositAmount?.AmountValue,
            "AmountCurrency": {
                "Currencycode": check response?.LimitSettings?.DepositAmount?.AmountCurrency?.Currencycode
            },
            "DecimalPointPosition": check response?.LimitSettings?.DepositAmount?.DecimalPointPosition,
            "AmountType": check response?.LimitSettings?.DepositAmount?.AmountType
        },
        "DepositDatetime": {
            "DateTimeContent": check response?.LimitSettings?.DepositDatetime?.DateTimeContent,
            "TimeZoneCode": check response?.LimitSettings?.DepositDatetime?.TimeZoneCode,
            "DaylightSavingIndicator": check response?.LimitSettings?.DepositDatetime?.DaylightSavingIndicator,
            "DateTimeType": check response?.LimitSettings?.DepositDatetime?.DateTimeType
        },
        "DepositDatetimeType": check response?.LimitSettings?.DepositDatetimeType,
        "DepositAmountType": check response?.LimitSettings?.DepositAmountType,
        "DepositInterest": {
            "InterestType": check response?.LimitSettings?.DepositInterest?.InterestType,
            "InterestRate": {
                "RateValue": check response?.LimitSettings?.DepositInterest?.InterestRate?.RateValue,
                "RateUnit": check response?.LimitSettings?.DepositInterest?.InterestRate?.RateUnit,
                "RatePeriod": {
                    "FromDateTime": {
                        "DateTimeContent": check response?.LimitSettings?.DepositInterest?.InterestRate?.RatePeriod?.FromDateTime?.DateTimeContent,
                        "TimeZoneCode": check response?.LimitSettings?.DepositInterest?.InterestRate?.RatePeriod?.FromDateTime?.TimeZoneCode,
                        "DaylightSavingIndicator": check response?.LimitSettings?.DepositInterest?.InterestRate?.RatePeriod?.FromDateTime?.DaylightSavingIndicator,
                        "DateTimeType": check response?.LimitSettings?.DepositInterest?.InterestRate?.RatePeriod?.FromDateTime?.DateTimeType
                    },
                    "ToDateTime": {
                        "DateTimeContent": check response?.LimitSettings?.DepositInterest?.InterestRate?.RatePeriod?.ToDateTime?.DateTimeContent,
                        "TimeZoneCode": check response?.LimitSettings?.DepositInterest?.InterestRate?.RatePeriod?.ToDateTime?.TimeZoneCode,
                        "DaylightSavingIndicator": check response?.LimitSettings?.DepositInterest?.InterestRate?.RatePeriod?.ToDateTime?.DaylightSavingIndicator,
                        "DateTimeType": check response?.LimitSettings?.DepositInterest?.InterestRate?.RatePeriod?.ToDateTime?.DateTimeType
                    }
                },
                "RateCapitalUnit": check response?.LimitSettings?.DepositInterest?.InterestRate?.RateCapitalUnit
            },
            "InterestDefinition": check response?.LimitSettings?.DepositInterest?.InterestDefinition,
            "InterestRateType": check response?.LimitSettings?.DepositInterest?.InterestRateType,
            "InterestPeriod": {
                "FromDateTime": {
                    "DateTimeContent": check response?.LimitSettings?.DepositInterest?.InterestPeriod?.FromDateTime?.DateTimeContent,
                    "TimeZoneCode": check response?.LimitSettings?.DepositInterest?.InterestPeriod?.FromDateTime?.TimeZoneCode,
                    "DaylightSavingIndicator": check response?.LimitSettings?.DepositInterest?.InterestPeriod?.FromDateTime?.DaylightSavingIndicator,
                    "DateTimeType": check response?.LimitSettings?.DepositInterest?.InterestPeriod?.FromDateTime?.DateTimeType
                },
                "ToDateTime": {
                    "DateTimeContent": check response?.LimitSettings?.DepositInterest?.InterestPeriod?.ToDateTime?.DateTimeContent,
                    "TimeZoneCode": check response?.LimitSettings?.DepositInterest?.InterestPeriod?.ToDateTime?.TimeZoneCode,
                    "DaylightSavingIndicator": check response?.LimitSettings?.DepositInterest?.InterestPeriod?.ToDateTime?.DaylightSavingIndicator,
                    "DateTimeType": check response?.LimitSettings?.DepositInterest?.InterestPeriod?.ToDateTime?.DateTimeType
                }
            },
            "InterestRatePlan": {
                "RatePlanName": check response?.LimitSettings?.DepositInterest?.InterestRatePlan?.RatePlanName,
                "RatePlanType": check response?.LimitSettings?.DepositInterest?.InterestRatePlan?.RatePlanType,
                "RatePlan": check response?.LimitSettings?.DepositInterest?.InterestRatePlan?.RatePlan
            },
            "InterestSchedule": {
                "ScheduleType": check response?.LimitSettings?.DepositInterest?.InterestSchedule?.ScheduleType
            },
            "LoanOriginationDate": {
                "DateContent": check response?.LimitSettings?.DepositInterest?.LoanOriginationDate?.DateContent
            },
            "LoanMaturityDate": {
                "DateContent": check response?.LimitSettings?.DepositInterest?.LoanMaturityDate?.DateContent
            },
            "LoanEndDate": {
                "DateContent": check response?.LimitSettings?.DepositInterest?.LoanEndDate?.DateContent
            },
            "LoanAmount": {
                "AmountValue": check response?.LimitSettings?.DepositInterest?.LoanAmount?.AmountValue,
                "AmountCurrency": {
                    "Currencycode": check response?.LimitSettings?.DepositInterest?.LoanAmount?.AmountCurrency?.Currencycode
                },
                "DecimalPointPosition": check response?.LimitSettings?.DepositInterest?.LoanAmount?.DecimalPointPosition,
                "AmountType": check response?.LimitSettings?.DepositInterest?.LoanAmount?.AmountType
            },
            "LoanArrangementType": check response?.LimitSettings?.DepositInterest?.LoanArrangementType,
            "ArrangementAction": {
                "ActionType": check response?.LimitSettings?.DepositInterest?.ArrangementAction?.ActionType,
                "EventType": check response?.LimitSettings?.DepositInterest?.ArrangementAction?.EventType,
                "EventDateTime": {
                    "DateTimeContent": check response?.LimitSettings?.DepositInterest?.ArrangementAction?.EventDateTime?.DateTimeContent,
                    "TimeZoneCode": check response?.LimitSettings?.DepositInterest?.ArrangementAction?.EventDateTime?.TimeZoneCode,
                    "DaylightSavingIndicator": check response?.LimitSettings?.DepositInterest?.ArrangementAction?.EventDateTime?.DaylightSavingIndicator,
                    "DateTimeType": check response?.LimitSettings?.DepositInterest?.ArrangementAction?.EventDateTime?.DateTimeType
                },
                "EventDescription": check response?.LimitSettings?.DepositInterest?.ArrangementAction?.EventDescription,
                "EventSource": check response?.LimitSettings?.DepositInterest?.ArrangementAction?.EventSource,
                "EventLocation": {
                    "LocationDescription": check response?.LimitSettings?.DepositInterest?.ArrangementAction?.EventLocation?.LocationDescription,
                    "LocationDateTime": {
                        "DateTimeContent": check response?.LimitSettings?.DepositInterest?.ArrangementAction?.EventLocation?.LocationDateTime?.DateTimeContent,
                        "TimeZoneCode": check response?.LimitSettings?.DepositInterest?.ArrangementAction?.EventLocation?.LocationDateTime?.TimeZoneCode,
                        "DaylightSavingIndicator": check response?.LimitSettings?.DepositInterest?.ArrangementAction?.EventLocation?.LocationDateTime?.DaylightSavingIndicator,
                        "DateTimeType": check response?.LimitSettings?.DepositInterest?.ArrangementAction?.EventLocation?.LocationDateTime?.DateTimeType
                    },
                    "LocationStatus": {
                        "StatusReason": check response?.LimitSettings?.DepositInterest?.ArrangementAction?.EventLocation?.LocationStatus?.StatusReason,
                        "StatusDateTime": {
                            "DateTimeContent": check response?.LimitSettings?.DepositInterest?.ArrangementAction?.EventLocation?.LocationStatus?.StatusDateTime?.DateTimeContent,
                            "TimeZoneCode": check response?.LimitSettings?.DepositInterest?.ArrangementAction?.EventLocation?.LocationStatus?.StatusDateTime?.TimeZoneCode,
                            "DaylightSavingIndicator": check response?.LimitSettings?.DepositInterest?.ArrangementAction?.EventLocation?.LocationStatus?.StatusDateTime?.DaylightSavingIndicator,
                            "DateTimeType": check response?.LimitSettings?.DepositInterest?.ArrangementAction?.EventLocation?.LocationStatus?.StatusDateTime?.DateTimeType
                        },
                        "StatusValidityPeriod": {
                            "FromDateTime": {
                                "DateTimeContent": check response?.LimitSettings?.DepositInterest?.ArrangementAction?.EventLocation?.LocationStatus?.StatusValidityPeriod?.FromDateTime?.DateTimeContent,
                                "TimeZoneCode": check response?.LimitSettings?.DepositInterest?.ArrangementAction?.EventLocation?.LocationStatus?.StatusValidityPeriod?.FromDateTime?.TimeZoneCode,
                                "DaylightSavingIndicator": check response?.LimitSettings?.DepositInterest?.ArrangementAction?.EventLocation?.LocationStatus?.StatusValidityPeriod?.FromDateTime?.DaylightSavingIndicator,
                                "DateTimeType": check response?.LimitSettings?.DepositInterest?.ArrangementAction?.EventLocation?.LocationStatus?.StatusValidityPeriod?.FromDateTime?.DateTimeType
                            },
                            "ToDateTime": {
                                "DateTimeContent": check response?.LimitSettings?.DepositInterest?.ArrangementAction?.EventLocation?.LocationStatus?.StatusValidityPeriod?.ToDateTime?.DateTimeContent,
                                "TimeZoneCode": check response?.LimitSettings?.DepositInterest?.ArrangementAction?.EventLocation?.LocationStatus?.StatusValidityPeriod?.ToDateTime?.TimeZoneCode,
                                "DaylightSavingIndicator": check response?.LimitSettings?.DepositInterest?.ArrangementAction?.EventLocation?.LocationStatus?.StatusValidityPeriod?.ToDateTime?.DaylightSavingIndicator,
                                "DateTimeType": check response?.LimitSettings?.DepositInterest?.ArrangementAction?.EventLocation?.LocationStatus?.StatusValidityPeriod?.ToDateTime?.DateTimeType
                            }
                        },
                        "StatusInvolvedPartyReference": {
                            "PartyReference": check response?.LimitSettings?.DepositInterest?.ArrangementAction?.EventLocation?.LocationStatus?.StatusInvolvedPartyReference?.PartyReference,
                            "InvolvementReference": check response?.LimitSettings?.DepositInterest?.ArrangementAction?.EventLocation?.LocationStatus?.StatusInvolvedPartyReference?.InvolvementReference
                        }
                    },
                    "LocationType": check response?.LimitSettings?.DepositInterest?.ArrangementAction?.EventLocation?.LocationType,
                    "LocationZoningType": check response?.LimitSettings?.DepositInterest?.ArrangementAction?.EventLocation?.LocationZoningType,
                    "LocationNeighborhoodType": check response?.LimitSettings?.DepositInterest?.ArrangementAction?.EventLocation?.LocationNeighborhoodType,
                    "LocationConstructionType": check response?.LimitSettings?.DepositInterest?.ArrangementAction?.EventLocation?.LocationConstructionType,
                    "LocationOccupancyType": check response?.LimitSettings?.DepositInterest?.ArrangementAction?.EventLocation?.LocationOccupancyType,
                    "LocationValue": check response?.LimitSettings?.DepositInterest?.ArrangementAction?.EventLocation?.LocationValue,
                    "LocationCapacity": check response?.LimitSettings?.DepositInterest?.ArrangementAction?.EventLocation?.LocationCapacity,
                    "LocationIdentification": {
                        "IdentifierValue": check response?.LimitSettings?.DepositInterest?.ArrangementAction?.EventLocation?.LocationIdentification?.IdentifierValue,
                        "IdentifierIssuerReference": {
                            "PartyReference": check response?.LimitSettings?.DepositInterest?.ArrangementAction?.EventLocation?.LocationIdentification?.IdentifierIssuerReference?.PartyReference,
                            "InvolvementReference": check response?.LimitSettings?.DepositInterest?.ArrangementAction?.EventLocation?.LocationIdentification?.IdentifierIssuerReference?.InvolvementReference
                        },
                        "IdentifierStartDate": {
                            "DateTimeContent": check response?.LimitSettings?.DepositInterest?.ArrangementAction?.EventLocation?.LocationIdentification?.IdentifierStartDate?.DateTimeContent,
                            "TimeZoneCode": check response?.LimitSettings?.DepositInterest?.ArrangementAction?.EventLocation?.LocationIdentification?.IdentifierStartDate?.TimeZoneCode,
                            "DaylightSavingIndicator": check response?.LimitSettings?.DepositInterest?.ArrangementAction?.EventLocation?.LocationIdentification?.IdentifierStartDate?.DaylightSavingIndicator,
                            "DateTimeType": check response?.LimitSettings?.DepositInterest?.ArrangementAction?.EventLocation?.LocationIdentification?.IdentifierStartDate?.DateTimeType
                        },
                        "IdentifierEndDate": {
                            "DateTimeContent": check response?.LimitSettings?.DepositInterest?.ArrangementAction?.EventLocation?.LocationIdentification?.IdentifierEndDate?.DateTimeContent,
                            "TimeZoneCode": check response?.LimitSettings?.DepositInterest?.ArrangementAction?.EventLocation?.LocationIdentification?.IdentifierEndDate?.TimeZoneCode,
                            "DaylightSavingIndicator": check response?.LimitSettings?.DepositInterest?.ArrangementAction?.EventLocation?.LocationIdentification?.IdentifierEndDate?.DaylightSavingIndicator,
                            "DateTimeType": check response?.LimitSettings?.DepositInterest?.ArrangementAction?.EventLocation?.LocationIdentification?.IdentifierEndDate?.DateTimeType
                        }
                    },
                    "LocationAddress": check response?.LimitSettings?.DepositInterest?.ArrangementAction?.EventLocation?.LocationAddress,
                    "LocationName": {
                        "Name": check response?.LimitSettings?.DepositInterest?.ArrangementAction?.EventLocation?.LocationName?.Name
                    },
                    "LocationTimeZone": check response?.LimitSettings?.DepositInterest?.ArrangementAction?.EventLocation?.LocationTimeZone
                },
                "EventAction": check response?.LimitSettings?.DepositInterest?.ArrangementAction?.EventAction,
                "EventStatus": {
                    "StatusReason": check response?.LimitSettings?.DepositInterest?.ArrangementAction?.EventStatus?.StatusReason,
                    "StatusDateTime": {
                        "DateTimeContent": check response?.LimitSettings?.DepositInterest?.ArrangementAction?.EventStatus?.StatusDateTime?.DateTimeContent,
                        "TimeZoneCode": check response?.LimitSettings?.DepositInterest?.ArrangementAction?.EventStatus?.StatusDateTime?.TimeZoneCode,
                        "DaylightSavingIndicator": check response?.LimitSettings?.DepositInterest?.ArrangementAction?.EventStatus?.StatusDateTime?.DaylightSavingIndicator,
                        "DateTimeType": check response?.LimitSettings?.DepositInterest?.ArrangementAction?.EventStatus?.StatusDateTime?.DateTimeType
                    },
                    "StatusValidityPeriod": {
                        "FromDateTime": {
                            "DateTimeContent": check response?.LimitSettings?.DepositInterest?.ArrangementAction?.EventStatus?.StatusValidityPeriod?.FromDateTime?.DateTimeContent,
                            "TimeZoneCode": check response?.LimitSettings?.DepositInterest?.ArrangementAction?.EventStatus?.StatusValidityPeriod?.FromDateTime?.TimeZoneCode,
                            "DaylightSavingIndicator": check response?.LimitSettings?.DepositInterest?.ArrangementAction?.EventStatus?.StatusValidityPeriod?.FromDateTime?.DaylightSavingIndicator,
                            "DateTimeType": check response?.LimitSettings?.DepositInterest?.ArrangementAction?.EventStatus?.StatusValidityPeriod?.FromDateTime?.DateTimeType
                        },
                        "ToDateTime": {
                            "DateTimeContent": check response?.LimitSettings?.DepositInterest?.ArrangementAction?.EventStatus?.StatusValidityPeriod?.ToDateTime?.DateTimeContent,
                            "TimeZoneCode": check response?.LimitSettings?.DepositInterest?.ArrangementAction?.EventStatus?.StatusValidityPeriod?.ToDateTime?.TimeZoneCode,
                            "DaylightSavingIndicator": check response?.LimitSettings?.DepositInterest?.ArrangementAction?.EventStatus?.StatusValidityPeriod?.ToDateTime?.DaylightSavingIndicator,
                            "DateTimeType": check response?.LimitSettings?.DepositInterest?.ArrangementAction?.EventStatus?.StatusValidityPeriod?.ToDateTime?.DateTimeType
                        }
                    },
                    "StatusInvolvedPartyReference": {
                        "PartyReference": check response?.LimitSettings?.DepositInterest?.ArrangementAction?.EventStatus?.StatusInvolvedPartyReference?.PartyReference,
                        "InvolvementReference": check response?.LimitSettings?.DepositInterest?.ArrangementAction?.EventStatus?.StatusInvolvedPartyReference?.InvolvementReference
                    }
                },
                "EventValue": check response?.LimitSettings?.DepositInterest?.ArrangementAction?.EventValue,
                "EventValidityPeriod": {
                    "FromDateTime": {
                        "DateTimeContent": check response?.LimitSettings?.DepositInterest?.ArrangementAction?.EventValidityPeriod?.FromDateTime?.DateTimeContent,
                        "TimeZoneCode": check response?.LimitSettings?.DepositInterest?.ArrangementAction?.EventValidityPeriod?.FromDateTime?.TimeZoneCode,
                        "DaylightSavingIndicator": check response?.LimitSettings?.DepositInterest?.ArrangementAction?.EventValidityPeriod?.FromDateTime?.DaylightSavingIndicator,
                        "DateTimeType": check response?.LimitSettings?.DepositInterest?.ArrangementAction?.EventValidityPeriod?.FromDateTime?.DateTimeType
                    },
                    "ToDateTime": {
                        "DateTimeContent": check response?.LimitSettings?.DepositInterest?.ArrangementAction?.EventValidityPeriod?.ToDateTime?.DateTimeContent,
                        "TimeZoneCode": check response?.LimitSettings?.DepositInterest?.ArrangementAction?.EventValidityPeriod?.ToDateTime?.TimeZoneCode,
                        "DaylightSavingIndicator": check response?.LimitSettings?.DepositInterest?.ArrangementAction?.EventValidityPeriod?.ToDateTime?.DaylightSavingIndicator,
                        "DateTimeType": check response?.LimitSettings?.DepositInterest?.ArrangementAction?.EventValidityPeriod?.ToDateTime?.DateTimeType
                    }
                },
                "EventIdentification": {
                    "IdentifierValue": check response?.LimitSettings?.DepositInterest?.ArrangementAction?.EventIdentification?.IdentifierValue,
                    "IdentifierIssuerReference": {
                        "PartyReference": check response?.LimitSettings?.DepositInterest?.ArrangementAction?.EventIdentification?.IdentifierIssuerReference?.PartyReference,
                        "InvolvementReference": check response?.LimitSettings?.DepositInterest?.ArrangementAction?.EventIdentification?.IdentifierIssuerReference?.InvolvementReference
                    },
                    "IdentifierStartDate": {
                        "DateTimeContent": check response?.LimitSettings?.DepositInterest?.ArrangementAction?.EventIdentification?.IdentifierStartDate?.DateTimeContent,
                        "TimeZoneCode": check response?.LimitSettings?.DepositInterest?.ArrangementAction?.EventIdentification?.IdentifierStartDate?.TimeZoneCode,
                        "DaylightSavingIndicator": check response?.LimitSettings?.DepositInterest?.ArrangementAction?.EventIdentification?.IdentifierStartDate?.DaylightSavingIndicator,
                        "DateTimeType": check response?.LimitSettings?.DepositInterest?.ArrangementAction?.EventIdentification?.IdentifierStartDate?.DateTimeType
                    },
                    "IdentifierEndDate": {
                        "DateTimeContent": check response?.LimitSettings?.DepositInterest?.ArrangementAction?.EventIdentification?.IdentifierEndDate?.DateTimeContent,
                        "TimeZoneCode": check response?.LimitSettings?.DepositInterest?.ArrangementAction?.EventIdentification?.IdentifierEndDate?.TimeZoneCode,
                        "DaylightSavingIndicator": check response?.LimitSettings?.DepositInterest?.ArrangementAction?.EventIdentification?.IdentifierEndDate?.DaylightSavingIndicator,
                        "DateTimeType": check response?.LimitSettings?.DepositInterest?.ArrangementAction?.EventIdentification?.IdentifierEndDate?.DateTimeType
                    }
                }
            },
            "ArrangementStartDate": {
                "DateTimeContent": check response?.LimitSettings?.DepositInterest?.ArrangementStartDate?.DateTimeContent,
                "TimeZoneCode": check response?.LimitSettings?.DepositInterest?.ArrangementStartDate?.TimeZoneCode,
                "DaylightSavingIndicator": check response?.LimitSettings?.DepositInterest?.ArrangementStartDate?.DaylightSavingIndicator,
                "DateTimeType": check response?.LimitSettings?.DepositInterest?.ArrangementStartDate?.DateTimeType
            },
            "ArrangementEndDate": {
                "DateTimeContent": check response?.LimitSettings?.DepositInterest?.ArrangementEndDate?.DateTimeContent,
                "TimeZoneCode": check response?.LimitSettings?.DepositInterest?.ArrangementEndDate?.TimeZoneCode,
                "DaylightSavingIndicator": check response?.LimitSettings?.DepositInterest?.ArrangementEndDate?.DaylightSavingIndicator,
                "DateTimeType": check response?.LimitSettings?.DepositInterest?.ArrangementEndDate?.DateTimeType
            },
            "ArrangementStatus": {
                "ArrangementStatus": {
                    "StatusReason": check response?.LimitSettings?.DepositInterest?.ArrangementStatus?.ArrangementStatus?.StatusReason,
                    "StatusDateTime": {
                        "DateTimeContent": check response?.LimitSettings?.DepositInterest?.ArrangementStatus?.ArrangementStatus?.StatusDateTime?.DateTimeContent,
                        "TimeZoneCode": check response?.LimitSettings?.DepositInterest?.ArrangementStatus?.ArrangementStatus?.StatusDateTime?.TimeZoneCode,
                        "DaylightSavingIndicator": check response?.LimitSettings?.DepositInterest?.ArrangementStatus?.ArrangementStatus?.StatusDateTime?.DaylightSavingIndicator,
                        "DateTimeType": check response?.LimitSettings?.DepositInterest?.ArrangementStatus?.ArrangementStatus?.StatusDateTime?.DateTimeType
                    },
                    "StatusValidityPeriod": {
                        "FromDateTime": {
                            "DateTimeContent": check response?.LimitSettings?.DepositInterest?.ArrangementStatus?.ArrangementStatus?.StatusValidityPeriod?.FromDateTime?.DateTimeContent,
                            "TimeZoneCode": check response?.LimitSettings?.DepositInterest?.ArrangementStatus?.ArrangementStatus?.StatusValidityPeriod?.FromDateTime?.TimeZoneCode,
                            "DaylightSavingIndicator": check response?.LimitSettings?.DepositInterest?.ArrangementStatus?.ArrangementStatus?.StatusValidityPeriod?.FromDateTime?.DaylightSavingIndicator,
                            "DateTimeType": check response?.LimitSettings?.DepositInterest?.ArrangementStatus?.ArrangementStatus?.StatusValidityPeriod?.FromDateTime?.DateTimeType
                        },
                        "ToDateTime": {
                            "DateTimeContent": check response?.LimitSettings?.DepositInterest?.ArrangementStatus?.ArrangementStatus?.StatusValidityPeriod?.ToDateTime?.DateTimeContent,
                            "TimeZoneCode": check response?.LimitSettings?.DepositInterest?.ArrangementStatus?.ArrangementStatus?.StatusValidityPeriod?.ToDateTime?.TimeZoneCode,
                            "DaylightSavingIndicator": check response?.LimitSettings?.DepositInterest?.ArrangementStatus?.ArrangementStatus?.StatusValidityPeriod?.ToDateTime?.DaylightSavingIndicator,
                            "DateTimeType": check response?.LimitSettings?.DepositInterest?.ArrangementStatus?.ArrangementStatus?.StatusValidityPeriod?.ToDateTime?.DateTimeType
                        }
                    },
                    "StatusInvolvedPartyReference": {
                        "PartyReference": check response?.LimitSettings?.DepositInterest?.ArrangementStatus?.ArrangementStatus?.StatusInvolvedPartyReference?.PartyReference,
                        "InvolvementReference": check response?.LimitSettings?.DepositInterest?.ArrangementStatus?.ArrangementStatus?.StatusInvolvedPartyReference?.InvolvementReference
                    }
                },
                "ArrangementStatusType": check response?.LimitSettings?.DepositInterest?.ArrangementStatus?.ArrangementStatusType
            },
            "ArrangementSubjectMatter": {
                "Subject": check response?.LimitSettings?.DepositInterest?.ArrangementSubjectMatter?.Subject
            },
            "Arrangementtype": check response?.LimitSettings?.DepositInterest?.Arrangementtype,
            "ArrangementIdentification": {
                "IdentifierValue": check response?.LimitSettings?.DepositInterest?.ArrangementIdentification?.IdentifierValue,
                "IdentifierIssuerReference": {
                    "PartyReference": check response?.LimitSettings?.DepositInterest?.ArrangementIdentification?.IdentifierIssuerReference?.PartyReference,
                    "InvolvementReference": check response?.LimitSettings?.DepositInterest?.ArrangementIdentification?.IdentifierIssuerReference?.InvolvementReference
                },
                "IdentifierStartDate": {
                    "DateTimeContent": check response?.LimitSettings?.DepositInterest?.ArrangementIdentification?.IdentifierStartDate?.DateTimeContent,
                    "TimeZoneCode": check response?.LimitSettings?.DepositInterest?.ArrangementIdentification?.IdentifierStartDate?.TimeZoneCode,
                    "DaylightSavingIndicator": check response?.LimitSettings?.DepositInterest?.ArrangementIdentification?.IdentifierStartDate?.DaylightSavingIndicator,
                    "DateTimeType": check response?.LimitSettings?.DepositInterest?.ArrangementIdentification?.IdentifierStartDate?.DateTimeType
                },
                "IdentifierEndDate": {
                    "DateTimeContent": check response?.LimitSettings?.DepositInterest?.ArrangementIdentification?.IdentifierEndDate?.DateTimeContent,
                    "TimeZoneCode": check response?.LimitSettings?.DepositInterest?.ArrangementIdentification?.IdentifierEndDate?.TimeZoneCode,
                    "DaylightSavingIndicator": check response?.LimitSettings?.DepositInterest?.ArrangementIdentification?.IdentifierEndDate?.DaylightSavingIndicator,
                    "DateTimeType": check response?.LimitSettings?.DepositInterest?.ArrangementIdentification?.IdentifierEndDate?.DateTimeType
                }
            },
            "PaymentCardArrangementIdentifier": {
                "IdentifierValue": check response?.LimitSettings?.DepositInterest?.PaymentCardArrangementIdentifier?.IdentifierValue,
                "IdentifierIssuerReference": {
                    "PartyReference": check response?.LimitSettings?.DepositInterest?.PaymentCardArrangementIdentifier?.IdentifierIssuerReference?.PartyReference,
                    "InvolvementReference": check response?.LimitSettings?.DepositInterest?.PaymentCardArrangementIdentifier?.IdentifierIssuerReference?.InvolvementReference
                },
                "IdentifierStartDate": {
                    "DateTimeContent": check response?.LimitSettings?.DepositInterest?.PaymentCardArrangementIdentifier?.IdentifierStartDate?.DateTimeContent,
                    "TimeZoneCode": check response?.LimitSettings?.DepositInterest?.PaymentCardArrangementIdentifier?.IdentifierStartDate?.TimeZoneCode,
                    "DaylightSavingIndicator": check response?.LimitSettings?.DepositInterest?.PaymentCardArrangementIdentifier?.IdentifierStartDate?.DaylightSavingIndicator,
                    "DateTimeType": check response?.LimitSettings?.DepositInterest?.PaymentCardArrangementIdentifier?.IdentifierStartDate?.DateTimeType
                },
                "IdentifierEndDate": {
                    "DateTimeContent": check response?.LimitSettings?.DepositInterest?.PaymentCardArrangementIdentifier?.IdentifierEndDate?.DateTimeContent,
                    "TimeZoneCode": check response?.LimitSettings?.DepositInterest?.PaymentCardArrangementIdentifier?.IdentifierEndDate?.TimeZoneCode,
                    "DaylightSavingIndicator": check response?.LimitSettings?.DepositInterest?.PaymentCardArrangementIdentifier?.IdentifierEndDate?.DaylightSavingIndicator,
                    "DateTimeType": check response?.LimitSettings?.DepositInterest?.PaymentCardArrangementIdentifier?.IdentifierEndDate?.DateTimeType
                }
            },
            "CardPaymentArrangementType": check response?.LimitSettings?.DepositInterest?.CardPaymentArrangementType,
            "SavingsAccountArrangementType": check response?.LimitSettings?.DepositInterest?.SavingsAccountArrangementType,
            "SavingsAccountArrangementProductFeatureType": {
                "ProductFeatureTypeValues": check response?.LimitSettings?.DepositInterest?.SavingsAccountArrangementProductFeatureType?.ProductFeatureTypeValues
            },
            "CurrentAccountArrangementType": check response?.LimitSettings?.DepositInterest?.CurrentAccountArrangementType,
            "CurrentAccountArrangementProductFeatureType": {
                "ProductFeatureTypeValues": check response?.LimitSettings?.DepositInterest?.CurrentAccountArrangementProductFeatureType?.ProductFeatureTypeValues
            },
            "ProductArrangementType": check response?.LimitSettings?.DepositInterest?.ProductArrangementType,
            "TermDepositArrangementType": check response?.LimitSettings?.DepositInterest?.TermDepositArrangementType,
            "TermDepositArrangementProductFeatureType": {
                "ProductFeatureTypeValues": check response?.LimitSettings?.DepositInterest?.TermDepositArrangementProductFeatureType?.ProductFeatureTypeValues
            },
            "TermDepositMaturityDate": {
                "DateTimeContent": check response?.LimitSettings?.DepositInterest?.TermDepositMaturityDate?.DateTimeContent,
                "TimeZoneCode": check response?.LimitSettings?.DepositInterest?.TermDepositMaturityDate?.TimeZoneCode,
                "DaylightSavingIndicator": check response?.LimitSettings?.DepositInterest?.TermDepositMaturityDate?.DaylightSavingIndicator,
                "DateTimeType": check response?.LimitSettings?.DepositInterest?.TermDepositMaturityDate?.DateTimeType
            },
            "TermDepositOpenDate": {
                "DateTimeContent": check response?.LimitSettings?.DepositInterest?.TermDepositOpenDate?.DateTimeContent,
                "TimeZoneCode": check response?.LimitSettings?.DepositInterest?.TermDepositOpenDate?.TimeZoneCode,
                "DaylightSavingIndicator": check response?.LimitSettings?.DepositInterest?.TermDepositOpenDate?.DaylightSavingIndicator,
                "DateTimeType": check response?.LimitSettings?.DepositInterest?.TermDepositOpenDate?.DateTimeType
            },
            "TermDepositAmount": {
                "AmountValue": check response?.LimitSettings?.DepositInterest?.TermDepositAmount?.AmountValue,
                "AmountCurrency": {
                    "Currencycode": check response?.LimitSettings?.DepositInterest?.TermDepositAmount?.AmountCurrency?.Currencycode
                },
                "DecimalPointPosition": check response?.LimitSettings?.DepositInterest?.TermDepositAmount?.DecimalPointPosition,
                "AmountType": check response?.LimitSettings?.DepositInterest?.TermDepositAmount?.AmountType
            },
            "TermDepositDuration": {
                "Duration": check response?.LimitSettings?.DepositInterest?.TermDepositDuration?.Duration
            },
            "DepositTerm": check response?.LimitSettings?.DepositInterest?.DepositTerm,
            "VirtualAccountArrangementType": check response?.LimitSettings?.DepositInterest?.VirtualAccountArrangementType,
            "BankPlanArrangementType": check response?.LimitSettings?.DepositInterest?.BankPlanArrangementType,
            "CreditFacilityDataTime": {
                "DateTimeContent": check response?.LimitSettings?.DepositInterest?.CreditFacilityDataTime?.DateTimeContent,
                "TimeZoneCode": check response?.LimitSettings?.DepositInterest?.CreditFacilityDataTime?.TimeZoneCode,
                "DaylightSavingIndicator": check response?.LimitSettings?.DepositInterest?.CreditFacilityDataTime?.DaylightSavingIndicator,
                "DateTimeType": check response?.LimitSettings?.DepositInterest?.CreditFacilityDataTime?.DateTimeType
            },
            "CreditFacilityType": check response?.LimitSettings?.DepositInterest?.CreditFacilityType,
            "CreditFacilityRateType": check response?.LimitSettings?.DepositInterest?.CreditFacilityRateType,
            "CreditFacilityNumber": {
                "IdentifierValue": check response?.LimitSettings?.DepositInterest?.CreditFacilityNumber?.IdentifierValue,
                "IdentifierIssuerReference": {
                    "PartyReference": check response?.LimitSettings?.DepositInterest?.CreditFacilityNumber?.IdentifierIssuerReference?.PartyReference,
                    "InvolvementReference": check response?.LimitSettings?.DepositInterest?.CreditFacilityNumber?.IdentifierIssuerReference?.InvolvementReference
                },
                "IdentifierStartDate": {
                    "DateTimeContent": check response?.LimitSettings?.DepositInterest?.CreditFacilityNumber?.IdentifierStartDate?.DateTimeContent,
                    "TimeZoneCode": check response?.LimitSettings?.DepositInterest?.CreditFacilityNumber?.IdentifierStartDate?.TimeZoneCode,
                    "DaylightSavingIndicator": check response?.LimitSettings?.DepositInterest?.CreditFacilityNumber?.IdentifierStartDate?.DaylightSavingIndicator,
                    "DateTimeType": check response?.LimitSettings?.DepositInterest?.CreditFacilityNumber?.IdentifierStartDate?.DateTimeType
                },
                "IdentifierEndDate": {
                    "DateTimeContent": check response?.LimitSettings?.DepositInterest?.CreditFacilityNumber?.IdentifierEndDate?.DateTimeContent,
                    "TimeZoneCode": check response?.LimitSettings?.DepositInterest?.CreditFacilityNumber?.IdentifierEndDate?.TimeZoneCode,
                    "DaylightSavingIndicator": check response?.LimitSettings?.DepositInterest?.CreditFacilityNumber?.IdentifierEndDate?.DaylightSavingIndicator,
                    "DateTimeType": check response?.LimitSettings?.DepositInterest?.CreditFacilityNumber?.IdentifierEndDate?.DateTimeType
                }
            },
            "CreditFacilityAmount": {
                "AmountValue": check response?.LimitSettings?.DepositInterest?.CreditFacilityAmount?.AmountValue,
                "AmountCurrency": {
                    "Currencycode": check response?.LimitSettings?.DepositInterest?.CreditFacilityAmount?.AmountCurrency?.Currencycode
                },
                "DecimalPointPosition": check response?.LimitSettings?.DepositInterest?.CreditFacilityAmount?.DecimalPointPosition,
                "AmountType": check response?.LimitSettings?.DepositInterest?.CreditFacilityAmount?.AmountType
            }
        },
        "DepositDuration": {
            "Duration": check response?.LimitSettings?.DepositDuration?.Duration
        },
        "DepositRate": {
            "RateValue": check response?.LimitSettings?.DepositRate?.RateValue,
            "RateUnit": check response?.LimitSettings?.DepositRate?.RateUnit,
            "RatePeriod": {
                "FromDateTime": {
                    "DateTimeContent": check response?.LimitSettings?.DepositRate?.RatePeriod?.FromDateTime?.DateTimeContent,
                    "TimeZoneCode": check response?.LimitSettings?.DepositRate?.RatePeriod?.FromDateTime?.TimeZoneCode,
                    "DaylightSavingIndicator": check response?.LimitSettings?.DepositRate?.RatePeriod?.FromDateTime?.DaylightSavingIndicator,
                    "DateTimeType": check response?.LimitSettings?.DepositRate?.RatePeriod?.FromDateTime?.DateTimeType
                },
                "ToDateTime": {
                    "DateTimeContent": check response?.LimitSettings?.DepositRate?.RatePeriod?.ToDateTime?.DateTimeContent,
                    "TimeZoneCode": check response?.LimitSettings?.DepositRate?.RatePeriod?.ToDateTime?.TimeZoneCode,
                    "DaylightSavingIndicator": check response?.LimitSettings?.DepositRate?.RatePeriod?.ToDateTime?.DaylightSavingIndicator,
                    "DateTimeType": check response?.LimitSettings?.DepositRate?.RatePeriod?.ToDateTime?.DateTimeType
                }
            },
            "RateCapitalUnit": check response?.LimitSettings?.DepositRate?.RateCapitalUnit
        },
        "ServiceType": check response?.LimitSettings?.ServiceType,
        "PaymentDate": {
            "PaymentDate": {
                "DateTimeContent": check response?.LimitSettings?.PaymentDate?.PaymentDate?.DateTimeContent,
                "TimeZoneCode": check response?.LimitSettings?.PaymentDate?.PaymentDate?.TimeZoneCode,
                "DaylightSavingIndicator": check response?.LimitSettings?.PaymentDate?.PaymentDate?.DaylightSavingIndicator,
                "DateTimeType": check response?.LimitSettings?.PaymentDate?.PaymentDate?.DateTimeType
            },
            "PaymentDateType": check response?.LimitSettings?.PaymentDate?.PaymentDateType
        },
        "PaymentPeriod": {
            "FromDateTime": {
                "DateTimeContent": check response?.LimitSettings?.PaymentPeriod?.FromDateTime?.DateTimeContent,
                "TimeZoneCode": check response?.LimitSettings?.PaymentPeriod?.FromDateTime?.TimeZoneCode,
                "DaylightSavingIndicator": check response?.LimitSettings?.PaymentPeriod?.FromDateTime?.DaylightSavingIndicator,
                "DateTimeType": check response?.LimitSettings?.PaymentPeriod?.FromDateTime?.DateTimeType
            },
            "ToDateTime": {
                "DateTimeContent": check response?.LimitSettings?.PaymentPeriod?.ToDateTime?.DateTimeContent,
                "TimeZoneCode": check response?.LimitSettings?.PaymentPeriod?.ToDateTime?.TimeZoneCode,
                "DaylightSavingIndicator": check response?.LimitSettings?.PaymentPeriod?.ToDateTime?.DaylightSavingIndicator,
                "DateTimeType": check response?.LimitSettings?.PaymentPeriod?.ToDateTime?.DateTimeType
            }
        },
        "PaymentPurpose": check response?.LimitSettings?.PaymentPurpose,
        "PaymentAmountAndCurrency": {
            "PaymentAmountAndCurrencyType": check response?.LimitSettings?.PaymentAmountAndCurrency?.PaymentAmountAndCurrencyType,
            "PaymentAmountAndCurrency": {
                "AmountValue": check response?.LimitSettings?.PaymentAmountAndCurrency?.PaymentAmountAndCurrency?.AmountValue,
                "AmountCurrency": {
                    "Currencycode": check response?.LimitSettings?.PaymentAmountAndCurrency?.PaymentAmountAndCurrency?.AmountCurrency?.Currencycode
                },
                "DecimalPointPosition": check response?.LimitSettings?.PaymentAmountAndCurrency?.PaymentAmountAndCurrency?.DecimalPointPosition,
                "AmountType": check response?.LimitSettings?.PaymentAmountAndCurrency?.PaymentAmountAndCurrency?.AmountType
            }
        },
        "PaymentMethod": check response?.LimitSettings?.PaymentMethod,
        "PaymentType": check response?.LimitSettings?.PaymentType,
        "PaymentTime": check response?.LimitSettings?.PaymentTime,
        "RemittanceDeliveryMethod": check response?.LimitSettings?.RemittanceDeliveryMethod,
        "RemittanceLocation": {
            "ContactPointType": check response?.LimitSettings?.RemittanceLocation?.ContactPointType,
            "PartyLocationType": check response?.LimitSettings?.RemittanceLocation?.PartyLocationType,
            "LocationReference": {
                "LocationDescription": check response?.LimitSettings?.RemittanceLocation?.LocationReference?.LocationDescription,
                "LocationDateTime": {
                    "DateTimeContent": check response?.LimitSettings?.RemittanceLocation?.LocationReference?.LocationDateTime?.DateTimeContent,
                    "TimeZoneCode": check response?.LimitSettings?.RemittanceLocation?.LocationReference?.LocationDateTime?.TimeZoneCode,
                    "DaylightSavingIndicator": check response?.LimitSettings?.RemittanceLocation?.LocationReference?.LocationDateTime?.DaylightSavingIndicator,
                    "DateTimeType": check response?.LimitSettings?.RemittanceLocation?.LocationReference?.LocationDateTime?.DateTimeType
                },
                "LocationStatus": {
                    "StatusReason": check response?.LimitSettings?.RemittanceLocation?.LocationReference?.LocationStatus?.StatusReason,
                    "StatusDateTime": {
                        "DateTimeContent": check response?.LimitSettings?.RemittanceLocation?.LocationReference?.LocationStatus?.StatusDateTime?.DateTimeContent,
                        "TimeZoneCode": check response?.LimitSettings?.RemittanceLocation?.LocationReference?.LocationStatus?.StatusDateTime?.TimeZoneCode,
                        "DaylightSavingIndicator": check response?.LimitSettings?.RemittanceLocation?.LocationReference?.LocationStatus?.StatusDateTime?.DaylightSavingIndicator,
                        "DateTimeType": check response?.LimitSettings?.RemittanceLocation?.LocationReference?.LocationStatus?.StatusDateTime?.DateTimeType
                    },
                    "StatusValidityPeriod": {
                        "FromDateTime": {
                            "DateTimeContent": check response?.LimitSettings?.RemittanceLocation?.LocationReference?.LocationStatus?.StatusValidityPeriod?.FromDateTime?.DateTimeContent,
                            "TimeZoneCode": check response?.LimitSettings?.RemittanceLocation?.LocationReference?.LocationStatus?.StatusValidityPeriod?.FromDateTime?.TimeZoneCode,
                            "DaylightSavingIndicator": check response?.LimitSettings?.RemittanceLocation?.LocationReference?.LocationStatus?.StatusValidityPeriod?.FromDateTime?.DaylightSavingIndicator,
                            "DateTimeType": check response?.LimitSettings?.RemittanceLocation?.LocationReference?.LocationStatus?.StatusValidityPeriod?.FromDateTime?.DateTimeType
                        },
                        "ToDateTime": {
                            "DateTimeContent": check response?.LimitSettings?.RemittanceLocation?.LocationReference?.LocationStatus?.StatusValidityPeriod?.ToDateTime?.DateTimeContent,
                            "TimeZoneCode": check response?.LimitSettings?.RemittanceLocation?.LocationReference?.LocationStatus?.StatusValidityPeriod?.ToDateTime?.TimeZoneCode,
                            "DaylightSavingIndicator": check response?.LimitSettings?.RemittanceLocation?.LocationReference?.LocationStatus?.StatusValidityPeriod?.ToDateTime?.DaylightSavingIndicator,
                            "DateTimeType": check response?.LimitSettings?.RemittanceLocation?.LocationReference?.LocationStatus?.StatusValidityPeriod?.ToDateTime?.DateTimeType
                        }
                    },
                    "StatusInvolvedPartyReference": {
                        "PartyReference": check response?.LimitSettings?.RemittanceLocation?.LocationReference?.LocationStatus?.StatusInvolvedPartyReference?.PartyReference,
                        "InvolvementReference": check response?.LimitSettings?.RemittanceLocation?.LocationReference?.LocationStatus?.StatusInvolvedPartyReference?.InvolvementReference
                    }
                },
                "LocationType": check response?.LimitSettings?.RemittanceLocation?.LocationReference?.LocationType,
                "LocationZoningType": check response?.LimitSettings?.RemittanceLocation?.LocationReference?.LocationZoningType,
                "LocationNeighborhoodType": check response?.LimitSettings?.RemittanceLocation?.LocationReference?.LocationNeighborhoodType,
                "LocationConstructionType": check response?.LimitSettings?.RemittanceLocation?.LocationReference?.LocationConstructionType,
                "LocationOccupancyType": check response?.LimitSettings?.RemittanceLocation?.LocationReference?.LocationOccupancyType,
                "LocationValue": check response?.LimitSettings?.RemittanceLocation?.LocationReference?.LocationValue,
                "LocationCapacity": check response?.LimitSettings?.RemittanceLocation?.LocationReference?.LocationCapacity,
                "LocationIdentification": {
                    "IdentifierValue": check response?.LimitSettings?.RemittanceLocation?.LocationReference?.LocationIdentification?.IdentifierValue,
                    "IdentifierIssuerReference": {
                        "PartyReference": check response?.LimitSettings?.RemittanceLocation?.LocationReference?.LocationIdentification?.IdentifierIssuerReference?.PartyReference,
                        "InvolvementReference": check response?.LimitSettings?.RemittanceLocation?.LocationReference?.LocationIdentification?.IdentifierIssuerReference?.InvolvementReference
                    },
                    "IdentifierStartDate": {
                        "DateTimeContent": check response?.LimitSettings?.RemittanceLocation?.LocationReference?.LocationIdentification?.IdentifierStartDate?.DateTimeContent,
                        "TimeZoneCode": check response?.LimitSettings?.RemittanceLocation?.LocationReference?.LocationIdentification?.IdentifierStartDate?.TimeZoneCode,
                        "DaylightSavingIndicator": check response?.LimitSettings?.RemittanceLocation?.LocationReference?.LocationIdentification?.IdentifierStartDate?.DaylightSavingIndicator,
                        "DateTimeType": check response?.LimitSettings?.RemittanceLocation?.LocationReference?.LocationIdentification?.IdentifierStartDate?.DateTimeType
                    },
                    "IdentifierEndDate": {
                        "DateTimeContent": check response?.LimitSettings?.RemittanceLocation?.LocationReference?.LocationIdentification?.IdentifierEndDate?.DateTimeContent,
                        "TimeZoneCode": check response?.LimitSettings?.RemittanceLocation?.LocationReference?.LocationIdentification?.IdentifierEndDate?.TimeZoneCode,
                        "DaylightSavingIndicator": check response?.LimitSettings?.RemittanceLocation?.LocationReference?.LocationIdentification?.IdentifierEndDate?.DaylightSavingIndicator,
                        "DateTimeType": check response?.LimitSettings?.RemittanceLocation?.LocationReference?.LocationIdentification?.IdentifierEndDate?.DateTimeType
                    }
                },
                "LocationAddress": check response?.LimitSettings?.RemittanceLocation?.LocationReference?.LocationAddress,
                "LocationName": {
                    "Name": check response?.LimitSettings?.RemittanceLocation?.LocationReference?.LocationName?.Name
                },
                "LocationTimeZone": check response?.LimitSettings?.RemittanceLocation?.LocationReference?.LocationTimeZone
            },
            "PartyReference": {
                "PartyName": {
                    "Name": check response?.LimitSettings?.RemittanceLocation?.PartyReference?.PartyName?.Name
                },
                "PartyType": check response?.LimitSettings?.RemittanceLocation?.PartyReference?.PartyType,
                "PartyDateTime": {
                    "DateTimeContent": check response?.LimitSettings?.RemittanceLocation?.PartyReference?.PartyDateTime?.DateTimeContent,
                    "TimeZoneCode": check response?.LimitSettings?.RemittanceLocation?.PartyReference?.PartyDateTime?.TimeZoneCode,
                    "DaylightSavingIndicator": check response?.LimitSettings?.RemittanceLocation?.PartyReference?.PartyDateTime?.DaylightSavingIndicator,
                    "DateTimeType": check response?.LimitSettings?.RemittanceLocation?.PartyReference?.PartyDateTime?.DateTimeType
                },
                "PartyIdentification": {
                    "PartyIdentificationType": check response?.LimitSettings?.RemittanceLocation?.PartyReference?.PartyIdentification?.PartyIdentificationType,
                    "PartyIdentification": {
                        "IdentifierValue": check response?.LimitSettings?.RemittanceLocation?.PartyReference?.PartyIdentification?.PartyIdentification?.IdentifierValue,
                        "IdentifierIssuerReference": {
                            "PartyReference": check response?.LimitSettings?.RemittanceLocation?.PartyReference?.PartyIdentification?.PartyIdentification?.IdentifierIssuerReference?.PartyReference,
                            "InvolvementReference": check response?.LimitSettings?.RemittanceLocation?.PartyReference?.PartyIdentification?.PartyIdentification?.IdentifierIssuerReference?.InvolvementReference
                        },
                        "IdentifierStartDate": {
                            "DateTimeContent": check response?.LimitSettings?.RemittanceLocation?.PartyReference?.PartyIdentification?.PartyIdentification?.IdentifierStartDate?.DateTimeContent,
                            "TimeZoneCode": check response?.LimitSettings?.RemittanceLocation?.PartyReference?.PartyIdentification?.PartyIdentification?.IdentifierStartDate?.TimeZoneCode,
                            "DaylightSavingIndicator": check response?.LimitSettings?.RemittanceLocation?.PartyReference?.PartyIdentification?.PartyIdentification?.IdentifierStartDate?.DaylightSavingIndicator,
                            "DateTimeType": check response?.LimitSettings?.RemittanceLocation?.PartyReference?.PartyIdentification?.PartyIdentification?.IdentifierStartDate?.DateTimeType
                        },
                        "IdentifierEndDate": {
                            "DateTimeContent": check response?.LimitSettings?.RemittanceLocation?.PartyReference?.PartyIdentification?.PartyIdentification?.IdentifierEndDate?.DateTimeContent,
                            "TimeZoneCode": check response?.LimitSettings?.RemittanceLocation?.PartyReference?.PartyIdentification?.PartyIdentification?.IdentifierEndDate?.TimeZoneCode,
                            "DaylightSavingIndicator": check response?.LimitSettings?.RemittanceLocation?.PartyReference?.PartyIdentification?.PartyIdentification?.IdentifierEndDate?.DaylightSavingIndicator,
                            "DateTimeType": check response?.LimitSettings?.RemittanceLocation?.PartyReference?.PartyIdentification?.PartyIdentification?.IdentifierEndDate?.DateTimeType
                        }
                    }
                },
                "PartyLegalStructureType": check response?.LimitSettings?.RemittanceLocation?.PartyReference?.PartyLegalStructureType,
                "PartyActivityIndicator": {
                    "Industrycode": check response?.LimitSettings?.RemittanceLocation?.PartyReference?.PartyActivityIndicator?.Industrycode
                }
            }
        },
        "PaymentIdentification": {
            "PaymentIdentification": {
                "IdentifierValue": check response?.LimitSettings?.PaymentIdentification?.PaymentIdentification?.IdentifierValue,
                "IdentifierIssuerReference": {
                    "PartyReference": check response?.LimitSettings?.PaymentIdentification?.PaymentIdentification?.IdentifierIssuerReference?.PartyReference,
                    "InvolvementReference": check response?.LimitSettings?.PaymentIdentification?.PaymentIdentification?.IdentifierIssuerReference?.InvolvementReference
                },
                "IdentifierStartDate": {
                    "DateTimeContent": check response?.LimitSettings?.PaymentIdentification?.PaymentIdentification?.IdentifierStartDate?.DateTimeContent,
                    "TimeZoneCode": check response?.LimitSettings?.PaymentIdentification?.PaymentIdentification?.IdentifierStartDate?.TimeZoneCode,
                    "DaylightSavingIndicator": check response?.LimitSettings?.PaymentIdentification?.PaymentIdentification?.IdentifierStartDate?.DaylightSavingIndicator,
                    "DateTimeType": check response?.LimitSettings?.PaymentIdentification?.PaymentIdentification?.IdentifierStartDate?.DateTimeType
                },
                "IdentifierEndDate": {
                    "DateTimeContent": check response?.LimitSettings?.PaymentIdentification?.PaymentIdentification?.IdentifierEndDate?.DateTimeContent,
                    "TimeZoneCode": check response?.LimitSettings?.PaymentIdentification?.PaymentIdentification?.IdentifierEndDate?.TimeZoneCode,
                    "DaylightSavingIndicator": check response?.LimitSettings?.PaymentIdentification?.PaymentIdentification?.IdentifierEndDate?.DaylightSavingIndicator,
                    "DateTimeType": check response?.LimitSettings?.PaymentIdentification?.PaymentIdentification?.IdentifierEndDate?.DateTimeType
                }
            },
            "PaymentIdentificationType": check response?.LimitSettings?.PaymentIdentification?.PaymentIdentificationType
        },
        "PaymentSchedule": {
            "ScheduleType": check response?.LimitSettings?.PaymentSchedule?.ScheduleType
        },
        "PaymentFrequency": {
            "FrequencyCode": check response?.LimitSettings?.PaymentFrequency?.FrequencyCode,
            "FrequencyName": {
                "Name": check response?.LimitSettings?.PaymentFrequency?.FrequencyName?.Name
            },
            "FrequencyDefinition": check response?.LimitSettings?.PaymentFrequency?.FrequencyDefinition
        },
        "PaymentDescription": check response?.LimitSettings?.PaymentDescription,
        "CreditFacilityDataTime": {
            "DateTimeContent": check response?.LimitSettings?.CreditFacilityDataTime?.DateTimeContent,
            "TimeZoneCode": check response?.LimitSettings?.CreditFacilityDataTime?.TimeZoneCode,
            "DaylightSavingIndicator": check response?.LimitSettings?.CreditFacilityDataTime?.DaylightSavingIndicator,
            "DateTimeType": check response?.LimitSettings?.CreditFacilityDataTime?.DateTimeType
        },
        "CreditFacilityType": check response?.LimitSettings?.CreditFacilityType,
        "CreditFacilityRateType": check response?.LimitSettings?.CreditFacilityRateType,
        "CreditFacilityNumber": {
            "IdentifierValue": check response?.LimitSettings?.CreditFacilityNumber?.IdentifierValue,
            "IdentifierIssuerReference": {
                "PartyReference": check response?.LimitSettings?.CreditFacilityNumber?.IdentifierIssuerReference?.PartyReference,
                "InvolvementReference": check response?.LimitSettings?.CreditFacilityNumber?.IdentifierIssuerReference?.InvolvementReference
            },
            "IdentifierStartDate": {
                "DateTimeContent": check response?.LimitSettings?.CreditFacilityNumber?.IdentifierStartDate?.DateTimeContent,
                "TimeZoneCode": check response?.LimitSettings?.CreditFacilityNumber?.IdentifierStartDate?.TimeZoneCode,
                "DaylightSavingIndicator": check response?.LimitSettings?.CreditFacilityNumber?.IdentifierStartDate?.DaylightSavingIndicator,
                "DateTimeType": check response?.LimitSettings?.CreditFacilityNumber?.IdentifierStartDate?.DateTimeType
            },
            "IdentifierEndDate": {
                "DateTimeContent": check response?.LimitSettings?.CreditFacilityNumber?.IdentifierEndDate?.DateTimeContent,
                "TimeZoneCode": check response?.LimitSettings?.CreditFacilityNumber?.IdentifierEndDate?.TimeZoneCode,
                "DaylightSavingIndicator": check response?.LimitSettings?.CreditFacilityNumber?.IdentifierEndDate?.DaylightSavingIndicator,
                "DateTimeType": check response?.LimitSettings?.CreditFacilityNumber?.IdentifierEndDate?.DateTimeType
            }
        },
        "CreditFacilityAmount": {
            "AmountValue": check response?.LimitSettings?.CreditFacilityAmount?.AmountValue,
            "AmountCurrency": {
                "Currencycode": check response?.LimitSettings?.CreditFacilityAmount?.AmountCurrency?.Currencycode
            },
            "DecimalPointPosition": check response?.LimitSettings?.CreditFacilityAmount?.DecimalPointPosition,
            "AmountType": check response?.LimitSettings?.CreditFacilityAmount?.AmountType
        },
        "FuneralPolicyArrangementType": check response?.LimitSettings?.FuneralPolicyArrangementType
    },
    //   "LimitValue": "string",
    "AccountDateType": check response?.AccountDateType,
    "AccountDate": {
        // "DateTimeContent": "string",
        // "TimeZoneCode": "string",
        // "DaylightSavingIndicator": "string",
        "DateTimeType": check response?.AccountDate?.DateTimeType
    },
    "AccountBalance": {
        "BalanceAmount": {
            //   "AmountValue": "string",
            "AmountCurrency": {
                "Currencycode": check response?.AccountBalance?.AmountCurrency?.Currencycode
            },
            //   "DecimalPointPosition": "string",
            "AmountType": check response?.AccountBalance?.AmountType
        },
        "BalanceType": check response?.AccountBalance?.BalanceType,
        "BalanceValueDate": {
            //   "DateTimeContent": "string",
            //   "TimeZoneCode": "string",
            //   "DaylightSavingIndicator": "string",
            "DateTimeType": check response?.AccountBalance?.DateTimeType
        },
        "BalanceIndicator": check response?.AccountBalance?.BalanceIndicator,
        "BalanceCounterpartyType": check response?.AccountBalance?.BalanceCounterpartyType,
        "BalanceCalculationDate": {
            //   "DateTimeContent": "string",
            //   "TimeZoneCode": "string",
            //   "DaylightSavingIndicator": "string",
            "DateTimeType": check response?.AccountBalance?.DateTimeType
        },
        "BalanceSubType": check response?.AccountBalance?.BalanceSubType
    },
    "AccountStatus": check response?.AccountStatus
};
