import ballerinax/financial.bian.attribute.groups.customers as customers;

// This function transforms the JSON response from the API into a CustomerOfferProcedure record defined in the sales module. 
isolated function transformCustomerOfferProcedure(json response) returns customers:CustomerOfferProcedure|error => {
    "CustomerReference": {
        "RelationshipType": check response?.CustomerReference?.RelationshipType,
        "RelationshipValidityPeriod": {
            "FromDateTime": {
                "DateTimeContent": check response?.CustomerReference?.RelationshipValidityPeriod?.FromDateTime?.DateTimeContent,
                "TimeZoneCode": check response?.CustomerReference?.RelationshipValidityPeriod?.FromDateTime?.TimeZoneCode,
                "DaylightSavingIndicator": check response?.CustomerReference?.RelationshipValidityPeriod?.FromDateTime?.DaylightSavingIndicator,
                "DateTimeType": check response?.CustomerReference?.RelationshipValidityPeriod?.FromDateTime?.DateTimeType
            },
            "ToDateTime": {
                "DateTimeContent": check response?.CustomerReference?.RelationshipValidityPeriod?.ToDateTime?.DateTimeContent,
                "TimeZoneCode": check response?.CustomerReference?.RelationshipValidityPeriod?.ToDateTime?.TimeZoneCode,
                "DaylightSavingIndicator": check response?.CustomerReference?.RelationshipValidityPeriod?.ToDateTime?.DaylightSavingIndicator,
                "DateTimeType": check response?.CustomerReference?.RelationshipValidityPeriod?.ToDateTime?.DateTimeType
            }
        },
        "RelationshipStartDate": {
            "DateTimeContent": check response?.CustomerReference?.RelationshipStartDate?.DateTimeContent,
            "TimeZoneCode": check response?.CustomerReference?.RelationshipStartDate?.TimeZoneCode,
            "DaylightSavingIndicator": check response?.CustomerReference?.RelationshipStartDate?.DaylightSavingIndicator,
            "DateTimeType": check response?.CustomerReference?.RelationshipStartDate?.DateTimeType
        },
        "RelationshipEndDate": {
            "DateTimeContent": check response?.CustomerReference?.RelationshipEndDate?.DateTimeContent,
            "TimeZoneCode": check response?.CustomerReference?.RelationshipEndDate?.TimeZoneCode,
            "DaylightSavingIndicator": check response?.CustomerReference?.RelationshipEndDate?.DaylightSavingIndicator,
            "DateTimeType": check response?.CustomerReference?.RelationshipEndDate?.DateTimeType
        },
        "RelationshipLifecycleStatus": {
            "StatusReason": check response?.CustomerReference?.RelationshipLifecycleStatus?.StatusReason,
            "StatusDateTime": {
                "DateTimeContent": check response?.CustomerReference?.RelationshipLifecycleStatus?.StatusDateTime?.DateTimeContent,
                "TimeZoneCode": check response?.CustomerReference?.RelationshipLifecycleStatus?.StatusDateTime?.TimeZoneCode,
                "DaylightSavingIndicator": check response?.CustomerReference?.RelationshipLifecycleStatus?.StatusDateTime?.DaylightSavingIndicator,
                "DateTimeType": check response?.CustomerReference?.RelationshipLifecycleStatus?.StatusDateTime?.DateTimeType
            },
            "StatusValidityPeriod": {
                "FromDateTime": {
                    "DateTimeContent": check response?.CustomerReference?.RelationshipLifecycleStatus?.StatusValidityPeriod?.FromDateTime?.DateTimeContent,
                    "TimeZoneCode": check response?.CustomerReference?.RelationshipLifecycleStatus?.StatusValidityPeriod?.FromDateTime?.TimeZoneCode,
                    "DaylightSavingIndicator": check response?.CustomerReference?.RelationshipLifecycleStatus?.StatusValidityPeriod?.FromDateTime?.DaylightSavingIndicator,
                    "DateTimeType": check response?.CustomerReference?.RelationshipLifecycleStatus?.StatusValidityPeriod?.FromDateTime?.DateTimeType
                },
                "ToDateTime": {
                    "DateTimeContent": check response?.CustomerReference?.RelationshipLifecycleStatus?.StatusValidityPeriod?.ToDateTime?.DateTimeContent,
                    "TimeZoneCode": check response?.CustomerReference?.RelationshipLifecycleStatus?.StatusValidityPeriod?.ToDateTime?.TimeZoneCode,
                    "DaylightSavingIndicator": check response?.CustomerReference?.RelationshipLifecycleStatus?.StatusValidityPeriod?.ToDateTime?.DaylightSavingIndicator,
                    "DateTimeType": check response?.CustomerReference?.RelationshipLifecycleStatus?.StatusValidityPeriod?.ToDateTime?.DateTimeType
                }
            },
            "StatusInvolvedPartyReference": {
                "PartyReference": check response?.CustomerReference?.RelationshipLifecycleStatus?.StatusInvolvedPartyReference?.PartyReference,
                "InvolvementReference": check response?.CustomerReference?.RelationshipLifecycleStatus?.StatusInvolvedPartyReference?.InvolvementReference
            }
        },
        "RelationshipIdentification": {
            "IdentifierValue": check response?.CustomerReference?.RelationshipIdentification?.IdentifierValue,
            "IdentifierIssuerReference": {
                "PartyReference": check response?.CustomerReference?.RelationshipIdentification?.IdentifierIssuerReference?.PartyReference,
                "InvolvementReference": check response?.CustomerReference?.RelationshipIdentification?.IdentifierIssuerReference?.InvolvementReference
            },
            "IdentifierStartDate": {
                "DateTimeContent": check response?.CustomerReference?.RelationshipIdentification?.IdentifierStartDate?.DateTimeContent,
                "TimeZoneCode": check response?.CustomerReference?.RelationshipIdentification?.IdentifierStartDate?.TimeZoneCode,
                "DaylightSavingIndicator": check response?.CustomerReference?.RelationshipIdentification?.IdentifierStartDate?.DaylightSavingIndicator,
                "DateTimeType": check response?.CustomerReference?.RelationshipIdentification?.IdentifierStartDate?.DateTimeType
            },
            "IdentifierEndDate": {
                "DateTimeContent": check response?.CustomerReference?.RelationshipIdentification?.IdentifierEndDate?.DateTimeContent,
                "TimeZoneCode": check response?.CustomerReference?.RelationshipIdentification?.IdentifierEndDate?.TimeZoneCode,
                "DaylightSavingIndicator": check response?.CustomerReference?.RelationshipIdentification?.IdentifierEndDate?.DaylightSavingIndicator,
                "DateTimeType": check response?.CustomerReference?.RelationshipIdentification?.IdentifierEndDate?.DateTimeType
            }
        }
    },
    "PartyReference": {
        "PartyName": {
            "Name": check response?.PartyReference?.PartyName?.Name
        },
        "PartyType": check response?.PartyReference?.PartyType,
        "PartyDateTime": {
            "DateTimeContent": check response?.PartyReference?.PartyDateTime?.DateTimeContent,
            "TimeZoneCode": check response?.PartyReference?.PartyDateTime?.TimeZoneCode,
            "DaylightSavingIndicator": check response?.PartyReference?.PartyDateTime?.DaylightSavingIndicator,
            "DateTimeType": check response?.PartyReference?.PartyDateTime?.DateTimeType
        },
        "PartyIdentification": {
            "PartyIdentificationType": check response?.PartyReference?.PartyIdentification?.PartyIdentificationType,
            "PartyIdentification": {
                "IdentifierValue": check response?.PartyReference?.PartyIdentification?.PartyIdentification?.IdentifierValue,
                "IdentifierIssuerReference": {
                    "PartyReference": check response?.PartyReference?.PartyIdentification?.PartyIdentification?.IdentifierIssuerReference?.PartyReference,
                    "InvolvementReference": check response?.PartyReference?.PartyIdentification?.PartyIdentification?.IdentifierIssuerReference?.InvolvementReference
                },
                "IdentifierStartDate": {
                    "DateTimeContent": check response?.PartyReference?.PartyIdentification?.PartyIdentification?.IdentifierStartDate?.DateTimeContent,
                    "TimeZoneCode": check response?.PartyReference?.PartyIdentification?.PartyIdentification?.IdentifierStartDate?.TimeZoneCode,
                    "DaylightSavingIndicator": check response?.PartyReference?.PartyIdentification?.PartyIdentification?.IdentifierStartDate?.DaylightSavingIndicator,
                    "DateTimeType": check response?.PartyReference?.PartyIdentification?.PartyIdentification?.IdentifierStartDate?.DateTimeType
                },
                "IdentifierEndDate": {
                    "DateTimeContent": check response?.PartyReference?.PartyIdentification?.PartyIdentification?.IdentifierEndDate?.DateTimeContent,
                    "TimeZoneCode": check response?.PartyReference?.PartyIdentification?.PartyIdentification?.IdentifierEndDate?.TimeZoneCode,
                    "DaylightSavingIndicator": check response?.PartyReference?.PartyIdentification?.PartyIdentification?.IdentifierEndDate?.DaylightSavingIndicator,
                    "DateTimeType": check response?.PartyReference?.PartyIdentification?.PartyIdentification?.IdentifierEndDate?.DateTimeType
                }
            }
        },
        "PartyLegalStructureType": check response?.PartyReference?.PartyLegalStructureType,
        "PartyActivityIndicator": {
            "Industrycode": check response?.PartyReference?.PartyActivityIndicator?.Industrycode
        }
    },
    "ProductandServiceType": check response?.ProductandServiceType,
    "CustomerOfferProcessingSchedule": {
        "ScheduleType": check response?.CustomerOfferProcessingSchedule?.ScheduleType
    },
    "CustomerOfferProcessingTask": {
        "WorkstepResult": check response?.CustomerOfferProcessingTask?.WorkstepResult,
        "WorkstepType": {
            "Worksteptypevalues": check response?.CustomerOfferProcessingTask?.WorkstepType?.Worksteptypevalues
        },
        "WorkstepDescription": check response?.CustomerOfferProcessingTask?.WorkstepDescription,
        "WorkstepDateTime": {
            "DateTimeContent": check response?.CustomerOfferProcessingTask?.WorkstepDateTime?.DateTimeContent,
            "TimeZoneCode": check response?.CustomerOfferProcessingTask?.WorkstepDateTime?.TimeZoneCode,
            "DaylightSavingIndicator": check response?.CustomerOfferProcessingTask?.WorkstepDateTime?.DaylightSavingIndicator,
            "DateTimeType": check response?.CustomerOfferProcessingTask?.WorkstepDateTime?.DateTimeType
        },
        "WorkstepStatus": {
            "StatusReason": check response?.CustomerOfferProcessingTask?.WorkstepStatus?.StatusReason,
            "StatusDateTime": {
                "DateTimeContent": check response?.CustomerOfferProcessingTask?.WorkstepStatus?.StatusDateTime?.DateTimeContent,
                "TimeZoneCode": check response?.CustomerOfferProcessingTask?.WorkstepStatus?.StatusDateTime?.TimeZoneCode,
                "DaylightSavingIndicator": check response?.CustomerOfferProcessingTask?.WorkstepStatus?.StatusDateTime?.DaylightSavingIndicator,
                "DateTimeType": check response?.CustomerOfferProcessingTask?.WorkstepStatus?.StatusDateTime?.DateTimeType
            },
            "StatusValidityPeriod": {
                "FromDateTime": {
                    "DateTimeContent": check response?.CustomerOfferProcessingTask?.WorkstepStatus?.StatusValidityPeriod?.FromDateTime?.DateTimeContent,
                    "TimeZoneCode": check response?.CustomerOfferProcessingTask?.WorkstepStatus?.StatusValidityPeriod?.FromDateTime?.TimeZoneCode,
                    "DaylightSavingIndicator": check response?.CustomerOfferProcessingTask?.WorkstepStatus?.StatusValidityPeriod?.FromDateTime?.DaylightSavingIndicator,
                    "DateTimeType": check response?.CustomerOfferProcessingTask?.WorkstepStatus?.StatusValidityPeriod?.FromDateTime?.DateTimeType
                },
                "ToDateTime": {
                    "DateTimeContent": check response?.CustomerOfferProcessingTask?.WorkstepStatus?.StatusValidityPeriod?.ToDateTime?.DateTimeContent,
                    "TimeZoneCode": check response?.CustomerOfferProcessingTask?.WorkstepStatus?.StatusValidityPeriod?.ToDateTime?.TimeZoneCode,
                    "DaylightSavingIndicator": check response?.CustomerOfferProcessingTask?.WorkstepStatus?.StatusValidityPeriod?.ToDateTime?.DaylightSavingIndicator,
                    "DateTimeType": check response?.CustomerOfferProcessingTask?.WorkstepStatus?.StatusValidityPeriod?.ToDateTime?.DateTimeType
                }
            },
            "StatusInvolvedPartyReference": {
                "PartyReference": check response?.CustomerOfferProcessingTask?.WorkstepStatus?.StatusInvolvedPartyReference?.PartyReference,
                "InvolvementReference": check response?.CustomerOfferProcessingTask?.WorkstepStatus?.StatusInvolvedPartyReference?.InvolvementReference
            }
        },
        "WorkstepWorkproduct": {
            "WorkProductType": check response?.CustomerOfferProcessingTask?.WorkstepWorkproduct?.WorkProductType,
            "WorkProductIdentifoication": {
                "IdentifierValue": check response?.CustomerOfferProcessingTask?.WorkstepWorkproduct?.WorkProductIdentifoication?.IdentifierValue,
                "IdentifierIssuerReference": {
                    "PartyReference": check response?.CustomerOfferProcessingTask?.WorkstepWorkproduct?.WorkProductIdentifoication?.IdentifierIssuerReference?.PartyReference,
                    "InvolvementReference": check response?.CustomerOfferProcessingTask?.WorkstepWorkproduct?.WorkProductIdentifoication?.IdentifierIssuerReference?.InvolvementReference
                },
                "IdentifierStartDate": {
                    "DateTimeContent": check response?.CustomerOfferProcessingTask?.WorkstepWorkproduct?.WorkProductIdentifoication?.IdentifierStartDate?.DateTimeContent,
                    "TimeZoneCode": check response?.CustomerOfferProcessingTask?.WorkstepWorkproduct?.WorkProductIdentifoication?.IdentifierStartDate?.TimeZoneCode,
                    "DaylightSavingIndicator": check response?.CustomerOfferProcessingTask?.WorkstepWorkproduct?.WorkProductIdentifoication?.IdentifierStartDate?.DaylightSavingIndicator,
                    "DateTimeType": check response?.CustomerOfferProcessingTask?.WorkstepWorkproduct?.WorkProductIdentifoication?.IdentifierStartDate?.DateTimeType
                },
                "IdentifierEndDate": {
                    "DateTimeContent": check response?.CustomerOfferProcessingTask?.WorkstepWorkproduct?.WorkProductIdentifoication?.IdentifierEndDate?.DateTimeContent,
                    "TimeZoneCode": check response?.CustomerOfferProcessingTask?.WorkstepWorkproduct?.WorkProductIdentifoication?.IdentifierEndDate?.TimeZoneCode,
                    "DaylightSavingIndicator": check response?.CustomerOfferProcessingTask?.WorkstepWorkproduct?.WorkProductIdentifoication?.IdentifierEndDate?.DaylightSavingIndicator,
                    "DateTimeType": check response?.CustomerOfferProcessingTask?.WorkstepWorkproduct?.WorkProductIdentifoication?.IdentifierEndDate?.DateTimeType
                }
            }
        }
    },
    "CustomerOfferProcessingTaskType": {
        "Worksteptypevalues": check response?.CustomerOfferProcessingTaskType?.Worksteptypevalues
    },
    "EmployeeBusinessUnitReference": {
        "PartyReference": check response?.EmployeeBusinessUnitReference?.PartyReference,
        "InvolvementReference": check response?.EmployeeBusinessUnitReference?.InvolvementReference
    },
    "CustomerOfferProcessingTaskWorkProducts": {
        "WorkProductType": check response?.CustomerOfferProcessingTaskWorkProducts?.WorkProductType,
        "WorkProductIdentifoication": {
            "IdentifierValue": check response?.CustomerOfferProcessingTaskWorkProducts?.WorkProductIdentifoication?.IdentifierValue,
            "IdentifierIssuerReference": {
                "PartyReference": check response?.CustomerOfferProcessingTaskWorkProducts?.WorkProductIdentifoication?.IdentifierIssuerReference?.PartyReference,
                "InvolvementReference": check response?.CustomerOfferProcessingTaskWorkProducts?.WorkProductIdentifoication?.IdentifierIssuerReference?.InvolvementReference
            },
            "IdentifierStartDate": {
                "DateTimeContent": check response?.CustomerOfferProcessingTaskWorkProducts?.WorkProductIdentifoication?.IdentifierStartDate?.DateTimeContent,
                "TimeZoneCode": check response?.CustomerOfferProcessingTaskWorkProducts?.WorkProductIdentifoication?.IdentifierStartDate?.TimeZoneCode,
                "DaylightSavingIndicator": check response?.CustomerOfferProcessingTaskWorkProducts?.WorkProductIdentifoication?.IdentifierStartDate?.DaylightSavingIndicator,
                "DateTimeType": check response?.CustomerOfferProcessingTaskWorkProducts?.WorkProductIdentifoication?.IdentifierStartDate?.DateTimeType
            },
            "IdentifierEndDate": {
                "DateTimeContent": check response?.CustomerOfferProcessingTaskWorkProducts?.WorkProductIdentifoication?.IdentifierEndDate?.DateTimeContent,
                "TimeZoneCode": check response?.CustomerOfferProcessingTaskWorkProducts?.WorkProductIdentifoication?.IdentifierEndDate?.TimeZoneCode,
                "DaylightSavingIndicator": check response?.CustomerOfferProcessingTaskWorkProducts?.WorkProductIdentifoication?.IdentifierEndDate?.DaylightSavingIndicator,
                "DateTimeType": check response?.CustomerOfferProcessingTaskWorkProducts?.WorkProductIdentifoication?.IdentifierEndDate?.DateTimeType
            }
        }
    },
    "CustomerOfferProcessingTaskResult": check response?.CustomerOfferProcessingTaskResult,
    "CustomerOfferInvolvedParty": {
        "InvolvementType": check response?.CustomerOfferInvolvedParty?.InvolvementType,
        "PartyReference": {
            "PartyName": {
                "Name": check response?.CustomerOfferInvolvedParty?.PartyReference?.PartyName?.Name
            },
            "PartyType": check response?.CustomerOfferInvolvedParty?.PartyReference?.PartyType,
            "PartyDateTime": {
                "DateTimeContent": check response?.CustomerOfferInvolvedParty?.PartyReference?.PartyDateTime?.DateTimeContent,
                "TimeZoneCode": check response?.CustomerOfferInvolvedParty?.PartyReference?.PartyDateTime?.TimeZoneCode,
                "DaylightSavingIndicator": check response?.CustomerOfferInvolvedParty?.PartyReference?.PartyDateTime?.DaylightSavingIndicator,
                "DateTimeType": check response?.CustomerOfferInvolvedParty?.PartyReference?.PartyDateTime?.DateTimeType
            },
            "PartyIdentification": {
                "PartyIdentificationType": check response?.CustomerOfferInvolvedParty?.PartyReference?.PartyIdentification?.PartyIdentificationType,
                "PartyIdentification": {
                    "IdentifierValue": check response?.CustomerOfferInvolvedParty?.PartyReference?.PartyIdentification?.PartyIdentification?.IdentifierValue,
                    "IdentifierIssuerReference": {
                        "PartyReference": check response?.CustomerOfferInvolvedParty?.PartyReference?.PartyIdentification?.PartyIdentification?.IdentifierIssuerReference?.PartyReference,
                        "InvolvementReference": check response?.CustomerOfferInvolvedParty?.PartyReference?.PartyIdentification?.PartyIdentification?.IdentifierIssuerReference?.InvolvementReference
                    },
                    "IdentifierStartDate": {
                        "DateTimeContent": check response?.CustomerOfferInvolvedParty?.PartyReference?.PartyIdentification?.PartyIdentification?.IdentifierStartDate?.DateTimeContent,
                        "TimeZoneCode": check response?.CustomerOfferInvolvedParty?.PartyReference?.PartyIdentification?.PartyIdentification?.IdentifierStartDate?.TimeZoneCode,
                        "DaylightSavingIndicator": check response?.CustomerOfferInvolvedParty?.PartyReference?.PartyIdentification?.PartyIdentification?.IdentifierStartDate?.DaylightSavingIndicator,
                        "DateTimeType": check response?.CustomerOfferInvolvedParty?.PartyReference?.PartyIdentification?.PartyIdentification?.IdentifierStartDate?.DateTimeType
                    },
                    "IdentifierEndDate": {
                        "DateTimeContent": check response?.CustomerOfferInvolvedParty?.PartyReference?.PartyIdentification?.PartyIdentification?.IdentifierEndDate?.DateTimeContent,
                        "TimeZoneCode": check response?.CustomerOfferInvolvedParty?.PartyReference?.PartyIdentification?.PartyIdentification?.IdentifierEndDate?.TimeZoneCode,
                        "DaylightSavingIndicator": check response?.CustomerOfferInvolvedParty?.PartyReference?.PartyIdentification?.PartyIdentification?.IdentifierEndDate?.DaylightSavingIndicator,
                        "DateTimeType": check response?.CustomerOfferInvolvedParty?.PartyReference?.PartyIdentification?.PartyIdentification?.IdentifierEndDate?.DateTimeType
                    }
                }
            },
            "PartyLegalStructureType": check response?.CustomerOfferInvolvedParty?.PartyReference?.PartyLegalStructureType,
            "PartyActivityIndicator": {
                "Industrycode": check response?.CustomerOfferInvolvedParty?.PartyReference?.PartyActivityIndicator?.Industrycode
            }
        },
        "CustomerOfferReference": {
            "OfferIdentification": {
                "IdentifierValue": check response?.CustomerOfferInvolvedParty?.CustomerOfferReference?.OfferIdentification?.IdentifierValue,
                "IdentifierIssuerReference": {
                    "PartyReference": check response?.CustomerOfferInvolvedParty?.CustomerOfferReference?.OfferIdentification?.IdentifierIssuerReference?.PartyReference,
                    "InvolvementReference": check response?.CustomerOfferInvolvedParty?.CustomerOfferReference?.OfferIdentification?.IdentifierIssuerReference?.InvolvementReference
                },
                "IdentifierStartDate": {
                    "DateTimeContent": check response?.CustomerOfferInvolvedParty?.CustomerOfferReference?.OfferIdentification?.IdentifierStartDate?.DateTimeContent,
                    "TimeZoneCode": check response?.CustomerOfferInvolvedParty?.CustomerOfferReference?.OfferIdentification?.IdentifierStartDate?.TimeZoneCode,
                    "DaylightSavingIndicator": check response?.CustomerOfferInvolvedParty?.CustomerOfferReference?.OfferIdentification?.IdentifierStartDate?.DaylightSavingIndicator,
                    "DateTimeType": check response?.CustomerOfferInvolvedParty?.CustomerOfferReference?.OfferIdentification?.IdentifierStartDate?.DateTimeType
                },
                "IdentifierEndDate": {
                    "DateTimeContent": check response?.CustomerOfferInvolvedParty?.CustomerOfferReference?.OfferIdentification?.IdentifierEndDate?.DateTimeContent,
                    "TimeZoneCode": check response?.CustomerOfferInvolvedParty?.CustomerOfferReference?.OfferIdentification?.IdentifierEndDate?.TimeZoneCode,
                    "DaylightSavingIndicator": check response?.CustomerOfferInvolvedParty?.CustomerOfferReference?.OfferIdentification?.IdentifierEndDate?.DaylightSavingIndicator,
                    "DateTimeType": check response?.CustomerOfferInvolvedParty?.CustomerOfferReference?.OfferIdentification?.IdentifierEndDate?.DateTimeType
                }
            },
            "OfferType": check response?.CustomerOfferInvolvedParty?.CustomerOfferReference?.OfferType,
            "OfferDescription": check response?.CustomerOfferInvolvedParty?.CustomerOfferReference?.OfferDescription,
            "OfferStartDate": {
                "DateTimeContent": check response?.CustomerOfferInvolvedParty?.CustomerOfferReference?.OfferStartDate?.DateTimeContent,
                "TimeZoneCode": check response?.CustomerOfferInvolvedParty?.CustomerOfferReference?.OfferStartDate?.TimeZoneCode,
                "DaylightSavingIndicator": check response?.CustomerOfferInvolvedParty?.CustomerOfferReference?.OfferStartDate?.DaylightSavingIndicator,
                "DateTimeType": check response?.CustomerOfferInvolvedParty?.CustomerOfferReference?.OfferStartDate?.DateTimeType
            },
            "OfferEndDate": {
                "DateTimeContent": check response?.CustomerOfferInvolvedParty?.CustomerOfferReference?.OfferEndDate?.DateTimeContent,
                "TimeZoneCode": check response?.CustomerOfferInvolvedParty?.CustomerOfferReference?.OfferEndDate?.TimeZoneCode,
                "DaylightSavingIndicator": check response?.CustomerOfferInvolvedParty?.CustomerOfferReference?.OfferEndDate?.DaylightSavingIndicator,
                "DateTimeType": check response?.CustomerOfferInvolvedParty?.CustomerOfferReference?.OfferEndDate?.DateTimeType
            },
            "OfferRate": {
                "RateValue": check response?.CustomerOfferInvolvedParty?.CustomerOfferReference?.OfferRate?.RateValue,
                "RateUnit": check response?.CustomerOfferInvolvedParty?.CustomerOfferReference?.OfferRate?.RateUnit,
                "RatePeriod": {
                    "FromDateTime": {
                        "DateTimeContent": check response?.CustomerOfferInvolvedParty?.CustomerOfferReference?.OfferRate?.RatePeriod?.FromDateTime?.DateTimeContent,
                        "TimeZoneCode": check response?.CustomerOfferInvolvedParty?.CustomerOfferReference?.OfferRate?.RatePeriod?.FromDateTime?.TimeZoneCode,
                        "DaylightSavingIndicator": check response?.CustomerOfferInvolvedParty?.CustomerOfferReference?.OfferRate?.RatePeriod?.FromDateTime?.DaylightSavingIndicator,
                        "DateTimeType": check response?.CustomerOfferInvolvedParty?.CustomerOfferReference?.OfferRate?.RatePeriod?.FromDateTime?.DateTimeType
                    },
                    "ToDateTime": {
                        "DateTimeContent": check response?.CustomerOfferInvolvedParty?.CustomerOfferReference?.OfferRate?.RatePeriod?.ToDateTime?.DateTimeContent,
                        "TimeZoneCode": check response?.CustomerOfferInvolvedParty?.CustomerOfferReference?.OfferRate?.RatePeriod?.ToDateTime?.TimeZoneCode,
                        "DaylightSavingIndicator": check response?.CustomerOfferInvolvedParty?.CustomerOfferReference?.OfferRate?.RatePeriod?.ToDateTime?.DaylightSavingIndicator,
                        "DateTimeType": check response?.CustomerOfferInvolvedParty?.CustomerOfferReference?.OfferRate?.RatePeriod?.ToDateTime?.DateTimeType
                    }
                },
                "RateCapitalUnit": check response?.CustomerOfferInvolvedParty?.CustomerOfferReference?.OfferRate?.RateCapitalUnit
            },
            "OfferValue": check response?.CustomerOfferInvolvedParty?.CustomerOfferReference?.OfferValue,
            "OfferTermAndCondition": {
                "ConditionIdentification": {
                    "IdentifierValue": check response?.CustomerOfferInvolvedParty?.CustomerOfferReference?.OfferTermAndCondition?.ConditionIdentification?.IdentifierValue,
                    "IdentifierIssuerReference": {
                        "PartyReference": check response?.CustomerOfferInvolvedParty?.CustomerOfferReference?.OfferTermAndCondition?.ConditionIdentification?.IdentifierIssuerReference?.PartyReference,
                        "InvolvementReference": check response?.CustomerOfferInvolvedParty?.CustomerOfferReference?.OfferTermAndCondition?.ConditionIdentification?.IdentifierIssuerReference?.InvolvementReference
                    },
                    "IdentifierStartDate": {
                        "DateTimeContent": check response?.CustomerOfferInvolvedParty?.CustomerOfferReference?.OfferTermAndCondition?.ConditionIdentification?.IdentifierStartDate?.DateTimeContent,
                        "TimeZoneCode": check response?.CustomerOfferInvolvedParty?.CustomerOfferReference?.OfferTermAndCondition?.ConditionIdentification?.IdentifierStartDate?.TimeZoneCode,
                        "DaylightSavingIndicator": check response?.CustomerOfferInvolvedParty?.CustomerOfferReference?.OfferTermAndCondition?.ConditionIdentification?.IdentifierStartDate?.DaylightSavingIndicator,
                        "DateTimeType": check response?.CustomerOfferInvolvedParty?.CustomerOfferReference?.OfferTermAndCondition?.ConditionIdentification?.IdentifierStartDate?.DateTimeType
                    },
                    "IdentifierEndDate": {
                        "DateTimeContent": check response?.CustomerOfferInvolvedParty?.CustomerOfferReference?.OfferTermAndCondition?.ConditionIdentification?.IdentifierEndDate?.DateTimeContent,
                        "TimeZoneCode": check response?.CustomerOfferInvolvedParty?.CustomerOfferReference?.OfferTermAndCondition?.ConditionIdentification?.IdentifierEndDate?.TimeZoneCode,
                        "DaylightSavingIndicator": check response?.CustomerOfferInvolvedParty?.CustomerOfferReference?.OfferTermAndCondition?.ConditionIdentification?.IdentifierEndDate?.DaylightSavingIndicator,
                        "DateTimeType": check response?.CustomerOfferInvolvedParty?.CustomerOfferReference?.OfferTermAndCondition?.ConditionIdentification?.IdentifierEndDate?.DateTimeType
                    }
                },
                "ConditionName": {
                    "Name": check response?.CustomerOfferInvolvedParty?.CustomerOfferReference?.OfferTermAndCondition?.ConditionName?.Name
                },
                "ConditionValidityPeriod": {
                    "FromDateTime": {
                        "DateTimeContent": check response?.CustomerOfferInvolvedParty?.CustomerOfferReference?.OfferTermAndCondition?.ConditionValidityPeriod?.FromDateTime?.DateTimeContent,
                        "TimeZoneCode": check response?.CustomerOfferInvolvedParty?.CustomerOfferReference?.OfferTermAndCondition?.ConditionValidityPeriod?.FromDateTime?.TimeZoneCode,
                        "DaylightSavingIndicator": check response?.CustomerOfferInvolvedParty?.CustomerOfferReference?.OfferTermAndCondition?.ConditionValidityPeriod?.FromDateTime?.DaylightSavingIndicator,
                        "DateTimeType": check response?.CustomerOfferInvolvedParty?.CustomerOfferReference?.OfferTermAndCondition?.ConditionValidityPeriod?.FromDateTime?.DateTimeType
                    },
                    "ToDateTime": {
                        "DateTimeContent": check response?.CustomerOfferInvolvedParty?.CustomerOfferReference?.OfferTermAndCondition?.ConditionValidityPeriod?.ToDateTime?.DateTimeContent,
                        "TimeZoneCode": check response?.CustomerOfferInvolvedParty?.CustomerOfferReference?.OfferTermAndCondition?.ConditionValidityPeriod?.ToDateTime?.TimeZoneCode,
                        "DaylightSavingIndicator": check response?.CustomerOfferInvolvedParty?.CustomerOfferReference?.OfferTermAndCondition?.ConditionValidityPeriod?.ToDateTime?.DaylightSavingIndicator,
                        "DateTimeType": check response?.CustomerOfferInvolvedParty?.CustomerOfferReference?.OfferTermAndCondition?.ConditionValidityPeriod?.ToDateTime?.DateTimeType
                    }
                },
                "ConditionDateAndTime": {
                    "DateTimeContent": check response?.CustomerOfferInvolvedParty?.CustomerOfferReference?.OfferTermAndCondition?.ConditionDateAndTime?.DateTimeContent,
                    "TimeZoneCode": check response?.CustomerOfferInvolvedParty?.CustomerOfferReference?.OfferTermAndCondition?.ConditionDateAndTime?.TimeZoneCode,
                    "DaylightSavingIndicator": check response?.CustomerOfferInvolvedParty?.CustomerOfferReference?.OfferTermAndCondition?.ConditionDateAndTime?.DaylightSavingIndicator,
                    "DateTimeType": check response?.CustomerOfferInvolvedParty?.CustomerOfferReference?.OfferTermAndCondition?.ConditionDateAndTime?.DateTimeType
                },
                "ConditionStatus": check response?.CustomerOfferInvolvedParty?.CustomerOfferReference?.OfferTermAndCondition?.ConditionStatus,
                "ConditionDescription": check response?.CustomerOfferInvolvedParty?.CustomerOfferReference?.OfferTermAndCondition?.ConditionDescription,
                "ConditionType": check response?.CustomerOfferInvolvedParty?.CustomerOfferReference?.OfferTermAndCondition?.ConditionType,
                "FeatureType": check response?.CustomerOfferInvolvedParty?.CustomerOfferReference?.OfferTermAndCondition?.FeatureType,
                "FeatureIdentification": {
                    "IdentifierValue": check response?.CustomerOfferInvolvedParty?.CustomerOfferReference?.OfferTermAndCondition?.FeatureIdentification?.IdentifierValue,
                    "IdentifierIssuerReference": {
                        "PartyReference": check response?.CustomerOfferInvolvedParty?.CustomerOfferReference?.OfferTermAndCondition?.FeatureIdentification?.IdentifierIssuerReference?.PartyReference,
                        "InvolvementReference": check response?.CustomerOfferInvolvedParty?.CustomerOfferReference?.OfferTermAndCondition?.FeatureIdentification?.IdentifierIssuerReference?.InvolvementReference
                    },
                    "IdentifierStartDate": {
                        "DateTimeContent": check response?.CustomerOfferInvolvedParty?.CustomerOfferReference?.OfferTermAndCondition?.FeatureIdentification?.IdentifierStartDate?.DateTimeContent,
                        "TimeZoneCode": check response?.CustomerOfferInvolvedParty?.CustomerOfferReference?.OfferTermAndCondition?.FeatureIdentification?.IdentifierStartDate?.TimeZoneCode,
                        "DaylightSavingIndicator": check response?.CustomerOfferInvolvedParty?.CustomerOfferReference?.OfferTermAndCondition?.FeatureIdentification?.IdentifierStartDate?.DaylightSavingIndicator,
                        "DateTimeType": check response?.CustomerOfferInvolvedParty?.CustomerOfferReference?.OfferTermAndCondition?.FeatureIdentification?.IdentifierStartDate?.DateTimeType
                    },
                    "IdentifierEndDate": {
                        "DateTimeContent": check response?.CustomerOfferInvolvedParty?.CustomerOfferReference?.OfferTermAndCondition?.FeatureIdentification?.IdentifierEndDate?.DateTimeContent,
                        "TimeZoneCode": check response?.CustomerOfferInvolvedParty?.CustomerOfferReference?.OfferTermAndCondition?.FeatureIdentification?.IdentifierEndDate?.TimeZoneCode,
                        "DaylightSavingIndicator": check response?.CustomerOfferInvolvedParty?.CustomerOfferReference?.OfferTermAndCondition?.FeatureIdentification?.IdentifierEndDate?.DaylightSavingIndicator,
                        "DateTimeType": check response?.CustomerOfferInvolvedParty?.CustomerOfferReference?.OfferTermAndCondition?.FeatureIdentification?.IdentifierEndDate?.DateTimeType
                    }
                },
                "FeatureName": {
                    "Name": check response?.CustomerOfferInvolvedParty?.CustomerOfferReference?.OfferTermAndCondition?.FeatureName?.Name
                },
                "FeatureLifecycleStatus": {
                    "StatusReason": check response?.CustomerOfferInvolvedParty?.CustomerOfferReference?.OfferTermAndCondition?.FeatureLifecycleStatus?.StatusReason,
                    "StatusDateTime": {
                        "DateTimeContent": check response?.CustomerOfferInvolvedParty?.CustomerOfferReference?.OfferTermAndCondition?.FeatureLifecycleStatus?.StatusDateTime?.DateTimeContent,
                        "TimeZoneCode": check response?.CustomerOfferInvolvedParty?.CustomerOfferReference?.OfferTermAndCondition?.FeatureLifecycleStatus?.StatusDateTime?.TimeZoneCode,
                        "DaylightSavingIndicator": check response?.CustomerOfferInvolvedParty?.CustomerOfferReference?.OfferTermAndCondition?.FeatureLifecycleStatus?.StatusDateTime?.DaylightSavingIndicator,
                        "DateTimeType": check response?.CustomerOfferInvolvedParty?.CustomerOfferReference?.OfferTermAndCondition?.FeatureLifecycleStatus?.StatusDateTime?.DateTimeType
                    },
                    "StatusValidityPeriod": {
                        "FromDateTime": {
                            "DateTimeContent": check response?.CustomerOfferInvolvedParty?.CustomerOfferReference?.OfferTermAndCondition?.FeatureLifecycleStatus?.StatusValidityPeriod?.FromDateTime?.DateTimeContent,
                            "TimeZoneCode": check response?.CustomerOfferInvolvedParty?.CustomerOfferReference?.OfferTermAndCondition?.FeatureLifecycleStatus?.StatusValidityPeriod?.FromDateTime?.TimeZoneCode,
                            "DaylightSavingIndicator": check response?.CustomerOfferInvolvedParty?.CustomerOfferReference?.OfferTermAndCondition?.FeatureLifecycleStatus?.StatusValidityPeriod?.FromDateTime?.DaylightSavingIndicator,
                            "DateTimeType": check response?.CustomerOfferInvolvedParty?.CustomerOfferReference?.OfferTermAndCondition?.FeatureLifecycleStatus?.StatusValidityPeriod?.FromDateTime?.DateTimeType
                        },
                        "ToDateTime": {
                            "DateTimeContent": check response?.CustomerOfferInvolvedParty?.CustomerOfferReference?.OfferTermAndCondition?.FeatureLifecycleStatus?.StatusValidityPeriod?.ToDateTime?.DateTimeContent,
                            "TimeZoneCode": check response?.CustomerOfferInvolvedParty?.CustomerOfferReference?.OfferTermAndCondition?.FeatureLifecycleStatus?.StatusValidityPeriod?.ToDateTime?.TimeZoneCode,
                            "DaylightSavingIndicator": check response?.CustomerOfferInvolvedParty?.CustomerOfferReference?.OfferTermAndCondition?.FeatureLifecycleStatus?.StatusValidityPeriod?.ToDateTime?.DaylightSavingIndicator,
                            "DateTimeType": check response?.CustomerOfferInvolvedParty?.CustomerOfferReference?.OfferTermAndCondition?.FeatureLifecycleStatus?.StatusValidityPeriod?.ToDateTime?.DateTimeType
                        }
                    },
                    "StatusInvolvedPartyReference": {
                        "PartyReference": check response?.CustomerOfferInvolvedParty?.CustomerOfferReference?.OfferTermAndCondition?.FeatureLifecycleStatus?.StatusInvolvedPartyReference?.PartyReference,
                        "InvolvementReference": check response?.CustomerOfferInvolvedParty?.CustomerOfferReference?.OfferTermAndCondition?.FeatureLifecycleStatus?.StatusInvolvedPartyReference?.InvolvementReference
                    }
                },
                "FeatureDescription": check response?.CustomerOfferInvolvedParty?.CustomerOfferReference?.OfferTermAndCondition?.FeatureDescription
            },
            "OfferAmount": {
                "AmountValue": check response?.CustomerOfferInvolvedParty?.CustomerOfferReference?.OfferAmount?.AmountValue,
                "AmountCurrency": {
                    "Currencycode": check response?.CustomerOfferInvolvedParty?.CustomerOfferReference?.OfferAmount?.AmountCurrency?.Currencycode
                },
                "DecimalPointPosition": check response?.CustomerOfferInvolvedParty?.CustomerOfferReference?.OfferAmount?.DecimalPointPosition,
                "AmountType": check response?.CustomerOfferInvolvedParty?.CustomerOfferReference?.OfferAmount?.AmountType
            }
        }
    },
    "CustomerOfferReference": {
        "CustomerOffer": check response?.CustomerOfferReference?.CustomerOffer
    },
    "ProductAgreementReference": {
        "ProductAgreementType": check response?.ProductAgreementReference?.ProductAgreementType,
        "ProductAgreementIdentification": {
            "IdentifierValue": check response?.ProductAgreementReference?.ProductAgreementIdentification?.IdentifierValue,
            "IdentifierIssuerReference": {
                "PartyReference": check response?.ProductAgreementReference?.ProductAgreementIdentification?.IdentifierIssuerReference?.PartyReference,
                "InvolvementReference": check response?.ProductAgreementReference?.ProductAgreementIdentification?.IdentifierIssuerReference?.InvolvementReference
            },
            "IdentifierStartDate": {
                "DateTimeContent": check response?.ProductAgreementReference?.ProductAgreementIdentification?.IdentifierStartDate?.DateTimeContent,
                "TimeZoneCode": check response?.ProductAgreementReference?.ProductAgreementIdentification?.IdentifierStartDate?.TimeZoneCode,
                "DaylightSavingIndicator": check response?.ProductAgreementReference?.ProductAgreementIdentification?.IdentifierStartDate?.DaylightSavingIndicator,
                "DateTimeType": check response?.ProductAgreementReference?.ProductAgreementIdentification?.IdentifierStartDate?.DateTimeType
            },
            "IdentifierEndDate": {
                "DateTimeContent": check response?.ProductAgreementReference?.ProductAgreementIdentification?.IdentifierEndDate?.DateTimeContent,
                "TimeZoneCode": check response?.ProductAgreementReference?.ProductAgreementIdentification?.IdentifierEndDate?.TimeZoneCode,
                "DaylightSavingIndicator": check response?.ProductAgreementReference?.ProductAgreementIdentification?.IdentifierEndDate?.DaylightSavingIndicator,
                "DateTimeType": check response?.ProductAgreementReference?.ProductAgreementIdentification?.IdentifierEndDate?.DateTimeType
            }
        },
        "AgreementSignedDate": {
            "DateContent": check response?.ProductAgreementReference?.AgreementSignedDate?.DateContent
        },
        "AgreementType": check response?.ProductAgreementReference?.AgreementType,
        "AgreementValidityPeriod": {
            "FromDateTime": {
                "DateTimeContent": check response?.ProductAgreementReference?.AgreementValidityPeriod?.FromDateTime?.DateTimeContent,
                "TimeZoneCode": check response?.ProductAgreementReference?.AgreementValidityPeriod?.FromDateTime?.TimeZoneCode,
                "DaylightSavingIndicator": check response?.ProductAgreementReference?.AgreementValidityPeriod?.FromDateTime?.DaylightSavingIndicator,
                "DateTimeType": check response?.ProductAgreementReference?.AgreementValidityPeriod?.FromDateTime?.DateTimeType
            },
            "ToDateTime": {
                "DateTimeContent": check response?.ProductAgreementReference?.AgreementValidityPeriod?.ToDateTime?.DateTimeContent,
                "TimeZoneCode": check response?.ProductAgreementReference?.AgreementValidityPeriod?.ToDateTime?.TimeZoneCode,
                "DaylightSavingIndicator": check response?.ProductAgreementReference?.AgreementValidityPeriod?.ToDateTime?.DaylightSavingIndicator,
                "DateTimeType": check response?.ProductAgreementReference?.AgreementValidityPeriod?.ToDateTime?.DateTimeType
            }
        },
        "AgreementVersion": check response?.ProductAgreementReference?.AgreementVersion,
        "AgreementStatus": {
            "AgreementStatus": {
                "StatusReason": check response?.ProductAgreementReference?.AgreementStatus?.AgreementStatus?.StatusReason,
                "StatusDateTime": {
                    "DateTimeContent": check response?.ProductAgreementReference?.AgreementStatus?.AgreementStatus?.StatusDateTime?.DateTimeContent,
                    "TimeZoneCode": check response?.ProductAgreementReference?.AgreementStatus?.AgreementStatus?.StatusDateTime?.TimeZoneCode,
                    "DaylightSavingIndicator": check response?.ProductAgreementReference?.AgreementStatus?.AgreementStatus?.StatusDateTime?.DaylightSavingIndicator,
                    "DateTimeType": check response?.ProductAgreementReference?.AgreementStatus?.AgreementStatus?.StatusDateTime?.DateTimeType
                },
                "StatusValidityPeriod": {
                    "FromDateTime": {
                        "DateTimeContent": check response?.ProductAgreementReference?.AgreementStatus?.AgreementStatus?.StatusValidityPeriod?.FromDateTime?.DateTimeContent,
                        "TimeZoneCode": check response?.ProductAgreementReference?.AgreementStatus?.AgreementStatus?.StatusValidityPeriod?.FromDateTime?.TimeZoneCode,
                        "DaylightSavingIndicator": check response?.ProductAgreementReference?.AgreementStatus?.AgreementStatus?.StatusValidityPeriod?.FromDateTime?.DaylightSavingIndicator,
                        "DateTimeType": check response?.ProductAgreementReference?.AgreementStatus?.AgreementStatus?.StatusValidityPeriod?.FromDateTime?.DateTimeType
                    },
                    "ToDateTime": {
                        "DateTimeContent": check response?.ProductAgreementReference?.AgreementStatus?.AgreementStatus?.StatusValidityPeriod?.ToDateTime?.DateTimeContent,
                        "TimeZoneCode": check response?.ProductAgreementReference?.AgreementStatus?.AgreementStatus?.StatusValidityPeriod?.ToDateTime?.TimeZoneCode,
                        "DaylightSavingIndicator": check response?.ProductAgreementReference?.AgreementStatus?.AgreementStatus?.StatusValidityPeriod?.ToDateTime?.DaylightSavingIndicator,
                        "DateTimeType": check response?.ProductAgreementReference?.AgreementStatus?.AgreementStatus?.StatusValidityPeriod?.ToDateTime?.DateTimeType
                    }
                },
                "StatusInvolvedPartyReference": {
                    "PartyReference": check response?.ProductAgreementReference?.AgreementStatus?.AgreementStatus?.StatusInvolvedPartyReference?.PartyReference,
                    "InvolvementReference": check response?.ProductAgreementReference?.AgreementStatus?.AgreementStatus?.StatusInvolvedPartyReference?.InvolvementReference
                }
            },
            "AgreementStatusType": check response?.ProductAgreementReference?.AgreementStatus?.AgreementStatusType
        },
        "AgreementSubjectMatter": check response?.ProductAgreementReference?.AgreementSubjectMatter,
        "AgreementIdentification": {
            "IdentifierValue": check response?.ProductAgreementReference?.AgreementIdentification?.IdentifierValue,
            "IdentifierIssuerReference": {
                "PartyReference": check response?.ProductAgreementReference?.AgreementIdentification?.IdentifierIssuerReference?.PartyReference,
                "InvolvementReference": check response?.ProductAgreementReference?.AgreementIdentification?.IdentifierIssuerReference?.InvolvementReference
            },
            "IdentifierStartDate": {
                "DateTimeContent": check response?.ProductAgreementReference?.AgreementIdentification?.IdentifierStartDate?.DateTimeContent,
                "TimeZoneCode": check response?.ProductAgreementReference?.AgreementIdentification?.IdentifierStartDate?.TimeZoneCode,
                "DaylightSavingIndicator": check response?.ProductAgreementReference?.AgreementIdentification?.IdentifierStartDate?.DaylightSavingIndicator,
                "DateTimeType": check response?.ProductAgreementReference?.AgreementIdentification?.IdentifierStartDate?.DateTimeType
            },
            "IdentifierEndDate": {
                "DateTimeContent": check response?.ProductAgreementReference?.AgreementIdentification?.IdentifierEndDate?.DateTimeContent,
                "TimeZoneCode": check response?.ProductAgreementReference?.AgreementIdentification?.IdentifierEndDate?.TimeZoneCode,
                "DaylightSavingIndicator": check response?.ProductAgreementReference?.AgreementIdentification?.IdentifierEndDate?.DaylightSavingIndicator,
                "DateTimeType": check response?.ProductAgreementReference?.AgreementIdentification?.IdentifierEndDate?.DateTimeType
            }
        },
        "AgreementDate": {
            "DateTimeContent": check response?.ProductAgreementReference?.AgreementDate?.DateTimeContent,
            "TimeZoneCode": check response?.ProductAgreementReference?.AgreementDate?.TimeZoneCode,
            "DaylightSavingIndicator": check response?.ProductAgreementReference?.AgreementDate?.DaylightSavingIndicator,
            "DateTimeType": check response?.ProductAgreementReference?.AgreementDate?.DateTimeType
        },
        "AgreementDescription": check response?.ProductAgreementReference?.AgreementDescription
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
    }
};
