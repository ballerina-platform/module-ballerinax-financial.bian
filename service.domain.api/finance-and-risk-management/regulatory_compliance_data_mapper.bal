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

import ballerinax/financial.bian.attribute.groups.finance_risk_management as finance_risk_management;
isolated function transfromRegulatoryComplianceResponse(json response) returns finance_risk_management:RegulatoryComplianceAssessment|error => {
    "RegulatoryAssessmentType": check response?.RegulatoryAssessmentType,
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
    "RegulatoryAuthorityReference": {
        "RegulatoryAuthority": check response?.RegulatoryAuthorityReference?.RegulatoryAuthority
    },
    "RegulationReference": {
        "RegulationDefinition": check response?.RegulationReference?.RegulationDefinition,
        "RuleSetDefinition": check response?.RegulationReference?.RuleSetDefinition,
        "RuleSetInterpretation": check response?.RegulationReference?.RuleSetInterpretation,
        "RuleSetType": check response?.RegulationReference?.RuleSetType,
        "RuleSetName": {
            "Name": check response?.RegulationReference?.RuleSetName?.Name
        },
        "RuleSetIdentification": {
            "IdentifierValue": check response?.RegulationReference?.RuleSetIdentification?.IdentifierValue,
            "IdentifierIssuerReference": {
                "PartyReference": check response?.RegulationReference?.RuleSetIdentification?.IdentifierIssuerReference?.PartyReference,
                "InvolvementReference": check response?.RegulationReference?.RuleSetIdentification?.IdentifierIssuerReference?.InvolvementReference
            },
            "IdentifierStartDate": {
                "DateTimeContent": check response?.RegulationReference?.RuleSetIdentification?.IdentifierStartDate?.DateTimeContent,
                "TimeZoneCode": check response?.RegulationReference?.RuleSetIdentification?.IdentifierStartDate?.TimeZoneCode,
                "DaylightSavingIndicator": check response?.RegulationReference?.RuleSetIdentification?.IdentifierStartDate?.DaylightSavingIndicator,
                "DateTimeType": check response?.RegulationReference?.RuleSetIdentification?.IdentifierStartDate?.DateTimeType
            },
            "IdentifierEndDate": {
                "DateTimeContent": check response?.RegulationReference?.RuleSetIdentification?.IdentifierEndDate?.DateTimeContent,
                "TimeZoneCode": check response?.RegulationReference?.RuleSetIdentification?.IdentifierEndDate?.TimeZoneCode,
                "DaylightSavingIndicator": check response?.RegulationReference?.RuleSetIdentification?.IdentifierEndDate?.DaylightSavingIndicator,
                "DateTimeType": check response?.RegulationReference?.RuleSetIdentification?.IdentifierEndDate?.DateTimeType
            }
        },
        "RuleSetLifecycleStatus": {
            "StatusReason": check response?.RegulationReference?.RuleSetLifecycleStatus?.StatusReason,
            "StatusDateTime": {
                "DateTimeContent": check response?.RegulationReference?.RuleSetLifecycleStatus?.StatusDateTime?.DateTimeContent,
                "TimeZoneCode": check response?.RegulationReference?.RuleSetLifecycleStatus?.StatusDateTime?.TimeZoneCode,
                "DaylightSavingIndicator": check response?.RegulationReference?.RuleSetLifecycleStatus?.StatusDateTime?.DaylightSavingIndicator,
                "DateTimeType": check response?.RegulationReference?.RuleSetLifecycleStatus?.StatusDateTime?.DateTimeType
            },
            "StatusValidityPeriod": {
                "FromDateTime": {
                    "DateTimeContent": check response?.RegulationReference?.RuleSetLifecycleStatus?.StatusValidityPeriod?.FromDateTime?.DateTimeContent,
                    "TimeZoneCode": check response?.RegulationReference?.RuleSetLifecycleStatus?.StatusValidityPeriod?.FromDateTime?.TimeZoneCode,
                    "DaylightSavingIndicator": check response?.RegulationReference?.RuleSetLifecycleStatus?.StatusValidityPeriod?.FromDateTime?.DaylightSavingIndicator,
                    "DateTimeType": check response?.RegulationReference?.RuleSetLifecycleStatus?.StatusValidityPeriod?.FromDateTime?.DateTimeType
                },
                "ToDateTime": {
                    "DateTimeContent": check response?.RegulationReference?.RuleSetLifecycleStatus?.StatusValidityPeriod?.ToDateTime?.DateTimeContent,
                    "TimeZoneCode": check response?.RegulationReference?.RuleSetLifecycleStatus?.StatusValidityPeriod?.ToDateTime?.TimeZoneCode,
                    "DaylightSavingIndicator": check response?.RegulationReference?.RuleSetLifecycleStatus?.StatusValidityPeriod?.ToDateTime?.DaylightSavingIndicator,
                    "DateTimeType": check response?.RegulationReference?.RuleSetLifecycleStatus?.StatusValidityPeriod?.ToDateTime?.DateTimeType
                }
            },
            "StatusInvolvedPartyReference": {
                "PartyReference": check response?.RegulationReference?.RuleSetLifecycleStatus?.StatusInvolvedPartyReference?.PartyReference,
                "InvolvementReference": check response?.RegulationReference?.RuleSetLifecycleStatus?.StatusInvolvedPartyReference?.InvolvementReference
            }
        }
    },
    "RegulationDefinition": check response?.RegulationDefinition,
    "RegulationComplianceandReportingRequirements": check response?.RegulationComplianceandReportingRequirements,
    "RegulationAccountability": {
        "BusinessFunction": check response?.RegulationAccountability?.BusinessFunction,
        "Goal": check response?.RegulationAccountability?.Goal,
        "OrganisationStructureHierarchy": check response?.RegulationAccountability?.OrganisationStructureHierarchy,
        "OrganisationIdentification": {
            "OrganisationIdentificationType": check response?.RegulationAccountability?.OrganisationIdentification?.OrganisationIdentificationType,
            "OrganisationIdentification": {
                "IdentifierValue": check response?.RegulationAccountability?.OrganisationIdentification?.OrganisationIdentification?.IdentifierValue,
                "IdentifierIssuerReference": {
                    "PartyReference": check response?.RegulationAccountability?.OrganisationIdentification?.OrganisationIdentification?.IdentifierIssuerReference?.PartyReference,
                    "InvolvementReference": check response?.RegulationAccountability?.OrganisationIdentification?.OrganisationIdentification?.IdentifierIssuerReference?.InvolvementReference
                },
                "IdentifierStartDate": {
                    "DateTimeContent": check response?.RegulationAccountability?.OrganisationIdentification?.OrganisationIdentification?.IdentifierStartDate?.DateTimeContent,
                    "TimeZoneCode": check response?.RegulationAccountability?.OrganisationIdentification?.OrganisationIdentification?.IdentifierStartDate?.TimeZoneCode,
                    "DaylightSavingIndicator": check response?.RegulationAccountability?.OrganisationIdentification?.OrganisationIdentification?.IdentifierStartDate?.DaylightSavingIndicator,
                    "DateTimeType": check response?.RegulationAccountability?.OrganisationIdentification?.OrganisationIdentification?.IdentifierStartDate?.DateTimeType
                },
                "IdentifierEndDate": {
                    "DateTimeContent": check response?.RegulationAccountability?.OrganisationIdentification?.OrganisationIdentification?.IdentifierEndDate?.DateTimeContent,
                    "TimeZoneCode": check response?.RegulationAccountability?.OrganisationIdentification?.OrganisationIdentification?.IdentifierEndDate?.TimeZoneCode,
                    "DaylightSavingIndicator": check response?.RegulationAccountability?.OrganisationIdentification?.OrganisationIdentification?.IdentifierEndDate?.DaylightSavingIndicator,
                    "DateTimeType": check response?.RegulationAccountability?.OrganisationIdentification?.OrganisationIdentification?.IdentifierEndDate?.DateTimeType
                }
            }
        },
        "OrganisationSector": check response?.RegulationAccountability?.OrganisationSector,
        "LegalEntityIndicator": check response?.RegulationAccountability?.LegalEntityIndicator,
        "OrganisationDate": {
            "OrganisatioDate": {
                "DateTimeContent": check response?.RegulationAccountability?.OrganisationDate?.OrganisatioDate?.DateTimeContent,
                "TimeZoneCode": check response?.RegulationAccountability?.OrganisationDate?.OrganisatioDate?.TimeZoneCode,
                "DaylightSavingIndicator": check response?.RegulationAccountability?.OrganisationDate?.OrganisatioDate?.DaylightSavingIndicator,
                "DateTimeType": check response?.RegulationAccountability?.OrganisationDate?.OrganisatioDate?.DateTimeType
            },
            "OrganisatioDateType": check response?.RegulationAccountability?.OrganisationDate?.OrganisatioDateType
        },
        "OrganisationType": check response?.RegulationAccountability?.OrganisationType,
        "OrganisationName": {
            "Name": {
                "Name": check response?.RegulationAccountability?.OrganisationName?.Name?.Name
            },
            "NameType": check response?.RegulationAccountability?.OrganisationName?.NameType
        },
        "OrganisationLegalStructure": check response?.RegulationAccountability?.OrganisationLegalStructure
    },
    "RegulationPenalties": check response?.RegulationPenalties,
    "RegulationGuideline": {
        "RuleSetDefinition": check response?.RegulationGuideline?.RuleSetDefinition,
        "RuleSetInterpretation": check response?.RegulationGuideline?.RuleSetInterpretation,
        "RuleSetType": check response?.RegulationGuideline?.RuleSetType,
        "RuleSetName": {
            "Name": check response?.RegulationGuideline?.RuleSetName?.Name
        },
        "RuleSetIdentification": {
            "IdentifierValue": check response?.RegulationGuideline?.RuleSetIdentification?.IdentifierValue,
            "IdentifierIssuerReference": {
                "PartyReference": check response?.RegulationGuideline?.RuleSetIdentification?.IdentifierIssuerReference?.PartyReference,
                "InvolvementReference": check response?.RegulationGuideline?.RuleSetIdentification?.IdentifierIssuerReference?.InvolvementReference
            },
            "IdentifierStartDate": {
                "DateTimeContent": check response?.RegulationGuideline?.RuleSetIdentification?.IdentifierStartDate?.DateTimeContent,
                "TimeZoneCode": check response?.RegulationGuideline?.RuleSetIdentification?.IdentifierStartDate?.TimeZoneCode,
                "DaylightSavingIndicator": check response?.RegulationGuideline?.RuleSetIdentification?.IdentifierStartDate?.DaylightSavingIndicator,
                "DateTimeType": check response?.RegulationGuideline?.RuleSetIdentification?.IdentifierStartDate?.DateTimeType
            },
            "IdentifierEndDate": {
                "DateTimeContent": check response?.RegulationGuideline?.RuleSetIdentification?.IdentifierEndDate?.DateTimeContent,
                "TimeZoneCode": check response?.RegulationGuideline?.RuleSetIdentification?.IdentifierEndDate?.TimeZoneCode,
                "DaylightSavingIndicator": check response?.RegulationGuideline?.RuleSetIdentification?.IdentifierEndDate?.DaylightSavingIndicator,
                "DateTimeType": check response?.RegulationGuideline?.RuleSetIdentification?.IdentifierEndDate?.DateTimeType
            }
        },
        "RuleSetLifecycleStatus": {
            "StatusReason": check response?.RegulationGuideline?.RuleSetLifecycleStatus?.StatusReason,
            "StatusDateTime": {
                "DateTimeContent": check response?.RegulationGuideline?.RuleSetLifecycleStatus?.StatusDateTime?.DateTimeContent,
                "TimeZoneCode": check response?.RegulationGuideline?.RuleSetLifecycleStatus?.StatusDateTime?.TimeZoneCode,
                "DaylightSavingIndicator": check response?.RegulationGuideline?.RuleSetLifecycleStatus?.StatusDateTime?.DaylightSavingIndicator,
                "DateTimeType": check response?.RegulationGuideline?.RuleSetLifecycleStatus?.StatusDateTime?.DateTimeType
            },
            "StatusValidityPeriod": {
                "FromDateTime": {
                    "DateTimeContent": check response?.RegulationGuideline?.RuleSetLifecycleStatus?.StatusValidityPeriod?.FromDateTime?.DateTimeContent,
                    "TimeZoneCode": check response?.RegulationGuideline?.RuleSetLifecycleStatus?.StatusValidityPeriod?.FromDateTime?.TimeZoneCode,
                    "DaylightSavingIndicator": check response?.RegulationGuideline?.RuleSetLifecycleStatus?.StatusValidityPeriod?.FromDateTime?.DaylightSavingIndicator,
                    "DateTimeType": check response?.RegulationGuideline?.RuleSetLifecycleStatus?.StatusValidityPeriod?.FromDateTime?.DateTimeType
                },
                "ToDateTime": {
                    "DateTimeContent": check response?.RegulationGuideline?.RuleSetLifecycleStatus?.StatusValidityPeriod?.ToDateTime?.DateTimeContent,
                    "TimeZoneCode": check response?.RegulationGuideline?.RuleSetLifecycleStatus?.StatusValidityPeriod?.ToDateTime?.TimeZoneCode,
                    "DaylightSavingIndicator": check response?.RegulationGuideline?.RuleSetLifecycleStatus?.StatusValidityPeriod?.ToDateTime?.DaylightSavingIndicator,
                    "DateTimeType": check response?.RegulationGuideline?.RuleSetLifecycleStatus?.StatusValidityPeriod?.ToDateTime?.DateTimeType
                }
            },
            "StatusInvolvedPartyReference": {
                "PartyReference": check response?.RegulationGuideline?.RuleSetLifecycleStatus?.StatusInvolvedPartyReference?.PartyReference,
                "InvolvementReference": check response?.RegulationGuideline?.RuleSetLifecycleStatus?.StatusInvolvedPartyReference?.InvolvementReference
            }
        }
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
    "RegulatoryAssessmentWorkProducts": {
        "WorkProductType": check response?.RegulatoryAssessmentWorkProducts?.WorkProductType,
        "WorkProductIdentifoication": {
            "IdentifierValue": check response?.RegulatoryAssessmentWorkProducts?.WorkProductIdentifoication?.IdentifierValue,
            "IdentifierIssuerReference": {
                "PartyReference": check response?.RegulatoryAssessmentWorkProducts?.WorkProductIdentifoication?.IdentifierIssuerReference?.PartyReference,
                "InvolvementReference": check response?.RegulatoryAssessmentWorkProducts?.WorkProductIdentifoication?.IdentifierIssuerReference?.InvolvementReference
            },
            "IdentifierStartDate": {
                "DateTimeContent": check response?.RegulatoryAssessmentWorkProducts?.WorkProductIdentifoication?.IdentifierStartDate?.DateTimeContent,
                "TimeZoneCode": check response?.RegulatoryAssessmentWorkProducts?.WorkProductIdentifoication?.IdentifierStartDate?.TimeZoneCode,
                "DaylightSavingIndicator": check response?.RegulatoryAssessmentWorkProducts?.WorkProductIdentifoication?.IdentifierStartDate?.DaylightSavingIndicator,
                "DateTimeType": check response?.RegulatoryAssessmentWorkProducts?.WorkProductIdentifoication?.IdentifierStartDate?.DateTimeType
            },
            "IdentifierEndDate": {
                "DateTimeContent": check response?.RegulatoryAssessmentWorkProducts?.WorkProductIdentifoication?.IdentifierEndDate?.DateTimeContent,
                "TimeZoneCode": check response?.RegulatoryAssessmentWorkProducts?.WorkProductIdentifoication?.IdentifierEndDate?.TimeZoneCode,
                "DaylightSavingIndicator": check response?.RegulatoryAssessmentWorkProducts?.WorkProductIdentifoication?.IdentifierEndDate?.DaylightSavingIndicator,
                "DateTimeType": check response?.RegulatoryAssessmentWorkProducts?.WorkProductIdentifoication?.IdentifierEndDate?.DateTimeType
            }
        }
    },
    "RegulatoryAssessmentResult": check response?.RegulatoryAssessmentResult,
    "RegulatoryComplianceAssessmentReference": {
        "IdentifierValue": check response?.RegulatoryComplianceAssessmentReference?.IdentifierValue,
        "IdentifierIssuerReference": {
            "PartyReference": check response?.RegulatoryComplianceAssessmentReference?.IdentifierIssuerReference?.PartyReference,
            "InvolvementReference": check response?.RegulatoryComplianceAssessmentReference?.IdentifierIssuerReference?.InvolvementReference
        },
        "IdentifierStartDate": {
            "DateTimeContent": check response?.RegulatoryComplianceAssessmentReference?.IdentifierStartDate?.DateTimeContent,
            "TimeZoneCode": check response?.RegulatoryComplianceAssessmentReference?.IdentifierStartDate?.TimeZoneCode,
            "DaylightSavingIndicator": check response?.RegulatoryComplianceAssessmentReference?.IdentifierStartDate?.DaylightSavingIndicator,
            "DateTimeType": check response?.RegulatoryComplianceAssessmentReference?.IdentifierStartDate?.DateTimeType
        },
        "IdentifierEndDate": {
            "DateTimeContent": check response?.RegulatoryComplianceAssessmentReference?.IdentifierEndDate?.DateTimeContent,
            "TimeZoneCode": check response?.RegulatoryComplianceAssessmentReference?.IdentifierEndDate?.TimeZoneCode,
            "DaylightSavingIndicator": check response?.RegulatoryComplianceAssessmentReference?.IdentifierEndDate?.DaylightSavingIndicator,
            "DateTimeType": check response?.RegulatoryComplianceAssessmentReference?.IdentifierEndDate?.DateTimeType
        }
    },
    "AssessmentRequestor": {
        "PartyReference": check response?.AssessmentRequestor?.PartyReference,
        "InvolvementReference": check response?.AssessmentRequestor?.InvolvementReference
    },
    "AssessmentStartDate": {
        "DateTimeContent": check response?.AssessmentStartDate?.DateTimeContent,
        "TimeZoneCode": check response?.AssessmentStartDate?.TimeZoneCode,
        "DaylightSavingIndicator": check response?.AssessmentStartDate?.DaylightSavingIndicator,
        "DateTimeType": check response?.AssessmentStartDate?.DateTimeType
    },
    "AssessmentCompletionDate": {
        "DateTimeContent": check response?.AssessmentCompletionDate?.DateTimeContent,
        "TimeZoneCode": check response?.AssessmentCompletionDate?.TimeZoneCode,
        "DaylightSavingIndicator": check response?.AssessmentCompletionDate?.DaylightSavingIndicator,
        "DateTimeType": check response?.AssessmentCompletionDate?.DateTimeType
    },
    "RegulationCustomerType": check response?.RegulationCustomerType,
    "RegulationCustomerResidenceStatus": check response?.RegulationCustomerResidenceStatus,
    "RegulationValidfromDate": {
        "DateTimeContent": check response?.RegulationValidfromDate?.DateTimeContent,
        "TimeZoneCode": check response?.RegulationValidfromDate?.TimeZoneCode,
        "DaylightSavingIndicator": check response?.RegulationValidfromDate?.DaylightSavingIndicator,
        "DateTimeType": check response?.RegulationValidfromDate?.DateTimeType
    },
    "RegulationValidtoDate": {
        "DateTimeContent": check response?.RegulationValidtoDate?.DateTimeContent,
        "TimeZoneCode": check response?.RegulationValidtoDate?.TimeZoneCode,
        "DaylightSavingIndicator": check response?.RegulationValidtoDate?.DaylightSavingIndicator,
        "DateTimeType": check response?.RegulationValidtoDate?.DateTimeType
    }
};
