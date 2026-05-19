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

isolated function transfromGuidelineComplianceEvaluateResponse(json response) returns finance_risk_management:GuidelineComplianceAssessment|error => {
    "GuidelineComplianceAssessmentType": check response?.GuidelineComplianceAssessmentType,
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
    "GuidelineComplianceAssessmentWorkProducts": {
        "WorkProductType": check response?.GuidelineComplianceAssessmentWorkProducts?.WorkProductType,
        "WorkProductIdentifoication": {
            "IdentifierValue": check response?.GuidelineComplianceAssessmentWorkProducts?.WorkProductIdentifoication?.IdentifierValue,
            "IdentifierIssuerReference": {
                "PartyReference": check response?.GuidelineComplianceAssessmentWorkProducts?.WorkProductIdentifoication?.IdentifierIssuerReference?.PartyReference,
                "InvolvementReference": check response?.GuidelineComplianceAssessmentWorkProducts?.WorkProductIdentifoication?.IdentifierIssuerReference?.InvolvementReference
            },
            "IdentifierStartDate": {
                "DateTimeContent": check response?.GuidelineComplianceAssessmentWorkProducts?.WorkProductIdentifoication?.IdentifierStartDate?.DateTimeContent,
                "TimeZoneCode": check response?.GuidelineComplianceAssessmentWorkProducts?.WorkProductIdentifoication?.IdentifierStartDate?.TimeZoneCode,
                "DaylightSavingIndicator": check response?.GuidelineComplianceAssessmentWorkProducts?.WorkProductIdentifoication?.IdentifierStartDate?.DaylightSavingIndicator,
                "DateTimeType": check response?.GuidelineComplianceAssessmentWorkProducts?.WorkProductIdentifoication?.IdentifierStartDate?.DateTimeType
            },
            "IdentifierEndDate": {
                "DateTimeContent": check response?.GuidelineComplianceAssessmentWorkProducts?.WorkProductIdentifoication?.IdentifierEndDate?.DateTimeContent,
                "TimeZoneCode": check response?.GuidelineComplianceAssessmentWorkProducts?.WorkProductIdentifoication?.IdentifierEndDate?.TimeZoneCode,
                "DaylightSavingIndicator": check response?.GuidelineComplianceAssessmentWorkProducts?.WorkProductIdentifoication?.IdentifierEndDate?.DaylightSavingIndicator,
                "DateTimeType": check response?.GuidelineComplianceAssessmentWorkProducts?.WorkProductIdentifoication?.IdentifierEndDate?.DateTimeType
            }
        }
    },
    "GuidelineComplianceAssessmentResult": {
        "AssessmentType": check response?.GuidelineComplianceAssessmentResult?.AssessmentType,
        "AssessmentMethod": check response?.GuidelineComplianceAssessmentResult?.AssessmentMethod,
        "AssessmentSchedule": {
            "ScheduleType": check response?.GuidelineComplianceAssessmentResult?.AssessmentSchedule?.ScheduleType
        },
        "AssessmentDescription": check response?.GuidelineComplianceAssessmentResult?.AssessmentDescription,
        "AssessmentModel": {
            "ModelType": check response?.GuidelineComplianceAssessmentResult?.AssessmentModel?.ModelType,
            "ModelPurpose": check response?.GuidelineComplianceAssessmentResult?.AssessmentModel?.ModelPurpose,
            "ModelVersion": check response?.GuidelineComplianceAssessmentResult?.AssessmentModel?.ModelVersion,
            "ModelName": {
                "Name": check response?.GuidelineComplianceAssessmentResult?.AssessmentModel?.ModelName?.Name
            },
            "ModelDateAndTime": {
                "DateTimeContent": check response?.GuidelineComplianceAssessmentResult?.AssessmentModel?.ModelDateAndTime?.DateTimeContent,
                "TimeZoneCode": check response?.GuidelineComplianceAssessmentResult?.AssessmentModel?.ModelDateAndTime?.TimeZoneCode,
                "DaylightSavingIndicator": check response?.GuidelineComplianceAssessmentResult?.AssessmentModel?.ModelDateAndTime?.DaylightSavingIndicator,
                "DateTimeType": check response?.GuidelineComplianceAssessmentResult?.AssessmentModel?.ModelDateAndTime?.DateTimeType
            },
            "ModelStatus": {
                "StatusReason": check response?.GuidelineComplianceAssessmentResult?.AssessmentModel?.ModelStatus?.StatusReason,
                "StatusDateTime": {
                    "DateTimeContent": check response?.GuidelineComplianceAssessmentResult?.AssessmentModel?.ModelStatus?.StatusDateTime?.DateTimeContent,
                    "TimeZoneCode": check response?.GuidelineComplianceAssessmentResult?.AssessmentModel?.ModelStatus?.StatusDateTime?.TimeZoneCode,
                    "DaylightSavingIndicator": check response?.GuidelineComplianceAssessmentResult?.AssessmentModel?.ModelStatus?.StatusDateTime?.DaylightSavingIndicator,
                    "DateTimeType": check response?.GuidelineComplianceAssessmentResult?.AssessmentModel?.ModelStatus?.StatusDateTime?.DateTimeType
                },
                "StatusValidityPeriod": {
                    "FromDateTime": {
                        "DateTimeContent": check response?.GuidelineComplianceAssessmentResult?.AssessmentModel?.ModelStatus?.StatusValidityPeriod?.FromDateTime?.DateTimeContent,
                        "TimeZoneCode": check response?.GuidelineComplianceAssessmentResult?.AssessmentModel?.ModelStatus?.StatusValidityPeriod?.FromDateTime?.TimeZoneCode,
                        "DaylightSavingIndicator": check response?.GuidelineComplianceAssessmentResult?.AssessmentModel?.ModelStatus?.StatusValidityPeriod?.FromDateTime?.DaylightSavingIndicator,
                        "DateTimeType": check response?.GuidelineComplianceAssessmentResult?.AssessmentModel?.ModelStatus?.StatusValidityPeriod?.FromDateTime?.DateTimeType
                    },
                    "ToDateTime": {
                        "DateTimeContent": check response?.GuidelineComplianceAssessmentResult?.AssessmentModel?.ModelStatus?.StatusValidityPeriod?.ToDateTime?.DateTimeContent,
                        "TimeZoneCode": check response?.GuidelineComplianceAssessmentResult?.AssessmentModel?.ModelStatus?.StatusValidityPeriod?.ToDateTime?.TimeZoneCode,
                        "DaylightSavingIndicator": check response?.GuidelineComplianceAssessmentResult?.AssessmentModel?.ModelStatus?.StatusValidityPeriod?.ToDateTime?.DaylightSavingIndicator,
                        "DateTimeType": check response?.GuidelineComplianceAssessmentResult?.AssessmentModel?.ModelStatus?.StatusValidityPeriod?.ToDateTime?.DateTimeType
                    }
                },
                "StatusInvolvedPartyReference": {
                    "PartyReference": check response?.GuidelineComplianceAssessmentResult?.AssessmentModel?.ModelStatus?.StatusInvolvedPartyReference?.PartyReference,
                    "InvolvementReference": check response?.GuidelineComplianceAssessmentResult?.AssessmentModel?.ModelStatus?.StatusInvolvedPartyReference?.InvolvementReference
                }
            }
        },
        "AssessmentDateTime": {
            "DateTimeContent": check response?.GuidelineComplianceAssessmentResult?.AssessmentDateTime?.DateTimeContent,
            "TimeZoneCode": check response?.GuidelineComplianceAssessmentResult?.AssessmentDateTime?.TimeZoneCode,
            "DaylightSavingIndicator": check response?.GuidelineComplianceAssessmentResult?.AssessmentDateTime?.DaylightSavingIndicator,
            "DateTimeType": check response?.GuidelineComplianceAssessmentResult?.AssessmentDateTime?.DateTimeType
        },
        "AssessmentResult": check response?.GuidelineComplianceAssessmentResult?.AssessmentResult,
        "AssessmentSupportingDocument": {
            "DocumentIdentification": {
                "IdentifierValue": check response?.GuidelineComplianceAssessmentResult?.AssessmentSupportingDocument?.DocumentIdentification?.IdentifierValue,
                "IdentifierIssuerReference": {
                    "PartyReference": check response?.GuidelineComplianceAssessmentResult?.AssessmentSupportingDocument?.DocumentIdentification?.IdentifierIssuerReference?.PartyReference,
                    "InvolvementReference": check response?.GuidelineComplianceAssessmentResult?.AssessmentSupportingDocument?.DocumentIdentification?.IdentifierIssuerReference?.InvolvementReference
                },
                "IdentifierStartDate": {
                    "DateTimeContent": check response?.GuidelineComplianceAssessmentResult?.AssessmentSupportingDocument?.DocumentIdentification?.IdentifierStartDate?.DateTimeContent,
                    "TimeZoneCode": check response?.GuidelineComplianceAssessmentResult?.AssessmentSupportingDocument?.DocumentIdentification?.IdentifierStartDate?.TimeZoneCode,
                    "DaylightSavingIndicator": check response?.GuidelineComplianceAssessmentResult?.AssessmentSupportingDocument?.DocumentIdentification?.IdentifierStartDate?.DaylightSavingIndicator,
                    "DateTimeType": check response?.GuidelineComplianceAssessmentResult?.AssessmentSupportingDocument?.DocumentIdentification?.IdentifierStartDate?.DateTimeType
                },
                "IdentifierEndDate": {
                    "DateTimeContent": check response?.GuidelineComplianceAssessmentResult?.AssessmentSupportingDocument?.DocumentIdentification?.IdentifierEndDate?.DateTimeContent,
                    "TimeZoneCode": check response?.GuidelineComplianceAssessmentResult?.AssessmentSupportingDocument?.DocumentIdentification?.IdentifierEndDate?.TimeZoneCode,
                    "DaylightSavingIndicator": check response?.GuidelineComplianceAssessmentResult?.AssessmentSupportingDocument?.DocumentIdentification?.IdentifierEndDate?.DaylightSavingIndicator,
                    "DateTimeType": check response?.GuidelineComplianceAssessmentResult?.AssessmentSupportingDocument?.DocumentIdentification?.IdentifierEndDate?.DateTimeType
                }
            },
            "DocumentVersion": check response?.GuidelineComplianceAssessmentResult?.AssessmentSupportingDocument?.DocumentVersion,
            "DocumentType": check response?.GuidelineComplianceAssessmentResult?.AssessmentSupportingDocument?.DocumentType,
            "DocumentStatus": {
                "StatusReason": check response?.GuidelineComplianceAssessmentResult?.AssessmentSupportingDocument?.DocumentStatus?.StatusReason,
                "StatusDateTime": {
                    "DateTimeContent": check response?.GuidelineComplianceAssessmentResult?.AssessmentSupportingDocument?.DocumentStatus?.StatusDateTime?.DateTimeContent,
                    "TimeZoneCode": check response?.GuidelineComplianceAssessmentResult?.AssessmentSupportingDocument?.DocumentStatus?.StatusDateTime?.TimeZoneCode,
                    "DaylightSavingIndicator": check response?.GuidelineComplianceAssessmentResult?.AssessmentSupportingDocument?.DocumentStatus?.StatusDateTime?.DaylightSavingIndicator,
                    "DateTimeType": check response?.GuidelineComplianceAssessmentResult?.AssessmentSupportingDocument?.DocumentStatus?.StatusDateTime?.DateTimeType
                },
                "StatusValidityPeriod": {
                    "FromDateTime": {
                        "DateTimeContent": check response?.GuidelineComplianceAssessmentResult?.AssessmentSupportingDocument?.DocumentStatus?.StatusValidityPeriod?.FromDateTime?.DateTimeContent,
                        "TimeZoneCode": check response?.GuidelineComplianceAssessmentResult?.AssessmentSupportingDocument?.DocumentStatus?.StatusValidityPeriod?.FromDateTime?.TimeZoneCode,
                        "DaylightSavingIndicator": check response?.GuidelineComplianceAssessmentResult?.AssessmentSupportingDocument?.DocumentStatus?.StatusValidityPeriod?.FromDateTime?.DaylightSavingIndicator,
                        "DateTimeType": check response?.GuidelineComplianceAssessmentResult?.AssessmentSupportingDocument?.DocumentStatus?.StatusValidityPeriod?.FromDateTime?.DateTimeType
                    },
                    "ToDateTime": {
                        "DateTimeContent": check response?.GuidelineComplianceAssessmentResult?.AssessmentSupportingDocument?.DocumentStatus?.StatusValidityPeriod?.ToDateTime?.DateTimeContent,
                        "TimeZoneCode": check response?.GuidelineComplianceAssessmentResult?.AssessmentSupportingDocument?.DocumentStatus?.StatusValidityPeriod?.ToDateTime?.TimeZoneCode,
                        "DaylightSavingIndicator": check response?.GuidelineComplianceAssessmentResult?.AssessmentSupportingDocument?.DocumentStatus?.StatusValidityPeriod?.ToDateTime?.DaylightSavingIndicator,
                        "DateTimeType": check response?.GuidelineComplianceAssessmentResult?.AssessmentSupportingDocument?.DocumentStatus?.StatusValidityPeriod?.ToDateTime?.DateTimeType
                    }
                },
                "StatusInvolvedPartyReference": {
                    "PartyReference": check response?.GuidelineComplianceAssessmentResult?.AssessmentSupportingDocument?.DocumentStatus?.StatusInvolvedPartyReference?.PartyReference,
                    "InvolvementReference": check response?.GuidelineComplianceAssessmentResult?.AssessmentSupportingDocument?.DocumentStatus?.StatusInvolvedPartyReference?.InvolvementReference
                }
            },
            "DocumentDateTime": {
                "DateTimeContent": check response?.GuidelineComplianceAssessmentResult?.AssessmentSupportingDocument?.DocumentDateTime?.DateTimeContent,
                "TimeZoneCode": check response?.GuidelineComplianceAssessmentResult?.AssessmentSupportingDocument?.DocumentDateTime?.TimeZoneCode,
                "DaylightSavingIndicator": check response?.GuidelineComplianceAssessmentResult?.AssessmentSupportingDocument?.DocumentDateTime?.DaylightSavingIndicator,
                "DateTimeType": check response?.GuidelineComplianceAssessmentResult?.AssessmentSupportingDocument?.DocumentDateTime?.DateTimeType
            },
            "DocumentName": {
                "Name": check response?.GuidelineComplianceAssessmentResult?.AssessmentSupportingDocument?.DocumentName?.Name
            },
            "DocumentDateTimeType": check response?.GuidelineComplianceAssessmentResult?.AssessmentSupportingDocument?.DocumentDateTimeType,
            "DocumentPurpose": check response?.GuidelineComplianceAssessmentResult?.AssessmentSupportingDocument?.DocumentPurpose,
            "DocumentFormat": check response?.GuidelineComplianceAssessmentResult?.AssessmentSupportingDocument?.DocumentFormat,
            "DocumentSubject": check response?.GuidelineComplianceAssessmentResult?.AssessmentSupportingDocument?.DocumentSubject,
            "DocumentDescription": check response?.GuidelineComplianceAssessmentResult?.AssessmentSupportingDocument?.DocumentDescription,
            "DocumentValidityPeriod": {
                "FromDateTime": {
                    "DateTimeContent": check response?.GuidelineComplianceAssessmentResult?.AssessmentSupportingDocument?.DocumentValidityPeriod?.FromDateTime?.DateTimeContent,
                    "TimeZoneCode": check response?.GuidelineComplianceAssessmentResult?.AssessmentSupportingDocument?.DocumentValidityPeriod?.FromDateTime?.TimeZoneCode,
                    "DaylightSavingIndicator": check response?.GuidelineComplianceAssessmentResult?.AssessmentSupportingDocument?.DocumentValidityPeriod?.FromDateTime?.DaylightSavingIndicator,
                    "DateTimeType": check response?.GuidelineComplianceAssessmentResult?.AssessmentSupportingDocument?.DocumentValidityPeriod?.FromDateTime?.DateTimeType
                },
                "ToDateTime": {
                    "DateTimeContent": check response?.GuidelineComplianceAssessmentResult?.AssessmentSupportingDocument?.DocumentValidityPeriod?.ToDateTime?.DateTimeContent,
                    "TimeZoneCode": check response?.GuidelineComplianceAssessmentResult?.AssessmentSupportingDocument?.DocumentValidityPeriod?.ToDateTime?.TimeZoneCode,
                    "DaylightSavingIndicator": check response?.GuidelineComplianceAssessmentResult?.AssessmentSupportingDocument?.DocumentValidityPeriod?.ToDateTime?.DaylightSavingIndicator,
                    "DateTimeType": check response?.GuidelineComplianceAssessmentResult?.AssessmentSupportingDocument?.DocumentValidityPeriod?.ToDateTime?.DateTimeType
                }
            }
        },
        "AssessmentRepresentingDocument": {
            "DocumentIdentification": {
                "IdentifierValue": check response?.GuidelineComplianceAssessmentResult?.AssessmentRepresentingDocument?.DocumentIdentification?.IdentifierValue,
                "IdentifierIssuerReference": {
                    "PartyReference": check response?.GuidelineComplianceAssessmentResult?.AssessmentRepresentingDocument?.DocumentIdentification?.IdentifierIssuerReference?.PartyReference,
                    "InvolvementReference": check response?.GuidelineComplianceAssessmentResult?.AssessmentRepresentingDocument?.DocumentIdentification?.IdentifierIssuerReference?.InvolvementReference
                },
                "IdentifierStartDate": {
                    "DateTimeContent": check response?.GuidelineComplianceAssessmentResult?.AssessmentRepresentingDocument?.DocumentIdentification?.IdentifierStartDate?.DateTimeContent,
                    "TimeZoneCode": check response?.GuidelineComplianceAssessmentResult?.AssessmentRepresentingDocument?.DocumentIdentification?.IdentifierStartDate?.TimeZoneCode,
                    "DaylightSavingIndicator": check response?.GuidelineComplianceAssessmentResult?.AssessmentRepresentingDocument?.DocumentIdentification?.IdentifierStartDate?.DaylightSavingIndicator,
                    "DateTimeType": check response?.GuidelineComplianceAssessmentResult?.AssessmentRepresentingDocument?.DocumentIdentification?.IdentifierStartDate?.DateTimeType
                },
                "IdentifierEndDate": {
                    "DateTimeContent": check response?.GuidelineComplianceAssessmentResult?.AssessmentRepresentingDocument?.DocumentIdentification?.IdentifierEndDate?.DateTimeContent,
                    "TimeZoneCode": check response?.GuidelineComplianceAssessmentResult?.AssessmentRepresentingDocument?.DocumentIdentification?.IdentifierEndDate?.TimeZoneCode,
                    "DaylightSavingIndicator": check response?.GuidelineComplianceAssessmentResult?.AssessmentRepresentingDocument?.DocumentIdentification?.IdentifierEndDate?.DaylightSavingIndicator,
                    "DateTimeType": check response?.GuidelineComplianceAssessmentResult?.AssessmentRepresentingDocument?.DocumentIdentification?.IdentifierEndDate?.DateTimeType
                }
            },
            "DocumentVersion": check response?.GuidelineComplianceAssessmentResult?.AssessmentRepresentingDocument?.DocumentVersion,
            "DocumentType": check response?.GuidelineComplianceAssessmentResult?.AssessmentRepresentingDocument?.DocumentType,
            "DocumentStatus": {
                "StatusReason": check response?.GuidelineComplianceAssessmentResult?.AssessmentRepresentingDocument?.DocumentStatus?.StatusReason,
                "StatusDateTime": {
                    "DateTimeContent": check response?.GuidelineComplianceAssessmentResult?.AssessmentRepresentingDocument?.DocumentStatus?.StatusDateTime?.DateTimeContent,
                    "TimeZoneCode": check response?.GuidelineComplianceAssessmentResult?.AssessmentRepresentingDocument?.DocumentStatus?.StatusDateTime?.TimeZoneCode,
                    "DaylightSavingIndicator": check response?.GuidelineComplianceAssessmentResult?.AssessmentRepresentingDocument?.DocumentStatus?.StatusDateTime?.DaylightSavingIndicator,
                    "DateTimeType": check response?.GuidelineComplianceAssessmentResult?.AssessmentRepresentingDocument?.DocumentStatus?.StatusDateTime?.DateTimeType
                },
                "StatusValidityPeriod": {
                    "FromDateTime": {
                        "DateTimeContent": check response?.GuidelineComplianceAssessmentResult?.AssessmentRepresentingDocument?.DocumentStatus?.StatusValidityPeriod?.FromDateTime?.DateTimeContent,
                        "TimeZoneCode": check response?.GuidelineComplianceAssessmentResult?.AssessmentRepresentingDocument?.DocumentStatus?.StatusValidityPeriod?.FromDateTime?.TimeZoneCode,
                        "DaylightSavingIndicator": check response?.GuidelineComplianceAssessmentResult?.AssessmentRepresentingDocument?.DocumentStatus?.StatusValidityPeriod?.FromDateTime?.DaylightSavingIndicator,
                        "DateTimeType": check response?.GuidelineComplianceAssessmentResult?.AssessmentRepresentingDocument?.DocumentStatus?.StatusValidityPeriod?.FromDateTime?.DateTimeType
                    },
                    "ToDateTime": {
                        "DateTimeContent": check response?.GuidelineComplianceAssessmentResult?.AssessmentRepresentingDocument?.DocumentStatus?.StatusValidityPeriod?.ToDateTime?.DateTimeContent,
                        "TimeZoneCode": check response?.GuidelineComplianceAssessmentResult?.AssessmentRepresentingDocument?.DocumentStatus?.StatusValidityPeriod?.ToDateTime?.TimeZoneCode,
                        "DaylightSavingIndicator": check response?.GuidelineComplianceAssessmentResult?.AssessmentRepresentingDocument?.DocumentStatus?.StatusValidityPeriod?.ToDateTime?.DaylightSavingIndicator,
                        "DateTimeType": check response?.GuidelineComplianceAssessmentResult?.AssessmentRepresentingDocument?.DocumentStatus?.StatusValidityPeriod?.ToDateTime?.DateTimeType
                    }
                },
                "StatusInvolvedPartyReference": {
                    "PartyReference": check response?.GuidelineComplianceAssessmentResult?.AssessmentRepresentingDocument?.DocumentStatus?.StatusInvolvedPartyReference?.PartyReference,
                    "InvolvementReference": check response?.GuidelineComplianceAssessmentResult?.AssessmentRepresentingDocument?.DocumentStatus?.StatusInvolvedPartyReference?.InvolvementReference
                }
            },
            "DocumentDateTime": {
                "DateTimeContent": check response?.GuidelineComplianceAssessmentResult?.AssessmentRepresentingDocument?.DocumentDateTime?.DateTimeContent,
                "TimeZoneCode": check response?.GuidelineComplianceAssessmentResult?.AssessmentRepresentingDocument?.DocumentDateTime?.TimeZoneCode,
                "DaylightSavingIndicator": check response?.GuidelineComplianceAssessmentResult?.AssessmentRepresentingDocument?.DocumentDateTime?.DaylightSavingIndicator,
                "DateTimeType": check response?.GuidelineComplianceAssessmentResult?.AssessmentRepresentingDocument?.DocumentDateTime?.DateTimeType
            },
            "DocumentName": {
                "Name": check response?.GuidelineComplianceAssessmentResult?.AssessmentRepresentingDocument?.DocumentName?.Name
            },
            "DocumentDateTimeType": check response?.GuidelineComplianceAssessmentResult?.AssessmentRepresentingDocument?.DocumentDateTimeType,
            "DocumentPurpose": check response?.GuidelineComplianceAssessmentResult?.AssessmentRepresentingDocument?.DocumentPurpose,
            "DocumentFormat": check response?.GuidelineComplianceAssessmentResult?.AssessmentRepresentingDocument?.DocumentFormat,
            "DocumentSubject": check response?.GuidelineComplianceAssessmentResult?.AssessmentRepresentingDocument?.DocumentSubject,
            "DocumentDescription": check response?.GuidelineComplianceAssessmentResult?.AssessmentRepresentingDocument?.DocumentDescription,
            "DocumentValidityPeriod": {
                "FromDateTime": {
                    "DateTimeContent": check response?.GuidelineComplianceAssessmentResult?.AssessmentRepresentingDocument?.DocumentValidityPeriod?.FromDateTime?.DateTimeContent,
                    "TimeZoneCode": check response?.GuidelineComplianceAssessmentResult?.AssessmentRepresentingDocument?.DocumentValidityPeriod?.FromDateTime?.TimeZoneCode,
                    "DaylightSavingIndicator": check response?.GuidelineComplianceAssessmentResult?.AssessmentRepresentingDocument?.DocumentValidityPeriod?.FromDateTime?.DaylightSavingIndicator,
                    "DateTimeType": check response?.GuidelineComplianceAssessmentResult?.AssessmentRepresentingDocument?.DocumentValidityPeriod?.FromDateTime?.DateTimeType
                },
                "ToDateTime": {
                    "DateTimeContent": check response?.GuidelineComplianceAssessmentResult?.AssessmentRepresentingDocument?.DocumentValidityPeriod?.ToDateTime?.DateTimeContent,
                    "TimeZoneCode": check response?.GuidelineComplianceAssessmentResult?.AssessmentRepresentingDocument?.DocumentValidityPeriod?.ToDateTime?.TimeZoneCode,
                    "DaylightSavingIndicator": check response?.GuidelineComplianceAssessmentResult?.AssessmentRepresentingDocument?.DocumentValidityPeriod?.ToDateTime?.DaylightSavingIndicator,
                    "DateTimeType": check response?.GuidelineComplianceAssessmentResult?.AssessmentRepresentingDocument?.DocumentValidityPeriod?.ToDateTime?.DateTimeType
                }
            }
        },
        "AssessmentRequiredAdjustment": check response?.GuidelineComplianceAssessmentResult?.AssessmentRequiredAdjustment,
        "AssessmentRequirement": {
            "RequirementType": check response?.GuidelineComplianceAssessmentResult?.AssessmentRequirement?.RequirementType
        },
        "AssessmentExpiryDate": {
            "DateContent": check response?.GuidelineComplianceAssessmentResult?.AssessmentExpiryDate?.DateContent
        },
        "AssessmentStatus": {
            "StatusReason": check response?.GuidelineComplianceAssessmentResult?.AssessmentStatus?.StatusReason,
            "StatusDateTime": {
                "DateTimeContent": check response?.GuidelineComplianceAssessmentResult?.AssessmentStatus?.StatusDateTime?.DateTimeContent,
                "TimeZoneCode": check response?.GuidelineComplianceAssessmentResult?.AssessmentStatus?.StatusDateTime?.TimeZoneCode,
                "DaylightSavingIndicator": check response?.GuidelineComplianceAssessmentResult?.AssessmentStatus?.StatusDateTime?.DaylightSavingIndicator,
                "DateTimeType": check response?.GuidelineComplianceAssessmentResult?.AssessmentStatus?.StatusDateTime?.DateTimeType
            },
            "StatusValidityPeriod": {
                "FromDateTime": {
                    "DateTimeContent": check response?.GuidelineComplianceAssessmentResult?.AssessmentStatus?.StatusValidityPeriod?.FromDateTime?.DateTimeContent,
                    "TimeZoneCode": check response?.GuidelineComplianceAssessmentResult?.AssessmentStatus?.StatusValidityPeriod?.FromDateTime?.TimeZoneCode,
                    "DaylightSavingIndicator": check response?.GuidelineComplianceAssessmentResult?.AssessmentStatus?.StatusValidityPeriod?.FromDateTime?.DaylightSavingIndicator,
                    "DateTimeType": check response?.GuidelineComplianceAssessmentResult?.AssessmentStatus?.StatusValidityPeriod?.FromDateTime?.DateTimeType
                },
                "ToDateTime": {
                    "DateTimeContent": check response?.GuidelineComplianceAssessmentResult?.AssessmentStatus?.StatusValidityPeriod?.ToDateTime?.DateTimeContent,
                    "TimeZoneCode": check response?.GuidelineComplianceAssessmentResult?.AssessmentStatus?.StatusValidityPeriod?.ToDateTime?.TimeZoneCode,
                    "DaylightSavingIndicator": check response?.GuidelineComplianceAssessmentResult?.AssessmentStatus?.StatusValidityPeriod?.ToDateTime?.DaylightSavingIndicator,
                    "DateTimeType": check response?.GuidelineComplianceAssessmentResult?.AssessmentStatus?.StatusValidityPeriod?.ToDateTime?.DateTimeType
                }
            },
            "StatusInvolvedPartyReference": {
                "PartyReference": check response?.GuidelineComplianceAssessmentResult?.AssessmentStatus?.StatusInvolvedPartyReference?.PartyReference,
                "InvolvementReference": check response?.GuidelineComplianceAssessmentResult?.AssessmentStatus?.StatusInvolvedPartyReference?.InvolvementReference
            }
        },
        "AssessmentIdentification": {
            "IdentifierValue": check response?.GuidelineComplianceAssessmentResult?.AssessmentIdentification?.IdentifierValue,
            "IdentifierIssuerReference": {
                "PartyReference": check response?.GuidelineComplianceAssessmentResult?.AssessmentIdentification?.IdentifierIssuerReference?.PartyReference,
                "InvolvementReference": check response?.GuidelineComplianceAssessmentResult?.AssessmentIdentification?.IdentifierIssuerReference?.InvolvementReference
            },
            "IdentifierStartDate": {
                "DateTimeContent": check response?.GuidelineComplianceAssessmentResult?.AssessmentIdentification?.IdentifierStartDate?.DateTimeContent,
                "TimeZoneCode": check response?.GuidelineComplianceAssessmentResult?.AssessmentIdentification?.IdentifierStartDate?.TimeZoneCode,
                "DaylightSavingIndicator": check response?.GuidelineComplianceAssessmentResult?.AssessmentIdentification?.IdentifierStartDate?.DaylightSavingIndicator,
                "DateTimeType": check response?.GuidelineComplianceAssessmentResult?.AssessmentIdentification?.IdentifierStartDate?.DateTimeType
            },
            "IdentifierEndDate": {
                "DateTimeContent": check response?.GuidelineComplianceAssessmentResult?.AssessmentIdentification?.IdentifierEndDate?.DateTimeContent,
                "TimeZoneCode": check response?.GuidelineComplianceAssessmentResult?.AssessmentIdentification?.IdentifierEndDate?.TimeZoneCode,
                "DaylightSavingIndicator": check response?.GuidelineComplianceAssessmentResult?.AssessmentIdentification?.IdentifierEndDate?.DaylightSavingIndicator,
                "DateTimeType": check response?.GuidelineComplianceAssessmentResult?.AssessmentIdentification?.IdentifierEndDate?.DateTimeType
            }
        }
    }
};
