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

import ballerinax/financial.bian.attribute.groups.common as common;

isolated function transfromCustomerProductandServiceDirectoryRegisterResponse(json response) returns common:CustomerProductAndServiceDirectoryEntry|error => {
    "CustomerProductAndServiceDirectoryEntryDescription": check response?.CustomerProductAndServiceDirectoryEntryDescription,
    "CustomerProductAndServiceDirectoryEntrySchedule": {
        "ScheduleType": check response?.CustomerProductAndServiceDirectoryEntrySchedule?.ScheduleType
    },
    "CustomerProductAndServiceDirectoryEntryVersion": check response?.CustomerProductAndServiceDirectoryEntryVersion,
    "CustomerProductAndServiceDirectoryEntryStatus": {
        "StatusReason": check response?.CustomerProductAndServiceDirectoryEntryStatus?.StatusReason,
        "StatusDateTime": {
            "DateTimeContent": check response?.CustomerProductAndServiceDirectoryEntryStatus?.StatusDateTime?.DateTimeContent,
            "TimeZoneCode": check response?.CustomerProductAndServiceDirectoryEntryStatus?.StatusDateTime?.TimeZoneCode,
            "DaylightSavingIndicator": check response?.CustomerProductAndServiceDirectoryEntryStatus?.StatusDateTime?.DaylightSavingIndicator,
            "DateTimeType": check response?.CustomerProductAndServiceDirectoryEntryStatus?.StatusDateTime?.DateTimeType
        },
        "StatusValidityPeriod": {
            "FromDateTime": {
                "DateTimeContent": check response?.CustomerProductAndServiceDirectoryEntryStatus?.StatusValidityPeriod?.FromDateTime?.DateTimeContent,
                "TimeZoneCode": check response?.CustomerProductAndServiceDirectoryEntryStatus?.StatusValidityPeriod?.FromDateTime?.TimeZoneCode,
                "DaylightSavingIndicator": check response?.CustomerProductAndServiceDirectoryEntryStatus?.StatusValidityPeriod?.FromDateTime?.DaylightSavingIndicator,
                "DateTimeType": check response?.CustomerProductAndServiceDirectoryEntryStatus?.StatusValidityPeriod?.FromDateTime?.DateTimeType
            },
            "ToDateTime": {
                "DateTimeContent": check response?.CustomerProductAndServiceDirectoryEntryStatus?.StatusValidityPeriod?.ToDateTime?.DateTimeContent,
                "TimeZoneCode": check response?.CustomerProductAndServiceDirectoryEntryStatus?.StatusValidityPeriod?.ToDateTime?.TimeZoneCode,
                "DaylightSavingIndicator": check response?.CustomerProductAndServiceDirectoryEntryStatus?.StatusValidityPeriod?.ToDateTime?.DaylightSavingIndicator,
                "DateTimeType": check response?.CustomerProductAndServiceDirectoryEntryStatus?.StatusValidityPeriod?.ToDateTime?.DateTimeType
            }
        },
        "StatusInvolvedPartyReference": {
            "PartyReference": check response?.CustomerProductAndServiceDirectoryEntryStatus?.StatusInvolvedPartyReference?.PartyReference,
            "InvolvementReference": check response?.CustomerProductAndServiceDirectoryEntryStatus?.StatusInvolvedPartyReference?.InvolvementReference
        }
    },
    "CustomerProductAndServiceDirectoryEntryUsageLog": {
        "LogType": check response?.CustomerProductAndServiceDirectoryEntryUsageLog?.LogType,
        "LogPeriod": {
            "FromDateTime": {
                "DateTimeContent": check response?.CustomerProductAndServiceDirectoryEntryUsageLog?.LogPeriod?.FromDateTime?.DateTimeContent,
                "TimeZoneCode": check response?.CustomerProductAndServiceDirectoryEntryUsageLog?.LogPeriod?.FromDateTime?.TimeZoneCode,
                "DaylightSavingIndicator": check response?.CustomerProductAndServiceDirectoryEntryUsageLog?.LogPeriod?.FromDateTime?.DaylightSavingIndicator,
                "DateTimeType": check response?.CustomerProductAndServiceDirectoryEntryUsageLog?.LogPeriod?.FromDateTime?.DateTimeType
            },
            "ToDateTime": {
                "DateTimeContent": check response?.CustomerProductAndServiceDirectoryEntryUsageLog?.LogPeriod?.ToDateTime?.DateTimeContent,
                "TimeZoneCode": check response?.CustomerProductAndServiceDirectoryEntryUsageLog?.LogPeriod?.ToDateTime?.TimeZoneCode,
                "DaylightSavingIndicator": check response?.CustomerProductAndServiceDirectoryEntryUsageLog?.LogPeriod?.ToDateTime?.DaylightSavingIndicator,
                "DateTimeType": check response?.CustomerProductAndServiceDirectoryEntryUsageLog?.LogPeriod?.ToDateTime?.DateTimeType
            }
        },
        "LogDate": {
            "DateTimeContent": check response?.CustomerProductAndServiceDirectoryEntryUsageLog?.LogDate?.DateTimeContent,
            "TimeZoneCode": check response?.CustomerProductAndServiceDirectoryEntryUsageLog?.LogDate?.TimeZoneCode,
            "DaylightSavingIndicator": check response?.CustomerProductAndServiceDirectoryEntryUsageLog?.LogDate?.DaylightSavingIndicator,
            "DateTimeType": check response?.CustomerProductAndServiceDirectoryEntryUsageLog?.LogDate?.DateTimeType
        },
        "LogIdentification": {
            "IdentifierValue": check response?.CustomerProductAndServiceDirectoryEntryUsageLog?.LogIdentification?.IdentifierValue,
            "IdentifierIssuerReference": {
                "PartyReference": check response?.CustomerProductAndServiceDirectoryEntryUsageLog?.LogIdentification?.IdentifierIssuerReference?.PartyReference,
                "InvolvementReference": check response?.CustomerProductAndServiceDirectoryEntryUsageLog?.LogIdentification?.IdentifierIssuerReference?.InvolvementReference
            },
            "IdentifierStartDate": {
                "DateTimeContent": check response?.CustomerProductAndServiceDirectoryEntryUsageLog?.LogIdentification?.IdentifierStartDate?.DateTimeContent,
                "TimeZoneCode": check response?.CustomerProductAndServiceDirectoryEntryUsageLog?.LogIdentification?.IdentifierStartDate?.TimeZoneCode,
                "DaylightSavingIndicator": check response?.CustomerProductAndServiceDirectoryEntryUsageLog?.LogIdentification?.IdentifierStartDate?.DaylightSavingIndicator,
                "DateTimeType": check response?.CustomerProductAndServiceDirectoryEntryUsageLog?.LogIdentification?.IdentifierStartDate?.DateTimeType
            },
            "IdentifierEndDate": {
                "DateTimeContent": check response?.CustomerProductAndServiceDirectoryEntryUsageLog?.LogIdentification?.IdentifierEndDate?.DateTimeContent,
                "TimeZoneCode": check response?.CustomerProductAndServiceDirectoryEntryUsageLog?.LogIdentification?.IdentifierEndDate?.TimeZoneCode,
                "DaylightSavingIndicator": check response?.CustomerProductAndServiceDirectoryEntryUsageLog?.LogIdentification?.IdentifierEndDate?.DaylightSavingIndicator,
                "DateTimeType": check response?.CustomerProductAndServiceDirectoryEntryUsageLog?.LogIdentification?.IdentifierEndDate?.DateTimeType
            }
        }
    },
    "CustomerProductAndServiceDirectoryEntryUpdateLog": {
        "LogType": check response?.CustomerProductAndServiceDirectoryEntryUpdateLog?.LogType,
        "LogPeriod": {
            "FromDateTime": {
                "DateTimeContent": check response?.CustomerProductAndServiceDirectoryEntryUpdateLog?.LogPeriod?.FromDateTime?.DateTimeContent,
                "TimeZoneCode": check response?.CustomerProductAndServiceDirectoryEntryUpdateLog?.LogPeriod?.FromDateTime?.TimeZoneCode,
                "DaylightSavingIndicator": check response?.CustomerProductAndServiceDirectoryEntryUpdateLog?.LogPeriod?.FromDateTime?.DaylightSavingIndicator,
                "DateTimeType": check response?.CustomerProductAndServiceDirectoryEntryUpdateLog?.LogPeriod?.FromDateTime?.DateTimeType
            },
            "ToDateTime": {
                "DateTimeContent": check response?.CustomerProductAndServiceDirectoryEntryUpdateLog?.LogPeriod?.ToDateTime?.DateTimeContent,
                "TimeZoneCode": check response?.CustomerProductAndServiceDirectoryEntryUpdateLog?.LogPeriod?.ToDateTime?.TimeZoneCode,
                "DaylightSavingIndicator": check response?.CustomerProductAndServiceDirectoryEntryUpdateLog?.LogPeriod?.ToDateTime?.DaylightSavingIndicator,
                "DateTimeType": check response?.CustomerProductAndServiceDirectoryEntryUpdateLog?.LogPeriod?.ToDateTime?.DateTimeType
            }
        },
        "LogDate": {
            "DateTimeContent": check response?.CustomerProductAndServiceDirectoryEntryUpdateLog?.LogDate?.DateTimeContent,
            "TimeZoneCode": check response?.CustomerProductAndServiceDirectoryEntryUpdateLog?.LogDate?.TimeZoneCode,
            "DaylightSavingIndicator": check response?.CustomerProductAndServiceDirectoryEntryUpdateLog?.LogDate?.DaylightSavingIndicator,
            "DateTimeType": check response?.CustomerProductAndServiceDirectoryEntryUpdateLog?.LogDate?.DateTimeType
        },
        "LogIdentification": {
            "IdentifierValue": check response?.CustomerProductAndServiceDirectoryEntryUpdateLog?.LogIdentification?.IdentifierValue,
            "IdentifierIssuerReference": {
                "PartyReference": check response?.CustomerProductAndServiceDirectoryEntryUpdateLog?.LogIdentification?.IdentifierIssuerReference?.PartyReference,
                "InvolvementReference": check response?.CustomerProductAndServiceDirectoryEntryUpdateLog?.LogIdentification?.IdentifierIssuerReference?.InvolvementReference
            },
            "IdentifierStartDate": {
                "DateTimeContent": check response?.CustomerProductAndServiceDirectoryEntryUpdateLog?.LogIdentification?.IdentifierStartDate?.DateTimeContent,
                "TimeZoneCode": check response?.CustomerProductAndServiceDirectoryEntryUpdateLog?.LogIdentification?.IdentifierStartDate?.TimeZoneCode,
                "DaylightSavingIndicator": check response?.CustomerProductAndServiceDirectoryEntryUpdateLog?.LogIdentification?.IdentifierStartDate?.DaylightSavingIndicator,
                "DateTimeType": check response?.CustomerProductAndServiceDirectoryEntryUpdateLog?.LogIdentification?.IdentifierStartDate?.DateTimeType
            },
            "IdentifierEndDate": {
                "DateTimeContent": check response?.CustomerProductAndServiceDirectoryEntryUpdateLog?.LogIdentification?.IdentifierEndDate?.DateTimeContent,
                "TimeZoneCode": check response?.CustomerProductAndServiceDirectoryEntryUpdateLog?.LogIdentification?.IdentifierEndDate?.TimeZoneCode,
                "DaylightSavingIndicator": check response?.CustomerProductAndServiceDirectoryEntryUpdateLog?.LogIdentification?.IdentifierEndDate?.DaylightSavingIndicator,
                "DateTimeType": check response?.CustomerProductAndServiceDirectoryEntryUpdateLog?.LogIdentification?.IdentifierEndDate?.DateTimeType
            }
        }
    },
    "CustomerProductAndServiceDirectoryEntryServiceConfiguration": check response?.CustomerProductAndServiceDirectoryEntryServiceConfiguration,
    "CustomerProductAndServiceDirectoryEntryInstanceReference": {
        "IdentifierValue": check response?.CustomerProductAndServiceDirectoryEntryInstanceReference?.IdentifierValue,
        "IdentifierIssuerReference": {
            "PartyReference": check response?.CustomerProductAndServiceDirectoryEntryInstanceReference?.IdentifierIssuerReference?.PartyReference,
            "InvolvementReference": check response?.CustomerProductAndServiceDirectoryEntryInstanceReference?.IdentifierIssuerReference?.InvolvementReference
        },
        "IdentifierStartDate": {
            "DateTimeContent": check response?.CustomerProductAndServiceDirectoryEntryInstanceReference?.IdentifierStartDate?.DateTimeContent,
            "TimeZoneCode": check response?.CustomerProductAndServiceDirectoryEntryInstanceReference?.IdentifierStartDate?.TimeZoneCode,
            "DaylightSavingIndicator": check response?.CustomerProductAndServiceDirectoryEntryInstanceReference?.IdentifierStartDate?.DaylightSavingIndicator,
            "DateTimeType": check response?.CustomerProductAndServiceDirectoryEntryInstanceReference?.IdentifierStartDate?.DateTimeType
        },
        "IdentifierEndDate": {
            "DateTimeContent": check response?.CustomerProductAndServiceDirectoryEntryInstanceReference?.IdentifierEndDate?.DateTimeContent,
            "TimeZoneCode": check response?.CustomerProductAndServiceDirectoryEntryInstanceReference?.IdentifierEndDate?.TimeZoneCode,
            "DaylightSavingIndicator": check response?.CustomerProductAndServiceDirectoryEntryInstanceReference?.IdentifierEndDate?.DaylightSavingIndicator,
            "DateTimeType": check response?.CustomerProductAndServiceDirectoryEntryInstanceReference?.IdentifierEndDate?.DateTimeType
        }
    },
    "CustomerReference": {
        "PartyReference": check response?.CustomerReference?.PartyReference,
        "InvolvementReference": check response?.CustomerReference?.InvolvementReference
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
    "ServicerReference": {
        "PartyReference": check response?.ServicerReference?.PartyReference,
        "InvolvementReference": check response?.ServicerReference?.InvolvementReference
    },
    "ServiceAgreementReference": {
        "Type": check response?.ServiceAgreementReference?.Type,
        "ServiceReference": {
            "ServiceInstanceReference": {
                "IdentifierValue": check response?.ServiceAgreementReference?.ServiceReference?.ServiceInstanceReference?.IdentifierValue,
                "IdentifierIssuerReference": {
                    "PartyReference": check response?.ServiceAgreementReference?.ServiceReference?.ServiceInstanceReference?.IdentifierIssuerReference?.PartyReference,
                    "InvolvementReference": check response?.ServiceAgreementReference?.ServiceReference?.ServiceInstanceReference?.IdentifierIssuerReference?.InvolvementReference
                },
                "IdentifierStartDate": {
                    "DateTimeContent": check response?.ServiceAgreementReference?.ServiceReference?.ServiceInstanceReference?.IdentifierStartDate?.DateTimeContent,
                    "TimeZoneCode": check response?.ServiceAgreementReference?.ServiceReference?.ServiceInstanceReference?.IdentifierStartDate?.TimeZoneCode,
                    "DaylightSavingIndicator": check response?.ServiceAgreementReference?.ServiceReference?.ServiceInstanceReference?.IdentifierStartDate?.DaylightSavingIndicator,
                    "DateTimeType": check response?.ServiceAgreementReference?.ServiceReference?.ServiceInstanceReference?.IdentifierStartDate?.DateTimeType
                },
                "IdentifierEndDate": {
                    "DateTimeContent": check response?.ServiceAgreementReference?.ServiceReference?.ServiceInstanceReference?.IdentifierEndDate?.DateTimeContent,
                    "TimeZoneCode": check response?.ServiceAgreementReference?.ServiceReference?.ServiceInstanceReference?.IdentifierEndDate?.TimeZoneCode,
                    "DaylightSavingIndicator": check response?.ServiceAgreementReference?.ServiceReference?.ServiceInstanceReference?.IdentifierEndDate?.DaylightSavingIndicator,
                    "DateTimeType": check response?.ServiceAgreementReference?.ServiceReference?.ServiceInstanceReference?.IdentifierEndDate?.DateTimeType
                }
            },
            "ServiceIdentification": {
                "IdentifierValue": check response?.ServiceAgreementReference?.ServiceReference?.ServiceIdentification?.IdentifierValue,
                "IdentifierIssuerReference": {
                    "PartyReference": check response?.ServiceAgreementReference?.ServiceReference?.ServiceIdentification?.IdentifierIssuerReference?.PartyReference,
                    "InvolvementReference": check response?.ServiceAgreementReference?.ServiceReference?.ServiceIdentification?.IdentifierIssuerReference?.InvolvementReference
                },
                "IdentifierStartDate": {
                    "DateTimeContent": check response?.ServiceAgreementReference?.ServiceReference?.ServiceIdentification?.IdentifierStartDate?.DateTimeContent,
                    "TimeZoneCode": check response?.ServiceAgreementReference?.ServiceReference?.ServiceIdentification?.IdentifierStartDate?.TimeZoneCode,
                    "DaylightSavingIndicator": check response?.ServiceAgreementReference?.ServiceReference?.ServiceIdentification?.IdentifierStartDate?.DaylightSavingIndicator,
                    "DateTimeType": check response?.ServiceAgreementReference?.ServiceReference?.ServiceIdentification?.IdentifierStartDate?.DateTimeType
                },
                "IdentifierEndDate": {
                    "DateTimeContent": check response?.ServiceAgreementReference?.ServiceReference?.ServiceIdentification?.IdentifierEndDate?.DateTimeContent,
                    "TimeZoneCode": check response?.ServiceAgreementReference?.ServiceReference?.ServiceIdentification?.IdentifierEndDate?.TimeZoneCode,
                    "DaylightSavingIndicator": check response?.ServiceAgreementReference?.ServiceReference?.ServiceIdentification?.IdentifierEndDate?.DaylightSavingIndicator,
                    "DateTimeType": check response?.ServiceAgreementReference?.ServiceReference?.ServiceIdentification?.IdentifierEndDate?.DateTimeType
                }
            },
            "ServiceDescription": check response?.ServiceAgreementReference?.ServiceReference?.ServiceDescription,
            "ServiceType": check response?.ServiceAgreementReference?.ServiceReference?.ServiceType,
            "ServiceName": {
                "Name": check response?.ServiceAgreementReference?.ServiceReference?.ServiceName?.Name
            },
            "ServiceLifecycleStatus": {
                "StatusReason": check response?.ServiceAgreementReference?.ServiceReference?.ServiceLifecycleStatus?.StatusReason,
                "StatusDateTime": {
                    "DateTimeContent": check response?.ServiceAgreementReference?.ServiceReference?.ServiceLifecycleStatus?.StatusDateTime?.DateTimeContent,
                    "TimeZoneCode": check response?.ServiceAgreementReference?.ServiceReference?.ServiceLifecycleStatus?.StatusDateTime?.TimeZoneCode,
                    "DaylightSavingIndicator": check response?.ServiceAgreementReference?.ServiceReference?.ServiceLifecycleStatus?.StatusDateTime?.DaylightSavingIndicator,
                    "DateTimeType": check response?.ServiceAgreementReference?.ServiceReference?.ServiceLifecycleStatus?.StatusDateTime?.DateTimeType
                },
                "StatusValidityPeriod": {
                    "FromDateTime": {
                        "DateTimeContent": check response?.ServiceAgreementReference?.ServiceReference?.ServiceLifecycleStatus?.StatusValidityPeriod?.FromDateTime?.DateTimeContent,
                        "TimeZoneCode": check response?.ServiceAgreementReference?.ServiceReference?.ServiceLifecycleStatus?.StatusValidityPeriod?.FromDateTime?.TimeZoneCode,
                        "DaylightSavingIndicator": check response?.ServiceAgreementReference?.ServiceReference?.ServiceLifecycleStatus?.StatusValidityPeriod?.FromDateTime?.DaylightSavingIndicator,
                        "DateTimeType": check response?.ServiceAgreementReference?.ServiceReference?.ServiceLifecycleStatus?.StatusValidityPeriod?.FromDateTime?.DateTimeType
                    },
                    "ToDateTime": {
                        "DateTimeContent": check response?.ServiceAgreementReference?.ServiceReference?.ServiceLifecycleStatus?.StatusValidityPeriod?.ToDateTime?.DateTimeContent,
                        "TimeZoneCode": check response?.ServiceAgreementReference?.ServiceReference?.ServiceLifecycleStatus?.StatusValidityPeriod?.ToDateTime?.TimeZoneCode,
                        "DaylightSavingIndicator": check response?.ServiceAgreementReference?.ServiceReference?.ServiceLifecycleStatus?.StatusValidityPeriod?.ToDateTime?.DaylightSavingIndicator,
                        "DateTimeType": check response?.ServiceAgreementReference?.ServiceReference?.ServiceLifecycleStatus?.StatusValidityPeriod?.ToDateTime?.DateTimeType
                    }
                },
                "StatusInvolvedPartyReference": {
                    "PartyReference": check response?.ServiceAgreementReference?.ServiceReference?.ServiceLifecycleStatus?.StatusInvolvedPartyReference?.PartyReference,
                    "InvolvementReference": check response?.ServiceAgreementReference?.ServiceReference?.ServiceLifecycleStatus?.StatusInvolvedPartyReference?.InvolvementReference
                }
            },
            "ServiceFeature": {
                "FeatureType": check response?.ServiceAgreementReference?.ServiceReference?.ServiceFeature?.FeatureType,
                "FeatureIdentification": {
                    "IdentifierValue": check response?.ServiceAgreementReference?.ServiceReference?.ServiceFeature?.FeatureIdentification?.IdentifierValue,
                    "IdentifierIssuerReference": {
                        "PartyReference": check response?.ServiceAgreementReference?.ServiceReference?.ServiceFeature?.FeatureIdentification?.IdentifierIssuerReference?.PartyReference,
                        "InvolvementReference": check response?.ServiceAgreementReference?.ServiceReference?.ServiceFeature?.FeatureIdentification?.IdentifierIssuerReference?.InvolvementReference
                    },
                    "IdentifierStartDate": {
                        "DateTimeContent": check response?.ServiceAgreementReference?.ServiceReference?.ServiceFeature?.FeatureIdentification?.IdentifierStartDate?.DateTimeContent,
                        "TimeZoneCode": check response?.ServiceAgreementReference?.ServiceReference?.ServiceFeature?.FeatureIdentification?.IdentifierStartDate?.TimeZoneCode,
                        "DaylightSavingIndicator": check response?.ServiceAgreementReference?.ServiceReference?.ServiceFeature?.FeatureIdentification?.IdentifierStartDate?.DaylightSavingIndicator,
                        "DateTimeType": check response?.ServiceAgreementReference?.ServiceReference?.ServiceFeature?.FeatureIdentification?.IdentifierStartDate?.DateTimeType
                    },
                    "IdentifierEndDate": {
                        "DateTimeContent": check response?.ServiceAgreementReference?.ServiceReference?.ServiceFeature?.FeatureIdentification?.IdentifierEndDate?.DateTimeContent,
                        "TimeZoneCode": check response?.ServiceAgreementReference?.ServiceReference?.ServiceFeature?.FeatureIdentification?.IdentifierEndDate?.TimeZoneCode,
                        "DaylightSavingIndicator": check response?.ServiceAgreementReference?.ServiceReference?.ServiceFeature?.FeatureIdentification?.IdentifierEndDate?.DaylightSavingIndicator,
                        "DateTimeType": check response?.ServiceAgreementReference?.ServiceReference?.ServiceFeature?.FeatureIdentification?.IdentifierEndDate?.DateTimeType
                    }
                },
                "FeatureName": {
                    "Name": check response?.ServiceAgreementReference?.ServiceReference?.ServiceFeature?.FeatureName?.Name
                },
                "FeatureLifecycleStatus": {
                    "StatusReason": check response?.ServiceAgreementReference?.ServiceReference?.ServiceFeature?.FeatureLifecycleStatus?.StatusReason,
                    "StatusDateTime": {
                        "DateTimeContent": check response?.ServiceAgreementReference?.ServiceReference?.ServiceFeature?.FeatureLifecycleStatus?.StatusDateTime?.DateTimeContent,
                        "TimeZoneCode": check response?.ServiceAgreementReference?.ServiceReference?.ServiceFeature?.FeatureLifecycleStatus?.StatusDateTime?.TimeZoneCode,
                        "DaylightSavingIndicator": check response?.ServiceAgreementReference?.ServiceReference?.ServiceFeature?.FeatureLifecycleStatus?.StatusDateTime?.DaylightSavingIndicator,
                        "DateTimeType": check response?.ServiceAgreementReference?.ServiceReference?.ServiceFeature?.FeatureLifecycleStatus?.StatusDateTime?.DateTimeType
                    },
                    "StatusValidityPeriod": {
                        "FromDateTime": {
                            "DateTimeContent": check response?.ServiceAgreementReference?.ServiceReference?.ServiceFeature?.FeatureLifecycleStatus?.StatusValidityPeriod?.FromDateTime?.DateTimeContent,
                            "TimeZoneCode": check response?.ServiceAgreementReference?.ServiceReference?.ServiceFeature?.FeatureLifecycleStatus?.StatusValidityPeriod?.FromDateTime?.TimeZoneCode,
                            "DaylightSavingIndicator": check response?.ServiceAgreementReference?.ServiceReference?.ServiceFeature?.FeatureLifecycleStatus?.StatusValidityPeriod?.FromDateTime?.DaylightSavingIndicator,
                            "DateTimeType": check response?.ServiceAgreementReference?.ServiceReference?.ServiceFeature?.FeatureLifecycleStatus?.StatusValidityPeriod?.FromDateTime?.DateTimeType
                        },
                        "ToDateTime": {
                            "DateTimeContent": check response?.ServiceAgreementReference?.ServiceReference?.ServiceFeature?.FeatureLifecycleStatus?.StatusValidityPeriod?.ToDateTime?.DateTimeContent,
                            "TimeZoneCode": check response?.ServiceAgreementReference?.ServiceReference?.ServiceFeature?.FeatureLifecycleStatus?.StatusValidityPeriod?.ToDateTime?.TimeZoneCode,
                            "DaylightSavingIndicator": check response?.ServiceAgreementReference?.ServiceReference?.ServiceFeature?.FeatureLifecycleStatus?.StatusValidityPeriod?.ToDateTime?.DaylightSavingIndicator,
                            "DateTimeType": check response?.ServiceAgreementReference?.ServiceReference?.ServiceFeature?.FeatureLifecycleStatus?.StatusValidityPeriod?.ToDateTime?.DateTimeType
                        }
                    },
                    "StatusInvolvedPartyReference": {
                        "PartyReference": check response?.ServiceAgreementReference?.ServiceReference?.ServiceFeature?.FeatureLifecycleStatus?.StatusInvolvedPartyReference?.PartyReference,
                        "InvolvementReference": check response?.ServiceAgreementReference?.ServiceReference?.ServiceFeature?.FeatureLifecycleStatus?.StatusInvolvedPartyReference?.InvolvementReference
                    }
                },
                "FeatureDescription": check response?.ServiceAgreementReference?.ServiceReference?.ServiceFeature?.FeatureDescription
            }
        },
        "AgreementReference": {
            "Agreement": check response?.ServiceAgreementReference?.AgreementReference?.Agreement
        },
        "AgreementSignedDate": {
            "DateContent": check response?.ServiceAgreementReference?.AgreementSignedDate?.DateContent
        },
        "AgreementType": check response?.ServiceAgreementReference?.AgreementType,
        "AgreementValidityPeriod": {
            "FromDateTime": {
                "DateTimeContent": check response?.ServiceAgreementReference?.AgreementValidityPeriod?.FromDateTime?.DateTimeContent,
                "TimeZoneCode": check response?.ServiceAgreementReference?.AgreementValidityPeriod?.FromDateTime?.TimeZoneCode,
                "DaylightSavingIndicator": check response?.ServiceAgreementReference?.AgreementValidityPeriod?.FromDateTime?.DaylightSavingIndicator,
                "DateTimeType": check response?.ServiceAgreementReference?.AgreementValidityPeriod?.FromDateTime?.DateTimeType
            },
            "ToDateTime": {
                "DateTimeContent": check response?.ServiceAgreementReference?.AgreementValidityPeriod?.ToDateTime?.DateTimeContent,
                "TimeZoneCode": check response?.ServiceAgreementReference?.AgreementValidityPeriod?.ToDateTime?.TimeZoneCode,
                "DaylightSavingIndicator": check response?.ServiceAgreementReference?.AgreementValidityPeriod?.ToDateTime?.DaylightSavingIndicator,
                "DateTimeType": check response?.ServiceAgreementReference?.AgreementValidityPeriod?.ToDateTime?.DateTimeType
            }
        },
        "AgreementVersion": check response?.ServiceAgreementReference?.AgreementVersion,
        "AgreementStatus": {
            "AgreementStatus": {
                "StatusReason": check response?.ServiceAgreementReference?.AgreementStatus?.AgreementStatus?.StatusReason,
                "StatusDateTime": {
                    "DateTimeContent": check response?.ServiceAgreementReference?.AgreementStatus?.AgreementStatus?.StatusDateTime?.DateTimeContent,
                    "TimeZoneCode": check response?.ServiceAgreementReference?.AgreementStatus?.AgreementStatus?.StatusDateTime?.TimeZoneCode,
                    "DaylightSavingIndicator": check response?.ServiceAgreementReference?.AgreementStatus?.AgreementStatus?.StatusDateTime?.DaylightSavingIndicator,
                    "DateTimeType": check response?.ServiceAgreementReference?.AgreementStatus?.AgreementStatus?.StatusDateTime?.DateTimeType
                },
                "StatusValidityPeriod": {
                    "FromDateTime": {
                        "DateTimeContent": check response?.ServiceAgreementReference?.AgreementStatus?.AgreementStatus?.StatusValidityPeriod?.FromDateTime?.DateTimeContent,
                        "TimeZoneCode": check response?.ServiceAgreementReference?.AgreementStatus?.AgreementStatus?.StatusValidityPeriod?.FromDateTime?.TimeZoneCode,
                        "DaylightSavingIndicator": check response?.ServiceAgreementReference?.AgreementStatus?.AgreementStatus?.StatusValidityPeriod?.FromDateTime?.DaylightSavingIndicator,
                        "DateTimeType": check response?.ServiceAgreementReference?.AgreementStatus?.AgreementStatus?.StatusValidityPeriod?.FromDateTime?.DateTimeType
                    },
                    "ToDateTime": {
                        "DateTimeContent": check response?.ServiceAgreementReference?.AgreementStatus?.AgreementStatus?.StatusValidityPeriod?.ToDateTime?.DateTimeContent,
                        "TimeZoneCode": check response?.ServiceAgreementReference?.AgreementStatus?.AgreementStatus?.StatusValidityPeriod?.ToDateTime?.TimeZoneCode,
                        "DaylightSavingIndicator": check response?.ServiceAgreementReference?.AgreementStatus?.AgreementStatus?.StatusValidityPeriod?.ToDateTime?.DaylightSavingIndicator,
                        "DateTimeType": check response?.ServiceAgreementReference?.AgreementStatus?.AgreementStatus?.StatusValidityPeriod?.ToDateTime?.DateTimeType
                    }
                },
                "StatusInvolvedPartyReference": {
                    "PartyReference": check response?.ServiceAgreementReference?.AgreementStatus?.AgreementStatus?.StatusInvolvedPartyReference?.PartyReference,
                    "InvolvementReference": check response?.ServiceAgreementReference?.AgreementStatus?.AgreementStatus?.StatusInvolvedPartyReference?.InvolvementReference
                }
            },
            "AgreementStatusType": check response?.ServiceAgreementReference?.AgreementStatus?.AgreementStatusType
        },
        "AgreementSubjectMatter": check response?.ServiceAgreementReference?.AgreementSubjectMatter,
        "AgreementIdentification": {
            "IdentifierValue": check response?.ServiceAgreementReference?.AgreementIdentification?.IdentifierValue,
            "IdentifierIssuerReference": {
                "PartyReference": check response?.ServiceAgreementReference?.AgreementIdentification?.IdentifierIssuerReference?.PartyReference,
                "InvolvementReference": check response?.ServiceAgreementReference?.AgreementIdentification?.IdentifierIssuerReference?.InvolvementReference
            },
            "IdentifierStartDate": {
                "DateTimeContent": check response?.ServiceAgreementReference?.AgreementIdentification?.IdentifierStartDate?.DateTimeContent,
                "TimeZoneCode": check response?.ServiceAgreementReference?.AgreementIdentification?.IdentifierStartDate?.TimeZoneCode,
                "DaylightSavingIndicator": check response?.ServiceAgreementReference?.AgreementIdentification?.IdentifierStartDate?.DaylightSavingIndicator,
                "DateTimeType": check response?.ServiceAgreementReference?.AgreementIdentification?.IdentifierStartDate?.DateTimeType
            },
            "IdentifierEndDate": {
                "DateTimeContent": check response?.ServiceAgreementReference?.AgreementIdentification?.IdentifierEndDate?.DateTimeContent,
                "TimeZoneCode": check response?.ServiceAgreementReference?.AgreementIdentification?.IdentifierEndDate?.TimeZoneCode,
                "DaylightSavingIndicator": check response?.ServiceAgreementReference?.AgreementIdentification?.IdentifierEndDate?.DaylightSavingIndicator,
                "DateTimeType": check response?.ServiceAgreementReference?.AgreementIdentification?.IdentifierEndDate?.DateTimeType
            }
        },
        "AgreementDate": {
            "DateTimeContent": check response?.ServiceAgreementReference?.AgreementDate?.DateTimeContent,
            "TimeZoneCode": check response?.ServiceAgreementReference?.AgreementDate?.TimeZoneCode,
            "DaylightSavingIndicator": check response?.ServiceAgreementReference?.AgreementDate?.DaylightSavingIndicator,
            "DateTimeType": check response?.ServiceAgreementReference?.AgreementDate?.DateTimeType
        },
        "AgreementDescription": check response?.ServiceAgreementReference?.AgreementDescription
    }
};

isolated function transformCustomerProductandServiceDirectoryRetrievalResponse(json response) returns common:CustomerProductAndServiceDirectoryEntry|error => {
    "CustomerProductAndServiceDirectoryEntryDescription": check response?.CustomerProductAndServiceDirectoryEntryDescription,
    "CustomerProductAndServiceDirectoryEntrySchedule": {
        "ScheduleType": check response?.CustomerProductAndServiceDirectoryEntrySchedule?.ScheduleType
    },
    "CustomerProductAndServiceDirectoryEntryVersion": check response?.CustomerProductAndServiceDirectoryEntryVersion,
    "CustomerProductAndServiceDirectoryEntryStatus": {
        "StatusReason": check response?.CustomerProductAndServiceDirectoryEntryStatus?.StatusReason,
        "StatusDateTime": {
            "DateTimeContent": check response?.CustomerProductAndServiceDirectoryEntryStatus?.StatusDateTime?.DateTimeContent,
            "TimeZoneCode": check response?.CustomerProductAndServiceDirectoryEntryStatus?.StatusDateTime?.TimeZoneCode,
            "DaylightSavingIndicator": check response?.CustomerProductAndServiceDirectoryEntryStatus?.StatusDateTime?.DaylightSavingIndicator,
            "DateTimeType": check response?.CustomerProductAndServiceDirectoryEntryStatus?.StatusDateTime?.DateTimeType
        },
        "StatusValidityPeriod": {
            "FromDateTime": {
                "DateTimeContent": check response?.CustomerProductAndServiceDirectoryEntryStatus?.StatusValidityPeriod?.FromDateTime?.DateTimeContent,
                "TimeZoneCode": check response?.CustomerProductAndServiceDirectoryEntryStatus?.StatusValidityPeriod?.FromDateTime?.TimeZoneCode,
                "DaylightSavingIndicator": check response?.CustomerProductAndServiceDirectoryEntryStatus?.StatusValidityPeriod?.FromDateTime?.DaylightSavingIndicator,
                "DateTimeType": check response?.CustomerProductAndServiceDirectoryEntryStatus?.StatusValidityPeriod?.FromDateTime?.DateTimeType
            },
            "ToDateTime": {
                "DateTimeContent": check response?.CustomerProductAndServiceDirectoryEntryStatus?.StatusValidityPeriod?.ToDateTime?.DateTimeContent,
                "TimeZoneCode": check response?.CustomerProductAndServiceDirectoryEntryStatus?.StatusValidityPeriod?.ToDateTime?.TimeZoneCode,
                "DaylightSavingIndicator": check response?.CustomerProductAndServiceDirectoryEntryStatus?.StatusValidityPeriod?.ToDateTime?.DaylightSavingIndicator,
                "DateTimeType": check response?.CustomerProductAndServiceDirectoryEntryStatus?.StatusValidityPeriod?.ToDateTime?.DateTimeType
            }
        },
        "StatusInvolvedPartyReference": {
            "PartyReference": check response?.CustomerProductAndServiceDirectoryEntryStatus?.StatusInvolvedPartyReference?.PartyReference,
            "InvolvementReference": check response?.CustomerProductAndServiceDirectoryEntryStatus?.StatusInvolvedPartyReference?.InvolvementReference
        }
    },
    "CustomerProductAndServiceDirectoryEntryUsageLog": {
        "LogType": check response?.CustomerProductAndServiceDirectoryEntryUsageLog?.LogType,
        "LogPeriod": {
            "FromDateTime": {
                "DateTimeContent": check response?.CustomerProductAndServiceDirectoryEntryUsageLog?.LogPeriod?.FromDateTime?.DateTimeContent,
                "TimeZoneCode": check response?.CustomerProductAndServiceDirectoryEntryUsageLog?.LogPeriod?.FromDateTime?.TimeZoneCode,
                "DaylightSavingIndicator": check response?.CustomerProductAndServiceDirectoryEntryUsageLog?.LogPeriod?.FromDateTime?.DaylightSavingIndicator,
                "DateTimeType": check response?.CustomerProductAndServiceDirectoryEntryUsageLog?.LogPeriod?.FromDateTime?.DateTimeType
            },
            "ToDateTime": {
                "DateTimeContent": check response?.CustomerProductAndServiceDirectoryEntryUsageLog?.LogPeriod?.ToDateTime?.DateTimeContent,
                "TimeZoneCode": check response?.CustomerProductAndServiceDirectoryEntryUsageLog?.LogPeriod?.ToDateTime?.TimeZoneCode,
                "DaylightSavingIndicator": check response?.CustomerProductAndServiceDirectoryEntryUsageLog?.LogPeriod?.ToDateTime?.DaylightSavingIndicator,
                "DateTimeType": check response?.CustomerProductAndServiceDirectoryEntryUsageLog?.LogPeriod?.ToDateTime?.DateTimeType
            }
        },
        "LogDate": {
            "DateTimeContent": check response?.CustomerProductAndServiceDirectoryEntryUsageLog?.LogDate?.DateTimeContent,
            "TimeZoneCode": check response?.CustomerProductAndServiceDirectoryEntryUsageLog?.LogDate?.TimeZoneCode,
            "DaylightSavingIndicator": check response?.CustomerProductAndServiceDirectoryEntryUsageLog?.LogDate?.DaylightSavingIndicator,
            "DateTimeType": check response?.CustomerProductAndServiceDirectoryEntryUsageLog?.LogDate?.DateTimeType
        },
        "LogIdentification": {
            "IdentifierValue": check response?.CustomerProductAndServiceDirectoryEntryUsageLog?.LogIdentification?.IdentifierValue,
            "IdentifierIssuerReference": {
                "PartyReference": check response?.CustomerProductAndServiceDirectoryEntryUsageLog?.LogIdentification?.IdentifierIssuerReference?.PartyReference,
                "InvolvementReference": check response?.CustomerProductAndServiceDirectoryEntryUsageLog?.LogIdentification?.IdentifierIssuerReference?.InvolvementReference
            },
            "IdentifierStartDate": {
                "DateTimeContent": check response?.CustomerProductAndServiceDirectoryEntryUsageLog?.LogIdentification?.IdentifierStartDate?.DateTimeContent,
                "TimeZoneCode": check response?.CustomerProductAndServiceDirectoryEntryUsageLog?.LogIdentification?.IdentifierStartDate?.TimeZoneCode,
                "DaylightSavingIndicator": check response?.CustomerProductAndServiceDirectoryEntryUsageLog?.LogIdentification?.IdentifierStartDate?.DaylightSavingIndicator,
                "DateTimeType": check response?.CustomerProductAndServiceDirectoryEntryUsageLog?.LogIdentification?.IdentifierStartDate?.DateTimeType
            },
            "IdentifierEndDate": {
                "DateTimeContent": check response?.CustomerProductAndServiceDirectoryEntryUsageLog?.LogIdentification?.IdentifierEndDate?.DateTimeContent,
                "TimeZoneCode": check response?.CustomerProductAndServiceDirectoryEntryUsageLog?.LogIdentification?.IdentifierEndDate?.TimeZoneCode,
                "DaylightSavingIndicator": check response?.CustomerProductAndServiceDirectoryEntryUsageLog?.LogIdentification?.IdentifierEndDate?.DaylightSavingIndicator,
                "DateTimeType": check response?.CustomerProductAndServiceDirectoryEntryUsageLog?.LogIdentification?.IdentifierEndDate?.DateTimeType
            }
        }
    },
    "CustomerProductAndServiceDirectoryEntryUpdateLog": {
        "LogType": check response?.CustomerProductAndServiceDirectoryEntryUpdateLog?.LogType,
        "LogPeriod": {
            "FromDateTime": {
                "DateTimeContent": check response?.CustomerProductAndServiceDirectoryEntryUpdateLog?.LogPeriod?.FromDateTime?.DateTimeContent,
                "TimeZoneCode": check response?.CustomerProductAndServiceDirectoryEntryUpdateLog?.LogPeriod?.FromDateTime?.TimeZoneCode,
                "DaylightSavingIndicator": check response?.CustomerProductAndServiceDirectoryEntryUpdateLog?.LogPeriod?.FromDateTime?.DaylightSavingIndicator,
                "DateTimeType": check response?.CustomerProductAndServiceDirectoryEntryUpdateLog?.LogPeriod?.FromDateTime?.DateTimeType
            },
            "ToDateTime": {
                "DateTimeContent": check response?.CustomerProductAndServiceDirectoryEntryUpdateLog?.LogPeriod?.ToDateTime?.DateTimeContent,
                "TimeZoneCode": check response?.CustomerProductAndServiceDirectoryEntryUpdateLog?.LogPeriod?.ToDateTime?.TimeZoneCode,
                "DaylightSavingIndicator": check response?.CustomerProductAndServiceDirectoryEntryUpdateLog?.LogPeriod?.ToDateTime?.DaylightSavingIndicator,
                "DateTimeType": check response?.CustomerProductAndServiceDirectoryEntryUpdateLog?.LogPeriod?.ToDateTime?.DateTimeType
            }
        },
        "LogDate": {
            "DateTimeContent": check response?.CustomerProductAndServiceDirectoryEntryUpdateLog?.LogDate?.DateTimeContent,
            "TimeZoneCode": check response?.CustomerProductAndServiceDirectoryEntryUpdateLog?.LogDate?.TimeZoneCode,
            "DaylightSavingIndicator": check response?.CustomerProductAndServiceDirectoryEntryUpdateLog?.LogDate?.DaylightSavingIndicator,
            "DateTimeType": check response?.CustomerProductAndServiceDirectoryEntryUpdateLog?.LogDate?.DateTimeType
        },
        "LogIdentification": {
            "IdentifierValue": check response?.CustomerProductAndServiceDirectoryEntryUpdateLog?.LogIdentification?.IdentifierValue,
            "IdentifierIssuerReference": {
                "PartyReference": check response?.CustomerProductAndServiceDirectoryEntryUpdateLog?.LogIdentification?.IdentifierIssuerReference?.PartyReference,
                "InvolvementReference": check response?.CustomerProductAndServiceDirectoryEntryUpdateLog?.LogIdentification?.IdentifierIssuerReference?.InvolvementReference
            },
            "IdentifierStartDate": {
                "DateTimeContent": check response?.CustomerProductAndServiceDirectoryEntryUpdateLog?.LogIdentification?.IdentifierStartDate?.DateTimeContent,
                "TimeZoneCode": check response?.CustomerProductAndServiceDirectoryEntryUpdateLog?.LogIdentification?.IdentifierStartDate?.TimeZoneCode,
                "DaylightSavingIndicator": check response?.CustomerProductAndServiceDirectoryEntryUpdateLog?.LogIdentification?.IdentifierStartDate?.DaylightSavingIndicator,
                "DateTimeType": check response?.CustomerProductAndServiceDirectoryEntryUpdateLog?.LogIdentification?.IdentifierStartDate?.DateTimeType
            },
            "IdentifierEndDate": {
                "DateTimeContent": check response?.CustomerProductAndServiceDirectoryEntryUpdateLog?.LogIdentification?.IdentifierEndDate?.DateTimeContent,
                "TimeZoneCode": check response?.CustomerProductAndServiceDirectoryEntryUpdateLog?.LogIdentification?.IdentifierEndDate?.TimeZoneCode,
                "DaylightSavingIndicator": check response?.CustomerProductAndServiceDirectoryEntryUpdateLog?.LogIdentification?.IdentifierEndDate?.DaylightSavingIndicator,
                "DateTimeType": check response?.CustomerProductAndServiceDirectoryEntryUpdateLog?.LogIdentification?.IdentifierEndDate?.DateTimeType
            }
        }
    },
    "CustomerProductAndServiceDirectoryEntryServiceConfiguration": check response?.CustomerProductAndServiceDirectoryEntryServiceConfiguration,
    "CustomerProductAndServiceDirectoryEntryInstanceReference": {
        "IdentifierValue": check response?.CustomerProductAndServiceDirectoryEntryInstanceReference?.IdentifierValue,
        "IdentifierIssuerReference": {
            "PartyReference": check response?.CustomerProductAndServiceDirectoryEntryInstanceReference?.IdentifierIssuerReference?.PartyReference,
            "InvolvementReference": check response?.CustomerProductAndServiceDirectoryEntryInstanceReference?.IdentifierIssuerReference?.InvolvementReference
        },
        "IdentifierStartDate": {
            "DateTimeContent": check response?.CustomerProductAndServiceDirectoryEntryInstanceReference?.IdentifierStartDate?.DateTimeContent,
            "TimeZoneCode": check response?.CustomerProductAndServiceDirectoryEntryInstanceReference?.IdentifierStartDate?.TimeZoneCode,
            "DaylightSavingIndicator": check response?.CustomerProductAndServiceDirectoryEntryInstanceReference?.IdentifierStartDate?.DaylightSavingIndicator,
            "DateTimeType": check response?.CustomerProductAndServiceDirectoryEntryInstanceReference?.IdentifierStartDate?.DateTimeType
        },
        "IdentifierEndDate": {
            "DateTimeContent": check response?.CustomerProductAndServiceDirectoryEntryInstanceReference?.IdentifierEndDate?.DateTimeContent,
            "TimeZoneCode": check response?.CustomerProductAndServiceDirectoryEntryInstanceReference?.IdentifierEndDate?.TimeZoneCode,
            "DaylightSavingIndicator": check response?.CustomerProductAndServiceDirectoryEntryInstanceReference?.IdentifierEndDate?.DaylightSavingIndicator,
            "DateTimeType": check response?.CustomerProductAndServiceDirectoryEntryInstanceReference?.IdentifierEndDate?.DateTimeType
        }
    },
    "CustomerReference": {
        "PartyReference": check response?.CustomerReference?.PartyReference,
        "InvolvementReference": check response?.CustomerReference?.InvolvementReference
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
    "ServicerReference": {
        "PartyReference": check response?.ServicerReference?.PartyReference,
        "InvolvementReference": check response?.ServicerReference?.InvolvementReference
    },
    "ServiceAgreementReference": {
        "Type": check response?.ServiceAgreementReference?.Type,
        "ServiceReference": {
            "ServiceInstanceReference": {
                "IdentifierValue": check response?.ServiceAgreementReference?.ServiceReference?.ServiceInstanceReference?.IdentifierValue,
                "IdentifierIssuerReference": {
                    "PartyReference": check response?.ServiceAgreementReference?.ServiceReference?.ServiceInstanceReference?.IdentifierIssuerReference?.PartyReference,
                    "InvolvementReference": check response?.ServiceAgreementReference?.ServiceReference?.ServiceInstanceReference?.IdentifierIssuerReference?.InvolvementReference
                },
                "IdentifierStartDate": {
                    "DateTimeContent": check response?.ServiceAgreementReference?.ServiceReference?.ServiceInstanceReference?.IdentifierStartDate?.DateTimeContent,
                    "TimeZoneCode": check response?.ServiceAgreementReference?.ServiceReference?.ServiceInstanceReference?.IdentifierStartDate?.TimeZoneCode,
                    "DaylightSavingIndicator": check response?.ServiceAgreementReference?.ServiceReference?.ServiceInstanceReference?.IdentifierStartDate?.DaylightSavingIndicator,
                    "DateTimeType": check response?.ServiceAgreementReference?.ServiceReference?.ServiceInstanceReference?.IdentifierStartDate?.DateTimeType
                },
                "IdentifierEndDate": {
                    "DateTimeContent": check response?.ServiceAgreementReference?.ServiceReference?.ServiceInstanceReference?.IdentifierEndDate?.DateTimeContent,
                    "TimeZoneCode": check response?.ServiceAgreementReference?.ServiceReference?.ServiceInstanceReference?.IdentifierEndDate?.TimeZoneCode,
                    "DaylightSavingIndicator": check response?.ServiceAgreementReference?.ServiceReference?.ServiceInstanceReference?.IdentifierEndDate?.DaylightSavingIndicator,
                    "DateTimeType": check response?.ServiceAgreementReference?.ServiceReference?.ServiceInstanceReference?.IdentifierEndDate?.DateTimeType
                }
            },
            "ServiceIdentification": {
                "IdentifierValue": check response?.ServiceAgreementReference?.ServiceReference?.ServiceIdentification?.IdentifierValue,
                "IdentifierIssuerReference": {
                    "PartyReference": check response?.ServiceAgreementReference?.ServiceReference?.ServiceIdentification?.IdentifierIssuerReference?.PartyReference,
                    "InvolvementReference": check response?.ServiceAgreementReference?.ServiceReference?.ServiceIdentification?.IdentifierIssuerReference?.InvolvementReference
                },
                "IdentifierStartDate": {
                    "DateTimeContent": check response?.ServiceAgreementReference?.ServiceReference?.ServiceIdentification?.IdentifierStartDate?.DateTimeContent,
                    "TimeZoneCode": check response?.ServiceAgreementReference?.ServiceReference?.ServiceIdentification?.IdentifierStartDate?.TimeZoneCode,
                    "DaylightSavingIndicator": check response?.ServiceAgreementReference?.ServiceReference?.ServiceIdentification?.IdentifierStartDate?.DaylightSavingIndicator,
                    "DateTimeType": check response?.ServiceAgreementReference?.ServiceReference?.ServiceIdentification?.IdentifierStartDate?.DateTimeType
                },
                "IdentifierEndDate": {
                    "DateTimeContent": check response?.ServiceAgreementReference?.ServiceReference?.ServiceIdentification?.IdentifierEndDate?.DateTimeContent,
                    "TimeZoneCode": check response?.ServiceAgreementReference?.ServiceReference?.ServiceIdentification?.IdentifierEndDate?.TimeZoneCode,
                    "DaylightSavingIndicator": check response?.ServiceAgreementReference?.ServiceReference?.ServiceIdentification?.IdentifierEndDate?.DaylightSavingIndicator,
                    "DateTimeType": check response?.ServiceAgreementReference?.ServiceReference?.ServiceIdentification?.IdentifierEndDate?.DateTimeType
                }
            },
            "ServiceDescription": check response?.ServiceAgreementReference?.ServiceReference?.ServiceDescription,
            "ServiceType": check response?.ServiceAgreementReference?.ServiceReference?.ServiceType,
            "ServiceName": {
                "Name": check response?.ServiceAgreementReference?.ServiceReference?.ServiceName?.Name
            },
            "ServiceLifecycleStatus": {
                "StatusReason": check response?.ServiceAgreementReference?.ServiceReference?.ServiceLifecycleStatus?.StatusReason,
                "StatusDateTime": {
                    "DateTimeContent": check response?.ServiceAgreementReference?.ServiceReference?.ServiceLifecycleStatus?.StatusDateTime?.DateTimeContent,
                    "TimeZoneCode": check response?.ServiceAgreementReference?.ServiceReference?.ServiceLifecycleStatus?.StatusDateTime?.TimeZoneCode,
                    "DaylightSavingIndicator": check response?.ServiceAgreementReference?.ServiceReference?.ServiceLifecycleStatus?.StatusDateTime?.DaylightSavingIndicator,
                    "DateTimeType": check response?.ServiceAgreementReference?.ServiceReference?.ServiceLifecycleStatus?.StatusDateTime?.DateTimeType
                },
                "StatusValidityPeriod": {
                    "FromDateTime": {
                        "DateTimeContent": check response?.ServiceAgreementReference?.ServiceReference?.ServiceLifecycleStatus?.StatusValidityPeriod?.FromDateTime?.DateTimeContent,
                        "TimeZoneCode": check response?.ServiceAgreementReference?.ServiceReference?.ServiceLifecycleStatus?.StatusValidityPeriod?.FromDateTime?.TimeZoneCode,
                        "DaylightSavingIndicator": check response?.ServiceAgreementReference?.ServiceReference?.ServiceLifecycleStatus?.StatusValidityPeriod?.FromDateTime?.DaylightSavingIndicator,
                        "DateTimeType": check response?.ServiceAgreementReference?.ServiceReference?.ServiceLifecycleStatus?.StatusValidityPeriod?.FromDateTime?.DateTimeType
                    },
                    "ToDateTime": {
                        "DateTimeContent": check response?.ServiceAgreementReference?.ServiceReference?.ServiceLifecycleStatus?.StatusValidityPeriod?.ToDateTime?.DateTimeContent,
                        "TimeZoneCode": check response?.ServiceAgreementReference?.ServiceReference?.ServiceLifecycleStatus?.StatusValidityPeriod?.ToDateTime?.TimeZoneCode,
                        "DaylightSavingIndicator": check response?.ServiceAgreementReference?.ServiceReference?.ServiceLifecycleStatus?.StatusValidityPeriod?.ToDateTime?.DaylightSavingIndicator,
                        "DateTimeType": check response?.ServiceAgreementReference?.ServiceReference?.ServiceLifecycleStatus?.StatusValidityPeriod?.ToDateTime?.DateTimeType
                    }
                },
                "StatusInvolvedPartyReference": {
                    "PartyReference": check response?.ServiceAgreementReference?.ServiceReference?.ServiceLifecycleStatus?.StatusInvolvedPartyReference?.PartyReference,
                    "InvolvementReference": check response?.ServiceAgreementReference?.ServiceReference?.ServiceLifecycleStatus?.StatusInvolvedPartyReference?.InvolvementReference
                }
            },
            "ServiceFeature": {
                "FeatureType": check response?.ServiceAgreementReference?.ServiceReference?.ServiceFeature?.FeatureType,
                "FeatureIdentification": {
                    "IdentifierValue": check response?.ServiceAgreementReference?.ServiceReference?.ServiceFeature?.FeatureIdentification?.IdentifierValue,
                    "IdentifierIssuerReference": {
                        "PartyReference": check response?.ServiceAgreementReference?.ServiceReference?.ServiceFeature?.FeatureIdentification?.IdentifierIssuerReference?.PartyReference,
                        "InvolvementReference": check response?.ServiceAgreementReference?.ServiceReference?.ServiceFeature?.FeatureIdentification?.IdentifierIssuerReference?.InvolvementReference
                    },
                    "IdentifierStartDate": {
                        "DateTimeContent": check response?.ServiceAgreementReference?.ServiceReference?.ServiceFeature?.FeatureIdentification?.IdentifierStartDate?.DateTimeContent,
                        "TimeZoneCode": check response?.ServiceAgreementReference?.ServiceReference?.ServiceFeature?.FeatureIdentification?.IdentifierStartDate?.TimeZoneCode,
                        "DaylightSavingIndicator": check response?.ServiceAgreementReference?.ServiceReference?.ServiceFeature?.FeatureIdentification?.IdentifierStartDate?.DaylightSavingIndicator,
                        "DateTimeType": check response?.ServiceAgreementReference?.ServiceReference?.ServiceFeature?.FeatureIdentification?.IdentifierStartDate?.DateTimeType
                    },
                    "IdentifierEndDate": {
                        "DateTimeContent": check response?.ServiceAgreementReference?.ServiceReference?.ServiceFeature?.FeatureIdentification?.IdentifierEndDate?.DateTimeContent,
                        "TimeZoneCode": check response?.ServiceAgreementReference?.ServiceReference?.ServiceFeature?.FeatureIdentification?.IdentifierEndDate?.TimeZoneCode,
                        "DaylightSavingIndicator": check response?.ServiceAgreementReference?.ServiceReference?.ServiceFeature?.FeatureIdentification?.IdentifierEndDate?.DaylightSavingIndicator,
                        "DateTimeType": check response?.ServiceAgreementReference?.ServiceReference?.ServiceFeature?.FeatureIdentification?.IdentifierEndDate?.DateTimeType
                    }
                },
                "FeatureName": {
                    "Name": check response?.ServiceAgreementReference?.ServiceReference?.ServiceFeature?.FeatureName?.Name
                },
                "FeatureLifecycleStatus": {
                    "StatusReason": check response?.ServiceAgreementReference?.ServiceReference?.ServiceFeature?.FeatureLifecycleStatus?.StatusReason,
                    "StatusDateTime": {
                        "DateTimeContent": check response?.ServiceAgreementReference?.ServiceReference?.ServiceFeature?.FeatureLifecycleStatus?.StatusDateTime?.DateTimeContent,
                        "TimeZoneCode": check response?.ServiceAgreementReference?.ServiceReference?.ServiceFeature?.FeatureLifecycleStatus?.StatusDateTime?.TimeZoneCode,
                        "DaylightSavingIndicator": check response?.ServiceAgreementReference?.ServiceReference?.ServiceFeature?.FeatureLifecycleStatus?.StatusDateTime?.DaylightSavingIndicator,
                        "DateTimeType": check response?.ServiceAgreementReference?.ServiceReference?.ServiceFeature?.FeatureLifecycleStatus?.StatusDateTime?.DateTimeType
                    },
                    "StatusValidityPeriod": {
                        "FromDateTime": {
                            "DateTimeContent": check response?.ServiceAgreementReference?.ServiceReference?.ServiceFeature?.FeatureLifecycleStatus?.StatusValidityPeriod?.FromDateTime?.DateTimeContent,
                            "TimeZoneCode": check response?.ServiceAgreementReference?.ServiceReference?.ServiceFeature?.FeatureLifecycleStatus?.StatusValidityPeriod?.FromDateTime?.TimeZoneCode,
                            "DaylightSavingIndicator": check response?.ServiceAgreementReference?.ServiceReference?.ServiceFeature?.FeatureLifecycleStatus?.StatusValidityPeriod?.FromDateTime?.DaylightSavingIndicator,
                            "DateTimeType": check response?.ServiceAgreementReference?.ServiceReference?.ServiceFeature?.FeatureLifecycleStatus?.StatusValidityPeriod?.FromDateTime?.DateTimeType
                        },
                        "ToDateTime": {
                            "DateTimeContent": check response?.ServiceAgreementReference?.ServiceReference?.ServiceFeature?.FeatureLifecycleStatus?.StatusValidityPeriod?.ToDateTime?.DateTimeContent,
                            "TimeZoneCode": check response?.ServiceAgreementReference?.ServiceReference?.ServiceFeature?.FeatureLifecycleStatus?.StatusValidityPeriod?.ToDateTime?.TimeZoneCode,
                            "DaylightSavingIndicator": check response?.ServiceAgreementReference?.ServiceReference?.ServiceFeature?.FeatureLifecycleStatus?.StatusValidityPeriod?.ToDateTime?.DaylightSavingIndicator,
                            "DateTimeType": check response?.ServiceAgreementReference?.ServiceReference?.ServiceFeature?.FeatureLifecycleStatus?.StatusValidityPeriod?.ToDateTime?.DateTimeType
                        }
                    },
                    "StatusInvolvedPartyReference": {
                        "PartyReference": check response?.ServiceAgreementReference?.ServiceReference?.ServiceFeature?.FeatureLifecycleStatus?.StatusInvolvedPartyReference?.PartyReference,
                        "InvolvementReference": check response?.ServiceAgreementReference?.ServiceReference?.ServiceFeature?.FeatureLifecycleStatus?.StatusInvolvedPartyReference?.InvolvementReference
                    }
                },
                "FeatureDescription": check response?.ServiceAgreementReference?.ServiceReference?.ServiceFeature?.FeatureDescription
            }
        },
        "AgreementReference": {
            "Agreement": check response?.ServiceAgreementReference?.AgreementReference?.Agreement
        },
        "AgreementSignedDate": {
            "DateContent": check response?.ServiceAgreementReference?.AgreementSignedDate?.DateContent
        },
        "AgreementType": check response?.ServiceAgreementReference?.AgreementType,
        "AgreementValidityPeriod": {
            "FromDateTime": {
                "DateTimeContent": check response?.ServiceAgreementReference?.AgreementValidityPeriod?.FromDateTime?.DateTimeContent,
                "TimeZoneCode": check response?.ServiceAgreementReference?.AgreementValidityPeriod?.FromDateTime?.TimeZoneCode,
                "DaylightSavingIndicator": check response?.ServiceAgreementReference?.AgreementValidityPeriod?.FromDateTime?.DaylightSavingIndicator,
                "DateTimeType": check response?.ServiceAgreementReference?.AgreementValidityPeriod?.FromDateTime?.DateTimeType
            },
            "ToDateTime": {
                "DateTimeContent": check response?.ServiceAgreementReference?.AgreementValidityPeriod?.ToDateTime?.DateTimeContent,
                "TimeZoneCode": check response?.ServiceAgreementReference?.AgreementValidityPeriod?.ToDateTime?.TimeZoneCode,
                "DaylightSavingIndicator": check response?.ServiceAgreementReference?.AgreementValidityPeriod?.ToDateTime?.DaylightSavingIndicator,
                "DateTimeType": check response?.ServiceAgreementReference?.AgreementValidityPeriod?.ToDateTime?.DateTimeType
            }
        },
        "AgreementVersion": check response?.ServiceAgreementReference?.AgreementVersion,
        "AgreementStatus": {
            "AgreementStatus": {
                "StatusReason": check response?.ServiceAgreementReference?.AgreementStatus?.AgreementStatus?.StatusReason,
                "StatusDateTime": {
                    "DateTimeContent": check response?.ServiceAgreementReference?.AgreementStatus?.AgreementStatus?.StatusDateTime?.DateTimeContent,
                    "TimeZoneCode": check response?.ServiceAgreementReference?.AgreementStatus?.AgreementStatus?.StatusDateTime?.TimeZoneCode,
                    "DaylightSavingIndicator": check response?.ServiceAgreementReference?.AgreementStatus?.AgreementStatus?.StatusDateTime?.DaylightSavingIndicator,
                    "DateTimeType": check response?.ServiceAgreementReference?.AgreementStatus?.AgreementStatus?.StatusDateTime?.DateTimeType
                },
                "StatusValidityPeriod": {
                    "FromDateTime": {
                        "DateTimeContent": check response?.ServiceAgreementReference?.AgreementStatus?.AgreementStatus?.StatusValidityPeriod?.FromDateTime?.DateTimeContent,
                        "TimeZoneCode": check response?.ServiceAgreementReference?.AgreementStatus?.AgreementStatus?.StatusValidityPeriod?.FromDateTime?.TimeZoneCode,
                        "DaylightSavingIndicator": check response?.ServiceAgreementReference?.AgreementStatus?.AgreementStatus?.StatusValidityPeriod?.FromDateTime?.DaylightSavingIndicator,
                        "DateTimeType": check response?.ServiceAgreementReference?.AgreementStatus?.AgreementStatus?.StatusValidityPeriod?.FromDateTime?.DateTimeType
                    },
                    "ToDateTime": {
                        "DateTimeContent": check response?.ServiceAgreementReference?.AgreementStatus?.AgreementStatus?.StatusValidityPeriod?.ToDateTime?.DateTimeContent,
                        "TimeZoneCode": check response?.ServiceAgreementReference?.AgreementStatus?.AgreementStatus?.StatusValidityPeriod?.ToDateTime?.TimeZoneCode,
                        "DaylightSavingIndicator": check response?.ServiceAgreementReference?.AgreementStatus?.AgreementStatus?.StatusValidityPeriod?.ToDateTime?.DaylightSavingIndicator,
                        "DateTimeType": check response?.ServiceAgreementReference?.AgreementStatus?.AgreementStatus?.StatusValidityPeriod?.ToDateTime?.DateTimeType
                    }
                },
                "StatusInvolvedPartyReference": {
                    "PartyReference": check response?.ServiceAgreementReference?.AgreementStatus?.AgreementStatus?.StatusInvolvedPartyReference?.PartyReference,
                    "InvolvementReference": check response?.ServiceAgreementReference?.AgreementStatus?.AgreementStatus?.StatusInvolvedPartyReference?.InvolvementReference
                }
            },
            "AgreementStatusType": check response?.ServiceAgreementReference?.AgreementStatus?.AgreementStatusType
        },
        "AgreementSubjectMatter": check response?.ServiceAgreementReference?.AgreementSubjectMatter,
        "AgreementIdentification": {
            "IdentifierValue": check response?.ServiceAgreementReference?.AgreementIdentification?.IdentifierValue,
            "IdentifierIssuerReference": {
                "PartyReference": check response?.ServiceAgreementReference?.AgreementIdentification?.IdentifierIssuerReference?.PartyReference,
                "InvolvementReference": check response?.ServiceAgreementReference?.AgreementIdentification?.IdentifierIssuerReference?.InvolvementReference
            },
            "IdentifierStartDate": {
                "DateTimeContent": check response?.ServiceAgreementReference?.AgreementIdentification?.IdentifierStartDate?.DateTimeContent,
                "TimeZoneCode": check response?.ServiceAgreementReference?.AgreementIdentification?.IdentifierStartDate?.TimeZoneCode,
                "DaylightSavingIndicator": check response?.ServiceAgreementReference?.AgreementIdentification?.IdentifierStartDate?.DaylightSavingIndicator,
                "DateTimeType": check response?.ServiceAgreementReference?.AgreementIdentification?.IdentifierStartDate?.DateTimeType
            },
            "IdentifierEndDate": {
                "DateTimeContent": check response?.ServiceAgreementReference?.AgreementIdentification?.IdentifierEndDate?.DateTimeContent,
                "TimeZoneCode": check response?.ServiceAgreementReference?.AgreementIdentification?.IdentifierEndDate?.TimeZoneCode,
                "DaylightSavingIndicator": check response?.ServiceAgreementReference?.AgreementIdentification?.IdentifierEndDate?.DaylightSavingIndicator,
                "DateTimeType": check response?.ServiceAgreementReference?.AgreementIdentification?.IdentifierEndDate?.DateTimeType
            }
        },
        "AgreementDate": {
            "DateTimeContent": check response?.ServiceAgreementReference?.AgreementDate?.DateTimeContent,
            "TimeZoneCode": check response?.ServiceAgreementReference?.AgreementDate?.TimeZoneCode,
            "DaylightSavingIndicator": check response?.ServiceAgreementReference?.AgreementDate?.DaylightSavingIndicator,
            "DateTimeType": check response?.ServiceAgreementReference?.AgreementDate?.DateTimeType
        },
        "AgreementDescription": check response?.ServiceAgreementReference?.AgreementDescription
    }
};
