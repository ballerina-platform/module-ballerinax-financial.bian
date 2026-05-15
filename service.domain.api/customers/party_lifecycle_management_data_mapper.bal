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

import ballerinax/financial.bian.attribute.groups.customers as customers;

isolated function transformPartyRelationshipPlan(json response) returns customers:PartyRelationshipAdministrativePlan|error => {
    "CustomerReference": {
        "PartyReference": check response?.CustomerReference?.PartyReference,
        "InvolvementReference": check response?.CustomerReference?.InvolvementReference
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
    "PartyRelationshipType": check response?.PartyRelationshipType,
    // "PartyLife-cycleMaintenanceSchedule": {
    //     "ScheduleType": check response?.PartyLife\-cycleMaintenanceSchedule?.ScheduleType
    // },
    // "PartyLife-cycleMaintenanceTask": {
    //     "Task": check response?.PartyLife\-cycleMaintenanceTask?.Task
    // },
    // "PartyLife-cycleMaintenanceTaskType": check response?.PartyLife\-cycleMaintenanceTaskType,
    // "PartyLife-cycleMaintenanceWorkProducts": {
    //     "WorkProductType": check response?.PartyLife\-cycleMaintenanceWorkProducts?.WorkProductType,
    //     "WorkProductIdentifoication": {
    //         "IdentifierValue": check response?.PartyLife\-cycleMaintenanceWorkProducts?.WorkProductIdentifoication?.IdentifierValue,
    //         "IdentifierIssuerReference": {
    //             "PartyReference": check response?.PartyLife\-cycleMaintenanceWorkProducts?.WorkProductIdentifoication?.IdentifierIssuerReference?.PartyReference,
    //             "InvolvementReference": check response?.PartyLife\-cycleMaintenanceWorkProducts?.WorkProductIdentifoication?.IdentifierIssuerReference?.InvolvementReference
    //         },
    //         "IdentifierStartDate": {
    //             "DateTimeContent": check response?.PartyLife\-cycleMaintenanceWorkProducts?.WorkProductIdentifoication?.IdentifierStartDate?.DateTimeContent,
    //             "TimeZoneCode": check response?.PartyLife\-cycleMaintenanceWorkProducts?.WorkProductIdentifoication?.IdentifierStartDate?.TimeZoneCode,
    //             "DaylightSavingIndicator": check response?.PartyLife\-cycleMaintenanceWorkProducts?.WorkProductIdentifoication?.IdentifierStartDate?.DaylightSavingIndicator,
    //             "DateTimeType": check response?.PartyLife\-cycleMaintenanceWorkProducts?.WorkProductIdentifoication?.IdentifierStartDate?.DateTimeType
    //         },
    //         "IdentifierEndDate": {
    //             "DateTimeContent": check response?.PartyLife\-cycleMaintenanceWorkProducts?.WorkProductIdentifoication?.IdentifierEndDate?.DateTimeContent,
    //             "TimeZoneCode": check response?.PartyLife\-cycleMaintenanceWorkProducts?.WorkProductIdentifoication?.IdentifierEndDate?.TimeZoneCode,
    //             "DaylightSavingIndicator": check response?.PartyLife\-cycleMaintenanceWorkProducts?.WorkProductIdentifoication?.IdentifierEndDate?.DaylightSavingIndicator,
    //             "DateTimeType": check response?.PartyLife\-cycleMaintenanceWorkProducts?.WorkProductIdentifoication?.IdentifierEndDate?.DateTimeType
    //         }
    //     }
    // },
    // "PartyLife-cycleMaintenanceTaskResult": check response?.PartyLife\-cycleMaintenanceTaskResult,
    "CustomerPrecedentProfileUpdateLog": {
        "LogType": check response?.CustomerPrecedentProfileUpdateLog?.LogType,
        "LogPeriod": {
            "FromDateTime": {
                "DateTimeContent": check response?.CustomerPrecedentProfileUpdateLog?.LogPeriod?.FromDateTime?.DateTimeContent,
                "TimeZoneCode": check response?.CustomerPrecedentProfileUpdateLog?.LogPeriod?.FromDateTime?.TimeZoneCode,
                "DaylightSavingIndicator": check response?.CustomerPrecedentProfileUpdateLog?.LogPeriod?.FromDateTime?.DaylightSavingIndicator,
                "DateTimeType": check response?.CustomerPrecedentProfileUpdateLog?.LogPeriod?.FromDateTime?.DateTimeType
            },
            "ToDateTime": {
                "DateTimeContent": check response?.CustomerPrecedentProfileUpdateLog?.LogPeriod?.ToDateTime?.DateTimeContent,
                "TimeZoneCode": check response?.CustomerPrecedentProfileUpdateLog?.LogPeriod?.ToDateTime?.TimeZoneCode,
                "DaylightSavingIndicator": check response?.CustomerPrecedentProfileUpdateLog?.LogPeriod?.ToDateTime?.DaylightSavingIndicator,
                "DateTimeType": check response?.CustomerPrecedentProfileUpdateLog?.LogPeriod?.ToDateTime?.DateTimeType
            }
        },
        "LogDate": {
            "DateTimeContent": check response?.CustomerPrecedentProfileUpdateLog?.LogDate?.DateTimeContent,
            "TimeZoneCode": check response?.CustomerPrecedentProfileUpdateLog?.LogDate?.TimeZoneCode,
            "DaylightSavingIndicator": check response?.CustomerPrecedentProfileUpdateLog?.LogDate?.DaylightSavingIndicator,
            "DateTimeType": check response?.CustomerPrecedentProfileUpdateLog?.LogDate?.DateTimeType
        },
        "LogIdentification": {
            "IdentifierValue": check response?.CustomerPrecedentProfileUpdateLog?.LogIdentification?.IdentifierValue,
            "IdentifierIssuerReference": {
                "PartyReference": check response?.CustomerPrecedentProfileUpdateLog?.LogIdentification?.IdentifierIssuerReference?.PartyReference,
                "InvolvementReference": check response?.CustomerPrecedentProfileUpdateLog?.LogIdentification?.IdentifierIssuerReference?.InvolvementReference
            },
            "IdentifierStartDate": {
                "DateTimeContent": check response?.CustomerPrecedentProfileUpdateLog?.LogIdentification?.IdentifierStartDate?.DateTimeContent,
                "TimeZoneCode": check response?.CustomerPrecedentProfileUpdateLog?.LogIdentification?.IdentifierStartDate?.TimeZoneCode,
                "DaylightSavingIndicator": check response?.CustomerPrecedentProfileUpdateLog?.LogIdentification?.IdentifierStartDate?.DaylightSavingIndicator,
                "DateTimeType": check response?.CustomerPrecedentProfileUpdateLog?.LogIdentification?.IdentifierStartDate?.DateTimeType
            },
            "IdentifierEndDate": {
                "DateTimeContent": check response?.CustomerPrecedentProfileUpdateLog?.LogIdentification?.IdentifierEndDate?.DateTimeContent,
                "TimeZoneCode": check response?.CustomerPrecedentProfileUpdateLog?.LogIdentification?.IdentifierEndDate?.TimeZoneCode,
                "DaylightSavingIndicator": check response?.CustomerPrecedentProfileUpdateLog?.LogIdentification?.IdentifierEndDate?.DaylightSavingIndicator,
                "DateTimeType": check response?.CustomerPrecedentProfileUpdateLog?.LogIdentification?.IdentifierEndDate?.DateTimeType
            }
        }
    },
    "PartyRelationshipLifecycleStatus": {
        "StatusReason": check response?.PartyRelationshipLifecycleStatus?.StatusReason,
        "StatusDateTime": {
            "DateTimeContent": check response?.PartyRelationshipLifecycleStatus?.StatusDateTime?.DateTimeContent,
            "TimeZoneCode": check response?.PartyRelationshipLifecycleStatus?.StatusDateTime?.TimeZoneCode,
            "DaylightSavingIndicator": check response?.PartyRelationshipLifecycleStatus?.StatusDateTime?.DaylightSavingIndicator,
            "DateTimeType": check response?.PartyRelationshipLifecycleStatus?.StatusDateTime?.DateTimeType
        },
        "StatusValidityPeriod": {
            "FromDateTime": {
                "DateTimeContent": check response?.PartyRelationshipLifecycleStatus?.StatusValidityPeriod?.FromDateTime?.DateTimeContent,
                "TimeZoneCode": check response?.PartyRelationshipLifecycleStatus?.StatusValidityPeriod?.FromDateTime?.TimeZoneCode,
                "DaylightSavingIndicator": check response?.PartyRelationshipLifecycleStatus?.StatusValidityPeriod?.FromDateTime?.DaylightSavingIndicator,
                "DateTimeType": check response?.PartyRelationshipLifecycleStatus?.StatusValidityPeriod?.FromDateTime?.DateTimeType
            },
            "ToDateTime": {
                "DateTimeContent": check response?.PartyRelationshipLifecycleStatus?.StatusValidityPeriod?.ToDateTime?.DateTimeContent,
                "TimeZoneCode": check response?.PartyRelationshipLifecycleStatus?.StatusValidityPeriod?.ToDateTime?.TimeZoneCode,
                "DaylightSavingIndicator": check response?.PartyRelationshipLifecycleStatus?.StatusValidityPeriod?.ToDateTime?.DaylightSavingIndicator,
                "DateTimeType": check response?.PartyRelationshipLifecycleStatus?.StatusValidityPeriod?.ToDateTime?.DateTimeType
            }
        },
        "StatusInvolvedPartyReference": {
            "PartyReference": check response?.PartyRelationshipLifecycleStatus?.StatusInvolvedPartyReference?.PartyReference,
            "InvolvementReference": check response?.PartyRelationshipLifecycleStatus?.StatusInvolvedPartyReference?.InvolvementReference
        }
    },
    "PartyRelationshipLifecyclePhase": {
        "Description": check response?.PartyRelationshipLifecyclePhase?.Description,
        "IsCurrentPhase": check response?.PartyRelationshipLifecyclePhase?.IsCurrentPhase,
        "PhaseName": {
            "Name": check response?.PartyRelationshipLifecyclePhase?.PhaseName?.Name
        },
        "PhaseStatus": {
            "StatusReason": check response?.PartyRelationshipLifecyclePhase?.PhaseStatus?.StatusReason,
            "StatusDateTime": {
                "DateTimeContent": check response?.PartyRelationshipLifecyclePhase?.PhaseStatus?.StatusDateTime?.DateTimeContent,
                "TimeZoneCode": check response?.PartyRelationshipLifecyclePhase?.PhaseStatus?.StatusDateTime?.TimeZoneCode,
                "DaylightSavingIndicator": check response?.PartyRelationshipLifecyclePhase?.PhaseStatus?.StatusDateTime?.DaylightSavingIndicator,
                "DateTimeType": check response?.PartyRelationshipLifecyclePhase?.PhaseStatus?.StatusDateTime?.DateTimeType
            },
            "StatusValidityPeriod": {
                "FromDateTime": {
                    "DateTimeContent": check response?.PartyRelationshipLifecyclePhase?.PhaseStatus?.StatusValidityPeriod?.FromDateTime?.DateTimeContent,
                    "TimeZoneCode": check response?.PartyRelationshipLifecyclePhase?.PhaseStatus?.StatusValidityPeriod?.FromDateTime?.TimeZoneCode,
                    "DaylightSavingIndicator": check response?.PartyRelationshipLifecyclePhase?.PhaseStatus?.StatusValidityPeriod?.FromDateTime?.DaylightSavingIndicator,
                    "DateTimeType": check response?.PartyRelationshipLifecyclePhase?.PhaseStatus?.StatusValidityPeriod?.FromDateTime?.DateTimeType
                },
                "ToDateTime": {
                    "DateTimeContent": check response?.PartyRelationshipLifecyclePhase?.PhaseStatus?.StatusValidityPeriod?.ToDateTime?.DateTimeContent,
                    "TimeZoneCode": check response?.PartyRelationshipLifecyclePhase?.PhaseStatus?.StatusValidityPeriod?.ToDateTime?.TimeZoneCode,
                    "DaylightSavingIndicator": check response?.PartyRelationshipLifecyclePhase?.PhaseStatus?.StatusValidityPeriod?.ToDateTime?.DaylightSavingIndicator,
                    "DateTimeType": check response?.PartyRelationshipLifecyclePhase?.PhaseStatus?.StatusValidityPeriod?.ToDateTime?.DateTimeType
                }
            },
            "StatusInvolvedPartyReference": {
                "PartyReference": check response?.PartyRelationshipLifecyclePhase?.PhaseStatus?.StatusInvolvedPartyReference?.PartyReference,
                "InvolvementReference": check response?.PartyRelationshipLifecyclePhase?.PhaseStatus?.StatusInvolvedPartyReference?.InvolvementReference
            }
        },
        "PhasePeriod": {
            "FromDateTime": {
                "DateTimeContent": check response?.PartyRelationshipLifecyclePhase?.PhasePeriod?.FromDateTime?.DateTimeContent,
                "TimeZoneCode": check response?.PartyRelationshipLifecyclePhase?.PhasePeriod?.FromDateTime?.TimeZoneCode,
                "DaylightSavingIndicator": check response?.PartyRelationshipLifecyclePhase?.PhasePeriod?.FromDateTime?.DaylightSavingIndicator,
                "DateTimeType": check response?.PartyRelationshipLifecyclePhase?.PhasePeriod?.FromDateTime?.DateTimeType
            },
            "ToDateTime": {
                "DateTimeContent": check response?.PartyRelationshipLifecyclePhase?.PhasePeriod?.ToDateTime?.DateTimeContent,
                "TimeZoneCode": check response?.PartyRelationshipLifecyclePhase?.PhasePeriod?.ToDateTime?.TimeZoneCode,
                "DaylightSavingIndicator": check response?.PartyRelationshipLifecyclePhase?.PhasePeriod?.ToDateTime?.DaylightSavingIndicator,
                "DateTimeType": check response?.PartyRelationshipLifecyclePhase?.PhasePeriod?.ToDateTime?.DateTimeType
            }
        }
    }
};

isolated function transformPartyRelationshipPlanUpdate(json response) returns customers:PartyRelationshipAdministrativePlan|error => {
    "CustomerReference": {
        "PartyReference": check response?.CustomerReference?.PartyReference,
        "InvolvementReference": check response?.CustomerReference?.InvolvementReference
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
    "PartyRelationshipType": check response?.PartyRelationshipType,
    // "PartyLife-cycleMaintenanceSchedule": {
    //     "ScheduleType": check response?.PartyLife\-cycleMaintenanceSchedule?.ScheduleType
    // },
    // "PartyLife-cycleMaintenanceTask": {
    //     "Task": check response?.PartyLife\-cycleMaintenanceTask?.Task
    // },
    // "PartyLife-cycleMaintenanceTaskType": check response?.PartyLife\-cycleMaintenanceTaskType,
    // "PartyLife-cycleMaintenanceWorkProducts": {
    //     "WorkProductType": check response?.PartyLife\-cycleMaintenanceWorkProducts?.WorkProductType,
    //     "WorkProductIdentifoication": {
    //         "IdentifierValue": check response?.PartyLife\-cycleMaintenanceWorkProducts?.WorkProductIdentifoication?.IdentifierValue,
    //         "IdentifierIssuerReference": {
    //             "PartyReference": check response?.PartyLife\-cycleMaintenanceWorkProducts?.WorkProductIdentifoication?.IdentifierIssuerReference?.PartyReference,
    //             "InvolvementReference": check response?.PartyLife\-cycleMaintenanceWorkProducts?.WorkProductIdentifoication?.IdentifierIssuerReference?.InvolvementReference
    //         },
    //         "IdentifierStartDate": {
    //             "DateTimeContent": check response?.PartyLife\-cycleMaintenanceWorkProducts?.WorkProductIdentifoication?.IdentifierStartDate?.DateTimeContent,
    //             "TimeZoneCode": check response?.PartyLife\-cycleMaintenanceWorkProducts?.WorkProductIdentifoication?.IdentifierStartDate?.TimeZoneCode,
    //             "DaylightSavingIndicator": check response?.PartyLife\-cycleMaintenanceWorkProducts?.WorkProductIdentifoication?.IdentifierStartDate?.DaylightSavingIndicator,
    //             "DateTimeType": check response?.PartyLife\-cycleMaintenanceWorkProducts?.WorkProductIdentifoication?.IdentifierStartDate?.DateTimeType
    //         },
    //         "IdentifierEndDate": {
    //             "DateTimeContent": check response?.PartyLife\-cycleMaintenanceWorkProducts?.WorkProductIdentifoication?.IdentifierEndDate?.DateTimeContent,
    //             "TimeZoneCode": check response?.PartyLife\-cycleMaintenanceWorkProducts?.WorkProductIdentifoication?.IdentifierEndDate?.TimeZoneCode,
    //             "DaylightSavingIndicator": check response?.PartyLife\-cycleMaintenanceWorkProducts?.WorkProductIdentifoication?.IdentifierEndDate?.DaylightSavingIndicator,
    //             "DateTimeType": check response?.PartyLife\-cycleMaintenanceWorkProducts?.WorkProductIdentifoication?.IdentifierEndDate?.DateTimeType
    //         }
    //     }
    // },
    // "PartyLife-cycleMaintenanceTaskResult": check response?.PartyLife\-cycleMaintenanceTaskResult,
    "CustomerPrecedentProfileUpdateLog": {
        "LogType": check response?.CustomerPrecedentProfileUpdateLog?.LogType,
        "LogPeriod": {
            "FromDateTime": {
                "DateTimeContent": check response?.CustomerPrecedentProfileUpdateLog?.LogPeriod?.FromDateTime?.DateTimeContent,
                "TimeZoneCode": check response?.CustomerPrecedentProfileUpdateLog?.LogPeriod?.FromDateTime?.TimeZoneCode,
                "DaylightSavingIndicator": check response?.CustomerPrecedentProfileUpdateLog?.LogPeriod?.FromDateTime?.DaylightSavingIndicator,
                "DateTimeType": check response?.CustomerPrecedentProfileUpdateLog?.LogPeriod?.FromDateTime?.DateTimeType
            },
            "ToDateTime": {
                "DateTimeContent": check response?.CustomerPrecedentProfileUpdateLog?.LogPeriod?.ToDateTime?.DateTimeContent,
                "TimeZoneCode": check response?.CustomerPrecedentProfileUpdateLog?.LogPeriod?.ToDateTime?.TimeZoneCode,
                "DaylightSavingIndicator": check response?.CustomerPrecedentProfileUpdateLog?.LogPeriod?.ToDateTime?.DaylightSavingIndicator,
                "DateTimeType": check response?.CustomerPrecedentProfileUpdateLog?.LogPeriod?.ToDateTime?.DateTimeType
            }
        },
        "LogDate": {
            "DateTimeContent": check response?.CustomerPrecedentProfileUpdateLog?.LogDate?.DateTimeContent,
            "TimeZoneCode": check response?.CustomerPrecedentProfileUpdateLog?.LogDate?.TimeZoneCode,
            "DaylightSavingIndicator": check response?.CustomerPrecedentProfileUpdateLog?.LogDate?.DaylightSavingIndicator,
            "DateTimeType": check response?.CustomerPrecedentProfileUpdateLog?.LogDate?.DateTimeType
        },
        "LogIdentification": {
            "IdentifierValue": check response?.CustomerPrecedentProfileUpdateLog?.LogIdentification?.IdentifierValue,
            "IdentifierIssuerReference": {
                "PartyReference": check response?.CustomerPrecedentProfileUpdateLog?.LogIdentification?.IdentifierIssuerReference?.PartyReference,
                "InvolvementReference": check response?.CustomerPrecedentProfileUpdateLog?.LogIdentification?.IdentifierIssuerReference?.InvolvementReference
            },
            "IdentifierStartDate": {
                "DateTimeContent": check response?.CustomerPrecedentProfileUpdateLog?.LogIdentification?.IdentifierStartDate?.DateTimeContent,
                "TimeZoneCode": check response?.CustomerPrecedentProfileUpdateLog?.LogIdentification?.IdentifierStartDate?.TimeZoneCode,
                "DaylightSavingIndicator": check response?.CustomerPrecedentProfileUpdateLog?.LogIdentification?.IdentifierStartDate?.DaylightSavingIndicator,
                "DateTimeType": check response?.CustomerPrecedentProfileUpdateLog?.LogIdentification?.IdentifierStartDate?.DateTimeType
            },
            "IdentifierEndDate": {
                "DateTimeContent": check response?.CustomerPrecedentProfileUpdateLog?.LogIdentification?.IdentifierEndDate?.DateTimeContent,
                "TimeZoneCode": check response?.CustomerPrecedentProfileUpdateLog?.LogIdentification?.IdentifierEndDate?.TimeZoneCode,
                "DaylightSavingIndicator": check response?.CustomerPrecedentProfileUpdateLog?.LogIdentification?.IdentifierEndDate?.DaylightSavingIndicator,
                "DateTimeType": check response?.CustomerPrecedentProfileUpdateLog?.LogIdentification?.IdentifierEndDate?.DateTimeType
            }
        }
    },
    "PartyRelationshipLifecycleStatus": {
        "StatusReason": check response?.PartyRelationshipLifecycleStatus?.StatusReason,
        "StatusDateTime": {
            "DateTimeContent": check response?.PartyRelationshipLifecycleStatus?.StatusDateTime?.DateTimeContent,
            "TimeZoneCode": check response?.PartyRelationshipLifecycleStatus?.StatusDateTime?.TimeZoneCode,
            "DaylightSavingIndicator": check response?.PartyRelationshipLifecycleStatus?.StatusDateTime?.DaylightSavingIndicator,
            "DateTimeType": check response?.PartyRelationshipLifecycleStatus?.StatusDateTime?.DateTimeType
        },
        "StatusValidityPeriod": {
            "FromDateTime": {
                "DateTimeContent": check response?.PartyRelationshipLifecycleStatus?.StatusValidityPeriod?.FromDateTime?.DateTimeContent,
                "TimeZoneCode": check response?.PartyRelationshipLifecycleStatus?.StatusValidityPeriod?.FromDateTime?.TimeZoneCode,
                "DaylightSavingIndicator": check response?.PartyRelationshipLifecycleStatus?.StatusValidityPeriod?.FromDateTime?.DaylightSavingIndicator,
                "DateTimeType": check response?.PartyRelationshipLifecycleStatus?.StatusValidityPeriod?.FromDateTime?.DateTimeType
            },
            "ToDateTime": {
                "DateTimeContent": check response?.PartyRelationshipLifecycleStatus?.StatusValidityPeriod?.ToDateTime?.DateTimeContent,
                "TimeZoneCode": check response?.PartyRelationshipLifecycleStatus?.StatusValidityPeriod?.ToDateTime?.TimeZoneCode,
                "DaylightSavingIndicator": check response?.PartyRelationshipLifecycleStatus?.StatusValidityPeriod?.ToDateTime?.DaylightSavingIndicator,
                "DateTimeType": check response?.PartyRelationshipLifecycleStatus?.StatusValidityPeriod?.ToDateTime?.DateTimeType
            }
        },
        "StatusInvolvedPartyReference": {
            "PartyReference": check response?.PartyRelationshipLifecycleStatus?.StatusInvolvedPartyReference?.PartyReference,
            "InvolvementReference": check response?.PartyRelationshipLifecycleStatus?.StatusInvolvedPartyReference?.InvolvementReference
        }
    },
    "PartyRelationshipLifecyclePhase": {
        "Description": check response?.PartyRelationshipLifecyclePhase?.Description,
        "IsCurrentPhase": check response?.PartyRelationshipLifecyclePhase?.IsCurrentPhase,
        "PhaseName": {
            "Name": check response?.PartyRelationshipLifecyclePhase?.PhaseName?.Name
        },
        "PhaseStatus": {
            "StatusReason": check response?.PartyRelationshipLifecyclePhase?.PhaseStatus?.StatusReason,
            "StatusDateTime": {
                "DateTimeContent": check response?.PartyRelationshipLifecyclePhase?.PhaseStatus?.StatusDateTime?.DateTimeContent,
                "TimeZoneCode": check response?.PartyRelationshipLifecyclePhase?.PhaseStatus?.StatusDateTime?.TimeZoneCode,
                "DaylightSavingIndicator": check response?.PartyRelationshipLifecyclePhase?.PhaseStatus?.StatusDateTime?.DaylightSavingIndicator,
                "DateTimeType": check response?.PartyRelationshipLifecyclePhase?.PhaseStatus?.StatusDateTime?.DateTimeType
            },
            "StatusValidityPeriod": {
                "FromDateTime": {
                    "DateTimeContent": check response?.PartyRelationshipLifecyclePhase?.PhaseStatus?.StatusValidityPeriod?.FromDateTime?.DateTimeContent,
                    "TimeZoneCode": check response?.PartyRelationshipLifecyclePhase?.PhaseStatus?.StatusValidityPeriod?.FromDateTime?.TimeZoneCode,
                    "DaylightSavingIndicator": check response?.PartyRelationshipLifecyclePhase?.PhaseStatus?.StatusValidityPeriod?.FromDateTime?.DaylightSavingIndicator,
                    "DateTimeType": check response?.PartyRelationshipLifecyclePhase?.PhaseStatus?.StatusValidityPeriod?.FromDateTime?.DateTimeType
                },
                "ToDateTime": {
                    "DateTimeContent": check response?.PartyRelationshipLifecyclePhase?.PhaseStatus?.StatusValidityPeriod?.ToDateTime?.DateTimeContent,
                    "TimeZoneCode": check response?.PartyRelationshipLifecyclePhase?.PhaseStatus?.StatusValidityPeriod?.ToDateTime?.TimeZoneCode,
                    "DaylightSavingIndicator": check response?.PartyRelationshipLifecyclePhase?.PhaseStatus?.StatusValidityPeriod?.ToDateTime?.DaylightSavingIndicator,
                    "DateTimeType": check response?.PartyRelationshipLifecyclePhase?.PhaseStatus?.StatusValidityPeriod?.ToDateTime?.DateTimeType
                }
            },
            "StatusInvolvedPartyReference": {
                "PartyReference": check response?.PartyRelationshipLifecyclePhase?.PhaseStatus?.StatusInvolvedPartyReference?.PartyReference,
                "InvolvementReference": check response?.PartyRelationshipLifecyclePhase?.PhaseStatus?.StatusInvolvedPartyReference?.InvolvementReference
            }
        },
        "PhasePeriod": {
            "FromDateTime": {
                "DateTimeContent": check response?.PartyRelationshipLifecyclePhase?.PhasePeriod?.FromDateTime?.DateTimeContent,
                "TimeZoneCode": check response?.PartyRelationshipLifecyclePhase?.PhasePeriod?.FromDateTime?.TimeZoneCode,
                "DaylightSavingIndicator": check response?.PartyRelationshipLifecyclePhase?.PhasePeriod?.FromDateTime?.DaylightSavingIndicator,
                "DateTimeType": check response?.PartyRelationshipLifecyclePhase?.PhasePeriod?.FromDateTime?.DateTimeType
            },
            "ToDateTime": {
                "DateTimeContent": check response?.PartyRelationshipLifecyclePhase?.PhasePeriod?.ToDateTime?.DateTimeContent,
                "TimeZoneCode": check response?.PartyRelationshipLifecyclePhase?.PhasePeriod?.ToDateTime?.TimeZoneCode,
                "DaylightSavingIndicator": check response?.PartyRelationshipLifecyclePhase?.PhasePeriod?.ToDateTime?.DaylightSavingIndicator,
                "DateTimeType": check response?.PartyRelationshipLifecyclePhase?.PhasePeriod?.ToDateTime?.DateTimeType
            }
        }
    }
};

isolated function transfromPartyLifecycleManagementQualificationsResponse(json response) returns customers:Qualification|error => {
    "QualificationType": check response?.QualificationType,
    "PublicDirectoryReference": {
        "DirectoryVersion": check response?.PublicDirectoryReference?.DirectoryVersion,
        "DirectoryConfiguration": check response?.PublicDirectoryReference?.DirectoryConfiguration,
        "DirectoryValidPeriod": {
            "FromDateTime": {
                "DateTimeContent": check response?.PublicDirectoryReference?.DirectoryValidPeriod?.FromDateTime?.DateTimeContent,
                "TimeZoneCode": check response?.PublicDirectoryReference?.DirectoryValidPeriod?.FromDateTime?.TimeZoneCode,
                "DaylightSavingIndicator": check response?.PublicDirectoryReference?.DirectoryValidPeriod?.FromDateTime?.DaylightSavingIndicator,
                "DateTimeType": check response?.PublicDirectoryReference?.DirectoryValidPeriod?.FromDateTime?.DateTimeType
            },
            "ToDateTime": {
                "DateTimeContent": check response?.PublicDirectoryReference?.DirectoryValidPeriod?.ToDateTime?.DateTimeContent,
                "TimeZoneCode": check response?.PublicDirectoryReference?.DirectoryValidPeriod?.ToDateTime?.TimeZoneCode,
                "DaylightSavingIndicator": check response?.PublicDirectoryReference?.DirectoryValidPeriod?.ToDateTime?.DaylightSavingIndicator,
                "DateTimeType": check response?.PublicDirectoryReference?.DirectoryValidPeriod?.ToDateTime?.DateTimeType
            }
        },
        "DirectoryStatus": {
            "StatusReason": check response?.PublicDirectoryReference?.DirectoryStatus?.StatusReason,
            "StatusDateTime": {
                "DateTimeContent": check response?.PublicDirectoryReference?.DirectoryStatus?.StatusDateTime?.DateTimeContent,
                "TimeZoneCode": check response?.PublicDirectoryReference?.DirectoryStatus?.StatusDateTime?.TimeZoneCode,
                "DaylightSavingIndicator": check response?.PublicDirectoryReference?.DirectoryStatus?.StatusDateTime?.DaylightSavingIndicator,
                "DateTimeType": check response?.PublicDirectoryReference?.DirectoryStatus?.StatusDateTime?.DateTimeType
            },
            "StatusValidityPeriod": {
                "FromDateTime": {
                    "DateTimeContent": check response?.PublicDirectoryReference?.DirectoryStatus?.StatusValidityPeriod?.FromDateTime?.DateTimeContent,
                    "TimeZoneCode": check response?.PublicDirectoryReference?.DirectoryStatus?.StatusValidityPeriod?.FromDateTime?.TimeZoneCode,
                    "DaylightSavingIndicator": check response?.PublicDirectoryReference?.DirectoryStatus?.StatusValidityPeriod?.FromDateTime?.DaylightSavingIndicator,
                    "DateTimeType": check response?.PublicDirectoryReference?.DirectoryStatus?.StatusValidityPeriod?.FromDateTime?.DateTimeType
                },
                "ToDateTime": {
                    "DateTimeContent": check response?.PublicDirectoryReference?.DirectoryStatus?.StatusValidityPeriod?.ToDateTime?.DateTimeContent,
                    "TimeZoneCode": check response?.PublicDirectoryReference?.DirectoryStatus?.StatusValidityPeriod?.ToDateTime?.TimeZoneCode,
                    "DaylightSavingIndicator": check response?.PublicDirectoryReference?.DirectoryStatus?.StatusValidityPeriod?.ToDateTime?.DaylightSavingIndicator,
                    "DateTimeType": check response?.PublicDirectoryReference?.DirectoryStatus?.StatusValidityPeriod?.ToDateTime?.DateTimeType
                }
            },
            "StatusInvolvedPartyReference": {
                "PartyReference": check response?.PublicDirectoryReference?.DirectoryStatus?.StatusInvolvedPartyReference?.PartyReference,
                "InvolvementReference": check response?.PublicDirectoryReference?.DirectoryStatus?.StatusInvolvedPartyReference?.InvolvementReference
            }
        }
    },
    "SpecialistAgencyServiceReference": {
        "ServiceName": {
            "Name": check response?.SpecialistAgencyServiceReference?.ServiceName?.Name
        },
        "ServiceDescription": check response?.SpecialistAgencyServiceReference?.ServiceDescription,
        "ServiceType": check response?.SpecialistAgencyServiceReference?.ServiceType,
        "ServiceIdentification": {
            "IdentifierValue": check response?.SpecialistAgencyServiceReference?.ServiceIdentification?.IdentifierValue,
            "IdentifierIssuerReference": {
                "PartyReference": check response?.SpecialistAgencyServiceReference?.ServiceIdentification?.IdentifierIssuerReference?.PartyReference,
                "InvolvementReference": check response?.SpecialistAgencyServiceReference?.ServiceIdentification?.IdentifierIssuerReference?.InvolvementReference
            },
            "IdentifierStartDate": {
                "DateTimeContent": check response?.SpecialistAgencyServiceReference?.ServiceIdentification?.IdentifierStartDate?.DateTimeContent,
                "TimeZoneCode": check response?.SpecialistAgencyServiceReference?.ServiceIdentification?.IdentifierStartDate?.TimeZoneCode,
                "DaylightSavingIndicator": check response?.SpecialistAgencyServiceReference?.ServiceIdentification?.IdentifierStartDate?.DaylightSavingIndicator,
                "DateTimeType": check response?.SpecialistAgencyServiceReference?.ServiceIdentification?.IdentifierStartDate?.DateTimeType
            },
            "IdentifierEndDate": {
                "DateTimeContent": check response?.SpecialistAgencyServiceReference?.ServiceIdentification?.IdentifierEndDate?.DateTimeContent,
                "TimeZoneCode": check response?.SpecialistAgencyServiceReference?.ServiceIdentification?.IdentifierEndDate?.TimeZoneCode,
                "DaylightSavingIndicator": check response?.SpecialistAgencyServiceReference?.ServiceIdentification?.IdentifierEndDate?.DaylightSavingIndicator,
                "DateTimeType": check response?.SpecialistAgencyServiceReference?.ServiceIdentification?.IdentifierEndDate?.DateTimeType
            }
        },
        "ServiceLifecycleStatus": {
            "StatusReason": check response?.SpecialistAgencyServiceReference?.ServiceLifecycleStatus?.StatusReason,
            "StatusDateTime": {
                "DateTimeContent": check response?.SpecialistAgencyServiceReference?.ServiceLifecycleStatus?.StatusDateTime?.DateTimeContent,
                "TimeZoneCode": check response?.SpecialistAgencyServiceReference?.ServiceLifecycleStatus?.StatusDateTime?.TimeZoneCode,
                "DaylightSavingIndicator": check response?.SpecialistAgencyServiceReference?.ServiceLifecycleStatus?.StatusDateTime?.DaylightSavingIndicator,
                "DateTimeType": check response?.SpecialistAgencyServiceReference?.ServiceLifecycleStatus?.StatusDateTime?.DateTimeType
            },
            "StatusValidityPeriod": {
                "FromDateTime": {
                    "DateTimeContent": check response?.SpecialistAgencyServiceReference?.ServiceLifecycleStatus?.StatusValidityPeriod?.FromDateTime?.DateTimeContent,
                    "TimeZoneCode": check response?.SpecialistAgencyServiceReference?.ServiceLifecycleStatus?.StatusValidityPeriod?.FromDateTime?.TimeZoneCode,
                    "DaylightSavingIndicator": check response?.SpecialistAgencyServiceReference?.ServiceLifecycleStatus?.StatusValidityPeriod?.FromDateTime?.DaylightSavingIndicator,
                    "DateTimeType": check response?.SpecialistAgencyServiceReference?.ServiceLifecycleStatus?.StatusValidityPeriod?.FromDateTime?.DateTimeType
                },
                "ToDateTime": {
                    "DateTimeContent": check response?.SpecialistAgencyServiceReference?.ServiceLifecycleStatus?.StatusValidityPeriod?.ToDateTime?.DateTimeContent,
                    "TimeZoneCode": check response?.SpecialistAgencyServiceReference?.ServiceLifecycleStatus?.StatusValidityPeriod?.ToDateTime?.TimeZoneCode,
                    "DaylightSavingIndicator": check response?.SpecialistAgencyServiceReference?.ServiceLifecycleStatus?.StatusValidityPeriod?.ToDateTime?.DaylightSavingIndicator,
                    "DateTimeType": check response?.SpecialistAgencyServiceReference?.ServiceLifecycleStatus?.StatusValidityPeriod?.ToDateTime?.DateTimeType
                }
            },
            "StatusInvolvedPartyReference": {
                "PartyReference": check response?.SpecialistAgencyServiceReference?.ServiceLifecycleStatus?.StatusInvolvedPartyReference?.PartyReference,
                "InvolvementReference": check response?.SpecialistAgencyServiceReference?.ServiceLifecycleStatus?.StatusInvolvedPartyReference?.InvolvementReference
            }
        },
        "ServiceFeature": {
            "FeatureType": check response?.SpecialistAgencyServiceReference?.ServiceFeature?.FeatureType,
            "FeatureIdentification": {
                "IdentifierValue": check response?.SpecialistAgencyServiceReference?.ServiceFeature?.FeatureIdentification?.IdentifierValue,
                "IdentifierIssuerReference": {
                    "PartyReference": check response?.SpecialistAgencyServiceReference?.ServiceFeature?.FeatureIdentification?.IdentifierIssuerReference?.PartyReference,
                    "InvolvementReference": check response?.SpecialistAgencyServiceReference?.ServiceFeature?.FeatureIdentification?.IdentifierIssuerReference?.InvolvementReference
                },
                "IdentifierStartDate": {
                    "DateTimeContent": check response?.SpecialistAgencyServiceReference?.ServiceFeature?.FeatureIdentification?.IdentifierStartDate?.DateTimeContent,
                    "TimeZoneCode": check response?.SpecialistAgencyServiceReference?.ServiceFeature?.FeatureIdentification?.IdentifierStartDate?.TimeZoneCode,
                    "DaylightSavingIndicator": check response?.SpecialistAgencyServiceReference?.ServiceFeature?.FeatureIdentification?.IdentifierStartDate?.DaylightSavingIndicator,
                    "DateTimeType": check response?.SpecialistAgencyServiceReference?.ServiceFeature?.FeatureIdentification?.IdentifierStartDate?.DateTimeType
                },
                "IdentifierEndDate": {
                    "DateTimeContent": check response?.SpecialistAgencyServiceReference?.ServiceFeature?.FeatureIdentification?.IdentifierEndDate?.DateTimeContent,
                    "TimeZoneCode": check response?.SpecialistAgencyServiceReference?.ServiceFeature?.FeatureIdentification?.IdentifierEndDate?.TimeZoneCode,
                    "DaylightSavingIndicator": check response?.SpecialistAgencyServiceReference?.ServiceFeature?.FeatureIdentification?.IdentifierEndDate?.DaylightSavingIndicator,
                    "DateTimeType": check response?.SpecialistAgencyServiceReference?.ServiceFeature?.FeatureIdentification?.IdentifierEndDate?.DateTimeType
                }
            },
            "FeatureName": {
                "Name": check response?.SpecialistAgencyServiceReference?.ServiceFeature?.FeatureName?.Name
            },
            "FeatureLifecycleStatus": {
                "StatusReason": check response?.SpecialistAgencyServiceReference?.ServiceFeature?.FeatureLifecycleStatus?.StatusReason,
                "StatusDateTime": {
                    "DateTimeContent": check response?.SpecialistAgencyServiceReference?.ServiceFeature?.FeatureLifecycleStatus?.StatusDateTime?.DateTimeContent,
                    "TimeZoneCode": check response?.SpecialistAgencyServiceReference?.ServiceFeature?.FeatureLifecycleStatus?.StatusDateTime?.TimeZoneCode,
                    "DaylightSavingIndicator": check response?.SpecialistAgencyServiceReference?.ServiceFeature?.FeatureLifecycleStatus?.StatusDateTime?.DaylightSavingIndicator,
                    "DateTimeType": check response?.SpecialistAgencyServiceReference?.ServiceFeature?.FeatureLifecycleStatus?.StatusDateTime?.DateTimeType
                },
                "StatusValidityPeriod": {
                    "FromDateTime": {
                        "DateTimeContent": check response?.SpecialistAgencyServiceReference?.ServiceFeature?.FeatureLifecycleStatus?.StatusValidityPeriod?.FromDateTime?.DateTimeContent,
                        "TimeZoneCode": check response?.SpecialistAgencyServiceReference?.ServiceFeature?.FeatureLifecycleStatus?.StatusValidityPeriod?.FromDateTime?.TimeZoneCode,
                        "DaylightSavingIndicator": check response?.SpecialistAgencyServiceReference?.ServiceFeature?.FeatureLifecycleStatus?.StatusValidityPeriod?.FromDateTime?.DaylightSavingIndicator,
                        "DateTimeType": check response?.SpecialistAgencyServiceReference?.ServiceFeature?.FeatureLifecycleStatus?.StatusValidityPeriod?.FromDateTime?.DateTimeType
                    },
                    "ToDateTime": {
                        "DateTimeContent": check response?.SpecialistAgencyServiceReference?.ServiceFeature?.FeatureLifecycleStatus?.StatusValidityPeriod?.ToDateTime?.DateTimeContent,
                        "TimeZoneCode": check response?.SpecialistAgencyServiceReference?.ServiceFeature?.FeatureLifecycleStatus?.StatusValidityPeriod?.ToDateTime?.TimeZoneCode,
                        "DaylightSavingIndicator": check response?.SpecialistAgencyServiceReference?.ServiceFeature?.FeatureLifecycleStatus?.StatusValidityPeriod?.ToDateTime?.DaylightSavingIndicator,
                        "DateTimeType": check response?.SpecialistAgencyServiceReference?.ServiceFeature?.FeatureLifecycleStatus?.StatusValidityPeriod?.ToDateTime?.DateTimeType
                    }
                },
                "StatusInvolvedPartyReference": {
                    "PartyReference": check response?.SpecialistAgencyServiceReference?.ServiceFeature?.FeatureLifecycleStatus?.StatusInvolvedPartyReference?.PartyReference,
                    "InvolvementReference": check response?.SpecialistAgencyServiceReference?.ServiceFeature?.FeatureLifecycleStatus?.StatusInvolvedPartyReference?.InvolvementReference
                }
            },
            "FeatureDescription": check response?.SpecialistAgencyServiceReference?.ServiceFeature?.FeatureDescription
        },
        "FeatureType": check response?.SpecialistAgencyServiceReference?.FeatureType,
        "FeatureIdentification": {
            "IdentifierValue": check response?.SpecialistAgencyServiceReference?.FeatureIdentification?.IdentifierValue,
            "IdentifierIssuerReference": {
                "PartyReference": check response?.SpecialistAgencyServiceReference?.FeatureIdentification?.IdentifierIssuerReference?.PartyReference,
                "InvolvementReference": check response?.SpecialistAgencyServiceReference?.FeatureIdentification?.IdentifierIssuerReference?.InvolvementReference
            },
            "IdentifierStartDate": {
                "DateTimeContent": check response?.SpecialistAgencyServiceReference?.FeatureIdentification?.IdentifierStartDate?.DateTimeContent,
                "TimeZoneCode": check response?.SpecialistAgencyServiceReference?.FeatureIdentification?.IdentifierStartDate?.TimeZoneCode,
                "DaylightSavingIndicator": check response?.SpecialistAgencyServiceReference?.FeatureIdentification?.IdentifierStartDate?.DaylightSavingIndicator,
                "DateTimeType": check response?.SpecialistAgencyServiceReference?.FeatureIdentification?.IdentifierStartDate?.DateTimeType
            },
            "IdentifierEndDate": {
                "DateTimeContent": check response?.SpecialistAgencyServiceReference?.FeatureIdentification?.IdentifierEndDate?.DateTimeContent,
                "TimeZoneCode": check response?.SpecialistAgencyServiceReference?.FeatureIdentification?.IdentifierEndDate?.TimeZoneCode,
                "DaylightSavingIndicator": check response?.SpecialistAgencyServiceReference?.FeatureIdentification?.IdentifierEndDate?.DaylightSavingIndicator,
                "DateTimeType": check response?.SpecialistAgencyServiceReference?.FeatureIdentification?.IdentifierEndDate?.DateTimeType
            }
        },
        "FeatureName": {
            "Name": check response?.SpecialistAgencyServiceReference?.FeatureName?.Name
        },
        "FeatureLifecycleStatus": {
            "StatusReason": check response?.SpecialistAgencyServiceReference?.FeatureLifecycleStatus?.StatusReason,
            "StatusDateTime": {
                "DateTimeContent": check response?.SpecialistAgencyServiceReference?.FeatureLifecycleStatus?.StatusDateTime?.DateTimeContent,
                "TimeZoneCode": check response?.SpecialistAgencyServiceReference?.FeatureLifecycleStatus?.StatusDateTime?.TimeZoneCode,
                "DaylightSavingIndicator": check response?.SpecialistAgencyServiceReference?.FeatureLifecycleStatus?.StatusDateTime?.DaylightSavingIndicator,
                "DateTimeType": check response?.SpecialistAgencyServiceReference?.FeatureLifecycleStatus?.StatusDateTime?.DateTimeType
            },
            "StatusValidityPeriod": {
                "FromDateTime": {
                    "DateTimeContent": check response?.SpecialistAgencyServiceReference?.FeatureLifecycleStatus?.StatusValidityPeriod?.FromDateTime?.DateTimeContent,
                    "TimeZoneCode": check response?.SpecialistAgencyServiceReference?.FeatureLifecycleStatus?.StatusValidityPeriod?.FromDateTime?.TimeZoneCode,
                    "DaylightSavingIndicator": check response?.SpecialistAgencyServiceReference?.FeatureLifecycleStatus?.StatusValidityPeriod?.FromDateTime?.DaylightSavingIndicator,
                    "DateTimeType": check response?.SpecialistAgencyServiceReference?.FeatureLifecycleStatus?.StatusValidityPeriod?.FromDateTime?.DateTimeType
                },
                "ToDateTime": {
                    "DateTimeContent": check response?.SpecialistAgencyServiceReference?.FeatureLifecycleStatus?.StatusValidityPeriod?.ToDateTime?.DateTimeContent,
                    "TimeZoneCode": check response?.SpecialistAgencyServiceReference?.FeatureLifecycleStatus?.StatusValidityPeriod?.ToDateTime?.TimeZoneCode,
                    "DaylightSavingIndicator": check response?.SpecialistAgencyServiceReference?.FeatureLifecycleStatus?.StatusValidityPeriod?.ToDateTime?.DaylightSavingIndicator,
                    "DateTimeType": check response?.SpecialistAgencyServiceReference?.FeatureLifecycleStatus?.StatusValidityPeriod?.ToDateTime?.DateTimeType
                }
            },
            "StatusInvolvedPartyReference": {
                "PartyReference": check response?.SpecialistAgencyServiceReference?.FeatureLifecycleStatus?.StatusInvolvedPartyReference?.PartyReference,
                "InvolvementReference": check response?.SpecialistAgencyServiceReference?.FeatureLifecycleStatus?.StatusInvolvedPartyReference?.InvolvementReference
            }
        },
        "FeatureDescription": check response?.SpecialistAgencyServiceReference?.FeatureDescription
    },
    "QualificationTaskRecord": {
        "Task": check response?.QualificationTaskRecord?.Task
    },
    "QualificationTaskDescription": check response?.QualificationTaskDescription,
    "SpecialistAgencyRegulatorServiceRequestResult": {
        "InstructionDate": {
            "InstructionDate": {
                "DateTimeContent": check response?.SpecialistAgencyRegulatorServiceRequestResult?.InstructionDate?.InstructionDate?.DateTimeContent,
                "TimeZoneCode": check response?.SpecialistAgencyRegulatorServiceRequestResult?.InstructionDate?.InstructionDate?.TimeZoneCode,
                "DaylightSavingIndicator": check response?.SpecialistAgencyRegulatorServiceRequestResult?.InstructionDate?.InstructionDate?.DaylightSavingIndicator,
                "DateTimeType": check response?.SpecialistAgencyRegulatorServiceRequestResult?.InstructionDate?.InstructionDate?.DateTimeType
            },
            "InstructionDateType": check response?.SpecialistAgencyRegulatorServiceRequestResult?.InstructionDate?.InstructionDateType
        },
        "InstructionStatus": {
            "InstructionStatusType": check response?.SpecialistAgencyRegulatorServiceRequestResult?.InstructionStatus?.InstructionStatusType,
            "InstructionStatus": {
                "StatusReason": check response?.SpecialistAgencyRegulatorServiceRequestResult?.InstructionStatus?.InstructionStatus?.StatusReason,
                "StatusDateTime": {
                    "DateTimeContent": check response?.SpecialistAgencyRegulatorServiceRequestResult?.InstructionStatus?.InstructionStatus?.StatusDateTime?.DateTimeContent,
                    "TimeZoneCode": check response?.SpecialistAgencyRegulatorServiceRequestResult?.InstructionStatus?.InstructionStatus?.StatusDateTime?.TimeZoneCode,
                    "DaylightSavingIndicator": check response?.SpecialistAgencyRegulatorServiceRequestResult?.InstructionStatus?.InstructionStatus?.StatusDateTime?.DaylightSavingIndicator,
                    "DateTimeType": check response?.SpecialistAgencyRegulatorServiceRequestResult?.InstructionStatus?.InstructionStatus?.StatusDateTime?.DateTimeType
                },
                "StatusValidityPeriod": {
                    "FromDateTime": {
                        "DateTimeContent": check response?.SpecialistAgencyRegulatorServiceRequestResult?.InstructionStatus?.InstructionStatus?.StatusValidityPeriod?.FromDateTime?.DateTimeContent,
                        "TimeZoneCode": check response?.SpecialistAgencyRegulatorServiceRequestResult?.InstructionStatus?.InstructionStatus?.StatusValidityPeriod?.FromDateTime?.TimeZoneCode,
                        "DaylightSavingIndicator": check response?.SpecialistAgencyRegulatorServiceRequestResult?.InstructionStatus?.InstructionStatus?.StatusValidityPeriod?.FromDateTime?.DaylightSavingIndicator,
                        "DateTimeType": check response?.SpecialistAgencyRegulatorServiceRequestResult?.InstructionStatus?.InstructionStatus?.StatusValidityPeriod?.FromDateTime?.DateTimeType
                    },
                    "ToDateTime": {
                        "DateTimeContent": check response?.SpecialistAgencyRegulatorServiceRequestResult?.InstructionStatus?.InstructionStatus?.StatusValidityPeriod?.ToDateTime?.DateTimeContent,
                        "TimeZoneCode": check response?.SpecialistAgencyRegulatorServiceRequestResult?.InstructionStatus?.InstructionStatus?.StatusValidityPeriod?.ToDateTime?.TimeZoneCode,
                        "DaylightSavingIndicator": check response?.SpecialistAgencyRegulatorServiceRequestResult?.InstructionStatus?.InstructionStatus?.StatusValidityPeriod?.ToDateTime?.DaylightSavingIndicator,
                        "DateTimeType": check response?.SpecialistAgencyRegulatorServiceRequestResult?.InstructionStatus?.InstructionStatus?.StatusValidityPeriod?.ToDateTime?.DateTimeType
                    }
                },
                "StatusInvolvedPartyReference": {
                    "PartyReference": check response?.SpecialistAgencyRegulatorServiceRequestResult?.InstructionStatus?.InstructionStatus?.StatusInvolvedPartyReference?.PartyReference,
                    "InvolvementReference": check response?.SpecialistAgencyRegulatorServiceRequestResult?.InstructionStatus?.InstructionStatus?.StatusInvolvedPartyReference?.InvolvementReference
                }
            }
        },
        "InstructionIdentification": {
            "InstructionIdentification": {
                "IdentifierValue": check response?.SpecialistAgencyRegulatorServiceRequestResult?.InstructionIdentification?.InstructionIdentification?.IdentifierValue,
                "IdentifierIssuerReference": {
                    "PartyReference": check response?.SpecialistAgencyRegulatorServiceRequestResult?.InstructionIdentification?.InstructionIdentification?.IdentifierIssuerReference?.PartyReference,
                    "InvolvementReference": check response?.SpecialistAgencyRegulatorServiceRequestResult?.InstructionIdentification?.InstructionIdentification?.IdentifierIssuerReference?.InvolvementReference
                },
                "IdentifierStartDate": {
                    "DateTimeContent": check response?.SpecialistAgencyRegulatorServiceRequestResult?.InstructionIdentification?.InstructionIdentification?.IdentifierStartDate?.DateTimeContent,
                    "TimeZoneCode": check response?.SpecialistAgencyRegulatorServiceRequestResult?.InstructionIdentification?.InstructionIdentification?.IdentifierStartDate?.TimeZoneCode,
                    "DaylightSavingIndicator": check response?.SpecialistAgencyRegulatorServiceRequestResult?.InstructionIdentification?.InstructionIdentification?.IdentifierStartDate?.DaylightSavingIndicator,
                    "DateTimeType": check response?.SpecialistAgencyRegulatorServiceRequestResult?.InstructionIdentification?.InstructionIdentification?.IdentifierStartDate?.DateTimeType
                },
                "IdentifierEndDate": {
                    "DateTimeContent": check response?.SpecialistAgencyRegulatorServiceRequestResult?.InstructionIdentification?.InstructionIdentification?.IdentifierEndDate?.DateTimeContent,
                    "TimeZoneCode": check response?.SpecialistAgencyRegulatorServiceRequestResult?.InstructionIdentification?.InstructionIdentification?.IdentifierEndDate?.TimeZoneCode,
                    "DaylightSavingIndicator": check response?.SpecialistAgencyRegulatorServiceRequestResult?.InstructionIdentification?.InstructionIdentification?.IdentifierEndDate?.DaylightSavingIndicator,
                    "DateTimeType": check response?.SpecialistAgencyRegulatorServiceRequestResult?.InstructionIdentification?.InstructionIdentification?.IdentifierEndDate?.DateTimeType
                }
            },
            "InstructionIdentificationType": check response?.SpecialistAgencyRegulatorServiceRequestResult?.InstructionIdentification?.InstructionIdentificationType
        },
        "InstructionType": check response?.SpecialistAgencyRegulatorServiceRequestResult?.InstructionType,
        "InstructionResult": check response?.SpecialistAgencyRegulatorServiceRequestResult?.InstructionResult,
        "InstructionDescription": check response?.SpecialistAgencyRegulatorServiceRequestResult?.InstructionDescription,
        "InstructionLog": {
            "LogType": check response?.SpecialistAgencyRegulatorServiceRequestResult?.InstructionLog?.LogType,
            "LogPeriod": {
                "FromDateTime": {
                    "DateTimeContent": check response?.SpecialistAgencyRegulatorServiceRequestResult?.InstructionLog?.LogPeriod?.FromDateTime?.DateTimeContent,
                    "TimeZoneCode": check response?.SpecialistAgencyRegulatorServiceRequestResult?.InstructionLog?.LogPeriod?.FromDateTime?.TimeZoneCode,
                    "DaylightSavingIndicator": check response?.SpecialistAgencyRegulatorServiceRequestResult?.InstructionLog?.LogPeriod?.FromDateTime?.DaylightSavingIndicator,
                    "DateTimeType": check response?.SpecialistAgencyRegulatorServiceRequestResult?.InstructionLog?.LogPeriod?.FromDateTime?.DateTimeType
                },
                "ToDateTime": {
                    "DateTimeContent": check response?.SpecialistAgencyRegulatorServiceRequestResult?.InstructionLog?.LogPeriod?.ToDateTime?.DateTimeContent,
                    "TimeZoneCode": check response?.SpecialistAgencyRegulatorServiceRequestResult?.InstructionLog?.LogPeriod?.ToDateTime?.TimeZoneCode,
                    "DaylightSavingIndicator": check response?.SpecialistAgencyRegulatorServiceRequestResult?.InstructionLog?.LogPeriod?.ToDateTime?.DaylightSavingIndicator,
                    "DateTimeType": check response?.SpecialistAgencyRegulatorServiceRequestResult?.InstructionLog?.LogPeriod?.ToDateTime?.DateTimeType
                }
            },
            "LogDate": {
                "DateTimeContent": check response?.SpecialistAgencyRegulatorServiceRequestResult?.InstructionLog?.LogDate?.DateTimeContent,
                "TimeZoneCode": check response?.SpecialistAgencyRegulatorServiceRequestResult?.InstructionLog?.LogDate?.TimeZoneCode,
                "DaylightSavingIndicator": check response?.SpecialistAgencyRegulatorServiceRequestResult?.InstructionLog?.LogDate?.DaylightSavingIndicator,
                "DateTimeType": check response?.SpecialistAgencyRegulatorServiceRequestResult?.InstructionLog?.LogDate?.DateTimeType
            },
            "LogIdentification": {
                "IdentifierValue": check response?.SpecialistAgencyRegulatorServiceRequestResult?.InstructionLog?.LogIdentification?.IdentifierValue,
                "IdentifierIssuerReference": {
                    "PartyReference": check response?.SpecialistAgencyRegulatorServiceRequestResult?.InstructionLog?.LogIdentification?.IdentifierIssuerReference?.PartyReference,
                    "InvolvementReference": check response?.SpecialistAgencyRegulatorServiceRequestResult?.InstructionLog?.LogIdentification?.IdentifierIssuerReference?.InvolvementReference
                },
                "IdentifierStartDate": {
                    "DateTimeContent": check response?.SpecialistAgencyRegulatorServiceRequestResult?.InstructionLog?.LogIdentification?.IdentifierStartDate?.DateTimeContent,
                    "TimeZoneCode": check response?.SpecialistAgencyRegulatorServiceRequestResult?.InstructionLog?.LogIdentification?.IdentifierStartDate?.TimeZoneCode,
                    "DaylightSavingIndicator": check response?.SpecialistAgencyRegulatorServiceRequestResult?.InstructionLog?.LogIdentification?.IdentifierStartDate?.DaylightSavingIndicator,
                    "DateTimeType": check response?.SpecialistAgencyRegulatorServiceRequestResult?.InstructionLog?.LogIdentification?.IdentifierStartDate?.DateTimeType
                },
                "IdentifierEndDate": {
                    "DateTimeContent": check response?.SpecialistAgencyRegulatorServiceRequestResult?.InstructionLog?.LogIdentification?.IdentifierEndDate?.DateTimeContent,
                    "TimeZoneCode": check response?.SpecialistAgencyRegulatorServiceRequestResult?.InstructionLog?.LogIdentification?.IdentifierEndDate?.TimeZoneCode,
                    "DaylightSavingIndicator": check response?.SpecialistAgencyRegulatorServiceRequestResult?.InstructionLog?.LogIdentification?.IdentifierEndDate?.DaylightSavingIndicator,
                    "DateTimeType": check response?.SpecialistAgencyRegulatorServiceRequestResult?.InstructionLog?.LogIdentification?.IdentifierEndDate?.DateTimeType
                }
            }
        },
        "InstructionPurpose": check response?.SpecialistAgencyRegulatorServiceRequestResult?.InstructionPurpose
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
    "QualificationTaskWorkProducts": {
        "WorkProductType": check response?.QualificationTaskWorkProducts?.WorkProductType,
        "WorkProductIdentifoication": {
            "IdentifierValue": check response?.QualificationTaskWorkProducts?.WorkProductIdentifoication?.IdentifierValue,
            "IdentifierIssuerReference": {
                "PartyReference": check response?.QualificationTaskWorkProducts?.WorkProductIdentifoication?.IdentifierIssuerReference?.PartyReference,
                "InvolvementReference": check response?.QualificationTaskWorkProducts?.WorkProductIdentifoication?.IdentifierIssuerReference?.InvolvementReference
            },
            "IdentifierStartDate": {
                "DateTimeContent": check response?.QualificationTaskWorkProducts?.WorkProductIdentifoication?.IdentifierStartDate?.DateTimeContent,
                "TimeZoneCode": check response?.QualificationTaskWorkProducts?.WorkProductIdentifoication?.IdentifierStartDate?.TimeZoneCode,
                "DaylightSavingIndicator": check response?.QualificationTaskWorkProducts?.WorkProductIdentifoication?.IdentifierStartDate?.DaylightSavingIndicator,
                "DateTimeType": check response?.QualificationTaskWorkProducts?.WorkProductIdentifoication?.IdentifierStartDate?.DateTimeType
            },
            "IdentifierEndDate": {
                "DateTimeContent": check response?.QualificationTaskWorkProducts?.WorkProductIdentifoication?.IdentifierEndDate?.DateTimeContent,
                "TimeZoneCode": check response?.QualificationTaskWorkProducts?.WorkProductIdentifoication?.IdentifierEndDate?.TimeZoneCode,
                "DaylightSavingIndicator": check response?.QualificationTaskWorkProducts?.WorkProductIdentifoication?.IdentifierEndDate?.DaylightSavingIndicator,
                "DateTimeType": check response?.QualificationTaskWorkProducts?.WorkProductIdentifoication?.IdentifierEndDate?.DateTimeType
            }
        }
    },
    "QualificationTaskResult": {
        "AssessmentType": check response?.QualificationTaskResult?.AssessmentType,
        "AssessmentMethod": check response?.QualificationTaskResult?.AssessmentMethod,
        "AssessmentSchedule": {
            "ScheduleType": check response?.QualificationTaskResult?.AssessmentSchedule?.ScheduleType
        },
        "AssessmentDescription": check response?.QualificationTaskResult?.AssessmentDescription,
        "AssessmentModel": {
            "ModelType": check response?.QualificationTaskResult?.AssessmentModel?.ModelType,
            "ModelPurpose": check response?.QualificationTaskResult?.AssessmentModel?.ModelPurpose,
            "ModelVersion": check response?.QualificationTaskResult?.AssessmentModel?.ModelVersion,
            "ModelName": {
                "Name": check response?.QualificationTaskResult?.AssessmentModel?.ModelName?.Name
            },
            "ModelDateAndTime": {
                "DateTimeContent": check response?.QualificationTaskResult?.AssessmentModel?.ModelDateAndTime?.DateTimeContent,
                "TimeZoneCode": check response?.QualificationTaskResult?.AssessmentModel?.ModelDateAndTime?.TimeZoneCode,
                "DaylightSavingIndicator": check response?.QualificationTaskResult?.AssessmentModel?.ModelDateAndTime?.DaylightSavingIndicator,
                "DateTimeType": check response?.QualificationTaskResult?.AssessmentModel?.ModelDateAndTime?.DateTimeType
            },
            "ModelStatus": {
                "StatusReason": check response?.QualificationTaskResult?.AssessmentModel?.ModelStatus?.StatusReason,
                "StatusDateTime": {
                    "DateTimeContent": check response?.QualificationTaskResult?.AssessmentModel?.ModelStatus?.StatusDateTime?.DateTimeContent,
                    "TimeZoneCode": check response?.QualificationTaskResult?.AssessmentModel?.ModelStatus?.StatusDateTime?.TimeZoneCode,
                    "DaylightSavingIndicator": check response?.QualificationTaskResult?.AssessmentModel?.ModelStatus?.StatusDateTime?.DaylightSavingIndicator,
                    "DateTimeType": check response?.QualificationTaskResult?.AssessmentModel?.ModelStatus?.StatusDateTime?.DateTimeType
                },
                "StatusValidityPeriod": {
                    "FromDateTime": {
                        "DateTimeContent": check response?.QualificationTaskResult?.AssessmentModel?.ModelStatus?.StatusValidityPeriod?.FromDateTime?.DateTimeContent,
                        "TimeZoneCode": check response?.QualificationTaskResult?.AssessmentModel?.ModelStatus?.StatusValidityPeriod?.FromDateTime?.TimeZoneCode,
                        "DaylightSavingIndicator": check response?.QualificationTaskResult?.AssessmentModel?.ModelStatus?.StatusValidityPeriod?.FromDateTime?.DaylightSavingIndicator,
                        "DateTimeType": check response?.QualificationTaskResult?.AssessmentModel?.ModelStatus?.StatusValidityPeriod?.FromDateTime?.DateTimeType
                    },
                    "ToDateTime": {
                        "DateTimeContent": check response?.QualificationTaskResult?.AssessmentModel?.ModelStatus?.StatusValidityPeriod?.ToDateTime?.DateTimeContent,
                        "TimeZoneCode": check response?.QualificationTaskResult?.AssessmentModel?.ModelStatus?.StatusValidityPeriod?.ToDateTime?.TimeZoneCode,
                        "DaylightSavingIndicator": check response?.QualificationTaskResult?.AssessmentModel?.ModelStatus?.StatusValidityPeriod?.ToDateTime?.DaylightSavingIndicator,
                        "DateTimeType": check response?.QualificationTaskResult?.AssessmentModel?.ModelStatus?.StatusValidityPeriod?.ToDateTime?.DateTimeType
                    }
                },
                "StatusInvolvedPartyReference": {
                    "PartyReference": check response?.QualificationTaskResult?.AssessmentModel?.ModelStatus?.StatusInvolvedPartyReference?.PartyReference,
                    "InvolvementReference": check response?.QualificationTaskResult?.AssessmentModel?.ModelStatus?.StatusInvolvedPartyReference?.InvolvementReference
                }
            }
        },
        "AssessmentDateTime": {
            "DateTimeContent": check response?.QualificationTaskResult?.AssessmentDateTime?.DateTimeContent,
            "TimeZoneCode": check response?.QualificationTaskResult?.AssessmentDateTime?.TimeZoneCode,
            "DaylightSavingIndicator": check response?.QualificationTaskResult?.AssessmentDateTime?.DaylightSavingIndicator,
            "DateTimeType": check response?.QualificationTaskResult?.AssessmentDateTime?.DateTimeType
        },
        "AssessmentResult": check response?.QualificationTaskResult?.AssessmentResult,
        "AssessmentSupportingDocument": {
            "DocumentIdentification": {
                "IdentifierValue": check response?.QualificationTaskResult?.AssessmentSupportingDocument?.DocumentIdentification?.IdentifierValue,
                "IdentifierIssuerReference": {
                    "PartyReference": check response?.QualificationTaskResult?.AssessmentSupportingDocument?.DocumentIdentification?.IdentifierIssuerReference?.PartyReference,
                    "InvolvementReference": check response?.QualificationTaskResult?.AssessmentSupportingDocument?.DocumentIdentification?.IdentifierIssuerReference?.InvolvementReference
                },
                "IdentifierStartDate": {
                    "DateTimeContent": check response?.QualificationTaskResult?.AssessmentSupportingDocument?.DocumentIdentification?.IdentifierStartDate?.DateTimeContent,
                    "TimeZoneCode": check response?.QualificationTaskResult?.AssessmentSupportingDocument?.DocumentIdentification?.IdentifierStartDate?.TimeZoneCode,
                    "DaylightSavingIndicator": check response?.QualificationTaskResult?.AssessmentSupportingDocument?.DocumentIdentification?.IdentifierStartDate?.DaylightSavingIndicator,
                    "DateTimeType": check response?.QualificationTaskResult?.AssessmentSupportingDocument?.DocumentIdentification?.IdentifierStartDate?.DateTimeType
                },
                "IdentifierEndDate": {
                    "DateTimeContent": check response?.QualificationTaskResult?.AssessmentSupportingDocument?.DocumentIdentification?.IdentifierEndDate?.DateTimeContent,
                    "TimeZoneCode": check response?.QualificationTaskResult?.AssessmentSupportingDocument?.DocumentIdentification?.IdentifierEndDate?.TimeZoneCode,
                    "DaylightSavingIndicator": check response?.QualificationTaskResult?.AssessmentSupportingDocument?.DocumentIdentification?.IdentifierEndDate?.DaylightSavingIndicator,
                    "DateTimeType": check response?.QualificationTaskResult?.AssessmentSupportingDocument?.DocumentIdentification?.IdentifierEndDate?.DateTimeType
                }
            },
            "DocumentVersion": check response?.QualificationTaskResult?.AssessmentSupportingDocument?.DocumentVersion,
            "DocumentType": check response?.QualificationTaskResult?.AssessmentSupportingDocument?.DocumentType,
            "DocumentStatus": {
                "StatusReason": check response?.QualificationTaskResult?.AssessmentSupportingDocument?.DocumentStatus?.StatusReason,
                "StatusDateTime": {
                    "DateTimeContent": check response?.QualificationTaskResult?.AssessmentSupportingDocument?.DocumentStatus?.StatusDateTime?.DateTimeContent,
                    "TimeZoneCode": check response?.QualificationTaskResult?.AssessmentSupportingDocument?.DocumentStatus?.StatusDateTime?.TimeZoneCode,
                    "DaylightSavingIndicator": check response?.QualificationTaskResult?.AssessmentSupportingDocument?.DocumentStatus?.StatusDateTime?.DaylightSavingIndicator,
                    "DateTimeType": check response?.QualificationTaskResult?.AssessmentSupportingDocument?.DocumentStatus?.StatusDateTime?.DateTimeType
                },
                "StatusValidityPeriod": {
                    "FromDateTime": {
                        "DateTimeContent": check response?.QualificationTaskResult?.AssessmentSupportingDocument?.DocumentStatus?.StatusValidityPeriod?.FromDateTime?.DateTimeContent,
                        "TimeZoneCode": check response?.QualificationTaskResult?.AssessmentSupportingDocument?.DocumentStatus?.StatusValidityPeriod?.FromDateTime?.TimeZoneCode,
                        "DaylightSavingIndicator": check response?.QualificationTaskResult?.AssessmentSupportingDocument?.DocumentStatus?.StatusValidityPeriod?.FromDateTime?.DaylightSavingIndicator,
                        "DateTimeType": check response?.QualificationTaskResult?.AssessmentSupportingDocument?.DocumentStatus?.StatusValidityPeriod?.FromDateTime?.DateTimeType
                    },
                    "ToDateTime": {
                        "DateTimeContent": check response?.QualificationTaskResult?.AssessmentSupportingDocument?.DocumentStatus?.StatusValidityPeriod?.ToDateTime?.DateTimeContent,
                        "TimeZoneCode": check response?.QualificationTaskResult?.AssessmentSupportingDocument?.DocumentStatus?.StatusValidityPeriod?.ToDateTime?.TimeZoneCode,
                        "DaylightSavingIndicator": check response?.QualificationTaskResult?.AssessmentSupportingDocument?.DocumentStatus?.StatusValidityPeriod?.ToDateTime?.DaylightSavingIndicator,
                        "DateTimeType": check response?.QualificationTaskResult?.AssessmentSupportingDocument?.DocumentStatus?.StatusValidityPeriod?.ToDateTime?.DateTimeType
                    }
                },
                "StatusInvolvedPartyReference": {
                    "PartyReference": check response?.QualificationTaskResult?.AssessmentSupportingDocument?.DocumentStatus?.StatusInvolvedPartyReference?.PartyReference,
                    "InvolvementReference": check response?.QualificationTaskResult?.AssessmentSupportingDocument?.DocumentStatus?.StatusInvolvedPartyReference?.InvolvementReference
                }
            },
            "DocumentDateTime": {
                "DateTimeContent": check response?.QualificationTaskResult?.AssessmentSupportingDocument?.DocumentDateTime?.DateTimeContent,
                "TimeZoneCode": check response?.QualificationTaskResult?.AssessmentSupportingDocument?.DocumentDateTime?.TimeZoneCode,
                "DaylightSavingIndicator": check response?.QualificationTaskResult?.AssessmentSupportingDocument?.DocumentDateTime?.DaylightSavingIndicator,
                "DateTimeType": check response?.QualificationTaskResult?.AssessmentSupportingDocument?.DocumentDateTime?.DateTimeType
            },
            "DocumentName": {
                "Name": check response?.QualificationTaskResult?.AssessmentSupportingDocument?.DocumentName?.Name
            },
            "DocumentDateTimeType": check response?.QualificationTaskResult?.AssessmentSupportingDocument?.DocumentDateTimeType,
            "DocumentPurpose": check response?.QualificationTaskResult?.AssessmentSupportingDocument?.DocumentPurpose,
            "DocumentFormat": check response?.QualificationTaskResult?.AssessmentSupportingDocument?.DocumentFormat,
            "DocumentSubject": check response?.QualificationTaskResult?.AssessmentSupportingDocument?.DocumentSubject,
            "DocumentDescription": check response?.QualificationTaskResult?.AssessmentSupportingDocument?.DocumentDescription,
            "DocumentValidityPeriod": {
                "FromDateTime": {
                    "DateTimeContent": check response?.QualificationTaskResult?.AssessmentSupportingDocument?.DocumentValidityPeriod?.FromDateTime?.DateTimeContent,
                    "TimeZoneCode": check response?.QualificationTaskResult?.AssessmentSupportingDocument?.DocumentValidityPeriod?.FromDateTime?.TimeZoneCode,
                    "DaylightSavingIndicator": check response?.QualificationTaskResult?.AssessmentSupportingDocument?.DocumentValidityPeriod?.FromDateTime?.DaylightSavingIndicator,
                    "DateTimeType": check response?.QualificationTaskResult?.AssessmentSupportingDocument?.DocumentValidityPeriod?.FromDateTime?.DateTimeType
                },
                "ToDateTime": {
                    "DateTimeContent": check response?.QualificationTaskResult?.AssessmentSupportingDocument?.DocumentValidityPeriod?.ToDateTime?.DateTimeContent,
                    "TimeZoneCode": check response?.QualificationTaskResult?.AssessmentSupportingDocument?.DocumentValidityPeriod?.ToDateTime?.TimeZoneCode,
                    "DaylightSavingIndicator": check response?.QualificationTaskResult?.AssessmentSupportingDocument?.DocumentValidityPeriod?.ToDateTime?.DaylightSavingIndicator,
                    "DateTimeType": check response?.QualificationTaskResult?.AssessmentSupportingDocument?.DocumentValidityPeriod?.ToDateTime?.DateTimeType
                }
            }
        },
        "AssessmentRepresentingDocument": {
            "DocumentIdentification": {
                "IdentifierValue": check response?.QualificationTaskResult?.AssessmentRepresentingDocument?.DocumentIdentification?.IdentifierValue,
                "IdentifierIssuerReference": {
                    "PartyReference": check response?.QualificationTaskResult?.AssessmentRepresentingDocument?.DocumentIdentification?.IdentifierIssuerReference?.PartyReference,
                    "InvolvementReference": check response?.QualificationTaskResult?.AssessmentRepresentingDocument?.DocumentIdentification?.IdentifierIssuerReference?.InvolvementReference
                },
                "IdentifierStartDate": {
                    "DateTimeContent": check response?.QualificationTaskResult?.AssessmentRepresentingDocument?.DocumentIdentification?.IdentifierStartDate?.DateTimeContent,
                    "TimeZoneCode": check response?.QualificationTaskResult?.AssessmentRepresentingDocument?.DocumentIdentification?.IdentifierStartDate?.TimeZoneCode,
                    "DaylightSavingIndicator": check response?.QualificationTaskResult?.AssessmentRepresentingDocument?.DocumentIdentification?.IdentifierStartDate?.DaylightSavingIndicator,
                    "DateTimeType": check response?.QualificationTaskResult?.AssessmentRepresentingDocument?.DocumentIdentification?.IdentifierStartDate?.DateTimeType
                },
                "IdentifierEndDate": {
                    "DateTimeContent": check response?.QualificationTaskResult?.AssessmentRepresentingDocument?.DocumentIdentification?.IdentifierEndDate?.DateTimeContent,
                    "TimeZoneCode": check response?.QualificationTaskResult?.AssessmentRepresentingDocument?.DocumentIdentification?.IdentifierEndDate?.TimeZoneCode,
                    "DaylightSavingIndicator": check response?.QualificationTaskResult?.AssessmentRepresentingDocument?.DocumentIdentification?.IdentifierEndDate?.DaylightSavingIndicator,
                    "DateTimeType": check response?.QualificationTaskResult?.AssessmentRepresentingDocument?.DocumentIdentification?.IdentifierEndDate?.DateTimeType
                }
            },
            "DocumentVersion": check response?.QualificationTaskResult?.AssessmentRepresentingDocument?.DocumentVersion,
            "DocumentType": check response?.QualificationTaskResult?.AssessmentRepresentingDocument?.DocumentType,
            "DocumentStatus": {
                "StatusReason": check response?.QualificationTaskResult?.AssessmentRepresentingDocument?.DocumentStatus?.StatusReason,
                "StatusDateTime": {
                    "DateTimeContent": check response?.QualificationTaskResult?.AssessmentRepresentingDocument?.DocumentStatus?.StatusDateTime?.DateTimeContent,
                    "TimeZoneCode": check response?.QualificationTaskResult?.AssessmentRepresentingDocument?.DocumentStatus?.StatusDateTime?.TimeZoneCode,
                    "DaylightSavingIndicator": check response?.QualificationTaskResult?.AssessmentRepresentingDocument?.DocumentStatus?.StatusDateTime?.DaylightSavingIndicator,
                    "DateTimeType": check response?.QualificationTaskResult?.AssessmentRepresentingDocument?.DocumentStatus?.StatusDateTime?.DateTimeType
                },
                "StatusValidityPeriod": {
                    "FromDateTime": {
                        "DateTimeContent": check response?.QualificationTaskResult?.AssessmentRepresentingDocument?.DocumentStatus?.StatusValidityPeriod?.FromDateTime?.DateTimeContent,
                        "TimeZoneCode": check response?.QualificationTaskResult?.AssessmentRepresentingDocument?.DocumentStatus?.StatusValidityPeriod?.FromDateTime?.TimeZoneCode,
                        "DaylightSavingIndicator": check response?.QualificationTaskResult?.AssessmentRepresentingDocument?.DocumentStatus?.StatusValidityPeriod?.FromDateTime?.DaylightSavingIndicator,
                        "DateTimeType": check response?.QualificationTaskResult?.AssessmentRepresentingDocument?.DocumentStatus?.StatusValidityPeriod?.FromDateTime?.DateTimeType
                    },
                    "ToDateTime": {
                        "DateTimeContent": check response?.QualificationTaskResult?.AssessmentRepresentingDocument?.DocumentStatus?.StatusValidityPeriod?.ToDateTime?.DateTimeContent,
                        "TimeZoneCode": check response?.QualificationTaskResult?.AssessmentRepresentingDocument?.DocumentStatus?.StatusValidityPeriod?.ToDateTime?.TimeZoneCode,
                        "DaylightSavingIndicator": check response?.QualificationTaskResult?.AssessmentRepresentingDocument?.DocumentStatus?.StatusValidityPeriod?.ToDateTime?.DaylightSavingIndicator,
                        "DateTimeType": check response?.QualificationTaskResult?.AssessmentRepresentingDocument?.DocumentStatus?.StatusValidityPeriod?.ToDateTime?.DateTimeType
                    }
                },
                "StatusInvolvedPartyReference": {
                    "PartyReference": check response?.QualificationTaskResult?.AssessmentRepresentingDocument?.DocumentStatus?.StatusInvolvedPartyReference?.PartyReference,
                    "InvolvementReference": check response?.QualificationTaskResult?.AssessmentRepresentingDocument?.DocumentStatus?.StatusInvolvedPartyReference?.InvolvementReference
                }
            },
            "DocumentDateTime": {
                "DateTimeContent": check response?.QualificationTaskResult?.AssessmentRepresentingDocument?.DocumentDateTime?.DateTimeContent,
                "TimeZoneCode": check response?.QualificationTaskResult?.AssessmentRepresentingDocument?.DocumentDateTime?.TimeZoneCode,
                "DaylightSavingIndicator": check response?.QualificationTaskResult?.AssessmentRepresentingDocument?.DocumentDateTime?.DaylightSavingIndicator,
                "DateTimeType": check response?.QualificationTaskResult?.AssessmentRepresentingDocument?.DocumentDateTime?.DateTimeType
            },
            "DocumentName": {
                "Name": check response?.QualificationTaskResult?.AssessmentRepresentingDocument?.DocumentName?.Name
            },
            "DocumentDateTimeType": check response?.QualificationTaskResult?.AssessmentRepresentingDocument?.DocumentDateTimeType,
            "DocumentPurpose": check response?.QualificationTaskResult?.AssessmentRepresentingDocument?.DocumentPurpose,
            "DocumentFormat": check response?.QualificationTaskResult?.AssessmentRepresentingDocument?.DocumentFormat,
            "DocumentSubject": check response?.QualificationTaskResult?.AssessmentRepresentingDocument?.DocumentSubject,
            "DocumentDescription": check response?.QualificationTaskResult?.AssessmentRepresentingDocument?.DocumentDescription,
            "DocumentValidityPeriod": {
                "FromDateTime": {
                    "DateTimeContent": check response?.QualificationTaskResult?.AssessmentRepresentingDocument?.DocumentValidityPeriod?.FromDateTime?.DateTimeContent,
                    "TimeZoneCode": check response?.QualificationTaskResult?.AssessmentRepresentingDocument?.DocumentValidityPeriod?.FromDateTime?.TimeZoneCode,
                    "DaylightSavingIndicator": check response?.QualificationTaskResult?.AssessmentRepresentingDocument?.DocumentValidityPeriod?.FromDateTime?.DaylightSavingIndicator,
                    "DateTimeType": check response?.QualificationTaskResult?.AssessmentRepresentingDocument?.DocumentValidityPeriod?.FromDateTime?.DateTimeType
                },
                "ToDateTime": {
                    "DateTimeContent": check response?.QualificationTaskResult?.AssessmentRepresentingDocument?.DocumentValidityPeriod?.ToDateTime?.DateTimeContent,
                    "TimeZoneCode": check response?.QualificationTaskResult?.AssessmentRepresentingDocument?.DocumentValidityPeriod?.ToDateTime?.TimeZoneCode,
                    "DaylightSavingIndicator": check response?.QualificationTaskResult?.AssessmentRepresentingDocument?.DocumentValidityPeriod?.ToDateTime?.DaylightSavingIndicator,
                    "DateTimeType": check response?.QualificationTaskResult?.AssessmentRepresentingDocument?.DocumentValidityPeriod?.ToDateTime?.DateTimeType
                }
            }
        },
        "AssessmentRequiredAdjustment": check response?.QualificationTaskResult?.AssessmentRequiredAdjustment,
        "AssessmentRequirement": {
            "RequirementType": check response?.QualificationTaskResult?.AssessmentRequirement?.RequirementType
        },
        "AssessmentExpiryDate": {
            "DateContent": check response?.QualificationTaskResult?.AssessmentExpiryDate?.DateContent
        },
        "AssessmentStatus": {
            "StatusReason": check response?.QualificationTaskResult?.AssessmentStatus?.StatusReason,
            "StatusDateTime": {
                "DateTimeContent": check response?.QualificationTaskResult?.AssessmentStatus?.StatusDateTime?.DateTimeContent,
                "TimeZoneCode": check response?.QualificationTaskResult?.AssessmentStatus?.StatusDateTime?.TimeZoneCode,
                "DaylightSavingIndicator": check response?.QualificationTaskResult?.AssessmentStatus?.StatusDateTime?.DaylightSavingIndicator,
                "DateTimeType": check response?.QualificationTaskResult?.AssessmentStatus?.StatusDateTime?.DateTimeType
            },
            "StatusValidityPeriod": {
                "FromDateTime": {
                    "DateTimeContent": check response?.QualificationTaskResult?.AssessmentStatus?.StatusValidityPeriod?.FromDateTime?.DateTimeContent,
                    "TimeZoneCode": check response?.QualificationTaskResult?.AssessmentStatus?.StatusValidityPeriod?.FromDateTime?.TimeZoneCode,
                    "DaylightSavingIndicator": check response?.QualificationTaskResult?.AssessmentStatus?.StatusValidityPeriod?.FromDateTime?.DaylightSavingIndicator,
                    "DateTimeType": check response?.QualificationTaskResult?.AssessmentStatus?.StatusValidityPeriod?.FromDateTime?.DateTimeType
                },
                "ToDateTime": {
                    "DateTimeContent": check response?.QualificationTaskResult?.AssessmentStatus?.StatusValidityPeriod?.ToDateTime?.DateTimeContent,
                    "TimeZoneCode": check response?.QualificationTaskResult?.AssessmentStatus?.StatusValidityPeriod?.ToDateTime?.TimeZoneCode,
                    "DaylightSavingIndicator": check response?.QualificationTaskResult?.AssessmentStatus?.StatusValidityPeriod?.ToDateTime?.DaylightSavingIndicator,
                    "DateTimeType": check response?.QualificationTaskResult?.AssessmentStatus?.StatusValidityPeriod?.ToDateTime?.DateTimeType
                }
            },
            "StatusInvolvedPartyReference": {
                "PartyReference": check response?.QualificationTaskResult?.AssessmentStatus?.StatusInvolvedPartyReference?.PartyReference,
                "InvolvementReference": check response?.QualificationTaskResult?.AssessmentStatus?.StatusInvolvedPartyReference?.InvolvementReference
            }
        },
        "AssessmentIdentification": {
            "IdentifierValue": check response?.QualificationTaskResult?.AssessmentIdentification?.IdentifierValue,
            "IdentifierIssuerReference": {
                "PartyReference": check response?.QualificationTaskResult?.AssessmentIdentification?.IdentifierIssuerReference?.PartyReference,
                "InvolvementReference": check response?.QualificationTaskResult?.AssessmentIdentification?.IdentifierIssuerReference?.InvolvementReference
            },
            "IdentifierStartDate": {
                "DateTimeContent": check response?.QualificationTaskResult?.AssessmentIdentification?.IdentifierStartDate?.DateTimeContent,
                "TimeZoneCode": check response?.QualificationTaskResult?.AssessmentIdentification?.IdentifierStartDate?.TimeZoneCode,
                "DaylightSavingIndicator": check response?.QualificationTaskResult?.AssessmentIdentification?.IdentifierStartDate?.DaylightSavingIndicator,
                "DateTimeType": check response?.QualificationTaskResult?.AssessmentIdentification?.IdentifierStartDate?.DateTimeType
            },
            "IdentifierEndDate": {
                "DateTimeContent": check response?.QualificationTaskResult?.AssessmentIdentification?.IdentifierEndDate?.DateTimeContent,
                "TimeZoneCode": check response?.QualificationTaskResult?.AssessmentIdentification?.IdentifierEndDate?.TimeZoneCode,
                "DaylightSavingIndicator": check response?.QualificationTaskResult?.AssessmentIdentification?.IdentifierEndDate?.DaylightSavingIndicator,
                "DateTimeType": check response?.QualificationTaskResult?.AssessmentIdentification?.IdentifierEndDate?.DateTimeType
            }
        }
    }
};
