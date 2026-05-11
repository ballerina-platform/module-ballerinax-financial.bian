import ballerinax/financial.bian.attribute.groups.customers as customers;

isolated function transformCustomerProductAndServiceEligibilityResponse(json response) returns customers:EligibilityCheck|error => {
    "CustomerReference": {
        "PartyReference": {
            "PartyName": {
                "Name": check response?.CustomerReference?.PartyReference?.PartyName?.Name
            },
            "PartyType": check response?.CustomerReference?.PartyReference?.PartyType,
            "PartyDateTime": {
                "DateTimeContent": {
                    "Text": check response?.CustomerReference?.PartyReference?.PartyDateTime?.DateTimeContent?.Text
                },
                "TimeZoneCode": {
                    "Text": check response?.CustomerReference?.PartyReference?.PartyDateTime?.TimeZoneCode?.Text
                },
                "DaylightSavingIndicator": {
                    "Text": check response?.CustomerReference?.PartyReference?.PartyDateTime?.DaylightSavingIndicator?.Text
                },
                "DateTimeType": check response?.CustomerReference?.PartyReference?.PartyDateTime?.DateTimeType
            },
            "PartyIdentification": {
                "PartyIdentificationType": check response?.CustomerReference?.PartyReference?.PartyIdentification?.PartyIdentificationType,
                "PartyIdentification": {
                    "IdentifierValue": {
                        "Value": check response?.CustomerReference?.PartyReference?.PartyIdentification?.PartyIdentification?.IdentifierValue?.Value
                    },
                    "IdentifierIssuingAuthority": check response?.CustomerReference?.PartyReference?.PartyIdentification?.PartyIdentification?.IdentifierIssuingAuthority,
                    "IdentifierStartDate": {
                        "DateTimeContent": {
                            "Text": check response?.CustomerReference?.PartyReference?.PartyIdentification?.PartyIdentification?.IdentifierStartDate?.DateTimeContent?.Text
                        },
                        "TimeZoneCode": {
                            "Text": check response?.CustomerReference?.PartyReference?.PartyIdentification?.PartyIdentification?.IdentifierStartDate?.TimeZoneCode?.Text
                        },
                        "DaylightSavingIndicator": {
                            "Text": check response?.CustomerReference?.PartyReference?.PartyIdentification?.PartyIdentification?.IdentifierStartDate?.DaylightSavingIndicator?.Text
                        },
                        "DateTimeType": check response?.CustomerReference?.PartyReference?.PartyIdentification?.PartyIdentification?.IdentifierStartDate?.DateTimeType
                    },
                    "IdentifierEndDate": {
                        "DateTimeContent": {
                            "Text": check response?.CustomerReference?.PartyReference?.PartyIdentification?.PartyIdentification?.IdentifierEndDate?.DateTimeContent?.Text
                        },
                        "TimeZoneCode": {
                            "Text": check response?.CustomerReference?.PartyReference?.PartyIdentification?.PartyIdentification?.IdentifierEndDate?.TimeZoneCode?.Text
                        },
                        "DaylightSavingIndicator": {
                            "Text": check response?.CustomerReference?.PartyReference?.PartyIdentification?.PartyIdentification?.IdentifierEndDate?.DaylightSavingIndicator?.Text
                        },
                        "DateTimeType": check response?.CustomerReference?.PartyReference?.PartyIdentification?.PartyIdentification?.IdentifierEndDate?.DateTimeType
                    }
                }
            },
            "PartyLegalStructureType": check response?.CustomerReference?.PartyReference?.PartyLegalStructureType
        },
        "PartyInvolvement": {
            "PartyRoleType": {
                "Text": check response?.CustomerReference?.PartyInvolvement?.PartyRoleType?.Text
            },
            "PartyRoleName": {
                "Name": check response?.CustomerReference?.PartyInvolvement?.PartyRoleName?.Name
            },
            "PartyRoleValidityPeriod": {
                "FromDateTime": {
                    "DateTimeContent": {
                        "Text": check response?.CustomerReference?.PartyInvolvement?.PartyRoleValidityPeriod?.FromDateTime?.DateTimeContent?.Text
                    },
                    "TimeZoneCode": {
                        "Text": check response?.CustomerReference?.PartyInvolvement?.PartyRoleValidityPeriod?.FromDateTime?.TimeZoneCode?.Text
                    },
                    "DaylightSavingIndicator": {
                        "Text": check response?.CustomerReference?.PartyInvolvement?.PartyRoleValidityPeriod?.FromDateTime?.DaylightSavingIndicator?.Text
                    },
                    "DateTimeType": check response?.CustomerReference?.PartyInvolvement?.PartyRoleValidityPeriod?.FromDateTime?.DateTimeType
                },
                "ToDateTime": {
                    "DateTimeContent": {
                        "Text": check response?.CustomerReference?.PartyInvolvement?.PartyRoleValidityPeriod?.ToDateTime?.DateTimeContent?.Text
                    },
                    "TimeZoneCode": {
                        "Text": check response?.CustomerReference?.PartyInvolvement?.PartyRoleValidityPeriod?.ToDateTime?.TimeZoneCode?.Text
                    },
                    "DaylightSavingIndicator": {
                        "Text": check response?.CustomerReference?.PartyInvolvement?.PartyRoleValidityPeriod?.ToDateTime?.DaylightSavingIndicator?.Text
                    },
                    "DateTimeType": check response?.CustomerReference?.PartyInvolvement?.PartyRoleValidityPeriod?.ToDateTime?.DateTimeType
                }
            },
            "PartyInvolvementType": check response?.CustomerReference?.PartyInvolvement?.PartyInvolvementType
        }
    },
    "CustomerProductandServiceProfile": {
        "ProfileType": check response?.CustomerProductandServiceProfile?.ProfileType,
        "CustomerReference": {
            "CustomerRelationship": check response?.CustomerProductandServiceProfile?.CustomerReference?.CustomerRelationship
        },
        "ProductReference": {
            "ProductIdentification": {
                "ProductIdentification": {
                    "IdentifierValue": {
                        "Value": check response?.CustomerProductandServiceProfile?.ProductReference?.ProductIdentification?.ProductIdentification?.IdentifierValue?.Value
                    },
                    "IdentifierIssuingAuthority": check response?.CustomerProductandServiceProfile?.ProductReference?.ProductIdentification?.ProductIdentification?.IdentifierIssuingAuthority,
                    "IdentifierStartDate": {
                        "DateTimeContent": {
                            "Text": check response?.CustomerProductandServiceProfile?.ProductReference?.ProductIdentification?.ProductIdentification?.IdentifierStartDate?.DateTimeContent?.Text
                        },
                        "TimeZoneCode": {
                            "Text": check response?.CustomerProductandServiceProfile?.ProductReference?.ProductIdentification?.ProductIdentification?.IdentifierStartDate?.TimeZoneCode?.Text
                        },
                        "DaylightSavingIndicator": {
                            "Text": check response?.CustomerProductandServiceProfile?.ProductReference?.ProductIdentification?.ProductIdentification?.IdentifierStartDate?.DaylightSavingIndicator?.Text
                        },
                        "DateTimeType": check response?.CustomerProductandServiceProfile?.ProductReference?.ProductIdentification?.ProductIdentification?.IdentifierStartDate?.DateTimeType
                    },
                    "IdentifierEndDate": {
                        "DateTimeContent": {
                            "Text": check response?.CustomerProductandServiceProfile?.ProductReference?.ProductIdentification?.ProductIdentification?.IdentifierEndDate?.DateTimeContent?.Text
                        },
                        "TimeZoneCode": {
                            "Text": check response?.CustomerProductandServiceProfile?.ProductReference?.ProductIdentification?.ProductIdentification?.IdentifierEndDate?.TimeZoneCode?.Text
                        },
                        "DaylightSavingIndicator": {
                            "Text": check response?.CustomerProductandServiceProfile?.ProductReference?.ProductIdentification?.ProductIdentification?.IdentifierEndDate?.DaylightSavingIndicator?.Text
                        },
                        "DateTimeType": check response?.CustomerProductandServiceProfile?.ProductReference?.ProductIdentification?.ProductIdentification?.IdentifierEndDate?.DateTimeType
                    }
                },
                "ProductIdentificationType": check response?.CustomerProductandServiceProfile?.ProductReference?.ProductIdentification?.ProductIdentificationType
            },
            "ProductType": check response?.CustomerProductandServiceProfile?.ProductReference?.ProductType,
            "ProductLifecycleStatus": {
                "ProductStatus": {
                    "StatusReason": {
                        "Text": check response?.CustomerProductandServiceProfile?.ProductReference?.ProductLifecycleStatus?.ProductStatus?.StatusReason?.Text
                    },
                    "StatusDateTime": {
                        "DateTimeContent": {
                            "Text": check response?.CustomerProductandServiceProfile?.ProductReference?.ProductLifecycleStatus?.ProductStatus?.StatusDateTime?.DateTimeContent?.Text
                        },
                        "TimeZoneCode": {
                            "Text": check response?.CustomerProductandServiceProfile?.ProductReference?.ProductLifecycleStatus?.ProductStatus?.StatusDateTime?.TimeZoneCode?.Text
                        },
                        "DaylightSavingIndicator": {
                            "Text": check response?.CustomerProductandServiceProfile?.ProductReference?.ProductLifecycleStatus?.ProductStatus?.StatusDateTime?.DaylightSavingIndicator?.Text
                        },
                        "DateTimeType": check response?.CustomerProductandServiceProfile?.ProductReference?.ProductLifecycleStatus?.ProductStatus?.StatusDateTime?.DateTimeType
                    },
                    "StatusValidityPeriod": {
                        "FromDateTime": {
                            "DateTimeContent": {
                                "Text": check response?.CustomerProductandServiceProfile?.ProductReference?.ProductLifecycleStatus?.ProductStatus?.StatusValidityPeriod?.FromDateTime?.DateTimeContent?.Text
                            },
                            "TimeZoneCode": {
                                "Text": check response?.CustomerProductandServiceProfile?.ProductReference?.ProductLifecycleStatus?.ProductStatus?.StatusValidityPeriod?.FromDateTime?.TimeZoneCode?.Text
                            },
                            "DaylightSavingIndicator": {
                                "Text": check response?.CustomerProductandServiceProfile?.ProductReference?.ProductLifecycleStatus?.ProductStatus?.StatusValidityPeriod?.FromDateTime?.DaylightSavingIndicator?.Text
                            },
                            "DateTimeType": check response?.CustomerProductandServiceProfile?.ProductReference?.ProductLifecycleStatus?.ProductStatus?.StatusValidityPeriod?.FromDateTime?.DateTimeType
                        },
                        "ToDateTime": {
                            "DateTimeContent": {
                                "Text": check response?.CustomerProductandServiceProfile?.ProductReference?.ProductLifecycleStatus?.ProductStatus?.StatusValidityPeriod?.ToDateTime?.DateTimeContent?.Text
                            },
                            "TimeZoneCode": {
                                "Text": check response?.CustomerProductandServiceProfile?.ProductReference?.ProductLifecycleStatus?.ProductStatus?.StatusValidityPeriod?.ToDateTime?.TimeZoneCode?.Text
                            },
                            "DaylightSavingIndicator": {
                                "Text": check response?.CustomerProductandServiceProfile?.ProductReference?.ProductLifecycleStatus?.ProductStatus?.StatusValidityPeriod?.ToDateTime?.DaylightSavingIndicator?.Text
                            },
                            "DateTimeType": check response?.CustomerProductandServiceProfile?.ProductReference?.ProductLifecycleStatus?.ProductStatus?.StatusValidityPeriod?.ToDateTime?.DateTimeType
                        }
                    },
                    "StatusInvolvedParty": {
                        "PartyReference": {
                            "PartyName": {
                                "Name": check response?.CustomerProductandServiceProfile?.ProductReference?.ProductLifecycleStatus?.ProductStatus?.StatusInvolvedParty?.PartyReference?.PartyName?.Name
                            },
                            "PartyType": check response?.CustomerProductandServiceProfile?.ProductReference?.ProductLifecycleStatus?.ProductStatus?.StatusInvolvedParty?.PartyReference?.PartyType,
                            "PartyDateTime": {
                                "DateTimeContent": {
                                    "Text": check response?.CustomerProductandServiceProfile?.ProductReference?.ProductLifecycleStatus?.ProductStatus?.StatusInvolvedParty?.PartyReference?.PartyDateTime?.DateTimeContent?.Text
                                },
                                "TimeZoneCode": {
                                    "Text": check response?.CustomerProductandServiceProfile?.ProductReference?.ProductLifecycleStatus?.ProductStatus?.StatusInvolvedParty?.PartyReference?.PartyDateTime?.TimeZoneCode?.Text
                                },
                                "DaylightSavingIndicator": {
                                    "Text": check response?.CustomerProductandServiceProfile?.ProductReference?.ProductLifecycleStatus?.ProductStatus?.StatusInvolvedParty?.PartyReference?.PartyDateTime?.DaylightSavingIndicator?.Text
                                },
                                "DateTimeType": check response?.CustomerProductandServiceProfile?.ProductReference?.ProductLifecycleStatus?.ProductStatus?.StatusInvolvedParty?.PartyReference?.PartyDateTime?.DateTimeType
                            },
                            "PartyIdentification": {
                                "PartyIdentificationType": check response?.CustomerProductandServiceProfile?.ProductReference?.ProductLifecycleStatus?.ProductStatus?.StatusInvolvedParty?.PartyReference?.PartyIdentification?.PartyIdentificationType,
                                "PartyIdentification": {
                                    "IdentifierValue": {
                                        "Value": check response?.CustomerProductandServiceProfile?.ProductReference?.ProductLifecycleStatus?.ProductStatus?.StatusInvolvedParty?.PartyReference?.PartyIdentification?.PartyIdentification?.IdentifierValue?.Value
                                    },
                                    "IdentifierIssuingAuthority": check response?.CustomerProductandServiceProfile?.ProductReference?.ProductLifecycleStatus?.ProductStatus?.StatusInvolvedParty?.PartyReference?.PartyIdentification?.PartyIdentification?.IdentifierIssuingAuthority,
                                    "IdentifierStartDate": {
                                        "DateTimeContent": {
                                            "Text": check response?.CustomerProductandServiceProfile?.ProductReference?.ProductLifecycleStatus?.ProductStatus?.StatusInvolvedParty?.PartyReference?.PartyIdentification?.PartyIdentification?.IdentifierStartDate?.DateTimeContent?.Text
                                        },
                                        "TimeZoneCode": {
                                            "Text": check response?.CustomerProductandServiceProfile?.ProductReference?.ProductLifecycleStatus?.ProductStatus?.StatusInvolvedParty?.PartyReference?.PartyIdentification?.PartyIdentification?.IdentifierStartDate?.TimeZoneCode?.Text
                                        },
                                        "DaylightSavingIndicator": {
                                            "Text": check response?.CustomerProductandServiceProfile?.ProductReference?.ProductLifecycleStatus?.ProductStatus?.StatusInvolvedParty?.PartyReference?.PartyIdentification?.PartyIdentification?.IdentifierStartDate?.DaylightSavingIndicator?.Text
                                        },
                                        "DateTimeType": check response?.CustomerProductandServiceProfile?.ProductReference?.ProductLifecycleStatus?.ProductStatus?.StatusInvolvedParty?.PartyReference?.PartyIdentification?.PartyIdentification?.IdentifierStartDate?.DateTimeType
                                    },
                                    "IdentifierEndDate": {
                                        "DateTimeContent": {
                                            "Text": check response?.CustomerProductandServiceProfile?.ProductReference?.ProductLifecycleStatus?.ProductStatus?.StatusInvolvedParty?.PartyReference?.PartyIdentification?.PartyIdentification?.IdentifierEndDate?.DateTimeContent?.Text
                                        },
                                        "TimeZoneCode": {
                                            "Text": check response?.CustomerProductandServiceProfile?.ProductReference?.ProductLifecycleStatus?.ProductStatus?.StatusInvolvedParty?.PartyReference?.PartyIdentification?.PartyIdentification?.IdentifierEndDate?.TimeZoneCode?.Text
                                        },
                                        "DaylightSavingIndicator": {
                                            "Text": check response?.CustomerProductandServiceProfile?.ProductReference?.ProductLifecycleStatus?.ProductStatus?.StatusInvolvedParty?.PartyReference?.PartyIdentification?.PartyIdentification?.IdentifierEndDate?.DaylightSavingIndicator?.Text
                                        },
                                        "DateTimeType": check response?.CustomerProductandServiceProfile?.ProductReference?.ProductLifecycleStatus?.ProductStatus?.StatusInvolvedParty?.PartyReference?.PartyIdentification?.PartyIdentification?.IdentifierEndDate?.DateTimeType
                                    }
                                }
                            },
                            "PartyLegalStructureType": check response?.CustomerProductandServiceProfile?.ProductReference?.ProductLifecycleStatus?.ProductStatus?.StatusInvolvedParty?.PartyReference?.PartyLegalStructureType
                        },
                        "PartyInvolvement": {
                            "PartyRoleType": {
                                "Text": check response?.CustomerProductandServiceProfile?.ProductReference?.ProductLifecycleStatus?.ProductStatus?.StatusInvolvedParty?.PartyInvolvement?.PartyRoleType?.Text
                            },
                            "PartyRoleName": {
                                "Name": check response?.CustomerProductandServiceProfile?.ProductReference?.ProductLifecycleStatus?.ProductStatus?.StatusInvolvedParty?.PartyInvolvement?.PartyRoleName?.Name
                            },
                            "PartyRoleValidityPeriod": {
                                "FromDateTime": {
                                    "DateTimeContent": {
                                        "Text": check response?.CustomerProductandServiceProfile?.ProductReference?.ProductLifecycleStatus?.ProductStatus?.StatusInvolvedParty?.PartyInvolvement?.PartyRoleValidityPeriod?.FromDateTime?.DateTimeContent?.Text
                                    },
                                    "TimeZoneCode": {
                                        "Text": check response?.CustomerProductandServiceProfile?.ProductReference?.ProductLifecycleStatus?.ProductStatus?.StatusInvolvedParty?.PartyInvolvement?.PartyRoleValidityPeriod?.FromDateTime?.TimeZoneCode?.Text
                                    },
                                    "DaylightSavingIndicator": {
                                        "Text": check response?.CustomerProductandServiceProfile?.ProductReference?.ProductLifecycleStatus?.ProductStatus?.StatusInvolvedParty?.PartyInvolvement?.PartyRoleValidityPeriod?.FromDateTime?.DaylightSavingIndicator?.Text
                                    },
                                    "DateTimeType": check response?.CustomerProductandServiceProfile?.ProductReference?.ProductLifecycleStatus?.ProductStatus?.StatusInvolvedParty?.PartyInvolvement?.PartyRoleValidityPeriod?.FromDateTime?.DateTimeType
                                },
                                "ToDateTime": {
                                    "DateTimeContent": {
                                        "Text": check response?.CustomerProductandServiceProfile?.ProductReference?.ProductLifecycleStatus?.ProductStatus?.StatusInvolvedParty?.PartyInvolvement?.PartyRoleValidityPeriod?.ToDateTime?.DateTimeContent?.Text
                                    },
                                    "TimeZoneCode": {
                                        "Text": check response?.CustomerProductandServiceProfile?.ProductReference?.ProductLifecycleStatus?.ProductStatus?.StatusInvolvedParty?.PartyInvolvement?.PartyRoleValidityPeriod?.ToDateTime?.TimeZoneCode?.Text
                                    },
                                    "DaylightSavingIndicator": {
                                        "Text": check response?.CustomerProductandServiceProfile?.ProductReference?.ProductLifecycleStatus?.ProductStatus?.StatusInvolvedParty?.PartyInvolvement?.PartyRoleValidityPeriod?.ToDateTime?.DaylightSavingIndicator?.Text
                                    },
                                    "DateTimeType": check response?.CustomerProductandServiceProfile?.ProductReference?.ProductLifecycleStatus?.ProductStatus?.StatusInvolvedParty?.PartyInvolvement?.PartyRoleValidityPeriod?.ToDateTime?.DateTimeType
                                }
                            },
                            "PartyInvolvementType": check response?.CustomerProductandServiceProfile?.ProductReference?.ProductLifecycleStatus?.ProductStatus?.StatusInvolvedParty?.PartyInvolvement?.PartyInvolvementType
                        }
                    }
                },
                "ProductStatusType": check response?.CustomerProductandServiceProfile?.ProductReference?.ProductLifecycleStatus?.ProductStatusType
            },
            "ProductPriority": {
                "Text": check response?.CustomerProductandServiceProfile?.ProductReference?.ProductPriority?.Text
            },
            "ProductDescription": {
                "Text": check response?.CustomerProductandServiceProfile?.ProductReference?.ProductDescription?.Text
            },
            "ProductVersion": {
                "Text": check response?.CustomerProductandServiceProfile?.ProductReference?.ProductVersion?.Text
            },
            "ProductName": {
                "Name": check response?.CustomerProductandServiceProfile?.ProductReference?.ProductName?.Name
            }
        },
        "ServiceReference": {
            "ServiceName": {
                "Name": check response?.CustomerProductandServiceProfile?.ServiceReference?.ServiceName?.Name
            },
            "ServiceDescription": {
                "Text": check response?.CustomerProductandServiceProfile?.ServiceReference?.ServiceDescription?.Text
            },
            "ServiceType": check response?.CustomerProductandServiceProfile?.ServiceReference?.ServiceType,
            "ServiceIdentification": {
                "IdentifierValue": {
                    "Value": check response?.CustomerProductandServiceProfile?.ServiceReference?.ServiceIdentification?.IdentifierValue?.Value
                },
                "IdentifierIssuingAuthority": check response?.CustomerProductandServiceProfile?.ServiceReference?.ServiceIdentification?.IdentifierIssuingAuthority,
                "IdentifierStartDate": {
                    "DateTimeContent": {
                        "Text": check response?.CustomerProductandServiceProfile?.ServiceReference?.ServiceIdentification?.IdentifierStartDate?.DateTimeContent?.Text
                    },
                    "TimeZoneCode": {
                        "Text": check response?.CustomerProductandServiceProfile?.ServiceReference?.ServiceIdentification?.IdentifierStartDate?.TimeZoneCode?.Text
                    },
                    "DaylightSavingIndicator": {
                        "Text": check response?.CustomerProductandServiceProfile?.ServiceReference?.ServiceIdentification?.IdentifierStartDate?.DaylightSavingIndicator?.Text
                    },
                    "DateTimeType": check response?.CustomerProductandServiceProfile?.ServiceReference?.ServiceIdentification?.IdentifierStartDate?.DateTimeType
                },
                "IdentifierEndDate": {
                    "DateTimeContent": {
                        "Text": check response?.CustomerProductandServiceProfile?.ServiceReference?.ServiceIdentification?.IdentifierEndDate?.DateTimeContent?.Text
                    },
                    "TimeZoneCode": {
                        "Text": check response?.CustomerProductandServiceProfile?.ServiceReference?.ServiceIdentification?.IdentifierEndDate?.TimeZoneCode?.Text
                    },
                    "DaylightSavingIndicator": {
                        "Text": check response?.CustomerProductandServiceProfile?.ServiceReference?.ServiceIdentification?.IdentifierEndDate?.DaylightSavingIndicator?.Text
                    },
                    "DateTimeType": check response?.CustomerProductandServiceProfile?.ServiceReference?.ServiceIdentification?.IdentifierEndDate?.DateTimeType
                }
            },
            "ServiceLifecycleStatus": {
                "StatusReason": {
                    "Text": check response?.CustomerProductandServiceProfile?.ServiceReference?.ServiceLifecycleStatus?.StatusReason?.Text
                },
                "StatusDateTime": {
                    "DateTimeContent": {
                        "Text": check response?.CustomerProductandServiceProfile?.ServiceReference?.ServiceLifecycleStatus?.StatusDateTime?.DateTimeContent?.Text
                    },
                    "TimeZoneCode": {
                        "Text": check response?.CustomerProductandServiceProfile?.ServiceReference?.ServiceLifecycleStatus?.StatusDateTime?.TimeZoneCode?.Text
                    },
                    "DaylightSavingIndicator": {
                        "Text": check response?.CustomerProductandServiceProfile?.ServiceReference?.ServiceLifecycleStatus?.StatusDateTime?.DaylightSavingIndicator?.Text
                    },
                    "DateTimeType": check response?.CustomerProductandServiceProfile?.ServiceReference?.ServiceLifecycleStatus?.StatusDateTime?.DateTimeType
                },
                "StatusValidityPeriod": {
                    "FromDateTime": {
                        "DateTimeContent": {
                            "Text": check response?.CustomerProductandServiceProfile?.ServiceReference?.ServiceLifecycleStatus?.StatusValidityPeriod?.FromDateTime?.DateTimeContent?.Text
                        },
                        "TimeZoneCode": {
                            "Text": check response?.CustomerProductandServiceProfile?.ServiceReference?.ServiceLifecycleStatus?.StatusValidityPeriod?.FromDateTime?.TimeZoneCode?.Text
                        },
                        "DaylightSavingIndicator": {
                            "Text": check response?.CustomerProductandServiceProfile?.ServiceReference?.ServiceLifecycleStatus?.StatusValidityPeriod?.FromDateTime?.DaylightSavingIndicator?.Text
                        },
                        "DateTimeType": check response?.CustomerProductandServiceProfile?.ServiceReference?.ServiceLifecycleStatus?.StatusValidityPeriod?.FromDateTime?.DateTimeType
                    },
                    "ToDateTime": {
                        "DateTimeContent": {
                            "Text": check response?.CustomerProductandServiceProfile?.ServiceReference?.ServiceLifecycleStatus?.StatusValidityPeriod?.ToDateTime?.DateTimeContent?.Text
                        },
                        "TimeZoneCode": {
                            "Text": check response?.CustomerProductandServiceProfile?.ServiceReference?.ServiceLifecycleStatus?.StatusValidityPeriod?.ToDateTime?.TimeZoneCode?.Text
                        },
                        "DaylightSavingIndicator": {
                            "Text": check response?.CustomerProductandServiceProfile?.ServiceReference?.ServiceLifecycleStatus?.StatusValidityPeriod?.ToDateTime?.DaylightSavingIndicator?.Text
                        },
                        "DateTimeType": check response?.CustomerProductandServiceProfile?.ServiceReference?.ServiceLifecycleStatus?.StatusValidityPeriod?.ToDateTime?.DateTimeType
                    }
                },
                "StatusInvolvedParty": {
                    "PartyReference": {
                        "PartyName": {
                            "Name": check response?.CustomerProductandServiceProfile?.ServiceReference?.ServiceLifecycleStatus?.StatusInvolvedParty?.PartyReference?.PartyName?.Name
                        },
                        "PartyType": check response?.CustomerProductandServiceProfile?.ServiceReference?.ServiceLifecycleStatus?.StatusInvolvedParty?.PartyReference?.PartyType,
                        "PartyDateTime": {
                            "DateTimeContent": {
                                "Text": check response?.CustomerProductandServiceProfile?.ServiceReference?.ServiceLifecycleStatus?.StatusInvolvedParty?.PartyReference?.PartyDateTime?.DateTimeContent?.Text
                            },
                            "TimeZoneCode": {
                                "Text": check response?.CustomerProductandServiceProfile?.ServiceReference?.ServiceLifecycleStatus?.StatusInvolvedParty?.PartyReference?.PartyDateTime?.TimeZoneCode?.Text
                            },
                            "DaylightSavingIndicator": {
                                "Text": check response?.CustomerProductandServiceProfile?.ServiceReference?.ServiceLifecycleStatus?.StatusInvolvedParty?.PartyReference?.PartyDateTime?.DaylightSavingIndicator?.Text
                            },
                            "DateTimeType": check response?.CustomerProductandServiceProfile?.ServiceReference?.ServiceLifecycleStatus?.StatusInvolvedParty?.PartyReference?.PartyDateTime?.DateTimeType
                        },
                        "PartyIdentification": {
                            "PartyIdentificationType": check response?.CustomerProductandServiceProfile?.ServiceReference?.ServiceLifecycleStatus?.StatusInvolvedParty?.PartyReference?.PartyIdentification?.PartyIdentificationType,
                            "PartyIdentification": {
                                "IdentifierValue": {
                                    "Value": check response?.CustomerProductandServiceProfile?.ServiceReference?.ServiceLifecycleStatus?.StatusInvolvedParty?.PartyReference?.PartyIdentification?.PartyIdentification?.IdentifierValue?.Value
                                },
                                "IdentifierIssuingAuthority": check response?.CustomerProductandServiceProfile?.ServiceReference?.ServiceLifecycleStatus?.StatusInvolvedParty?.PartyReference?.PartyIdentification?.PartyIdentification?.IdentifierIssuingAuthority,
                                "IdentifierStartDate": {
                                    "DateTimeContent": {
                                        "Text": check response?.CustomerProductandServiceProfile?.ServiceReference?.ServiceLifecycleStatus?.StatusInvolvedParty?.PartyReference?.PartyIdentification?.PartyIdentification?.IdentifierStartDate?.DateTimeContent?.Text
                                    },
                                    "TimeZoneCode": {
                                        "Text": check response?.CustomerProductandServiceProfile?.ServiceReference?.ServiceLifecycleStatus?.StatusInvolvedParty?.PartyReference?.PartyIdentification?.PartyIdentification?.IdentifierStartDate?.TimeZoneCode?.Text
                                    },
                                    "DaylightSavingIndicator": {
                                        "Text": check response?.CustomerProductandServiceProfile?.ServiceReference?.ServiceLifecycleStatus?.StatusInvolvedParty?.PartyReference?.PartyIdentification?.PartyIdentification?.IdentifierStartDate?.DaylightSavingIndicator?.Text
                                    },
                                    "DateTimeType": check response?.CustomerProductandServiceProfile?.ServiceReference?.ServiceLifecycleStatus?.StatusInvolvedParty?.PartyReference?.PartyIdentification?.PartyIdentification?.IdentifierStartDate?.DateTimeType
                                },
                                "IdentifierEndDate": {
                                    "DateTimeContent": {
                                        "Text": check response?.CustomerProductandServiceProfile?.ServiceReference?.ServiceLifecycleStatus?.StatusInvolvedParty?.PartyReference?.PartyIdentification?.PartyIdentification?.IdentifierEndDate?.DateTimeContent?.Text
                                    },
                                    "TimeZoneCode": {
                                        "Text": check response?.CustomerProductandServiceProfile?.ServiceReference?.ServiceLifecycleStatus?.StatusInvolvedParty?.PartyReference?.PartyIdentification?.PartyIdentification?.IdentifierEndDate?.TimeZoneCode?.Text
                                    },
                                    "DaylightSavingIndicator": {
                                        "Text": check response?.CustomerProductandServiceProfile?.ServiceReference?.ServiceLifecycleStatus?.StatusInvolvedParty?.PartyReference?.PartyIdentification?.PartyIdentification?.IdentifierEndDate?.DaylightSavingIndicator?.Text
                                    },
                                    "DateTimeType": check response?.CustomerProductandServiceProfile?.ServiceReference?.ServiceLifecycleStatus?.StatusInvolvedParty?.PartyReference?.PartyIdentification?.PartyIdentification?.IdentifierEndDate?.DateTimeType
                                }
                            }
                        },
                        "PartyLegalStructureType": check response?.CustomerProductandServiceProfile?.ServiceReference?.ServiceLifecycleStatus?.StatusInvolvedParty?.PartyReference?.PartyLegalStructureType
                    },
                    "PartyInvolvement": {
                        "PartyRoleType": {
                            "Text": check response?.CustomerProductandServiceProfile?.ServiceReference?.ServiceLifecycleStatus?.StatusInvolvedParty?.PartyInvolvement?.PartyRoleType?.Text
                        },
                        "PartyRoleName": {
                            "Name": check response?.CustomerProductandServiceProfile?.ServiceReference?.ServiceLifecycleStatus?.StatusInvolvedParty?.PartyInvolvement?.PartyRoleName?.Name
                        },
                        "PartyRoleValidityPeriod": {
                            "FromDateTime": {
                                "DateTimeContent": {
                                    "Text": check response?.CustomerProductandServiceProfile?.ServiceReference?.ServiceLifecycleStatus?.StatusInvolvedParty?.PartyInvolvement?.PartyRoleValidityPeriod?.FromDateTime?.DateTimeContent?.Text
                                },
                                "TimeZoneCode": {
                                    "Text": check response?.CustomerProductandServiceProfile?.ServiceReference?.ServiceLifecycleStatus?.StatusInvolvedParty?.PartyInvolvement?.PartyRoleValidityPeriod?.FromDateTime?.TimeZoneCode?.Text
                                },
                                "DaylightSavingIndicator": {
                                    "Text": check response?.CustomerProductandServiceProfile?.ServiceReference?.ServiceLifecycleStatus?.StatusInvolvedParty?.PartyInvolvement?.PartyRoleValidityPeriod?.FromDateTime?.DaylightSavingIndicator?.Text
                                },
                                "DateTimeType": check response?.CustomerProductandServiceProfile?.ServiceReference?.ServiceLifecycleStatus?.StatusInvolvedParty?.PartyInvolvement?.PartyRoleValidityPeriod?.FromDateTime?.DateTimeType
                            },
                            "ToDateTime": {
                                "DateTimeContent": {
                                    "Text": check response?.CustomerProductandServiceProfile?.ServiceReference?.ServiceLifecycleStatus?.StatusInvolvedParty?.PartyInvolvement?.PartyRoleValidityPeriod?.ToDateTime?.DateTimeContent?.Text
                                },
                                "TimeZoneCode": {
                                    "Text": check response?.CustomerProductandServiceProfile?.ServiceReference?.ServiceLifecycleStatus?.StatusInvolvedParty?.PartyInvolvement?.PartyRoleValidityPeriod?.ToDateTime?.TimeZoneCode?.Text
                                },
                                "DaylightSavingIndicator": {
                                    "Text": check response?.CustomerProductandServiceProfile?.ServiceReference?.ServiceLifecycleStatus?.StatusInvolvedParty?.PartyInvolvement?.PartyRoleValidityPeriod?.ToDateTime?.DaylightSavingIndicator?.Text
                                },
                                "DateTimeType": check response?.CustomerProductandServiceProfile?.ServiceReference?.ServiceLifecycleStatus?.StatusInvolvedParty?.PartyInvolvement?.PartyRoleValidityPeriod?.ToDateTime?.DateTimeType
                            }
                        },
                        "PartyInvolvementType": check response?.CustomerProductandServiceProfile?.ServiceReference?.ServiceLifecycleStatus?.StatusInvolvedParty?.PartyInvolvement?.PartyInvolvementType
                    }
                }
            },
            "ServiceFeature": {
                "FeatureType": check response?.CustomerProductandServiceProfile?.ServiceReference?.ServiceFeature?.FeatureType,
                "FeatureIdentification": {
                    "IdentifierValue": {
                        "Value": check response?.CustomerProductandServiceProfile?.ServiceReference?.ServiceFeature?.FeatureIdentification?.IdentifierValue?.Value
                    },
                    "IdentifierIssuingAuthority": check response?.CustomerProductandServiceProfile?.ServiceReference?.ServiceFeature?.FeatureIdentification?.IdentifierIssuingAuthority,
                    "IdentifierStartDate": {
                        "DateTimeContent": {
                            "Text": check response?.CustomerProductandServiceProfile?.ServiceReference?.ServiceFeature?.FeatureIdentification?.IdentifierStartDate?.DateTimeContent?.Text
                        },
                        "TimeZoneCode": {
                            "Text": check response?.CustomerProductandServiceProfile?.ServiceReference?.ServiceFeature?.FeatureIdentification?.IdentifierStartDate?.TimeZoneCode?.Text
                        },
                        "DaylightSavingIndicator": {
                            "Text": check response?.CustomerProductandServiceProfile?.ServiceReference?.ServiceFeature?.FeatureIdentification?.IdentifierStartDate?.DaylightSavingIndicator?.Text
                        },
                        "DateTimeType": check response?.CustomerProductandServiceProfile?.ServiceReference?.ServiceFeature?.FeatureIdentification?.IdentifierStartDate?.DateTimeType
                    },
                    "IdentifierEndDate": {
                        "DateTimeContent": {
                            "Text": check response?.CustomerProductandServiceProfile?.ServiceReference?.ServiceFeature?.FeatureIdentification?.IdentifierEndDate?.DateTimeContent?.Text
                        },
                        "TimeZoneCode": {
                            "Text": check response?.CustomerProductandServiceProfile?.ServiceReference?.ServiceFeature?.FeatureIdentification?.IdentifierEndDate?.TimeZoneCode?.Text
                        },
                        "DaylightSavingIndicator": {
                            "Text": check response?.CustomerProductandServiceProfile?.ServiceReference?.ServiceFeature?.FeatureIdentification?.IdentifierEndDate?.DaylightSavingIndicator?.Text
                        },
                        "DateTimeType": check response?.CustomerProductandServiceProfile?.ServiceReference?.ServiceFeature?.FeatureIdentification?.IdentifierEndDate?.DateTimeType
                    }
                },
                "FeatureName": {
                    "Name": check response?.CustomerProductandServiceProfile?.ServiceReference?.ServiceFeature?.FeatureName?.Name
                },
                "FeatureLifecycleStatus": {
                    "StatusReason": {
                        "Text": check response?.CustomerProductandServiceProfile?.ServiceReference?.ServiceFeature?.FeatureLifecycleStatus?.StatusReason?.Text
                    },
                    "StatusDateTime": {
                        "DateTimeContent": {
                            "Text": check response?.CustomerProductandServiceProfile?.ServiceReference?.ServiceFeature?.FeatureLifecycleStatus?.StatusDateTime?.DateTimeContent?.Text
                        },
                        "TimeZoneCode": {
                            "Text": check response?.CustomerProductandServiceProfile?.ServiceReference?.ServiceFeature?.FeatureLifecycleStatus?.StatusDateTime?.TimeZoneCode?.Text
                        },
                        "DaylightSavingIndicator": {
                            "Text": check response?.CustomerProductandServiceProfile?.ServiceReference?.ServiceFeature?.FeatureLifecycleStatus?.StatusDateTime?.DaylightSavingIndicator?.Text
                        },
                        "DateTimeType": check response?.CustomerProductandServiceProfile?.ServiceReference?.ServiceFeature?.FeatureLifecycleStatus?.StatusDateTime?.DateTimeType
                    },
                    "StatusValidityPeriod": {
                        "FromDateTime": {
                            "DateTimeContent": {
                                "Text": check response?.CustomerProductandServiceProfile?.ServiceReference?.ServiceFeature?.FeatureLifecycleStatus?.StatusValidityPeriod?.FromDateTime?.DateTimeContent?.Text
                            },
                            "TimeZoneCode": {
                                "Text": check response?.CustomerProductandServiceProfile?.ServiceReference?.ServiceFeature?.FeatureLifecycleStatus?.StatusValidityPeriod?.FromDateTime?.TimeZoneCode?.Text
                            },
                            "DaylightSavingIndicator": {
                                "Text": check response?.CustomerProductandServiceProfile?.ServiceReference?.ServiceFeature?.FeatureLifecycleStatus?.StatusValidityPeriod?.FromDateTime?.DaylightSavingIndicator?.Text
                            },
                            "DateTimeType": check response?.CustomerProductandServiceProfile?.ServiceReference?.ServiceFeature?.FeatureLifecycleStatus?.StatusValidityPeriod?.FromDateTime?.DateTimeType
                        },
                        "ToDateTime": {
                            "DateTimeContent": {
                                "Text": check response?.CustomerProductandServiceProfile?.ServiceReference?.ServiceFeature?.FeatureLifecycleStatus?.StatusValidityPeriod?.ToDateTime?.DateTimeContent?.Text
                            },
                            "TimeZoneCode": {
                                "Text": check response?.CustomerProductandServiceProfile?.ServiceReference?.ServiceFeature?.FeatureLifecycleStatus?.StatusValidityPeriod?.ToDateTime?.TimeZoneCode?.Text
                            },
                            "DaylightSavingIndicator": {
                                "Text": check response?.CustomerProductandServiceProfile?.ServiceReference?.ServiceFeature?.FeatureLifecycleStatus?.StatusValidityPeriod?.ToDateTime?.DaylightSavingIndicator?.Text
                            },
                            "DateTimeType": check response?.CustomerProductandServiceProfile?.ServiceReference?.ServiceFeature?.FeatureLifecycleStatus?.StatusValidityPeriod?.ToDateTime?.DateTimeType
                        }
                    },
                    "StatusInvolvedParty": {
                        "PartyReference": {
                            "PartyName": {
                                "Name": check response?.CustomerProductandServiceProfile?.ServiceReference?.ServiceFeature?.FeatureLifecycleStatus?.StatusInvolvedParty?.PartyReference?.PartyName?.Name
                            },
                            "PartyType": check response?.CustomerProductandServiceProfile?.ServiceReference?.ServiceFeature?.FeatureLifecycleStatus?.StatusInvolvedParty?.PartyReference?.PartyType,
                            "PartyDateTime": {
                                "DateTimeContent": {
                                    "Text": check response?.CustomerProductandServiceProfile?.ServiceReference?.ServiceFeature?.FeatureLifecycleStatus?.StatusInvolvedParty?.PartyReference?.PartyDateTime?.DateTimeContent?.Text
                                },
                                "TimeZoneCode": {
                                    "Text": check response?.CustomerProductandServiceProfile?.ServiceReference?.ServiceFeature?.FeatureLifecycleStatus?.StatusInvolvedParty?.PartyReference?.PartyDateTime?.TimeZoneCode?.Text
                                },
                                "DaylightSavingIndicator": {
                                    "Text": check response?.CustomerProductandServiceProfile?.ServiceReference?.ServiceFeature?.FeatureLifecycleStatus?.StatusInvolvedParty?.PartyReference?.PartyDateTime?.DaylightSavingIndicator?.Text
                                },
                                "DateTimeType": check response?.CustomerProductandServiceProfile?.ServiceReference?.ServiceFeature?.FeatureLifecycleStatus?.StatusInvolvedParty?.PartyReference?.PartyDateTime?.DateTimeType
                            },
                            "PartyIdentification": {
                                "PartyIdentificationType": check response?.CustomerProductandServiceProfile?.ServiceReference?.ServiceFeature?.FeatureLifecycleStatus?.StatusInvolvedParty?.PartyReference?.PartyIdentification?.PartyIdentificationType,
                                "PartyIdentification": {
                                    "IdentifierValue": {
                                        "Value": check response?.CustomerProductandServiceProfile?.ServiceReference?.ServiceFeature?.FeatureLifecycleStatus?.StatusInvolvedParty?.PartyReference?.PartyIdentification?.PartyIdentification?.IdentifierValue?.Value
                                    },
                                    "IdentifierIssuingAuthority": check response?.CustomerProductandServiceProfile?.ServiceReference?.ServiceFeature?.FeatureLifecycleStatus?.StatusInvolvedParty?.PartyReference?.PartyIdentification?.PartyIdentification?.IdentifierIssuingAuthority,
                                    "IdentifierStartDate": {
                                        "DateTimeContent": {
                                            "Text": check response?.CustomerProductandServiceProfile?.ServiceReference?.ServiceFeature?.FeatureLifecycleStatus?.StatusInvolvedParty?.PartyReference?.PartyIdentification?.PartyIdentification?.IdentifierStartDate?.DateTimeContent?.Text
                                        },
                                        "TimeZoneCode": {
                                            "Text": check response?.CustomerProductandServiceProfile?.ServiceReference?.ServiceFeature?.FeatureLifecycleStatus?.StatusInvolvedParty?.PartyReference?.PartyIdentification?.PartyIdentification?.IdentifierStartDate?.TimeZoneCode?.Text
                                        },
                                        "DaylightSavingIndicator": {
                                            "Text": check response?.CustomerProductandServiceProfile?.ServiceReference?.ServiceFeature?.FeatureLifecycleStatus?.StatusInvolvedParty?.PartyReference?.PartyIdentification?.PartyIdentification?.IdentifierStartDate?.DaylightSavingIndicator?.Text
                                        },
                                        "DateTimeType": check response?.CustomerProductandServiceProfile?.ServiceReference?.ServiceFeature?.FeatureLifecycleStatus?.StatusInvolvedParty?.PartyReference?.PartyIdentification?.PartyIdentification?.IdentifierStartDate?.DateTimeType
                                    },
                                    "IdentifierEndDate": {
                                        "DateTimeContent": {
                                            "Text": check response?.CustomerProductandServiceProfile?.ServiceReference?.ServiceFeature?.FeatureLifecycleStatus?.StatusInvolvedParty?.PartyReference?.PartyIdentification?.PartyIdentification?.IdentifierEndDate?.DateTimeContent?.Text
                                        },
                                        "TimeZoneCode": {
                                            "Text": check response?.CustomerProductandServiceProfile?.ServiceReference?.ServiceFeature?.FeatureLifecycleStatus?.StatusInvolvedParty?.PartyReference?.PartyIdentification?.PartyIdentification?.IdentifierEndDate?.TimeZoneCode?.Text
                                        },
                                        "DaylightSavingIndicator": {
                                            "Text": check response?.CustomerProductandServiceProfile?.ServiceReference?.ServiceFeature?.FeatureLifecycleStatus?.StatusInvolvedParty?.PartyReference?.PartyIdentification?.PartyIdentification?.IdentifierEndDate?.DaylightSavingIndicator?.Text
                                        },
                                        "DateTimeType": check response?.CustomerProductandServiceProfile?.ServiceReference?.ServiceFeature?.FeatureLifecycleStatus?.StatusInvolvedParty?.PartyReference?.PartyIdentification?.PartyIdentification?.IdentifierEndDate?.DateTimeType
                                    }
                                }
                            },
                            "PartyLegalStructureType": check response?.CustomerProductandServiceProfile?.ServiceReference?.ServiceFeature?.FeatureLifecycleStatus?.StatusInvolvedParty?.PartyReference?.PartyLegalStructureType
                        },
                        "PartyInvolvement": {
                            "PartyRoleType": {
                                "Text": check response?.CustomerProductandServiceProfile?.ServiceReference?.ServiceFeature?.FeatureLifecycleStatus?.StatusInvolvedParty?.PartyInvolvement?.PartyRoleType?.Text
                            },
                            "PartyRoleName": {
                                "Name": check response?.CustomerProductandServiceProfile?.ServiceReference?.ServiceFeature?.FeatureLifecycleStatus?.StatusInvolvedParty?.PartyInvolvement?.PartyRoleName?.Name
                            },
                            "PartyRoleValidityPeriod": {
                                "FromDateTime": {
                                    "DateTimeContent": {
                                        "Text": check response?.CustomerProductandServiceProfile?.ServiceReference?.ServiceFeature?.FeatureLifecycleStatus?.StatusInvolvedParty?.PartyInvolvement?.PartyRoleValidityPeriod?.FromDateTime?.DateTimeContent?.Text
                                    },
                                    "TimeZoneCode": {
                                        "Text": check response?.CustomerProductandServiceProfile?.ServiceReference?.ServiceFeature?.FeatureLifecycleStatus?.StatusInvolvedParty?.PartyInvolvement?.PartyRoleValidityPeriod?.FromDateTime?.TimeZoneCode?.Text
                                    },
                                    "DaylightSavingIndicator": {
                                        "Text": check response?.CustomerProductandServiceProfile?.ServiceReference?.ServiceFeature?.FeatureLifecycleStatus?.StatusInvolvedParty?.PartyInvolvement?.PartyRoleValidityPeriod?.FromDateTime?.DaylightSavingIndicator?.Text
                                    },
                                    "DateTimeType": check response?.CustomerProductandServiceProfile?.ServiceReference?.ServiceFeature?.FeatureLifecycleStatus?.StatusInvolvedParty?.PartyInvolvement?.PartyRoleValidityPeriod?.FromDateTime?.DateTimeType
                                },
                                "ToDateTime": {
                                    "DateTimeContent": {
                                        "Text": check response?.CustomerProductandServiceProfile?.ServiceReference?.ServiceFeature?.FeatureLifecycleStatus?.StatusInvolvedParty?.PartyInvolvement?.PartyRoleValidityPeriod?.ToDateTime?.DateTimeContent?.Text
                                    },
                                    "TimeZoneCode": {
                                        "Text": check response?.CustomerProductandServiceProfile?.ServiceReference?.ServiceFeature?.FeatureLifecycleStatus?.StatusInvolvedParty?.PartyInvolvement?.PartyRoleValidityPeriod?.ToDateTime?.TimeZoneCode?.Text
                                    },
                                    "DaylightSavingIndicator": {
                                        "Text": check response?.CustomerProductandServiceProfile?.ServiceReference?.ServiceFeature?.FeatureLifecycleStatus?.StatusInvolvedParty?.PartyInvolvement?.PartyRoleValidityPeriod?.ToDateTime?.DaylightSavingIndicator?.Text
                                    },
                                    "DateTimeType": check response?.CustomerProductandServiceProfile?.ServiceReference?.ServiceFeature?.FeatureLifecycleStatus?.StatusInvolvedParty?.PartyInvolvement?.PartyRoleValidityPeriod?.ToDateTime?.DateTimeType
                                }
                            },
                            "PartyInvolvementType": check response?.CustomerProductandServiceProfile?.ServiceReference?.ServiceFeature?.FeatureLifecycleStatus?.StatusInvolvedParty?.PartyInvolvement?.PartyInvolvementType
                        }
                    }
                },
                "FeatureDescription": {
                    "Text": check response?.CustomerProductandServiceProfile?.ServiceReference?.ServiceFeature?.FeatureDescription?.Text
                }
            }
        }
    },
    "ProductandServiceType": check response?.ProductandServiceType,
    "CustomerProductandServiceTypeEligibility": {
        "ArrangementAction": {
            "ActionType": check response?.CustomerProductandServiceTypeEligibility?.ArrangementAction?.ActionType
        },
        "ArrangementStartDate": {
            "DateTimeContent": {
                "Text": check response?.CustomerProductandServiceTypeEligibility?.ArrangementStartDate?.DateTimeContent?.Text
            },
            "TimeZoneCode": {
                "Text": check response?.CustomerProductandServiceTypeEligibility?.ArrangementStartDate?.TimeZoneCode?.Text
            },
            "DaylightSavingIndicator": {
                "Text": check response?.CustomerProductandServiceTypeEligibility?.ArrangementStartDate?.DaylightSavingIndicator?.Text
            },
            "DateTimeType": check response?.CustomerProductandServiceTypeEligibility?.ArrangementStartDate?.DateTimeType
        },
        "ArrangementEndDate": {
            "DateTimeContent": {
                "Text": check response?.CustomerProductandServiceTypeEligibility?.ArrangementEndDate?.DateTimeContent?.Text
            },
            "TimeZoneCode": {
                "Text": check response?.CustomerProductandServiceTypeEligibility?.ArrangementEndDate?.TimeZoneCode?.Text
            },
            "DaylightSavingIndicator": {
                "Text": check response?.CustomerProductandServiceTypeEligibility?.ArrangementEndDate?.DaylightSavingIndicator?.Text
            },
            "DateTimeType": check response?.CustomerProductandServiceTypeEligibility?.ArrangementEndDate?.DateTimeType
        },
        "ArrangementStatus": {
            "ArrangementStatus": {
                "StatusReason": {
                    "Text": check response?.CustomerProductandServiceTypeEligibility?.ArrangementStatus?.ArrangementStatus?.StatusReason?.Text
                },
                "StatusDateTime": {
                    "DateTimeContent": {
                        "Text": check response?.CustomerProductandServiceTypeEligibility?.ArrangementStatus?.ArrangementStatus?.StatusDateTime?.DateTimeContent?.Text
                    },
                    "TimeZoneCode": {
                        "Text": check response?.CustomerProductandServiceTypeEligibility?.ArrangementStatus?.ArrangementStatus?.StatusDateTime?.TimeZoneCode?.Text
                    },
                    "DaylightSavingIndicator": {
                        "Text": check response?.CustomerProductandServiceTypeEligibility?.ArrangementStatus?.ArrangementStatus?.StatusDateTime?.DaylightSavingIndicator?.Text
                    },
                    "DateTimeType": check response?.CustomerProductandServiceTypeEligibility?.ArrangementStatus?.ArrangementStatus?.StatusDateTime?.DateTimeType
                },
                "StatusValidityPeriod": {
                    "FromDateTime": {
                        "DateTimeContent": {
                            "Text": check response?.CustomerProductandServiceTypeEligibility?.ArrangementStatus?.ArrangementStatus?.StatusValidityPeriod?.FromDateTime?.DateTimeContent?.Text
                        },
                        "TimeZoneCode": {
                            "Text": check response?.CustomerProductandServiceTypeEligibility?.ArrangementStatus?.ArrangementStatus?.StatusValidityPeriod?.FromDateTime?.TimeZoneCode?.Text
                        },
                        "DaylightSavingIndicator": {
                            "Text": check response?.CustomerProductandServiceTypeEligibility?.ArrangementStatus?.ArrangementStatus?.StatusValidityPeriod?.FromDateTime?.DaylightSavingIndicator?.Text
                        },
                        "DateTimeType": check response?.CustomerProductandServiceTypeEligibility?.ArrangementStatus?.ArrangementStatus?.StatusValidityPeriod?.FromDateTime?.DateTimeType
                    },
                    "ToDateTime": {
                        "DateTimeContent": {
                            "Text": check response?.CustomerProductandServiceTypeEligibility?.ArrangementStatus?.ArrangementStatus?.StatusValidityPeriod?.ToDateTime?.DateTimeContent?.Text
                        },
                        "TimeZoneCode": {
                            "Text": check response?.CustomerProductandServiceTypeEligibility?.ArrangementStatus?.ArrangementStatus?.StatusValidityPeriod?.ToDateTime?.TimeZoneCode?.Text
                        },
                        "DaylightSavingIndicator": {
                            "Text": check response?.CustomerProductandServiceTypeEligibility?.ArrangementStatus?.ArrangementStatus?.StatusValidityPeriod?.ToDateTime?.DaylightSavingIndicator?.Text
                        },
                        "DateTimeType": check response?.CustomerProductandServiceTypeEligibility?.ArrangementStatus?.ArrangementStatus?.StatusValidityPeriod?.ToDateTime?.DateTimeType
                    }
                },
                "StatusInvolvedParty": {
                    "PartyReference": {
                        "PartyName": {
                            "Name": check response?.CustomerProductandServiceTypeEligibility?.ArrangementStatus?.ArrangementStatus?.StatusInvolvedParty?.PartyReference?.PartyName?.Name
                        },
                        "PartyType": check response?.CustomerProductandServiceTypeEligibility?.ArrangementStatus?.ArrangementStatus?.StatusInvolvedParty?.PartyReference?.PartyType,
                        "PartyDateTime": {
                            "DateTimeContent": {
                                "Text": check response?.CustomerProductandServiceTypeEligibility?.ArrangementStatus?.ArrangementStatus?.StatusInvolvedParty?.PartyReference?.PartyDateTime?.DateTimeContent?.Text
                            },
                            "TimeZoneCode": {
                                "Text": check response?.CustomerProductandServiceTypeEligibility?.ArrangementStatus?.ArrangementStatus?.StatusInvolvedParty?.PartyReference?.PartyDateTime?.TimeZoneCode?.Text
                            },
                            "DaylightSavingIndicator": {
                                "Text": check response?.CustomerProductandServiceTypeEligibility?.ArrangementStatus?.ArrangementStatus?.StatusInvolvedParty?.PartyReference?.PartyDateTime?.DaylightSavingIndicator?.Text
                            },
                            "DateTimeType": check response?.CustomerProductandServiceTypeEligibility?.ArrangementStatus?.ArrangementStatus?.StatusInvolvedParty?.PartyReference?.PartyDateTime?.DateTimeType
                        },
                        "PartyIdentification": {
                            "PartyIdentificationType": check response?.CustomerProductandServiceTypeEligibility?.ArrangementStatus?.ArrangementStatus?.StatusInvolvedParty?.PartyReference?.PartyIdentification?.PartyIdentificationType,
                            "PartyIdentification": {
                                "IdentifierValue": {
                                    "Value": check response?.CustomerProductandServiceTypeEligibility?.ArrangementStatus?.ArrangementStatus?.StatusInvolvedParty?.PartyReference?.PartyIdentification?.PartyIdentification?.IdentifierValue?.Value
                                },
                                "IdentifierIssuingAuthority": check response?.CustomerProductandServiceTypeEligibility?.ArrangementStatus?.ArrangementStatus?.StatusInvolvedParty?.PartyReference?.PartyIdentification?.PartyIdentification?.IdentifierIssuingAuthority,
                                "IdentifierStartDate": {
                                    "DateTimeContent": {
                                        "Text": check response?.CustomerProductandServiceTypeEligibility?.ArrangementStatus?.ArrangementStatus?.StatusInvolvedParty?.PartyReference?.PartyIdentification?.PartyIdentification?.IdentifierStartDate?.DateTimeContent?.Text
                                    },
                                    "TimeZoneCode": {
                                        "Text": check response?.CustomerProductandServiceTypeEligibility?.ArrangementStatus?.ArrangementStatus?.StatusInvolvedParty?.PartyReference?.PartyIdentification?.PartyIdentification?.IdentifierStartDate?.TimeZoneCode?.Text
                                    },
                                    "DaylightSavingIndicator": {
                                        "Text": check response?.CustomerProductandServiceTypeEligibility?.ArrangementStatus?.ArrangementStatus?.StatusInvolvedParty?.PartyReference?.PartyIdentification?.PartyIdentification?.IdentifierStartDate?.DaylightSavingIndicator?.Text
                                    },
                                    "DateTimeType": check response?.CustomerProductandServiceTypeEligibility?.ArrangementStatus?.ArrangementStatus?.StatusInvolvedParty?.PartyReference?.PartyIdentification?.PartyIdentification?.IdentifierStartDate?.DateTimeType
                                },
                                "IdentifierEndDate": {
                                    "DateTimeContent": {
                                        "Text": check response?.CustomerProductandServiceTypeEligibility?.ArrangementStatus?.ArrangementStatus?.StatusInvolvedParty?.PartyReference?.PartyIdentification?.PartyIdentification?.IdentifierEndDate?.DateTimeContent?.Text
                                    },
                                    "TimeZoneCode": {
                                        "Text": check response?.CustomerProductandServiceTypeEligibility?.ArrangementStatus?.ArrangementStatus?.StatusInvolvedParty?.PartyReference?.PartyIdentification?.PartyIdentification?.IdentifierEndDate?.TimeZoneCode?.Text
                                    },
                                    "DaylightSavingIndicator": {
                                        "Text": check response?.CustomerProductandServiceTypeEligibility?.ArrangementStatus?.ArrangementStatus?.StatusInvolvedParty?.PartyReference?.PartyIdentification?.PartyIdentification?.IdentifierEndDate?.DaylightSavingIndicator?.Text
                                    },
                                    "DateTimeType": check response?.CustomerProductandServiceTypeEligibility?.ArrangementStatus?.ArrangementStatus?.StatusInvolvedParty?.PartyReference?.PartyIdentification?.PartyIdentification?.IdentifierEndDate?.DateTimeType
                                }
                            }
                        },
                        "PartyLegalStructureType": check response?.CustomerProductandServiceTypeEligibility?.ArrangementStatus?.ArrangementStatus?.StatusInvolvedParty?.PartyReference?.PartyLegalStructureType
                    },
                    "PartyInvolvement": {
                        "PartyRoleType": {
                            "Text": check response?.CustomerProductandServiceTypeEligibility?.ArrangementStatus?.ArrangementStatus?.StatusInvolvedParty?.PartyInvolvement?.PartyRoleType?.Text
                        },
                        "PartyRoleName": {
                            "Name": check response?.CustomerProductandServiceTypeEligibility?.ArrangementStatus?.ArrangementStatus?.StatusInvolvedParty?.PartyInvolvement?.PartyRoleName?.Name
                        },
                        "PartyRoleValidityPeriod": {
                            "FromDateTime": {
                                "DateTimeContent": {
                                    "Text": check response?.CustomerProductandServiceTypeEligibility?.ArrangementStatus?.ArrangementStatus?.StatusInvolvedParty?.PartyInvolvement?.PartyRoleValidityPeriod?.FromDateTime?.DateTimeContent?.Text
                                },
                                "TimeZoneCode": {
                                    "Text": check response?.CustomerProductandServiceTypeEligibility?.ArrangementStatus?.ArrangementStatus?.StatusInvolvedParty?.PartyInvolvement?.PartyRoleValidityPeriod?.FromDateTime?.TimeZoneCode?.Text
                                },
                                "DaylightSavingIndicator": {
                                    "Text": check response?.CustomerProductandServiceTypeEligibility?.ArrangementStatus?.ArrangementStatus?.StatusInvolvedParty?.PartyInvolvement?.PartyRoleValidityPeriod?.FromDateTime?.DaylightSavingIndicator?.Text
                                },
                                "DateTimeType": check response?.CustomerProductandServiceTypeEligibility?.ArrangementStatus?.ArrangementStatus?.StatusInvolvedParty?.PartyInvolvement?.PartyRoleValidityPeriod?.FromDateTime?.DateTimeType
                            },
                            "ToDateTime": {
                                "DateTimeContent": {
                                    "Text": check response?.CustomerProductandServiceTypeEligibility?.ArrangementStatus?.ArrangementStatus?.StatusInvolvedParty?.PartyInvolvement?.PartyRoleValidityPeriod?.ToDateTime?.DateTimeContent?.Text
                                },
                                "TimeZoneCode": {
                                    "Text": check response?.CustomerProductandServiceTypeEligibility?.ArrangementStatus?.ArrangementStatus?.StatusInvolvedParty?.PartyInvolvement?.PartyRoleValidityPeriod?.ToDateTime?.TimeZoneCode?.Text
                                },
                                "DaylightSavingIndicator": {
                                    "Text": check response?.CustomerProductandServiceTypeEligibility?.ArrangementStatus?.ArrangementStatus?.StatusInvolvedParty?.PartyInvolvement?.PartyRoleValidityPeriod?.ToDateTime?.DaylightSavingIndicator?.Text
                                },
                                "DateTimeType": check response?.CustomerProductandServiceTypeEligibility?.ArrangementStatus?.ArrangementStatus?.StatusInvolvedParty?.PartyInvolvement?.PartyRoleValidityPeriod?.ToDateTime?.DateTimeType
                            }
                        },
                        "PartyInvolvementType": check response?.CustomerProductandServiceTypeEligibility?.ArrangementStatus?.ArrangementStatus?.StatusInvolvedParty?.PartyInvolvement?.PartyInvolvementType
                    }
                }
            },
            "ArrangementStatusType": check response?.CustomerProductandServiceTypeEligibility?.ArrangementStatus?.ArrangementStatusType
        },
        "ArrangementSubjectMatter": {
            "Subject": check response?.CustomerProductandServiceTypeEligibility?.ArrangementSubjectMatter?.Subject
        },
        "Arrangementtype": check response?.CustomerProductandServiceTypeEligibility?.Arrangementtype
    },
    "CustomerProductandServiceTypeUsage": {
        "ProductUsageDateTime": {
            "DateTimeContent": {
                "Text": check response?.CustomerProductandServiceTypeUsage?.ProductUsageDateTime?.DateTimeContent?.Text
            },
            "TimeZoneCode": {
                "Text": check response?.CustomerProductandServiceTypeUsage?.ProductUsageDateTime?.TimeZoneCode?.Text
            },
            "DaylightSavingIndicator": {
                "Text": check response?.CustomerProductandServiceTypeUsage?.ProductUsageDateTime?.DaylightSavingIndicator?.Text
            },
            "DateTimeType": check response?.CustomerProductandServiceTypeUsage?.ProductUsageDateTime?.DateTimeType
        },
        "ProductUsageVolume": {
            "Text": check response?.CustomerProductandServiceTypeUsage?.ProductUsageVolume?.Text
        },
        "ProductUsageIndicator": {
            "Yesnoindicator": check response?.CustomerProductandServiceTypeUsage?.ProductUsageIndicator?.Yesnoindicator
        }
    },
    "Date": {
        "DateContent": {
            "Text": check response?.Date?.DateContent?.Text
        }
    }
};
