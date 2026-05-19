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

isolated function transfromDocumentServicesInitiateResponse(json response) returns operations:DocumentServiceProcedure|error => {
    "DocumentServiceProcedureParameterType": check response?.DocumentServiceProcedureParameterType,
    "DocumentServiceProcedureSelectedOption": {
        "FeatureType": check response?.DocumentServiceProcedureSelectedOption?.FeatureType,
        "FeatureIdentification": {
            "IdentifierValue": check response?.DocumentServiceProcedureSelectedOption?.FeatureIdentification?.IdentifierValue,
            "IdentifierIssuerReference": {
                "PartyReference": check response?.DocumentServiceProcedureSelectedOption?.FeatureIdentification?.IdentifierIssuerReference?.PartyReference,
                "InvolvementReference": check response?.DocumentServiceProcedureSelectedOption?.FeatureIdentification?.IdentifierIssuerReference?.InvolvementReference
            },
            "IdentifierStartDate": {
                "DateTimeContent": check response?.DocumentServiceProcedureSelectedOption?.FeatureIdentification?.IdentifierStartDate?.DateTimeContent,
                "TimeZoneCode": check response?.DocumentServiceProcedureSelectedOption?.FeatureIdentification?.IdentifierStartDate?.TimeZoneCode,
                "DaylightSavingIndicator": check response?.DocumentServiceProcedureSelectedOption?.FeatureIdentification?.IdentifierStartDate?.DaylightSavingIndicator,
                "DateTimeType": check response?.DocumentServiceProcedureSelectedOption?.FeatureIdentification?.IdentifierStartDate?.DateTimeType
            },
            "IdentifierEndDate": {
                "DateTimeContent": check response?.DocumentServiceProcedureSelectedOption?.FeatureIdentification?.IdentifierEndDate?.DateTimeContent,
                "TimeZoneCode": check response?.DocumentServiceProcedureSelectedOption?.FeatureIdentification?.IdentifierEndDate?.TimeZoneCode,
                "DaylightSavingIndicator": check response?.DocumentServiceProcedureSelectedOption?.FeatureIdentification?.IdentifierEndDate?.DaylightSavingIndicator,
                "DateTimeType": check response?.DocumentServiceProcedureSelectedOption?.FeatureIdentification?.IdentifierEndDate?.DateTimeType
            }
        },
        "FeatureName": {
            "Name": check response?.DocumentServiceProcedureSelectedOption?.FeatureName?.Name
        },
        "FeatureLifecycleStatus": {
            "StatusReason": check response?.DocumentServiceProcedureSelectedOption?.FeatureLifecycleStatus?.StatusReason,
            "StatusDateTime": {
                "DateTimeContent": check response?.DocumentServiceProcedureSelectedOption?.FeatureLifecycleStatus?.StatusDateTime?.DateTimeContent,
                "TimeZoneCode": check response?.DocumentServiceProcedureSelectedOption?.FeatureLifecycleStatus?.StatusDateTime?.TimeZoneCode,
                "DaylightSavingIndicator": check response?.DocumentServiceProcedureSelectedOption?.FeatureLifecycleStatus?.StatusDateTime?.DaylightSavingIndicator,
                "DateTimeType": check response?.DocumentServiceProcedureSelectedOption?.FeatureLifecycleStatus?.StatusDateTime?.DateTimeType
            },
            "StatusValidityPeriod": {
                "FromDateTime": {
                    "DateTimeContent": check response?.DocumentServiceProcedureSelectedOption?.FeatureLifecycleStatus?.StatusValidityPeriod?.FromDateTime?.DateTimeContent,
                    "TimeZoneCode": check response?.DocumentServiceProcedureSelectedOption?.FeatureLifecycleStatus?.StatusValidityPeriod?.FromDateTime?.TimeZoneCode,
                    "DaylightSavingIndicator": check response?.DocumentServiceProcedureSelectedOption?.FeatureLifecycleStatus?.StatusValidityPeriod?.FromDateTime?.DaylightSavingIndicator,
                    "DateTimeType": check response?.DocumentServiceProcedureSelectedOption?.FeatureLifecycleStatus?.StatusValidityPeriod?.FromDateTime?.DateTimeType
                },
                "ToDateTime": {
                    "DateTimeContent": check response?.DocumentServiceProcedureSelectedOption?.FeatureLifecycleStatus?.StatusValidityPeriod?.ToDateTime?.DateTimeContent,
                    "TimeZoneCode": check response?.DocumentServiceProcedureSelectedOption?.FeatureLifecycleStatus?.StatusValidityPeriod?.ToDateTime?.TimeZoneCode,
                    "DaylightSavingIndicator": check response?.DocumentServiceProcedureSelectedOption?.FeatureLifecycleStatus?.StatusValidityPeriod?.ToDateTime?.DaylightSavingIndicator,
                    "DateTimeType": check response?.DocumentServiceProcedureSelectedOption?.FeatureLifecycleStatus?.StatusValidityPeriod?.ToDateTime?.DateTimeType
                }
            },
            "StatusInvolvedPartyReference": {
                "PartyReference": check response?.DocumentServiceProcedureSelectedOption?.FeatureLifecycleStatus?.StatusInvolvedPartyReference?.PartyReference,
                "InvolvementReference": check response?.DocumentServiceProcedureSelectedOption?.FeatureLifecycleStatus?.StatusInvolvedPartyReference?.InvolvementReference
            }
        },
        "FeatureDescription": check response?.DocumentServiceProcedureSelectedOption?.FeatureDescription
    },
    "DocumentServiceProcedureRequest": {
        "InstructionDate": {
            "InstructionDate": {
                "DateTimeContent": check response?.DocumentServiceProcedureRequest?.InstructionDate?.InstructionDate?.DateTimeContent,
                "TimeZoneCode": check response?.DocumentServiceProcedureRequest?.InstructionDate?.InstructionDate?.TimeZoneCode,
                "DaylightSavingIndicator": check response?.DocumentServiceProcedureRequest?.InstructionDate?.InstructionDate?.DaylightSavingIndicator,
                "DateTimeType": check response?.DocumentServiceProcedureRequest?.InstructionDate?.InstructionDate?.DateTimeType
            },
            "InstructionDateType": check response?.DocumentServiceProcedureRequest?.InstructionDate?.InstructionDateType
        },
        "InstructionStatus": {
            "InstructionStatusType": check response?.DocumentServiceProcedureRequest?.InstructionStatus?.InstructionStatusType,
            "InstructionStatus": {
                "StatusReason": check response?.DocumentServiceProcedureRequest?.InstructionStatus?.InstructionStatus?.StatusReason,
                "StatusDateTime": {
                    "DateTimeContent": check response?.DocumentServiceProcedureRequest?.InstructionStatus?.InstructionStatus?.StatusDateTime?.DateTimeContent,
                    "TimeZoneCode": check response?.DocumentServiceProcedureRequest?.InstructionStatus?.InstructionStatus?.StatusDateTime?.TimeZoneCode,
                    "DaylightSavingIndicator": check response?.DocumentServiceProcedureRequest?.InstructionStatus?.InstructionStatus?.StatusDateTime?.DaylightSavingIndicator,
                    "DateTimeType": check response?.DocumentServiceProcedureRequest?.InstructionStatus?.InstructionStatus?.StatusDateTime?.DateTimeType
                },
                "StatusValidityPeriod": {
                    "FromDateTime": {
                        "DateTimeContent": check response?.DocumentServiceProcedureRequest?.InstructionStatus?.InstructionStatus?.StatusValidityPeriod?.FromDateTime?.DateTimeContent,
                        "TimeZoneCode": check response?.DocumentServiceProcedureRequest?.InstructionStatus?.InstructionStatus?.StatusValidityPeriod?.FromDateTime?.TimeZoneCode,
                        "DaylightSavingIndicator": check response?.DocumentServiceProcedureRequest?.InstructionStatus?.InstructionStatus?.StatusValidityPeriod?.FromDateTime?.DaylightSavingIndicator,
                        "DateTimeType": check response?.DocumentServiceProcedureRequest?.InstructionStatus?.InstructionStatus?.StatusValidityPeriod?.FromDateTime?.DateTimeType
                    },
                    "ToDateTime": {
                        "DateTimeContent": check response?.DocumentServiceProcedureRequest?.InstructionStatus?.InstructionStatus?.StatusValidityPeriod?.ToDateTime?.DateTimeContent,
                        "TimeZoneCode": check response?.DocumentServiceProcedureRequest?.InstructionStatus?.InstructionStatus?.StatusValidityPeriod?.ToDateTime?.TimeZoneCode,
                        "DaylightSavingIndicator": check response?.DocumentServiceProcedureRequest?.InstructionStatus?.InstructionStatus?.StatusValidityPeriod?.ToDateTime?.DaylightSavingIndicator,
                        "DateTimeType": check response?.DocumentServiceProcedureRequest?.InstructionStatus?.InstructionStatus?.StatusValidityPeriod?.ToDateTime?.DateTimeType
                    }
                },
                "StatusInvolvedPartyReference": {
                    "PartyReference": check response?.DocumentServiceProcedureRequest?.InstructionStatus?.InstructionStatus?.StatusInvolvedPartyReference?.PartyReference,
                    "InvolvementReference": check response?.DocumentServiceProcedureRequest?.InstructionStatus?.InstructionStatus?.StatusInvolvedPartyReference?.InvolvementReference
                }
            }
        },
        "InstructionIdentification": {
            "InstructionIdentification": {
                "IdentifierValue": check response?.DocumentServiceProcedureRequest?.InstructionIdentification?.InstructionIdentification?.IdentifierValue,
                "IdentifierIssuerReference": {
                    "PartyReference": check response?.DocumentServiceProcedureRequest?.InstructionIdentification?.InstructionIdentification?.IdentifierIssuerReference?.PartyReference,
                    "InvolvementReference": check response?.DocumentServiceProcedureRequest?.InstructionIdentification?.InstructionIdentification?.IdentifierIssuerReference?.InvolvementReference
                },
                "IdentifierStartDate": {
                    "DateTimeContent": check response?.DocumentServiceProcedureRequest?.InstructionIdentification?.InstructionIdentification?.IdentifierStartDate?.DateTimeContent,
                    "TimeZoneCode": check response?.DocumentServiceProcedureRequest?.InstructionIdentification?.InstructionIdentification?.IdentifierStartDate?.TimeZoneCode,
                    "DaylightSavingIndicator": check response?.DocumentServiceProcedureRequest?.InstructionIdentification?.InstructionIdentification?.IdentifierStartDate?.DaylightSavingIndicator,
                    "DateTimeType": check response?.DocumentServiceProcedureRequest?.InstructionIdentification?.InstructionIdentification?.IdentifierStartDate?.DateTimeType
                },
                "IdentifierEndDate": {
                    "DateTimeContent": check response?.DocumentServiceProcedureRequest?.InstructionIdentification?.InstructionIdentification?.IdentifierEndDate?.DateTimeContent,
                    "TimeZoneCode": check response?.DocumentServiceProcedureRequest?.InstructionIdentification?.InstructionIdentification?.IdentifierEndDate?.TimeZoneCode,
                    "DaylightSavingIndicator": check response?.DocumentServiceProcedureRequest?.InstructionIdentification?.InstructionIdentification?.IdentifierEndDate?.DaylightSavingIndicator,
                    "DateTimeType": check response?.DocumentServiceProcedureRequest?.InstructionIdentification?.InstructionIdentification?.IdentifierEndDate?.DateTimeType
                }
            },
            "InstructionIdentificationType": check response?.DocumentServiceProcedureRequest?.InstructionIdentification?.InstructionIdentificationType
        },
        "InstructionType": check response?.DocumentServiceProcedureRequest?.InstructionType,
        "InstructionResult": check response?.DocumentServiceProcedureRequest?.InstructionResult,
        "InstructionDescription": check response?.DocumentServiceProcedureRequest?.InstructionDescription,
        "InstructionLog": {
            "LogType": check response?.DocumentServiceProcedureRequest?.InstructionLog?.LogType,
            "LogPeriod": {
                "FromDateTime": {
                    "DateTimeContent": check response?.DocumentServiceProcedureRequest?.InstructionLog?.LogPeriod?.FromDateTime?.DateTimeContent,
                    "TimeZoneCode": check response?.DocumentServiceProcedureRequest?.InstructionLog?.LogPeriod?.FromDateTime?.TimeZoneCode,
                    "DaylightSavingIndicator": check response?.DocumentServiceProcedureRequest?.InstructionLog?.LogPeriod?.FromDateTime?.DaylightSavingIndicator,
                    "DateTimeType": check response?.DocumentServiceProcedureRequest?.InstructionLog?.LogPeriod?.FromDateTime?.DateTimeType
                },
                "ToDateTime": {
                    "DateTimeContent": check response?.DocumentServiceProcedureRequest?.InstructionLog?.LogPeriod?.ToDateTime?.DateTimeContent,
                    "TimeZoneCode": check response?.DocumentServiceProcedureRequest?.InstructionLog?.LogPeriod?.ToDateTime?.TimeZoneCode,
                    "DaylightSavingIndicator": check response?.DocumentServiceProcedureRequest?.InstructionLog?.LogPeriod?.ToDateTime?.DaylightSavingIndicator,
                    "DateTimeType": check response?.DocumentServiceProcedureRequest?.InstructionLog?.LogPeriod?.ToDateTime?.DateTimeType
                }
            },
            "LogDate": {
                "DateTimeContent": check response?.DocumentServiceProcedureRequest?.InstructionLog?.LogDate?.DateTimeContent,
                "TimeZoneCode": check response?.DocumentServiceProcedureRequest?.InstructionLog?.LogDate?.TimeZoneCode,
                "DaylightSavingIndicator": check response?.DocumentServiceProcedureRequest?.InstructionLog?.LogDate?.DaylightSavingIndicator,
                "DateTimeType": check response?.DocumentServiceProcedureRequest?.InstructionLog?.LogDate?.DateTimeType
            },
            "LogIdentification": {
                "IdentifierValue": check response?.DocumentServiceProcedureRequest?.InstructionLog?.LogIdentification?.IdentifierValue,
                "IdentifierIssuerReference": {
                    "PartyReference": check response?.DocumentServiceProcedureRequest?.InstructionLog?.LogIdentification?.IdentifierIssuerReference?.PartyReference,
                    "InvolvementReference": check response?.DocumentServiceProcedureRequest?.InstructionLog?.LogIdentification?.IdentifierIssuerReference?.InvolvementReference
                },
                "IdentifierStartDate": {
                    "DateTimeContent": check response?.DocumentServiceProcedureRequest?.InstructionLog?.LogIdentification?.IdentifierStartDate?.DateTimeContent,
                    "TimeZoneCode": check response?.DocumentServiceProcedureRequest?.InstructionLog?.LogIdentification?.IdentifierStartDate?.TimeZoneCode,
                    "DaylightSavingIndicator": check response?.DocumentServiceProcedureRequest?.InstructionLog?.LogIdentification?.IdentifierStartDate?.DaylightSavingIndicator,
                    "DateTimeType": check response?.DocumentServiceProcedureRequest?.InstructionLog?.LogIdentification?.IdentifierStartDate?.DateTimeType
                },
                "IdentifierEndDate": {
                    "DateTimeContent": check response?.DocumentServiceProcedureRequest?.InstructionLog?.LogIdentification?.IdentifierEndDate?.DateTimeContent,
                    "TimeZoneCode": check response?.DocumentServiceProcedureRequest?.InstructionLog?.LogIdentification?.IdentifierEndDate?.TimeZoneCode,
                    "DaylightSavingIndicator": check response?.DocumentServiceProcedureRequest?.InstructionLog?.LogIdentification?.IdentifierEndDate?.DaylightSavingIndicator,
                    "DateTimeType": check response?.DocumentServiceProcedureRequest?.InstructionLog?.LogIdentification?.IdentifierEndDate?.DateTimeType
                }
            }
        },
        "InstructionPurpose": check response?.DocumentServiceProcedureRequest?.InstructionPurpose
    },
    "DocumentServiceProcedureSchedule": {
        "ScheduleType": check response?.DocumentServiceProcedureSchedule?.ScheduleType
    },
    "DocumentServiceProcedureStatus": {
        "StatusReason": check response?.DocumentServiceProcedureStatus?.StatusReason,
        "StatusDateTime": {
            "DateTimeContent": check response?.DocumentServiceProcedureStatus?.StatusDateTime?.DateTimeContent,
            "TimeZoneCode": check response?.DocumentServiceProcedureStatus?.StatusDateTime?.TimeZoneCode,
            "DaylightSavingIndicator": check response?.DocumentServiceProcedureStatus?.StatusDateTime?.DaylightSavingIndicator,
            "DateTimeType": check response?.DocumentServiceProcedureStatus?.StatusDateTime?.DateTimeType
        },
        "StatusValidityPeriod": {
            "FromDateTime": {
                "DateTimeContent": check response?.DocumentServiceProcedureStatus?.StatusValidityPeriod?.FromDateTime?.DateTimeContent,
                "TimeZoneCode": check response?.DocumentServiceProcedureStatus?.StatusValidityPeriod?.FromDateTime?.TimeZoneCode,
                "DaylightSavingIndicator": check response?.DocumentServiceProcedureStatus?.StatusValidityPeriod?.FromDateTime?.DaylightSavingIndicator,
                "DateTimeType": check response?.DocumentServiceProcedureStatus?.StatusValidityPeriod?.FromDateTime?.DateTimeType
            },
            "ToDateTime": {
                "DateTimeContent": check response?.DocumentServiceProcedureStatus?.StatusValidityPeriod?.ToDateTime?.DateTimeContent,
                "TimeZoneCode": check response?.DocumentServiceProcedureStatus?.StatusValidityPeriod?.ToDateTime?.TimeZoneCode,
                "DaylightSavingIndicator": check response?.DocumentServiceProcedureStatus?.StatusValidityPeriod?.ToDateTime?.DaylightSavingIndicator,
                "DateTimeType": check response?.DocumentServiceProcedureStatus?.StatusValidityPeriod?.ToDateTime?.DateTimeType
            }
        },
        "StatusInvolvedPartyReference": {
            "PartyReference": check response?.DocumentServiceProcedureStatus?.StatusInvolvedPartyReference?.PartyReference,
            "InvolvementReference": check response?.DocumentServiceProcedureStatus?.StatusInvolvedPartyReference?.InvolvementReference
        }
    },
    "DocumentServiceProcedureAssociatedPartyReference": {
        "PartyReference": check response?.DocumentServiceProcedureAssociatedPartyReference?.PartyReference,
        "InvolvementReference": check response?.DocumentServiceProcedureAssociatedPartyReference?.InvolvementReference
    },
    "DocumentServiceProcedureBusinessUnitReference": {
        "PartyReference": check response?.DocumentServiceProcedureBusinessUnitReference?.PartyReference,
        "InvolvementReference": check response?.DocumentServiceProcedureBusinessUnitReference?.InvolvementReference
    },
    "DocumentServiceProcedureServiceProviderReference": {
        "PartyReference": check response?.DocumentServiceProcedureServiceProviderReference?.PartyReference,
        "InvolvementReference": check response?.DocumentServiceProcedureServiceProviderReference?.InvolvementReference
    },
    "DocumentServiceProcedureFinancialFacilityReference": {
        "FinancialFacility": check response?.DocumentServiceProcedureFinancialFacilityReference?.FinancialFacility
    },
    "DocumentServiceProcedureEmployeeReference": {
        "PartyReference": check response?.DocumentServiceProcedureEmployeeReference?.PartyReference,
        "InvolvementReference": check response?.DocumentServiceProcedureEmployeeReference?.InvolvementReference
    },
    "DocumentServiceProcedureType": {
        "ProcedureTypeName": {
            "Name": check response?.DocumentServiceProcedureType?.ProcedureTypeName?.Name
        },
        "ProcedureType": {
            "Proceduretypevalues": check response?.DocumentServiceProcedureType?.ProcedureType?.Proceduretypevalues
        }
    },
    "DocumentServiceProcedureServiceProviderSchedule": {
        "ScheduleType": check response?.DocumentServiceProcedureServiceProviderSchedule?.ScheduleType
    },
    "DocumentServiceProcedureServiceType": {
        "ServiceTypeName": {
            "Name": check response?.DocumentServiceProcedureServiceType?.ServiceTypeName?.Name
        },
        "ServiceType": check response?.DocumentServiceProcedureServiceType?.ServiceType
    },
    "DocumentServiceProcedureProductandServiceType": {
        "ProductTypeDefinition": check response?.DocumentServiceProcedureProductandServiceType?.ProductTypeDefinition,
        "ProductType": check response?.DocumentServiceProcedureProductandServiceType?.ProductType,
        "ProductClassificationIssuingAuthority": check response?.DocumentServiceProcedureProductandServiceType?.ProductClassificationIssuingAuthority
    },
    "DocumentServiceProcedureProductandServiceInstance": {
        "ProductIdentification": {
            "ProductIdentification": {
                "IdentifierValue": check response?.DocumentServiceProcedureProductandServiceInstance?.ProductIdentification?.ProductIdentification?.IdentifierValue,
                "IdentifierIssuerReference": {
                    "PartyReference": check response?.DocumentServiceProcedureProductandServiceInstance?.ProductIdentification?.ProductIdentification?.IdentifierIssuerReference?.PartyReference,
                    "InvolvementReference": check response?.DocumentServiceProcedureProductandServiceInstance?.ProductIdentification?.ProductIdentification?.IdentifierIssuerReference?.InvolvementReference
                },
                "IdentifierStartDate": {
                    "DateTimeContent": check response?.DocumentServiceProcedureProductandServiceInstance?.ProductIdentification?.ProductIdentification?.IdentifierStartDate?.DateTimeContent,
                    "TimeZoneCode": check response?.DocumentServiceProcedureProductandServiceInstance?.ProductIdentification?.ProductIdentification?.IdentifierStartDate?.TimeZoneCode,
                    "DaylightSavingIndicator": check response?.DocumentServiceProcedureProductandServiceInstance?.ProductIdentification?.ProductIdentification?.IdentifierStartDate?.DaylightSavingIndicator,
                    "DateTimeType": check response?.DocumentServiceProcedureProductandServiceInstance?.ProductIdentification?.ProductIdentification?.IdentifierStartDate?.DateTimeType
                },
                "IdentifierEndDate": {
                    "DateTimeContent": check response?.DocumentServiceProcedureProductandServiceInstance?.ProductIdentification?.ProductIdentification?.IdentifierEndDate?.DateTimeContent,
                    "TimeZoneCode": check response?.DocumentServiceProcedureProductandServiceInstance?.ProductIdentification?.ProductIdentification?.IdentifierEndDate?.TimeZoneCode,
                    "DaylightSavingIndicator": check response?.DocumentServiceProcedureProductandServiceInstance?.ProductIdentification?.ProductIdentification?.IdentifierEndDate?.DaylightSavingIndicator,
                    "DateTimeType": check response?.DocumentServiceProcedureProductandServiceInstance?.ProductIdentification?.ProductIdentification?.IdentifierEndDate?.DateTimeType
                }
            },
            "ProductIdentificationType": check response?.DocumentServiceProcedureProductandServiceInstance?.ProductIdentification?.ProductIdentificationType
        },
        "ProductType": check response?.DocumentServiceProcedureProductandServiceInstance?.ProductType,
        "ProductLifecycleStatus": {
            "ProductStatus": {
                "StatusReason": check response?.DocumentServiceProcedureProductandServiceInstance?.ProductLifecycleStatus?.ProductStatus?.StatusReason,
                "StatusDateTime": {
                    "DateTimeContent": check response?.DocumentServiceProcedureProductandServiceInstance?.ProductLifecycleStatus?.ProductStatus?.StatusDateTime?.DateTimeContent,
                    "TimeZoneCode": check response?.DocumentServiceProcedureProductandServiceInstance?.ProductLifecycleStatus?.ProductStatus?.StatusDateTime?.TimeZoneCode,
                    "DaylightSavingIndicator": check response?.DocumentServiceProcedureProductandServiceInstance?.ProductLifecycleStatus?.ProductStatus?.StatusDateTime?.DaylightSavingIndicator,
                    "DateTimeType": check response?.DocumentServiceProcedureProductandServiceInstance?.ProductLifecycleStatus?.ProductStatus?.StatusDateTime?.DateTimeType
                },
                "StatusValidityPeriod": {
                    "FromDateTime": {
                        "DateTimeContent": check response?.DocumentServiceProcedureProductandServiceInstance?.ProductLifecycleStatus?.ProductStatus?.StatusValidityPeriod?.FromDateTime?.DateTimeContent,
                        "TimeZoneCode": check response?.DocumentServiceProcedureProductandServiceInstance?.ProductLifecycleStatus?.ProductStatus?.StatusValidityPeriod?.FromDateTime?.TimeZoneCode,
                        "DaylightSavingIndicator": check response?.DocumentServiceProcedureProductandServiceInstance?.ProductLifecycleStatus?.ProductStatus?.StatusValidityPeriod?.FromDateTime?.DaylightSavingIndicator,
                        "DateTimeType": check response?.DocumentServiceProcedureProductandServiceInstance?.ProductLifecycleStatus?.ProductStatus?.StatusValidityPeriod?.FromDateTime?.DateTimeType
                    },
                    "ToDateTime": {
                        "DateTimeContent": check response?.DocumentServiceProcedureProductandServiceInstance?.ProductLifecycleStatus?.ProductStatus?.StatusValidityPeriod?.ToDateTime?.DateTimeContent,
                        "TimeZoneCode": check response?.DocumentServiceProcedureProductandServiceInstance?.ProductLifecycleStatus?.ProductStatus?.StatusValidityPeriod?.ToDateTime?.TimeZoneCode,
                        "DaylightSavingIndicator": check response?.DocumentServiceProcedureProductandServiceInstance?.ProductLifecycleStatus?.ProductStatus?.StatusValidityPeriod?.ToDateTime?.DaylightSavingIndicator,
                        "DateTimeType": check response?.DocumentServiceProcedureProductandServiceInstance?.ProductLifecycleStatus?.ProductStatus?.StatusValidityPeriod?.ToDateTime?.DateTimeType
                    }
                },
                "StatusInvolvedPartyReference": {
                    "PartyReference": check response?.DocumentServiceProcedureProductandServiceInstance?.ProductLifecycleStatus?.ProductStatus?.StatusInvolvedPartyReference?.PartyReference,
                    "InvolvementReference": check response?.DocumentServiceProcedureProductandServiceInstance?.ProductLifecycleStatus?.ProductStatus?.StatusInvolvedPartyReference?.InvolvementReference
                }
            },
            "ProductStatusType": check response?.DocumentServiceProcedureProductandServiceInstance?.ProductLifecycleStatus?.ProductStatusType
        },
        "ProductPriority": check response?.DocumentServiceProcedureProductandServiceInstance?.ProductPriority,
        "ProductDescription": check response?.DocumentServiceProcedureProductandServiceInstance?.ProductDescription,
        "ProductVersion": check response?.DocumentServiceProcedureProductandServiceInstance?.ProductVersion,
        "ProductName": {
            "Name": check response?.DocumentServiceProcedureProductandServiceInstance?.ProductName?.Name
        },
        "FinancialInstrumentType": check response?.DocumentServiceProcedureProductandServiceInstance?.FinancialInstrumentType,
        "FinancialInstrumentIdentification": {
            "FinancialInstrumentIdentification": {
                "IdentifierValue": check response?.DocumentServiceProcedureProductandServiceInstance?.FinancialInstrumentIdentification?.FinancialInstrumentIdentification?.IdentifierValue,
                "IdentifierIssuerReference": {
                    "PartyReference": check response?.DocumentServiceProcedureProductandServiceInstance?.FinancialInstrumentIdentification?.FinancialInstrumentIdentification?.IdentifierIssuerReference?.PartyReference,
                    "InvolvementReference": check response?.DocumentServiceProcedureProductandServiceInstance?.FinancialInstrumentIdentification?.FinancialInstrumentIdentification?.IdentifierIssuerReference?.InvolvementReference
                },
                "IdentifierStartDate": {
                    "DateTimeContent": check response?.DocumentServiceProcedureProductandServiceInstance?.FinancialInstrumentIdentification?.FinancialInstrumentIdentification?.IdentifierStartDate?.DateTimeContent,
                    "TimeZoneCode": check response?.DocumentServiceProcedureProductandServiceInstance?.FinancialInstrumentIdentification?.FinancialInstrumentIdentification?.IdentifierStartDate?.TimeZoneCode,
                    "DaylightSavingIndicator": check response?.DocumentServiceProcedureProductandServiceInstance?.FinancialInstrumentIdentification?.FinancialInstrumentIdentification?.IdentifierStartDate?.DaylightSavingIndicator,
                    "DateTimeType": check response?.DocumentServiceProcedureProductandServiceInstance?.FinancialInstrumentIdentification?.FinancialInstrumentIdentification?.IdentifierStartDate?.DateTimeType
                },
                "IdentifierEndDate": {
                    "DateTimeContent": check response?.DocumentServiceProcedureProductandServiceInstance?.FinancialInstrumentIdentification?.FinancialInstrumentIdentification?.IdentifierEndDate?.DateTimeContent,
                    "TimeZoneCode": check response?.DocumentServiceProcedureProductandServiceInstance?.FinancialInstrumentIdentification?.FinancialInstrumentIdentification?.IdentifierEndDate?.TimeZoneCode,
                    "DaylightSavingIndicator": check response?.DocumentServiceProcedureProductandServiceInstance?.FinancialInstrumentIdentification?.FinancialInstrumentIdentification?.IdentifierEndDate?.DaylightSavingIndicator,
                    "DateTimeType": check response?.DocumentServiceProcedureProductandServiceInstance?.FinancialInstrumentIdentification?.FinancialInstrumentIdentification?.IdentifierEndDate?.DateTimeType
                }
            },
            "FinancialInstrumentIdentificationType": check response?.DocumentServiceProcedureProductandServiceInstance?.FinancialInstrumentIdentification?.FinancialInstrumentIdentificationType
        },
        "FinancialInstrumentName": {
            "Name": check response?.DocumentServiceProcedureProductandServiceInstance?.FinancialInstrumentName?.Name
        },
        "FinancialInstrumentDate": {
            "FinancialInstrumentDate": {
                "DateTimeContent": check response?.DocumentServiceProcedureProductandServiceInstance?.FinancialInstrumentDate?.FinancialInstrumentDate?.DateTimeContent,
                "TimeZoneCode": check response?.DocumentServiceProcedureProductandServiceInstance?.FinancialInstrumentDate?.FinancialInstrumentDate?.TimeZoneCode,
                "DaylightSavingIndicator": check response?.DocumentServiceProcedureProductandServiceInstance?.FinancialInstrumentDate?.FinancialInstrumentDate?.DaylightSavingIndicator,
                "DateTimeType": check response?.DocumentServiceProcedureProductandServiceInstance?.FinancialInstrumentDate?.FinancialInstrumentDate?.DateTimeType
            },
            "FinancialInstrumentDateType": check response?.DocumentServiceProcedureProductandServiceInstance?.FinancialInstrumentDate?.FinancialInstrumentDateType
        },
        "AssetTitle": check response?.DocumentServiceProcedureProductandServiceInstance?.AssetTitle,
        "AssetIdentification": {
            "IdentifierValue": check response?.DocumentServiceProcedureProductandServiceInstance?.AssetIdentification?.IdentifierValue,
            "IdentifierIssuerReference": {
                "PartyReference": check response?.DocumentServiceProcedureProductandServiceInstance?.AssetIdentification?.IdentifierIssuerReference?.PartyReference,
                "InvolvementReference": check response?.DocumentServiceProcedureProductandServiceInstance?.AssetIdentification?.IdentifierIssuerReference?.InvolvementReference
            },
            "IdentifierStartDate": {
                "DateTimeContent": check response?.DocumentServiceProcedureProductandServiceInstance?.AssetIdentification?.IdentifierStartDate?.DateTimeContent,
                "TimeZoneCode": check response?.DocumentServiceProcedureProductandServiceInstance?.AssetIdentification?.IdentifierStartDate?.TimeZoneCode,
                "DaylightSavingIndicator": check response?.DocumentServiceProcedureProductandServiceInstance?.AssetIdentification?.IdentifierStartDate?.DaylightSavingIndicator,
                "DateTimeType": check response?.DocumentServiceProcedureProductandServiceInstance?.AssetIdentification?.IdentifierStartDate?.DateTimeType
            },
            "IdentifierEndDate": {
                "DateTimeContent": check response?.DocumentServiceProcedureProductandServiceInstance?.AssetIdentification?.IdentifierEndDate?.DateTimeContent,
                "TimeZoneCode": check response?.DocumentServiceProcedureProductandServiceInstance?.AssetIdentification?.IdentifierEndDate?.TimeZoneCode,
                "DaylightSavingIndicator": check response?.DocumentServiceProcedureProductandServiceInstance?.AssetIdentification?.IdentifierEndDate?.DaylightSavingIndicator,
                "DateTimeType": check response?.DocumentServiceProcedureProductandServiceInstance?.AssetIdentification?.IdentifierEndDate?.DateTimeType
            }
        },
        "AssetType": check response?.DocumentServiceProcedureProductandServiceInstance?.AssetType,
        "AssetDescription": check response?.DocumentServiceProcedureProductandServiceInstance?.AssetDescription,
        "AssetStatus": {
            "StatusReason": check response?.DocumentServiceProcedureProductandServiceInstance?.AssetStatus?.StatusReason,
            "StatusDateTime": {
                "DateTimeContent": check response?.DocumentServiceProcedureProductandServiceInstance?.AssetStatus?.StatusDateTime?.DateTimeContent,
                "TimeZoneCode": check response?.DocumentServiceProcedureProductandServiceInstance?.AssetStatus?.StatusDateTime?.TimeZoneCode,
                "DaylightSavingIndicator": check response?.DocumentServiceProcedureProductandServiceInstance?.AssetStatus?.StatusDateTime?.DaylightSavingIndicator,
                "DateTimeType": check response?.DocumentServiceProcedureProductandServiceInstance?.AssetStatus?.StatusDateTime?.DateTimeType
            },
            "StatusValidityPeriod": {
                "FromDateTime": {
                    "DateTimeContent": check response?.DocumentServiceProcedureProductandServiceInstance?.AssetStatus?.StatusValidityPeriod?.FromDateTime?.DateTimeContent,
                    "TimeZoneCode": check response?.DocumentServiceProcedureProductandServiceInstance?.AssetStatus?.StatusValidityPeriod?.FromDateTime?.TimeZoneCode,
                    "DaylightSavingIndicator": check response?.DocumentServiceProcedureProductandServiceInstance?.AssetStatus?.StatusValidityPeriod?.FromDateTime?.DaylightSavingIndicator,
                    "DateTimeType": check response?.DocumentServiceProcedureProductandServiceInstance?.AssetStatus?.StatusValidityPeriod?.FromDateTime?.DateTimeType
                },
                "ToDateTime": {
                    "DateTimeContent": check response?.DocumentServiceProcedureProductandServiceInstance?.AssetStatus?.StatusValidityPeriod?.ToDateTime?.DateTimeContent,
                    "TimeZoneCode": check response?.DocumentServiceProcedureProductandServiceInstance?.AssetStatus?.StatusValidityPeriod?.ToDateTime?.TimeZoneCode,
                    "DaylightSavingIndicator": check response?.DocumentServiceProcedureProductandServiceInstance?.AssetStatus?.StatusValidityPeriod?.ToDateTime?.DaylightSavingIndicator,
                    "DateTimeType": check response?.DocumentServiceProcedureProductandServiceInstance?.AssetStatus?.StatusValidityPeriod?.ToDateTime?.DateTimeType
                }
            },
            "StatusInvolvedPartyReference": {
                "PartyReference": check response?.DocumentServiceProcedureProductandServiceInstance?.AssetStatus?.StatusInvolvedPartyReference?.PartyReference,
                "InvolvementReference": check response?.DocumentServiceProcedureProductandServiceInstance?.AssetStatus?.StatusInvolvedPartyReference?.InvolvementReference
            }
        },
        "AssetDate": {
            "DateTimeContent": check response?.DocumentServiceProcedureProductandServiceInstance?.AssetDate?.DateTimeContent,
            "TimeZoneCode": check response?.DocumentServiceProcedureProductandServiceInstance?.AssetDate?.TimeZoneCode,
            "DaylightSavingIndicator": check response?.DocumentServiceProcedureProductandServiceInstance?.AssetDate?.DaylightSavingIndicator,
            "DateTimeType": check response?.DocumentServiceProcedureProductandServiceInstance?.AssetDate?.DateTimeType
        },
        "AssetClassification": check response?.DocumentServiceProcedureProductandServiceInstance?.AssetClassification,
        "AssetClassificationType": {
            "Assetclassificationtypevalues": check response?.DocumentServiceProcedureProductandServiceInstance?.AssetClassificationType?.Assetclassificationtypevalues
        },
        "AssetSubClassificationType": check response?.DocumentServiceProcedureProductandServiceInstance?.AssetSubClassificationType,
        "AssetSubClassification": check response?.DocumentServiceProcedureProductandServiceInstance?.AssetSubClassification
    },
    "DocumentServiceProcedureTransactionType": {
        "TransactionTypeName": {
            "Name": check response?.DocumentServiceProcedureTransactionType?.TransactionTypeName?.Name
        },
        "TransactionType": check response?.DocumentServiceProcedureTransactionType?.TransactionType
    },
    "DocumentServiceProcedureTransaction": {
        "TransactionIdentification": {
            "IdentifierValue": check response?.DocumentServiceProcedureTransaction?.TransactionIdentification?.IdentifierValue,
            "IdentifierIssuerReference": {
                "PartyReference": check response?.DocumentServiceProcedureTransaction?.TransactionIdentification?.IdentifierIssuerReference?.PartyReference,
                "InvolvementReference": check response?.DocumentServiceProcedureTransaction?.TransactionIdentification?.IdentifierIssuerReference?.InvolvementReference
            },
            "IdentifierStartDate": {
                "DateTimeContent": check response?.DocumentServiceProcedureTransaction?.TransactionIdentification?.IdentifierStartDate?.DateTimeContent,
                "TimeZoneCode": check response?.DocumentServiceProcedureTransaction?.TransactionIdentification?.IdentifierStartDate?.TimeZoneCode,
                "DaylightSavingIndicator": check response?.DocumentServiceProcedureTransaction?.TransactionIdentification?.IdentifierStartDate?.DaylightSavingIndicator,
                "DateTimeType": check response?.DocumentServiceProcedureTransaction?.TransactionIdentification?.IdentifierStartDate?.DateTimeType
            },
            "IdentifierEndDate": {
                "DateTimeContent": check response?.DocumentServiceProcedureTransaction?.TransactionIdentification?.IdentifierEndDate?.DateTimeContent,
                "TimeZoneCode": check response?.DocumentServiceProcedureTransaction?.TransactionIdentification?.IdentifierEndDate?.TimeZoneCode,
                "DaylightSavingIndicator": check response?.DocumentServiceProcedureTransaction?.TransactionIdentification?.IdentifierEndDate?.DaylightSavingIndicator,
                "DateTimeType": check response?.DocumentServiceProcedureTransaction?.TransactionIdentification?.IdentifierEndDate?.DateTimeType
            }
        },
        "TransactionDate": {
            "TransactionDate": {
                "DateTimeContent": check response?.DocumentServiceProcedureTransaction?.TransactionDate?.TransactionDate?.DateTimeContent,
                "TimeZoneCode": check response?.DocumentServiceProcedureTransaction?.TransactionDate?.TransactionDate?.TimeZoneCode,
                "DaylightSavingIndicator": check response?.DocumentServiceProcedureTransaction?.TransactionDate?.TransactionDate?.DaylightSavingIndicator,
                "DateTimeType": check response?.DocumentServiceProcedureTransaction?.TransactionDate?.TransactionDate?.DateTimeType
            },
            "TransactionDateType": check response?.DocumentServiceProcedureTransaction?.TransactionDate?.TransactionDateType
        },
        "TransactionType": check response?.DocumentServiceProcedureTransaction?.TransactionType,
        "TransactionDescription": check response?.DocumentServiceProcedureTransaction?.TransactionDescription,
        "TransactionStatus": {
            "TransactionStatus": {
                "StatusReason": check response?.DocumentServiceProcedureTransaction?.TransactionStatus?.TransactionStatus?.StatusReason,
                "StatusDateTime": {
                    "DateTimeContent": check response?.DocumentServiceProcedureTransaction?.TransactionStatus?.TransactionStatus?.StatusDateTime?.DateTimeContent,
                    "TimeZoneCode": check response?.DocumentServiceProcedureTransaction?.TransactionStatus?.TransactionStatus?.StatusDateTime?.TimeZoneCode,
                    "DaylightSavingIndicator": check response?.DocumentServiceProcedureTransaction?.TransactionStatus?.TransactionStatus?.StatusDateTime?.DaylightSavingIndicator,
                    "DateTimeType": check response?.DocumentServiceProcedureTransaction?.TransactionStatus?.TransactionStatus?.StatusDateTime?.DateTimeType
                },
                "StatusValidityPeriod": {
                    "FromDateTime": {
                        "DateTimeContent": check response?.DocumentServiceProcedureTransaction?.TransactionStatus?.TransactionStatus?.StatusValidityPeriod?.FromDateTime?.DateTimeContent,
                        "TimeZoneCode": check response?.DocumentServiceProcedureTransaction?.TransactionStatus?.TransactionStatus?.StatusValidityPeriod?.FromDateTime?.TimeZoneCode,
                        "DaylightSavingIndicator": check response?.DocumentServiceProcedureTransaction?.TransactionStatus?.TransactionStatus?.StatusValidityPeriod?.FromDateTime?.DaylightSavingIndicator,
                        "DateTimeType": check response?.DocumentServiceProcedureTransaction?.TransactionStatus?.TransactionStatus?.StatusValidityPeriod?.FromDateTime?.DateTimeType
                    },
                    "ToDateTime": {
                        "DateTimeContent": check response?.DocumentServiceProcedureTransaction?.TransactionStatus?.TransactionStatus?.StatusValidityPeriod?.ToDateTime?.DateTimeContent,
                        "TimeZoneCode": check response?.DocumentServiceProcedureTransaction?.TransactionStatus?.TransactionStatus?.StatusValidityPeriod?.ToDateTime?.TimeZoneCode,
                        "DaylightSavingIndicator": check response?.DocumentServiceProcedureTransaction?.TransactionStatus?.TransactionStatus?.StatusValidityPeriod?.ToDateTime?.DaylightSavingIndicator,
                        "DateTimeType": check response?.DocumentServiceProcedureTransaction?.TransactionStatus?.TransactionStatus?.StatusValidityPeriod?.ToDateTime?.DateTimeType
                    }
                },
                "StatusInvolvedPartyReference": {
                    "PartyReference": check response?.DocumentServiceProcedureTransaction?.TransactionStatus?.TransactionStatus?.StatusInvolvedPartyReference?.PartyReference,
                    "InvolvementReference": check response?.DocumentServiceProcedureTransaction?.TransactionStatus?.TransactionStatus?.StatusInvolvedPartyReference?.InvolvementReference
                }
            },
            "TransactionStatusType": check response?.DocumentServiceProcedureTransaction?.TransactionStatus?.TransactionStatusType
        },
        "TransactionName": {
            "Name": check response?.DocumentServiceProcedureTransaction?.TransactionName?.Name
        },
        "ActionType": check response?.DocumentServiceProcedureTransaction?.ActionType,
        "EventType": check response?.DocumentServiceProcedureTransaction?.EventType,
        "EventDateTime": {
            "DateTimeContent": check response?.DocumentServiceProcedureTransaction?.EventDateTime?.DateTimeContent,
            "TimeZoneCode": check response?.DocumentServiceProcedureTransaction?.EventDateTime?.TimeZoneCode,
            "DaylightSavingIndicator": check response?.DocumentServiceProcedureTransaction?.EventDateTime?.DaylightSavingIndicator,
            "DateTimeType": check response?.DocumentServiceProcedureTransaction?.EventDateTime?.DateTimeType
        },
        "EventDescription": check response?.DocumentServiceProcedureTransaction?.EventDescription,
        "EventSource": check response?.DocumentServiceProcedureTransaction?.EventSource,
        "EventLocation": {
            "LocationDescription": check response?.DocumentServiceProcedureTransaction?.EventLocation?.LocationDescription,
            "LocationDateTime": {
                "DateTimeContent": check response?.DocumentServiceProcedureTransaction?.EventLocation?.LocationDateTime?.DateTimeContent,
                "TimeZoneCode": check response?.DocumentServiceProcedureTransaction?.EventLocation?.LocationDateTime?.TimeZoneCode,
                "DaylightSavingIndicator": check response?.DocumentServiceProcedureTransaction?.EventLocation?.LocationDateTime?.DaylightSavingIndicator,
                "DateTimeType": check response?.DocumentServiceProcedureTransaction?.EventLocation?.LocationDateTime?.DateTimeType
            },
            "LocationStatus": {
                "StatusReason": check response?.DocumentServiceProcedureTransaction?.EventLocation?.LocationStatus?.StatusReason,
                "StatusDateTime": {
                    "DateTimeContent": check response?.DocumentServiceProcedureTransaction?.EventLocation?.LocationStatus?.StatusDateTime?.DateTimeContent,
                    "TimeZoneCode": check response?.DocumentServiceProcedureTransaction?.EventLocation?.LocationStatus?.StatusDateTime?.TimeZoneCode,
                    "DaylightSavingIndicator": check response?.DocumentServiceProcedureTransaction?.EventLocation?.LocationStatus?.StatusDateTime?.DaylightSavingIndicator,
                    "DateTimeType": check response?.DocumentServiceProcedureTransaction?.EventLocation?.LocationStatus?.StatusDateTime?.DateTimeType
                },
                "StatusValidityPeriod": {
                    "FromDateTime": {
                        "DateTimeContent": check response?.DocumentServiceProcedureTransaction?.EventLocation?.LocationStatus?.StatusValidityPeriod?.FromDateTime?.DateTimeContent,
                        "TimeZoneCode": check response?.DocumentServiceProcedureTransaction?.EventLocation?.LocationStatus?.StatusValidityPeriod?.FromDateTime?.TimeZoneCode,
                        "DaylightSavingIndicator": check response?.DocumentServiceProcedureTransaction?.EventLocation?.LocationStatus?.StatusValidityPeriod?.FromDateTime?.DaylightSavingIndicator,
                        "DateTimeType": check response?.DocumentServiceProcedureTransaction?.EventLocation?.LocationStatus?.StatusValidityPeriod?.FromDateTime?.DateTimeType
                    },
                    "ToDateTime": {
                        "DateTimeContent": check response?.DocumentServiceProcedureTransaction?.EventLocation?.LocationStatus?.StatusValidityPeriod?.ToDateTime?.DateTimeContent,
                        "TimeZoneCode": check response?.DocumentServiceProcedureTransaction?.EventLocation?.LocationStatus?.StatusValidityPeriod?.ToDateTime?.TimeZoneCode,
                        "DaylightSavingIndicator": check response?.DocumentServiceProcedureTransaction?.EventLocation?.LocationStatus?.StatusValidityPeriod?.ToDateTime?.DaylightSavingIndicator,
                        "DateTimeType": check response?.DocumentServiceProcedureTransaction?.EventLocation?.LocationStatus?.StatusValidityPeriod?.ToDateTime?.DateTimeType
                    }
                },
                "StatusInvolvedPartyReference": {
                    "PartyReference": check response?.DocumentServiceProcedureTransaction?.EventLocation?.LocationStatus?.StatusInvolvedPartyReference?.PartyReference,
                    "InvolvementReference": check response?.DocumentServiceProcedureTransaction?.EventLocation?.LocationStatus?.StatusInvolvedPartyReference?.InvolvementReference
                }
            },
            "LocationType": check response?.DocumentServiceProcedureTransaction?.EventLocation?.LocationType,
            "LocationZoningType": check response?.DocumentServiceProcedureTransaction?.EventLocation?.LocationZoningType,
            "LocationNeighborhoodType": check response?.DocumentServiceProcedureTransaction?.EventLocation?.LocationNeighborhoodType,
            "LocationConstructionType": check response?.DocumentServiceProcedureTransaction?.EventLocation?.LocationConstructionType,
            "LocationOccupancyType": check response?.DocumentServiceProcedureTransaction?.EventLocation?.LocationOccupancyType,
            "LocationValue": check response?.DocumentServiceProcedureTransaction?.EventLocation?.LocationValue,
            "LocationCapacity": check response?.DocumentServiceProcedureTransaction?.EventLocation?.LocationCapacity,
            "LocationIdentification": {
                "IdentifierValue": check response?.DocumentServiceProcedureTransaction?.EventLocation?.LocationIdentification?.IdentifierValue,
                "IdentifierIssuerReference": {
                    "PartyReference": check response?.DocumentServiceProcedureTransaction?.EventLocation?.LocationIdentification?.IdentifierIssuerReference?.PartyReference,
                    "InvolvementReference": check response?.DocumentServiceProcedureTransaction?.EventLocation?.LocationIdentification?.IdentifierIssuerReference?.InvolvementReference
                },
                "IdentifierStartDate": {
                    "DateTimeContent": check response?.DocumentServiceProcedureTransaction?.EventLocation?.LocationIdentification?.IdentifierStartDate?.DateTimeContent,
                    "TimeZoneCode": check response?.DocumentServiceProcedureTransaction?.EventLocation?.LocationIdentification?.IdentifierStartDate?.TimeZoneCode,
                    "DaylightSavingIndicator": check response?.DocumentServiceProcedureTransaction?.EventLocation?.LocationIdentification?.IdentifierStartDate?.DaylightSavingIndicator,
                    "DateTimeType": check response?.DocumentServiceProcedureTransaction?.EventLocation?.LocationIdentification?.IdentifierStartDate?.DateTimeType
                },
                "IdentifierEndDate": {
                    "DateTimeContent": check response?.DocumentServiceProcedureTransaction?.EventLocation?.LocationIdentification?.IdentifierEndDate?.DateTimeContent,
                    "TimeZoneCode": check response?.DocumentServiceProcedureTransaction?.EventLocation?.LocationIdentification?.IdentifierEndDate?.TimeZoneCode,
                    "DaylightSavingIndicator": check response?.DocumentServiceProcedureTransaction?.EventLocation?.LocationIdentification?.IdentifierEndDate?.DaylightSavingIndicator,
                    "DateTimeType": check response?.DocumentServiceProcedureTransaction?.EventLocation?.LocationIdentification?.IdentifierEndDate?.DateTimeType
                }
            },
            "LocationAddress": check response?.DocumentServiceProcedureTransaction?.EventLocation?.LocationAddress,
            "LocationName": {
                "Name": check response?.DocumentServiceProcedureTransaction?.EventLocation?.LocationName?.Name
            },
            "LocationTimeZone": check response?.DocumentServiceProcedureTransaction?.EventLocation?.LocationTimeZone
        },
        "EventAction": {
            "Action": check response?.DocumentServiceProcedureTransaction?.EventAction?.Action
        },
        "EventStatus": {
            "StatusReason": check response?.DocumentServiceProcedureTransaction?.EventStatus?.StatusReason,
            "StatusDateTime": {
                "DateTimeContent": check response?.DocumentServiceProcedureTransaction?.EventStatus?.StatusDateTime?.DateTimeContent,
                "TimeZoneCode": check response?.DocumentServiceProcedureTransaction?.EventStatus?.StatusDateTime?.TimeZoneCode,
                "DaylightSavingIndicator": check response?.DocumentServiceProcedureTransaction?.EventStatus?.StatusDateTime?.DaylightSavingIndicator,
                "DateTimeType": check response?.DocumentServiceProcedureTransaction?.EventStatus?.StatusDateTime?.DateTimeType
            },
            "StatusValidityPeriod": {
                "FromDateTime": {
                    "DateTimeContent": check response?.DocumentServiceProcedureTransaction?.EventStatus?.StatusValidityPeriod?.FromDateTime?.DateTimeContent,
                    "TimeZoneCode": check response?.DocumentServiceProcedureTransaction?.EventStatus?.StatusValidityPeriod?.FromDateTime?.TimeZoneCode,
                    "DaylightSavingIndicator": check response?.DocumentServiceProcedureTransaction?.EventStatus?.StatusValidityPeriod?.FromDateTime?.DaylightSavingIndicator,
                    "DateTimeType": check response?.DocumentServiceProcedureTransaction?.EventStatus?.StatusValidityPeriod?.FromDateTime?.DateTimeType
                },
                "ToDateTime": {
                    "DateTimeContent": check response?.DocumentServiceProcedureTransaction?.EventStatus?.StatusValidityPeriod?.ToDateTime?.DateTimeContent,
                    "TimeZoneCode": check response?.DocumentServiceProcedureTransaction?.EventStatus?.StatusValidityPeriod?.ToDateTime?.TimeZoneCode,
                    "DaylightSavingIndicator": check response?.DocumentServiceProcedureTransaction?.EventStatus?.StatusValidityPeriod?.ToDateTime?.DaylightSavingIndicator,
                    "DateTimeType": check response?.DocumentServiceProcedureTransaction?.EventStatus?.StatusValidityPeriod?.ToDateTime?.DateTimeType
                }
            },
            "StatusInvolvedPartyReference": {
                "PartyReference": check response?.DocumentServiceProcedureTransaction?.EventStatus?.StatusInvolvedPartyReference?.PartyReference,
                "InvolvementReference": check response?.DocumentServiceProcedureTransaction?.EventStatus?.StatusInvolvedPartyReference?.InvolvementReference
            }
        },
        "EventValue": check response?.DocumentServiceProcedureTransaction?.EventValue,
        "EventValidityPeriod": {
            "FromDateTime": {
                "DateTimeContent": check response?.DocumentServiceProcedureTransaction?.EventValidityPeriod?.FromDateTime?.DateTimeContent,
                "TimeZoneCode": check response?.DocumentServiceProcedureTransaction?.EventValidityPeriod?.FromDateTime?.TimeZoneCode,
                "DaylightSavingIndicator": check response?.DocumentServiceProcedureTransaction?.EventValidityPeriod?.FromDateTime?.DaylightSavingIndicator,
                "DateTimeType": check response?.DocumentServiceProcedureTransaction?.EventValidityPeriod?.FromDateTime?.DateTimeType
            },
            "ToDateTime": {
                "DateTimeContent": check response?.DocumentServiceProcedureTransaction?.EventValidityPeriod?.ToDateTime?.DateTimeContent,
                "TimeZoneCode": check response?.DocumentServiceProcedureTransaction?.EventValidityPeriod?.ToDateTime?.TimeZoneCode,
                "DaylightSavingIndicator": check response?.DocumentServiceProcedureTransaction?.EventValidityPeriod?.ToDateTime?.DaylightSavingIndicator,
                "DateTimeType": check response?.DocumentServiceProcedureTransaction?.EventValidityPeriod?.ToDateTime?.DateTimeType
            }
        },
        "EventIdentification": {
            "IdentifierValue": check response?.DocumentServiceProcedureTransaction?.EventIdentification?.IdentifierValue,
            "IdentifierIssuerReference": {
                "PartyReference": check response?.DocumentServiceProcedureTransaction?.EventIdentification?.IdentifierIssuerReference?.PartyReference,
                "InvolvementReference": check response?.DocumentServiceProcedureTransaction?.EventIdentification?.IdentifierIssuerReference?.InvolvementReference
            },
            "IdentifierStartDate": {
                "DateTimeContent": check response?.DocumentServiceProcedureTransaction?.EventIdentification?.IdentifierStartDate?.DateTimeContent,
                "TimeZoneCode": check response?.DocumentServiceProcedureTransaction?.EventIdentification?.IdentifierStartDate?.TimeZoneCode,
                "DaylightSavingIndicator": check response?.DocumentServiceProcedureTransaction?.EventIdentification?.IdentifierStartDate?.DaylightSavingIndicator,
                "DateTimeType": check response?.DocumentServiceProcedureTransaction?.EventIdentification?.IdentifierStartDate?.DateTimeType
            },
            "IdentifierEndDate": {
                "DateTimeContent": check response?.DocumentServiceProcedureTransaction?.EventIdentification?.IdentifierEndDate?.DateTimeContent,
                "TimeZoneCode": check response?.DocumentServiceProcedureTransaction?.EventIdentification?.IdentifierEndDate?.TimeZoneCode,
                "DaylightSavingIndicator": check response?.DocumentServiceProcedureTransaction?.EventIdentification?.IdentifierEndDate?.DaylightSavingIndicator,
                "DateTimeType": check response?.DocumentServiceProcedureTransaction?.EventIdentification?.IdentifierEndDate?.DateTimeType
            }
        }
    },
    "DocumentServiceProcedureFinancialTransactionArrangement": {
        "ArrangementAction": {
            "Action": check response?.DocumentServiceProcedureFinancialTransactionArrangement?.ArrangementAction?.Action
        },
        "ArrangementStartDate": {
            "DateTimeContent": check response?.DocumentServiceProcedureFinancialTransactionArrangement?.ArrangementStartDate?.DateTimeContent,
            "TimeZoneCode": check response?.DocumentServiceProcedureFinancialTransactionArrangement?.ArrangementStartDate?.TimeZoneCode,
            "DaylightSavingIndicator": check response?.DocumentServiceProcedureFinancialTransactionArrangement?.ArrangementStartDate?.DaylightSavingIndicator,
            "DateTimeType": check response?.DocumentServiceProcedureFinancialTransactionArrangement?.ArrangementStartDate?.DateTimeType
        },
        "ArrangementEndDate": {
            "DateTimeContent": check response?.DocumentServiceProcedureFinancialTransactionArrangement?.ArrangementEndDate?.DateTimeContent,
            "TimeZoneCode": check response?.DocumentServiceProcedureFinancialTransactionArrangement?.ArrangementEndDate?.TimeZoneCode,
            "DaylightSavingIndicator": check response?.DocumentServiceProcedureFinancialTransactionArrangement?.ArrangementEndDate?.DaylightSavingIndicator,
            "DateTimeType": check response?.DocumentServiceProcedureFinancialTransactionArrangement?.ArrangementEndDate?.DateTimeType
        },
        "ArrangementStatus": {
            "ArrangementStatus": {
                "StatusReason": check response?.DocumentServiceProcedureFinancialTransactionArrangement?.ArrangementStatus?.ArrangementStatus?.StatusReason,
                "StatusDateTime": {
                    "DateTimeContent": check response?.DocumentServiceProcedureFinancialTransactionArrangement?.ArrangementStatus?.ArrangementStatus?.StatusDateTime?.DateTimeContent,
                    "TimeZoneCode": check response?.DocumentServiceProcedureFinancialTransactionArrangement?.ArrangementStatus?.ArrangementStatus?.StatusDateTime?.TimeZoneCode,
                    "DaylightSavingIndicator": check response?.DocumentServiceProcedureFinancialTransactionArrangement?.ArrangementStatus?.ArrangementStatus?.StatusDateTime?.DaylightSavingIndicator,
                    "DateTimeType": check response?.DocumentServiceProcedureFinancialTransactionArrangement?.ArrangementStatus?.ArrangementStatus?.StatusDateTime?.DateTimeType
                },
                "StatusValidityPeriod": {
                    "FromDateTime": {
                        "DateTimeContent": check response?.DocumentServiceProcedureFinancialTransactionArrangement?.ArrangementStatus?.ArrangementStatus?.StatusValidityPeriod?.FromDateTime?.DateTimeContent,
                        "TimeZoneCode": check response?.DocumentServiceProcedureFinancialTransactionArrangement?.ArrangementStatus?.ArrangementStatus?.StatusValidityPeriod?.FromDateTime?.TimeZoneCode,
                        "DaylightSavingIndicator": check response?.DocumentServiceProcedureFinancialTransactionArrangement?.ArrangementStatus?.ArrangementStatus?.StatusValidityPeriod?.FromDateTime?.DaylightSavingIndicator,
                        "DateTimeType": check response?.DocumentServiceProcedureFinancialTransactionArrangement?.ArrangementStatus?.ArrangementStatus?.StatusValidityPeriod?.FromDateTime?.DateTimeType
                    },
                    "ToDateTime": {
                        "DateTimeContent": check response?.DocumentServiceProcedureFinancialTransactionArrangement?.ArrangementStatus?.ArrangementStatus?.StatusValidityPeriod?.ToDateTime?.DateTimeContent,
                        "TimeZoneCode": check response?.DocumentServiceProcedureFinancialTransactionArrangement?.ArrangementStatus?.ArrangementStatus?.StatusValidityPeriod?.ToDateTime?.TimeZoneCode,
                        "DaylightSavingIndicator": check response?.DocumentServiceProcedureFinancialTransactionArrangement?.ArrangementStatus?.ArrangementStatus?.StatusValidityPeriod?.ToDateTime?.DaylightSavingIndicator,
                        "DateTimeType": check response?.DocumentServiceProcedureFinancialTransactionArrangement?.ArrangementStatus?.ArrangementStatus?.StatusValidityPeriod?.ToDateTime?.DateTimeType
                    }
                },
                "StatusInvolvedPartyReference": {
                    "PartyReference": check response?.DocumentServiceProcedureFinancialTransactionArrangement?.ArrangementStatus?.ArrangementStatus?.StatusInvolvedPartyReference?.PartyReference,
                    "InvolvementReference": check response?.DocumentServiceProcedureFinancialTransactionArrangement?.ArrangementStatus?.ArrangementStatus?.StatusInvolvedPartyReference?.InvolvementReference
                }
            },
            "ArrangementStatusType": check response?.DocumentServiceProcedureFinancialTransactionArrangement?.ArrangementStatus?.ArrangementStatusType
        },
        "ArrangementSubjectMatter": {
            "Subject": check response?.DocumentServiceProcedureFinancialTransactionArrangement?.ArrangementSubjectMatter?.Subject
        },
        "Arrangementtype": check response?.DocumentServiceProcedureFinancialTransactionArrangement?.Arrangementtype,
        "ArrangementIdentification": {
            "IdentifierValue": check response?.DocumentServiceProcedureFinancialTransactionArrangement?.ArrangementIdentification?.IdentifierValue,
            "IdentifierIssuerReference": {
                "PartyReference": check response?.DocumentServiceProcedureFinancialTransactionArrangement?.ArrangementIdentification?.IdentifierIssuerReference?.PartyReference,
                "InvolvementReference": check response?.DocumentServiceProcedureFinancialTransactionArrangement?.ArrangementIdentification?.IdentifierIssuerReference?.InvolvementReference
            },
            "IdentifierStartDate": {
                "DateTimeContent": check response?.DocumentServiceProcedureFinancialTransactionArrangement?.ArrangementIdentification?.IdentifierStartDate?.DateTimeContent,
                "TimeZoneCode": check response?.DocumentServiceProcedureFinancialTransactionArrangement?.ArrangementIdentification?.IdentifierStartDate?.TimeZoneCode,
                "DaylightSavingIndicator": check response?.DocumentServiceProcedureFinancialTransactionArrangement?.ArrangementIdentification?.IdentifierStartDate?.DaylightSavingIndicator,
                "DateTimeType": check response?.DocumentServiceProcedureFinancialTransactionArrangement?.ArrangementIdentification?.IdentifierStartDate?.DateTimeType
            },
            "IdentifierEndDate": {
                "DateTimeContent": check response?.DocumentServiceProcedureFinancialTransactionArrangement?.ArrangementIdentification?.IdentifierEndDate?.DateTimeContent,
                "TimeZoneCode": check response?.DocumentServiceProcedureFinancialTransactionArrangement?.ArrangementIdentification?.IdentifierEndDate?.TimeZoneCode,
                "DaylightSavingIndicator": check response?.DocumentServiceProcedureFinancialTransactionArrangement?.ArrangementIdentification?.IdentifierEndDate?.DaylightSavingIndicator,
                "DateTimeType": check response?.DocumentServiceProcedureFinancialTransactionArrangement?.ArrangementIdentification?.IdentifierEndDate?.DateTimeType
            }
        }
    },
    "DocumentServiceProcedureCustomerAgreementReference": {
        "AgreementSignedDate": {
            "DateContent": check response?.DocumentServiceProcedureCustomerAgreementReference?.AgreementSignedDate?.DateContent
        },
        "AgreementType": check response?.DocumentServiceProcedureCustomerAgreementReference?.AgreementType,
        "AgreementValidityPeriod": {
            "FromDateTime": {
                "DateTimeContent": check response?.DocumentServiceProcedureCustomerAgreementReference?.AgreementValidityPeriod?.FromDateTime?.DateTimeContent,
                "TimeZoneCode": check response?.DocumentServiceProcedureCustomerAgreementReference?.AgreementValidityPeriod?.FromDateTime?.TimeZoneCode,
                "DaylightSavingIndicator": check response?.DocumentServiceProcedureCustomerAgreementReference?.AgreementValidityPeriod?.FromDateTime?.DaylightSavingIndicator,
                "DateTimeType": check response?.DocumentServiceProcedureCustomerAgreementReference?.AgreementValidityPeriod?.FromDateTime?.DateTimeType
            },
            "ToDateTime": {
                "DateTimeContent": check response?.DocumentServiceProcedureCustomerAgreementReference?.AgreementValidityPeriod?.ToDateTime?.DateTimeContent,
                "TimeZoneCode": check response?.DocumentServiceProcedureCustomerAgreementReference?.AgreementValidityPeriod?.ToDateTime?.TimeZoneCode,
                "DaylightSavingIndicator": check response?.DocumentServiceProcedureCustomerAgreementReference?.AgreementValidityPeriod?.ToDateTime?.DaylightSavingIndicator,
                "DateTimeType": check response?.DocumentServiceProcedureCustomerAgreementReference?.AgreementValidityPeriod?.ToDateTime?.DateTimeType
            }
        },
        "AgreementVersion": check response?.DocumentServiceProcedureCustomerAgreementReference?.AgreementVersion,
        "AgreementStatus": {
            "AgreementStatus": {
                "StatusReason": check response?.DocumentServiceProcedureCustomerAgreementReference?.AgreementStatus?.AgreementStatus?.StatusReason,
                "StatusDateTime": {
                    "DateTimeContent": check response?.DocumentServiceProcedureCustomerAgreementReference?.AgreementStatus?.AgreementStatus?.StatusDateTime?.DateTimeContent,
                    "TimeZoneCode": check response?.DocumentServiceProcedureCustomerAgreementReference?.AgreementStatus?.AgreementStatus?.StatusDateTime?.TimeZoneCode,
                    "DaylightSavingIndicator": check response?.DocumentServiceProcedureCustomerAgreementReference?.AgreementStatus?.AgreementStatus?.StatusDateTime?.DaylightSavingIndicator,
                    "DateTimeType": check response?.DocumentServiceProcedureCustomerAgreementReference?.AgreementStatus?.AgreementStatus?.StatusDateTime?.DateTimeType
                },
                "StatusValidityPeriod": {
                    "FromDateTime": {
                        "DateTimeContent": check response?.DocumentServiceProcedureCustomerAgreementReference?.AgreementStatus?.AgreementStatus?.StatusValidityPeriod?.FromDateTime?.DateTimeContent,
                        "TimeZoneCode": check response?.DocumentServiceProcedureCustomerAgreementReference?.AgreementStatus?.AgreementStatus?.StatusValidityPeriod?.FromDateTime?.TimeZoneCode,
                        "DaylightSavingIndicator": check response?.DocumentServiceProcedureCustomerAgreementReference?.AgreementStatus?.AgreementStatus?.StatusValidityPeriod?.FromDateTime?.DaylightSavingIndicator,
                        "DateTimeType": check response?.DocumentServiceProcedureCustomerAgreementReference?.AgreementStatus?.AgreementStatus?.StatusValidityPeriod?.FromDateTime?.DateTimeType
                    },
                    "ToDateTime": {
                        "DateTimeContent": check response?.DocumentServiceProcedureCustomerAgreementReference?.AgreementStatus?.AgreementStatus?.StatusValidityPeriod?.ToDateTime?.DateTimeContent,
                        "TimeZoneCode": check response?.DocumentServiceProcedureCustomerAgreementReference?.AgreementStatus?.AgreementStatus?.StatusValidityPeriod?.ToDateTime?.TimeZoneCode,
                        "DaylightSavingIndicator": check response?.DocumentServiceProcedureCustomerAgreementReference?.AgreementStatus?.AgreementStatus?.StatusValidityPeriod?.ToDateTime?.DaylightSavingIndicator,
                        "DateTimeType": check response?.DocumentServiceProcedureCustomerAgreementReference?.AgreementStatus?.AgreementStatus?.StatusValidityPeriod?.ToDateTime?.DateTimeType
                    }
                },
                "StatusInvolvedPartyReference": {
                    "PartyReference": check response?.DocumentServiceProcedureCustomerAgreementReference?.AgreementStatus?.AgreementStatus?.StatusInvolvedPartyReference?.PartyReference,
                    "InvolvementReference": check response?.DocumentServiceProcedureCustomerAgreementReference?.AgreementStatus?.AgreementStatus?.StatusInvolvedPartyReference?.InvolvementReference
                }
            },
            "AgreementStatusType": check response?.DocumentServiceProcedureCustomerAgreementReference?.AgreementStatus?.AgreementStatusType
        },
        // "AgreementSubjectMatter": check response?.DocumentServiceProcedureCustomerAgreementReference?.AgreementSubjectMatter,
        "AgreementIdentification": {
            "IdentifierValue": check response?.DocumentServiceProcedureCustomerAgreementReference?.AgreementIdentification?.IdentifierValue,
            "IdentifierIssuerReference": {
                "PartyReference": check response?.DocumentServiceProcedureCustomerAgreementReference?.AgreementIdentification?.IdentifierIssuerReference?.PartyReference,
                "InvolvementReference": check response?.DocumentServiceProcedureCustomerAgreementReference?.AgreementIdentification?.IdentifierIssuerReference?.InvolvementReference
            },
            "IdentifierStartDate": {
                "DateTimeContent": check response?.DocumentServiceProcedureCustomerAgreementReference?.AgreementIdentification?.IdentifierStartDate?.DateTimeContent,
                "TimeZoneCode": check response?.DocumentServiceProcedureCustomerAgreementReference?.AgreementIdentification?.IdentifierStartDate?.TimeZoneCode,
                "DaylightSavingIndicator": check response?.DocumentServiceProcedureCustomerAgreementReference?.AgreementIdentification?.IdentifierStartDate?.DaylightSavingIndicator,
                "DateTimeType": check response?.DocumentServiceProcedureCustomerAgreementReference?.AgreementIdentification?.IdentifierStartDate?.DateTimeType
            },
            "IdentifierEndDate": {
                "DateTimeContent": check response?.DocumentServiceProcedureCustomerAgreementReference?.AgreementIdentification?.IdentifierEndDate?.DateTimeContent,
                "TimeZoneCode": check response?.DocumentServiceProcedureCustomerAgreementReference?.AgreementIdentification?.IdentifierEndDate?.TimeZoneCode,
                "DaylightSavingIndicator": check response?.DocumentServiceProcedureCustomerAgreementReference?.AgreementIdentification?.IdentifierEndDate?.DaylightSavingIndicator,
                "DateTimeType": check response?.DocumentServiceProcedureCustomerAgreementReference?.AgreementIdentification?.IdentifierEndDate?.DateTimeType
            }
        },
        "AgreementDate": {
            "DateTimeContent": check response?.DocumentServiceProcedureCustomerAgreementReference?.AgreementDate?.DateTimeContent,
            "TimeZoneCode": check response?.DocumentServiceProcedureCustomerAgreementReference?.AgreementDate?.TimeZoneCode,
            "DaylightSavingIndicator": check response?.DocumentServiceProcedureCustomerAgreementReference?.AgreementDate?.DaylightSavingIndicator,
            "DateTimeType": check response?.DocumentServiceProcedureCustomerAgreementReference?.AgreementDate?.DateTimeType
        },
        "AgreementDescription": check response?.DocumentServiceProcedureCustomerAgreementReference?.AgreementDescription
    },
    "DocumentServiceProcedureReference": {
        "ProcedureType": {
            "Proceduretypevalues": check response?.DocumentServiceProcedureReference?.ProcedureType?.Proceduretypevalues
        },
        "ProcedureDateTime": {
            "DateTimeContent": check response?.DocumentServiceProcedureReference?.ProcedureDateTime?.DateTimeContent,
            "TimeZoneCode": check response?.DocumentServiceProcedureReference?.ProcedureDateTime?.TimeZoneCode,
            "DaylightSavingIndicator": check response?.DocumentServiceProcedureReference?.ProcedureDateTime?.DaylightSavingIndicator,
            "DateTimeType": check response?.DocumentServiceProcedureReference?.ProcedureDateTime?.DateTimeType
        },
        "ProcedureRequest": {
            "InstructionDate": {
                "InstructionDate": {
                    "DateTimeContent": check response?.DocumentServiceProcedureReference?.ProcedureRequest?.InstructionDate?.InstructionDate?.DateTimeContent,
                    "TimeZoneCode": check response?.DocumentServiceProcedureReference?.ProcedureRequest?.InstructionDate?.InstructionDate?.TimeZoneCode,
                    "DaylightSavingIndicator": check response?.DocumentServiceProcedureReference?.ProcedureRequest?.InstructionDate?.InstructionDate?.DaylightSavingIndicator,
                    "DateTimeType": check response?.DocumentServiceProcedureReference?.ProcedureRequest?.InstructionDate?.InstructionDate?.DateTimeType
                },
                "InstructionDateType": check response?.DocumentServiceProcedureReference?.ProcedureRequest?.InstructionDate?.InstructionDateType
            },
            "InstructionStatus": {
                "InstructionStatusType": check response?.DocumentServiceProcedureReference?.ProcedureRequest?.InstructionStatus?.InstructionStatusType,
                "InstructionStatus": {
                    "StatusReason": check response?.DocumentServiceProcedureReference?.ProcedureRequest?.InstructionStatus?.InstructionStatus?.StatusReason,
                    "StatusDateTime": {
                        "DateTimeContent": check response?.DocumentServiceProcedureReference?.ProcedureRequest?.InstructionStatus?.InstructionStatus?.StatusDateTime?.DateTimeContent,
                        "TimeZoneCode": check response?.DocumentServiceProcedureReference?.ProcedureRequest?.InstructionStatus?.InstructionStatus?.StatusDateTime?.TimeZoneCode,
                        "DaylightSavingIndicator": check response?.DocumentServiceProcedureReference?.ProcedureRequest?.InstructionStatus?.InstructionStatus?.StatusDateTime?.DaylightSavingIndicator,
                        "DateTimeType": check response?.DocumentServiceProcedureReference?.ProcedureRequest?.InstructionStatus?.InstructionStatus?.StatusDateTime?.DateTimeType
                    },
                    "StatusValidityPeriod": {
                        "FromDateTime": {
                            "DateTimeContent": check response?.DocumentServiceProcedureReference?.ProcedureRequest?.InstructionStatus?.InstructionStatus?.StatusValidityPeriod?.FromDateTime?.DateTimeContent,
                            "TimeZoneCode": check response?.DocumentServiceProcedureReference?.ProcedureRequest?.InstructionStatus?.InstructionStatus?.StatusValidityPeriod?.FromDateTime?.TimeZoneCode,
                            "DaylightSavingIndicator": check response?.DocumentServiceProcedureReference?.ProcedureRequest?.InstructionStatus?.InstructionStatus?.StatusValidityPeriod?.FromDateTime?.DaylightSavingIndicator,
                            "DateTimeType": check response?.DocumentServiceProcedureReference?.ProcedureRequest?.InstructionStatus?.InstructionStatus?.StatusValidityPeriod?.FromDateTime?.DateTimeType
                        },
                        "ToDateTime": {
                            "DateTimeContent": check response?.DocumentServiceProcedureReference?.ProcedureRequest?.InstructionStatus?.InstructionStatus?.StatusValidityPeriod?.ToDateTime?.DateTimeContent,
                            "TimeZoneCode": check response?.DocumentServiceProcedureReference?.ProcedureRequest?.InstructionStatus?.InstructionStatus?.StatusValidityPeriod?.ToDateTime?.TimeZoneCode,
                            "DaylightSavingIndicator": check response?.DocumentServiceProcedureReference?.ProcedureRequest?.InstructionStatus?.InstructionStatus?.StatusValidityPeriod?.ToDateTime?.DaylightSavingIndicator,
                            "DateTimeType": check response?.DocumentServiceProcedureReference?.ProcedureRequest?.InstructionStatus?.InstructionStatus?.StatusValidityPeriod?.ToDateTime?.DateTimeType
                        }
                    },
                    "StatusInvolvedPartyReference": {
                        "PartyReference": check response?.DocumentServiceProcedureReference?.ProcedureRequest?.InstructionStatus?.InstructionStatus?.StatusInvolvedPartyReference?.PartyReference,
                        "InvolvementReference": check response?.DocumentServiceProcedureReference?.ProcedureRequest?.InstructionStatus?.InstructionStatus?.StatusInvolvedPartyReference?.InvolvementReference
                    }
                }
            },
            "InstructionIdentification": {
                "InstructionIdentification": {
                    "IdentifierValue": check response?.DocumentServiceProcedureReference?.ProcedureRequest?.InstructionIdentification?.InstructionIdentification?.IdentifierValue,
                    "IdentifierIssuerReference": {
                        "PartyReference": check response?.DocumentServiceProcedureReference?.ProcedureRequest?.InstructionIdentification?.InstructionIdentification?.IdentifierIssuerReference?.PartyReference,
                        "InvolvementReference": check response?.DocumentServiceProcedureReference?.ProcedureRequest?.InstructionIdentification?.InstructionIdentification?.IdentifierIssuerReference?.InvolvementReference
                    },
                    "IdentifierStartDate": {
                        "DateTimeContent": check response?.DocumentServiceProcedureReference?.ProcedureRequest?.InstructionIdentification?.InstructionIdentification?.IdentifierStartDate?.DateTimeContent,
                        "TimeZoneCode": check response?.DocumentServiceProcedureReference?.ProcedureRequest?.InstructionIdentification?.InstructionIdentification?.IdentifierStartDate?.TimeZoneCode,
                        "DaylightSavingIndicator": check response?.DocumentServiceProcedureReference?.ProcedureRequest?.InstructionIdentification?.InstructionIdentification?.IdentifierStartDate?.DaylightSavingIndicator,
                        "DateTimeType": check response?.DocumentServiceProcedureReference?.ProcedureRequest?.InstructionIdentification?.InstructionIdentification?.IdentifierStartDate?.DateTimeType
                    },
                    "IdentifierEndDate": {
                        "DateTimeContent": check response?.DocumentServiceProcedureReference?.ProcedureRequest?.InstructionIdentification?.InstructionIdentification?.IdentifierEndDate?.DateTimeContent,
                        "TimeZoneCode": check response?.DocumentServiceProcedureReference?.ProcedureRequest?.InstructionIdentification?.InstructionIdentification?.IdentifierEndDate?.TimeZoneCode,
                        "DaylightSavingIndicator": check response?.DocumentServiceProcedureReference?.ProcedureRequest?.InstructionIdentification?.InstructionIdentification?.IdentifierEndDate?.DaylightSavingIndicator,
                        "DateTimeType": check response?.DocumentServiceProcedureReference?.ProcedureRequest?.InstructionIdentification?.InstructionIdentification?.IdentifierEndDate?.DateTimeType
                    }
                },
                "InstructionIdentificationType": check response?.DocumentServiceProcedureReference?.ProcedureRequest?.InstructionIdentification?.InstructionIdentificationType
            },
            "InstructionType": check response?.DocumentServiceProcedureReference?.ProcedureRequest?.InstructionType,
            "InstructionResult": check response?.DocumentServiceProcedureReference?.ProcedureRequest?.InstructionResult,
            "InstructionDescription": check response?.DocumentServiceProcedureReference?.ProcedureRequest?.InstructionDescription,
            "InstructionLog": {
                "LogType": check response?.DocumentServiceProcedureReference?.ProcedureRequest?.InstructionLog?.LogType,
                "LogPeriod": {
                    "FromDateTime": {
                        "DateTimeContent": check response?.DocumentServiceProcedureReference?.ProcedureRequest?.InstructionLog?.LogPeriod?.FromDateTime?.DateTimeContent,
                        "TimeZoneCode": check response?.DocumentServiceProcedureReference?.ProcedureRequest?.InstructionLog?.LogPeriod?.FromDateTime?.TimeZoneCode,
                        "DaylightSavingIndicator": check response?.DocumentServiceProcedureReference?.ProcedureRequest?.InstructionLog?.LogPeriod?.FromDateTime?.DaylightSavingIndicator,
                        "DateTimeType": check response?.DocumentServiceProcedureReference?.ProcedureRequest?.InstructionLog?.LogPeriod?.FromDateTime?.DateTimeType
                    },
                    "ToDateTime": {
                        "DateTimeContent": check response?.DocumentServiceProcedureReference?.ProcedureRequest?.InstructionLog?.LogPeriod?.ToDateTime?.DateTimeContent,
                        "TimeZoneCode": check response?.DocumentServiceProcedureReference?.ProcedureRequest?.InstructionLog?.LogPeriod?.ToDateTime?.TimeZoneCode,
                        "DaylightSavingIndicator": check response?.DocumentServiceProcedureReference?.ProcedureRequest?.InstructionLog?.LogPeriod?.ToDateTime?.DaylightSavingIndicator,
                        "DateTimeType": check response?.DocumentServiceProcedureReference?.ProcedureRequest?.InstructionLog?.LogPeriod?.ToDateTime?.DateTimeType
                    }
                },
                "LogDate": {
                    "DateTimeContent": check response?.DocumentServiceProcedureReference?.ProcedureRequest?.InstructionLog?.LogDate?.DateTimeContent,
                    "TimeZoneCode": check response?.DocumentServiceProcedureReference?.ProcedureRequest?.InstructionLog?.LogDate?.TimeZoneCode,
                    "DaylightSavingIndicator": check response?.DocumentServiceProcedureReference?.ProcedureRequest?.InstructionLog?.LogDate?.DaylightSavingIndicator,
                    "DateTimeType": check response?.DocumentServiceProcedureReference?.ProcedureRequest?.InstructionLog?.LogDate?.DateTimeType
                },
                "LogIdentification": {
                    "IdentifierValue": check response?.DocumentServiceProcedureReference?.ProcedureRequest?.InstructionLog?.LogIdentification?.IdentifierValue,
                    "IdentifierIssuerReference": {
                        "PartyReference": check response?.DocumentServiceProcedureReference?.ProcedureRequest?.InstructionLog?.LogIdentification?.IdentifierIssuerReference?.PartyReference,
                        "InvolvementReference": check response?.DocumentServiceProcedureReference?.ProcedureRequest?.InstructionLog?.LogIdentification?.IdentifierIssuerReference?.InvolvementReference
                    },
                    "IdentifierStartDate": {
                        "DateTimeContent": check response?.DocumentServiceProcedureReference?.ProcedureRequest?.InstructionLog?.LogIdentification?.IdentifierStartDate?.DateTimeContent,
                        "TimeZoneCode": check response?.DocumentServiceProcedureReference?.ProcedureRequest?.InstructionLog?.LogIdentification?.IdentifierStartDate?.TimeZoneCode,
                        "DaylightSavingIndicator": check response?.DocumentServiceProcedureReference?.ProcedureRequest?.InstructionLog?.LogIdentification?.IdentifierStartDate?.DaylightSavingIndicator,
                        "DateTimeType": check response?.DocumentServiceProcedureReference?.ProcedureRequest?.InstructionLog?.LogIdentification?.IdentifierStartDate?.DateTimeType
                    },
                    "IdentifierEndDate": {
                        "DateTimeContent": check response?.DocumentServiceProcedureReference?.ProcedureRequest?.InstructionLog?.LogIdentification?.IdentifierEndDate?.DateTimeContent,
                        "TimeZoneCode": check response?.DocumentServiceProcedureReference?.ProcedureRequest?.InstructionLog?.LogIdentification?.IdentifierEndDate?.TimeZoneCode,
                        "DaylightSavingIndicator": check response?.DocumentServiceProcedureReference?.ProcedureRequest?.InstructionLog?.LogIdentification?.IdentifierEndDate?.DaylightSavingIndicator,
                        "DateTimeType": check response?.DocumentServiceProcedureReference?.ProcedureRequest?.InstructionLog?.LogIdentification?.IdentifierEndDate?.DateTimeType
                    }
                }
            },
            "InstructionPurpose": check response?.DocumentServiceProcedureReference?.ProcedureRequest?.InstructionPurpose
        },
        "ProcedureSchedule": {
            "ScheduleType": check response?.DocumentServiceProcedureReference?.ProcedureSchedule?.ScheduleType
        },
        "ProcedureStatus": {
            "StatusReason": check response?.DocumentServiceProcedureReference?.ProcedureStatus?.StatusReason,
            "StatusDateTime": {
                "DateTimeContent": check response?.DocumentServiceProcedureReference?.ProcedureStatus?.StatusDateTime?.DateTimeContent,
                "TimeZoneCode": check response?.DocumentServiceProcedureReference?.ProcedureStatus?.StatusDateTime?.TimeZoneCode,
                "DaylightSavingIndicator": check response?.DocumentServiceProcedureReference?.ProcedureStatus?.StatusDateTime?.DaylightSavingIndicator,
                "DateTimeType": check response?.DocumentServiceProcedureReference?.ProcedureStatus?.StatusDateTime?.DateTimeType
            },
            "StatusValidityPeriod": {
                "FromDateTime": {
                    "DateTimeContent": check response?.DocumentServiceProcedureReference?.ProcedureStatus?.StatusValidityPeriod?.FromDateTime?.DateTimeContent,
                    "TimeZoneCode": check response?.DocumentServiceProcedureReference?.ProcedureStatus?.StatusValidityPeriod?.FromDateTime?.TimeZoneCode,
                    "DaylightSavingIndicator": check response?.DocumentServiceProcedureReference?.ProcedureStatus?.StatusValidityPeriod?.FromDateTime?.DaylightSavingIndicator,
                    "DateTimeType": check response?.DocumentServiceProcedureReference?.ProcedureStatus?.StatusValidityPeriod?.FromDateTime?.DateTimeType
                },
                "ToDateTime": {
                    "DateTimeContent": check response?.DocumentServiceProcedureReference?.ProcedureStatus?.StatusValidityPeriod?.ToDateTime?.DateTimeContent,
                    "TimeZoneCode": check response?.DocumentServiceProcedureReference?.ProcedureStatus?.StatusValidityPeriod?.ToDateTime?.TimeZoneCode,
                    "DaylightSavingIndicator": check response?.DocumentServiceProcedureReference?.ProcedureStatus?.StatusValidityPeriod?.ToDateTime?.DaylightSavingIndicator,
                    "DateTimeType": check response?.DocumentServiceProcedureReference?.ProcedureStatus?.StatusValidityPeriod?.ToDateTime?.DateTimeType
                }
            },
            "StatusInvolvedPartyReference": {
                "PartyReference": check response?.DocumentServiceProcedureReference?.ProcedureStatus?.StatusInvolvedPartyReference?.PartyReference,
                "InvolvementReference": check response?.DocumentServiceProcedureReference?.ProcedureStatus?.StatusInvolvedPartyReference?.InvolvementReference
            }
        }
    },
    "DocumentServiceProcedureDocumentReference": {
        "DocumentIdentification": {
            "IdentifierValue": check response?.DocumentServiceProcedureDocumentReference?.DocumentIdentification?.IdentifierValue,
            "IdentifierIssuerReference": {
                "PartyReference": check response?.DocumentServiceProcedureDocumentReference?.DocumentIdentification?.IdentifierIssuerReference?.PartyReference,
                "InvolvementReference": check response?.DocumentServiceProcedureDocumentReference?.DocumentIdentification?.IdentifierIssuerReference?.InvolvementReference
            },
            "IdentifierStartDate": {
                "DateTimeContent": check response?.DocumentServiceProcedureDocumentReference?.DocumentIdentification?.IdentifierStartDate?.DateTimeContent,
                "TimeZoneCode": check response?.DocumentServiceProcedureDocumentReference?.DocumentIdentification?.IdentifierStartDate?.TimeZoneCode,
                "DaylightSavingIndicator": check response?.DocumentServiceProcedureDocumentReference?.DocumentIdentification?.IdentifierStartDate?.DaylightSavingIndicator,
                "DateTimeType": check response?.DocumentServiceProcedureDocumentReference?.DocumentIdentification?.IdentifierStartDate?.DateTimeType
            },
            "IdentifierEndDate": {
                "DateTimeContent": check response?.DocumentServiceProcedureDocumentReference?.DocumentIdentification?.IdentifierEndDate?.DateTimeContent,
                "TimeZoneCode": check response?.DocumentServiceProcedureDocumentReference?.DocumentIdentification?.IdentifierEndDate?.TimeZoneCode,
                "DaylightSavingIndicator": check response?.DocumentServiceProcedureDocumentReference?.DocumentIdentification?.IdentifierEndDate?.DaylightSavingIndicator,
                "DateTimeType": check response?.DocumentServiceProcedureDocumentReference?.DocumentIdentification?.IdentifierEndDate?.DateTimeType
            }
        },
        "DocumentVersion": check response?.DocumentServiceProcedureDocumentReference?.DocumentVersion,
        "DocumentType": check response?.DocumentServiceProcedureDocumentReference?.DocumentType,
        "DocumentStatus": {
            "StatusReason": check response?.DocumentServiceProcedureDocumentReference?.DocumentStatus?.StatusReason,
            "StatusDateTime": {
                "DateTimeContent": check response?.DocumentServiceProcedureDocumentReference?.DocumentStatus?.StatusDateTime?.DateTimeContent,
                "TimeZoneCode": check response?.DocumentServiceProcedureDocumentReference?.DocumentStatus?.StatusDateTime?.TimeZoneCode,
                "DaylightSavingIndicator": check response?.DocumentServiceProcedureDocumentReference?.DocumentStatus?.StatusDateTime?.DaylightSavingIndicator,
                "DateTimeType": check response?.DocumentServiceProcedureDocumentReference?.DocumentStatus?.StatusDateTime?.DateTimeType
            },
            "StatusValidityPeriod": {
                "FromDateTime": {
                    "DateTimeContent": check response?.DocumentServiceProcedureDocumentReference?.DocumentStatus?.StatusValidityPeriod?.FromDateTime?.DateTimeContent,
                    "TimeZoneCode": check response?.DocumentServiceProcedureDocumentReference?.DocumentStatus?.StatusValidityPeriod?.FromDateTime?.TimeZoneCode,
                    "DaylightSavingIndicator": check response?.DocumentServiceProcedureDocumentReference?.DocumentStatus?.StatusValidityPeriod?.FromDateTime?.DaylightSavingIndicator,
                    "DateTimeType": check response?.DocumentServiceProcedureDocumentReference?.DocumentStatus?.StatusValidityPeriod?.FromDateTime?.DateTimeType
                },
                "ToDateTime": {
                    "DateTimeContent": check response?.DocumentServiceProcedureDocumentReference?.DocumentStatus?.StatusValidityPeriod?.ToDateTime?.DateTimeContent,
                    "TimeZoneCode": check response?.DocumentServiceProcedureDocumentReference?.DocumentStatus?.StatusValidityPeriod?.ToDateTime?.TimeZoneCode,
                    "DaylightSavingIndicator": check response?.DocumentServiceProcedureDocumentReference?.DocumentStatus?.StatusValidityPeriod?.ToDateTime?.DaylightSavingIndicator,
                    "DateTimeType": check response?.DocumentServiceProcedureDocumentReference?.DocumentStatus?.StatusValidityPeriod?.ToDateTime?.DateTimeType
                }
            },
            "StatusInvolvedPartyReference": {
                "PartyReference": check response?.DocumentServiceProcedureDocumentReference?.DocumentStatus?.StatusInvolvedPartyReference?.PartyReference,
                "InvolvementReference": check response?.DocumentServiceProcedureDocumentReference?.DocumentStatus?.StatusInvolvedPartyReference?.InvolvementReference
            }
        },
        "DocumentDateTime": {
            "DateTimeContent": check response?.DocumentServiceProcedureDocumentReference?.DocumentDateTime?.DateTimeContent,
            "TimeZoneCode": check response?.DocumentServiceProcedureDocumentReference?.DocumentDateTime?.TimeZoneCode,
            "DaylightSavingIndicator": check response?.DocumentServiceProcedureDocumentReference?.DocumentDateTime?.DaylightSavingIndicator,
            "DateTimeType": check response?.DocumentServiceProcedureDocumentReference?.DocumentDateTime?.DateTimeType
        },
        "DocumentName": {
            "Name": check response?.DocumentServiceProcedureDocumentReference?.DocumentName?.Name
        },
        "DocumentDateTimeType": check response?.DocumentServiceProcedureDocumentReference?.DocumentDateTimeType,
        "DocumentPurpose": check response?.DocumentServiceProcedureDocumentReference?.DocumentPurpose,
        "DocumentFormat": check response?.DocumentServiceProcedureDocumentReference?.DocumentFormat,
        "DocumentSubject": check response?.DocumentServiceProcedureDocumentReference?.DocumentSubject,
        "DocumentDescription": check response?.DocumentServiceProcedureDocumentReference?.DocumentDescription,
        "DocumentValidityPeriod": {
            "FromDateTime": {
                "DateTimeContent": check response?.DocumentServiceProcedureDocumentReference?.DocumentValidityPeriod?.FromDateTime?.DateTimeContent,
                "TimeZoneCode": check response?.DocumentServiceProcedureDocumentReference?.DocumentValidityPeriod?.FromDateTime?.TimeZoneCode,
                "DaylightSavingIndicator": check response?.DocumentServiceProcedureDocumentReference?.DocumentValidityPeriod?.FromDateTime?.DaylightSavingIndicator,
                "DateTimeType": check response?.DocumentServiceProcedureDocumentReference?.DocumentValidityPeriod?.FromDateTime?.DateTimeType
            },
            "ToDateTime": {
                "DateTimeContent": check response?.DocumentServiceProcedureDocumentReference?.DocumentValidityPeriod?.ToDateTime?.DateTimeContent,
                "TimeZoneCode": check response?.DocumentServiceProcedureDocumentReference?.DocumentValidityPeriod?.ToDateTime?.TimeZoneCode,
                "DaylightSavingIndicator": check response?.DocumentServiceProcedureDocumentReference?.DocumentValidityPeriod?.ToDateTime?.DaylightSavingIndicator,
                "DateTimeType": check response?.DocumentServiceProcedureDocumentReference?.DocumentValidityPeriod?.ToDateTime?.DateTimeType
            }
        }
    },
    "DocumentServiceProcedureDocumentServiceReference": {
        "DocumentServiceType": check response?.DocumentServiceProcedureDocumentServiceReference?.DocumentServiceType,
        "DocumentServiceSchedule": {
            "ScheduleType": check response?.DocumentServiceProcedureDocumentServiceReference?.DocumentServiceSchedule?.ScheduleType
        },
        "DocumentServiceProvider": {
            "PartyName": {
                "Name": check response?.DocumentServiceProcedureDocumentServiceReference?.DocumentServiceProvider?.PartyName?.Name
            },
            "PartyType": check response?.DocumentServiceProcedureDocumentServiceReference?.DocumentServiceProvider?.PartyType,
            "PartyDateTime": {
                "DateTimeContent": check response?.DocumentServiceProcedureDocumentServiceReference?.DocumentServiceProvider?.PartyDateTime?.DateTimeContent,
                "TimeZoneCode": check response?.DocumentServiceProcedureDocumentServiceReference?.DocumentServiceProvider?.PartyDateTime?.TimeZoneCode,
                "DaylightSavingIndicator": check response?.DocumentServiceProcedureDocumentServiceReference?.DocumentServiceProvider?.PartyDateTime?.DaylightSavingIndicator,
                "DateTimeType": check response?.DocumentServiceProcedureDocumentServiceReference?.DocumentServiceProvider?.PartyDateTime?.DateTimeType
            },
            "PartyIdentification": {
                "PartyIdentificationType": check response?.DocumentServiceProcedureDocumentServiceReference?.DocumentServiceProvider?.PartyIdentification?.PartyIdentificationType,
                "PartyIdentification": {
                    "IdentifierValue": check response?.DocumentServiceProcedureDocumentServiceReference?.DocumentServiceProvider?.PartyIdentification?.PartyIdentification?.IdentifierValue,
                    "IdentifierIssuerReference": {
                        "PartyReference": check response?.DocumentServiceProcedureDocumentServiceReference?.DocumentServiceProvider?.PartyIdentification?.PartyIdentification?.IdentifierIssuerReference?.PartyReference,
                        "InvolvementReference": check response?.DocumentServiceProcedureDocumentServiceReference?.DocumentServiceProvider?.PartyIdentification?.PartyIdentification?.IdentifierIssuerReference?.InvolvementReference
                    },
                    "IdentifierStartDate": {
                        "DateTimeContent": check response?.DocumentServiceProcedureDocumentServiceReference?.DocumentServiceProvider?.PartyIdentification?.PartyIdentification?.IdentifierStartDate?.DateTimeContent,
                        "TimeZoneCode": check response?.DocumentServiceProcedureDocumentServiceReference?.DocumentServiceProvider?.PartyIdentification?.PartyIdentification?.IdentifierStartDate?.TimeZoneCode,
                        "DaylightSavingIndicator": check response?.DocumentServiceProcedureDocumentServiceReference?.DocumentServiceProvider?.PartyIdentification?.PartyIdentification?.IdentifierStartDate?.DaylightSavingIndicator,
                        "DateTimeType": check response?.DocumentServiceProcedureDocumentServiceReference?.DocumentServiceProvider?.PartyIdentification?.PartyIdentification?.IdentifierStartDate?.DateTimeType
                    },
                    "IdentifierEndDate": {
                        "DateTimeContent": check response?.DocumentServiceProcedureDocumentServiceReference?.DocumentServiceProvider?.PartyIdentification?.PartyIdentification?.IdentifierEndDate?.DateTimeContent,
                        "TimeZoneCode": check response?.DocumentServiceProcedureDocumentServiceReference?.DocumentServiceProvider?.PartyIdentification?.PartyIdentification?.IdentifierEndDate?.TimeZoneCode,
                        "DaylightSavingIndicator": check response?.DocumentServiceProcedureDocumentServiceReference?.DocumentServiceProvider?.PartyIdentification?.PartyIdentification?.IdentifierEndDate?.DaylightSavingIndicator,
                        "DateTimeType": check response?.DocumentServiceProcedureDocumentServiceReference?.DocumentServiceProvider?.PartyIdentification?.PartyIdentification?.IdentifierEndDate?.DateTimeType
                    }
                }
            },
            "PartyLegalStructureType": check response?.DocumentServiceProcedureDocumentServiceReference?.DocumentServiceProvider?.PartyLegalStructureType,
            "PartyActivityIndicator": {
                "Industrycode": check response?.DocumentServiceProcedureDocumentServiceReference?.DocumentServiceProvider?.PartyActivityIndicator?.Industrycode
            }
        },
        "DocumentServiceName": {
            "Name": check response?.DocumentServiceProcedureDocumentServiceReference?.DocumentServiceName?.Name
        },
        "DocumentServiceDescription": check response?.DocumentServiceProcedureDocumentServiceReference?.DocumentServiceDescription,
        "DocumentServiceOutcome": check response?.DocumentServiceProcedureDocumentServiceReference?.DocumentServiceOutcome,
        "DocumentServiceRequest": {
            "InstructionDate": {
                "InstructionDate": {
                    "DateTimeContent": check response?.DocumentServiceProcedureDocumentServiceReference?.DocumentServiceRequest?.InstructionDate?.InstructionDate?.DateTimeContent,
                    "TimeZoneCode": check response?.DocumentServiceProcedureDocumentServiceReference?.DocumentServiceRequest?.InstructionDate?.InstructionDate?.TimeZoneCode,
                    "DaylightSavingIndicator": check response?.DocumentServiceProcedureDocumentServiceReference?.DocumentServiceRequest?.InstructionDate?.InstructionDate?.DaylightSavingIndicator,
                    "DateTimeType": check response?.DocumentServiceProcedureDocumentServiceReference?.DocumentServiceRequest?.InstructionDate?.InstructionDate?.DateTimeType
                },
                "InstructionDateType": check response?.DocumentServiceProcedureDocumentServiceReference?.DocumentServiceRequest?.InstructionDate?.InstructionDateType
            },
            "InstructionStatus": {
                "InstructionStatusType": check response?.DocumentServiceProcedureDocumentServiceReference?.DocumentServiceRequest?.InstructionStatus?.InstructionStatusType,
                "InstructionStatus": {
                    "StatusReason": check response?.DocumentServiceProcedureDocumentServiceReference?.DocumentServiceRequest?.InstructionStatus?.InstructionStatus?.StatusReason,
                    "StatusDateTime": {
                        "DateTimeContent": check response?.DocumentServiceProcedureDocumentServiceReference?.DocumentServiceRequest?.InstructionStatus?.InstructionStatus?.StatusDateTime?.DateTimeContent,
                        "TimeZoneCode": check response?.DocumentServiceProcedureDocumentServiceReference?.DocumentServiceRequest?.InstructionStatus?.InstructionStatus?.StatusDateTime?.TimeZoneCode,
                        "DaylightSavingIndicator": check response?.DocumentServiceProcedureDocumentServiceReference?.DocumentServiceRequest?.InstructionStatus?.InstructionStatus?.StatusDateTime?.DaylightSavingIndicator,
                        "DateTimeType": check response?.DocumentServiceProcedureDocumentServiceReference?.DocumentServiceRequest?.InstructionStatus?.InstructionStatus?.StatusDateTime?.DateTimeType
                    },
                    "StatusValidityPeriod": {
                        "FromDateTime": {
                            "DateTimeContent": check response?.DocumentServiceProcedureDocumentServiceReference?.DocumentServiceRequest?.InstructionStatus?.InstructionStatus?.StatusValidityPeriod?.FromDateTime?.DateTimeContent,
                            "TimeZoneCode": check response?.DocumentServiceProcedureDocumentServiceReference?.DocumentServiceRequest?.InstructionStatus?.InstructionStatus?.StatusValidityPeriod?.FromDateTime?.TimeZoneCode,
                            "DaylightSavingIndicator": check response?.DocumentServiceProcedureDocumentServiceReference?.DocumentServiceRequest?.InstructionStatus?.InstructionStatus?.StatusValidityPeriod?.FromDateTime?.DaylightSavingIndicator,
                            "DateTimeType": check response?.DocumentServiceProcedureDocumentServiceReference?.DocumentServiceRequest?.InstructionStatus?.InstructionStatus?.StatusValidityPeriod?.FromDateTime?.DateTimeType
                        },
                        "ToDateTime": {
                            "DateTimeContent": check response?.DocumentServiceProcedureDocumentServiceReference?.DocumentServiceRequest?.InstructionStatus?.InstructionStatus?.StatusValidityPeriod?.ToDateTime?.DateTimeContent,
                            "TimeZoneCode": check response?.DocumentServiceProcedureDocumentServiceReference?.DocumentServiceRequest?.InstructionStatus?.InstructionStatus?.StatusValidityPeriod?.ToDateTime?.TimeZoneCode,
                            "DaylightSavingIndicator": check response?.DocumentServiceProcedureDocumentServiceReference?.DocumentServiceRequest?.InstructionStatus?.InstructionStatus?.StatusValidityPeriod?.ToDateTime?.DaylightSavingIndicator,
                            "DateTimeType": check response?.DocumentServiceProcedureDocumentServiceReference?.DocumentServiceRequest?.InstructionStatus?.InstructionStatus?.StatusValidityPeriod?.ToDateTime?.DateTimeType
                        }
                    },
                    "StatusInvolvedPartyReference": {
                        "PartyReference": check response?.DocumentServiceProcedureDocumentServiceReference?.DocumentServiceRequest?.InstructionStatus?.InstructionStatus?.StatusInvolvedPartyReference?.PartyReference,
                        "InvolvementReference": check response?.DocumentServiceProcedureDocumentServiceReference?.DocumentServiceRequest?.InstructionStatus?.InstructionStatus?.StatusInvolvedPartyReference?.InvolvementReference
                    }
                }
            },
            "InstructionIdentification": {
                "InstructionIdentification": {
                    "IdentifierValue": check response?.DocumentServiceProcedureDocumentServiceReference?.DocumentServiceRequest?.InstructionIdentification?.InstructionIdentification?.IdentifierValue,
                    "IdentifierIssuerReference": {
                        "PartyReference": check response?.DocumentServiceProcedureDocumentServiceReference?.DocumentServiceRequest?.InstructionIdentification?.InstructionIdentification?.IdentifierIssuerReference?.PartyReference,
                        "InvolvementReference": check response?.DocumentServiceProcedureDocumentServiceReference?.DocumentServiceRequest?.InstructionIdentification?.InstructionIdentification?.IdentifierIssuerReference?.InvolvementReference
                    },
                    "IdentifierStartDate": {
                        "DateTimeContent": check response?.DocumentServiceProcedureDocumentServiceReference?.DocumentServiceRequest?.InstructionIdentification?.InstructionIdentification?.IdentifierStartDate?.DateTimeContent,
                        "TimeZoneCode": check response?.DocumentServiceProcedureDocumentServiceReference?.DocumentServiceRequest?.InstructionIdentification?.InstructionIdentification?.IdentifierStartDate?.TimeZoneCode,
                        "DaylightSavingIndicator": check response?.DocumentServiceProcedureDocumentServiceReference?.DocumentServiceRequest?.InstructionIdentification?.InstructionIdentification?.IdentifierStartDate?.DaylightSavingIndicator,
                        "DateTimeType": check response?.DocumentServiceProcedureDocumentServiceReference?.DocumentServiceRequest?.InstructionIdentification?.InstructionIdentification?.IdentifierStartDate?.DateTimeType
                    },
                    "IdentifierEndDate": {
                        "DateTimeContent": check response?.DocumentServiceProcedureDocumentServiceReference?.DocumentServiceRequest?.InstructionIdentification?.InstructionIdentification?.IdentifierEndDate?.DateTimeContent,
                        "TimeZoneCode": check response?.DocumentServiceProcedureDocumentServiceReference?.DocumentServiceRequest?.InstructionIdentification?.InstructionIdentification?.IdentifierEndDate?.TimeZoneCode,
                        "DaylightSavingIndicator": check response?.DocumentServiceProcedureDocumentServiceReference?.DocumentServiceRequest?.InstructionIdentification?.InstructionIdentification?.IdentifierEndDate?.DaylightSavingIndicator,
                        "DateTimeType": check response?.DocumentServiceProcedureDocumentServiceReference?.DocumentServiceRequest?.InstructionIdentification?.InstructionIdentification?.IdentifierEndDate?.DateTimeType
                    }
                },
                "InstructionIdentificationType": check response?.DocumentServiceProcedureDocumentServiceReference?.DocumentServiceRequest?.InstructionIdentification?.InstructionIdentificationType
            },
            "InstructionType": check response?.DocumentServiceProcedureDocumentServiceReference?.DocumentServiceRequest?.InstructionType,
            "InstructionResult": check response?.DocumentServiceProcedureDocumentServiceReference?.DocumentServiceRequest?.InstructionResult,
            "InstructionDescription": check response?.DocumentServiceProcedureDocumentServiceReference?.DocumentServiceRequest?.InstructionDescription,
            "InstructionLog": {
                "LogType": check response?.DocumentServiceProcedureDocumentServiceReference?.DocumentServiceRequest?.InstructionLog?.LogType,
                "LogPeriod": {
                    "FromDateTime": {
                        "DateTimeContent": check response?.DocumentServiceProcedureDocumentServiceReference?.DocumentServiceRequest?.InstructionLog?.LogPeriod?.FromDateTime?.DateTimeContent,
                        "TimeZoneCode": check response?.DocumentServiceProcedureDocumentServiceReference?.DocumentServiceRequest?.InstructionLog?.LogPeriod?.FromDateTime?.TimeZoneCode,
                        "DaylightSavingIndicator": check response?.DocumentServiceProcedureDocumentServiceReference?.DocumentServiceRequest?.InstructionLog?.LogPeriod?.FromDateTime?.DaylightSavingIndicator,
                        "DateTimeType": check response?.DocumentServiceProcedureDocumentServiceReference?.DocumentServiceRequest?.InstructionLog?.LogPeriod?.FromDateTime?.DateTimeType
                    },
                    "ToDateTime": {
                        "DateTimeContent": check response?.DocumentServiceProcedureDocumentServiceReference?.DocumentServiceRequest?.InstructionLog?.LogPeriod?.ToDateTime?.DateTimeContent,
                        "TimeZoneCode": check response?.DocumentServiceProcedureDocumentServiceReference?.DocumentServiceRequest?.InstructionLog?.LogPeriod?.ToDateTime?.TimeZoneCode,
                        "DaylightSavingIndicator": check response?.DocumentServiceProcedureDocumentServiceReference?.DocumentServiceRequest?.InstructionLog?.LogPeriod?.ToDateTime?.DaylightSavingIndicator,
                        "DateTimeType": check response?.DocumentServiceProcedureDocumentServiceReference?.DocumentServiceRequest?.InstructionLog?.LogPeriod?.ToDateTime?.DateTimeType
                    }
                },
                "LogDate": {
                    "DateTimeContent": check response?.DocumentServiceProcedureDocumentServiceReference?.DocumentServiceRequest?.InstructionLog?.LogDate?.DateTimeContent,
                    "TimeZoneCode": check response?.DocumentServiceProcedureDocumentServiceReference?.DocumentServiceRequest?.InstructionLog?.LogDate?.TimeZoneCode,
                    "DaylightSavingIndicator": check response?.DocumentServiceProcedureDocumentServiceReference?.DocumentServiceRequest?.InstructionLog?.LogDate?.DaylightSavingIndicator,
                    "DateTimeType": check response?.DocumentServiceProcedureDocumentServiceReference?.DocumentServiceRequest?.InstructionLog?.LogDate?.DateTimeType
                },
                "LogIdentification": {
                    "IdentifierValue": check response?.DocumentServiceProcedureDocumentServiceReference?.DocumentServiceRequest?.InstructionLog?.LogIdentification?.IdentifierValue,
                    "IdentifierIssuerReference": {
                        "PartyReference": check response?.DocumentServiceProcedureDocumentServiceReference?.DocumentServiceRequest?.InstructionLog?.LogIdentification?.IdentifierIssuerReference?.PartyReference,
                        "InvolvementReference": check response?.DocumentServiceProcedureDocumentServiceReference?.DocumentServiceRequest?.InstructionLog?.LogIdentification?.IdentifierIssuerReference?.InvolvementReference
                    },
                    "IdentifierStartDate": {
                        "DateTimeContent": check response?.DocumentServiceProcedureDocumentServiceReference?.DocumentServiceRequest?.InstructionLog?.LogIdentification?.IdentifierStartDate?.DateTimeContent,
                        "TimeZoneCode": check response?.DocumentServiceProcedureDocumentServiceReference?.DocumentServiceRequest?.InstructionLog?.LogIdentification?.IdentifierStartDate?.TimeZoneCode,
                        "DaylightSavingIndicator": check response?.DocumentServiceProcedureDocumentServiceReference?.DocumentServiceRequest?.InstructionLog?.LogIdentification?.IdentifierStartDate?.DaylightSavingIndicator,
                        "DateTimeType": check response?.DocumentServiceProcedureDocumentServiceReference?.DocumentServiceRequest?.InstructionLog?.LogIdentification?.IdentifierStartDate?.DateTimeType
                    },
                    "IdentifierEndDate": {
                        "DateTimeContent": check response?.DocumentServiceProcedureDocumentServiceReference?.DocumentServiceRequest?.InstructionLog?.LogIdentification?.IdentifierEndDate?.DateTimeContent,
                        "TimeZoneCode": check response?.DocumentServiceProcedureDocumentServiceReference?.DocumentServiceRequest?.InstructionLog?.LogIdentification?.IdentifierEndDate?.TimeZoneCode,
                        "DaylightSavingIndicator": check response?.DocumentServiceProcedureDocumentServiceReference?.DocumentServiceRequest?.InstructionLog?.LogIdentification?.IdentifierEndDate?.DaylightSavingIndicator,
                        "DateTimeType": check response?.DocumentServiceProcedureDocumentServiceReference?.DocumentServiceRequest?.InstructionLog?.LogIdentification?.IdentifierEndDate?.DateTimeType
                    }
                }
            },
            "InstructionPurpose": check response?.DocumentServiceProcedureDocumentServiceReference?.DocumentServiceRequest?.InstructionPurpose
        },
        "DocumentServiceFunction": {
            "Function": check response?.DocumentServiceProcedureDocumentServiceReference?.DocumentServiceFunction?.Function
        }
    },
    "DocumentServiceProcedureDocumentInvolvedPartyReference": {
        "DocumentInvolvementType": check response?.DocumentServiceProcedureDocumentInvolvedPartyReference?.DocumentInvolvementType,
        "DocumentReference": {
            "DocumentIdentification": {
                "IdentifierValue": check response?.DocumentServiceProcedureDocumentInvolvedPartyReference?.DocumentReference?.DocumentIdentification?.IdentifierValue,
                "IdentifierIssuerReference": {
                    "PartyReference": check response?.DocumentServiceProcedureDocumentInvolvedPartyReference?.DocumentReference?.DocumentIdentification?.IdentifierIssuerReference?.PartyReference,
                    "InvolvementReference": check response?.DocumentServiceProcedureDocumentInvolvedPartyReference?.DocumentReference?.DocumentIdentification?.IdentifierIssuerReference?.InvolvementReference
                },
                "IdentifierStartDate": {
                    "DateTimeContent": check response?.DocumentServiceProcedureDocumentInvolvedPartyReference?.DocumentReference?.DocumentIdentification?.IdentifierStartDate?.DateTimeContent,
                    "TimeZoneCode": check response?.DocumentServiceProcedureDocumentInvolvedPartyReference?.DocumentReference?.DocumentIdentification?.IdentifierStartDate?.TimeZoneCode,
                    "DaylightSavingIndicator": check response?.DocumentServiceProcedureDocumentInvolvedPartyReference?.DocumentReference?.DocumentIdentification?.IdentifierStartDate?.DaylightSavingIndicator,
                    "DateTimeType": check response?.DocumentServiceProcedureDocumentInvolvedPartyReference?.DocumentReference?.DocumentIdentification?.IdentifierStartDate?.DateTimeType
                },
                "IdentifierEndDate": {
                    "DateTimeContent": check response?.DocumentServiceProcedureDocumentInvolvedPartyReference?.DocumentReference?.DocumentIdentification?.IdentifierEndDate?.DateTimeContent,
                    "TimeZoneCode": check response?.DocumentServiceProcedureDocumentInvolvedPartyReference?.DocumentReference?.DocumentIdentification?.IdentifierEndDate?.TimeZoneCode,
                    "DaylightSavingIndicator": check response?.DocumentServiceProcedureDocumentInvolvedPartyReference?.DocumentReference?.DocumentIdentification?.IdentifierEndDate?.DaylightSavingIndicator,
                    "DateTimeType": check response?.DocumentServiceProcedureDocumentInvolvedPartyReference?.DocumentReference?.DocumentIdentification?.IdentifierEndDate?.DateTimeType
                }
            },
            "DocumentVersion": check response?.DocumentServiceProcedureDocumentInvolvedPartyReference?.DocumentReference?.DocumentVersion,
            "DocumentType": check response?.DocumentServiceProcedureDocumentInvolvedPartyReference?.DocumentReference?.DocumentType,
            "DocumentStatus": {
                "StatusReason": check response?.DocumentServiceProcedureDocumentInvolvedPartyReference?.DocumentReference?.DocumentStatus?.StatusReason,
                "StatusDateTime": {
                    "DateTimeContent": check response?.DocumentServiceProcedureDocumentInvolvedPartyReference?.DocumentReference?.DocumentStatus?.StatusDateTime?.DateTimeContent,
                    "TimeZoneCode": check response?.DocumentServiceProcedureDocumentInvolvedPartyReference?.DocumentReference?.DocumentStatus?.StatusDateTime?.TimeZoneCode,
                    "DaylightSavingIndicator": check response?.DocumentServiceProcedureDocumentInvolvedPartyReference?.DocumentReference?.DocumentStatus?.StatusDateTime?.DaylightSavingIndicator,
                    "DateTimeType": check response?.DocumentServiceProcedureDocumentInvolvedPartyReference?.DocumentReference?.DocumentStatus?.StatusDateTime?.DateTimeType
                },
                "StatusValidityPeriod": {
                    "FromDateTime": {
                        "DateTimeContent": check response?.DocumentServiceProcedureDocumentInvolvedPartyReference?.DocumentReference?.DocumentStatus?.StatusValidityPeriod?.FromDateTime?.DateTimeContent,
                        "TimeZoneCode": check response?.DocumentServiceProcedureDocumentInvolvedPartyReference?.DocumentReference?.DocumentStatus?.StatusValidityPeriod?.FromDateTime?.TimeZoneCode,
                        "DaylightSavingIndicator": check response?.DocumentServiceProcedureDocumentInvolvedPartyReference?.DocumentReference?.DocumentStatus?.StatusValidityPeriod?.FromDateTime?.DaylightSavingIndicator,
                        "DateTimeType": check response?.DocumentServiceProcedureDocumentInvolvedPartyReference?.DocumentReference?.DocumentStatus?.StatusValidityPeriod?.FromDateTime?.DateTimeType
                    },
                    "ToDateTime": {
                        "DateTimeContent": check response?.DocumentServiceProcedureDocumentInvolvedPartyReference?.DocumentReference?.DocumentStatus?.StatusValidityPeriod?.ToDateTime?.DateTimeContent,
                        "TimeZoneCode": check response?.DocumentServiceProcedureDocumentInvolvedPartyReference?.DocumentReference?.DocumentStatus?.StatusValidityPeriod?.ToDateTime?.TimeZoneCode,
                        "DaylightSavingIndicator": check response?.DocumentServiceProcedureDocumentInvolvedPartyReference?.DocumentReference?.DocumentStatus?.StatusValidityPeriod?.ToDateTime?.DaylightSavingIndicator,
                        "DateTimeType": check response?.DocumentServiceProcedureDocumentInvolvedPartyReference?.DocumentReference?.DocumentStatus?.StatusValidityPeriod?.ToDateTime?.DateTimeType
                    }
                },
                "StatusInvolvedPartyReference": {
                    "PartyReference": check response?.DocumentServiceProcedureDocumentInvolvedPartyReference?.DocumentReference?.DocumentStatus?.StatusInvolvedPartyReference?.PartyReference,
                    "InvolvementReference": check response?.DocumentServiceProcedureDocumentInvolvedPartyReference?.DocumentReference?.DocumentStatus?.StatusInvolvedPartyReference?.InvolvementReference
                }
            },
            "DocumentDateTime": {
                "DateTimeContent": check response?.DocumentServiceProcedureDocumentInvolvedPartyReference?.DocumentReference?.DocumentDateTime?.DateTimeContent,
                "TimeZoneCode": check response?.DocumentServiceProcedureDocumentInvolvedPartyReference?.DocumentReference?.DocumentDateTime?.TimeZoneCode,
                "DaylightSavingIndicator": check response?.DocumentServiceProcedureDocumentInvolvedPartyReference?.DocumentReference?.DocumentDateTime?.DaylightSavingIndicator,
                "DateTimeType": check response?.DocumentServiceProcedureDocumentInvolvedPartyReference?.DocumentReference?.DocumentDateTime?.DateTimeType
            },
            "DocumentName": {
                "Name": check response?.DocumentServiceProcedureDocumentInvolvedPartyReference?.DocumentReference?.DocumentName?.Name
            },
            "DocumentDateTimeType": check response?.DocumentServiceProcedureDocumentInvolvedPartyReference?.DocumentReference?.DocumentDateTimeType,
            "DocumentPurpose": check response?.DocumentServiceProcedureDocumentInvolvedPartyReference?.DocumentReference?.DocumentPurpose,
            "DocumentFormat": check response?.DocumentServiceProcedureDocumentInvolvedPartyReference?.DocumentReference?.DocumentFormat,
            "DocumentSubject": check response?.DocumentServiceProcedureDocumentInvolvedPartyReference?.DocumentReference?.DocumentSubject,
            "DocumentDescription": check response?.DocumentServiceProcedureDocumentInvolvedPartyReference?.DocumentReference?.DocumentDescription,
            "DocumentValidityPeriod": {
                "FromDateTime": {
                    "DateTimeContent": check response?.DocumentServiceProcedureDocumentInvolvedPartyReference?.DocumentReference?.DocumentValidityPeriod?.FromDateTime?.DateTimeContent,
                    "TimeZoneCode": check response?.DocumentServiceProcedureDocumentInvolvedPartyReference?.DocumentReference?.DocumentValidityPeriod?.FromDateTime?.TimeZoneCode,
                    "DaylightSavingIndicator": check response?.DocumentServiceProcedureDocumentInvolvedPartyReference?.DocumentReference?.DocumentValidityPeriod?.FromDateTime?.DaylightSavingIndicator,
                    "DateTimeType": check response?.DocumentServiceProcedureDocumentInvolvedPartyReference?.DocumentReference?.DocumentValidityPeriod?.FromDateTime?.DateTimeType
                },
                "ToDateTime": {
                    "DateTimeContent": check response?.DocumentServiceProcedureDocumentInvolvedPartyReference?.DocumentReference?.DocumentValidityPeriod?.ToDateTime?.DateTimeContent,
                    "TimeZoneCode": check response?.DocumentServiceProcedureDocumentInvolvedPartyReference?.DocumentReference?.DocumentValidityPeriod?.ToDateTime?.TimeZoneCode,
                    "DaylightSavingIndicator": check response?.DocumentServiceProcedureDocumentInvolvedPartyReference?.DocumentReference?.DocumentValidityPeriod?.ToDateTime?.DaylightSavingIndicator,
                    "DateTimeType": check response?.DocumentServiceProcedureDocumentInvolvedPartyReference?.DocumentReference?.DocumentValidityPeriod?.ToDateTime?.DateTimeType
                }
            }
        },
        "PartyReference": {
            "PartyName": {
                "Name": check response?.DocumentServiceProcedureDocumentInvolvedPartyReference?.PartyReference?.PartyName?.Name
            },
            "PartyType": check response?.DocumentServiceProcedureDocumentInvolvedPartyReference?.PartyReference?.PartyType,
            "PartyDateTime": {
                "DateTimeContent": check response?.DocumentServiceProcedureDocumentInvolvedPartyReference?.PartyReference?.PartyDateTime?.DateTimeContent,
                "TimeZoneCode": check response?.DocumentServiceProcedureDocumentInvolvedPartyReference?.PartyReference?.PartyDateTime?.TimeZoneCode,
                "DaylightSavingIndicator": check response?.DocumentServiceProcedureDocumentInvolvedPartyReference?.PartyReference?.PartyDateTime?.DaylightSavingIndicator,
                "DateTimeType": check response?.DocumentServiceProcedureDocumentInvolvedPartyReference?.PartyReference?.PartyDateTime?.DateTimeType
            },
            "PartyIdentification": {
                "PartyIdentificationType": check response?.DocumentServiceProcedureDocumentInvolvedPartyReference?.PartyReference?.PartyIdentification?.PartyIdentificationType,
                "PartyIdentification": {
                    "IdentifierValue": check response?.DocumentServiceProcedureDocumentInvolvedPartyReference?.PartyReference?.PartyIdentification?.PartyIdentification?.IdentifierValue,
                    "IdentifierIssuerReference": {
                        "PartyReference": check response?.DocumentServiceProcedureDocumentInvolvedPartyReference?.PartyReference?.PartyIdentification?.PartyIdentification?.IdentifierIssuerReference?.PartyReference,
                        "InvolvementReference": check response?.DocumentServiceProcedureDocumentInvolvedPartyReference?.PartyReference?.PartyIdentification?.PartyIdentification?.IdentifierIssuerReference?.InvolvementReference
                    },
                    "IdentifierStartDate": {
                        "DateTimeContent": check response?.DocumentServiceProcedureDocumentInvolvedPartyReference?.PartyReference?.PartyIdentification?.PartyIdentification?.IdentifierStartDate?.DateTimeContent,
                        "TimeZoneCode": check response?.DocumentServiceProcedureDocumentInvolvedPartyReference?.PartyReference?.PartyIdentification?.PartyIdentification?.IdentifierStartDate?.TimeZoneCode,
                        "DaylightSavingIndicator": check response?.DocumentServiceProcedureDocumentInvolvedPartyReference?.PartyReference?.PartyIdentification?.PartyIdentification?.IdentifierStartDate?.DaylightSavingIndicator,
                        "DateTimeType": check response?.DocumentServiceProcedureDocumentInvolvedPartyReference?.PartyReference?.PartyIdentification?.PartyIdentification?.IdentifierStartDate?.DateTimeType
                    },
                    "IdentifierEndDate": {
                        "DateTimeContent": check response?.DocumentServiceProcedureDocumentInvolvedPartyReference?.PartyReference?.PartyIdentification?.PartyIdentification?.IdentifierEndDate?.DateTimeContent,
                        "TimeZoneCode": check response?.DocumentServiceProcedureDocumentInvolvedPartyReference?.PartyReference?.PartyIdentification?.PartyIdentification?.IdentifierEndDate?.TimeZoneCode,
                        "DaylightSavingIndicator": check response?.DocumentServiceProcedureDocumentInvolvedPartyReference?.PartyReference?.PartyIdentification?.PartyIdentification?.IdentifierEndDate?.DaylightSavingIndicator,
                        "DateTimeType": check response?.DocumentServiceProcedureDocumentInvolvedPartyReference?.PartyReference?.PartyIdentification?.PartyIdentification?.IdentifierEndDate?.DateTimeType
                    }
                }
            },
            "PartyLegalStructureType": check response?.DocumentServiceProcedureDocumentInvolvedPartyReference?.PartyReference?.PartyLegalStructureType,
            "PartyActivityIndicator": {
                "Industrycode": check response?.DocumentServiceProcedureDocumentInvolvedPartyReference?.PartyReference?.PartyActivityIndicator?.Industrycode
            }
        },
        "PartyRoleType": check response?.DocumentServiceProcedureDocumentInvolvedPartyReference?.PartyRoleType,
        "PartyRoleName": {
            "Name": check response?.DocumentServiceProcedureDocumentInvolvedPartyReference?.PartyRoleName?.Name
        },
        "PartyRoleValidityPeriod": {
            "FromDateTime": {
                "DateTimeContent": check response?.DocumentServiceProcedureDocumentInvolvedPartyReference?.PartyRoleValidityPeriod?.FromDateTime?.DateTimeContent,
                "TimeZoneCode": check response?.DocumentServiceProcedureDocumentInvolvedPartyReference?.PartyRoleValidityPeriod?.FromDateTime?.TimeZoneCode,
                "DaylightSavingIndicator": check response?.DocumentServiceProcedureDocumentInvolvedPartyReference?.PartyRoleValidityPeriod?.FromDateTime?.DaylightSavingIndicator,
                "DateTimeType": check response?.DocumentServiceProcedureDocumentInvolvedPartyReference?.PartyRoleValidityPeriod?.FromDateTime?.DateTimeType
            },
            "ToDateTime": {
                "DateTimeContent": check response?.DocumentServiceProcedureDocumentInvolvedPartyReference?.PartyRoleValidityPeriod?.ToDateTime?.DateTimeContent,
                "TimeZoneCode": check response?.DocumentServiceProcedureDocumentInvolvedPartyReference?.PartyRoleValidityPeriod?.ToDateTime?.TimeZoneCode,
                "DaylightSavingIndicator": check response?.DocumentServiceProcedureDocumentInvolvedPartyReference?.PartyRoleValidityPeriod?.ToDateTime?.DaylightSavingIndicator,
                "DateTimeType": check response?.DocumentServiceProcedureDocumentInvolvedPartyReference?.PartyRoleValidityPeriod?.ToDateTime?.DateTimeType
            }
        },
        "PartyInvolvementType": check response?.DocumentServiceProcedureDocumentInvolvedPartyReference?.PartyInvolvementType
    }
};
