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

import ballerinax/financial.bian.attribute.groups.business_development as business_development;

// Data mapping functions to transform the JSON response from the Core Banking API to the BIAN data model business_development:SalesandMarketing?.
function transformProductSalesandMarketingResponse(json response) returns business_development:SalesandMarketing|error => {
    "ProductandServiceSalesMaterial": check response?.ProductandServiceSalesMaterial,
    "ProductandServicesFeaturesAndOptions": {
        "ProductFeatureType": check response?.ProductandServicesFeaturesAndOptions?.ProductFeatureType,
        "ProductFeatureSpecification": check response?.ProductandServicesFeaturesAndOptions?.ProductFeatureSpecification,
        "ProductFeatureIdentification": {
            "IdentifierValue": check response?.ProductandServicesFeaturesAndOptions?.ProductFeatureIdentification?.IdentifierValue,
            "IdentifierIssuerReference": {
                "PartyReference": check response?.ProductandServicesFeaturesAndOptions?.ProductFeatureIdentification?.IdentifierIssuerReference?.PartyReference,
                "InvolvementReference": check response?.ProductandServicesFeaturesAndOptions?.ProductFeatureIdentification?.IdentifierIssuerReference?.InvolvementReference
            },
            "IdentifierStartDate": {
                "DateTimeContent": check response?.ProductandServicesFeaturesAndOptions?.ProductFeatureIdentification?.IdentifierStartDate?.DateTimeContent,
                "TimeZoneCode": check response?.ProductandServicesFeaturesAndOptions?.ProductFeatureIdentification?.IdentifierStartDate?.TimeZoneCode,
                "DaylightSavingIndicator": check response?.ProductandServicesFeaturesAndOptions?.ProductFeatureIdentification?.IdentifierStartDate?.DaylightSavingIndicator,
                "DateTimeType": check response?.ProductandServicesFeaturesAndOptions?.ProductFeatureIdentification?.IdentifierStartDate?.DateTimeType
            },
            "IdentifierEndDate": {
                "DateTimeContent": check response?.ProductandServicesFeaturesAndOptions?.ProductFeatureIdentification?.IdentifierEndDate?.DateTimeContent,
                "TimeZoneCode": check response?.ProductandServicesFeaturesAndOptions?.ProductFeatureIdentification?.IdentifierEndDate?.TimeZoneCode,
                "DaylightSavingIndicator": check response?.ProductandServicesFeaturesAndOptions?.ProductFeatureIdentification?.IdentifierEndDate?.DaylightSavingIndicator,
                "DateTimeType": check response?.ProductandServicesFeaturesAndOptions?.ProductFeatureIdentification?.IdentifierEndDate?.DateTimeType
            }
        },
        "ProductFeatureName": {
            "Name": check response?.ProductandServicesFeaturesAndOptions?.ProductFeatureName?.Name
        },
        "ProductFeatureLifecycleStatus": {
            "StatusReason": check response?.ProductandServicesFeaturesAndOptions?.ProductFeatureLifecycleStatus?.StatusReason,
            "StatusDateTime": {
                "DateTimeContent": check response?.ProductandServicesFeaturesAndOptions?.ProductFeatureLifecycleStatus?.StatusDateTime?.DateTimeContent,
                "TimeZoneCode": check response?.ProductandServicesFeaturesAndOptions?.ProductFeatureLifecycleStatus?.StatusDateTime?.TimeZoneCode,
                "DaylightSavingIndicator": check response?.ProductandServicesFeaturesAndOptions?.ProductFeatureLifecycleStatus?.StatusDateTime?.DaylightSavingIndicator,
                "DateTimeType": check response?.ProductandServicesFeaturesAndOptions?.ProductFeatureLifecycleStatus?.StatusDateTime?.DateTimeType
            },
            "StatusValidityPeriod": {
                "FromDateTime": {
                    "DateTimeContent": check response?.ProductandServicesFeaturesAndOptions?.ProductFeatureLifecycleStatus?.StatusValidityPeriod?.FromDateTime?.DateTimeContent,
                    "TimeZoneCode": check response?.ProductandServicesFeaturesAndOptions?.ProductFeatureLifecycleStatus?.StatusValidityPeriod?.FromDateTime?.TimeZoneCode,
                    "DaylightSavingIndicator": check response?.ProductandServicesFeaturesAndOptions?.ProductFeatureLifecycleStatus?.StatusValidityPeriod?.FromDateTime?.DaylightSavingIndicator,
                    "DateTimeType": check response?.ProductandServicesFeaturesAndOptions?.ProductFeatureLifecycleStatus?.StatusValidityPeriod?.FromDateTime?.DateTimeType
                },
                "ToDateTime": {
                    "DateTimeContent": check response?.ProductandServicesFeaturesAndOptions?.ProductFeatureLifecycleStatus?.StatusValidityPeriod?.ToDateTime?.DateTimeContent,
                    "TimeZoneCode": check response?.ProductandServicesFeaturesAndOptions?.ProductFeatureLifecycleStatus?.StatusValidityPeriod?.ToDateTime?.TimeZoneCode,
                    "DaylightSavingIndicator": check response?.ProductandServicesFeaturesAndOptions?.ProductFeatureLifecycleStatus?.StatusValidityPeriod?.ToDateTime?.DaylightSavingIndicator,
                    "DateTimeType": check response?.ProductandServicesFeaturesAndOptions?.ProductFeatureLifecycleStatus?.StatusValidityPeriod?.ToDateTime?.DateTimeType
                }
            },
            "StatusInvolvedPartyReference": {
                "PartyReference": check response?.ProductandServicesFeaturesAndOptions?.ProductFeatureLifecycleStatus?.StatusInvolvedPartyReference?.PartyReference,
                "InvolvementReference": check response?.ProductandServicesFeaturesAndOptions?.ProductFeatureLifecycleStatus?.StatusInvolvedPartyReference?.InvolvementReference
            }
        }
    },
    "ProductandServicePricingTable": {
        "ProductFeatureModalityType": check response?.ProductandServicePricingTable?.ProductFeatureModalityType
    },
    "ProductandServiceFeesPenaltiesTable": {
        "ProductFeatureModalityType": check response?.ProductandServiceFeesPenaltiesTable?.ProductFeatureModalityType
    },
    "ProductSuitabilityGuide": {
        "RuleSetDefinition": check response?.ProductSuitabilityGuide?.RuleSetDefinition,
        "RuleSetInterpretation": check response?.ProductSuitabilityGuide?.RuleSetInterpretation,
        "RuleSetType": check response?.ProductSuitabilityGuide?.RuleSetType,
        "RuleSetName": {
            "Name": check response?.ProductSuitabilityGuide?.RuleSetName?.Name
        },
        "RuleSetIdentification": {
            "IdentifierValue": check response?.ProductSuitabilityGuide?.RuleSetIdentification?.IdentifierValue,
            "IdentifierIssuerReference": {
                "PartyReference": check response?.ProductSuitabilityGuide?.RuleSetIdentification?.IdentifierIssuerReference?.PartyReference,
                "InvolvementReference": check response?.ProductSuitabilityGuide?.RuleSetIdentification?.IdentifierIssuerReference?.InvolvementReference
            },
            "IdentifierStartDate": {
                "DateTimeContent": check response?.ProductSuitabilityGuide?.RuleSetIdentification?.IdentifierStartDate?.DateTimeContent,
                "TimeZoneCode": check response?.ProductSuitabilityGuide?.RuleSetIdentification?.IdentifierStartDate?.TimeZoneCode,
                "DaylightSavingIndicator": check response?.ProductSuitabilityGuide?.RuleSetIdentification?.IdentifierStartDate?.DaylightSavingIndicator,
                "DateTimeType": check response?.ProductSuitabilityGuide?.RuleSetIdentification?.IdentifierStartDate?.DateTimeType
            },
            "IdentifierEndDate": {
                "DateTimeContent": check response?.ProductSuitabilityGuide?.RuleSetIdentification?.IdentifierEndDate?.DateTimeContent,
                "TimeZoneCode": check response?.ProductSuitabilityGuide?.RuleSetIdentification?.IdentifierEndDate?.TimeZoneCode,
                "DaylightSavingIndicator": check response?.ProductSuitabilityGuide?.RuleSetIdentification?.IdentifierEndDate?.DaylightSavingIndicator,
                "DateTimeType": check response?.ProductSuitabilityGuide?.RuleSetIdentification?.IdentifierEndDate?.DateTimeType
            }
        },
        "RuleSetLifecycleStatus": {
            "StatusReason": check response?.ProductSuitabilityGuide?.RuleSetLifecycleStatus?.StatusReason,
            "StatusDateTime": {
                "DateTimeContent": check response?.ProductSuitabilityGuide?.RuleSetLifecycleStatus?.StatusDateTime?.DateTimeContent,
                "TimeZoneCode": check response?.ProductSuitabilityGuide?.RuleSetLifecycleStatus?.StatusDateTime?.TimeZoneCode,
                "DaylightSavingIndicator": check response?.ProductSuitabilityGuide?.RuleSetLifecycleStatus?.StatusDateTime?.DaylightSavingIndicator,
                "DateTimeType": check response?.ProductSuitabilityGuide?.RuleSetLifecycleStatus?.StatusDateTime?.DateTimeType
            },
            "StatusValidityPeriod": {
                "FromDateTime": {
                    "DateTimeContent": check response?.ProductSuitabilityGuide?.RuleSetLifecycleStatus?.StatusValidityPeriod?.FromDateTime?.DateTimeContent,
                    "TimeZoneCode": check response?.ProductSuitabilityGuide?.RuleSetLifecycleStatus?.StatusValidityPeriod?.FromDateTime?.TimeZoneCode,
                    "DaylightSavingIndicator": check response?.ProductSuitabilityGuide?.RuleSetLifecycleStatus?.StatusValidityPeriod?.FromDateTime?.DaylightSavingIndicator,
                    "DateTimeType": check response?.ProductSuitabilityGuide?.RuleSetLifecycleStatus?.StatusValidityPeriod?.FromDateTime?.DateTimeType
                },
                "ToDateTime": {
                    "DateTimeContent": check response?.ProductSuitabilityGuide?.RuleSetLifecycleStatus?.StatusValidityPeriod?.ToDateTime?.DateTimeContent,
                    "TimeZoneCode": check response?.ProductSuitabilityGuide?.RuleSetLifecycleStatus?.StatusValidityPeriod?.ToDateTime?.TimeZoneCode,
                    "DaylightSavingIndicator": check response?.ProductSuitabilityGuide?.RuleSetLifecycleStatus?.StatusValidityPeriod?.ToDateTime?.DaylightSavingIndicator,
                    "DateTimeType": check response?.ProductSuitabilityGuide?.RuleSetLifecycleStatus?.StatusValidityPeriod?.ToDateTime?.DateTimeType
                }
            },
            "StatusInvolvedPartyReference": {
                "PartyReference": check response?.ProductSuitabilityGuide?.RuleSetLifecycleStatus?.StatusInvolvedPartyReference?.PartyReference,
                "InvolvementReference": check response?.ProductSuitabilityGuide?.RuleSetLifecycleStatus?.StatusInvolvedPartyReference?.InvolvementReference
            }
        }
    },
    "ProductandServiceEligibilityType": {

    },
    "ProductandServiceEligibilityDescription": check response?.ProductandServiceEligibilityDescription,
    "ProductandServiceOfferProcessingRequirements": {
        "ProductRequirementType": check response?.ProductandServiceOfferProcessingRequirements?.ProductRequirementType,
        "ProductRequirementSpecification": check response?.ProductandServiceOfferProcessingRequirements?.ProductRequirementSpecification
    }
};

// Data mapping functions to transform the JSON response from the Core Banking API to the BIAN data model product_management:Operations?.
isolated function transfromProductDirectoryOperationsResponse(json response) returns business_development:Operations|error => {
    "ProductandServiceConfigurationParameterType": check response?.ProductandServiceConfigurationParameterType,
    "ProductandServiceConfigurationParameterDescription": check response?.ProductandServiceConfigurationParameterDescription,
    "ProductandServiceConfigurationParameterSetting": {
        "ArrangementAction": {
            "ActionType": check response?.ProductandServiceConfigurationParameterSetting?.ArrangementAction?.ActionType,
            "EventType": check response?.ProductandServiceConfigurationParameterSetting?.ArrangementAction?.EventType,
            "EventDateTime": {
                "DateTimeContent": check response?.ProductandServiceConfigurationParameterSetting?.ArrangementAction?.EventDateTime?.DateTimeContent,
                "TimeZoneCode": check response?.ProductandServiceConfigurationParameterSetting?.ArrangementAction?.EventDateTime?.TimeZoneCode,
                "DaylightSavingIndicator": check response?.ProductandServiceConfigurationParameterSetting?.ArrangementAction?.EventDateTime?.DaylightSavingIndicator,
                "DateTimeType": check response?.ProductandServiceConfigurationParameterSetting?.ArrangementAction?.EventDateTime?.DateTimeType
            },
            "EventDescription": check response?.ProductandServiceConfigurationParameterSetting?.ArrangementAction?.EventDescription,
            "EventSource": check response?.ProductandServiceConfigurationParameterSetting?.ArrangementAction?.EventSource,
            "EventLocation": {
                "LocationDescription": check response?.ProductandServiceConfigurationParameterSetting?.ArrangementAction?.EventLocation?.LocationDescription,
                "LocationDateTime": {
                    "DateTimeContent": check response?.ProductandServiceConfigurationParameterSetting?.ArrangementAction?.EventLocation?.LocationDateTime?.DateTimeContent,
                    "TimeZoneCode": check response?.ProductandServiceConfigurationParameterSetting?.ArrangementAction?.EventLocation?.LocationDateTime?.TimeZoneCode,
                    "DaylightSavingIndicator": check response?.ProductandServiceConfigurationParameterSetting?.ArrangementAction?.EventLocation?.LocationDateTime?.DaylightSavingIndicator,
                    "DateTimeType": check response?.ProductandServiceConfigurationParameterSetting?.ArrangementAction?.EventLocation?.LocationDateTime?.DateTimeType
                },
                "LocationStatus": {
                    "StatusReason": check response?.ProductandServiceConfigurationParameterSetting?.ArrangementAction?.EventLocation?.LocationStatus?.StatusReason,
                    "StatusDateTime": {
                        "DateTimeContent": check response?.ProductandServiceConfigurationParameterSetting?.ArrangementAction?.EventLocation?.LocationStatus?.StatusDateTime?.DateTimeContent,
                        "TimeZoneCode": check response?.ProductandServiceConfigurationParameterSetting?.ArrangementAction?.EventLocation?.LocationStatus?.StatusDateTime?.TimeZoneCode,
                        "DaylightSavingIndicator": check response?.ProductandServiceConfigurationParameterSetting?.ArrangementAction?.EventLocation?.LocationStatus?.StatusDateTime?.DaylightSavingIndicator,
                        "DateTimeType": check response?.ProductandServiceConfigurationParameterSetting?.ArrangementAction?.EventLocation?.LocationStatus?.StatusDateTime?.DateTimeType
                    },
                    "StatusValidityPeriod": {
                        "FromDateTime": {
                            "DateTimeContent": check response?.ProductandServiceConfigurationParameterSetting?.ArrangementAction?.EventLocation?.LocationStatus?.StatusValidityPeriod?.FromDateTime?.DateTimeContent,
                            "TimeZoneCode": check response?.ProductandServiceConfigurationParameterSetting?.ArrangementAction?.EventLocation?.LocationStatus?.StatusValidityPeriod?.FromDateTime?.TimeZoneCode,
                            "DaylightSavingIndicator": check response?.ProductandServiceConfigurationParameterSetting?.ArrangementAction?.EventLocation?.LocationStatus?.StatusValidityPeriod?.FromDateTime?.DaylightSavingIndicator,
                            "DateTimeType": check response?.ProductandServiceConfigurationParameterSetting?.ArrangementAction?.EventLocation?.LocationStatus?.StatusValidityPeriod?.FromDateTime?.DateTimeType
                        },
                        "ToDateTime": {
                            "DateTimeContent": check response?.ProductandServiceConfigurationParameterSetting?.ArrangementAction?.EventLocation?.LocationStatus?.StatusValidityPeriod?.ToDateTime?.DateTimeContent,
                            "TimeZoneCode": check response?.ProductandServiceConfigurationParameterSetting?.ArrangementAction?.EventLocation?.LocationStatus?.StatusValidityPeriod?.ToDateTime?.TimeZoneCode,
                            "DaylightSavingIndicator": check response?.ProductandServiceConfigurationParameterSetting?.ArrangementAction?.EventLocation?.LocationStatus?.StatusValidityPeriod?.ToDateTime?.DaylightSavingIndicator,
                            "DateTimeType": check response?.ProductandServiceConfigurationParameterSetting?.ArrangementAction?.EventLocation?.LocationStatus?.StatusValidityPeriod?.ToDateTime?.DateTimeType
                        }
                    },
                    "StatusInvolvedPartyReference": {
                        "PartyReference": check response?.ProductandServiceConfigurationParameterSetting?.ArrangementAction?.EventLocation?.LocationStatus?.StatusInvolvedPartyReference?.PartyReference,
                        "InvolvementReference": check response?.ProductandServiceConfigurationParameterSetting?.ArrangementAction?.EventLocation?.LocationStatus?.StatusInvolvedPartyReference?.InvolvementReference
                    }
                },
                "LocationType": check response?.ProductandServiceConfigurationParameterSetting?.ArrangementAction?.EventLocation?.LocationType,
                "LocationZoningType": check response?.ProductandServiceConfigurationParameterSetting?.ArrangementAction?.EventLocation?.LocationZoningType,
                "LocationNeighborhoodType": check response?.ProductandServiceConfigurationParameterSetting?.ArrangementAction?.EventLocation?.LocationNeighborhoodType,
                "LocationConstructionType": check response?.ProductandServiceConfigurationParameterSetting?.ArrangementAction?.EventLocation?.LocationConstructionType,
                "LocationOccupancyType": check response?.ProductandServiceConfigurationParameterSetting?.ArrangementAction?.EventLocation?.LocationOccupancyType,
                "LocationValue": check response?.ProductandServiceConfigurationParameterSetting?.ArrangementAction?.EventLocation?.LocationValue,
                "LocationCapacity": check response?.ProductandServiceConfigurationParameterSetting?.ArrangementAction?.EventLocation?.LocationCapacity,
                "LocationIdentification": {
                    "IdentifierValue": check response?.ProductandServiceConfigurationParameterSetting?.ArrangementAction?.EventLocation?.LocationIdentification?.IdentifierValue,
                    "IdentifierIssuerReference": {
                        "PartyReference": check response?.ProductandServiceConfigurationParameterSetting?.ArrangementAction?.EventLocation?.LocationIdentification?.IdentifierIssuerReference?.PartyReference,
                        "InvolvementReference": check response?.ProductandServiceConfigurationParameterSetting?.ArrangementAction?.EventLocation?.LocationIdentification?.IdentifierIssuerReference?.InvolvementReference
                    },
                    "IdentifierStartDate": {
                        "DateTimeContent": check response?.ProductandServiceConfigurationParameterSetting?.ArrangementAction?.EventLocation?.LocationIdentification?.IdentifierStartDate?.DateTimeContent,
                        "TimeZoneCode": check response?.ProductandServiceConfigurationParameterSetting?.ArrangementAction?.EventLocation?.LocationIdentification?.IdentifierStartDate?.TimeZoneCode,
                        "DaylightSavingIndicator": check response?.ProductandServiceConfigurationParameterSetting?.ArrangementAction?.EventLocation?.LocationIdentification?.IdentifierStartDate?.DaylightSavingIndicator,
                        "DateTimeType": check response?.ProductandServiceConfigurationParameterSetting?.ArrangementAction?.EventLocation?.LocationIdentification?.IdentifierStartDate?.DateTimeType
                    },
                    "IdentifierEndDate": {
                        "DateTimeContent": check response?.ProductandServiceConfigurationParameterSetting?.ArrangementAction?.EventLocation?.LocationIdentification?.IdentifierEndDate?.DateTimeContent,
                        "TimeZoneCode": check response?.ProductandServiceConfigurationParameterSetting?.ArrangementAction?.EventLocation?.LocationIdentification?.IdentifierEndDate?.TimeZoneCode,
                        "DaylightSavingIndicator": check response?.ProductandServiceConfigurationParameterSetting?.ArrangementAction?.EventLocation?.LocationIdentification?.IdentifierEndDate?.DaylightSavingIndicator,
                        "DateTimeType": check response?.ProductandServiceConfigurationParameterSetting?.ArrangementAction?.EventLocation?.LocationIdentification?.IdentifierEndDate?.DateTimeType
                    }
                },
                "LocationAddress": check response?.ProductandServiceConfigurationParameterSetting?.ArrangementAction?.EventLocation?.LocationAddress,
                "LocationName": {
                    "Name": check response?.ProductandServiceConfigurationParameterSetting?.ArrangementAction?.EventLocation?.LocationName?.Name
                },
                "LocationTimeZone": check response?.ProductandServiceConfigurationParameterSetting?.ArrangementAction?.EventLocation?.LocationTimeZone
            },
            "EventStatus": {
                "StatusReason": check response?.ProductandServiceConfigurationParameterSetting?.ArrangementAction?.EventStatus?.StatusReason,
                "StatusDateTime": {
                    "DateTimeContent": check response?.ProductandServiceConfigurationParameterSetting?.ArrangementAction?.EventStatus?.StatusDateTime?.DateTimeContent,
                    "TimeZoneCode": check response?.ProductandServiceConfigurationParameterSetting?.ArrangementAction?.EventStatus?.StatusDateTime?.TimeZoneCode,
                    "DaylightSavingIndicator": check response?.ProductandServiceConfigurationParameterSetting?.ArrangementAction?.EventStatus?.StatusDateTime?.DaylightSavingIndicator,
                    "DateTimeType": check response?.ProductandServiceConfigurationParameterSetting?.ArrangementAction?.EventStatus?.StatusDateTime?.DateTimeType
                },
                "StatusValidityPeriod": {
                    "FromDateTime": {
                        "DateTimeContent": check response?.ProductandServiceConfigurationParameterSetting?.ArrangementAction?.EventStatus?.StatusValidityPeriod?.FromDateTime?.DateTimeContent,
                        "TimeZoneCode": check response?.ProductandServiceConfigurationParameterSetting?.ArrangementAction?.EventStatus?.StatusValidityPeriod?.FromDateTime?.TimeZoneCode,
                        "DaylightSavingIndicator": check response?.ProductandServiceConfigurationParameterSetting?.ArrangementAction?.EventStatus?.StatusValidityPeriod?.FromDateTime?.DaylightSavingIndicator,
                        "DateTimeType": check response?.ProductandServiceConfigurationParameterSetting?.ArrangementAction?.EventStatus?.StatusValidityPeriod?.FromDateTime?.DateTimeType
                    },
                    "ToDateTime": {
                        "DateTimeContent": check response?.ProductandServiceConfigurationParameterSetting?.ArrangementAction?.EventStatus?.StatusValidityPeriod?.ToDateTime?.DateTimeContent,
                        "TimeZoneCode": check response?.ProductandServiceConfigurationParameterSetting?.ArrangementAction?.EventStatus?.StatusValidityPeriod?.ToDateTime?.TimeZoneCode,
                        "DaylightSavingIndicator": check response?.ProductandServiceConfigurationParameterSetting?.ArrangementAction?.EventStatus?.StatusValidityPeriod?.ToDateTime?.DaylightSavingIndicator,
                        "DateTimeType": check response?.ProductandServiceConfigurationParameterSetting?.ArrangementAction?.EventStatus?.StatusValidityPeriod?.ToDateTime?.DateTimeType
                    }
                },
                "StatusInvolvedPartyReference": {
                    "PartyReference": check response?.ProductandServiceConfigurationParameterSetting?.ArrangementAction?.EventStatus?.StatusInvolvedPartyReference?.PartyReference,
                    "InvolvementReference": check response?.ProductandServiceConfigurationParameterSetting?.ArrangementAction?.EventStatus?.StatusInvolvedPartyReference?.InvolvementReference
                }
            },
            "EventValue": check response?.ProductandServiceConfigurationParameterSetting?.ArrangementAction?.EventValue,
            "EventValidityPeriod": {
                "FromDateTime": {
                    "DateTimeContent": check response?.ProductandServiceConfigurationParameterSetting?.ArrangementAction?.EventValidityPeriod?.FromDateTime?.DateTimeContent,
                    "TimeZoneCode": check response?.ProductandServiceConfigurationParameterSetting?.ArrangementAction?.EventValidityPeriod?.FromDateTime?.TimeZoneCode,
                    "DaylightSavingIndicator": check response?.ProductandServiceConfigurationParameterSetting?.ArrangementAction?.EventValidityPeriod?.FromDateTime?.DaylightSavingIndicator,
                    "DateTimeType": check response?.ProductandServiceConfigurationParameterSetting?.ArrangementAction?.EventValidityPeriod?.FromDateTime?.DateTimeType
                },
                "ToDateTime": {
                    "DateTimeContent": check response?.ProductandServiceConfigurationParameterSetting?.ArrangementAction?.EventValidityPeriod?.ToDateTime?.DateTimeContent,
                    "TimeZoneCode": check response?.ProductandServiceConfigurationParameterSetting?.ArrangementAction?.EventValidityPeriod?.ToDateTime?.TimeZoneCode,
                    "DaylightSavingIndicator": check response?.ProductandServiceConfigurationParameterSetting?.ArrangementAction?.EventValidityPeriod?.ToDateTime?.DaylightSavingIndicator,
                    "DateTimeType": check response?.ProductandServiceConfigurationParameterSetting?.ArrangementAction?.EventValidityPeriod?.ToDateTime?.DateTimeType
                }
            },
            "EventIdentification": {
                "IdentifierValue": check response?.ProductandServiceConfigurationParameterSetting?.ArrangementAction?.EventIdentification?.IdentifierValue,
                "IdentifierIssuerReference": {
                    "PartyReference": check response?.ProductandServiceConfigurationParameterSetting?.ArrangementAction?.EventIdentification?.IdentifierIssuerReference?.PartyReference,
                    "InvolvementReference": check response?.ProductandServiceConfigurationParameterSetting?.ArrangementAction?.EventIdentification?.IdentifierIssuerReference?.InvolvementReference
                },
                "IdentifierStartDate": {
                    "DateTimeContent": check response?.ProductandServiceConfigurationParameterSetting?.ArrangementAction?.EventIdentification?.IdentifierStartDate?.DateTimeContent,
                    "TimeZoneCode": check response?.ProductandServiceConfigurationParameterSetting?.ArrangementAction?.EventIdentification?.IdentifierStartDate?.TimeZoneCode,
                    "DaylightSavingIndicator": check response?.ProductandServiceConfigurationParameterSetting?.ArrangementAction?.EventIdentification?.IdentifierStartDate?.DaylightSavingIndicator,
                    "DateTimeType": check response?.ProductandServiceConfigurationParameterSetting?.ArrangementAction?.EventIdentification?.IdentifierStartDate?.DateTimeType
                },
                "IdentifierEndDate": {
                    "DateTimeContent": check response?.ProductandServiceConfigurationParameterSetting?.ArrangementAction?.EventIdentification?.IdentifierEndDate?.DateTimeContent,
                    "TimeZoneCode": check response?.ProductandServiceConfigurationParameterSetting?.ArrangementAction?.EventIdentification?.IdentifierEndDate?.TimeZoneCode,
                    "DaylightSavingIndicator": check response?.ProductandServiceConfigurationParameterSetting?.ArrangementAction?.EventIdentification?.IdentifierEndDate?.DaylightSavingIndicator,
                    "DateTimeType": check response?.ProductandServiceConfigurationParameterSetting?.ArrangementAction?.EventIdentification?.IdentifierEndDate?.DateTimeType
                }
            }
        },
        "ArrangementStartDate": {
            "DateTimeContent": check response?.ProductandServiceConfigurationParameterSetting?.ArrangementStartDate?.DateTimeContent,
            "TimeZoneCode": check response?.ProductandServiceConfigurationParameterSetting?.ArrangementStartDate?.TimeZoneCode,
            "DaylightSavingIndicator": check response?.ProductandServiceConfigurationParameterSetting?.ArrangementStartDate?.DaylightSavingIndicator,
            "DateTimeType": check response?.ProductandServiceConfigurationParameterSetting?.ArrangementStartDate?.DateTimeType
        },
        "ArrangementEndDate": {
            "DateTimeContent": check response?.ProductandServiceConfigurationParameterSetting?.ArrangementEndDate?.DateTimeContent,
            "TimeZoneCode": check response?.ProductandServiceConfigurationParameterSetting?.ArrangementEndDate?.TimeZoneCode,
            "DaylightSavingIndicator": check response?.ProductandServiceConfigurationParameterSetting?.ArrangementEndDate?.DaylightSavingIndicator,
            "DateTimeType": check response?.ProductandServiceConfigurationParameterSetting?.ArrangementEndDate?.DateTimeType
        },
        "ArrangementStatus": {
            "ArrangementStatus": {
                "StatusReason": check response?.ProductandServiceConfigurationParameterSetting?.ArrangementStatus?.ArrangementStatus?.StatusReason,
                "StatusDateTime": {
                    "DateTimeContent": check response?.ProductandServiceConfigurationParameterSetting?.ArrangementStatus?.ArrangementStatus?.StatusDateTime?.DateTimeContent,
                    "TimeZoneCode": check response?.ProductandServiceConfigurationParameterSetting?.ArrangementStatus?.ArrangementStatus?.StatusDateTime?.TimeZoneCode,
                    "DaylightSavingIndicator": check response?.ProductandServiceConfigurationParameterSetting?.ArrangementStatus?.ArrangementStatus?.StatusDateTime?.DaylightSavingIndicator,
                    "DateTimeType": check response?.ProductandServiceConfigurationParameterSetting?.ArrangementStatus?.ArrangementStatus?.StatusDateTime?.DateTimeType
                },
                "StatusValidityPeriod": {
                    "FromDateTime": {
                        "DateTimeContent": check response?.ProductandServiceConfigurationParameterSetting?.ArrangementStatus?.ArrangementStatus?.StatusValidityPeriod?.FromDateTime?.DateTimeContent,
                        "TimeZoneCode": check response?.ProductandServiceConfigurationParameterSetting?.ArrangementStatus?.ArrangementStatus?.StatusValidityPeriod?.FromDateTime?.TimeZoneCode,
                        "DaylightSavingIndicator": check response?.ProductandServiceConfigurationParameterSetting?.ArrangementStatus?.ArrangementStatus?.StatusValidityPeriod?.FromDateTime?.DaylightSavingIndicator,
                        "DateTimeType": check response?.ProductandServiceConfigurationParameterSetting?.ArrangementStatus?.ArrangementStatus?.StatusValidityPeriod?.FromDateTime?.DateTimeType
                    },
                    "ToDateTime": {
                        "DateTimeContent": check response?.ProductandServiceConfigurationParameterSetting?.ArrangementStatus?.ArrangementStatus?.StatusValidityPeriod?.ToDateTime?.DateTimeContent,
                        "TimeZoneCode": check response?.ProductandServiceConfigurationParameterSetting?.ArrangementStatus?.ArrangementStatus?.StatusValidityPeriod?.ToDateTime?.TimeZoneCode,
                        "DaylightSavingIndicator": check response?.ProductandServiceConfigurationParameterSetting?.ArrangementStatus?.ArrangementStatus?.StatusValidityPeriod?.ToDateTime?.DaylightSavingIndicator,
                        "DateTimeType": check response?.ProductandServiceConfigurationParameterSetting?.ArrangementStatus?.ArrangementStatus?.StatusValidityPeriod?.ToDateTime?.DateTimeType
                    }
                },
                "StatusInvolvedPartyReference": {
                    "PartyReference": check response?.ProductandServiceConfigurationParameterSetting?.ArrangementStatus?.ArrangementStatus?.StatusInvolvedPartyReference?.PartyReference,
                    "InvolvementReference": check response?.ProductandServiceConfigurationParameterSetting?.ArrangementStatus?.ArrangementStatus?.StatusInvolvedPartyReference?.InvolvementReference
                }
            },
            "ArrangementStatusType": check response?.ProductandServiceConfigurationParameterSetting?.ArrangementStatus?.ArrangementStatusType
        },
        "ArrangementSubjectMatter": {
            "Subject": check response?.ProductandServiceConfigurationParameterSetting?.ArrangementSubjectMatter?.Subject
        },
        "Arrangementtype": check response?.ProductandServiceConfigurationParameterSetting?.Arrangementtype,
        "ArrangementIdentification": {
            "IdentifierValue": check response?.ProductandServiceConfigurationParameterSetting?.ArrangementIdentification?.IdentifierValue,
            "IdentifierIssuerReference": {
                "PartyReference": check response?.ProductandServiceConfigurationParameterSetting?.ArrangementIdentification?.IdentifierIssuerReference?.PartyReference,
                "InvolvementReference": check response?.ProductandServiceConfigurationParameterSetting?.ArrangementIdentification?.IdentifierIssuerReference?.InvolvementReference
            },
            "IdentifierStartDate": {
                "DateTimeContent": check response?.ProductandServiceConfigurationParameterSetting?.ArrangementIdentification?.IdentifierStartDate?.DateTimeContent,
                "TimeZoneCode": check response?.ProductandServiceConfigurationParameterSetting?.ArrangementIdentification?.IdentifierStartDate?.TimeZoneCode,
                "DaylightSavingIndicator": check response?.ProductandServiceConfigurationParameterSetting?.ArrangementIdentification?.IdentifierStartDate?.DaylightSavingIndicator,
                "DateTimeType": check response?.ProductandServiceConfigurationParameterSetting?.ArrangementIdentification?.IdentifierStartDate?.DateTimeType
            },
            "IdentifierEndDate": {
                "DateTimeContent": check response?.ProductandServiceConfigurationParameterSetting?.ArrangementIdentification?.IdentifierEndDate?.DateTimeContent,
                "TimeZoneCode": check response?.ProductandServiceConfigurationParameterSetting?.ArrangementIdentification?.IdentifierEndDate?.TimeZoneCode,
                "DaylightSavingIndicator": check response?.ProductandServiceConfigurationParameterSetting?.ArrangementIdentification?.IdentifierEndDate?.DaylightSavingIndicator,
                "DateTimeType": check response?.ProductandServiceConfigurationParameterSetting?.ArrangementIdentification?.IdentifierEndDate?.DateTimeType
            }
        }
    }
};
