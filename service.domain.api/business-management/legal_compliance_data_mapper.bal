import ballerinax/financial.bian.attribute.groups.business_management as business_management;
isolated function transfromLegalComplianceAssessmentResponse(json response) returns business_management:LegalComplianceAssessment|error => {
    "LegalAssessmentType": check response?.LegalAssessmentType,
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
    "CustomerReference": {
        "PartyReference": check response?.CustomerReference?.PartyReference,
        "InvolvementReference": check response?.CustomerReference?.InvolvementReference
    },
    "JurisdictionReference": {
        "Jurisdiction": check response?.JurisdictionReference?.Jurisdiction
    },
    "LawReference": {
        "LawType": check response?.LawReference?.LawType,
        "LawDescription": check response?.LawReference?.LawDescription,
        "LegalPenalty": check response?.LawReference?.LegalPenalty,
        "LegalGuideline": check response?.LawReference?.LegalGuideline,
        "RuleSetDefinition": check response?.LawReference?.RuleSetDefinition,
        "RuleSetInterpretation": check response?.LawReference?.RuleSetInterpretation,
        "RuleSetType": check response?.LawReference?.RuleSetType,
        "RuleSetName": {
            "Name": check response?.LawReference?.RuleSetName?.Name
        },
        "RuleSetIdentification": {
            "IdentifierValue": check response?.LawReference?.RuleSetIdentification?.IdentifierValue,
            "IdentifierIssuerReference": {
                "PartyReference": check response?.LawReference?.RuleSetIdentification?.IdentifierIssuerReference?.PartyReference,
                "InvolvementReference": check response?.LawReference?.RuleSetIdentification?.IdentifierIssuerReference?.InvolvementReference
            },
            "IdentifierStartDate": {
                "DateTimeContent": check response?.LawReference?.RuleSetIdentification?.IdentifierStartDate?.DateTimeContent,
                "TimeZoneCode": check response?.LawReference?.RuleSetIdentification?.IdentifierStartDate?.TimeZoneCode,
                "DaylightSavingIndicator": check response?.LawReference?.RuleSetIdentification?.IdentifierStartDate?.DaylightSavingIndicator,
                "DateTimeType": check response?.LawReference?.RuleSetIdentification?.IdentifierStartDate?.DateTimeType
            },
            "IdentifierEndDate": {
                "DateTimeContent": check response?.LawReference?.RuleSetIdentification?.IdentifierEndDate?.DateTimeContent,
                "TimeZoneCode": check response?.LawReference?.RuleSetIdentification?.IdentifierEndDate?.TimeZoneCode,
                "DaylightSavingIndicator": check response?.LawReference?.RuleSetIdentification?.IdentifierEndDate?.DaylightSavingIndicator,
                "DateTimeType": check response?.LawReference?.RuleSetIdentification?.IdentifierEndDate?.DateTimeType
            }
        },
        "RuleSetLifecycleStatus": {
            "StatusReason": check response?.LawReference?.RuleSetLifecycleStatus?.StatusReason,
            "StatusDateTime": {
                "DateTimeContent": check response?.LawReference?.RuleSetLifecycleStatus?.StatusDateTime?.DateTimeContent,
                "TimeZoneCode": check response?.LawReference?.RuleSetLifecycleStatus?.StatusDateTime?.TimeZoneCode,
                "DaylightSavingIndicator": check response?.LawReference?.RuleSetLifecycleStatus?.StatusDateTime?.DaylightSavingIndicator,
                "DateTimeType": check response?.LawReference?.RuleSetLifecycleStatus?.StatusDateTime?.DateTimeType
            },
            "StatusValidityPeriod": {
                "FromDateTime": {
                    "DateTimeContent": check response?.LawReference?.RuleSetLifecycleStatus?.StatusValidityPeriod?.FromDateTime?.DateTimeContent,
                    "TimeZoneCode": check response?.LawReference?.RuleSetLifecycleStatus?.StatusValidityPeriod?.FromDateTime?.TimeZoneCode,
                    "DaylightSavingIndicator": check response?.LawReference?.RuleSetLifecycleStatus?.StatusValidityPeriod?.FromDateTime?.DaylightSavingIndicator,
                    "DateTimeType": check response?.LawReference?.RuleSetLifecycleStatus?.StatusValidityPeriod?.FromDateTime?.DateTimeType
                },
                "ToDateTime": {
                    "DateTimeContent": check response?.LawReference?.RuleSetLifecycleStatus?.StatusValidityPeriod?.ToDateTime?.DateTimeContent,
                    "TimeZoneCode": check response?.LawReference?.RuleSetLifecycleStatus?.StatusValidityPeriod?.ToDateTime?.TimeZoneCode,
                    "DaylightSavingIndicator": check response?.LawReference?.RuleSetLifecycleStatus?.StatusValidityPeriod?.ToDateTime?.DaylightSavingIndicator,
                    "DateTimeType": check response?.LawReference?.RuleSetLifecycleStatus?.StatusValidityPeriod?.ToDateTime?.DateTimeType
                }
            },
            "StatusInvolvedPartyReference": {
                "PartyReference": check response?.LawReference?.RuleSetLifecycleStatus?.StatusInvolvedPartyReference?.PartyReference,
                "InvolvementReference": check response?.LawReference?.RuleSetLifecycleStatus?.StatusInvolvedPartyReference?.InvolvementReference
            }
        }
    },
    "LawDefinition": check response?.LawDefinition,
    "LawComplianceandReportingRequirements": {
        "RequirementType": check response?.LawComplianceandReportingRequirements?.RequirementType
    },
    "LawComplianceAccountability": check response?.LawComplianceAccountability,
    "LegalPenalties": {
        "FeeType": check response?.LegalPenalties?.FeeType,
        "FeeAmount": {
            "AmountValue": check response?.LegalPenalties?.FeeAmount?.AmountValue,
            "AmountCurrency": {
                "Currencycode": check response?.LegalPenalties?.FeeAmount?.AmountCurrency?.Currencycode
            },
            "DecimalPointPosition": check response?.LegalPenalties?.FeeAmount?.DecimalPointPosition,
            "AmountType": check response?.LegalPenalties?.FeeAmount?.AmountType
        },
        "FeePlan": {
            "FeePlanName": {
                "Name": check response?.LegalPenalties?.FeePlan?.FeePlanName?.Name
            },
            "FeePlanType": check response?.LegalPenalties?.FeePlan?.FeePlanType,
            "FeePlan": {
                "PlanGoal": {
                    "GoalType": check response?.LegalPenalties?.FeePlan?.FeePlan?.PlanGoal?.GoalType,
                    "GoalDefinition": check response?.LegalPenalties?.FeePlan?.FeePlan?.PlanGoal?.GoalDefinition,
                    "GoalName": {
                        "Name": check response?.LegalPenalties?.FeePlan?.FeePlan?.PlanGoal?.GoalName?.Name
                    },
                    "GoalDateAndTime": {
                        "GoalDateAndTime": {
                            "DateTimeContent": check response?.LegalPenalties?.FeePlan?.FeePlan?.PlanGoal?.GoalDateAndTime?.GoalDateAndTime?.DateTimeContent,
                            "TimeZoneCode": check response?.LegalPenalties?.FeePlan?.FeePlan?.PlanGoal?.GoalDateAndTime?.GoalDateAndTime?.TimeZoneCode,
                            "DaylightSavingIndicator": check response?.LegalPenalties?.FeePlan?.FeePlan?.PlanGoal?.GoalDateAndTime?.GoalDateAndTime?.DaylightSavingIndicator,
                            "DateTimeType": check response?.LegalPenalties?.FeePlan?.FeePlan?.PlanGoal?.GoalDateAndTime?.GoalDateAndTime?.DateTimeType
                        },
                        "GoalDateAndTimeType": check response?.LegalPenalties?.FeePlan?.FeePlan?.PlanGoal?.GoalDateAndTime?.GoalDateAndTimeType
                    },
                    "GoalStatus": {
                        "GoalStatus": {
                            "StatusReason": check response?.LegalPenalties?.FeePlan?.FeePlan?.PlanGoal?.GoalStatus?.GoalStatus?.StatusReason
                            // "StatusDateTime": {
                            //     "DateTimeContent": check response?.LegalPenalties?.FeePlan?.FeePlan?.PlanGoal?.GoalStatus?.GoalStatus?.StatusDateTime?.DateTimeContent,
                            //     "TimeZoneCode": check response?.LegalPenalties?.FeePlan?.FeePlan?.PlanGoal?.GoalStatus?.GoalStatus?.StatusDateTime?.TimeZoneCode,
                            //     "DaylightSavingIndicator": check response?.LegalPenalties?.FeePlan?.FeePlan?.PlanGoal?.GoalStatus?.GoalStatus?.StatusDateTime?.DaylightSavingIndicator,
                            //     "DateTimeType": check response?.LegalPenalties?.FeePlan?.FeePlan?.PlanGoal?.GoalStatus?.GoalStatus?.StatusDateTime?.DateTimeType
                            // },
                        //     "StatusValidityPeriod": {
                        //         "FromDateTime": {
                        //             "DateTimeContent": check response?.LegalPenalties?.FeePlan?.FeePlan?.PlanGoal?.GoalStatus?.GoalStatus?.StatusValidityPeriod?.FromDateTime?.DateTimeContent,
                        //             "TimeZoneCode": check response?.LegalPenalties?.FeePlan?.FeePlan?.PlanGoal?.GoalStatus?.GoalStatus?.StatusValidityPeriod?.FromDateTime?.TimeZoneCode,
                        //             "DaylightSavingIndicator": check response?.LegalPenalties?.FeePlan?.FeePlan?.PlanGoal?.GoalStatus?.GoalStatus?.StatusValidityPeriod?.FromDateTime?.DaylightSavingIndicator,
                        //             "DateTimeType": check response?.LegalPenalties?.FeePlan?.FeePlan?.PlanGoal?.GoalStatus?.GoalStatus?.StatusValidityPeriod?.FromDateTime?.DateTimeType
                        //         },
                        //         "ToDateTime": {
                        //             "DateTimeContent": check response?.LegalPenalties?.FeePlan?.FeePlan?.PlanGoal?.GoalStatus?.GoalStatus?.StatusValidityPeriod?.ToDateTime?.DateTimeContent,
                        //             "TimeZoneCode": check response?.LegalPenalties?.FeePlan?.FeePlan?.PlanGoal?.GoalStatus?.GoalStatus?.StatusValidityPeriod?.ToDateTime?.TimeZoneCode,
                        //             "DaylightSavingIndicator": check response?.LegalPenalties?.FeePlan?.FeePlan?.PlanGoal?.GoalStatus?.GoalStatus?.StatusValidityPeriod?.ToDateTime?.DaylightSavingIndicator,
                        //             "DateTimeType": check response?.LegalPenalties?.FeePlan?.FeePlan?.PlanGoal?.GoalStatus?.GoalStatus?.StatusValidityPeriod?.ToDateTime?.DateTimeType
                        //         }
                        //     },
                        //     "StatusInvolvedPartyReference": {
                        //         "PartyReference": check response?.LegalPenalties?.FeePlan?.FeePlan?.PlanGoal?.GoalStatus?.GoalStatus?.StatusInvolvedPartyReference?.PartyReference,
                        //         "InvolvementReference": check response?.LegalPenalties?.FeePlan?.FeePlan?.PlanGoal?.GoalStatus?.GoalStatus?.StatusInvolvedPartyReference?.InvolvementReference
                        //     }
                        },
                        "GoalStatusType": check response?.LegalPenalties?.FeePlan?.FeePlan?.PlanGoal?.GoalStatus?.GoalStatusType
                    }
                }
        //          "PlanBudget": {
        //             "BudgetType": {
        //                 "BudgetTypeName": {
        //                     "Name": check response?.LegalPenalties?.FeePlan?.FeePlan?.PlanBudget?.BudgetType?.BudgetTypeName?.Name
        //                 },
        //                 "BudgetType": check response?.LegalPenalties?.FeePlan?.FeePlan?.PlanBudget?.BudgetType?.BudgetType
        //             },
        //             "BudgetAmount": {
        //                 "AmountValue": check response?.LegalPenalties?.FeePlan?.FeePlan?.PlanBudget?.BudgetAmount?.AmountValue,
        //                 "AmountCurrency": {
        //                     "Currencycode": check response?.LegalPenalties?.FeePlan?.FeePlan?.PlanBudget?.BudgetAmount?.AmountCurrency?.Currencycode
        //                 },
        //                 "DecimalPointPosition": check response?.LegalPenalties?.FeePlan?.FeePlan?.PlanBudget?.BudgetAmount?.DecimalPointPosition,
        //                 "AmountType": check response?.LegalPenalties?.FeePlan?.FeePlan?.PlanBudget?.BudgetAmount?.AmountType
        //             },
        //             "ArrangementAction": {
        //                 "ActionType": check response?.LegalPenalties?.FeePlan?.FeePlan?.PlanBudget?.ArrangementAction?.ActionType,
        //                 "EventType": check response?.LegalPenalties?.FeePlan?.FeePlan?.PlanBudget?.ArrangementAction?.EventType,
        //                 "EventDateTime": {
        //                     "DateTimeContent": check response?.LegalPenalties?.FeePlan?.FeePlan?.PlanBudget?.ArrangementAction?.EventDateTime?.DateTimeContent,
        //                     "TimeZoneCode": check response?.LegalPenalties?.FeePlan?.FeePlan?.PlanBudget?.ArrangementAction?.EventDateTime?.TimeZoneCode,
        //                     "DaylightSavingIndicator": check response?.LegalPenalties?.FeePlan?.FeePlan?.PlanBudget?.ArrangementAction?.EventDateTime?.DaylightSavingIndicator,
        //                          "DateTimeType": check response?.LegalPenalties?.FeePlan?.FeePlan?.PlanBudget?.ArrangementAction?.EventDateTime?.DateTimeType
        //                 },
        //                 "EventDescription": check response?.LegalPenalties?.FeePlan?.FeePlan?.PlanBudget?.ArrangementAction?.EventDescription,
        //                 "EventSource": check response?.LegalPenalties?.FeePlan?.FeePlan?.PlanBudget?.ArrangementAction?.EventSource,
        //                 "EventLocation": {
        //                     "LocationDescription": check response?.LegalPenalties?.FeePlan?.FeePlan?.PlanBudget?.ArrangementAction?.EventLocation?.LocationDescription,
        //                     "LocationDateTime": {
        //                         "DateTimeContent": check response?.LegalPenalties?.FeePlan?.FeePlan?.PlanBudget?.ArrangementAction?.EventLocation?.LocationDateTime?.DateTimeContent,
        //                         "TimeZoneCode": check response?.LegalPenalties?.FeePlan?.FeePlan?.PlanBudget?.ArrangementAction?.EventLocation?.LocationDateTime?.TimeZoneCode,
        //                         "DaylightSavingIndicator": check response?.LegalPenalties?.FeePlan?.FeePlan?.PlanBudget?.ArrangementAction?.EventLocation?.LocationDateTime?.DaylightSavingIndicator,
        //                         "DateTimeType": check response?.LegalPenalties?.FeePlan?.FeePlan?.PlanBudget?.ArrangementAction?.EventLocation?.LocationDateTime?.DateTimeType
        //                     },
        //                     "LocationStatus": {
        //                         "StatusReason": check response?.LegalPenalties?.FeePlan?.FeePlan?.PlanBudget?.ArrangementAction?.EventLocation?.LocationStatus?.StatusReason,
        //                         "StatusDateTime": {
        //                             "DateTimeContent": check response?.LegalPenalties?.FeePlan?.FeePlan?.PlanBudget?.ArrangementAction?.EventLocation?.LocationStatus?.StatusDateTime?.DateTimeContent,
        //                             "TimeZoneCode": check response?.LegalPenalties?.FeePlan?.FeePlan?.PlanBudget?.ArrangementAction?.EventLocation?.LocationStatus?.StatusDateTime?.TimeZoneCode,
        //                             "DaylightSavingIndicator": check response?.LegalPenalties?.FeePlan?.FeePlan?.PlanBudget?.ArrangementAction?.EventLocation?.LocationStatus?.StatusDateTime?.DaylightSavingIndicator,
        //                             "DateTimeType": check response?.LegalPenalties?.FeePlan?.FeePlan?.PlanBudget?.ArrangementAction?.EventLocation?.LocationStatus?.StatusDateTime?.DateTimeType
        //                         },
        //                         "StatusValidityPeriod": {
        //                             "FromDateTime": {
        //                                 "DateTimeContent": check response?.LegalPenalties?.FeePlan?.FeePlan?.PlanBudget?.ArrangementAction?.EventLocation?.LocationStatus?.StatusValidityPeriod?.FromDateTime?.DateTimeContent,
        //                                 "TimeZoneCode": check response?.LegalPenalties?.FeePlan?.FeePlan?.PlanBudget?.ArrangementAction?.EventLocation?.LocationStatus?.StatusValidityPeriod?.FromDateTime?.TimeZoneCode,
        //                                 "DaylightSavingIndicator": check response?.LegalPenalties?.FeePlan?.FeePlan?.PlanBudget?.ArrangementAction?.EventLocation?.LocationStatus?.StatusValidityPeriod?.FromDateTime?.DaylightSavingIndicator,
        //                                 "DateTimeType": check response?.LegalPenalties?.FeePlan?.FeePlan?.PlanBudget?.ArrangementAction?.EventLocation?.LocationStatus?.StatusValidityPeriod?.FromDateTime?.DateTimeType
        //                             },
        //                             "ToDateTime": {
        //                                 "DateTimeContent": check response?.LegalPenalties?.FeePlan?.FeePlan?.PlanBudget?.ArrangementAction?.EventLocation?.LocationStatus?.StatusValidityPeriod?.ToDateTime?.DateTimeContent,
        //                                 "TimeZoneCode": check response?.LegalPenalties?.FeePlan?.FeePlan?.PlanBudget?.ArrangementAction?.EventLocation?.LocationStatus?.StatusValidityPeriod?.ToDateTime?.TimeZoneCode,
        //                                 "DaylightSavingIndicator": check response?.LegalPenalties?.FeePlan?.FeePlan?.PlanBudget?.ArrangementAction?.EventLocation?.LocationStatus?.StatusValidityPeriod?.ToDateTime?.DaylightSavingIndicator,
        //                                 "DateTimeType": check response?.LegalPenalties?.FeePlan?.FeePlan?.PlanBudget?.ArrangementAction?.EventLocation?.LocationStatus?.StatusValidityPeriod?.ToDateTime?.DateTimeType
        //                             }
        //                         },
        //                         "StatusInvolvedPartyReference": {
        //                             "PartyReference": check response?.LegalPenalties?.FeePlan?.FeePlan?.PlanBudget?.ArrangementAction?.EventLocation?.LocationStatus?.StatusInvolvedPartyReference?.PartyReference,
        //                             "InvolvementReference": check response?.LegalPenalties?.FeePlan?.FeePlan?.PlanBudget?.ArrangementAction?.EventLocation?.LocationStatus?.StatusInvolvedPartyReference?.InvolvementReference
        //                         }
        //                     },
        //                     "LocationType": check response?.LegalPenalties?.FeePlan?.FeePlan?.PlanBudget?.ArrangementAction?.EventLocation?.LocationType,
        //                     "LocationZoningType": check response?.LegalPenalties?.FeePlan?.FeePlan?.PlanBudget?.ArrangementAction?.EventLocation?.LocationZoningType,
        //                     "LocationNeighborhoodType": check response?.LegalPenalties?.FeePlan?.FeePlan?.PlanBudget?.ArrangementAction?.EventLocation?.LocationNeighborhoodType,
        //                     "LocationConstructionType": check response?.LegalPenalties?.FeePlan?.FeePlan?.PlanBudget?.ArrangementAction?.EventLocation?.LocationConstructionType,
        //                     "LocationOccupancyType": check response?.LegalPenalties?.FeePlan?.FeePlan?.PlanBudget?.ArrangementAction?.EventLocation?.LocationOccupancyType,
        //                     "LocationValue": check response?.LegalPenalties?.FeePlan?.FeePlan?.PlanBudget?.ArrangementAction?.EventLocation?.LocationValue,
        //                     "LocationCapacity": check response?.LegalPenalties?.FeePlan?.FeePlan?.PlanBudget?.ArrangementAction?.EventLocation?.LocationCapacity,
        //                     "LocationIdentification": {
        //                         "IdentifierValue": check response?.PlanBudget?.ArrangementAction?.EventLocation?.LocationIdentification?.IdentifierValue,
        //                         "IdentifierIssuerReference": {
        //                             "PartyReference": check response?.PlanBudget?.ArrangementAction?.EventLocation?.LocationIdentification?.IdentifierIssuerReference?.PartyReference,
        //                             "InvolvementReference": check response?.PlanBudget?.ArrangementAction?.EventLocation?.LocationIdentification?.IdentifierIssuerReference?.InvolvementReference
        //                         },
        //                         "IdentifierStartDate": {
        //                             "DateTimeContent": check response?.PlanBudget?.ArrangementAction?.EventLocation?.LocationIdentification?.IdentifierStartDate?.DateTimeContent,
        //                             "TimeZoneCode": check response?.PlanBudget?.ArrangementAction?.EventLocation?.LocationIdentification?.IdentifierStartDate?.TimeZoneCode,
        //                             "DaylightSavingIndicator": check response?.PlanBudget?.ArrangementAction?.EventLocation?.LocationIdentification?.IdentifierStartDate?.DaylightSavingIndicator,
        //                             "DateTimeType": check response?.PlanBudget?.ArrangementAction?.EventLocation?.LocationIdentification?.IdentifierStartDate?.DateTimeType
        //                         },
        //                         "IdentifierEndDate": {
        //                             "DateTimeContent": check response?.PlanBudget?.ArrangementAction?.EventLocation?.LocationIdentification?.IdentifierEndDate?.DateTimeContent,
        //                             "TimeZoneCode": check response?.PlanBudget?.ArrangementAction?.EventLocation?.LocationIdentification?.IdentifierEndDate?.TimeZoneCode,
        //                             "DaylightSavingIndicator": check response?.PlanBudget?.ArrangementAction?.EventLocation?.LocationIdentification?.IdentifierEndDate?.DaylightSavingIndicator,
        //                             "DateTimeType": check response?.PlanBudget?.ArrangementAction?.EventLocation?.LocationIdentification?.IdentifierEndDate?.DateTimeType
        //                         }
        //                     },
        //                     "LocationAddress": check response?.PlanBudget?.ArrangementAction?.EventLocation?.LocationAddress,
        //                     "LocationName": {
        //                         "Name": check response?.PlanBudget?.ArrangementAction?.EventLocation?.LocationName?.Name
        //                     },
        //                     "LocationTimeZone": check response?.PlanBudget?.ArrangementAction?.EventLocation?.LocationTimeZone
        //                 },
        //                 "EventStatus": {
        //                     "StatusReason": check response?.PlanBudget?.ArrangementAction?.EventStatus?.StatusReason,
        //                     "StatusDateTime": {
        //                         "DateTimeContent": check response?.PlanBudget?.ArrangementAction?.EventStatus?.StatusDateTime?.DateTimeContent,
        //                         "TimeZoneCode": check response?.PlanBudget?.ArrangementAction?.EventStatus?.StatusDateTime?.TimeZoneCode,
        //                         "DaylightSavingIndicator": check response?.PlanBudget?.ArrangementAction?.EventStatus?.StatusDateTime?.DaylightSavingIndicator,
        //                         "DateTimeType": check response?.PlanBudget?.ArrangementAction?.EventStatus?.StatusDateTime?.DateTimeType
        //                     },
        //                     "StatusValidityPeriod": {
        //                         "FromDateTime": {
        //                             "DateTimeContent": check response?.PlanBudget?.ArrangementAction?.EventStatus?.StatusValidityPeriod?.FromDateTime?.DateTimeContent,
        //                             "TimeZoneCode": check response?.PlanBudget?.ArrangementAction?.EventStatus?.StatusValidityPeriod?.FromDateTime?.TimeZoneCode,
        //                             "DaylightSavingIndicator": check response?.PlanBudget?.ArrangementAction?.EventStatus?.StatusValidityPeriod?.FromDateTime?.DaylightSavingIndicator,
        //                             "DateTimeType": check response?.PlanBudget?.ArrangementAction?.EventStatus?.StatusValidityPeriod?.FromDateTime?.DateTimeType
        //                         },
        //                         "ToDateTime": {
        //                             "DateTimeContent": check response?.PlanBudget?.ArrangementAction?.EventStatus?.StatusValidityPeriod?.ToDateTime?.DateTimeContent,
        //                             "TimeZoneCode": check response?.PlanBudget?.ArrangementAction?.EventStatus?.StatusValidityPeriod?.ToDateTime?.TimeZoneCode,
        //                             "DaylightSavingIndicator": check response?.PlanBudget?.ArrangementAction?.EventStatus?.StatusValidityPeriod?.ToDateTime?.DaylightSavingIndicator,
        //                             "DateTimeType": check response?.PlanBudget?.ArrangementAction?.EventStatus?.StatusValidityPeriod?.ToDateTime?.DateTimeType
        //                         }
        //                     },
        //                     "StatusInvolvedPartyReference": {
        //                         "PartyReference": check response?.PlanBudget?.ArrangementAction?.EventStatus?.StatusInvolvedPartyReference?.PartyReference,
        //                         "InvolvementReference": check response?.PlanBudget?.ArrangementAction?.EventStatus?.StatusInvolvedPartyReference?.InvolvementReference
        //                     }
        //                 },
        //                 "EventValue": check response?.PlanBudget?.ArrangementAction?.EventValue,
        //                 "EventValidityPeriod": {
        //                     "FromDateTime": {
        //                         "DateTimeContent": check response?.PlanBudget?.ArrangementAction?.EventValidityPeriod?.FromDateTime?.DateTimeContent,
        //                         "TimeZoneCode": check response?.PlanBudget?.ArrangementAction?.EventValidityPeriod?.FromDateTime?.TimeZoneCode,
        //                         "DaylightSavingIndicator": check response?.PlanBudget?.ArrangementAction?.EventValidityPeriod?.FromDateTime?.DaylightSavingIndicator,
        //                         "DateTimeType": check response?.PlanBudget?.ArrangementAction?.EventValidityPeriod?.FromDateTime?.DateTimeType
        //                     },
        //                     "ToDateTime": {
        //                         "DateTimeContent": check response?.PlanBudget?.ArrangementAction?.EventValidityPeriod?.ToDateTime?.DateTimeContent,
        //                         "TimeZoneCode": check response?.PlanBudget?.ArrangementAction?.EventValidityPeriod?.ToDateTime?.TimeZoneCode,
        //                         "DaylightSavingIndicator": check response?.PlanBudget?.ArrangementAction?.EventValidityPeriod?.ToDateTime?.DaylightSavingIndicator,
        //                         "DateTimeType": check response?.PlanBudget?.ArrangementAction?.EventValidityPeriod?.ToDateTime?.DateTimeType
        //                     }
        //                 },
        //                 "EventIdentification": {
        //                     "IdentifierValue": check response?.PlanBudget?.ArrangementAction?.EventIdentification?.IdentifierValue,
        //                     "IdentifierIssuerReference": {
        //                         "PartyReference": check response?.PlanBudget?.ArrangementAction?.EventIdentification?.IdentifierIssuerReference?.PartyReference,
        //                         "InvolvementReference": check response?.PlanBudget?.ArrangementAction?.EventIdentification?.IdentifierIssuerReference?.InvolvementReference
        //                     },
        //                     "IdentifierStartDate": {
        //                         "DateTimeContent": check response?.PlanBudget?.ArrangementAction?.EventIdentification?.IdentifierStartDate?.DateTimeContent,
        //                         "TimeZoneCode": check response?.PlanBudget?.ArrangementAction?.EventIdentification?.IdentifierStartDate?.TimeZoneCode,
        //                         "DaylightSavingIndicator": check response?.PlanBudget?.ArrangementAction?.EventIdentification?.IdentifierStartDate?.DaylightSavingIndicator,
        //                         "DateTimeType": check response?.PlanBudget?.ArrangementAction?.EventIdentification?.IdentifierStartDate?.DateTimeType
        //                     },
        //                     "IdentifierEndDate": {
        //                         "DateTimeContent": check response?.PlanBudget?.ArrangementAction?.EventIdentification?.IdentifierEndDate?.DateTimeContent,
        //                         "TimeZoneCode": check response?.PlanBudget?.ArrangementAction?.EventIdentification?.IdentifierEndDate?.TimeZoneCode,
        //                         "DaylightSavingIndicator": check response?.PlanBudget?.ArrangementAction?.EventIdentification?.IdentifierEndDate?.DaylightSavingIndicator,
        //                         "DateTimeType": check response?.PlanBudget?.ArrangementAction?.EventIdentification?.IdentifierEndDate?.DateTimeType
        //                     }
        //                 }
        //             },
        //             "ArrangementStartDate": {
        //                 "DateTimeContent": check response?.PlanBudget?.ArrangementStartDate?.DateTimeContent,
        //                 "TimeZoneCode": check response?.PlanBudget?.ArrangementStartDate?.TimeZoneCode,
        //                 "DaylightSavingIndicator": check response?.PlanBudget?.ArrangementStartDate?.DaylightSavingIndicator,
        //                 "DateTimeType": check response?.PlanBudget?.ArrangementStartDate?.DateTimeType
        //             },
        //             "ArrangementEndDate": {
        //                 "DateTimeContent": check response?.PlanBudget?.ArrangementEndDate?.DateTimeContent,
        //                 "TimeZoneCode": check response?.PlanBudget?.ArrangementEndDate?.TimeZoneCode,
        //                 "DaylightSavingIndicator": check response?.PlanBudget?.ArrangementEndDate?.DaylightSavingIndicator,
        //                 "DateTimeType": check response?.PlanBudget?.ArrangementEndDate?.DateTimeType
        //             },
        //             "ArrangementStatus": {
        //                 "ArrangementStatus": {
        //                     "StatusReason": check response?.PlanBudget?.StatusReason,
        //                     "StatusDateTime": {
        //                         "DateTimeContent": check response?.PlanBudget?.StatusDateTime?.DateTimeContent,
        //                         "TimeZoneCode": check response?.PlanBudget?.StatusDateTime?.TimeZoneCode,
        //                         "DaylightSavingIndicator": check response?.PlanBudget?.StatusDateTime?.DaylightSavingIndicator,
        //                         "DateTimeType": check response?.PlanBudget?.StatusDateTime?.DateTimeType
        //                     },
        //                     "StatusValidityPeriod": {
        //                         "FromDateTime": {
        //                             "DateTimeContent": check response?.PlanBudget?.StatusValidityPeriod?.FromDateTime?.DateTimeContent,
        //                             "TimeZoneCode": check response?.PlanBudget?.StatusValidityPeriod?.FromDateTime?.TimeZoneCode,
        //                             "DaylightSavingIndicator": check response?.PlanBudget?.StatusValidityPeriod?.FromDateTime?.DaylightSavingIndicator,
        //                             "DateTimeType": check response?.PlanBudget?.StatusValidityPeriod?.FromDateTime?.DateTimeType
        //                         },
        //                         "ToDateTime": {
        //                             "DateTimeContent": check response?.PlanBudget?.StatusValidityPeriod?.ToDateTime?.DateTimeContent,
        //                             "TimeZoneCode": check response?.PlanBudget?.StatusValidityPeriod?.ToDateTime?.TimeZoneCode,
        //                             "DaylightSavingIndicator": check response?.PlanBudget?.StatusValidityPeriod?.ToDateTime?.DaylightSavingIndicator,
        //                             "DateTimeType": check response?.PlanBudget?.StatusValidityPeriod?.ToDateTime?.DateTimeType
        //                         }
        //                     },
        //                     "StatusInvolvedPartyReference": {
        //                         "PartyReference": check response?.PlanBudget?.StatusInvolvedPartyReference?.PartyReference,
        //                         "InvolvementReference": check response?.PlanBudget?.StatusInvolvedPartyReference?.InvolvementReference
        //                     }
        //                 },
        //                 "ArrangementStatusType": check response?.ArrangementStatusType
        //             },
        //             "ArrangementSubjectMatter": {
        //                 "Subject": check response?.ArrangementSubjectMatter?.Subject
        //             },
        //             "Arrangementtype": check response?.Arrangementtype,
        //             "ArrangementIdentification": {
        //                 "IdentifierValue": check response?.ArrangementIdentification?.IdentifierValue,
        //                 "IdentifierIssuerReference": {
        //                     "PartyReference": check response?.ArrangementIdentification?.IdentifierIssuerReference?.PartyReference,
        //                     "InvolvementReference": check response?.ArrangementIdentification?.IdentifierIssuerReference?.InvolvementReference
        //                 },
        //                 "IdentifierStartDate": {
        //                     "DateTimeContent": check response?.ArrangementIdentification?.IdentifierStartDate?.DateTimeContent,
        //                     "TimeZoneCode": check response?.ArrangementIdentification?.IdentifierStartDate?.TimeZoneCode,
        //                     "DaylightSavingIndicator": check response?.ArrangementIdentification?.IdentifierStartDate?.DaylightSavingIndicator,
        //                     "DateTimeType": check response?.ArrangementIdentification?.IdentifierStartDate?.DateTimeType
        //                 },
        //                 "IdentifierEndDate": {
        //                     "DateTimeContent": check response?.ArrangementIdentification?.IdentifierEndDate?.DateTimeContent,
        //                     "TimeZoneCode": check response?.ArrangementIdentification?.IdentifierEndDate?.TimeZoneCode,
        //                     "DaylightSavingIndicator": check response?.ArrangementIdentification?.IdentifierEndDate?.DaylightSavingIndicator,
        //                     "DateTimeType": check response?.ArrangementIdentification?.IdentifierEndDate?.DateTimeType
        //                 }
        //             }
        //         },
        //         "PlannedAction": {
        //             "ArrangementAction": {
        //                 "ActionType": check response?.PlannedAction?.ArrangementAction?.ActionType,
        //                 "EventType": check response?.PlannedAction?.ArrangementAction?.EventType,
        //                 "EventDateTime": {
        //                     "DateTimeContent": check response?.PlannedAction?.ArrangementAction?.EventDateTime?.DateTimeContent,
        //                     "TimeZoneCode": check response?.PlannedAction?.ArrangementAction?.EventDateTime?.TimeZoneCode,
        //                     "DaylightSavingIndicator": check response?.PlannedAction?.ArrangementAction?.EventDateTime?.DaylightSavingIndicator,
        //                     "DateTimeType": check response?.PlannedAction?.ArrangementAction?.EventDateTime?.DateTimeType
        //                 },
        //                 "EventDescription": check response?.PlannedAction?.ArrangementAction?.EventDescription,
        //                 "EventSource": check response?.PlannedAction?.ArrangementAction?.EventSource,
        //                 "EventLocation": {
        //                     "LocationDescription": check response?.PlannedAction?.ArrangementAction?.EventLocation?.LocationDescription,
        //                     "LocationDateTime": {
        //                         "DateTimeContent": check response?.PlannedAction?.ArrangementAction?.EventLocation?.LocationDateTime?.DateTimeContent,
        //                         "TimeZoneCode": check response?.PlannedAction?.ArrangementAction?.EventLocation?.LocationDateTime?.TimeZoneCode,
        //                         "DaylightSavingIndicator": check response?.PlannedAction?.ArrangementAction?.EventLocation?.LocationDateTime?.DaylightSavingIndicator,
        //                         "DateTimeType": check response?.PlannedAction?.ArrangementAction?.EventLocation?.LocationDateTime?.DateTimeType
        //                     },
        //                     "LocationStatus": {
        //                         "StatusReason": check response?.PlannedAction?.ArrangementAction?.EventLocation?.LocationStatus?.StatusReason,
        //                         "StatusDateTime": {
        //                             "DateTimeContent": check response?.PlannedAction?.ArrangementAction?.EventLocation?.LocationStatus?.StatusDateTime?.DateTimeContent,
        //                             "TimeZoneCode": check response?.PlannedAction?.ArrangementAction?.EventLocation?.LocationStatus?.StatusDateTime?.TimeZoneCode,
        //                             "DaylightSavingIndicator": check response?.PlannedAction?.ArrangementAction?.EventLocation?.LocationStatus?.StatusDateTime?.DaylightSavingIndicator,
        //                             "DateTimeType": check response?.PlannedAction?.ArrangementAction?.EventLocation?.LocationStatus?.StatusDateTime?.DateTimeType
        //                         },
        //                         "StatusValidityPeriod": {
        //                             "FromDateTime": {
        //                                 "DateTimeContent": check response?.PlannedAction?.ArrangementAction?.EventLocation?.LocationStatus?.StatusValidityPeriod?.FromDateTime?.DateTimeContent,
        //                                 "TimeZoneCode": check response?.PlannedAction?.ArrangementAction?.EventLocation?.LocationStatus?.StatusValidityPeriod?.FromDateTime?.TimeZoneCode,
        //                                 "DaylightSavingIndicator": check response?.PlannedAction?.ArrangementAction?.EventLocation?.LocationStatus?.StatusValidityPeriod?.FromDateTime?.DaylightSavingIndicator,
        //                                 "DateTimeType": check response?.PlannedAction?.ArrangementAction?.EventLocation?.LocationStatus?.StatusValidityPeriod?.FromDateTime?.DateTimeType
        //                             },
        //                             "ToDateTime": {
        //                                 "DateTimeContent": check response?.PlannedAction?.ArrangementAction?.EventLocation?.LocationStatus?.StatusValidityPeriod?.ToDateTime?.DateTimeContent,
        //                                 "TimeZoneCode": check response?.PlannedAction?.ArrangementAction?.EventLocation?.LocationStatus?.StatusValidityPeriod?.ToDateTime?.TimeZoneCode,
        //                                 "DaylightSavingIndicator": check response?.PlannedAction?.ArrangementAction?.EventLocation?.LocationStatus?.StatusValidityPeriod?.ToDateTime?.DaylightSavingIndicator,
        //                                 "DateTimeType": check response?.PlannedAction?.ArrangementAction?.EventLocation?.LocationStatus?.StatusValidityPeriod?.ToDateTime?.DateTimeType
        //                             }
        //                         },
        //                         "StatusInvolvedPartyReference": {
        //                             "PartyReference": check response?.PlannedAction?.ArrangementAction?.EventLocation?.LocationStatus?.StatusInvolvedPartyReference?.PartyReference,
        //                             "InvolvementReference": check response?.PlannedAction?.ArrangementAction?.EventLocation?.LocationStatus?.StatusInvolvedPartyReference?.InvolvementReference
        //                         }
        //                     },
        //                     "LocationType": check response?.PlannedAction?.ArrangementAction?.EventLocation?.LocationType,
        //                     "LocationZoningType": check response?.PlannedAction?.ArrangementAction?.EventLocation?.LocationZoningType,
        //                     "LocationNeighborhoodType": check response?.PlannedAction?.ArrangementAction?.EventLocation?.LocationNeighborhoodType,
        //                     "LocationConstructionType": check response?.PlannedAction?.ArrangementAction?.EventLocation?.LocationConstructionType,
        //                     "LocationOccupancyType": check response?.PlannedAction?.ArrangementAction?.EventLocation?.LocationOccupancyType,
        //                     "LocationValue": check response?.PlannedAction?.ArrangementAction?.EventLocation?.LocationValue,
        //                     "LocationCapacity": check response?.PlannedAction?.ArrangementAction?.EventLocation?.LocationCapacity,
        //                     "LocationIdentification": {
        //                         "IdentifierValue": check response?.PlannedAction?.ArrangementAction?.EventLocation?.LocationIdentification?.IdentifierValue,
        //                         "IdentifierIssuerReference": {
        //                             "PartyReference": check response?.PlannedAction?.ArrangementAction?.EventLocation?.LocationIdentification?.IdentifierIssuerReference?.PartyReference,
        //                             "InvolvementReference": check response?.PlannedAction?.ArrangementAction?.EventLocation?.LocationIdentification?.IdentifierIssuerReference?.InvolvementReference
        //                         },
        //                         "IdentifierStartDate": {
        //                             "DateTimeContent": check response?.PlannedAction?.ArrangementAction?.EventLocation?.LocationIdentification?.IdentifierStartDate?.DateTimeContent,
        //                             "TimeZoneCode": check response?.PlannedAction?.ArrangementAction?.EventLocation?.LocationIdentification?.IdentifierStartDate?.TimeZoneCode,
        //                             "DaylightSavingIndicator": check response?.PlannedAction?.ArrangementAction?.EventLocation?.LocationIdentification?.IdentifierStartDate?.DaylightSavingIndicator,
        //                             "DateTimeType": check response?.PlannedAction?.ArrangementAction?.EventLocation?.LocationIdentification?.IdentifierStartDate?.DateTimeType
        //                         },
        //                         "IdentifierEndDate": {
        //                             "DateTimeContent": check response?.PlannedAction?.ArrangementAction?.EventLocation?.LocationIdentification?.IdentifierEndDate?.DateTimeContent,
        //                             "TimeZoneCode": check response?.PlannedAction?.ArrangementAction?.EventLocation?.LocationIdentification?.IdentifierEndDate?.TimeZoneCode,
        //                             "DaylightSavingIndicator": check response?.PlannedAction?.ArrangementAction?.EventLocation?.LocationIdentification?.IdentifierEndDate?.DaylightSavingIndicator,
        //                             "DateTimeType": check response?.PlannedAction?.ArrangementAction?.EventLocation?.LocationIdentification?.IdentifierEndDate?.DateTimeType
        //                         }
        //                     },
        //                     "LocationAddress": check response?.PlannedAction?.ArrangementAction?.EventLocation?.LocationAddress,
        //                     "LocationName": {
        //                         "Name": check response?.PlannedAction?.ArrangementAction?.EventLocation?.LocationName?.Name
        //                     },
        //                     "LocationTimeZone": check response?.PlannedAction?.ArrangementAction?.EventLocation?.LocationTimeZone
        //                 },
        //                 "EventValue": check response?.PlannedAction?.ArrangementAction?.EventValue,
        //                 "EventValidityPeriod": {
        //                     "FromDateTime": {
        //                         "DateTimeContent": check response?.PlannedAction?.ArrangementAction?.EventValidityPeriod?.FromDateTime?.DateTimeContent,
        //                         "TimeZoneCode": check response?.PlannedAction?.ArrangementAction?.EventValidityPeriod?.FromDateTime?.TimeZoneCode,
        //                         "DaylightSavingIndicator": check response?.PlannedAction?.ArrangementAction?.EventValidityPeriod?.FromDateTime?.DaylightSavingIndicator,
        //                         "DateTimeType": check response?.PlannedAction?.ArrangementAction?.EventValidityPeriod?.FromDateTime?.DateTimeType
        //                     },
        //                     "ToDateTime": {
        //                         "DateTimeContent": check response?.PlannedAction?.ArrangementAction?.EventValidityPeriod?.ToDateTime?.DateTimeContent,
        //                         "TimeZoneCode": check response?.PlannedAction?.ArrangementAction?.EventValidityPeriod?.ToDateTime?.TimeZoneCode,
        //                         "DaylightSavingIndicator": check response?.PlannedAction?.ArrangementAction?.EventValidityPeriod?.ToDateTime?.DaylightSavingIndicator,
        //                         "DateTimeType": check response?.PlannedAction?.ArrangementAction?.EventValidityPeriod?.ToDateTime?.DateTimeType
        //                     }
        //                 },
        //                 "EventIdentification": {
        //                     "IdentifierValue": check response?.PlannedAction?.ArrangementAction?.EventIdentification?.IdentifierValue,
        //                     "IdentifierIssuerReference": {
        //                         "PartyReference": check response?.PlannedAction?.ArrangementAction?.EventIdentification?.IdentifierIssuerReference?.PartyReference,
        //                         "InvolvementReference": check response?.PlannedAction?.ArrangementAction?.EventIdentification?.IdentifierIssuerReference?.InvolvementReference
        //                     },
        //                     "IdentifierStartDate": {
        //                         "DateTimeContent": check response?.PlannedAction?.ArrangementAction?.EventIdentification?.IdentifierStartDate?.DateTimeContent,
        //                         "TimeZoneCode": check response?.PlannedAction?.ArrangementAction?.EventIdentification?.IdentifierStartDate?.TimeZoneCode,
        //                         "DaylightSavingIndicator": check response?.PlannedAction?.ArrangementAction?.EventIdentification?.IdentifierStartDate?.DaylightSavingIndicator,
        //                         "DateTimeType": check response?.PlannedAction?.ArrangementAction?.EventIdentification?.IdentifierStartDate?.DateTimeType
        //                     },
        //                     "IdentifierEndDate": {
        //                         "DateTimeContent": check response?.PlannedAction?.ArrangementAction?.EventIdentification?.IdentifierEndDate?.DateTimeContent,
        //                         "TimeZoneCode": check response?.PlannedAction?.ArrangementAction?.EventIdentification?.IdentifierEndDate?.TimeZoneCode,
        //                         "DaylightSavingIndicator": check response?.PlannedAction?.ArrangementAction?.EventIdentification?.IdentifierEndDate?.DaylightSavingIndicator,
        //                         "DateTimeType": check response?.PlannedAction?.ArrangementAction?.EventIdentification?.IdentifierEndDate?.DateTimeType
        //                     }
        //                 },
        //                 "EventStatus": {
        //                     "StatusReason": check response?.PlannedAction?.ArrangementAction?.EventStatus?.StatusReason,
        //                     "StatusDateTime": {
        //                         "DateTimeContent": check response?.PlannedAction?.ArrangementAction?.EventStatus?.StatusDateTime?.DateTimeContent,
        //                         "TimeZoneCode": check response?.PlannedAction?.ArrangementAction?.EventStatus?.StatusDateTime?.TimeZoneCode,
        //                         "DaylightSavingIndicator": check response?.PlannedAction?.ArrangementAction?.EventStatus?.StatusDateTime?.DaylightSavingIndicator,
        //                         "DateTimeType": check response?.PlannedAction?.ArrangementAction?.EventStatus?.StatusDateTime?.DateTimeType
        //                     },
        //                     "StatusValidityPeriod": {
        //                         "FromDateTime": {
        //                             "DateTimeContent": check response?.PlannedAction?.ArrangementAction?.EventStatus?.StatusValidityPeriod?.FromDateTime?.DateTimeContent,
        //                             "TimeZoneCode": check response?.PlannedAction?.ArrangementAction?.EventStatus?.StatusValidityPeriod?.FromDateTime?.TimeZoneCode,
        //                             "DaylightSavingIndicator": check response?.PlannedAction?.ArrangementAction?.EventStatus?.StatusValidityPeriod?.FromDateTime?.DaylightSavingIndicator,
        //                             "DateTimeType": check response?.PlannedAction?.ArrangementAction?.EventStatus?.StatusValidityPeriod?.FromDateTime?.DateTimeType
        //                         },
        //                         "ToDateTime": {
        //                             "DateTimeContent": check response?.PlannedAction?.ArrangementAction?.EventStatus?.StatusValidityPeriod?.ToDateTime?.DateTimeContent,
        //                             "TimeZoneCode": check response?.PlannedAction?.ArrangementAction?.EventStatus?.StatusValidityPeriod?.ToDateTime?.TimeZoneCode,
        //                             "DaylightSavingIndicator": check response?.PlannedAction?.ArrangementAction?.EventStatus?.StatusValidityPeriod?.ToDateTime?.DaylightSavingIndicator,
        //                             "DateTimeType": check response?.PlannedAction?.ArrangementAction?.EventStatus?.StatusValidityPeriod?.ToDateTime?.DateTimeType
        //                         }
        //                     },
        //                     "StatusInvolvedPartyReference": {
        //                         "PartyReference": check response?.PlannedAction?.ArrangementAction?.EventStatus?.StatusInvolvedPartyReference?.PartyReference,
        //                         "InvolvementReference": check response?.PlannedAction?.ArrangementAction?.EventStatus?.StatusInvolvedPartyReference?.InvolvementReference
        //                     }
        //                 }
        //             },
        //             "ArrangementStartDate": {
        //                 "DateTimeContent": check response?.PlannedAction?.ArrangementStartDate?.DateTimeContent,
        //                 "TimeZoneCode": check response?.PlannedAction?.ArrangementStartDate?.TimeZoneCode,
        //                 "DaylightSavingIndicator": check response?.PlannedAction?.ArrangementStartDate?.DaylightSavingIndicator,
        //                 "DateTimeType": check response?.PlannedAction?.ArrangementStartDate?.DateTimeType
        //             },
        //             "ArrangementEndDate": {
        //                 "DateTimeContent": check response?.PlannedAction?.ArrangementEndDate?.DateTimeContent,
        //                 "TimeZoneCode": check response?.PlannedAction?.ArrangementEndDate?.TimeZoneCode,
        //                 "DaylightSavingIndicator": check response?.PlannedAction?.ArrangementEndDate?.DaylightSavingIndicator,
        //                 "DateTimeType": check response?.PlannedAction?.ArrangementEndDate?.DateTimeType
        //             },
        //             "ArrangementStatus": {
        //                 "ArrangementStatus": {
        //                     "StatusReason": check response?.PlannedAction?.StatusReason,
        //                     "StatusDateTime": {
        //                         "DateTimeContent": check response?.PlannedAction?.StatusDateTime?.DateTimeContent,
        //                         "TimeZoneCode": check response?.PlannedAction?.StatusDateTime?.TimeZoneCode,
        //                         "DaylightSavingIndicator": check response?.PlannedAction?.StatusDateTime?.DaylightSavingIndicator,
        //                         "DateTimeType": check response?.PlannedAction?.StatusDateTime?.DateTimeType
        //                     },
        //                     "StatusValidityPeriod": {
        //                         "FromDateTime": {
        //                             "DateTimeContent": check response?.PlannedAction?.StatusValidityPeriod?.FromDateTime?.DateTimeContent,
        //                             "TimeZoneCode": check response?.PlannedAction?.StatusValidityPeriod?.FromDateTime?.TimeZoneCode,
        //                             "DaylightSavingIndicator": check response?.PlannedAction?.StatusValidityPeriod?.FromDateTime?.DaylightSavingIndicator,
        //                             "DateTimeType": check response?.PlannedAction?.StatusValidityPeriod?.FromDateTime?.DateTimeType
        //                         },
        //                         "ToDateTime": {
        //                             "DateTimeContent": check response?.PlannedAction?.StatusValidityPeriod?.ToDateTime?.DateTimeContent,
        //                             "TimeZoneCode": check response?.PlannedAction?.StatusValidityPeriod?.ToDateTime?.TimeZoneCode,
        //                             "DaylightSavingIndicator": check response?.PlannedAction?.StatusValidityPeriod?.ToDateTime?.DaylightSavingIndicator,
        //                             "DateTimeType": check response?.PlannedAction?.StatusValidityPeriod?.ToDateTime?.DateTimeType
        //                         }
        //                     },
        //                     "StatusInvolvedPartyReference": {
        //                         "PartyReference": check response?.PlannedAction?.StatusInvolvedPartyReference?.PartyReference,
        //                         "InvolvementReference": check response?.PlannedAction?.StatusInvolvedPartyReference?.InvolvementReference
        //                     }
        //                 },
        //                 "ArrangementStatusType": check response?.ArrangementStatusType
        //             },
        //             "ArrangementSubjectMatter": {
        //                 "Subject": check response?.ArrangementSubjectMatter?.Subject
        //             },
        //             "Arrangementtype": check response?.Arrangementtype,
        //             "ArrangementIdentification": {
        //                 "IdentifierValue": check response?.ArrangementIdentification?.IdentifierValue,
        //                 "IdentifierIssuerReference": {
        //                     "PartyReference": check response?.ArrangementIdentification?.IdentifierIssuerReference?.PartyReference,
        //                     "InvolvementReference": check response?.ArrangementIdentification?.IdentifierIssuerReference?.InvolvementReference
        //                 },
        //                 "IdentifierStartDate": {
        //                     "DateTimeContent": check response?.ArrangementIdentification?.IdentifierStartDate?.DateTimeContent,
        //                     "TimeZoneCode": check response?.ArrangementIdentification?.IdentifierStartDate?.TimeZoneCode,
        //                     "DaylightSavingIndicator": check response?.ArrangementIdentification?.IdentifierStartDate?.DaylightSavingIndicator,
        //                     "DateTimeType": check response?.ArrangementIdentification?.IdentifierStartDate?.DateTimeType
        //                 },
        //                 "IdentifierEndDate": {
        //                     "DateTimeContent": check response?.ArrangementIdentification?.IdentifierEndDate?.DateTimeContent,
        //                     "TimeZoneCode": check response?.ArrangementIdentification?.IdentifierEndDate?.TimeZoneCode,
        //                     "DaylightSavingIndicator": check response?.ArrangementIdentification?.IdentifierEndDate?.DaylightSavingIndicator,
        //                     "DateTimeType": check response?.ArrangementIdentification?.IdentifierEndDate?.DateTimeType
        //                 }
        //             }
        //         },
        //         "PlanType": check response?.PlanType,
        //         "PlanValidityPeriod": {
        //             "FromDateTime": {
        //                 "DateTimeContent": check response?.PlanValidityPeriod?.FromDateTime?.DateTimeContent,
        //                 "TimeZoneCode": check response?.PlanValidityPeriod?.FromDateTime?.TimeZoneCode,
        //                 "DaylightSavingIndicator": check response?.PlanValidityPeriod?.FromDateTime?.DaylightSavingIndicator,
        //                 "DateTimeType": check response?.PlanValidityPeriod?.FromDateTime?.DateTimeType
        //             },
        //             "ToDateTime": {
        //                 "DateTimeContent": check response?.PlanValidityPeriod?.ToDateTime?.DateTimeContent,
        //                 "TimeZoneCode": check response?.PlanValidityPeriod?.ToDateTime?.TimeZoneCode,
        //                 "DaylightSavingIndicator": check response?.PlanValidityPeriod?.ToDateTime?.DaylightSavingIndicator,
        //                 "DateTimeType": check response?.PlanValidityPeriod?.ToDateTime?.DateTimeType
        //             }
        //         },
        //         "PlanDescription": check response?.PlanDescription,
        //         "AgreementSignedDate": {
        //             "DateContent": check response?.AgreementSignedDate?.DateContent
        //         },
        //         "AgreementType": check response?.AgreementType,
        //         "AgreementValidityPeriod": {
        //             "FromDateTime": {
        //                 "DateTimeContent": check response?.AgreementValidityPeriod?.FromDateTime?.DateTimeContent,
        //                 "TimeZoneCode": check response?.AgreementValidityPeriod?.FromDateTime?.TimeZoneCode,
        //                 "DaylightSavingIndicator": check response?.AgreementValidityPeriod?.FromDateTime?.DaylightSavingIndicator,
        //                 "DateTimeType": check response?.AgreementValidityPeriod?.FromDateTime?.DateTimeType
        //             },
        //             "ToDateTime": {
        //                 "DateTimeContent": check response?.AgreementValidityPeriod?.ToDateTime?.DateTimeContent,
        //                 "TimeZoneCode": check response?.AgreementValidityPeriod?.ToDateTime?.TimeZoneCode,
        //                 "DaylightSavingIndicator": check response?.AgreementValidityPeriod?.ToDateTime?.DaylightSavingIndicator,
        //                 "DateTimeType": check response?.AgreementValidityPeriod?.ToDateTime?.DateTimeType
        //             }
        //         },
        //         "AgreementVersion": check response?.AgreementVersion,
        //         "AgreementStatus": {
        //             "AgreementStatus": {
        //                 "StatusReason": check response?.AgreementStatus?.AgreementStatus?.StatusReason,
        //                 "StatusDateTime": {
        //                     "DateTimeContent": check response?.AgreementStatus?.AgreementStatus?.StatusDateTime?.DateTimeContent,
        //                     "TimeZoneCode": check response?.AgreementStatus?.AgreementStatus?.StatusDateTime?.TimeZoneCode,
        //                     "DaylightSavingIndicator": check response?.AgreementStatus?.AgreementStatus?.StatusDateTime?.DaylightSavingIndicator,
        //                     "DateTimeType": check response?.AgreementStatus?.AgreementStatus?.StatusDateTime?.DateTimeType
        //                 },
        //                 "StatusValidityPeriod": {
        //                     "FromDateTime": {
        //                         "DateTimeContent": check response?.AgreementStatus?.AgreementStatus?.StatusValidityPeriod?.FromDateTime?.DateTimeContent,
        //                         "TimeZoneCode": check response?.AgreementStatus?.AgreementStatus?.StatusValidityPeriod?.FromDateTime?.TimeZoneCode,
        //                         "DaylightSavingIndicator": check response?.AgreementStatus?.AgreementStatus?.StatusValidityPeriod?.FromDateTime?.DaylightSavingIndicator,
        //                         "DateTimeType": check response?.AgreementStatus?.AgreementStatus?.StatusValidityPeriod?.FromDateTime?.DateTimeType
        //                     },
        //                     "ToDateTime": {
        //                         "DateTimeContent": check response?.AgreementStatus?.AgreementStatus?.StatusValidityPeriod?.ToDateTime?.DateTimeContent,
        //                         "TimeZoneCode": check response?.AgreementStatus?.AgreementStatus?.StatusValidityPeriod?.ToDateTime?.TimeZoneCode,
        //                         "DaylightSavingIndicator": check response?.AgreementStatus?.AgreementStatus?.StatusValidityPeriod?.ToDateTime?.DaylightSavingIndicator,
        //                         "DateTimeType": check response?.AgreementStatus?.AgreementStatus?.StatusValidityPeriod?.ToDateTime?.DateTimeType
        //                     }
        //                 },
        //                 "StatusInvolvedPartyReference": {
        //                     "PartyReference": check response?.AgreementStatus?.AgreementStatus?.StatusInvolvedPartyReference?.PartyReference,
        //                     "InvolvementReference": check response?.AgreementStatus?.AgreementStatus?.StatusInvolvedPartyReference?.InvolvementReference
        //                 }
        //             },
        //             "AgreementStatusType": check response?.AgreementStatus?.AgreementStatusType
        //         },
        //         "AgreementSubjectMatter": check response?.AgreementSubjectMatter,
        //         "AgreementIdentification": {
        //             "IdentifierValue": check response?.AgreementIdentification?.IdentifierValue,
        //             "IdentifierIssuerReference": {
        //                 "PartyReference": check response?.AgreementIdentification?.IdentifierIssuerReference?.PartyReference,
        //                 "InvolvementReference": check response?.AgreementIdentification?.IdentifierIssuerReference?.InvolvementReference
        //             },
        //             "IdentifierStartDate": {
        //                 "DateTimeContent": check response?.AgreementIdentification?.IdentifierStartDate?.DateTimeContent,
        //                 "TimeZoneCode": check response?.AgreementIdentification?.IdentifierStartDate?.TimeZoneCode,
        //                 "DaylightSavingIndicator": check response?.AgreementIdentification?.IdentifierStartDate?.DaylightSavingIndicator,
        //                 "DateTimeType": check response?.AgreementIdentification?.IdentifierStartDate?.DateTimeType
        //             },
        //             "IdentifierEndDate": {
        //                 "DateTimeContent": check response?.AgreementIdentification?.IdentifierEndDate?.DateTimeContent,
        //                 "TimeZoneCode": check response?.AgreementIdentification?.IdentifierEndDate?.TimeZoneCode,
        //                 "DaylightSavingIndicator": check response?.AgreementIdentification?.IdentifierEndDate?.DaylightSavingIndicator,
        //                 "DateTimeType": check response?.AgreementIdentification?.IdentifierEndDate?.DateTimeType
        //             }
        //         },
        //         "AgreementDate": {
        //             "DateTimeContent": check response?.AgreementDate?.DateTimeContent,
        //             "TimeZoneCode": check response?.AgreementDate?.TimeZoneCode,
        //             "DaylightSavingIndicator": check response?.AgreementDate?.DaylightSavingIndicator,
        //             "DateTimeType": check response?.AgreementDate?.DateTimeType
        //         },
        //         "AgreementDescription": check response?.AgreementDescription
            }
        },
        "FeeRate": {
            "RateValue": check response?.FeeRate?.RateValue,
            "RateUnit": check response?.FeeRate?.RateUnit,
            "RatePeriod": {
                "FromDateTime": {
                    "DateTimeContent": check response?.FeeRate?.RatePeriod?.FromDateTime?.DateTimeContent,
                    "TimeZoneCode": check response?.FeeRate?.RatePeriod?.FromDateTime?.TimeZoneCode,
                    "DaylightSavingIndicator": check response?.FeeRate?.RatePeriod?.FromDateTime?.DaylightSavingIndicator,
                    "DateTimeType": check response?.FeeRate?.RatePeriod?.FromDateTime?.DateTimeType
                },
                "ToDateTime": {
                    "DateTimeContent": check response?.FeeRate?.RatePeriod?.ToDateTime?.DateTimeContent,
                    "TimeZoneCode": check response?.FeeRate?.RatePeriod?.ToDateTime?.TimeZoneCode,
                    "DaylightSavingIndicator": check response?.FeeRate?.RatePeriod?.ToDateTime?.DaylightSavingIndicator,
                    "DateTimeType": check response?.FeeRate?.RatePeriod?.ToDateTime?.DateTimeType
                }
            },
            "RateCapitalUnit": check response?.FeeRate?.RateCapitalUnit
        },
        "FeeEffectivePeriod": {
            "FromDateTime": {
                "DateTimeContent": check response?.FeeEffectivePeriod?.FromDateTime?.DateTimeContent,
                "TimeZoneCode": check response?.FeeEffectivePeriod?.FromDateTime?.TimeZoneCode,
                "DaylightSavingIndicator": check response?.FeeEffectivePeriod?.FromDateTime?.DaylightSavingIndicator,
                "DateTimeType": check response?.FeeEffectivePeriod?.FromDateTime?.DateTimeType
            },
            "ToDateTime": {
                "DateTimeContent": check response?.FeeEffectivePeriod?.ToDateTime?.DateTimeContent,
                "TimeZoneCode": check response?.FeeEffectivePeriod?.ToDateTime?.TimeZoneCode,
                "DaylightSavingIndicator": check response?.FeeEffectivePeriod?.ToDateTime?.DaylightSavingIndicator,
                "DateTimeType": check response?.FeeEffectivePeriod?.ToDateTime?.DateTimeType
            }
        },
        "FeeDueDate": {
            "DateTimeContent": check response?.FeeDueDate?.DateTimeContent,
            "TimeZoneCode": check response?.FeeDueDate?.TimeZoneCode,
            "DaylightSavingIndicator": check response?.FeeDueDate?.DaylightSavingIndicator,
            "DateTimeType": check response?.FeeDueDate?.DateTimeType
        },
        "FeeCreditDebitIndicator": check response?.FeeCreditDebitIndicator,
        "FeeReason": check response?.FeeReason,
        "FeeDirection": check response?.FeeDirection,
        "FeeBearerType": check response?.FeeBearerType,
        "FeeChargingFrequency": {
            "FrequencyCode": check response?.FeeChargingFrequency?.FrequencyCode,
            "FrequencyName": {
                "Name": check response?.FeeChargingFrequency?.FrequencyName?.Name
            },
            "FrequencyDefinition": check response?.FeeChargingFrequency?.FrequencyDefinition
        },
        "FeePaymentMethodType": check response?.FeePaymentMethodType,
        "LoanOriginationDate": {
            "DateContent": check response?.LoanOriginationDate?.DateContent
        },
        "LoanMaturityDate": {
            "DateContent": check response?.LoanMaturityDate?.DateContent
        },
        "LoanEndDate": {
            "DateContent": check response?.LoanEndDate?.DateContent
        },
        "LoanAmount": {
            "AmountValue": check response?.LoanAmount?.AmountValue,
            "AmountCurrency": {
                "Currencycode": check response?.LoanAmount?.AmountCurrency?.Currencycode
            },
            "DecimalPointPosition": check response?.LoanAmount?.DecimalPointPosition,
            "AmountType": check response?.LoanAmount?.AmountType
        },
        "LoanArrangementType": check response?.LoanArrangementType,
        "ArrangementAction": {
            "ActionType": check response?.ArrangementAction?.ActionType,
            "EventType": check response?.ArrangementAction?.EventType,
            "EventDateTime": {
                "DateTimeContent": check response?.ArrangementAction?.EventDateTime?.DateTimeContent,
                "TimeZoneCode": check response?.ArrangementAction?.EventDateTime?.TimeZoneCode,
                "DaylightSavingIndicator": check response?.ArrangementAction?.EventDateTime?.DaylightSavingIndicator,
                "DateTimeType": check response?.ArrangementAction?.EventDateTime?.DateTimeType
            },
            "EventDescription": check response?.ArrangementAction?.EventDescription,
            "EventSource": check response?.ArrangementAction?.EventSource,
            "EventLocation": {
                "LocationDescription": check response?.ArrangementAction?.EventLocation?.LocationDescription,
                "LocationDateTime": {
                    "DateTimeContent": check response?.ArrangementAction?.EventLocation?.LocationDateTime?.DateTimeContent,
                    "TimeZoneCode": check response?.ArrangementAction?.EventLocation?.LocationDateTime?.TimeZoneCode,
                    "DaylightSavingIndicator": check response?.ArrangementAction?.EventLocation?.LocationDateTime?.DaylightSavingIndicator,
                    "DateTimeType": check response?.ArrangementAction?.EventLocation?.LocationDateTime?.DateTimeType
                },
                "LocationStatus": {
                    "StatusReason": check response?.ArrangementAction?.EventLocation?.LocationStatus?.StatusReason,
                    "StatusDateTime": {
                        "DateTimeContent": check response?.ArrangementAction?.EventLocation?.LocationStatus?.StatusDateTime?.DateTimeContent,
                        "TimeZoneCode": check response?.ArrangementAction?.EventLocation?.LocationStatus?.StatusDateTime?.TimeZoneCode,
                        "DaylightSavingIndicator": check response?.ArrangementAction?.EventLocation?.LocationStatus?.StatusDateTime?.DaylightSavingIndicator,
                        "DateTimeType": check response?.ArrangementAction?.EventLocation?.LocationStatus?.StatusDateTime?.DateTimeType
                    },
                    "StatusValidityPeriod": {
                        "FromDateTime": {
                            "DateTimeContent": check response?.ArrangementAction?.EventLocation?.LocationStatus?.StatusValidityPeriod?.FromDateTime?.DateTimeContent,
                            "TimeZoneCode": check response?.ArrangementAction?.EventLocation?.LocationStatus?.StatusValidityPeriod?.FromDateTime?.TimeZoneCode,
                            "DaylightSavingIndicator": check response?.ArrangementAction?.EventLocation?.LocationStatus?.StatusValidityPeriod?.FromDateTime?.DaylightSavingIndicator,
                            "DateTimeType": check response?.ArrangementAction?.EventLocation?.LocationStatus?.StatusValidityPeriod?.FromDateTime?.DateTimeType
                        },
                        "ToDateTime": {
                            "DateTimeContent": check response?.ArrangementAction?.EventLocation?.LocationStatus?.StatusValidityPeriod?.ToDateTime?.DateTimeContent,
                            "TimeZoneCode": check response?.ArrangementAction?.EventLocation?.LocationStatus?.StatusValidityPeriod?.ToDateTime?.TimeZoneCode,
                            "DaylightSavingIndicator": check response?.ArrangementAction?.EventLocation?.LocationStatus?.StatusValidityPeriod?.ToDateTime?.DaylightSavingIndicator,
                            "DateTimeType": check response?.ArrangementAction?.EventLocation?.LocationStatus?.StatusValidityPeriod?.ToDateTime?.DateTimeType
                        }
                    },
                    "StatusInvolvedPartyReference": {
                        "PartyReference": check response?.ArrangementAction?.EventLocation?.LocationStatus?.StatusInvolvedPartyReference?.PartyReference,
                        "InvolvementReference": check response?.ArrangementAction?.EventLocation?.LocationStatus?.StatusInvolvedPartyReference?.InvolvementReference
                    }
                },
                "LocationType": check response?.ArrangementAction?.EventLocation?.LocationType,
                "LocationZoningType": check response?.ArrangementAction?.EventLocation?.LocationZoningType,
                "LocationNeighborhoodType": check response?.ArrangementAction?.EventLocation?.LocationNeighborhoodType,
                "LocationConstructionType": check response?.ArrangementAction?.EventLocation?.LocationConstructionType,
                "LocationOccupancyType": check response?.ArrangementAction?.EventLocation?.LocationOccupancyType,
                "LocationValue": check response?.ArrangementAction?.EventLocation?.LocationValue,
                "LocationCapacity": check response?.ArrangementAction?.EventLocation?.LocationCapacity,
                "LocationIdentification": {
                    "IdentifierValue": check response?.ArrangementAction?.EventLocation?.LocationIdentification?.IdentifierValue,
                    "IdentifierIssuerReference": {
                        "PartyReference": check response?.ArrangementAction?.EventLocation?.LocationIdentification?.IdentifierIssuerReference?.PartyReference,
                        "InvolvementReference": check response?.ArrangementAction?.EventLocation?.LocationIdentification?.IdentifierIssuerReference?.InvolvementReference
                    },
                    "IdentifierStartDate": {
                        "DateTimeContent": check response?.ArrangementAction?.EventLocation?.LocationIdentification?.IdentifierStartDate?.DateTimeContent,
                        "TimeZoneCode": check response?.ArrangementAction?.EventLocation?.LocationIdentification?.IdentifierStartDate?.TimeZoneCode,
                        "DaylightSavingIndicator": check response?.ArrangementAction?.EventLocation?.LocationIdentification?.IdentifierStartDate?.DaylightSavingIndicator,
                        "DateTimeType": check response?.ArrangementAction?.EventLocation?.LocationIdentification?.IdentifierStartDate?.DateTimeType
                    },
                    "IdentifierEndDate": {
                        "DateTimeContent": check response?.ArrangementAction?.EventLocation?.LocationIdentification?.IdentifierEndDate?.DateTimeContent,
                        "TimeZoneCode": check response?.ArrangementAction?.EventLocation?.LocationIdentification?.IdentifierEndDate?.TimeZoneCode,
                        "DaylightSavingIndicator": check response?.ArrangementAction?.EventLocation?.LocationIdentification?.IdentifierEndDate?.DaylightSavingIndicator,
                        "DateTimeType": check response?.ArrangementAction?.EventLocation?.LocationIdentification?.IdentifierEndDate?.DateTimeType
                    }
                },
                "LocationAddress": check response?.ArrangementAction?.EventLocation?.LocationAddress,
                "LocationName": {
                    "Name": check response?.ArrangementAction?.EventLocation?.LocationName?.Name
                },
                "LocationTimeZone": check response?.ArrangementAction?.EventLocation?.LocationTimeZone
            },
            "EventStatus": {
                "StatusReason": check response?.ArrangementAction?.EventStatus?.StatusReason,
                "StatusDateTime": {
                    "DateTimeContent": check response?.ArrangementAction?.EventStatus?.StatusDateTime?.DateTimeContent,
                    "TimeZoneCode": check response?.ArrangementAction?.EventStatus?.StatusDateTime?.TimeZoneCode,
                    "DaylightSavingIndicator": check response?.ArrangementAction?.EventStatus?.StatusDateTime?.DaylightSavingIndicator,
                    "DateTimeType": check response?.ArrangementAction?.EventStatus?.StatusDateTime?.DateTimeType
                },
                "StatusValidityPeriod": {
                    "FromDateTime": {
                        "DateTimeContent": check response?.ArrangementAction?.EventStatus?.StatusValidityPeriod?.FromDateTime?.DateTimeContent,
                        "TimeZoneCode": check response?.ArrangementAction?.EventStatus?.StatusValidityPeriod?.FromDateTime?.TimeZoneCode,
                        "DaylightSavingIndicator": check response?.ArrangementAction?.EventStatus?.StatusValidityPeriod?.FromDateTime?.DaylightSavingIndicator,
                        "DateTimeType": check response?.ArrangementAction?.EventStatus?.StatusValidityPeriod?.FromDateTime?.DateTimeType
                    },
                    "ToDateTime": {
                        "DateTimeContent": check response?.ArrangementAction?.EventStatus?.StatusValidityPeriod?.ToDateTime?.DateTimeContent,
                        "TimeZoneCode": check response?.ArrangementAction?.EventStatus?.StatusValidityPeriod?.ToDateTime?.TimeZoneCode,
                        "DaylightSavingIndicator": check response?.ArrangementAction?.EventStatus?.StatusValidityPeriod?.ToDateTime?.DaylightSavingIndicator,
                        "DateTimeType": check response?.ArrangementAction?.EventStatus?.StatusValidityPeriod?.ToDateTime?.DateTimeType
                    }
                },
                "StatusInvolvedPartyReference": {
                    "PartyReference": check response?.ArrangementAction?.EventStatus?.StatusInvolvedPartyReference?.PartyReference,
                    "InvolvementReference": check response?.ArrangementAction?.EventStatus?.StatusInvolvedPartyReference?.InvolvementReference
                }
            },
            "EventValue": check response?.ArrangementAction?.EventValue,
            "EventValidityPeriod": {
                "FromDateTime": {
                    "DateTimeContent": check response?.ArrangementAction?.EventValidityPeriod?.FromDateTime?.DateTimeContent,
                    "TimeZoneCode": check response?.ArrangementAction?.EventValidityPeriod?.FromDateTime?.TimeZoneCode,
                    "DaylightSavingIndicator": check response?.ArrangementAction?.EventValidityPeriod?.FromDateTime?.DaylightSavingIndicator,
                    "DateTimeType": check response?.ArrangementAction?.EventValidityPeriod?.FromDateTime?.DateTimeType
                },
                "ToDateTime": {
                    "DateTimeContent": check response?.ArrangementAction?.EventValidityPeriod?.ToDateTime?.DateTimeContent,
                    "TimeZoneCode": check response?.ArrangementAction?.EventValidityPeriod?.ToDateTime?.TimeZoneCode,
                    "DaylightSavingIndicator": check response?.ArrangementAction?.EventValidityPeriod?.ToDateTime?.DaylightSavingIndicator,
                    "DateTimeType": check response?.ArrangementAction?.EventValidityPeriod?.ToDateTime?.DateTimeType
                }
            },
            "EventIdentification": {
                "IdentifierValue": check response?.ArrangementAction?.EventIdentification?.IdentifierValue,
                "IdentifierIssuerReference": {
                    "PartyReference": check response?.ArrangementAction?.EventIdentification?.IdentifierIssuerReference?.PartyReference,
                    "InvolvementReference": check response?.ArrangementAction?.EventIdentification?.IdentifierIssuerReference?.InvolvementReference
                },
                "IdentifierStartDate": {
                    "DateTimeContent": check response?.ArrangementAction?.EventIdentification?.IdentifierStartDate?.DateTimeContent,
                    "TimeZoneCode": check response?.ArrangementAction?.EventIdentification?.IdentifierStartDate?.TimeZoneCode,
                    "DaylightSavingIndicator": check response?.ArrangementAction?.EventIdentification?.IdentifierStartDate?.DaylightSavingIndicator,
                    "DateTimeType": check response?.ArrangementAction?.EventIdentification?.IdentifierStartDate?.DateTimeType
                },
                "IdentifierEndDate": {
                    "DateTimeContent": check response?.ArrangementAction?.EventIdentification?.IdentifierEndDate?.DateTimeContent,
                    "TimeZoneCode": check response?.ArrangementAction?.EventIdentification?.IdentifierEndDate?.TimeZoneCode,
                    "DaylightSavingIndicator": check response?.ArrangementAction?.EventIdentification?.IdentifierEndDate?.DaylightSavingIndicator,
                    "DateTimeType": check response?.ArrangementAction?.EventIdentification?.IdentifierEndDate?.DateTimeType
                }
            }
        },
        "ArrangementStartDate": {
            "DateTimeContent": check response?.ArrangementStartDate?.DateTimeContent,
            "TimeZoneCode": check response?.ArrangementStartDate?.TimeZoneCode,
            "DaylightSavingIndicator": check response?.ArrangementStartDate?.DaylightSavingIndicator,
            "DateTimeType": check response?.ArrangementStartDate?.DateTimeType
        },
        "ArrangementEndDate": {
            "DateTimeContent": check response?.ArrangementEndDate?.DateTimeContent,
            "TimeZoneCode": check response?.ArrangementEndDate?.TimeZoneCode,
            "DaylightSavingIndicator": check response?.ArrangementEndDate?.DaylightSavingIndicator,
            "DateTimeType": check response?.ArrangementEndDate?.DateTimeType
        },
        "ArrangementStatus": {
            "ArrangementStatus": {
                "StatusReason": check response?.StatusReason,
                "StatusDateTime": {
                    "DateTimeContent": check response?.StatusDateTime?.DateTimeContent,
                    "TimeZoneCode": check response?.StatusDateTime?.TimeZoneCode,
                    "DaylightSavingIndicator": check response?.StatusDateTime?.DaylightSavingIndicator,
                    "DateTimeType": check response?.StatusDateTime?.DateTimeType
                },
                "StatusValidityPeriod": {
                    "FromDateTime": {
                        "DateTimeContent": check response?.StatusValidityPeriod?.FromDateTime?.DateTimeContent,
                        "TimeZoneCode": check response?.StatusValidityPeriod?.FromDateTime?.TimeZoneCode,
                        "DaylightSavingIndicator": check response?.StatusValidityPeriod?.FromDateTime?.DaylightSavingIndicator,
                        "DateTimeType": check response?.StatusValidityPeriod?.FromDateTime?.DateTimeType
                    },
                    "ToDateTime": {
                        "DateTimeContent": check response?.StatusValidityPeriod?.ToDateTime?.DateTimeContent,
                        "TimeZoneCode": check response?.StatusValidityPeriod?.ToDateTime?.TimeZoneCode,
                        "DaylightSavingIndicator": check response?.StatusValidityPeriod?.ToDateTime?.DaylightSavingIndicator,
                        "DateTimeType": check response?.StatusValidityPeriod?.ToDateTime?.DateTimeType
                    }
                },
                "StatusInvolvedPartyReference": {
                    "PartyReference": check response?.StatusInvolvedPartyReference?.PartyReference,
                    "InvolvementReference": check response?.StatusInvolvedPartyReference?.InvolvementReference
                }
            },
            "ArrangementStatusType": check response?.ArrangementStatusType
        },
        "ArrangementSubjectMatter": {
            "Subject": check response?.ArrangementSubjectMatter?.Subject
        },
        "Arrangementtype": check response?.Arrangementtype,
        "ArrangementIdentification": {
            "IdentifierValue": check response?.ArrangementIdentification?.IdentifierValue,
            "IdentifierIssuerReference": {
                "PartyReference": check response?.ArrangementIdentification?.IdentifierIssuerReference?.PartyReference,
                "InvolvementReference": check response?.ArrangementIdentification?.IdentifierIssuerReference?.InvolvementReference
            },
            "IdentifierStartDate": {
                "DateTimeContent": check response?.ArrangementIdentification?.IdentifierStartDate?.DateTimeContent,
                "TimeZoneCode": check response?.ArrangementIdentification?.IdentifierStartDate?.TimeZoneCode,
                "DaylightSavingIndicator": check response?.ArrangementIdentification?.IdentifierStartDate?.DaylightSavingIndicator,
                "DateTimeType": check response?.ArrangementIdentification?.IdentifierStartDate?.DateTimeType
            },
            "IdentifierEndDate": {
                "DateTimeContent": check response?.ArrangementIdentification?.IdentifierEndDate?.DateTimeContent,
                "TimeZoneCode": check response?.ArrangementIdentification?.IdentifierEndDate?.TimeZoneCode,
                "DaylightSavingIndicator": check response?.ArrangementIdentification?.IdentifierEndDate?.DaylightSavingIndicator,
                "DateTimeType": check response?.ArrangementIdentification?.IdentifierEndDate?.DateTimeType
            }
        },
        "PaymentCardArrangementIdentifier": {
            "IdentifierValue": check response?.PaymentCardArrangementIdentifier?.IdentifierValue,
            "IdentifierIssuerReference": {
                "PartyReference": check response?.PaymentCardArrangementIdentifier?.IdentifierIssuerReference?.PartyReference,
                "InvolvementReference": check response?.PaymentCardArrangementIdentifier?.IdentifierIssuerReference?.InvolvementReference
            },
            "IdentifierStartDate": {
                "DateTimeContent": check response?.PaymentCardArrangementIdentifier?.IdentifierStartDate?.DateTimeContent,
                "TimeZoneCode": check response?.PaymentCardArrangementIdentifier?.IdentifierStartDate?.TimeZoneCode,
                "DaylightSavingIndicator": check response?.PaymentCardArrangementIdentifier?.IdentifierStartDate?.DaylightSavingIndicator,
                "DateTimeType": check response?.PaymentCardArrangementIdentifier?.IdentifierStartDate?.DateTimeType
            },
            "IdentifierEndDate": {
                "DateTimeContent": check response?.PaymentCardArrangementIdentifier?.IdentifierEndDate?.DateTimeContent,
                "TimeZoneCode": check response?.PaymentCardArrangementIdentifier?.IdentifierEndDate?.TimeZoneCode,
                "DaylightSavingIndicator": check response?.PaymentCardArrangementIdentifier?.IdentifierEndDate?.DaylightSavingIndicator,
                "DateTimeType": check response?.PaymentCardArrangementIdentifier?.IdentifierEndDate?.DateTimeType
            }
        },
        "CardPaymentArrangementType": check response?.CardPaymentArrangementType,
        "FinancialAdvisoryServiceArrangementType": check response?.FinancialAdvisoryServiceArrangementType,
        "SavingsAccountArrangementType": check response?.SavingsAccountArrangementType,
        "SavingsAccountArrangementProductFeatureType": {
            "ProductFeatureTypeValues": check response?.SavingsAccountArrangementProductFeatureType?.ProductFeatureTypeValues
        },
        "CurrentAccountArrangementType": check response?.CurrentAccountArrangementType,
        "CurrentAccountArrangementProductFeatureType": {
            "ProductFeatureTypeValues": check response?.CurrentAccountArrangementProductFeatureType?.ProductFeatureTypeValues
        },
        "ArrangementType": check response?.ArrangementType,
        "TermDepositArrangementType": check response?.TermDepositArrangementType,
        "TermDepositArrangementProductFeatureType": {
            "ProductFeatureTypeValues": check response?.TermDepositArrangementProductFeatureType?.ProductFeatureTypeValues
        },
        "TermDepositMaturityDate": {
            "DateTimeContent": check response?.TermDepositMaturityDate?.DateTimeContent,
            "TimeZoneCode": check response?.TermDepositMaturityDate?.TimeZoneCode,
            "DaylightSavingIndicator": check response?.TermDepositMaturityDate?.DaylightSavingIndicator,
            "DateTimeType": check response?.TermDepositMaturityDate?.DateTimeType
        },
        "TermDepositOpenDate": {
            "DateTimeContent": check response?.TermDepositOpenDate?.DateTimeContent,
            "TimeZoneCode": check response?.TermDepositOpenDate?.TimeZoneCode,
            "DaylightSavingIndicator": check response?.TermDepositOpenDate?.DaylightSavingIndicator,
            "DateTimeType": check response?.TermDepositOpenDate?.DateTimeType
        },
        "TermDepositAmount": {
            "AmountValue": check response?.TermDepositAmount?.AmountValue,
            "AmountCurrency": {
                "Currencycode": check response?.TermDepositAmount?.AmountCurrency?.Currencycode
            },
            "DecimalPointPosition": check response?.TermDepositAmount?.DecimalPointPosition,
            "AmountType": check response?.TermDepositAmount?.AmountType
        },
        "TermDepositDuration": {
            "Duration": check response?.TermDepositDuration?.Duration
        },
        "DepositTerm": check response?.DepositTerm,
        "VirtualAccountArrangementType": check response?.VirtualAccountArrangementType,
        "BankPlanArrangementType": check response?.BankPlanArrangementType,
        "CreditFacilityDataTime": {
            "DateTimeContent": check response?.CreditFacilityDataTime?.DateTimeContent,
            "TimeZoneCode": check response?.CreditFacilityDataTime?.TimeZoneCode,
            "DaylightSavingIndicator": check response?.CreditFacilityDataTime?.DaylightSavingIndicator,
            "DateTimeType": check response?.CreditFacilityDataTime?.DateTimeType
        },
        "CreditFacilityType": check response?.CreditFacilityType,
        "CreditFacilityRateType": check response?.CreditFacilityRateType,
        "CreditFacilityNumber": {
            "IdentifierValue": check response?.CreditFacilityNumber?.IdentifierValue,
            "IdentifierIssuerReference": {
                "PartyReference": check response?.CreditFacilityNumber?.IdentifierIssuerReference?.PartyReference,
                "InvolvementReference": check response?.CreditFacilityNumber?.IdentifierIssuerReference?.InvolvementReference
            },
            "IdentifierStartDate": {
                "DateTimeContent": check response?.CreditFacilityNumber?.IdentifierStartDate?.DateTimeContent,
                "TimeZoneCode": check response?.CreditFacilityNumber?.IdentifierStartDate?.TimeZoneCode,
                "DaylightSavingIndicator": check response?.CreditFacilityNumber?.IdentifierStartDate?.DaylightSavingIndicator,
                "DateTimeType": check response?.CreditFacilityNumber?.IdentifierStartDate?.DateTimeType
            },
            "IdentifierEndDate": {
                "DateTimeContent": check response?.CreditFacilityNumber?.IdentifierEndDate?.DateTimeContent,
                "TimeZoneCode": check response?.CreditFacilityNumber?.IdentifierEndDate?.TimeZoneCode,
                "DaylightSavingIndicator": check response?.CreditFacilityNumber?.IdentifierEndDate?.DaylightSavingIndicator,
                "DateTimeType": check response?.CreditFacilityNumber?.IdentifierEndDate?.DateTimeType
            }
        },
        "CreditFacilityAmount": {
            "AmountValue": check response?.CreditFacilityAmount?.AmountValue,
            "AmountCurrency": {
                "Currencycode": check response?.CreditFacilityAmount?.AmountCurrency?.Currencycode
            },
            "DecimalPointPosition": check response?.CreditFacilityAmount?.DecimalPointPosition,
            "AmountType": check response?.CreditFacilityAmount?.AmountType
        },
         "StandingOrderFrequency": {
            "FrequencyCode": check response?.StandingOrderFrequency?.FrequencyCode,
            "FrequencyName": {
                "Name": check response?.StandingOrderFrequency?.FrequencyName?.Name
            },
            "FrequencyDefinition": check response?.StandingOrderFrequency?.FrequencyDefinition
        },
        "StandingOrderPurpose": check response?.StandingOrderPurpose,
        "StandingOrderAmount": {
            "AmountValue": check response?.StandingOrderAmount?.AmountValue,
            "AmountCurrency": {
                "Currencycode": check response?.StandingOrderAmount?.AmountCurrency?.Currencycode
            },
            "DecimalPointPosition": check response?.StandingOrderAmount?.DecimalPointPosition,
            "AmountType": check response?.StandingOrderAmount?.AmountType
        },
        "StandingOrderCurrency": {
            "Currencycode": check response?.StandingOrderCurrency?.Currencycode
        },
        "StandingOrderTargetAccountOwner": {
            "PartyReference": check response?.StandingOrderTargetAccountOwner?.PartyReference,
            "InvolvementReference": check response?.StandingOrderTargetAccountOwner?.InvolvementReference
        },
        "StandingOrderTargetAccountIdentification": {
            "AccountIdentificationType": check response?.StandingOrderTargetAccountIdentification?.AccountIdentificationType,
            "AccountIdentification": {
                "IdentifierValue": check response?.StandingOrderTargetAccountIdentification?.AccountIdentification?.IdentifierValue,
                "IdentifierIssuerReference": {
                    "PartyReference": check response?.StandingOrderTargetAccountIdentification?.AccountIdentification?.IdentifierIssuerReference?.PartyReference,
                    "InvolvementReference": check response?.StandingOrderTargetAccountIdentification?.AccountIdentification?.IdentifierIssuerReference?.InvolvementReference
                },
                "IdentifierStartDate": {
                    "DateTimeContent": check response?.StandingOrderTargetAccountIdentification?.AccountIdentification?.IdentifierStartDate?.DateTimeContent,
                    "TimeZoneCode": check response?.StandingOrderTargetAccountIdentification?.AccountIdentification?.IdentifierStartDate?.TimeZoneCode,
                    "DaylightSavingIndicator": check response?.StandingOrderTargetAccountIdentification?.AccountIdentification?.IdentifierStartDate?.DaylightSavingIndicator,
                    "DateTimeType": check response?.StandingOrderTargetAccountIdentification?.AccountIdentification?.IdentifierStartDate?.DateTimeType
                },
                "IdentifierEndDate": {
                    "DateTimeContent": check response?.StandingOrderTargetAccountIdentification?.AccountIdentification?.IdentifierEndDate?.DateTimeContent,
                    "TimeZoneCode": check response?.StandingOrderTargetAccountIdentification?.AccountIdentification?.IdentifierEndDate?.TimeZoneCode,
                    "DaylightSavingIndicator": check response?.StandingOrderTargetAccountIdentification?.AccountIdentification?.IdentifierEndDate?.DaylightSavingIndicator,
                    "DateTimeType": check response?.StandingOrderTargetAccountIdentification?.AccountIdentification?.IdentifierEndDate?.DateTimeType
                }
            }
        },
        "StandingOrderTargetAccountBank": {
            "PartyReference": check response?.StandingOrderTargetAccountBank?.PartyReference,
            "InvolvementReference": check response?.StandingOrderTargetAccountBank?.InvolvementReference
        },
        "StandingOrderSourceAccount": {
            "AccountStatus": {
                "AccountStatus": {
                    "StatusReason": check response?.StandingOrderSourceAccount?.AccountStatus?.AccountStatus?.StatusReason,
                    "StatusDateTime": {
                        "DateTimeContent": check response?.StandingOrderSourceAccount?.AccountStatus?.AccountStatus?.StatusDateTime?.DateTimeContent,
                        "TimeZoneCode": check response?.StandingOrderSourceAccount?.AccountStatus?.AccountStatus?.StatusDateTime?.TimeZoneCode,
                        "DaylightSavingIndicator": check response?.StandingOrderSourceAccount?.AccountStatus?.AccountStatus?.StatusDateTime?.DaylightSavingIndicator,
                        "DateTimeType": check response?.StandingOrderSourceAccount?.AccountStatus?.AccountStatus?.StatusDateTime?.DateTimeType
                    },
                    "StatusValidityPeriod": {
                        "FromDateTime": {
                            "DateTimeContent": check response?.StandingOrderSourceAccount?.AccountStatus?.AccountStatus?.StatusValidityPeriod?.FromDateTime?.DateTimeContent,
                            "TimeZoneCode": check response?.StandingOrderSourceAccount?.AccountStatus?.AccountStatus?.StatusValidityPeriod?.FromDateTime?.TimeZoneCode,
                            "DaylightSavingIndicator": check response?.StandingOrderSourceAccount?.AccountStatus?.AccountStatus?.StatusValidityPeriod?.FromDateTime?.DaylightSavingIndicator,
                            "DateTimeType": check response?.StandingOrderSourceAccount?.AccountStatus?.AccountStatus?.StatusValidityPeriod?.FromDateTime?.DateTimeType
                        },
                        "ToDateTime": {
                            "DateTimeContent": check response?.StandingOrderSourceAccount?.AccountStatus?.AccountStatus?.StatusValidityPeriod?.ToDateTime?.DateTimeContent,
                            "TimeZoneCode": check response?.StandingOrderSourceAccount?.AccountStatus?.AccountStatus?.StatusValidityPeriod?.ToDateTime?.TimeZoneCode,
                            "DaylightSavingIndicator": check response?.StandingOrderSourceAccount?.AccountStatus?.AccountStatus?.StatusValidityPeriod?.ToDateTime?.DaylightSavingIndicator,
                            "DateTimeType": check response?.StandingOrderSourceAccount?.AccountStatus?.AccountStatus?.StatusValidityPeriod?.ToDateTime?.DateTimeType
                        }
                    },
                    "StatusInvolvedPartyReference": {
                        "PartyReference": check response?.StandingOrderSourceAccount?.AccountStatus?.AccountStatus?.StatusInvolvedPartyReference?.PartyReference,
                        "InvolvementReference": check response?.StandingOrderSourceAccount?.AccountStatus?.AccountStatus?.StatusInvolvedPartyReference?.InvolvementReference
                    }
                },
                "AccountStatusType": check response?.StandingOrderSourceAccount?.AccountStatus?.AccountStatusType
            },
            "AccountIdentification": {
                "AccountIdentificationType": check response?.StandingOrderSourceAccount?.AccountIdentification?.AccountIdentificationType,
                "AccountIdentification": {
                    "IdentifierValue": check response?.StandingOrderSourceAccount?.AccountIdentification?.AccountIdentification?.IdentifierValue,
                    "IdentifierIssuerReference": {
                        "PartyReference": check response?.StandingOrderSourceAccount?.AccountIdentification?.AccountIdentification?.IdentifierIssuerReference?.PartyReference,
                        "InvolvementReference": check response?.StandingOrderSourceAccount?.AccountIdentification?.AccountIdentification?.IdentifierIssuerReference?.InvolvementReference
                    },
                    "IdentifierStartDate": {
                        "DateTimeContent": check response?.StandingOrderSourceAccount?.AccountIdentification?.AccountIdentification?.IdentifierStartDate?.DateTimeContent,
                        "TimeZoneCode": check response?.StandingOrderSourceAccount?.AccountIdentification?.AccountIdentification?.IdentifierStartDate?.TimeZoneCode,
                        "DaylightSavingIndicator": check response?.StandingOrderSourceAccount?.AccountIdentification?.AccountIdentification?.IdentifierStartDate?.DaylightSavingIndicator,
                        "DateTimeType": check response?.StandingOrderSourceAccount?.AccountIdentification?.AccountIdentification?.IdentifierStartDate?.DateTimeType
                    },
                    "IdentifierEndDate": {
                        "DateTimeContent": check response?.StandingOrderSourceAccount?.AccountIdentification?.AccountIdentification?.IdentifierEndDate?.DateTimeContent,
                        "TimeZoneCode": check response?.StandingOrderSourceAccount?.AccountIdentification?.AccountIdentification?.IdentifierEndDate?.TimeZoneCode,
                        "DaylightSavingIndicator": check response?.StandingOrderSourceAccount?.AccountIdentification?.AccountIdentification?.IdentifierEndDate?.DaylightSavingIndicator,
                        "DateTimeType": check response?.StandingOrderSourceAccount?.AccountIdentification?.AccountIdentification?.IdentifierEndDate?.DateTimeType
                    }
                }
            },
            "AccountDate": {
                "AccountDateType": check response?.StandingOrderSourceAccount?.AccountDate?.AccountDateType,
                "AccountDate": {
                    "DateTimeContent": check response?.StandingOrderSourceAccount?.AccountDate?.AccountDate?.DateTimeContent,
                    "TimeZoneCode": check response?.StandingOrderSourceAccount?.AccountDate?.AccountDate?.TimeZoneCode,
                    "DaylightSavingIndicator": check response?.StandingOrderSourceAccount?.AccountDate?.AccountDate?.DaylightSavingIndicator,
                    "DateTimeType": check response?.StandingOrderSourceAccount?.AccountDate?.AccountDate?.DateTimeType
                }
            },
            "AccountType": check response?.StandingOrderSourceAccount?.AccountType,
            "AccountPurpose": check response?.StandingOrderSourceAccount?.AccountPurpose,
            "AccountBalance": {
                "BalanceAmount": {
                    "AmountValue": check response?.StandingOrderSourceAccount?.AccountBalance?.BalanceAmount?.AmountValue,
                    "AmountCurrency": {
                        "Currencycode": check response?.StandingOrderSourceAccount?.AccountBalance?.BalanceAmount?.AmountCurrency?.Currencycode
                    },
                    "DecimalPointPosition": check response?.StandingOrderSourceAccount?.AccountBalance?.BalanceAmount?.DecimalPointPosition,
                    "AmountType": check response?.StandingOrderSourceAccount?.AccountBalance?.BalanceAmount?.AmountType
                },
                "BalanceType": check response?.StandingOrderSourceAccount?.AccountBalance?.BalanceType,
                "BalanceValueDate": {
                    "DateTimeContent": check response?.StandingOrderSourceAccount?.AccountBalance?.BalanceValueDate?.DateTimeContent,
                    "TimeZoneCode": check response?.StandingOrderSourceAccount?.AccountBalance?.BalanceValueDate?.TimeZoneCode,
                    "DaylightSavingIndicator": check response?.StandingOrderSourceAccount?.AccountBalance?.BalanceValueDate?.DaylightSavingIndicator,
                    "DateTimeType": check response?.StandingOrderSourceAccount?.AccountBalance?.BalanceValueDate?.DateTimeType
                },
                "BalanceIndicator": check response?.StandingOrderSourceAccount?.AccountBalance?.BalanceIndicator,
                "BalanceCounterpartyType": check response?.StandingOrderSourceAccount?.AccountBalance?.BalanceCounterpartyType,
                "BalanceCalculationDate": {
                    "DateTimeContent": check response?.StandingOrderSourceAccount?.AccountBalance?.BalanceCalculationDate?.DateTimeContent,
                    "TimeZoneCode": check response?.StandingOrderSourceAccount?.AccountBalance?.BalanceCalculationDate?.TimeZoneCode,
                    "DaylightSavingIndicator": check response?.StandingOrderSourceAccount?.AccountBalance?.BalanceCalculationDate?.DaylightSavingIndicator,
                    "DateTimeType": check response?.StandingOrderSourceAccount?.AccountBalance?.BalanceCalculationDate?.DateTimeType
                },
                "BalanceSubType": check response?.StandingOrderSourceAccount?.AccountBalance?.BalanceSubType
            },
            "AccountCurrency": {
                "AccountCurrencyType": check response?.StandingOrderSourceAccount?.AccountCurrency?.AccountCurrencyType,
                "AccountCurrency": {
                    "Currencycode": check response?.StandingOrderSourceAccount?.AccountCurrency?.AccountCurrency?.Currencycode
                }
            },
            "AccountDescription": check response?.StandingOrderSourceAccount?.AccountDescription,
            "AccountName": {
                "Name": check response?.StandingOrderSourceAccount?.AccountName?.Name
            },
            "LogType": check response?.StandingOrderSourceAccount?.LogType,
            "LogPeriod": {
                "FromDateTime": {
                    "DateTimeContent": check response?.StandingOrderSourceAccount?.LogPeriod?.FromDateTime?.DateTimeContent,
                    "TimeZoneCode": check response?.StandingOrderSourceAccount?.LogPeriod?.FromDateTime?.TimeZoneCode,
                    "DaylightSavingIndicator": check response?.StandingOrderSourceAccount?.LogPeriod?.FromDateTime?.DaylightSavingIndicator,
                    "DateTimeType": check response?.StandingOrderSourceAccount?.LogPeriod?.FromDateTime?.DateTimeType
                },
                "ToDateTime": {
                    "DateTimeContent": check response?.StandingOrderSourceAccount?.LogPeriod?.ToDateTime?.DateTimeContent,
                    "TimeZoneCode": check response?.StandingOrderSourceAccount?.LogPeriod?.ToDateTime?.TimeZoneCode,
                    "DaylightSavingIndicator": check response?.StandingOrderSourceAccount?.LogPeriod?.ToDateTime?.DaylightSavingIndicator,
                    "DateTimeType": check response?.StandingOrderSourceAccount?.LogPeriod?.ToDateTime?.DateTimeType
                }
            },
            "LogDate": {
                "DateTimeContent": check response?.StandingOrderSourceAccount?.LogDate?.DateTimeContent,
                "TimeZoneCode": check response?.StandingOrderSourceAccount?.LogDate?.TimeZoneCode,
                "DaylightSavingIndicator": check response?.StandingOrderSourceAccount?.LogDate?.DaylightSavingIndicator,
                "DateTimeType": check response?.StandingOrderSourceAccount?.LogDate?.DateTimeType
            },
            "LogIdentification": {
                "IdentifierValue": check response?.StandingOrderSourceAccount?.LogIdentification?.IdentifierValue,
                "IdentifierIssuerReference": {
                    "PartyReference": check response?.StandingOrderSourceAccount?.LogIdentification?.IdentifierIssuerReference?.PartyReference,
                    "InvolvementReference": check response?.StandingOrderSourceAccount?.LogIdentification?.IdentifierIssuerReference?.InvolvementReference
                },
                "IdentifierStartDate": {
                    "DateTimeContent": check response?.StandingOrderSourceAccount?.LogIdentification?.IdentifierStartDate?.DateTimeContent,
                    "TimeZoneCode": check response?.StandingOrderSourceAccount?.LogIdentification?.IdentifierStartDate?.TimeZoneCode,
                    "DaylightSavingIndicator": check response?.StandingOrderSourceAccount?.LogIdentification?.IdentifierStartDate?.DaylightSavingIndicator,
                    "DateTimeType": check response?.StandingOrderSourceAccount?.LogIdentification?.IdentifierStartDate?.DateTimeType
                },
                "IdentifierEndDate": {
                    "DateTimeContent": check response?.StandingOrderSourceAccount?.LogIdentification?.IdentifierEndDate?.DateTimeContent,
                    "TimeZoneCode": check response?.StandingOrderSourceAccount?.LogIdentification?.IdentifierEndDate?.TimeZoneCode,
                    "DaylightSavingIndicator": check response?.StandingOrderSourceAccount?.LogIdentification?.IdentifierEndDate?.DaylightSavingIndicator,
                    "DateTimeType": check response?.StandingOrderSourceAccount?.LogIdentification?.IdentifierEndDate?.DateTimeType
                }
            }
        },
        "StandingOrderValidityPeriod": {
            "FromDateTime": {
                "DateTimeContent": check response?.StandingOrderValidityPeriod?.FromDateTime?.DateTimeContent,
                "TimeZoneCode": check response?.StandingOrderValidityPeriod?.FromDateTime?.TimeZoneCode,
                "DaylightSavingIndicator": check response?.StandingOrderValidityPeriod?.FromDateTime?.DaylightSavingIndicator,
                "DateTimeType": check response?.StandingOrderValidityPeriod?.FromDateTime?.DateTimeType
            },
            "ToDateTime": {
                "DateTimeContent": check response?.StandingOrderValidityPeriod?.ToDateTime?.DateTimeContent,
                "TimeZoneCode": check response?.StandingOrderValidityPeriod?.ToDateTime?.TimeZoneCode,
                "DaylightSavingIndicator": check response?.StandingOrderValidityPeriod?.ToDateTime?.DaylightSavingIndicator,
                "DateTimeType": check response?.StandingOrderValidityPeriod?.ToDateTime?.DateTimeType
            }
        },
        "StandingOrderDay": {
            "DateTimeContent": check response?.StandingOrderDay?.DateTimeContent,
            "TimeZoneCode": check response?.StandingOrderDay?.TimeZoneCode,
            "DaylightSavingIndicator": check response?.StandingOrderDay?.DaylightSavingIndicator,
            "DateTimeType": check response?.StandingOrderDay?.DateTimeType
        },
        "StandingOrderType": check response?.StandingOrderType,
        "StandingOrderIdentification": {
            "IdentifierValue": check response?.StandingOrderIdentification?.IdentifierValue,
            "IdentifierIssuerReference": {
                "PartyReference": check response?.StandingOrderIdentification?.IdentifierIssuerReference?.PartyReference,
                "InvolvementReference": check response?.StandingOrderIdentification?.IdentifierIssuerReference?.InvolvementReference
            },
            "IdentifierStartDate": {
                "DateTimeContent": check response?.StandingOrderIdentification?.IdentifierStartDate?.DateTimeContent,
                "TimeZoneCode": check response?.StandingOrderIdentification?.IdentifierStartDate?.TimeZoneCode,
                "DaylightSavingIndicator": check response?.StandingOrderIdentification?.IdentifierStartDate?.DaylightSavingIndicator,
                "DateTimeType": check response?.StandingOrderIdentification?.IdentifierStartDate?.DateTimeType
            },
            "IdentifierEndDate": {
                "DateTimeContent": check response?.StandingOrderIdentification?.IdentifierEndDate?.DateTimeContent,
                "TimeZoneCode": check response?.StandingOrderIdentification?.IdentifierEndDate?.TimeZoneCode,
                "DaylightSavingIndicator": check response?.StandingOrderIdentification?.IdentifierEndDate?.DaylightSavingIndicator,
                "DateTimeType": check response?.StandingOrderIdentification?.IdentifierEndDate?.DateTimeType
            }
        },
        "StandingOrderArrangementType": check response?.StandingOrderArrangementType,
        "StandingOrderDateType": check response?.StandingOrderDateType,
        "StandingOrderNumberOfPayments": check response?.StandingOrderNumberOfPayments,
        "StandingOrderDate": {
            "DateTimeContent": check response?.StandingOrderDate?.DateTimeContent,
            "TimeZoneCode": check response?.StandingOrderDate?.TimeZoneCode,
            "DaylightSavingIndicator": check response?.StandingOrderDate?.DaylightSavingIndicator,
            "DateTimeType": check response?.StandingOrderDate?.DateTimeType
        },
        "StandingOrderStatus": {
            "StatusReason": check response?.StandingOrderStatus?.StatusReason,
            "StatusDateTime": {
                "DateTimeContent": check response?.StandingOrderStatus?.StatusDateTime?.DateTimeContent,
                "TimeZoneCode": check response?.StandingOrderStatus?.StatusDateTime?.TimeZoneCode,
                "DaylightSavingIndicator": check response?.StandingOrderStatus?.StatusDateTime?.DaylightSavingIndicator,
                "DateTimeType": check response?.StandingOrderStatus?.StatusDateTime?.DateTimeType
            },
            "StatusValidityPeriod": {
                "FromDateTime": {
                    "DateTimeContent": check response?.StandingOrderStatus?.StatusValidityPeriod?.FromDateTime?.DateTimeContent,
                    "TimeZoneCode": check response?.StandingOrderStatus?.StatusValidityPeriod?.FromDateTime?.TimeZoneCode,
                    "DaylightSavingIndicator": check response?.StandingOrderStatus?.StatusValidityPeriod?.FromDateTime?.DaylightSavingIndicator,
                    "DateTimeType": check response?.StandingOrderStatus?.StatusValidityPeriod?.FromDateTime?.DateTimeType
                },
                "ToDateTime": {
                    "DateTimeContent": check response?.StandingOrderStatus?.StatusValidityPeriod?.ToDateTime?.DateTimeContent,
                    "TimeZoneCode": check response?.StandingOrderStatus?.StatusValidityPeriod?.ToDateTime?.TimeZoneCode,
                    "DaylightSavingIndicator": check response?.StandingOrderStatus?.StatusValidityPeriod?.ToDateTime?.DaylightSavingIndicator,
                    "DateTimeType": check response?.StandingOrderStatus?.StatusValidityPeriod?.ToDateTime?.DateTimeType
                }
            },
            "StatusInvolvedPartyReference": {
                "PartyReference": check response?.StandingOrderStatus?.StatusInvolvedPartyReference?.PartyReference,
                "InvolvementReference": check response?.StandingOrderStatus?.StatusInvolvedPartyReference?.InvolvementReference
            }
        },
        "StandingOrderSchedule": {
            "ScheduleType": check response?.StandingOrderSchedule?.ScheduleType
        },
        "ServiceType": check response?.ServiceType,
        "PaymentDate": {
            "PaymentDate": {
                "DateTimeContent": check response?.PaymentDate?.PaymentDate?.DateTimeContent,
                "TimeZoneCode": check response?.PaymentDate?.PaymentDate?.TimeZoneCode,
                "DaylightSavingIndicator": check response?.PaymentDate?.PaymentDate?.DaylightSavingIndicator,
                "DateTimeType": check response?.PaymentDate?.PaymentDate?.DateTimeType
            },
            "PaymentDateType": check response?.PaymentDate?.PaymentDateType
        },
        "PaymentPeriod": {
            "FromDateTime": {
                "DateTimeContent": check response?.PaymentPeriod?.FromDateTime?.DateTimeContent,
                "TimeZoneCode": check response?.PaymentPeriod?.FromDateTime?.TimeZoneCode,
                "DaylightSavingIndicator": check response?.PaymentPeriod?.FromDateTime?.DaylightSavingIndicator,
                "DateTimeType": check response?.PaymentPeriod?.FromDateTime?.DateTimeType
            },
            "ToDateTime": {
                "DateTimeContent": check response?.PaymentPeriod?.ToDateTime?.DateTimeContent,
                "TimeZoneCode": check response?.PaymentPeriod?.ToDateTime?.TimeZoneCode,
                "DaylightSavingIndicator": check response?.PaymentPeriod?.ToDateTime?.DaylightSavingIndicator,
                "DateTimeType": check response?.PaymentPeriod?.ToDateTime?.DateTimeType
            }
        },
        "PaymentPurpose": check response?.PaymentPurpose,
        "PaymentAmountAndCurrency": {
            "PaymentAmountAndCurrencyType": check response?.PaymentAmountAndCurrency?.PaymentAmountAndCurrencyType,
            "PaymentAmountAndCurrency": {
                "AmountValue": check response?.PaymentAmountAndCurrency?.PaymentAmountAndCurrency?.AmountValue,
                "AmountCurrency": {
                    "Currencycode": check response?.PaymentAmountAndCurrency?.PaymentAmountAndCurrency?.AmountCurrency?.Currencycode
                },
                "DecimalPointPosition": check response?.PaymentAmountAndCurrency?.PaymentAmountAndCurrency?.DecimalPointPosition,
                "AmountType": check response?.PaymentAmountAndCurrency?.PaymentAmountAndCurrency?.AmountType
            }
        },
        "PaymentMethod": check response?.PaymentMethod,
        "PaymentType": check response?.PaymentType,
        "PaymentTime": check response?.PaymentTime,
        "RemittanceDeliveryMethod": check response?.RemittanceDeliveryMethod,
        "RemittanceLocation": {
            "ContactPointType": check response?.RemittanceLocation?.ContactPointType,
            "PartyLocationType": check response?.RemittanceLocation?.PartyLocationType,
            "LocationReference": {
                "LocationDescription": check response?.RemittanceLocation?.LocationReference?.LocationDescription,
                "LocationDateTime": {
                    "DateTimeContent": check response?.RemittanceLocation?.LocationReference?.LocationDateTime?.DateTimeContent,
                    "TimeZoneCode": check response?.RemittanceLocation?.LocationReference?.LocationDateTime?.TimeZoneCode,
                    "DaylightSavingIndicator": check response?.RemittanceLocation?.LocationReference?.LocationDateTime?.DaylightSavingIndicator,
                    "DateTimeType": check response?.RemittanceLocation?.LocationReference?.LocationDateTime?.DateTimeType
                },
                "LocationStatus": {
                    "StatusReason": check response?.RemittanceLocation?.LocationReference?.LocationStatus?.StatusReason,
                    "StatusDateTime": {
                        "DateTimeContent": check response?.RemittanceLocation?.LocationReference?.LocationStatus?.StatusDateTime?.DateTimeContent,
                        "TimeZoneCode": check response?.RemittanceLocation?.LocationReference?.LocationStatus?.StatusDateTime?.TimeZoneCode,
                        "DaylightSavingIndicator": check response?.RemittanceLocation?.LocationReference?.LocationStatus?.StatusDateTime?.DaylightSavingIndicator,
                        "DateTimeType": check response?.RemittanceLocation?.LocationReference?.LocationStatus?.StatusDateTime?.DateTimeType
                    },
                    "StatusValidityPeriod": {
                        "FromDateTime": {
                            "DateTimeContent": check response?.RemittanceLocation?.LocationReference?.LocationStatus?.StatusValidityPeriod?.FromDateTime?.DateTimeContent,
                            "TimeZoneCode": check response?.RemittanceLocation?.LocationReference?.LocationStatus?.StatusValidityPeriod?.FromDateTime?.TimeZoneCode,
                            "DaylightSavingIndicator": check response?.RemittanceLocation?.LocationReference?.LocationStatus?.StatusValidityPeriod?.FromDateTime?.DaylightSavingIndicator,
                            "DateTimeType": check response?.RemittanceLocation?.LocationReference?.LocationStatus?.StatusValidityPeriod?.FromDateTime?.DateTimeType
                        },
                        "ToDateTime": {
                            "DateTimeContent": check response?.RemittanceLocation?.LocationReference?.LocationStatus?.StatusValidityPeriod?.ToDateTime?.DateTimeContent,
                            "TimeZoneCode": check response?.RemittanceLocation?.LocationReference?.LocationStatus?.StatusValidityPeriod?.ToDateTime?.TimeZoneCode,
                            "DaylightSavingIndicator": check response?.RemittanceLocation?.LocationReference?.LocationStatus?.StatusValidityPeriod?.ToDateTime?.DaylightSavingIndicator,
                            "DateTimeType": check response?.RemittanceLocation?.LocationReference?.LocationStatus?.StatusValidityPeriod?.ToDateTime?.DateTimeType
                        }
                    },
                    "StatusInvolvedPartyReference": {
                        "PartyReference": check response?.RemittanceLocation?.LocationReference?.LocationStatus?.StatusInvolvedPartyReference?.PartyReference,
                        "InvolvementReference": check response?.RemittanceLocation?.LocationReference?.LocationStatus?.StatusInvolvedPartyReference?.InvolvementReference
                    }
                },
                "LocationType": check response?.RemittanceLocation?.LocationReference?.LocationType,
                "LocationZoningType": check response?.RemittanceLocation?.LocationReference?.LocationZoningType,
                "LocationNeighborhoodType": check response?.RemittanceLocation?.LocationReference?.LocationNeighborhoodType,
                "LocationConstructionType": check response?.RemittanceLocation?.LocationReference?.LocationConstructionType,
                "LocationOccupancyType": check response?.RemittanceLocation?.LocationReference?.LocationOccupancyType,
                "LocationValue": check response?.RemittanceLocation?.LocationReference?.LocationValue,
                "LocationCapacity": check response?.RemittanceLocation?.LocationReference?.LocationCapacity,
                "LocationIdentification": {
                    "IdentifierValue": check response?.RemittanceLocation?.LocationReference?.LocationIdentification?.IdentifierValue,
                    "IdentifierIssuerReference": {
                        "PartyReference": check response?.RemittanceLocation?.LocationReference?.LocationIdentification?.IdentifierIssuerReference?.PartyReference,
                        "InvolvementReference": check response?.RemittanceLocation?.LocationReference?.LocationIdentification?.IdentifierIssuerReference?.InvolvementReference
                    },
                    "IdentifierStartDate": {
                        "DateTimeContent": check response?.RemittanceLocation?.LocationReference?.LocationIdentification?.IdentifierStartDate?.DateTimeContent,
                        "TimeZoneCode": check response?.RemittanceLocation?.LocationReference?.LocationIdentification?.IdentifierStartDate?.TimeZoneCode,
                        "DaylightSavingIndicator": check response?.RemittanceLocation?.LocationReference?.LocationIdentification?.IdentifierStartDate?.DaylightSavingIndicator,
                        "DateTimeType": check response?.RemittanceLocation?.LocationReference?.LocationIdentification?.IdentifierStartDate?.DateTimeType
                    },
                    "IdentifierEndDate": {
                        "DateTimeContent": check response?.RemittanceLocation?.LocationReference?.LocationIdentification?.IdentifierEndDate?.DateTimeContent,
                        "TimeZoneCode": check response?.RemittanceLocation?.LocationReference?.LocationIdentification?.IdentifierEndDate?.TimeZoneCode,
                        "DaylightSavingIndicator": check response?.RemittanceLocation?.LocationReference?.LocationIdentification?.IdentifierEndDate?.DaylightSavingIndicator,
                        "DateTimeType": check response?.RemittanceLocation?.LocationReference?.LocationIdentification?.IdentifierEndDate?.DateTimeType
                    }
                },
                "LocationAddress": check response?.RemittanceLocation?.LocationReference?.LocationAddress,
                "LocationName": {
                    "Name": check response?.RemittanceLocation?.LocationReference?.LocationName?.Name
                },
                "LocationTimeZone": check response?.RemittanceLocation?.LocationReference?.LocationTimeZone
            },
            "PartyReference": {
                "PartyName": {
                    "Name": check response?.RemittanceLocation?.PartyReference?.PartyName?.Name
                },
                "PartyType": check response?.RemittanceLocation?.PartyReference?.PartyType,
                "PartyDateTime": {
                    "DateTimeContent": check response?.RemittanceLocation?.PartyReference?.PartyDateTime?.DateTimeContent,
                    "TimeZoneCode": check response?.RemittanceLocation?.PartyReference?.PartyDateTime?.TimeZoneCode,
                    "DaylightSavingIndicator": check response?.RemittanceLocation?.PartyReference?.PartyDateTime?.DaylightSavingIndicator,
                    "DateTimeType": check response?.RemittanceLocation?.PartyReference?.PartyDateTime?.DateTimeType
                },
                "PartyIdentification": {
                    "PartyIdentificationType": check response?.RemittanceLocation?.PartyReference?.PartyIdentification?.PartyIdentificationType,
                    "PartyIdentification": {
                        "IdentifierValue": check response?.RemittanceLocation?.PartyReference?.PartyIdentification?.PartyIdentification?.IdentifierValue,
                        "IdentifierIssuerReference": {
                            "PartyReference": check response?.RemittanceLocation?.PartyReference?.PartyIdentification?.PartyIdentification?.IdentifierIssuerReference?.PartyReference,
                            "InvolvementReference": check response?.RemittanceLocation?.PartyReference?.PartyIdentification?.PartyIdentification?.IdentifierIssuerReference?.InvolvementReference
                        },
                        "IdentifierStartDate": {
                            "DateTimeContent": check response?.RemittanceLocation?.PartyReference?.PartyIdentification?.PartyIdentification?.IdentifierStartDate?.DateTimeContent,
                            "TimeZoneCode": check response?.RemittanceLocation?.PartyReference?.PartyIdentification?.PartyIdentification?.IdentifierStartDate?.TimeZoneCode,
                            "DaylightSavingIndicator": check response?.RemittanceLocation?.PartyReference?.PartyIdentification?.PartyIdentification?.IdentifierStartDate?.DaylightSavingIndicator,
                            "DateTimeType": check response?.RemittanceLocation?.PartyReference?.PartyIdentification?.PartyIdentification?.IdentifierStartDate?.DateTimeType
                        },
                        "IdentifierEndDate": {
                            "DateTimeContent": check response?.RemittanceLocation?.PartyReference?.PartyIdentification?.PartyIdentification?.IdentifierEndDate?.DateTimeContent,
                            "TimeZoneCode": check response?.RemittanceLocation?.PartyReference?.PartyIdentification?.PartyIdentification?.IdentifierEndDate?.TimeZoneCode,
                            "DaylightSavingIndicator": check response?.RemittanceLocation?.PartyReference?.PartyIdentification?.PartyIdentification?.IdentifierEndDate?.DaylightSavingIndicator,
                            "DateTimeType": check response?.RemittanceLocation?.PartyReference?.PartyIdentification?.PartyIdentification?.IdentifierEndDate?.DateTimeType
                        }
                    }
                },
                "PartyLegalStructureType": check response?.RemittanceLocation?.PartyReference?.PartyLegalStructureType,
                "PartyActivityIndicator": {
                    "Industrycode": check response?.RemittanceLocation?.PartyReference?.PartyActivityIndicator?.Industrycode
                }
            }
        },
        "PaymentIdentification": {
            "PaymentIdentification": {
                "IdentifierValue": check response?.PaymentIdentification?.PaymentIdentification?.IdentifierValue,
                "IdentifierIssuerReference": {
                    "PartyReference": check response?.PaymentIdentification?.PaymentIdentification?.IdentifierIssuerReference?.PartyReference,
                    "InvolvementReference": check response?.PaymentIdentification?.PaymentIdentification?.IdentifierIssuerReference?.InvolvementReference
                },
                "IdentifierStartDate": {
                    "DateTimeContent": check response?.PaymentIdentification?.PaymentIdentification?.IdentifierStartDate?.DateTimeContent,
                    "TimeZoneCode": check response?.PaymentIdentification?.PaymentIdentification?.IdentifierStartDate?.TimeZoneCode,
                    "DaylightSavingIndicator": check response?.PaymentIdentification?.PaymentIdentification?.IdentifierStartDate?.DaylightSavingIndicator,
                    "DateTimeType": check response?.PaymentIdentification?.PaymentIdentification?.IdentifierStartDate?.DateTimeType
                },
                "IdentifierEndDate": {
                    "DateTimeContent": check response?.PaymentIdentification?.PaymentIdentification?.IdentifierEndDate?.DateTimeContent,
                    "TimeZoneCode": check response?.PaymentIdentification?.PaymentIdentification?.IdentifierEndDate?.TimeZoneCode,
                    "DaylightSavingIndicator": check response?.PaymentIdentification?.PaymentIdentification?.IdentifierEndDate?.DaylightSavingIndicator,
                    "DateTimeType": check response?.PaymentIdentification?.PaymentIdentification?.IdentifierEndDate?.DateTimeType
                }
            },
            "PaymentIdentificationType": check response?.PaymentIdentification?.PaymentIdentificationType
        },
        "PaymentSchedule": {
            "ScheduleType": check response?.PaymentSchedule?.ScheduleType
        },
        "PaymentFrequency": {
            "FrequencyCode": check response?.PaymentFrequency?.FrequencyCode,
            "FrequencyName": {
                "Name": check response?.PaymentFrequency?.FrequencyName?.Name
            },
            "FrequencyDefinition": check response?.PaymentFrequency?.FrequencyDefinition
        },
        "PaymentDescription": check response?.PaymentDescription
    },
    "LegalGuideline": {
        "RuleSet": check response?.LegalGuideline?.RuleSet
    },
    "DocumentReference": {
        "DocumentIdentification": {
            "IdentifierValue": check response?.DocumentReference?.DocumentIdentification?.IdentifierValue,
            "IdentifierIssuerReference": {
                "PartyReference": check response?.DocumentReference?.DocumentIdentification?.IdentifierIssuerReference?.PartyReference,
                "InvolvementReference": check response?.DocumentReference?.DocumentIdentification?.IdentifierIssuerReference?.InvolvementReference
            },
            "IdentifierStartDate": {
                "DateTimeContent": check response?.DocumentReference?.DocumentIdentification?.IdentifierStartDate?.DateTimeContent,
                "TimeZoneCode": check response?.DocumentReference?.DocumentIdentification?.IdentifierStartDate?.TimeZoneCode,
                "DaylightSavingIndicator": check response?.DocumentReference?.DocumentIdentification?.IdentifierStartDate?.DaylightSavingIndicator,
                "DateTimeType": check response?.DocumentReference?.DocumentIdentification?.IdentifierStartDate?.DateTimeType
            },
            "IdentifierEndDate": {
                "DateTimeContent": check response?.DocumentReference?.DocumentIdentification?.IdentifierEndDate?.DateTimeContent,
                "TimeZoneCode": check response?.DocumentReference?.DocumentIdentification?.IdentifierEndDate?.TimeZoneCode,
                "DaylightSavingIndicator": check response?.DocumentReference?.DocumentIdentification?.IdentifierEndDate?.DaylightSavingIndicator,
                "DateTimeType": check response?.DocumentReference?.DocumentIdentification?.IdentifierEndDate?.DateTimeType
            }
        },
        "DocumentVersion": check response?.DocumentReference?.DocumentVersion,
        "DocumentType": check response?.DocumentReference?.DocumentType,
        "DocumentStatus": {
            "StatusReason": check response?.DocumentReference?.DocumentStatus?.StatusReason,
            "StatusDateTime": {
                "DateTimeContent": check response?.DocumentReference?.DocumentStatus?.StatusDateTime?.DateTimeContent,
                "TimeZoneCode": check response?.DocumentReference?.DocumentStatus?.StatusDateTime?.TimeZoneCode,
                "DaylightSavingIndicator": check response?.DocumentReference?.DocumentStatus?.StatusDateTime?.DaylightSavingIndicator,
                "DateTimeType": check response?.DocumentReference?.DocumentStatus?.StatusDateTime?.DateTimeType
            },
            "StatusValidityPeriod": {
                "FromDateTime": {
                    "DateTimeContent": check response?.DocumentReference?.DocumentStatus?.StatusValidityPeriod?.FromDateTime?.DateTimeContent,
                    "TimeZoneCode": check response?.DocumentReference?.DocumentStatus?.StatusValidityPeriod?.FromDateTime?.TimeZoneCode,
                    "DaylightSavingIndicator": check response?.DocumentReference?.DocumentStatus?.StatusValidityPeriod?.FromDateTime?.DaylightSavingIndicator,
                    "DateTimeType": check response?.DocumentReference?.DocumentStatus?.StatusValidityPeriod?.FromDateTime?.DateTimeType
                },
                "ToDateTime": {
                    "DateTimeContent": check response?.DocumentReference?.DocumentStatus?.StatusValidityPeriod?.ToDateTime?.DateTimeContent,
                    "TimeZoneCode": check response?.DocumentReference?.DocumentStatus?.StatusValidityPeriod?.ToDateTime?.TimeZoneCode,
                    "DaylightSavingIndicator": check response?.DocumentReference?.DocumentStatus?.StatusValidityPeriod?.ToDateTime?.DaylightSavingIndicator,
                    "DateTimeType": check response?.DocumentReference?.DocumentStatus?.StatusValidityPeriod?.ToDateTime?.DateTimeType
                }
            },
            "StatusInvolvedPartyReference": {
                "PartyReference": check response?.DocumentReference?.DocumentStatus?.StatusInvolvedPartyReference?.PartyReference,
                "InvolvementReference": check response?.DocumentReference?.DocumentStatus?.StatusInvolvedPartyReference?.InvolvementReference
            }
        },
        "DocumentDateTime": {
            "DateTimeContent": check response?.DocumentReference?.DocumentDateTime?.DateTimeContent,
            "TimeZoneCode": check response?.DocumentReference?.DocumentDateTime?.TimeZoneCode,
            "DaylightSavingIndicator": check response?.DocumentReference?.DocumentDateTime?.DaylightSavingIndicator,
            "DateTimeType": check response?.DocumentReference?.DocumentDateTime?.DateTimeType
        },
        "DocumentName": {
            "Name": check response?.DocumentReference?.DocumentName?.Name
        },
        "DocumentDateTimeType": check response?.DocumentReference?.DocumentDateTimeType,
        "DocumentPurpose": check response?.DocumentReference?.DocumentPurpose,
        "DocumentFormat": check response?.DocumentReference?.DocumentFormat,
        "DocumentSubject": check response?.DocumentReference?.DocumentSubject,
        "DocumentDescription": check response?.DocumentReference?.DocumentDescription,
        "DocumentValidityPeriod": {
            "FromDateTime": {
                "DateTimeContent": check response?.DocumentReference?.DocumentValidityPeriod?.FromDateTime?.DateTimeContent,
                "TimeZoneCode": check response?.DocumentReference?.DocumentValidityPeriod?.FromDateTime?.TimeZoneCode,
                "DaylightSavingIndicator": check response?.DocumentReference?.DocumentValidityPeriod?.FromDateTime?.DaylightSavingIndicator,
                "DateTimeType": check response?.DocumentReference?.DocumentValidityPeriod?.FromDateTime?.DateTimeType
            },
            "ToDateTime": {
                "DateTimeContent": check response?.DocumentReference?.DocumentValidityPeriod?.ToDateTime?.DateTimeContent,
                "TimeZoneCode": check response?.DocumentReference?.DocumentValidityPeriod?.ToDateTime?.TimeZoneCode,
                "DaylightSavingIndicator": check response?.DocumentReference?.DocumentValidityPeriod?.ToDateTime?.DaylightSavingIndicator,
                "DateTimeType": check response?.DocumentReference?.DocumentValidityPeriod?.ToDateTime?.DateTimeType
            }
        }
    },
    "LegalAssessmentWorkProducts": {
        "WorkProductType": check response?.LegalAssessmentWorkProducts?.WorkProductType,
        "WorkProductIdentifoication": {
            "IdentifierValue": check response?.LegalAssessmentWorkProducts?.WorkProductIdentifoication?.IdentifierValue,
            "IdentifierIssuerReference": {
                "PartyReference": check response?.LegalAssessmentWorkProducts?.WorkProductIdentifoication?.IdentifierIssuerReference?.PartyReference,
                "InvolvementReference": check response?.LegalAssessmentWorkProducts?.WorkProductIdentifoication?.IdentifierIssuerReference?.InvolvementReference
            },
            "IdentifierStartDate": {
                "DateTimeContent": check response?.LegalAssessmentWorkProducts?.WorkProductIdentifoication?.IdentifierStartDate?.DateTimeContent,
                "TimeZoneCode": check response?.LegalAssessmentWorkProducts?.WorkProductIdentifoication?.IdentifierStartDate?.TimeZoneCode,
                "DaylightSavingIndicator": check response?.LegalAssessmentWorkProducts?.WorkProductIdentifoication?.IdentifierStartDate?.DaylightSavingIndicator,
                "DateTimeType": check response?.LegalAssessmentWorkProducts?.WorkProductIdentifoication?.IdentifierStartDate?.DateTimeType
            },
            "IdentifierEndDate": {
                "DateTimeContent": check response?.LegalAssessmentWorkProducts?.WorkProductIdentifoication?.IdentifierEndDate?.DateTimeContent,
                "TimeZoneCode": check response?.LegalAssessmentWorkProducts?.WorkProductIdentifoication?.IdentifierEndDate?.TimeZoneCode,
                "DaylightSavingIndicator": check response?.LegalAssessmentWorkProducts?.WorkProductIdentifoication?.IdentifierEndDate?.DaylightSavingIndicator,
                "DateTimeType": check response?.LegalAssessmentWorkProducts?.WorkProductIdentifoication?.IdentifierEndDate?.DateTimeType
            }
        }
    },
    "LegalAssessmentResult": {
        "AssessmentType": check response?.LegalAssessmentResult?.AssessmentType,
        "AssessmentMethod": check response?.LegalAssessmentResult?.AssessmentMethod,
        "AssessmentSchedule": {
            "ScheduleType": check response?.LegalAssessmentResult?.AssessmentSchedule?.ScheduleType
        },
        "AssessmentDescription": check response?.LegalAssessmentResult?.AssessmentDescription,
        "AssessmentModel": {
            "ModelType": check response?.LegalAssessmentResult?.AssessmentModel?.ModelType,
            "ModelPurpose": check response?.LegalAssessmentResult?.AssessmentModel?.ModelPurpose,
            "ModelVersion": check response?.LegalAssessmentResult?.AssessmentModel?.ModelVersion,
            "ModelName": {
                "Name": check response?.LegalAssessmentResult?.AssessmentModel?.ModelName?.Name
            },
            "ModelDateAndTime": {
                "DateTimeContent": check response?.LegalAssessmentResult?.AssessmentModel?.ModelDateAndTime?.DateTimeContent,
                "TimeZoneCode": check response?.LegalAssessmentResult?.AssessmentModel?.ModelDateAndTime?.TimeZoneCode,
                "DaylightSavingIndicator": check response?.LegalAssessmentResult?.AssessmentModel?.ModelDateAndTime?.DaylightSavingIndicator,
                "DateTimeType": check response?.LegalAssessmentResult?.AssessmentModel?.ModelDateAndTime?.DateTimeType
            },
            "ModelStatus": {
                "StatusReason": check response?.LegalAssessmentResult?.AssessmentModel?.ModelStatus?.StatusReason,
                "StatusDateTime": {
                    "DateTimeContent": check response?.LegalAssessmentResult?.AssessmentModel?.ModelStatus?.StatusDateTime?.DateTimeContent,
                    "TimeZoneCode": check response?.LegalAssessmentResult?.AssessmentModel?.ModelStatus?.StatusDateTime?.TimeZoneCode,
                    "DaylightSavingIndicator": check response?.LegalAssessmentResult?.AssessmentModel?.ModelStatus?.StatusDateTime?.DaylightSavingIndicator,
                    "DateTimeType": check response?.LegalAssessmentResult?.AssessmentModel?.ModelStatus?.StatusDateTime?.DateTimeType
                },
                "StatusValidityPeriod": {
                    "FromDateTime": {
                        "DateTimeContent": check response?.LegalAssessmentResult?.AssessmentModel?.ModelStatus?.StatusValidityPeriod?.FromDateTime?.DateTimeContent,
                        "TimeZoneCode": check response?.LegalAssessmentResult?.AssessmentModel?.ModelStatus?.StatusValidityPeriod?.FromDateTime?.TimeZoneCode,
                        "DaylightSavingIndicator": check response?.LegalAssessmentResult?.AssessmentModel?.ModelStatus?.StatusValidityPeriod?.FromDateTime?.DaylightSavingIndicator,
                        "DateTimeType": check response?.LegalAssessmentResult?.AssessmentModel?.ModelStatus?.StatusValidityPeriod?.FromDateTime?.DateTimeType
                    },
                    "ToDateTime": {
                        "DateTimeContent": check response?.LegalAssessmentResult?.AssessmentModel?.ModelStatus?.StatusValidityPeriod?.ToDateTime?.DateTimeContent,
                        "TimeZoneCode": check response?.LegalAssessmentResult?.AssessmentModel?.ModelStatus?.StatusValidityPeriod?.ToDateTime?.TimeZoneCode,
                        "DaylightSavingIndicator": check response?.LegalAssessmentResult?.AssessmentModel?.ModelStatus?.StatusValidityPeriod?.ToDateTime?.DaylightSavingIndicator,
                        "DateTimeType": check response?.LegalAssessmentResult?.AssessmentModel?.ModelStatus?.StatusValidityPeriod?.ToDateTime?.DateTimeType
                    }
                },
                "StatusInvolvedPartyReference": {
                    "PartyReference": check response?.LegalAssessmentResult?.AssessmentModel?.ModelStatus?.StatusInvolvedPartyReference?.PartyReference,
                    "InvolvementReference": check response?.LegalAssessmentResult?.AssessmentModel?.ModelStatus?.StatusInvolvedPartyReference?.InvolvementReference
                }
            }
        },
        "AssessmentDateTime": {
            "DateTimeContent": check response?.LegalAssessmentResult?.AssessmentDateTime?.DateTimeContent,
            "TimeZoneCode": check response?.LegalAssessmentResult?.AssessmentDateTime?.TimeZoneCode,
            "DaylightSavingIndicator": check response?.LegalAssessmentResult?.AssessmentDateTime?.DaylightSavingIndicator,
            "DateTimeType": check response?.LegalAssessmentResult?.AssessmentDateTime?.DateTimeType
        },
        "AssessmentResult": check response?.LegalAssessmentResult?.AssessmentResult,
        "AssessmentSupportingDocument": {
            "DocumentIdentification": {
                "IdentifierValue": check response?.LegalAssessmentResult?.AssessmentSupportingDocument?.DocumentIdentification?.IdentifierValue,
                "IdentifierIssuerReference": {
                    "PartyReference": check response?.LegalAssessmentResult?.AssessmentSupportingDocument?.DocumentIdentification?.IdentifierIssuerReference?.PartyReference,
                    "InvolvementReference": check response?.LegalAssessmentResult?.AssessmentSupportingDocument?.DocumentIdentification?.IdentifierIssuerReference?.InvolvementReference
                },
                "IdentifierStartDate": {
                    "DateTimeContent": check response?.LegalAssessmentResult?.AssessmentSupportingDocument?.DocumentIdentification?.IdentifierStartDate?.DateTimeContent,
                    "TimeZoneCode": check response?.LegalAssessmentResult?.AssessmentSupportingDocument?.DocumentIdentification?.IdentifierStartDate?.TimeZoneCode,
                    "DaylightSavingIndicator": check response?.LegalAssessmentResult?.AssessmentSupportingDocument?.DocumentIdentification?.IdentifierStartDate?.DaylightSavingIndicator,
                    "DateTimeType": check response?.LegalAssessmentResult?.AssessmentSupportingDocument?.DocumentIdentification?.IdentifierStartDate?.DateTimeType
                },
                "IdentifierEndDate": {
                    "DateTimeContent": check response?.LegalAssessmentResult?.AssessmentSupportingDocument?.DocumentIdentification?.IdentifierEndDate?.DateTimeContent,
                    "TimeZoneCode": check response?.LegalAssessmentResult?.AssessmentSupportingDocument?.DocumentIdentification?.IdentifierEndDate?.TimeZoneCode,
                    "DaylightSavingIndicator": check response?.LegalAssessmentResult?.AssessmentSupportingDocument?.DocumentIdentification?.IdentifierEndDate?.DaylightSavingIndicator,
                    "DateTimeType": check response?.LegalAssessmentResult?.AssessmentSupportingDocument?.DocumentIdentification?.IdentifierEndDate?.DateTimeType
                }
            },
            "DocumentVersion": check response?.LegalAssessmentResult?.AssessmentSupportingDocument?.DocumentVersion,
            "DocumentType": check response?.LegalAssessmentResult?.AssessmentSupportingDocument?.DocumentType,
            "DocumentStatus": {
                "StatusReason": check response?.LegalAssessmentResult?.AssessmentSupportingDocument?.DocumentStatus?.StatusReason,
                "StatusDateTime": {
                    "DateTimeContent": check response?.LegalAssessmentResult?.AssessmentSupportingDocument?.DocumentStatus?.StatusDateTime?.DateTimeContent,
                    "TimeZoneCode": check response?.LegalAssessmentResult?.AssessmentSupportingDocument?.DocumentStatus?.StatusDateTime?.TimeZoneCode,
                    "DaylightSavingIndicator": check response?.LegalAssessmentResult?.AssessmentSupportingDocument?.DocumentStatus?.StatusDateTime?.DaylightSavingIndicator,
                    "DateTimeType": check response?.LegalAssessmentResult?.AssessmentSupportingDocument?.DocumentStatus?.StatusDateTime?.DateTimeType
                },
                "StatusValidityPeriod": {
                    "FromDateTime": {
                        "DateTimeContent": check response?.LegalAssessmentResult?.AssessmentSupportingDocument?.DocumentStatus?.StatusValidityPeriod?.FromDateTime?.DateTimeContent,
                        "TimeZoneCode": check response?.LegalAssessmentResult?.AssessmentSupportingDocument?.DocumentStatus?.StatusValidityPeriod?.FromDateTime?.TimeZoneCode,
                        "DaylightSavingIndicator": check response?.LegalAssessmentResult?.AssessmentSupportingDocument?.DocumentStatus?.StatusValidityPeriod?.FromDateTime?.DaylightSavingIndicator,
                        "DateTimeType": check response?.LegalAssessmentResult?.AssessmentSupportingDocument?.DocumentStatus?.StatusValidityPeriod?.FromDateTime?.DateTimeType
                    },
                    "ToDateTime": {
                        "DateTimeContent": check response?.LegalAssessmentResult?.AssessmentSupportingDocument?.DocumentStatus?.StatusValidityPeriod?.ToDateTime?.DateTimeContent,
                        "TimeZoneCode": check response?.LegalAssessmentResult?.AssessmentSupportingDocument?.DocumentStatus?.StatusValidityPeriod?.ToDateTime?.TimeZoneCode,
                        "DaylightSavingIndicator": check response?.LegalAssessmentResult?.AssessmentSupportingDocument?.DocumentStatus?.StatusValidityPeriod?.ToDateTime?.DaylightSavingIndicator,
                        "DateTimeType": check response?.LegalAssessmentResult?.AssessmentSupportingDocument?.DocumentStatus?.StatusValidityPeriod?.ToDateTime?.DateTimeType
                    }
                },
                "StatusInvolvedPartyReference": {
                    "PartyReference": check response?.LegalAssessmentResult?.AssessmentSupportingDocument?.DocumentStatus?.StatusInvolvedPartyReference?.PartyReference,
                    "InvolvementReference": check response?.LegalAssessmentResult?.AssessmentSupportingDocument?.DocumentStatus?.StatusInvolvedPartyReference?.InvolvementReference
                }
            },
            "DocumentDateTime": {
                "DateTimeContent": check response?.LegalAssessmentResult?.AssessmentSupportingDocument?.DocumentDateTime?.DateTimeContent,
                "TimeZoneCode": check response?.LegalAssessmentResult?.AssessmentSupportingDocument?.DocumentDateTime?.TimeZoneCode,
                "DaylightSavingIndicator": check response?.LegalAssessmentResult?.AssessmentSupportingDocument?.DocumentDateTime?.DaylightSavingIndicator,
                "DateTimeType": check response?.LegalAssessmentResult?.AssessmentSupportingDocument?.DocumentDateTime?.DateTimeType
            },
            "DocumentName": {
                "Name": check response?.LegalAssessmentResult?.AssessmentSupportingDocument?.DocumentName?.Name
            },
            "DocumentDateTimeType": check response?.LegalAssessmentResult?.AssessmentSupportingDocument?.DocumentDateTimeType,
            "DocumentPurpose": check response?.LegalAssessmentResult?.AssessmentSupportingDocument?.DocumentPurpose,
            "DocumentFormat": check response?.LegalAssessmentResult?.AssessmentSupportingDocument?.DocumentFormat,
            "DocumentSubject": check response?.LegalAssessmentResult?.AssessmentSupportingDocument?.DocumentSubject,
            "DocumentDescription": check response?.LegalAssessmentResult?.AssessmentSupportingDocument?.DocumentDescription,
            "DocumentValidityPeriod": {
                "FromDateTime": {
                    "DateTimeContent": check response?.LegalAssessmentResult?.AssessmentSupportingDocument?.DocumentValidityPeriod?.FromDateTime?.DateTimeContent,
                    "TimeZoneCode": check response?.LegalAssessmentResult?.AssessmentSupportingDocument?.DocumentValidityPeriod?.FromDateTime?.TimeZoneCode,
                    "DaylightSavingIndicator": check response?.LegalAssessmentResult?.AssessmentSupportingDocument?.DocumentValidityPeriod?.FromDateTime?.DaylightSavingIndicator,
                    "DateTimeType": check response?.LegalAssessmentResult?.AssessmentSupportingDocument?.DocumentValidityPeriod?.FromDateTime?.DateTimeType
                },
                "ToDateTime": {
                    "DateTimeContent": check response?.LegalAssessmentResult?.AssessmentSupportingDocument?.DocumentValidityPeriod?.ToDateTime?.DateTimeContent,
                    "TimeZoneCode": check response?.LegalAssessmentResult?.AssessmentSupportingDocument?.DocumentValidityPeriod?.ToDateTime?.TimeZoneCode,
                    "DaylightSavingIndicator": check response?.LegalAssessmentResult?.AssessmentSupportingDocument?.DocumentValidityPeriod?.ToDateTime?.DaylightSavingIndicator,
                    "DateTimeType": check response?.LegalAssessmentResult?.AssessmentSupportingDocument?.DocumentValidityPeriod?.ToDateTime?.DateTimeType
                }
            }
        },
        "AssessmentRepresentingDocument": {
            "DocumentIdentification": {
                "IdentifierValue": check response?.LegalAssessmentResult?.AssessmentRepresentingDocument?.DocumentIdentification?.IdentifierValue,
                "IdentifierIssuerReference": {
                    "PartyReference": check response?.LegalAssessmentResult?.AssessmentRepresentingDocument?.DocumentIdentification?.IdentifierIssuerReference?.PartyReference,
                    "InvolvementReference": check response?.LegalAssessmentResult?.AssessmentRepresentingDocument?.DocumentIdentification?.IdentifierIssuerReference?.InvolvementReference
                },
                "IdentifierStartDate": {
                    "DateTimeContent": check response?.LegalAssessmentResult?.AssessmentRepresentingDocument?.DocumentIdentification?.IdentifierStartDate?.DateTimeContent,
                    "TimeZoneCode": check response?.LegalAssessmentResult?.AssessmentRepresentingDocument?.DocumentIdentification?.IdentifierStartDate?.TimeZoneCode,
                    "DaylightSavingIndicator": check response?.LegalAssessmentResult?.AssessmentRepresentingDocument?.DocumentIdentification?.IdentifierStartDate?.DaylightSavingIndicator,
                    "DateTimeType": check response?.LegalAssessmentResult?.AssessmentRepresentingDocument?.DocumentIdentification?.IdentifierStartDate?.DateTimeType
                },
                "IdentifierEndDate": {
                    "DateTimeContent": check response?.LegalAssessmentResult?.AssessmentRepresentingDocument?.DocumentIdentification?.IdentifierEndDate?.DateTimeContent,
                    "TimeZoneCode": check response?.LegalAssessmentResult?.AssessmentRepresentingDocument?.DocumentIdentification?.IdentifierEndDate?.TimeZoneCode,
                    "DaylightSavingIndicator": check response?.LegalAssessmentResult?.AssessmentRepresentingDocument?.DocumentIdentification?.IdentifierEndDate?.DaylightSavingIndicator,
                    "DateTimeType": check response?.LegalAssessmentResult?.AssessmentRepresentingDocument?.DocumentIdentification?.IdentifierEndDate?.DateTimeType
                }
            },
            "DocumentVersion": check response?.LegalAssessmentResult?.AssessmentRepresentingDocument?.DocumentVersion,
            "DocumentType": check response?.LegalAssessmentResult?.AssessmentRepresentingDocument?.DocumentType,
            "DocumentStatus": {
                "StatusReason": check response?.LegalAssessmentResult?.AssessmentRepresentingDocument?.DocumentStatus?.StatusReason,
                "StatusDateTime": {
                    "DateTimeContent": check response?.LegalAssessmentResult?.AssessmentRepresentingDocument?.DocumentStatus?.StatusDateTime?.DateTimeContent,
                    "TimeZoneCode": check response?.LegalAssessmentResult?.AssessmentRepresentingDocument?.DocumentStatus?.StatusDateTime?.TimeZoneCode,
                    "DaylightSavingIndicator": check response?.LegalAssessmentResult?.AssessmentRepresentingDocument?.DocumentStatus?.StatusDateTime?.DaylightSavingIndicator,
                    "DateTimeType": check response?.LegalAssessmentResult?.AssessmentRepresentingDocument?.DocumentStatus?.StatusDateTime?.DateTimeType
                },
                "StatusValidityPeriod": {
                    "FromDateTime": {
                        "DateTimeContent": check response?.LegalAssessmentResult?.AssessmentRepresentingDocument?.DocumentStatus?.StatusValidityPeriod?.FromDateTime?.DateTimeContent,
                        "TimeZoneCode": check response?.LegalAssessmentResult?.AssessmentRepresentingDocument?.DocumentStatus?.StatusValidityPeriod?.FromDateTime?.TimeZoneCode,
                        "DaylightSavingIndicator": check response?.LegalAssessmentResult?.AssessmentRepresentingDocument?.DocumentStatus?.StatusValidityPeriod?.FromDateTime?.DaylightSavingIndicator,
                        "DateTimeType": check response?.LegalAssessmentResult?.AssessmentRepresentingDocument?.DocumentStatus?.StatusValidityPeriod?.FromDateTime?.DateTimeType
                    },
                    "ToDateTime": {
                        "DateTimeContent": check response?.LegalAssessmentResult?.AssessmentRepresentingDocument?.DocumentStatus?.StatusValidityPeriod?.ToDateTime?.DateTimeContent,
                        "TimeZoneCode": check response?.LegalAssessmentResult?.AssessmentRepresentingDocument?.DocumentStatus?.StatusValidityPeriod?.ToDateTime?.TimeZoneCode,
                        "DaylightSavingIndicator": check response?.LegalAssessmentResult?.AssessmentRepresentingDocument?.DocumentStatus?.StatusValidityPeriod?.ToDateTime?.DaylightSavingIndicator,
                        "DateTimeType": check response?.LegalAssessmentResult?.AssessmentRepresentingDocument?.DocumentStatus?.StatusValidityPeriod?.ToDateTime?.DateTimeType
                    }
                },
                "StatusInvolvedPartyReference": {
                    "PartyReference": check response?.LegalAssessmentResult?.AssessmentRepresentingDocument?.DocumentStatus?.StatusInvolvedPartyReference?.PartyReference,
                    "InvolvementReference": check response?.LegalAssessmentResult?.AssessmentRepresentingDocument?.DocumentStatus?.StatusInvolvedPartyReference?.InvolvementReference
                }
            },
            "DocumentDateTime": {
                "DateTimeContent": check response?.LegalAssessmentResult?.AssessmentRepresentingDocument?.DocumentDateTime?.DateTimeContent,
                "TimeZoneCode": check response?.LegalAssessmentResult?.AssessmentRepresentingDocument?.DocumentDateTime?.TimeZoneCode,
                "DaylightSavingIndicator": check response?.LegalAssessmentResult?.AssessmentRepresentingDocument?.DocumentDateTime?.DaylightSavingIndicator,
                "DateTimeType": check response?.LegalAssessmentResult?.AssessmentRepresentingDocument?.DocumentDateTime?.DateTimeType
            },
            "DocumentName": {
                "Name": check response?.LegalAssessmentResult?.AssessmentRepresentingDocument?.DocumentName?.Name
            },
            "DocumentDateTimeType": check response?.LegalAssessmentResult?.AssessmentRepresentingDocument?.DocumentDateTimeType,
            "DocumentPurpose": check response?.LegalAssessmentResult?.AssessmentRepresentingDocument?.DocumentPurpose,
            "DocumentFormat": check response?.LegalAssessmentResult?.AssessmentRepresentingDocument?.DocumentFormat,
            "DocumentSubject": check response?.LegalAssessmentResult?.AssessmentRepresentingDocument?.DocumentSubject,
            "DocumentDescription": check response?.LegalAssessmentResult?.AssessmentRepresentingDocument?.DocumentDescription,
            "DocumentValidityPeriod": {
                "FromDateTime": {
                    "DateTimeContent": check response?.LegalAssessmentResult?.AssessmentRepresentingDocument?.DocumentValidityPeriod?.FromDateTime?.DateTimeContent,
                    "TimeZoneCode": check response?.LegalAssessmentResult?.AssessmentRepresentingDocument?.DocumentValidityPeriod?.FromDateTime?.TimeZoneCode,
                    "DaylightSavingIndicator": check response?.LegalAssessmentResult?.AssessmentRepresentingDocument?.DocumentValidityPeriod?.FromDateTime?.DaylightSavingIndicator,
                    "DateTimeType": check response?.LegalAssessmentResult?.AssessmentRepresentingDocument?.DocumentValidityPeriod?.FromDateTime?.DateTimeType
                },
                "ToDateTime": {
                    "DateTimeContent": check response?.LegalAssessmentResult?.AssessmentRepresentingDocument?.DocumentValidityPeriod?.ToDateTime?.DateTimeContent,
                    "TimeZoneCode": check response?.LegalAssessmentResult?.AssessmentRepresentingDocument?.DocumentValidityPeriod?.ToDateTime?.TimeZoneCode,
                    "DaylightSavingIndicator": check response?.LegalAssessmentResult?.AssessmentRepresentingDocument?.DocumentValidityPeriod?.ToDateTime?.DaylightSavingIndicator,
                    "DateTimeType": check response?.LegalAssessmentResult?.AssessmentRepresentingDocument?.DocumentValidityPeriod?.ToDateTime?.DateTimeType
                }
            }
        },
        "AssessmentRequiredAdjustment": check response?.LegalAssessmentResult?.AssessmentRequiredAdjustment,
        "AssessmentRequirement": {
            "RequirementType": check response?.LegalAssessmentResult?.AssessmentRequirement?.RequirementType
        },
        "AssessmentExpiryDate": {
            "DateContent": check response?.LegalAssessmentResult?.AssessmentExpiryDate?.DateContent
        },
        "AssessmentStatus": {
            "StatusReason": check response?.LegalAssessmentResult?.AssessmentStatus?.StatusReason,
            "StatusDateTime": {
                "DateTimeContent": check response?.LegalAssessmentResult?.AssessmentStatus?.StatusDateTime?.DateTimeContent,
                "TimeZoneCode": check response?.LegalAssessmentResult?.AssessmentStatus?.StatusDateTime?.TimeZoneCode,
                "DaylightSavingIndicator": check response?.LegalAssessmentResult?.AssessmentStatus?.StatusDateTime?.DaylightSavingIndicator,
                "DateTimeType": check response?.LegalAssessmentResult?.AssessmentStatus?.StatusDateTime?.DateTimeType
            },
            "StatusValidityPeriod": {
                "FromDateTime": {
                    "DateTimeContent": check response?.LegalAssessmentResult?.AssessmentStatus?.StatusValidityPeriod?.FromDateTime?.DateTimeContent,
                    "TimeZoneCode": check response?.LegalAssessmentResult?.AssessmentStatus?.StatusValidityPeriod?.FromDateTime?.TimeZoneCode,
                    "DaylightSavingIndicator": check response?.LegalAssessmentResult?.AssessmentStatus?.StatusValidityPeriod?.FromDateTime?.DaylightSavingIndicator,
                    "DateTimeType": check response?.LegalAssessmentResult?.AssessmentStatus?.StatusValidityPeriod?.FromDateTime?.DateTimeType
                },
                "ToDateTime": {
                    "DateTimeContent": check response?.LegalAssessmentResult?.AssessmentStatus?.StatusValidityPeriod?.ToDateTime?.DateTimeContent,
                    "TimeZoneCode": check response?.LegalAssessmentResult?.AssessmentStatus?.StatusValidityPeriod?.ToDateTime?.TimeZoneCode,
                    "DaylightSavingIndicator": check response?.LegalAssessmentResult?.AssessmentStatus?.StatusValidityPeriod?.ToDateTime?.DaylightSavingIndicator,
                    "DateTimeType": check response?.LegalAssessmentResult?.AssessmentStatus?.StatusValidityPeriod?.ToDateTime?.DateTimeType
                }
            },
            "StatusInvolvedPartyReference": {
                "PartyReference": check response?.LegalAssessmentResult?.AssessmentStatus?.StatusInvolvedPartyReference?.PartyReference,
                "InvolvementReference": check response?.LegalAssessmentResult?.AssessmentStatus?.StatusInvolvedPartyReference?.InvolvementReference
            }
        },
        "AssessmentIdentification": {
            "IdentifierValue": check response?.LegalAssessmentResult?.AssessmentIdentification?.IdentifierValue,
            "IdentifierIssuerReference": {
                "PartyReference": check response?.LegalAssessmentResult?.AssessmentIdentification?.IdentifierIssuerReference?.PartyReference,
                "InvolvementReference": check response?.LegalAssessmentResult?.AssessmentIdentification?.IdentifierIssuerReference?.InvolvementReference
            },
            "IdentifierStartDate": {
                "DateTimeContent": check response?.LegalAssessmentResult?.AssessmentIdentification?.IdentifierStartDate?.DateTimeContent,
                "TimeZoneCode": check response?.LegalAssessmentResult?.AssessmentIdentification?.IdentifierStartDate?.TimeZoneCode,
                "DaylightSavingIndicator": check response?.LegalAssessmentResult?.AssessmentIdentification?.IdentifierStartDate?.DaylightSavingIndicator,
                "DateTimeType": check response?.LegalAssessmentResult?.AssessmentIdentification?.IdentifierStartDate?.DateTimeType
            },
            "IdentifierEndDate": {
                "DateTimeContent": check response?.LegalAssessmentResult?.AssessmentIdentification?.IdentifierEndDate?.DateTimeContent,
                "TimeZoneCode": check response?.LegalAssessmentResult?.AssessmentIdentification?.IdentifierEndDate?.TimeZoneCode,
                "DaylightSavingIndicator": check response?.LegalAssessmentResult?.AssessmentIdentification?.IdentifierEndDate?.DaylightSavingIndicator,
                "DateTimeType": check response?.LegalAssessmentResult?.AssessmentIdentification?.IdentifierEndDate?.DateTimeType
            }
        }
    }
};
