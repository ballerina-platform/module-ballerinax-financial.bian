import ballerinax/financial.bian.attribute.groups.customers as customers;
import ballerinax/financial.bian.attribute.groups.common as common;

isolated function transformPartyReferenceDataDirectoryAssociationResponse(json response) returns common:Associations|error => {
    "EmployeeReference": {
        "PartyReference": {
            "PartyName": {
                "Name": check response?.EmployeeReference?.PartyReference?.PartyName?.Name
            },
            "PartyType": check response?.EmployeeReference?.PartyReference?.PartyType,
            "PartyDateTime": {
                "DateTimeContent": {
                    "Text": check response?.EmployeeReference?.PartyReference?.PartyDateTime?.DateTimeContent?.Text
                },
                "TimeZoneCode": {
                    "Text": check response?.EmployeeReference?.PartyReference?.PartyDateTime?.TimeZoneCode?.Text
                },
                "DaylightSavingIndicator": {
                    "Text": check response?.EmployeeReference?.PartyReference?.PartyDateTime?.DaylightSavingIndicator?.Text
                },
                "DateTimeType": check response?.EmployeeReference?.PartyReference?.PartyDateTime?.DateTimeType
            },
            "PartyIdentification": {
                "PartyIdentificationType": check response?.EmployeeReference?.PartyReference?.PartyIdentification?.PartyIdentificationType,
                "PartyIdentification": {
                    "IdentifierValue": {
                        "Value": check response?.EmployeeReference?.PartyReference?.PartyIdentification?.PartyIdentification?.IdentifierValue?.Value
                    },
                    "IdentifierIssuingAuthority": check response?.EmployeeReference?.PartyReference?.PartyIdentification?.PartyIdentification?.IdentifierIssuingAuthority,
                    "IdentifierStartDate": {
                        "DateTimeContent": {
                            "Text": check response?.EmployeeReference?.PartyReference?.PartyIdentification?.PartyIdentification?.IdentifierStartDate?.DateTimeContent?.Text
                        },
                        "TimeZoneCode": {
                            "Text": check response?.EmployeeReference?.PartyReference?.PartyIdentification?.PartyIdentification?.IdentifierStartDate?.TimeZoneCode?.Text
                        },
                        "DaylightSavingIndicator": {
                            "Text": check response?.EmployeeReference?.PartyReference?.PartyIdentification?.PartyIdentification?.IdentifierStartDate?.DaylightSavingIndicator?.Text
                        },
                        "DateTimeType": check response?.EmployeeReference?.PartyReference?.PartyIdentification?.PartyIdentification?.IdentifierStartDate?.DateTimeType
                    },
                    "IdentifierEndDate": {
                        "DateTimeContent": {
                            "Text": check response?.EmployeeReference?.PartyReference?.PartyIdentification?.PartyIdentification?.IdentifierEndDate?.DateTimeContent?.Text
                        },
                        "TimeZoneCode": {
                            "Text": check response?.EmployeeReference?.PartyReference?.PartyIdentification?.PartyIdentification?.IdentifierEndDate?.TimeZoneCode?.Text
                        },
                        "DaylightSavingIndicator": {
                            "Text": check response?.EmployeeReference?.PartyReference?.PartyIdentification?.PartyIdentification?.IdentifierEndDate?.DaylightSavingIndicator?.Text
                        },
                        "DateTimeType": check response?.EmployeeReference?.PartyReference?.PartyIdentification?.PartyIdentification?.IdentifierEndDate?.DateTimeType
                    }
                }
            },
            "PartyLegalStructureType": check response?.EmployeeReference?.PartyReference?.PartyLegalStructureType
        },
        "PartyInvolvement": {
            "PartyRoleType": {
                "Text": check response?.EmployeeReference?.PartyInvolvement?.PartyRoleType?.Text
            },
            "PartyRoleName": {
                "Name": check response?.EmployeeReference?.PartyInvolvement?.PartyRoleName?.Name
            },
            "PartyRoleValidityPeriod": {
                "FromDateTime": {
                    "DateTimeContent": {
                        "Text": check response?.EmployeeReference?.PartyInvolvement?.PartyRoleValidityPeriod?.FromDateTime?.DateTimeContent?.Text
                    },
                    "TimeZoneCode": {
                        "Text": check response?.EmployeeReference?.PartyInvolvement?.PartyRoleValidityPeriod?.FromDateTime?.TimeZoneCode?.Text
                    },
                    "DaylightSavingIndicator": {
                        "Text": check response?.EmployeeReference?.PartyInvolvement?.PartyRoleValidityPeriod?.FromDateTime?.DaylightSavingIndicator?.Text
                    },
                    "DateTimeType": check response?.EmployeeReference?.PartyInvolvement?.PartyRoleValidityPeriod?.FromDateTime?.DateTimeType
                },
                "ToDateTime": {
                    "DateTimeContent": {
                        "Text": check response?.EmployeeReference?.PartyInvolvement?.PartyRoleValidityPeriod?.ToDateTime?.DateTimeContent?.Text
                    },
                    "TimeZoneCode": {
                        "Text": check response?.EmployeeReference?.PartyInvolvement?.PartyRoleValidityPeriod?.ToDateTime?.TimeZoneCode?.Text
                    },
                    "DaylightSavingIndicator": {
                        "Text": check response?.EmployeeReference?.PartyInvolvement?.PartyRoleValidityPeriod?.ToDateTime?.DaylightSavingIndicator?.Text
                    },
                    "DateTimeType": check response?.EmployeeReference?.PartyInvolvement?.PartyRoleValidityPeriod?.ToDateTime?.DateTimeType
                }
            },
            "PartyInvolvementType": check response?.EmployeeReference?.PartyInvolvement?.PartyInvolvementType
        }
    },
    "AssociateReference": {
        "PartyReference": {
            "PartyName": {
                "Name": check response?.AssociateReference?.PartyReference?.PartyName?.Name
            },
            "PartyType": check response?.AssociateReference?.PartyReference?.PartyType,
            "PartyDateTime": {
                "DateTimeContent": {
                    "Text": check response?.AssociateReference?.PartyReference?.PartyDateTime?.DateTimeContent?.Text
                },
                "TimeZoneCode": {
                    "Text": check response?.AssociateReference?.PartyReference?.PartyDateTime?.TimeZoneCode?.Text
                },
                "DaylightSavingIndicator": {
                    "Text": check response?.AssociateReference?.PartyReference?.PartyDateTime?.DaylightSavingIndicator?.Text
                },
                "DateTimeType": check response?.AssociateReference?.PartyReference?.PartyDateTime?.DateTimeType
            },
            "PartyIdentification": {
                "PartyIdentificationType": check response?.AssociateReference?.PartyReference?.PartyIdentification?.PartyIdentificationType,
                "PartyIdentification": {
                    "IdentifierValue": {
                        "Value": check response?.AssociateReference?.PartyReference?.PartyIdentification?.PartyIdentification?.IdentifierValue?.Value
                    },
                    "IdentifierIssuingAuthority": check response?.AssociateReference?.PartyReference?.PartyIdentification?.PartyIdentification?.IdentifierIssuingAuthority,
                    "IdentifierStartDate": {
                        "DateTimeContent": {
                            "Text": check response?.AssociateReference?.PartyReference?.PartyIdentification?.PartyIdentification?.IdentifierStartDate?.DateTimeContent?.Text
                        },
                        "TimeZoneCode": {
                            "Text": check response?.AssociateReference?.PartyReference?.PartyIdentification?.PartyIdentification?.IdentifierStartDate?.TimeZoneCode?.Text
                        },
                        "DaylightSavingIndicator": {
                            "Text": check response?.AssociateReference?.PartyReference?.PartyIdentification?.PartyIdentification?.IdentifierStartDate?.DaylightSavingIndicator?.Text
                        },
                        "DateTimeType": check response?.AssociateReference?.PartyReference?.PartyIdentification?.PartyIdentification?.IdentifierStartDate?.DateTimeType
                    },
                    "IdentifierEndDate": {
                        "DateTimeContent": {
                            "Text": check response?.AssociateReference?.PartyReference?.PartyIdentification?.PartyIdentification?.IdentifierEndDate?.DateTimeContent?.Text
                        },
                        "TimeZoneCode": {
                            "Text": check response?.AssociateReference?.PartyReference?.PartyIdentification?.PartyIdentification?.IdentifierEndDate?.TimeZoneCode?.Text
                        },
                        "DaylightSavingIndicator": {
                            "Text": check response?.AssociateReference?.PartyReference?.PartyIdentification?.PartyIdentification?.IdentifierEndDate?.DaylightSavingIndicator?.Text
                        },
                        "DateTimeType": check response?.AssociateReference?.PartyReference?.PartyIdentification?.PartyIdentification?.IdentifierEndDate?.DateTimeType
                    }
                }
            },
            "PartyLegalStructureType": check response?.AssociateReference?.PartyReference?.PartyLegalStructureType
        },
        "PartyInvolvement": {
            "PartyRoleType": {
                "Text": check response?.AssociateReference?.PartyInvolvement?.PartyRoleType?.Text
            },
            "PartyRoleName": {
                "Name": check response?.AssociateReference?.PartyInvolvement?.PartyRoleName?.Name
            },
            "PartyRoleValidityPeriod": {
                "FromDateTime": {
                    "DateTimeContent": {
                        "Text": check response?.AssociateReference?.PartyInvolvement?.PartyRoleValidityPeriod?.FromDateTime?.DateTimeContent?.Text
                    },
                    "TimeZoneCode": {
                        "Text": check response?.AssociateReference?.PartyInvolvement?.PartyRoleValidityPeriod?.FromDateTime?.TimeZoneCode?.Text
                    },
                    "DaylightSavingIndicator": {
                        "Text": check response?.AssociateReference?.PartyInvolvement?.PartyRoleValidityPeriod?.FromDateTime?.DaylightSavingIndicator?.Text
                    },
                    "DateTimeType": check response?.AssociateReference?.PartyInvolvement?.PartyRoleValidityPeriod?.FromDateTime?.DateTimeType
                },
                "ToDateTime": {
                    "DateTimeContent": {
                        "Text": check response?.AssociateReference?.PartyInvolvement?.PartyRoleValidityPeriod?.ToDateTime?.DateTimeContent?.Text
                    },
                    "TimeZoneCode": {
                        "Text": check response?.AssociateReference?.PartyInvolvement?.PartyRoleValidityPeriod?.ToDateTime?.TimeZoneCode?.Text
                    },
                    "DaylightSavingIndicator": {
                        "Text": check response?.AssociateReference?.PartyInvolvement?.PartyRoleValidityPeriod?.ToDateTime?.DaylightSavingIndicator?.Text
                    },
                    "DateTimeType": check response?.AssociateReference?.PartyInvolvement?.PartyRoleValidityPeriod?.ToDateTime?.DateTimeType
                }
            },
            "PartyInvolvementType": check response?.AssociateReference?.PartyInvolvement?.PartyInvolvementType
        }
    },
    "AssociateType": check response?.AssociateType,
    "AssociateObligationorDependencyDescription": {
        "ObligationOrEntitlementSubject": {
            "Subject": check response?.AssociateObligationorDependencyDescription?.ObligationOrEntitlementSubject?.Subject
        },
        "ObligationOrEntitlementType": check response?.AssociateObligationorDependencyDescription?.ObligationOrEntitlementType,
        "ObligationOrEntitlementModality": {
            "ServiceArrangementModalityType": check response?.AssociateObligationorDependencyDescription?.ObligationOrEntitlementModality?.ServiceArrangementModalityType
        },
        "ObligationOrEntitlementDefinition": {
            "Text": check response?.AssociateObligationorDependencyDescription?.ObligationOrEntitlementDefinition?.Text
        }
    },
    "AssociationValidFromToDate": {
        "FromDateTime": {
            "DateTimeContent": {
                "Text": check response?.AssociationValidFromToDate?.FromDateTime?.DateTimeContent?.Text
            },
            "TimeZoneCode": {
                "Text": check response?.AssociationValidFromToDate?.FromDateTime?.TimeZoneCode?.Text
            },
            "DaylightSavingIndicator": {
                "Text": check response?.AssociationValidFromToDate?.FromDateTime?.DaylightSavingIndicator?.Text
            },
            "DateTimeType": check response?.AssociationValidFromToDate?.FromDateTime?.DateTimeType
        },
        "ToDateTime": {
            "DateTimeContent": {
                "Text": check response?.AssociationValidFromToDate?.ToDateTime?.DateTimeContent?.Text
            },
            "TimeZoneCode": {
                "Text": check response?.AssociationValidFromToDate?.ToDateTime?.TimeZoneCode?.Text
            },
            "DaylightSavingIndicator": {
                "Text": check response?.AssociationValidFromToDate?.ToDateTime?.DaylightSavingIndicator?.Text
            },
            "DateTimeType": check response?.AssociationValidFromToDate?.ToDateTime?.DateTimeType
        }
    },
    "ProductInstanceReference": {
        "ProductAgreementType": check response?.ProductInstanceReference?.ProductAgreementType
    },
    "PreferredBeneficiary": {
        "PartyReference": {
            "PartyName": {
                "Name": check response?.PreferredBeneficiary?.PartyReference?.PartyName?.Name
            },
            "PartyType": check response?.PreferredBeneficiary?.PartyReference?.PartyType,
            "PartyDateTime": {
                "DateTimeContent": {
                    "Text": check response?.PreferredBeneficiary?.PartyReference?.PartyDateTime?.DateTimeContent?.Text
                },
                "TimeZoneCode": {
                    "Text": check response?.PreferredBeneficiary?.PartyReference?.PartyDateTime?.TimeZoneCode?.Text
                },
                "DaylightSavingIndicator": {
                    "Text": check response?.PreferredBeneficiary?.PartyReference?.PartyDateTime?.DaylightSavingIndicator?.Text
                },
                "DateTimeType": check response?.PreferredBeneficiary?.PartyReference?.PartyDateTime?.DateTimeType
            },
            "PartyIdentification": {
                "PartyIdentificationType": check response?.PreferredBeneficiary?.PartyReference?.PartyIdentification?.PartyIdentificationType,
                "PartyIdentification": {
                    "IdentifierValue": {
                        "Value": check response?.PreferredBeneficiary?.PartyReference?.PartyIdentification?.PartyIdentification?.IdentifierValue?.Value
                    },
                    "IdentifierIssuingAuthority": check response?.PreferredBeneficiary?.PartyReference?.PartyIdentification?.PartyIdentification?.IdentifierIssuingAuthority,
                    "IdentifierStartDate": {
                        "DateTimeContent": {
                            "Text": check response?.PreferredBeneficiary?.PartyReference?.PartyIdentification?.PartyIdentification?.IdentifierStartDate?.DateTimeContent?.Text
                        },
                        "TimeZoneCode": {
                            "Text": check response?.PreferredBeneficiary?.PartyReference?.PartyIdentification?.PartyIdentification?.IdentifierStartDate?.TimeZoneCode?.Text
                        },
                        "DaylightSavingIndicator": {
                            "Text": check response?.PreferredBeneficiary?.PartyReference?.PartyIdentification?.PartyIdentification?.IdentifierStartDate?.DaylightSavingIndicator?.Text
                        },
                        "DateTimeType": check response?.PreferredBeneficiary?.PartyReference?.PartyIdentification?.PartyIdentification?.IdentifierStartDate?.DateTimeType
                    },
                    "IdentifierEndDate": {
                        "DateTimeContent": {
                            "Text": check response?.PreferredBeneficiary?.PartyReference?.PartyIdentification?.PartyIdentification?.IdentifierEndDate?.DateTimeContent?.Text
                        },
                        "TimeZoneCode": {
                            "Text": check response?.PreferredBeneficiary?.PartyReference?.PartyIdentification?.PartyIdentification?.IdentifierEndDate?.TimeZoneCode?.Text
                        },
                        "DaylightSavingIndicator": {
                            "Text": check response?.PreferredBeneficiary?.PartyReference?.PartyIdentification?.PartyIdentification?.IdentifierEndDate?.DaylightSavingIndicator?.Text
                        },
                        "DateTimeType": check response?.PreferredBeneficiary?.PartyReference?.PartyIdentification?.PartyIdentification?.IdentifierEndDate?.DateTimeType
                    }
                }
            },
            "PartyLegalStructureType": check response?.PreferredBeneficiary?.PartyReference?.PartyLegalStructureType
        },
        "PartyInvolvement": {
            "PartyRoleType": {
                "Text": check response?.PreferredBeneficiary?.PartyInvolvement?.PartyRoleType?.Text
            },
            "PartyRoleName": {
                "Name": check response?.PreferredBeneficiary?.PartyInvolvement?.PartyRoleName?.Name
            },
            "PartyRoleValidityPeriod": {
                "FromDateTime": {
                    "DateTimeContent": {
                        "Text": check response?.PreferredBeneficiary?.PartyInvolvement?.PartyRoleValidityPeriod?.FromDateTime?.DateTimeContent?.Text
                    },
                    "TimeZoneCode": {
                        "Text": check response?.PreferredBeneficiary?.PartyInvolvement?.PartyRoleValidityPeriod?.FromDateTime?.TimeZoneCode?.Text
                    },
                    "DaylightSavingIndicator": {
                        "Text": check response?.PreferredBeneficiary?.PartyInvolvement?.PartyRoleValidityPeriod?.FromDateTime?.DaylightSavingIndicator?.Text
                    },
                    "DateTimeType": check response?.PreferredBeneficiary?.PartyInvolvement?.PartyRoleValidityPeriod?.FromDateTime?.DateTimeType
                },
                "ToDateTime": {
                    "DateTimeContent": {
                        "Text": check response?.PreferredBeneficiary?.PartyInvolvement?.PartyRoleValidityPeriod?.ToDateTime?.DateTimeContent?.Text
                    },
                    "TimeZoneCode": {
                        "Text": check response?.PreferredBeneficiary?.PartyInvolvement?.PartyRoleValidityPeriod?.ToDateTime?.TimeZoneCode?.Text
                    },
                    "DaylightSavingIndicator": {
                        "Text": check response?.PreferredBeneficiary?.PartyInvolvement?.PartyRoleValidityPeriod?.ToDateTime?.DaylightSavingIndicator?.Text
                    },
                    "DateTimeType": check response?.PreferredBeneficiary?.PartyInvolvement?.PartyRoleValidityPeriod?.ToDateTime?.DateTimeType
                }
            },
            "PartyInvolvementType": check response?.PreferredBeneficiary?.PartyInvolvement?.PartyInvolvementType
        }
    },
    "ProxyRepresentativePowerofAttorneyReference": {
        "RelationshipType": check response?.ProxyRepresentativePowerofAttorneyReference?.RelationshipType,
        "FromParty": {
            "PartyName": {
                "Name": check response?.ProxyRepresentativePowerofAttorneyReference?.FromParty?.PartyName?.Name
            },
            "PartyType": check response?.ProxyRepresentativePowerofAttorneyReference?.FromParty?.PartyType,
            "PartyDateTime": {
                "DateTimeContent": {
                    "Text": check response?.ProxyRepresentativePowerofAttorneyReference?.FromParty?.PartyDateTime?.DateTimeContent?.Text
                },
                "TimeZoneCode": {
                    "Text": check response?.ProxyRepresentativePowerofAttorneyReference?.FromParty?.PartyDateTime?.TimeZoneCode?.Text
                },
                "DaylightSavingIndicator": {
                    "Text": check response?.ProxyRepresentativePowerofAttorneyReference?.FromParty?.PartyDateTime?.DaylightSavingIndicator?.Text
                },
                "DateTimeType": check response?.ProxyRepresentativePowerofAttorneyReference?.FromParty?.PartyDateTime?.DateTimeType
            },
            "PartyIdentification": {
                "PartyIdentificationType": check response?.ProxyRepresentativePowerofAttorneyReference?.FromParty?.PartyIdentification?.PartyIdentificationType,
                "PartyIdentification": {
                    "IdentifierValue": {
                        "Value": check response?.ProxyRepresentativePowerofAttorneyReference?.FromParty?.PartyIdentification?.PartyIdentification?.IdentifierValue?.Value
                    },
                    "IdentifierIssuingAuthority": check response?.ProxyRepresentativePowerofAttorneyReference?.FromParty?.PartyIdentification?.PartyIdentification?.IdentifierIssuingAuthority,
                    "IdentifierStartDate": {
                        "DateTimeContent": {
                            "Text": check response?.ProxyRepresentativePowerofAttorneyReference?.FromParty?.PartyIdentification?.PartyIdentification?.IdentifierStartDate?.DateTimeContent?.Text
                        },
                        "TimeZoneCode": {
                            "Text": check response?.ProxyRepresentativePowerofAttorneyReference?.FromParty?.PartyIdentification?.PartyIdentification?.IdentifierStartDate?.TimeZoneCode?.Text
                        },
                        "DaylightSavingIndicator": {
                            "Text": check response?.ProxyRepresentativePowerofAttorneyReference?.FromParty?.PartyIdentification?.PartyIdentification?.IdentifierStartDate?.DaylightSavingIndicator?.Text
                        },
                        "DateTimeType": check response?.ProxyRepresentativePowerofAttorneyReference?.FromParty?.PartyIdentification?.PartyIdentification?.IdentifierStartDate?.DateTimeType
                    },
                    "IdentifierEndDate": {
                        "DateTimeContent": {
                            "Text": check response?.ProxyRepresentativePowerofAttorneyReference?.FromParty?.PartyIdentification?.PartyIdentification?.IdentifierEndDate?.DateTimeContent?.Text
                        },
                        "TimeZoneCode": {
                            "Text": check response?.ProxyRepresentativePowerofAttorneyReference?.FromParty?.PartyIdentification?.PartyIdentification?.IdentifierEndDate?.TimeZoneCode?.Text
                        },
                        "DaylightSavingIndicator": {
                            "Text": check response?.ProxyRepresentativePowerofAttorneyReference?.FromParty?.PartyIdentification?.PartyIdentification?.IdentifierEndDate?.DaylightSavingIndicator?.Text
                        },
                        "DateTimeType": check response?.ProxyRepresentativePowerofAttorneyReference?.FromParty?.PartyIdentification?.PartyIdentification?.IdentifierEndDate?.DateTimeType
                    }
                }
            },
            "PartyLegalStructureType": check response?.ProxyRepresentativePowerofAttorneyReference?.FromParty?.PartyLegalStructureType
        },
        "ToParty": {
            "PartyName": {
                "Name": check response?.ProxyRepresentativePowerofAttorneyReference?.ToParty?.PartyName?.Name
            },
            "PartyType": check response?.ProxyRepresentativePowerofAttorneyReference?.ToParty?.PartyType,
            "PartyDateTime": {
                "DateTimeContent": {
                    "Text": check response?.ProxyRepresentativePowerofAttorneyReference?.ToParty?.PartyDateTime?.DateTimeContent?.Text
                },
                "TimeZoneCode": {
                    "Text": check response?.ProxyRepresentativePowerofAttorneyReference?.ToParty?.PartyDateTime?.TimeZoneCode?.Text
                },
                "DaylightSavingIndicator": {
                    "Text": check response?.ProxyRepresentativePowerofAttorneyReference?.ToParty?.PartyDateTime?.DaylightSavingIndicator?.Text
                },
                "DateTimeType": check response?.ProxyRepresentativePowerofAttorneyReference?.ToParty?.PartyDateTime?.DateTimeType
            },
            "PartyIdentification": {
                "PartyIdentificationType": check response?.ProxyRepresentativePowerofAttorneyReference?.ToParty?.PartyIdentification?.PartyIdentificationType,
                "PartyIdentification": {
                    "IdentifierValue": {
                        "Value": check response?.ProxyRepresentativePowerofAttorneyReference?.ToParty?.PartyIdentification?.PartyIdentification?.IdentifierValue?.Value
                    },
                    "IdentifierIssuingAuthority": check response?.ProxyRepresentativePowerofAttorneyReference?.ToParty?.PartyIdentification?.PartyIdentification?.IdentifierIssuingAuthority,
                    "IdentifierStartDate": {
                        "DateTimeContent": {
                            "Text": check response?.ProxyRepresentativePowerofAttorneyReference?.ToParty?.PartyIdentification?.PartyIdentification?.IdentifierStartDate?.DateTimeContent?.Text
                        },
                        "TimeZoneCode": {
                            "Text": check response?.ProxyRepresentativePowerofAttorneyReference?.ToParty?.PartyIdentification?.PartyIdentification?.IdentifierStartDate?.TimeZoneCode?.Text
                        },
                        "DaylightSavingIndicator": {
                            "Text": check response?.ProxyRepresentativePowerofAttorneyReference?.ToParty?.PartyIdentification?.PartyIdentification?.IdentifierStartDate?.DaylightSavingIndicator?.Text
                        },
                        "DateTimeType": check response?.ProxyRepresentativePowerofAttorneyReference?.ToParty?.PartyIdentification?.PartyIdentification?.IdentifierStartDate?.DateTimeType
                    },
                    "IdentifierEndDate": {
                        "DateTimeContent": {
                            "Text": check response?.ProxyRepresentativePowerofAttorneyReference?.ToParty?.PartyIdentification?.PartyIdentification?.IdentifierEndDate?.DateTimeContent?.Text
                        },
                        "TimeZoneCode": {
                            "Text": check response?.ProxyRepresentativePowerofAttorneyReference?.ToParty?.PartyIdentification?.PartyIdentification?.IdentifierEndDate?.TimeZoneCode?.Text
                        },
                        "DaylightSavingIndicator": {
                            "Text": check response?.ProxyRepresentativePowerofAttorneyReference?.ToParty?.PartyIdentification?.PartyIdentification?.IdentifierEndDate?.DaylightSavingIndicator?.Text
                        },
                        "DateTimeType": check response?.ProxyRepresentativePowerofAttorneyReference?.ToParty?.PartyIdentification?.PartyIdentification?.IdentifierEndDate?.DateTimeType
                    }
                }
            },
            "PartyLegalStructureType": check response?.ProxyRepresentativePowerofAttorneyReference?.ToParty?.PartyLegalStructureType
        }
    },
    "ProductInstanseInvolvementReference": {
        "InvolvementType": check response?.ProductInstanseInvolvementReference?.InvolvementType,
        "PartyReference": {
            "PartyName": {
                "Name": check response?.ProductInstanseInvolvementReference?.PartyReference?.PartyName?.Name
            },
            "PartyType": check response?.ProductInstanseInvolvementReference?.PartyReference?.PartyType,
            "PartyDateTime": {
                "DateTimeContent": {
                    "Text": check response?.ProductInstanseInvolvementReference?.PartyReference?.PartyDateTime?.DateTimeContent?.Text
                },
                "TimeZoneCode": {
                    "Text": check response?.ProductInstanseInvolvementReference?.PartyReference?.PartyDateTime?.TimeZoneCode?.Text
                },
                "DaylightSavingIndicator": {
                    "Text": check response?.ProductInstanseInvolvementReference?.PartyReference?.PartyDateTime?.DaylightSavingIndicator?.Text
                },
                "DateTimeType": check response?.ProductInstanseInvolvementReference?.PartyReference?.PartyDateTime?.DateTimeType
            },
            "PartyIdentification": {
                "PartyIdentificationType": check response?.ProductInstanseInvolvementReference?.PartyReference?.PartyIdentification?.PartyIdentificationType,
                "PartyIdentification": {
                    "IdentifierValue": {
                        "Value": check response?.ProductInstanseInvolvementReference?.PartyReference?.PartyIdentification?.PartyIdentification?.IdentifierValue?.Value
                    },
                    "IdentifierIssuingAuthority": check response?.ProductInstanseInvolvementReference?.PartyReference?.PartyIdentification?.PartyIdentification?.IdentifierIssuingAuthority,
                    "IdentifierStartDate": {
                        "DateTimeContent": {
                            "Text": check response?.ProductInstanseInvolvementReference?.PartyReference?.PartyIdentification?.PartyIdentification?.IdentifierStartDate?.DateTimeContent?.Text
                        },
                        "TimeZoneCode": {
                            "Text": check response?.ProductInstanseInvolvementReference?.PartyReference?.PartyIdentification?.PartyIdentification?.IdentifierStartDate?.TimeZoneCode?.Text
                        },
                        "DaylightSavingIndicator": {
                            "Text": check response?.ProductInstanseInvolvementReference?.PartyReference?.PartyIdentification?.PartyIdentification?.IdentifierStartDate?.DaylightSavingIndicator?.Text
                        },
                        "DateTimeType": check response?.ProductInstanseInvolvementReference?.PartyReference?.PartyIdentification?.PartyIdentification?.IdentifierStartDate?.DateTimeType
                    },
                    "IdentifierEndDate": {
                        "DateTimeContent": {
                            "Text": check response?.ProductInstanseInvolvementReference?.PartyReference?.PartyIdentification?.PartyIdentification?.IdentifierEndDate?.DateTimeContent?.Text
                        },
                        "TimeZoneCode": {
                            "Text": check response?.ProductInstanseInvolvementReference?.PartyReference?.PartyIdentification?.PartyIdentification?.IdentifierEndDate?.TimeZoneCode?.Text
                        },
                        "DaylightSavingIndicator": {
                            "Text": check response?.ProductInstanseInvolvementReference?.PartyReference?.PartyIdentification?.PartyIdentification?.IdentifierEndDate?.DaylightSavingIndicator?.Text
                        },
                        "DateTimeType": check response?.ProductInstanseInvolvementReference?.PartyReference?.PartyIdentification?.PartyIdentification?.IdentifierEndDate?.DateTimeType
                    }
                }
            },
            "PartyLegalStructureType": check response?.ProductInstanseInvolvementReference?.PartyReference?.PartyLegalStructureType
        },
        "AgreementReference": {
            "ProductAgreementType": check response?.ProductInstanseInvolvementReference?.AgreementReference?.ProductAgreementType
        }
    }
};

isolated function transformPartyReferenceDataDirectoryRetrievalResponse(json response) returns customers:PartyReferenceDataDirectoryEntry|error => {
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
    "DirectoryEntryDateType": check response?.DirectoryEntryDateType,
    "DirectoryEntryDate": {
        "DateTimeContent": check response?.DirectoryEntryDate?.DateTimeContent,
        "TimeZoneCode": check response?.DirectoryEntryDate?.TimeZoneCode,
        "DaylightSavingIndicator": check response?.DirectoryEntryDate?.DaylightSavingIndicator,
        "DateTimeType": check response?.DirectoryEntryDate?.DateTimeType
    },
    "PartyType": check response?.PartyType
};
