import ballerinax/financial.bian.attribute.groups.customers as customers;

isolated function transfromSalesProductAgreementEvaluateResponse(json response) returns customers:SalesProductAgreement|error => {
    "CustomerReference": {
        "PartyReference": check response?.CustomerReference?.PartyReference,
        "InvolvementReference": check response?.CustomerReference?.InvolvementReference
    },
    "LegalEntityReference": {
        "PartyReference": check response?.LegalEntityReference?.PartyReference,
        "InvolvementReference": check response?.LegalEntityReference?.InvolvementReference
    },
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
    "AgreementType": check response?.AgreementType,
    "AgreementJurisdiction": {
        "Jurisdiction": check response?.AgreementJurisdiction?.Jurisdiction
    },
    "AgreementValidFromToDate": {
        "FromDateTime": {
            "DateTimeContent": check response?.AgreementValidFromToDate?.FromDateTime?.DateTimeContent,
            "TimeZoneCode": check response?.AgreementValidFromToDate?.FromDateTime?.TimeZoneCode,
            "DaylightSavingIndicator": check response?.AgreementValidFromToDate?.FromDateTime?.DaylightSavingIndicator,
            "DateTimeType": check response?.AgreementValidFromToDate?.FromDateTime?.DateTimeType
        },
        "ToDateTime": {
            "DateTimeContent": check response?.AgreementValidFromToDate?.ToDateTime?.DateTimeContent,
            "TimeZoneCode": check response?.AgreementValidFromToDate?.ToDateTime?.TimeZoneCode,
            "DaylightSavingIndicator": check response?.AgreementValidFromToDate?.ToDateTime?.DaylightSavingIndicator,
            "DateTimeType": check response?.AgreementValidFromToDate?.ToDateTime?.DateTimeType
        }
    },
    "AgreementSignatoriesResponsibleParties": {
        "InvolvementType": check response?.AgreementSignatoriesResponsibleParties?.InvolvementType,
        "PartyReference": {
            "PartyName": {
                "Name": check response?.AgreementSignatoriesResponsibleParties?.PartyReference?.PartyName?.Name
            },
            "PartyType": check response?.AgreementSignatoriesResponsibleParties?.PartyReference?.PartyType,
            "PartyDateTime": {
                "DateTimeContent": check response?.AgreementSignatoriesResponsibleParties?.PartyReference?.PartyDateTime?.DateTimeContent,
                "TimeZoneCode": check response?.AgreementSignatoriesResponsibleParties?.PartyReference?.PartyDateTime?.TimeZoneCode,
                "DaylightSavingIndicator": check response?.AgreementSignatoriesResponsibleParties?.PartyReference?.PartyDateTime?.DaylightSavingIndicator,
                "DateTimeType": check response?.AgreementSignatoriesResponsibleParties?.PartyReference?.PartyDateTime?.DateTimeType
            },
            "PartyIdentification": {
                "PartyIdentificationType": check response?.AgreementSignatoriesResponsibleParties?.PartyReference?.PartyIdentification?.PartyIdentificationType,
                "PartyIdentification": {
                    "IdentifierValue": check response?.AgreementSignatoriesResponsibleParties?.PartyReference?.PartyIdentification?.PartyIdentification?.IdentifierValue,
                    "IdentifierIssuerReference": {
                        "PartyReference": check response?.AgreementSignatoriesResponsibleParties?.PartyReference?.PartyIdentification?.PartyIdentification?.IdentifierIssuerReference?.PartyReference,
                        "InvolvementReference": check response?.AgreementSignatoriesResponsibleParties?.PartyReference?.PartyIdentification?.PartyIdentification?.IdentifierIssuerReference?.InvolvementReference
                    },
                    "IdentifierStartDate": {
                        "DateTimeContent": check response?.AgreementSignatoriesResponsibleParties?.PartyReference?.PartyIdentification?.PartyIdentification?.IdentifierStartDate?.DateTimeContent,
                        "TimeZoneCode": check response?.AgreementSignatoriesResponsibleParties?.PartyReference?.PartyIdentification?.PartyIdentification?.IdentifierStartDate?.TimeZoneCode,
                        "DaylightSavingIndicator": check response?.AgreementSignatoriesResponsibleParties?.PartyReference?.PartyIdentification?.PartyIdentification?.IdentifierStartDate?.DaylightSavingIndicator,
                        "DateTimeType": check response?.AgreementSignatoriesResponsibleParties?.PartyReference?.PartyIdentification?.PartyIdentification?.IdentifierStartDate?.DateTimeType
                    },
                    "IdentifierEndDate": {
                        "DateTimeContent": check response?.AgreementSignatoriesResponsibleParties?.PartyReference?.PartyIdentification?.PartyIdentification?.IdentifierEndDate?.DateTimeContent,
                        "TimeZoneCode": check response?.AgreementSignatoriesResponsibleParties?.PartyReference?.PartyIdentification?.PartyIdentification?.IdentifierEndDate?.TimeZoneCode,
                        "DaylightSavingIndicator": check response?.AgreementSignatoriesResponsibleParties?.PartyReference?.PartyIdentification?.PartyIdentification?.IdentifierEndDate?.DaylightSavingIndicator,
                        "DateTimeType": check response?.AgreementSignatoriesResponsibleParties?.PartyReference?.PartyIdentification?.PartyIdentification?.IdentifierEndDate?.DateTimeType
                    }
                }
            },
            "PartyLegalStructureType": check response?.AgreementSignatoriesResponsibleParties?.PartyReference?.PartyLegalStructureType,
            "PartyActivityIndicator": {
                "Industrycode": check response?.AgreementSignatoriesResponsibleParties?.PartyReference?.PartyActivityIndicator?.Industrycode
            }
        },
        "AgreementReference": {
            "ProductAgreement": check response?.AgreementSignatoriesResponsibleParties?.AgreementReference?.ProductAgreement
        }
    },
    "DocumentDirectoryEntryInstanceReference": {
        "DocumentDirectoryEntryIdentification": check response?.DocumentDirectoryEntryInstanceReference?.DocumentDirectoryEntryIdentification,
        "DirectoryEntryDateType": check response?.DocumentDirectoryEntryInstanceReference?.DirectoryEntryDateType,
        "DirectoryEntryDate": {
            "DateContent": check response?.DocumentDirectoryEntryInstanceReference?.DirectoryEntryDate?.DateContent
        },
        "DirectoryEntryStatus": {
            "StatusReason": check response?.DocumentDirectoryEntryInstanceReference?.DirectoryEntryStatus?.StatusReason,
            "StatusDateTime": {
                "DateTimeContent": check response?.DocumentDirectoryEntryInstanceReference?.DirectoryEntryStatus?.StatusDateTime?.DateTimeContent,
                "TimeZoneCode": check response?.DocumentDirectoryEntryInstanceReference?.DirectoryEntryStatus?.StatusDateTime?.TimeZoneCode,
                "DaylightSavingIndicator": check response?.DocumentDirectoryEntryInstanceReference?.DirectoryEntryStatus?.StatusDateTime?.DaylightSavingIndicator,
                "DateTimeType": check response?.DocumentDirectoryEntryInstanceReference?.DirectoryEntryStatus?.StatusDateTime?.DateTimeType
            },
            "StatusValidityPeriod": {
                "FromDateTime": {
                    "DateTimeContent": check response?.DocumentDirectoryEntryInstanceReference?.DirectoryEntryStatus?.StatusValidityPeriod?.FromDateTime?.DateTimeContent,
                    "TimeZoneCode": check response?.DocumentDirectoryEntryInstanceReference?.DirectoryEntryStatus?.StatusValidityPeriod?.FromDateTime?.TimeZoneCode,
                    "DaylightSavingIndicator": check response?.DocumentDirectoryEntryInstanceReference?.DirectoryEntryStatus?.StatusValidityPeriod?.FromDateTime?.DaylightSavingIndicator,
                    "DateTimeType": check response?.DocumentDirectoryEntryInstanceReference?.DirectoryEntryStatus?.StatusValidityPeriod?.FromDateTime?.DateTimeType
                },
                "ToDateTime": {
                    "DateTimeContent": check response?.DocumentDirectoryEntryInstanceReference?.DirectoryEntryStatus?.StatusValidityPeriod?.ToDateTime?.DateTimeContent,
                    "TimeZoneCode": check response?.DocumentDirectoryEntryInstanceReference?.DirectoryEntryStatus?.StatusValidityPeriod?.ToDateTime?.TimeZoneCode,
                    "DaylightSavingIndicator": check response?.DocumentDirectoryEntryInstanceReference?.DirectoryEntryStatus?.StatusValidityPeriod?.ToDateTime?.DaylightSavingIndicator,
                    "DateTimeType": check response?.DocumentDirectoryEntryInstanceReference?.DirectoryEntryStatus?.StatusValidityPeriod?.ToDateTime?.DateTimeType
                }
            },
            "StatusInvolvedPartyReference": {
                "PartyReference": check response?.DocumentDirectoryEntryInstanceReference?.DirectoryEntryStatus?.StatusInvolvedPartyReference?.PartyReference,
                "InvolvementReference": check response?.DocumentDirectoryEntryInstanceReference?.DirectoryEntryStatus?.StatusInvolvedPartyReference?.InvolvementReference
            }
        }
    },
    "CustomerAgreementReference": {
        "AgreementSignedDate": {
            "DateContent": check response?.CustomerAgreementReference?.AgreementSignedDate?.DateContent
        },
        "AgreementType": check response?.CustomerAgreementReference?.AgreementType,
        "AgreementValidityPeriod": {
            "FromDateTime": {
                "DateTimeContent": check response?.CustomerAgreementReference?.AgreementValidityPeriod?.FromDateTime?.DateTimeContent,
                "TimeZoneCode": check response?.CustomerAgreementReference?.AgreementValidityPeriod?.FromDateTime?.TimeZoneCode,
                "DaylightSavingIndicator": check response?.CustomerAgreementReference?.AgreementValidityPeriod?.FromDateTime?.DaylightSavingIndicator,
                "DateTimeType": check response?.CustomerAgreementReference?.AgreementValidityPeriod?.FromDateTime?.DateTimeType
            },
            "ToDateTime": {
                "DateTimeContent": check response?.CustomerAgreementReference?.AgreementValidityPeriod?.ToDateTime?.DateTimeContent,
                "TimeZoneCode": check response?.CustomerAgreementReference?.AgreementValidityPeriod?.ToDateTime?.TimeZoneCode,
                "DaylightSavingIndicator": check response?.CustomerAgreementReference?.AgreementValidityPeriod?.ToDateTime?.DaylightSavingIndicator,
                "DateTimeType": check response?.CustomerAgreementReference?.AgreementValidityPeriod?.ToDateTime?.DateTimeType
            }
        },
        "AgreementVersion": check response?.CustomerAgreementReference?.AgreementVersion,
        "AgreementStatus": {
            "AgreementStatus": {
                "StatusReason": check response?.CustomerAgreementReference?.AgreementStatus?.AgreementStatus?.StatusReason,
                "StatusDateTime": {
                    "DateTimeContent": check response?.CustomerAgreementReference?.AgreementStatus?.AgreementStatus?.StatusDateTime?.DateTimeContent,
                    "TimeZoneCode": check response?.CustomerAgreementReference?.AgreementStatus?.AgreementStatus?.StatusDateTime?.TimeZoneCode,
                    "DaylightSavingIndicator": check response?.CustomerAgreementReference?.AgreementStatus?.AgreementStatus?.StatusDateTime?.DaylightSavingIndicator,
                    "DateTimeType": check response?.CustomerAgreementReference?.AgreementStatus?.AgreementStatus?.StatusDateTime?.DateTimeType
                },
                "StatusValidityPeriod": {
                    "FromDateTime": {
                        "DateTimeContent": check response?.CustomerAgreementReference?.AgreementStatus?.AgreementStatus?.StatusValidityPeriod?.FromDateTime?.DateTimeContent,
                        "TimeZoneCode": check response?.CustomerAgreementReference?.AgreementStatus?.AgreementStatus?.StatusValidityPeriod?.FromDateTime?.TimeZoneCode,
                        "DaylightSavingIndicator": check response?.CustomerAgreementReference?.AgreementStatus?.AgreementStatus?.StatusValidityPeriod?.FromDateTime?.DaylightSavingIndicator,
                        "DateTimeType": check response?.CustomerAgreementReference?.AgreementStatus?.AgreementStatus?.StatusValidityPeriod?.FromDateTime?.DateTimeType
                    },
                    "ToDateTime": {
                        "DateTimeContent": check response?.CustomerAgreementReference?.AgreementStatus?.AgreementStatus?.StatusValidityPeriod?.ToDateTime?.DateTimeContent,
                        "TimeZoneCode": check response?.CustomerAgreementReference?.AgreementStatus?.AgreementStatus?.StatusValidityPeriod?.ToDateTime?.TimeZoneCode,
                        "DaylightSavingIndicator": check response?.CustomerAgreementReference?.AgreementStatus?.AgreementStatus?.StatusValidityPeriod?.ToDateTime?.DaylightSavingIndicator,
                        "DateTimeType": check response?.CustomerAgreementReference?.AgreementStatus?.AgreementStatus?.StatusValidityPeriod?.ToDateTime?.DateTimeType
                    }
                },
                "StatusInvolvedPartyReference": {
                    "PartyReference": check response?.CustomerAgreementReference?.AgreementStatus?.AgreementStatus?.StatusInvolvedPartyReference?.PartyReference,
                    "InvolvementReference": check response?.CustomerAgreementReference?.AgreementStatus?.AgreementStatus?.StatusInvolvedPartyReference?.InvolvementReference
                }
            },
            "AgreementStatusType": check response?.CustomerAgreementReference?.AgreementStatus?.AgreementStatusType
        },
        "AgreementSubjectMatter": check response?.CustomerAgreementReference?.AgreementSubjectMatter,
        "AgreementIdentification": {
            "IdentifierValue": check response?.CustomerAgreementReference?.AgreementIdentification?.IdentifierValue,
            "IdentifierIssuerReference": {
                "PartyReference": check response?.CustomerAgreementReference?.AgreementIdentification?.IdentifierIssuerReference?.PartyReference,
                "InvolvementReference": check response?.CustomerAgreementReference?.AgreementIdentification?.IdentifierIssuerReference?.InvolvementReference
            },
            "IdentifierStartDate": {
                "DateTimeContent": check response?.CustomerAgreementReference?.AgreementIdentification?.IdentifierStartDate?.DateTimeContent,
                "TimeZoneCode": check response?.CustomerAgreementReference?.AgreementIdentification?.IdentifierStartDate?.TimeZoneCode,
                "DaylightSavingIndicator": check response?.CustomerAgreementReference?.AgreementIdentification?.IdentifierStartDate?.DaylightSavingIndicator,
                "DateTimeType": check response?.CustomerAgreementReference?.AgreementIdentification?.IdentifierStartDate?.DateTimeType
            },
            "IdentifierEndDate": {
                "DateTimeContent": check response?.CustomerAgreementReference?.AgreementIdentification?.IdentifierEndDate?.DateTimeContent,
                "TimeZoneCode": check response?.CustomerAgreementReference?.AgreementIdentification?.IdentifierEndDate?.TimeZoneCode,
                "DaylightSavingIndicator": check response?.CustomerAgreementReference?.AgreementIdentification?.IdentifierEndDate?.DaylightSavingIndicator,
                "DateTimeType": check response?.CustomerAgreementReference?.AgreementIdentification?.IdentifierEndDate?.DateTimeType
            }
        },
        "AgreementDate": {
            "DateTimeContent": check response?.CustomerAgreementReference?.AgreementDate?.DateTimeContent,
            "TimeZoneCode": check response?.CustomerAgreementReference?.AgreementDate?.TimeZoneCode,
            "DaylightSavingIndicator": check response?.CustomerAgreementReference?.AgreementDate?.DaylightSavingIndicator,
            "DateTimeType": check response?.CustomerAgreementReference?.AgreementDate?.DateTimeType
        },
        "AgreementDescription": check response?.CustomerAgreementReference?.AgreementDescription
    },
    "PartyLife-cycleManagementReference": {
        "Description": check response?.PartyLife\-cycleManagementReference?.Description,
        "IsCurrentPhase": check response?.PartyLife\-cycleManagementReference?.IsCurrentPhase,
        "PhaseName": {
            "Name": check response?.PartyLife\-cycleManagementReference?.PhaseName?.Name
        },
        "PhaseStatus": {
            "StatusReason": check response?.PartyLife\-cycleManagementReference?.PhaseStatus?.StatusReason,
            "StatusDateTime": {
                "DateTimeContent": check response?.PartyLife\-cycleManagementReference?.PhaseStatus?.StatusDateTime?.DateTimeContent,
                "TimeZoneCode": check response?.PartyLife\-cycleManagementReference?.PhaseStatus?.StatusDateTime?.TimeZoneCode,
                "DaylightSavingIndicator": check response?.PartyLife\-cycleManagementReference?.PhaseStatus?.StatusDateTime?.DaylightSavingIndicator,
                "DateTimeType": check response?.PartyLife\-cycleManagementReference?.PhaseStatus?.StatusDateTime?.DateTimeType
            },
            "StatusValidityPeriod": {
                "FromDateTime": {
                    "DateTimeContent": check response?.PartyLife\-cycleManagementReference?.PhaseStatus?.StatusValidityPeriod?.FromDateTime?.DateTimeContent,
                    "TimeZoneCode": check response?.PartyLife\-cycleManagementReference?.PhaseStatus?.StatusValidityPeriod?.FromDateTime?.TimeZoneCode,
                    "DaylightSavingIndicator": check response?.PartyLife\-cycleManagementReference?.PhaseStatus?.StatusValidityPeriod?.FromDateTime?.DaylightSavingIndicator,
                    "DateTimeType": check response?.PartyLife\-cycleManagementReference?.PhaseStatus?.StatusValidityPeriod?.FromDateTime?.DateTimeType
                },
                "ToDateTime": {
                    "DateTimeContent": check response?.PartyLife\-cycleManagementReference?.PhaseStatus?.StatusValidityPeriod?.ToDateTime?.DateTimeContent,
                    "TimeZoneCode": check response?.PartyLife\-cycleManagementReference?.PhaseStatus?.StatusValidityPeriod?.ToDateTime?.TimeZoneCode,
                    "DaylightSavingIndicator": check response?.PartyLife\-cycleManagementReference?.PhaseStatus?.StatusValidityPeriod?.ToDateTime?.DaylightSavingIndicator,
                    "DateTimeType": check response?.PartyLife\-cycleManagementReference?.PhaseStatus?.StatusValidityPeriod?.ToDateTime?.DateTimeType
                }
            },
            "StatusInvolvedPartyReference": {
                "PartyReference": check response?.PartyLife\-cycleManagementReference?.PhaseStatus?.StatusInvolvedPartyReference?.PartyReference,
                "InvolvementReference": check response?.PartyLife\-cycleManagementReference?.PhaseStatus?.StatusInvolvedPartyReference?.InvolvementReference
            }
        },
        "PhasePeriod": {
            "FromDateTime": {
                "DateTimeContent": check response?.PartyLife\-cycleManagementReference?.PhasePeriod?.FromDateTime?.DateTimeContent,
                "TimeZoneCode": check response?.PartyLife\-cycleManagementReference?.PhasePeriod?.FromDateTime?.TimeZoneCode,
                "DaylightSavingIndicator": check response?.PartyLife\-cycleManagementReference?.PhasePeriod?.FromDateTime?.DaylightSavingIndicator,
                "DateTimeType": check response?.PartyLife\-cycleManagementReference?.PhasePeriod?.FromDateTime?.DateTimeType
            },
            "ToDateTime": {
                "DateTimeContent": check response?.PartyLife\-cycleManagementReference?.PhasePeriod?.ToDateTime?.DateTimeContent,
                "TimeZoneCode": check response?.PartyLife\-cycleManagementReference?.PhasePeriod?.ToDateTime?.TimeZoneCode,
                "DaylightSavingIndicator": check response?.PartyLife\-cycleManagementReference?.PhasePeriod?.ToDateTime?.DaylightSavingIndicator,
                "DateTimeType": check response?.PartyLife\-cycleManagementReference?.PhasePeriod?.ToDateTime?.DateTimeType
            }
        }
    },
    "BankingProductReference": {
        "ProductIdentification": {
            "ProductIdentification": {
                "IdentifierValue": check response?.BankingProductReference?.ProductIdentification?.ProductIdentification?.IdentifierValue,
                "IdentifierIssuerReference": {
                    "PartyReference": check response?.BankingProductReference?.ProductIdentification?.ProductIdentification?.IdentifierIssuerReference?.PartyReference,
                    "InvolvementReference": check response?.BankingProductReference?.ProductIdentification?.ProductIdentification?.IdentifierIssuerReference?.InvolvementReference
                },
                "IdentifierStartDate": {
                    "DateTimeContent": check response?.BankingProductReference?.ProductIdentification?.ProductIdentification?.IdentifierStartDate?.DateTimeContent,
                    "TimeZoneCode": check response?.BankingProductReference?.ProductIdentification?.ProductIdentification?.IdentifierStartDate?.TimeZoneCode,
                    "DaylightSavingIndicator": check response?.BankingProductReference?.ProductIdentification?.ProductIdentification?.IdentifierStartDate?.DaylightSavingIndicator,
                    "DateTimeType": check response?.BankingProductReference?.ProductIdentification?.ProductIdentification?.IdentifierStartDate?.DateTimeType
                },
                "IdentifierEndDate": {
                    "DateTimeContent": check response?.BankingProductReference?.ProductIdentification?.ProductIdentification?.IdentifierEndDate?.DateTimeContent,
                    "TimeZoneCode": check response?.BankingProductReference?.ProductIdentification?.ProductIdentification?.IdentifierEndDate?.TimeZoneCode,
                    "DaylightSavingIndicator": check response?.BankingProductReference?.ProductIdentification?.ProductIdentification?.IdentifierEndDate?.DaylightSavingIndicator,
                    "DateTimeType": check response?.BankingProductReference?.ProductIdentification?.ProductIdentification?.IdentifierEndDate?.DateTimeType
                }
            },
            "ProductIdentificationType": check response?.BankingProductReference?.ProductIdentification?.ProductIdentificationType
        },
        "ProductType": check response?.BankingProductReference?.ProductType,
        "ProductLifecycleStatus": {
            "ProductStatus": {
                "StatusReason": check response?.BankingProductReference?.ProductLifecycleStatus?.ProductStatus?.StatusReason,
                "StatusDateTime": {
                    "DateTimeContent": check response?.BankingProductReference?.ProductLifecycleStatus?.ProductStatus?.StatusDateTime?.DateTimeContent,
                    "TimeZoneCode": check response?.BankingProductReference?.ProductLifecycleStatus?.ProductStatus?.StatusDateTime?.TimeZoneCode,
                    "DaylightSavingIndicator": check response?.BankingProductReference?.ProductLifecycleStatus?.ProductStatus?.StatusDateTime?.DaylightSavingIndicator,
                    "DateTimeType": check response?.BankingProductReference?.ProductLifecycleStatus?.ProductStatus?.StatusDateTime?.DateTimeType
                },
                "StatusValidityPeriod": {
                    "FromDateTime": {
                        "DateTimeContent": check response?.BankingProductReference?.ProductLifecycleStatus?.ProductStatus?.StatusValidityPeriod?.FromDateTime?.DateTimeContent,
                        "TimeZoneCode": check response?.BankingProductReference?.ProductLifecycleStatus?.ProductStatus?.StatusValidityPeriod?.FromDateTime?.TimeZoneCode,
                        "DaylightSavingIndicator": check response?.BankingProductReference?.ProductLifecycleStatus?.ProductStatus?.StatusValidityPeriod?.FromDateTime?.DaylightSavingIndicator,
                        "DateTimeType": check response?.BankingProductReference?.ProductLifecycleStatus?.ProductStatus?.StatusValidityPeriod?.FromDateTime?.DateTimeType
                    },
                    "ToDateTime": {
                        "DateTimeContent": check response?.BankingProductReference?.ProductLifecycleStatus?.ProductStatus?.StatusValidityPeriod?.ToDateTime?.DateTimeContent,
                        "TimeZoneCode": check response?.BankingProductReference?.ProductLifecycleStatus?.ProductStatus?.StatusValidityPeriod?.ToDateTime?.TimeZoneCode,
                        "DaylightSavingIndicator": check response?.BankingProductReference?.ProductLifecycleStatus?.ProductStatus?.StatusValidityPeriod?.ToDateTime?.DaylightSavingIndicator,
                        "DateTimeType": check response?.BankingProductReference?.ProductLifecycleStatus?.ProductStatus?.StatusValidityPeriod?.ToDateTime?.DateTimeType
                    }
                },
                "StatusInvolvedPartyReference": {
                    "PartyReference": check response?.BankingProductReference?.ProductLifecycleStatus?.ProductStatus?.StatusInvolvedPartyReference?.PartyReference,
                    "InvolvementReference": check response?.BankingProductReference?.ProductLifecycleStatus?.ProductStatus?.StatusInvolvedPartyReference?.InvolvementReference
                }
            },
            "ProductStatusType": check response?.BankingProductReference?.ProductLifecycleStatus?.ProductStatusType
        },
        "ProductPriority": check response?.BankingProductReference?.ProductPriority,
        "ProductDescription": check response?.BankingProductReference?.ProductDescription,
        "ProductVersion": check response?.BankingProductReference?.ProductVersion,
        "ProductName": {
            "Name": check response?.BankingProductReference?.ProductName?.Name
        },
        "FinancialInstrumentType": check response?.BankingProductReference?.FinancialInstrumentType,
        "FinancialInstrumentIdentification": {
            "FinancialInstrumentIdentification": {
                "IdentifierValue": check response?.BankingProductReference?.FinancialInstrumentIdentification?.FinancialInstrumentIdentification?.IdentifierValue,
                "IdentifierIssuerReference": {
                    "PartyReference": check response?.BankingProductReference?.FinancialInstrumentIdentification?.FinancialInstrumentIdentification?.IdentifierIssuerReference?.PartyReference,
                    "InvolvementReference": check response?.BankingProductReference?.FinancialInstrumentIdentification?.FinancialInstrumentIdentification?.IdentifierIssuerReference?.InvolvementReference
                },
                "IdentifierStartDate": {
                    "DateTimeContent": check response?.BankingProductReference?.FinancialInstrumentIdentification?.FinancialInstrumentIdentification?.IdentifierStartDate?.DateTimeContent,
                    "TimeZoneCode": check response?.BankingProductReference?.FinancialInstrumentIdentification?.FinancialInstrumentIdentification?.IdentifierStartDate?.TimeZoneCode,
                    "DaylightSavingIndicator": check response?.BankingProductReference?.FinancialInstrumentIdentification?.FinancialInstrumentIdentification?.IdentifierStartDate?.DaylightSavingIndicator,
                    "DateTimeType": check response?.BankingProductReference?.FinancialInstrumentIdentification?.FinancialInstrumentIdentification?.IdentifierStartDate?.DateTimeType
                },
                "IdentifierEndDate": {
                    "DateTimeContent": check response?.BankingProductReference?.FinancialInstrumentIdentification?.FinancialInstrumentIdentification?.IdentifierEndDate?.DateTimeContent,
                    "TimeZoneCode": check response?.BankingProductReference?.FinancialInstrumentIdentification?.FinancialInstrumentIdentification?.IdentifierEndDate?.TimeZoneCode,
                    "DaylightSavingIndicator": check response?.BankingProductReference?.FinancialInstrumentIdentification?.FinancialInstrumentIdentification?.IdentifierEndDate?.DaylightSavingIndicator,
                    "DateTimeType": check response?.BankingProductReference?.FinancialInstrumentIdentification?.FinancialInstrumentIdentification?.IdentifierEndDate?.DateTimeType
                }
            },
            "FinancialInstrumentIdentificationType": check response?.BankingProductReference?.FinancialInstrumentIdentification?.FinancialInstrumentIdentificationType
        },
        "FinancialInstrumentName": {
            "Name": check response?.BankingProductReference?.FinancialInstrumentName?.Name
        },
        "FinancialInstrumentDate": {
            "FinancialInstrumentDate": {
                "DateTimeContent": check response?.BankingProductReference?.FinancialInstrumentDate?.FinancialInstrumentDate?.DateTimeContent,
                "TimeZoneCode": check response?.BankingProductReference?.FinancialInstrumentDate?.FinancialInstrumentDate?.TimeZoneCode,
                "DaylightSavingIndicator": check response?.BankingProductReference?.FinancialInstrumentDate?.FinancialInstrumentDate?.DaylightSavingIndicator,
                "DateTimeType": check response?.BankingProductReference?.FinancialInstrumentDate?.FinancialInstrumentDate?.DateTimeType
            },
            "FinancialInstrumentDateType": check response?.BankingProductReference?.FinancialInstrumentDate?.FinancialInstrumentDateType
        },
        "AssetTitle": check response?.BankingProductReference?.AssetTitle,
        "AssetIdentification": {
            "IdentifierValue": check response?.BankingProductReference?.AssetIdentification?.IdentifierValue,
            "IdentifierIssuerReference": {
                "PartyReference": check response?.BankingProductReference?.AssetIdentification?.IdentifierIssuerReference?.PartyReference,
                "InvolvementReference": check response?.BankingProductReference?.AssetIdentification?.IdentifierIssuerReference?.InvolvementReference
            },
            "IdentifierStartDate": {
                "DateTimeContent": check response?.BankingProductReference?.AssetIdentification?.IdentifierStartDate?.DateTimeContent,
                "TimeZoneCode": check response?.BankingProductReference?.AssetIdentification?.IdentifierStartDate?.TimeZoneCode,
                "DaylightSavingIndicator": check response?.BankingProductReference?.AssetIdentification?.IdentifierStartDate?.DaylightSavingIndicator,
                "DateTimeType": check response?.BankingProductReference?.AssetIdentification?.IdentifierStartDate?.DateTimeType
            },
            "IdentifierEndDate": {
                "DateTimeContent": check response?.BankingProductReference?.AssetIdentification?.IdentifierEndDate?.DateTimeContent,
                "TimeZoneCode": check response?.BankingProductReference?.AssetIdentification?.IdentifierEndDate?.TimeZoneCode,
                "DaylightSavingIndicator": check response?.BankingProductReference?.AssetIdentification?.IdentifierEndDate?.DaylightSavingIndicator,
                "DateTimeType": check response?.BankingProductReference?.AssetIdentification?.IdentifierEndDate?.DateTimeType
            }
        },
        "AssetType": check response?.BankingProductReference?.AssetType,
        "AssetDescription": check response?.BankingProductReference?.AssetDescription,
        "AssetStatus": {
            "StatusReason": check response?.BankingProductReference?.AssetStatus?.StatusReason,
            "StatusDateTime": {
                "DateTimeContent": check response?.BankingProductReference?.AssetStatus?.StatusDateTime?.DateTimeContent,
                "TimeZoneCode": check response?.BankingProductReference?.AssetStatus?.StatusDateTime?.TimeZoneCode,
                "DaylightSavingIndicator": check response?.BankingProductReference?.AssetStatus?.StatusDateTime?.DaylightSavingIndicator,
                "DateTimeType": check response?.BankingProductReference?.AssetStatus?.StatusDateTime?.DateTimeType
            },
            "StatusValidityPeriod": {
                "FromDateTime": {
                    "DateTimeContent": check response?.BankingProductReference?.AssetStatus?.StatusValidityPeriod?.FromDateTime?.DateTimeContent,
                    "TimeZoneCode": check response?.BankingProductReference?.AssetStatus?.StatusValidityPeriod?.FromDateTime?.TimeZoneCode,
                    "DaylightSavingIndicator": check response?.BankingProductReference?.AssetStatus?.StatusValidityPeriod?.FromDateTime?.DaylightSavingIndicator,
                    "DateTimeType": check response?.BankingProductReference?.AssetStatus?.StatusValidityPeriod?.FromDateTime?.DateTimeType
                },
                "ToDateTime": {
                    "DateTimeContent": check response?.BankingProductReference?.AssetStatus?.StatusValidityPeriod?.ToDateTime?.DateTimeContent,
                    "TimeZoneCode": check response?.BankingProductReference?.AssetStatus?.StatusValidityPeriod?.ToDateTime?.TimeZoneCode,
                    "DaylightSavingIndicator": check response?.BankingProductReference?.AssetStatus?.StatusValidityPeriod?.ToDateTime?.DaylightSavingIndicator,
                    "DateTimeType": check response?.BankingProductReference?.AssetStatus?.StatusValidityPeriod?.ToDateTime?.DateTimeType
                }
            },
            "StatusInvolvedPartyReference": {
                "PartyReference": check response?.BankingProductReference?.AssetStatus?.StatusInvolvedPartyReference?.PartyReference,
                "InvolvementReference": check response?.BankingProductReference?.AssetStatus?.StatusInvolvedPartyReference?.InvolvementReference
            }
        },
        "AssetDate": {
            "DateTimeContent": check response?.BankingProductReference?.AssetDate?.DateTimeContent,
            "TimeZoneCode": check response?.BankingProductReference?.AssetDate?.TimeZoneCode,
            "DaylightSavingIndicator": check response?.BankingProductReference?.AssetDate?.DaylightSavingIndicator,
            "DateTimeType": check response?.BankingProductReference?.AssetDate?.DateTimeType
        },
        "AssetClassification": check response?.BankingProductReference?.AssetClassification,
        "AssetClassificationType": {
            "Assetclassificationtypevalues": check response?.BankingProductReference?.AssetClassificationType?.Assetclassificationtypevalues
        },
        "AssetSubClassificationType": check response?.BankingProductReference?.AssetSubClassificationType,
        "AssetSubClassification": check response?.BankingProductReference?.AssetSubClassification
    }
};
