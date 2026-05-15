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
import ballerinax/financial.bian.attribute.groups.common as common;

isolated function transformPartyReferenceDataDirectoryAssociationResponse(json response) returns common:Associations|error => {
    "EmployeeReference": {
        "PartyReference": check response?.EmployeeReference?.PartyReference,
        "InvolvementReference": check response?.EmployeeReference?.InvolvementReference
    },
    "AssociateReference": {
        "PartyReference": check response?.AssociateReference?.PartyReference,
        "InvolvementReference": check response?.AssociateReference?.InvolvementReference
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
        "ObligationOrEntitlementDefinition": check response?.AssociateObligationorDependencyDescription?.ObligationOrEntitlementDefinition,
        "ArrangementAction": {
            "ActionType": check response?.AssociateObligationorDependencyDescription?.ArrangementAction?.ActionType,
            "EventType": check response?.AssociateObligationorDependencyDescription?.ArrangementAction?.EventType,
            "EventDateTime": {
                "DateTimeContent": check response?.AssociateObligationorDependencyDescription?.ArrangementAction?.EventDateTime?.DateTimeContent,
                "TimeZoneCode": check response?.AssociateObligationorDependencyDescription?.ArrangementAction?.EventDateTime?.TimeZoneCode,
                "DaylightSavingIndicator": check response?.AssociateObligationorDependencyDescription?.ArrangementAction?.EventDateTime?.DaylightSavingIndicator,
                "DateTimeType": check response?.AssociateObligationorDependencyDescription?.ArrangementAction?.EventDateTime?.DateTimeType
            },
            "EventDescription": check response?.AssociateObligationorDependencyDescription?.ArrangementAction?.EventDescription,
            "EventSource": check response?.AssociateObligationorDependencyDescription?.ArrangementAction?.EventSource,
            "EventLocation": {
                "LocationDescription": check response?.AssociateObligationorDependencyDescription?.ArrangementAction?.EventLocation?.LocationDescription,
                "LocationDateTime": {
                    "DateTimeContent": check response?.AssociateObligationorDependencyDescription?.ArrangementAction?.EventLocation?.LocationDateTime?.DateTimeContent,
                    "TimeZoneCode": check response?.AssociateObligationorDependencyDescription?.ArrangementAction?.EventLocation?.LocationDateTime?.TimeZoneCode,
                    "DaylightSavingIndicator": check response?.AssociateObligationorDependencyDescription?.ArrangementAction?.EventLocation?.LocationDateTime?.DaylightSavingIndicator,
                    "DateTimeType": check response?.AssociateObligationorDependencyDescription?.ArrangementAction?.EventLocation?.LocationDateTime?.DateTimeType
                },
                "LocationStatus": {
                    "StatusReason": check response?.AssociateObligationorDependencyDescription?.ArrangementAction?.EventLocation?.LocationStatus?.StatusReason,
                    "StatusDateTime": {
                        "DateTimeContent": check response?.AssociateObligationorDependencyDescription?.ArrangementAction?.EventLocation?.LocationStatus?.StatusDateTime?.DateTimeContent,
                        "TimeZoneCode": check response?.AssociateObligationorDependencyDescription?.ArrangementAction?.EventLocation?.LocationStatus?.StatusDateTime?.TimeZoneCode,
                        "DaylightSavingIndicator": check response?.AssociateObligationorDependencyDescription?.ArrangementAction?.EventLocation?.LocationStatus?.StatusDateTime?.DaylightSavingIndicator,
                        "DateTimeType": check response?.AssociateObligationorDependencyDescription?.ArrangementAction?.EventLocation?.LocationStatus?.StatusDateTime?.DateTimeType
                    },
                    "StatusValidityPeriod": {
                        "FromDateTime": {
                            "DateTimeContent": check response?.AssociateObligationorDependencyDescription?.ArrangementAction?.EventLocation?.LocationStatus?.StatusValidityPeriod?.FromDateTime?.DateTimeContent,
                            "TimeZoneCode": check response?.AssociateObligationorDependencyDescription?.ArrangementAction?.EventLocation?.LocationStatus?.StatusValidityPeriod?.FromDateTime?.TimeZoneCode,
                            "DaylightSavingIndicator": check response?.AssociateObligationorDependencyDescription?.ArrangementAction?.EventLocation?.LocationStatus?.StatusValidityPeriod?.FromDateTime?.DaylightSavingIndicator,
                            "DateTimeType": check response?.AssociateObligationorDependencyDescription?.ArrangementAction?.EventLocation?.LocationStatus?.StatusValidityPeriod?.FromDateTime?.DateTimeType
                        },
                        "ToDateTime": {
                            "DateTimeContent": check response?.AssociateObligationorDependencyDescription?.ArrangementAction?.EventLocation?.LocationStatus?.StatusValidityPeriod?.ToDateTime?.DateTimeContent,
                            "TimeZoneCode": check response?.AssociateObligationorDependencyDescription?.ArrangementAction?.EventLocation?.LocationStatus?.StatusValidityPeriod?.ToDateTime?.TimeZoneCode,
                            "DaylightSavingIndicator": check response?.AssociateObligationorDependencyDescription?.ArrangementAction?.EventLocation?.LocationStatus?.StatusValidityPeriod?.ToDateTime?.DaylightSavingIndicator,
                            "DateTimeType": check response?.AssociateObligationorDependencyDescription?.ArrangementAction?.EventLocation?.LocationStatus?.StatusValidityPeriod?.ToDateTime?.DateTimeType
                        }
                    },
                    "StatusInvolvedPartyReference": {
                        "PartyReference": check response?.AssociateObligationorDependencyDescription?.ArrangementAction?.EventLocation?.LocationStatus?.StatusInvolvedPartyReference?.PartyReference,
                        "InvolvementReference": check response?.AssociateObligationorDependencyDescription?.ArrangementAction?.EventLocation?.LocationStatus?.StatusInvolvedPartyReference?.InvolvementReference
                    }
                },
                "LocationType": check response?.AssociateObligationorDependencyDescription?.ArrangementAction?.EventLocation?.LocationType,
                "LocationZoningType": check response?.AssociateObligationorDependencyDescription?.ArrangementAction?.EventLocation?.LocationZoningType,
                "LocationNeighborhoodType": check response?.AssociateObligationorDependencyDescription?.ArrangementAction?.EventLocation?.LocationNeighborhoodType,
                "LocationConstructionType": check response?.AssociateObligationorDependencyDescription?.ArrangementAction?.EventLocation?.LocationConstructionType,
                "LocationOccupancyType": check response?.AssociateObligationorDependencyDescription?.ArrangementAction?.EventLocation?.LocationOccupancyType,
                "LocationValue": check response?.AssociateObligationorDependencyDescription?.ArrangementAction?.EventLocation?.LocationValue,
                "LocationCapacity": check response?.AssociateObligationorDependencyDescription?.ArrangementAction?.EventLocation?.LocationCapacity,
                "LocationIdentification": {
                    "IdentifierValue": check response?.AssociateObligationorDependencyDescription?.ArrangementAction?.EventLocation?.LocationIdentification?.IdentifierValue,
                    "IdentifierIssuerReference": {
                        "PartyReference": check response?.AssociateObligationorDependencyDescription?.ArrangementAction?.EventLocation?.LocationIdentification?.IdentifierIssuerReference?.PartyReference,
                        "InvolvementReference": check response?.AssociateObligationorDependencyDescription?.ArrangementAction?.EventLocation?.LocationIdentification?.IdentifierIssuerReference?.InvolvementReference
                    },
                    "IdentifierStartDate": {
                        "DateTimeContent": check response?.AssociateObligationorDependencyDescription?.ArrangementAction?.EventLocation?.LocationIdentification?.IdentifierStartDate?.DateTimeContent,
                        "TimeZoneCode": check response?.AssociateObligationorDependencyDescription?.ArrangementAction?.EventLocation?.LocationIdentification?.IdentifierStartDate?.TimeZoneCode,
                        "DaylightSavingIndicator": check response?.AssociateObligationorDependencyDescription?.ArrangementAction?.EventLocation?.LocationIdentification?.IdentifierStartDate?.DaylightSavingIndicator,
                        "DateTimeType": check response?.AssociateObligationorDependencyDescription?.ArrangementAction?.EventLocation?.LocationIdentification?.IdentifierStartDate?.DateTimeType
                    },
                    "IdentifierEndDate": {
                        "DateTimeContent": check response?.AssociateObligationorDependencyDescription?.ArrangementAction?.EventLocation?.LocationIdentification?.IdentifierEndDate?.DateTimeContent,
                        "TimeZoneCode": check response?.AssociateObligationorDependencyDescription?.ArrangementAction?.EventLocation?.LocationIdentification?.IdentifierEndDate?.TimeZoneCode,
                        "DaylightSavingIndicator": check response?.AssociateObligationorDependencyDescription?.ArrangementAction?.EventLocation?.LocationIdentification?.IdentifierEndDate?.DaylightSavingIndicator,
                        "DateTimeType": check response?.AssociateObligationorDependencyDescription?.ArrangementAction?.EventLocation?.LocationIdentification?.IdentifierEndDate?.DateTimeType
                    }
                },
                "LocationAddress": check response?.AssociateObligationorDependencyDescription?.ArrangementAction?.EventLocation?.LocationAddress,
                "LocationName": {
                    "Name": check response?.AssociateObligationorDependencyDescription?.ArrangementAction?.EventLocation?.LocationName?.Name
                },
                "LocationTimeZone": check response?.AssociateObligationorDependencyDescription?.ArrangementAction?.EventLocation?.LocationTimeZone
            },
            "EventAction": check response?.AssociateObligationorDependencyDescription?.ArrangementAction?.EventAction,
            "EventStatus": {
                "StatusReason": check response?.AssociateObligationorDependencyDescription?.ArrangementAction?.EventStatus?.StatusReason,
                "StatusDateTime": {
                    "DateTimeContent": check response?.AssociateObligationorDependencyDescription?.ArrangementAction?.EventStatus?.StatusDateTime?.DateTimeContent,
                    "TimeZoneCode": check response?.AssociateObligationorDependencyDescription?.ArrangementAction?.EventStatus?.StatusDateTime?.TimeZoneCode,
                    "DaylightSavingIndicator": check response?.AssociateObligationorDependencyDescription?.ArrangementAction?.EventStatus?.StatusDateTime?.DaylightSavingIndicator,
                    "DateTimeType": check response?.AssociateObligationorDependencyDescription?.ArrangementAction?.EventStatus?.StatusDateTime?.DateTimeType
                },
                "StatusValidityPeriod": {
                    "FromDateTime": {
                        "DateTimeContent": check response?.AssociateObligationorDependencyDescription?.ArrangementAction?.EventStatus?.StatusValidityPeriod?.FromDateTime?.DateTimeContent,
                        "TimeZoneCode": check response?.AssociateObligationorDependencyDescription?.ArrangementAction?.EventStatus?.StatusValidityPeriod?.FromDateTime?.TimeZoneCode,
                        "DaylightSavingIndicator": check response?.AssociateObligationorDependencyDescription?.ArrangementAction?.EventStatus?.StatusValidityPeriod?.FromDateTime?.DaylightSavingIndicator,
                        "DateTimeType": check response?.AssociateObligationorDependencyDescription?.ArrangementAction?.EventStatus?.StatusValidityPeriod?.FromDateTime?.DateTimeType
                    },
                    "ToDateTime": {
                        "DateTimeContent": check response?.AssociateObligationorDependencyDescription?.ArrangementAction?.EventStatus?.StatusValidityPeriod?.ToDateTime?.DateTimeContent,
                        "TimeZoneCode": check response?.AssociateObligationorDependencyDescription?.ArrangementAction?.EventStatus?.StatusValidityPeriod?.ToDateTime?.TimeZoneCode,
                        "DaylightSavingIndicator": check response?.AssociateObligationorDependencyDescription?.ArrangementAction?.EventStatus?.StatusValidityPeriod?.ToDateTime?.DaylightSavingIndicator,
                        "DateTimeType": check response?.AssociateObligationorDependencyDescription?.ArrangementAction?.EventStatus?.StatusValidityPeriod?.ToDateTime?.DateTimeType
                    }
                },
                "StatusInvolvedPartyReference": {
                    "PartyReference": check response?.AssociateObligationorDependencyDescription?.ArrangementAction?.EventStatus?.StatusInvolvedPartyReference?.PartyReference,
                    "InvolvementReference": check response?.AssociateObligationorDependencyDescription?.ArrangementAction?.EventStatus?.StatusInvolvedPartyReference?.InvolvementReference
                }
            },
            "EventValue": check response?.AssociateObligationorDependencyDescription?.ArrangementAction?.EventValue,
            "EventValidityPeriod": {
                "FromDateTime": {
                    "DateTimeContent": check response?.AssociateObligationorDependencyDescription?.ArrangementAction?.EventValidityPeriod?.FromDateTime?.DateTimeContent,
                    "TimeZoneCode": check response?.AssociateObligationorDependencyDescription?.ArrangementAction?.EventValidityPeriod?.FromDateTime?.TimeZoneCode,
                    "DaylightSavingIndicator": check response?.AssociateObligationorDependencyDescription?.ArrangementAction?.EventValidityPeriod?.FromDateTime?.DaylightSavingIndicator,
                    "DateTimeType": check response?.AssociateObligationorDependencyDescription?.ArrangementAction?.EventValidityPeriod?.FromDateTime?.DateTimeType
                },
                "ToDateTime": {
                    "DateTimeContent": check response?.AssociateObligationorDependencyDescription?.ArrangementAction?.EventValidityPeriod?.ToDateTime?.DateTimeContent,
                    "TimeZoneCode": check response?.AssociateObligationorDependencyDescription?.ArrangementAction?.EventValidityPeriod?.ToDateTime?.TimeZoneCode,
                    "DaylightSavingIndicator": check response?.AssociateObligationorDependencyDescription?.ArrangementAction?.EventValidityPeriod?.ToDateTime?.DaylightSavingIndicator,
                    "DateTimeType": check response?.AssociateObligationorDependencyDescription?.ArrangementAction?.EventValidityPeriod?.ToDateTime?.DateTimeType
                }
            },
            "EventIdentification": {
                "IdentifierValue": check response?.AssociateObligationorDependencyDescription?.ArrangementAction?.EventIdentification?.IdentifierValue,
                "IdentifierIssuerReference": {
                    "PartyReference": check response?.AssociateObligationorDependencyDescription?.ArrangementAction?.EventIdentification?.IdentifierIssuerReference?.PartyReference,
                    "InvolvementReference": check response?.AssociateObligationorDependencyDescription?.ArrangementAction?.EventIdentification?.IdentifierIssuerReference?.InvolvementReference
                },
                "IdentifierStartDate": {
                    "DateTimeContent": check response?.AssociateObligationorDependencyDescription?.ArrangementAction?.EventIdentification?.IdentifierStartDate?.DateTimeContent,
                    "TimeZoneCode": check response?.AssociateObligationorDependencyDescription?.ArrangementAction?.EventIdentification?.IdentifierStartDate?.TimeZoneCode,
                    "DaylightSavingIndicator": check response?.AssociateObligationorDependencyDescription?.ArrangementAction?.EventIdentification?.IdentifierStartDate?.DaylightSavingIndicator,
                    "DateTimeType": check response?.AssociateObligationorDependencyDescription?.ArrangementAction?.EventIdentification?.IdentifierStartDate?.DateTimeType
                },
                "IdentifierEndDate": {
                    "DateTimeContent": check response?.AssociateObligationorDependencyDescription?.ArrangementAction?.EventIdentification?.IdentifierEndDate?.DateTimeContent,
                    "TimeZoneCode": check response?.AssociateObligationorDependencyDescription?.ArrangementAction?.EventIdentification?.IdentifierEndDate?.TimeZoneCode,
                    "DaylightSavingIndicator": check response?.AssociateObligationorDependencyDescription?.ArrangementAction?.EventIdentification?.IdentifierEndDate?.DaylightSavingIndicator,
                    "DateTimeType": check response?.AssociateObligationorDependencyDescription?.ArrangementAction?.EventIdentification?.IdentifierEndDate?.DateTimeType
                }
            }
        },
        "ArrangementStartDate": {
            "DateTimeContent": check response?.AssociateObligationorDependencyDescription?.ArrangementStartDate?.DateTimeContent,
            "TimeZoneCode": check response?.AssociateObligationorDependencyDescription?.ArrangementStartDate?.TimeZoneCode,
            "DaylightSavingIndicator": check response?.AssociateObligationorDependencyDescription?.ArrangementStartDate?.DaylightSavingIndicator,
            "DateTimeType": check response?.AssociateObligationorDependencyDescription?.ArrangementStartDate?.DateTimeType
        },
        "ArrangementEndDate": {
            "DateTimeContent": check response?.AssociateObligationorDependencyDescription?.ArrangementEndDate?.DateTimeContent,
            "TimeZoneCode": check response?.AssociateObligationorDependencyDescription?.ArrangementEndDate?.TimeZoneCode,
            "DaylightSavingIndicator": check response?.AssociateObligationorDependencyDescription?.ArrangementEndDate?.DaylightSavingIndicator,
            "DateTimeType": check response?.AssociateObligationorDependencyDescription?.ArrangementEndDate?.DateTimeType
        },
        "ArrangementStatus": {
            "ArrangementStatus": {
                "StatusReason": check response?.AssociateObligationorDependencyDescription?.ArrangementStatus?.ArrangementStatus?.StatusReason,
                "StatusDateTime": {
                    "DateTimeContent": check response?.AssociateObligationorDependencyDescription?.ArrangementStatus?.ArrangementStatus?.StatusDateTime?.DateTimeContent,
                    "TimeZoneCode": check response?.AssociateObligationorDependencyDescription?.ArrangementStatus?.ArrangementStatus?.StatusDateTime?.TimeZoneCode,
                    "DaylightSavingIndicator": check response?.AssociateObligationorDependencyDescription?.ArrangementStatus?.ArrangementStatus?.StatusDateTime?.DaylightSavingIndicator,
                    "DateTimeType": check response?.AssociateObligationorDependencyDescription?.ArrangementStatus?.ArrangementStatus?.StatusDateTime?.DateTimeType
                },
                "StatusValidityPeriod": {
                    "FromDateTime": {
                        "DateTimeContent": check response?.AssociateObligationorDependencyDescription?.ArrangementStatus?.ArrangementStatus?.StatusValidityPeriod?.FromDateTime?.DateTimeContent,
                        "TimeZoneCode": check response?.AssociateObligationorDependencyDescription?.ArrangementStatus?.ArrangementStatus?.StatusValidityPeriod?.FromDateTime?.TimeZoneCode,
                        "DaylightSavingIndicator": check response?.AssociateObligationorDependencyDescription?.ArrangementStatus?.ArrangementStatus?.StatusValidityPeriod?.FromDateTime?.DaylightSavingIndicator,
                        "DateTimeType": check response?.AssociateObligationorDependencyDescription?.ArrangementStatus?.ArrangementStatus?.StatusValidityPeriod?.FromDateTime?.DateTimeType
                    },
                    "ToDateTime": {
                        "DateTimeContent": check response?.AssociateObligationorDependencyDescription?.ArrangementStatus?.ArrangementStatus?.StatusValidityPeriod?.ToDateTime?.DateTimeContent,
                        "TimeZoneCode": check response?.AssociateObligationorDependencyDescription?.ArrangementStatus?.ArrangementStatus?.StatusValidityPeriod?.ToDateTime?.TimeZoneCode,
                        "DaylightSavingIndicator": check response?.AssociateObligationorDependencyDescription?.ArrangementStatus?.ArrangementStatus?.StatusValidityPeriod?.ToDateTime?.DaylightSavingIndicator,
                        "DateTimeType": check response?.AssociateObligationorDependencyDescription?.ArrangementStatus?.ArrangementStatus?.StatusValidityPeriod?.ToDateTime?.DateTimeType
                    }
                },
                "StatusInvolvedPartyReference": {
                    "PartyReference": check response?.AssociateObligationorDependencyDescription?.ArrangementStatus?.ArrangementStatus?.StatusInvolvedPartyReference?.PartyReference,
                    "InvolvementReference": check response?.AssociateObligationorDependencyDescription?.ArrangementStatus?.ArrangementStatus?.StatusInvolvedPartyReference?.InvolvementReference
                }
            },
            "ArrangementStatusType": check response?.AssociateObligationorDependencyDescription?.ArrangementStatus?.ArrangementStatusType
        },
        "ArrangementSubjectMatter": {
            "Subject": check response?.AssociateObligationorDependencyDescription?.ArrangementSubjectMatter?.Subject
        },
        "Arrangementtype": check response?.AssociateObligationorDependencyDescription?.Arrangementtype,
        "ArrangementIdentification": {
            "IdentifierValue": check response?.AssociateObligationorDependencyDescription?.ArrangementIdentification?.IdentifierValue,
            "IdentifierIssuerReference": {
                "PartyReference": check response?.AssociateObligationorDependencyDescription?.ArrangementIdentification?.IdentifierIssuerReference?.PartyReference,
                "InvolvementReference": check response?.AssociateObligationorDependencyDescription?.ArrangementIdentification?.IdentifierIssuerReference?.InvolvementReference
            },
            "IdentifierStartDate": {
                "DateTimeContent": check response?.AssociateObligationorDependencyDescription?.ArrangementIdentification?.IdentifierStartDate?.DateTimeContent,
                "TimeZoneCode": check response?.AssociateObligationorDependencyDescription?.ArrangementIdentification?.IdentifierStartDate?.TimeZoneCode,
                "DaylightSavingIndicator": check response?.AssociateObligationorDependencyDescription?.ArrangementIdentification?.IdentifierStartDate?.DaylightSavingIndicator,
                "DateTimeType": check response?.AssociateObligationorDependencyDescription?.ArrangementIdentification?.IdentifierStartDate?.DateTimeType
            },
            "IdentifierEndDate": {
                "DateTimeContent": check response?.AssociateObligationorDependencyDescription?.ArrangementIdentification?.IdentifierEndDate?.DateTimeContent,
                "TimeZoneCode": check response?.AssociateObligationorDependencyDescription?.ArrangementIdentification?.IdentifierEndDate?.TimeZoneCode,
                "DaylightSavingIndicator": check response?.AssociateObligationorDependencyDescription?.ArrangementIdentification?.IdentifierEndDate?.DaylightSavingIndicator,
                "DateTimeType": check response?.AssociateObligationorDependencyDescription?.ArrangementIdentification?.IdentifierEndDate?.DateTimeType
            }
        },
        "SavingsAccountArrangementType": check response?.AssociateObligationorDependencyDescription?.SavingsAccountArrangementType,
        "SavingsAccountArrangementProductFeatureType": {
            "ProductFeatureTypeValues": check response?.AssociateObligationorDependencyDescription?.SavingsAccountArrangementProductFeatureType?.ProductFeatureTypeValues
        },
        "TermDepositArrangementType": check response?.AssociateObligationorDependencyDescription?.TermDepositArrangementType,
        "TermDepositArrangementProductFeatureType": {
            "ProductFeatureTypeValues": check response?.AssociateObligationorDependencyDescription?.TermDepositArrangementProductFeatureType?.ProductFeatureTypeValues
        },
        "TermDepositMaturityDate": {
            "DateTimeContent": check response?.AssociateObligationorDependencyDescription?.TermDepositMaturityDate?.DateTimeContent,
            "TimeZoneCode": check response?.AssociateObligationorDependencyDescription?.TermDepositMaturityDate?.TimeZoneCode,
            "DaylightSavingIndicator": check response?.AssociateObligationorDependencyDescription?.TermDepositMaturityDate?.DaylightSavingIndicator,
            "DateTimeType": check response?.AssociateObligationorDependencyDescription?.TermDepositMaturityDate?.DateTimeType
        },
        "TermDepositOpenDate": {
            "DateTimeContent": check response?.AssociateObligationorDependencyDescription?.TermDepositOpenDate?.DateTimeContent,
            "TimeZoneCode": check response?.AssociateObligationorDependencyDescription?.TermDepositOpenDate?.TimeZoneCode,
            "DaylightSavingIndicator": check response?.AssociateObligationorDependencyDescription?.TermDepositOpenDate?.DaylightSavingIndicator,
            "DateTimeType": check response?.AssociateObligationorDependencyDescription?.TermDepositOpenDate?.DateTimeType
        },
        "TermDepositAmount": {
            "AmountValue": check response?.AssociateObligationorDependencyDescription?.TermDepositAmount?.AmountValue,
            "AmountCurrency": {
                "Currencycode": check response?.AssociateObligationorDependencyDescription?.TermDepositAmount?.AmountCurrency?.Currencycode
            },
            "DecimalPointPosition": check response?.AssociateObligationorDependencyDescription?.TermDepositAmount?.DecimalPointPosition,
            "AmountType": check response?.AssociateObligationorDependencyDescription?.TermDepositAmount?.AmountType
        },
        "TermDepositDuration": {
            "Duration": check response?.AssociateObligationorDependencyDescription?.TermDepositDuration?.Duration
        },
        "DepositTerm": check response?.AssociateObligationorDependencyDescription?.DepositTerm
    },
    "AssociationValidFromToDate": {
        "FromDateTime": {
            "DateTimeContent": check response?.AssociationValidFromToDate?.FromDateTime?.DateTimeContent,
            "TimeZoneCode": check response?.AssociationValidFromToDate?.FromDateTime?.TimeZoneCode,
            "DaylightSavingIndicator": check response?.AssociationValidFromToDate?.FromDateTime?.DaylightSavingIndicator,
            "DateTimeType": check response?.AssociationValidFromToDate?.FromDateTime?.DateTimeType
        },
        "ToDateTime": {
            "DateTimeContent": check response?.AssociationValidFromToDate?.ToDateTime?.DateTimeContent,
            "TimeZoneCode": check response?.AssociationValidFromToDate?.ToDateTime?.TimeZoneCode,
            "DaylightSavingIndicator": check response?.AssociationValidFromToDate?.ToDateTime?.DaylightSavingIndicator,
            "DateTimeType": check response?.AssociationValidFromToDate?.ToDateTime?.DateTimeType
        }
    },
    "ProductInstanceReference": {
        "ProductAgreementType": check response?.ProductInstanceReference?.ProductAgreementType,
        "ProductAgreementIdentification": {
            "IdentifierValue": check response?.ProductInstanceReference?.ProductAgreementIdentification?.IdentifierValue,
            "IdentifierIssuerReference": {
                "PartyReference": check response?.ProductInstanceReference?.ProductAgreementIdentification?.IdentifierIssuerReference?.PartyReference,
                "InvolvementReference": check response?.ProductInstanceReference?.ProductAgreementIdentification?.IdentifierIssuerReference?.InvolvementReference
            },
            "IdentifierStartDate": {
                "DateTimeContent": check response?.ProductInstanceReference?.ProductAgreementIdentification?.IdentifierStartDate?.DateTimeContent,
                "TimeZoneCode": check response?.ProductInstanceReference?.ProductAgreementIdentification?.IdentifierStartDate?.TimeZoneCode,
                "DaylightSavingIndicator": check response?.ProductInstanceReference?.ProductAgreementIdentification?.IdentifierStartDate?.DaylightSavingIndicator,
                "DateTimeType": check response?.ProductInstanceReference?.ProductAgreementIdentification?.IdentifierStartDate?.DateTimeType
            },
            "IdentifierEndDate": {
                "DateTimeContent": check response?.ProductInstanceReference?.ProductAgreementIdentification?.IdentifierEndDate?.DateTimeContent,
                "TimeZoneCode": check response?.ProductInstanceReference?.ProductAgreementIdentification?.IdentifierEndDate?.TimeZoneCode,
                "DaylightSavingIndicator": check response?.ProductInstanceReference?.ProductAgreementIdentification?.IdentifierEndDate?.DaylightSavingIndicator,
                "DateTimeType": check response?.ProductInstanceReference?.ProductAgreementIdentification?.IdentifierEndDate?.DateTimeType
            }
        },
        "AgreementSignedDate": {
            "DateContent": check response?.ProductInstanceReference?.AgreementSignedDate?.DateContent
        },
        "AgreementType": check response?.ProductInstanceReference?.AgreementType,
        "AgreementValidityPeriod": {
            "FromDateTime": {
                "DateTimeContent": check response?.ProductInstanceReference?.AgreementValidityPeriod?.FromDateTime?.DateTimeContent,
                "TimeZoneCode": check response?.ProductInstanceReference?.AgreementValidityPeriod?.FromDateTime?.TimeZoneCode,
                "DaylightSavingIndicator": check response?.ProductInstanceReference?.AgreementValidityPeriod?.FromDateTime?.DaylightSavingIndicator,
                "DateTimeType": check response?.ProductInstanceReference?.AgreementValidityPeriod?.FromDateTime?.DateTimeType
            },
            "ToDateTime": {
                "DateTimeContent": check response?.ProductInstanceReference?.AgreementValidityPeriod?.ToDateTime?.DateTimeContent,
                "TimeZoneCode": check response?.ProductInstanceReference?.AgreementValidityPeriod?.ToDateTime?.TimeZoneCode,
                "DaylightSavingIndicator": check response?.ProductInstanceReference?.AgreementValidityPeriod?.ToDateTime?.DaylightSavingIndicator,
                "DateTimeType": check response?.ProductInstanceReference?.AgreementValidityPeriod?.ToDateTime?.DateTimeType
            }
        },
        "AgreementVersion": check response?.ProductInstanceReference?.AgreementVersion,
        "AgreementStatus": {
            "AgreementStatus": {
                "StatusReason": check response?.ProductInstanceReference?.AgreementStatus?.AgreementStatus?.StatusReason,
                "StatusDateTime": {
                    "DateTimeContent": check response?.ProductInstanceReference?.AgreementStatus?.AgreementStatus?.StatusDateTime?.DateTimeContent,
                    "TimeZoneCode": check response?.ProductInstanceReference?.AgreementStatus?.AgreementStatus?.StatusDateTime?.TimeZoneCode,
                    "DaylightSavingIndicator": check response?.ProductInstanceReference?.AgreementStatus?.AgreementStatus?.StatusDateTime?.DaylightSavingIndicator,
                    "DateTimeType": check response?.ProductInstanceReference?.AgreementStatus?.AgreementStatus?.StatusDateTime?.DateTimeType
                },
                "StatusValidityPeriod": {
                    "FromDateTime": {
                        "DateTimeContent": check response?.ProductInstanceReference?.AgreementStatus?.AgreementStatus?.StatusValidityPeriod?.FromDateTime?.DateTimeContent,
                        "TimeZoneCode": check response?.ProductInstanceReference?.AgreementStatus?.AgreementStatus?.StatusValidityPeriod?.FromDateTime?.TimeZoneCode,
                        "DaylightSavingIndicator": check response?.ProductInstanceReference?.AgreementStatus?.AgreementStatus?.StatusValidityPeriod?.FromDateTime?.DaylightSavingIndicator,
                        "DateTimeType": check response?.ProductInstanceReference?.AgreementStatus?.AgreementStatus?.StatusValidityPeriod?.FromDateTime?.DateTimeType
                    },
                    "ToDateTime": {
                        "DateTimeContent": check response?.ProductInstanceReference?.AgreementStatus?.AgreementStatus?.StatusValidityPeriod?.ToDateTime?.DateTimeContent,
                        "TimeZoneCode": check response?.ProductInstanceReference?.AgreementStatus?.AgreementStatus?.StatusValidityPeriod?.ToDateTime?.TimeZoneCode,
                        "DaylightSavingIndicator": check response?.ProductInstanceReference?.AgreementStatus?.AgreementStatus?.StatusValidityPeriod?.ToDateTime?.DaylightSavingIndicator,
                        "DateTimeType": check response?.ProductInstanceReference?.AgreementStatus?.AgreementStatus?.StatusValidityPeriod?.ToDateTime?.DateTimeType
                    }
                },
                "StatusInvolvedPartyReference": {
                    "PartyReference": check response?.ProductInstanceReference?.AgreementStatus?.AgreementStatus?.StatusInvolvedPartyReference?.PartyReference,
                    "InvolvementReference": check response?.ProductInstanceReference?.AgreementStatus?.AgreementStatus?.StatusInvolvedPartyReference?.InvolvementReference
                }
            },
            "AgreementStatusType": check response?.ProductInstanceReference?.AgreementStatus?.AgreementStatusType
        },
        "AgreementSubjectMatter": check response?.ProductInstanceReference?.AgreementSubjectMatter,
        "AgreementIdentification": {
            "IdentifierValue": check response?.ProductInstanceReference?.AgreementIdentification?.IdentifierValue,
            "IdentifierIssuerReference": {
                "PartyReference": check response?.ProductInstanceReference?.AgreementIdentification?.IdentifierIssuerReference?.PartyReference,
                "InvolvementReference": check response?.ProductInstanceReference?.AgreementIdentification?.IdentifierIssuerReference?.InvolvementReference
            },
            "IdentifierStartDate": {
                "DateTimeContent": check response?.ProductInstanceReference?.AgreementIdentification?.IdentifierStartDate?.DateTimeContent,
                "TimeZoneCode": check response?.ProductInstanceReference?.AgreementIdentification?.IdentifierStartDate?.TimeZoneCode,
                "DaylightSavingIndicator": check response?.ProductInstanceReference?.AgreementIdentification?.IdentifierStartDate?.DaylightSavingIndicator,
                "DateTimeType": check response?.ProductInstanceReference?.AgreementIdentification?.IdentifierStartDate?.DateTimeType
            },
            "IdentifierEndDate": {
                "DateTimeContent": check response?.ProductInstanceReference?.AgreementIdentification?.IdentifierEndDate?.DateTimeContent,
                "TimeZoneCode": check response?.ProductInstanceReference?.AgreementIdentification?.IdentifierEndDate?.TimeZoneCode,
                "DaylightSavingIndicator": check response?.ProductInstanceReference?.AgreementIdentification?.IdentifierEndDate?.DaylightSavingIndicator,
                "DateTimeType": check response?.ProductInstanceReference?.AgreementIdentification?.IdentifierEndDate?.DateTimeType
            }
        },
        "AgreementDate": {
            "DateTimeContent": check response?.ProductInstanceReference?.AgreementDate?.DateTimeContent,
            "TimeZoneCode": check response?.ProductInstanceReference?.AgreementDate?.TimeZoneCode,
            "DaylightSavingIndicator": check response?.ProductInstanceReference?.AgreementDate?.DaylightSavingIndicator,
            "DateTimeType": check response?.ProductInstanceReference?.AgreementDate?.DateTimeType
        },
        "AgreementDescription": check response?.ProductInstanceReference?.AgreementDescription
    },
    "PreferredBeneficiary": {
        "PartyReference": check response?.PreferredBeneficiary?.PartyReference,
        "InvolvementReference": check response?.PreferredBeneficiary?.InvolvementReference
    },
    "ProxyRepresentativePowerofAttorneyReference": {
        "RelationshipType": check response?.ProxyRepresentativePowerofAttorneyReference?.RelationshipType,
        "FromParty": {
            "PartyName": {
                "Name": check response?.ProxyRepresentativePowerofAttorneyReference?.FromParty?.PartyName?.Name
            },
            "PartyType": check response?.ProxyRepresentativePowerofAttorneyReference?.FromParty?.PartyType,
            "PartyDateTime": {
                "DateTimeContent": check response?.ProxyRepresentativePowerofAttorneyReference?.FromParty?.PartyDateTime?.DateTimeContent,
                "TimeZoneCode": check response?.ProxyRepresentativePowerofAttorneyReference?.FromParty?.PartyDateTime?.TimeZoneCode,
                "DaylightSavingIndicator": check response?.ProxyRepresentativePowerofAttorneyReference?.FromParty?.PartyDateTime?.DaylightSavingIndicator,
                "DateTimeType": check response?.ProxyRepresentativePowerofAttorneyReference?.FromParty?.PartyDateTime?.DateTimeType
            },
            "PartyIdentification": {
                "PartyIdentificationType": check response?.ProxyRepresentativePowerofAttorneyReference?.FromParty?.PartyIdentification?.PartyIdentificationType,
                "PartyIdentification": {
                    "IdentifierValue": check response?.ProxyRepresentativePowerofAttorneyReference?.FromParty?.PartyIdentification?.PartyIdentification?.IdentifierValue,
                    "IdentifierIssuerReference": {
                        "PartyReference": check response?.ProxyRepresentativePowerofAttorneyReference?.FromParty?.PartyIdentification?.PartyIdentification?.IdentifierIssuerReference?.PartyReference,
                        "InvolvementReference": check response?.ProxyRepresentativePowerofAttorneyReference?.FromParty?.PartyIdentification?.PartyIdentification?.IdentifierIssuerReference?.InvolvementReference
                    },
                    "IdentifierStartDate": {
                        "DateTimeContent": check response?.ProxyRepresentativePowerofAttorneyReference?.FromParty?.PartyIdentification?.PartyIdentification?.IdentifierStartDate?.DateTimeContent,
                        "TimeZoneCode": check response?.ProxyRepresentativePowerofAttorneyReference?.FromParty?.PartyIdentification?.PartyIdentification?.IdentifierStartDate?.TimeZoneCode,
                        "DaylightSavingIndicator": check response?.ProxyRepresentativePowerofAttorneyReference?.FromParty?.PartyIdentification?.PartyIdentification?.IdentifierStartDate?.DaylightSavingIndicator,
                        "DateTimeType": check response?.ProxyRepresentativePowerofAttorneyReference?.FromParty?.PartyIdentification?.PartyIdentification?.IdentifierStartDate?.DateTimeType
                    },
                    "IdentifierEndDate": {
                        "DateTimeContent": check response?.ProxyRepresentativePowerofAttorneyReference?.FromParty?.PartyIdentification?.PartyIdentification?.IdentifierEndDate?.DateTimeContent,
                        "TimeZoneCode": check response?.ProxyRepresentativePowerofAttorneyReference?.FromParty?.PartyIdentification?.PartyIdentification?.IdentifierEndDate?.TimeZoneCode,
                        "DaylightSavingIndicator": check response?.ProxyRepresentativePowerofAttorneyReference?.FromParty?.PartyIdentification?.PartyIdentification?.IdentifierEndDate?.DaylightSavingIndicator,
                        "DateTimeType": check response?.ProxyRepresentativePowerofAttorneyReference?.FromParty?.PartyIdentification?.PartyIdentification?.IdentifierEndDate?.DateTimeType
                    }
                }
            },
            "PartyLegalStructureType": check response?.ProxyRepresentativePowerofAttorneyReference?.FromParty?.PartyLegalStructureType,
            "PartyActivityIndicator": {
                "Industrycode": check response?.ProxyRepresentativePowerofAttorneyReference?.FromParty?.PartyActivityIndicator?.Industrycode
            }
        },
        "ToParty": {
            "PartyName": {
                "Name": check response?.ProxyRepresentativePowerofAttorneyReference?.ToParty?.PartyName?.Name
            },
            "PartyType": check response?.ProxyRepresentativePowerofAttorneyReference?.ToParty?.PartyType,
            "PartyDateTime": {
                "DateTimeContent": check response?.ProxyRepresentativePowerofAttorneyReference?.ToParty?.PartyDateTime?.DateTimeContent,
                "TimeZoneCode": check response?.ProxyRepresentativePowerofAttorneyReference?.ToParty?.PartyDateTime?.TimeZoneCode,
                "DaylightSavingIndicator": check response?.ProxyRepresentativePowerofAttorneyReference?.ToParty?.PartyDateTime?.DaylightSavingIndicator,
                "DateTimeType": check response?.ProxyRepresentativePowerofAttorneyReference?.ToParty?.PartyDateTime?.DateTimeType
            },
            "PartyIdentification": {
                "PartyIdentificationType": check response?.ProxyRepresentativePowerofAttorneyReference?.ToParty?.PartyIdentification?.PartyIdentificationType,
                "PartyIdentification": {
                    "IdentifierValue": check response?.ProxyRepresentativePowerofAttorneyReference?.ToParty?.PartyIdentification?.PartyIdentification?.IdentifierValue,
                    "IdentifierIssuerReference": {
                        "PartyReference": check response?.ProxyRepresentativePowerofAttorneyReference?.ToParty?.PartyIdentification?.PartyIdentification?.IdentifierIssuerReference?.PartyReference,
                        "InvolvementReference": check response?.ProxyRepresentativePowerofAttorneyReference?.ToParty?.PartyIdentification?.PartyIdentification?.IdentifierIssuerReference?.InvolvementReference
                    },
                    "IdentifierStartDate": {
                        "DateTimeContent": check response?.ProxyRepresentativePowerofAttorneyReference?.ToParty?.PartyIdentification?.PartyIdentification?.IdentifierStartDate?.DateTimeContent,
                        "TimeZoneCode": check response?.ProxyRepresentativePowerofAttorneyReference?.ToParty?.PartyIdentification?.PartyIdentification?.IdentifierStartDate?.TimeZoneCode,
                        "DaylightSavingIndicator": check response?.ProxyRepresentativePowerofAttorneyReference?.ToParty?.PartyIdentification?.PartyIdentification?.IdentifierStartDate?.DaylightSavingIndicator,
                        "DateTimeType": check response?.ProxyRepresentativePowerofAttorneyReference?.ToParty?.PartyIdentification?.PartyIdentification?.IdentifierStartDate?.DateTimeType
                    },
                    "IdentifierEndDate": {
                        "DateTimeContent": check response?.ProxyRepresentativePowerofAttorneyReference?.ToParty?.PartyIdentification?.PartyIdentification?.IdentifierEndDate?.DateTimeContent,
                        "TimeZoneCode": check response?.ProxyRepresentativePowerofAttorneyReference?.ToParty?.PartyIdentification?.PartyIdentification?.IdentifierEndDate?.TimeZoneCode,
                        "DaylightSavingIndicator": check response?.ProxyRepresentativePowerofAttorneyReference?.ToParty?.PartyIdentification?.PartyIdentification?.IdentifierEndDate?.DaylightSavingIndicator,
                        "DateTimeType": check response?.ProxyRepresentativePowerofAttorneyReference?.ToParty?.PartyIdentification?.PartyIdentification?.IdentifierEndDate?.DateTimeType
                    }
                }
            },
            "PartyLegalStructureType": check response?.ProxyRepresentativePowerofAttorneyReference?.ToParty?.PartyLegalStructureType,
            "PartyActivityIndicator": {
                "Industrycode": check response?.ProxyRepresentativePowerofAttorneyReference?.ToParty?.PartyActivityIndicator?.Industrycode
            }
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
                "DateTimeContent": check response?.ProductInstanseInvolvementReference?.PartyReference?.PartyDateTime?.DateTimeContent,
                "TimeZoneCode": check response?.ProductInstanseInvolvementReference?.PartyReference?.PartyDateTime?.TimeZoneCode,
                "DaylightSavingIndicator": check response?.ProductInstanseInvolvementReference?.PartyReference?.PartyDateTime?.DaylightSavingIndicator,
                "DateTimeType": check response?.ProductInstanseInvolvementReference?.PartyReference?.PartyDateTime?.DateTimeType
            },
            "PartyIdentification": {
                "PartyIdentificationType": check response?.ProductInstanseInvolvementReference?.PartyReference?.PartyIdentification?.PartyIdentificationType,
                "PartyIdentification": {
                    "IdentifierValue": check response?.ProductInstanseInvolvementReference?.PartyReference?.PartyIdentification?.PartyIdentification?.IdentifierValue,
                    "IdentifierIssuerReference": {
                        "PartyReference": check response?.ProductInstanseInvolvementReference?.PartyReference?.PartyIdentification?.PartyIdentification?.IdentifierIssuerReference?.PartyReference,
                        "InvolvementReference": check response?.ProductInstanseInvolvementReference?.PartyReference?.PartyIdentification?.PartyIdentification?.IdentifierIssuerReference?.InvolvementReference
                    },
                    "IdentifierStartDate": {
                        "DateTimeContent": check response?.ProductInstanseInvolvementReference?.PartyReference?.PartyIdentification?.PartyIdentification?.IdentifierStartDate?.DateTimeContent,
                        "TimeZoneCode": check response?.ProductInstanseInvolvementReference?.PartyReference?.PartyIdentification?.PartyIdentification?.IdentifierStartDate?.TimeZoneCode,
                        "DaylightSavingIndicator": check response?.ProductInstanseInvolvementReference?.PartyReference?.PartyIdentification?.PartyIdentification?.IdentifierStartDate?.DaylightSavingIndicator,
                        "DateTimeType": check response?.ProductInstanseInvolvementReference?.PartyReference?.PartyIdentification?.PartyIdentification?.IdentifierStartDate?.DateTimeType
                    },
                    "IdentifierEndDate": {
                        "DateTimeContent": check response?.ProductInstanseInvolvementReference?.PartyReference?.PartyIdentification?.PartyIdentification?.IdentifierEndDate?.DateTimeContent,
                        "TimeZoneCode": check response?.ProductInstanseInvolvementReference?.PartyReference?.PartyIdentification?.PartyIdentification?.IdentifierEndDate?.TimeZoneCode,
                        "DaylightSavingIndicator": check response?.ProductInstanseInvolvementReference?.PartyReference?.PartyIdentification?.PartyIdentification?.IdentifierEndDate?.DaylightSavingIndicator,
                        "DateTimeType": check response?.ProductInstanseInvolvementReference?.PartyReference?.PartyIdentification?.PartyIdentification?.IdentifierEndDate?.DateTimeType
                    }
                }
            },
            "PartyLegalStructureType": check response?.ProductInstanseInvolvementReference?.PartyReference?.PartyLegalStructureType,
            "PartyActivityIndicator": {
                "Industrycode": check response?.ProductInstanseInvolvementReference?.PartyReference?.PartyActivityIndicator?.Industrycode
            }
        },
        "AgreementReference": {
            "ProductAgreementType": check response?.ProductInstanseInvolvementReference?.AgreementReference?.ProductAgreementType,
            "ProductAgreementIdentification": {
                "IdentifierValue": check response?.ProductInstanseInvolvementReference?.AgreementReference?.ProductAgreementIdentification?.IdentifierValue,
                "IdentifierIssuerReference": {
                    "PartyReference": check response?.ProductInstanseInvolvementReference?.AgreementReference?.ProductAgreementIdentification?.IdentifierIssuerReference?.PartyReference,
                    "InvolvementReference": check response?.ProductInstanseInvolvementReference?.AgreementReference?.ProductAgreementIdentification?.IdentifierIssuerReference?.InvolvementReference
                },
                "IdentifierStartDate": {
                    "DateTimeContent": check response?.ProductInstanseInvolvementReference?.AgreementReference?.ProductAgreementIdentification?.IdentifierStartDate?.DateTimeContent,
                    "TimeZoneCode": check response?.ProductInstanseInvolvementReference?.AgreementReference?.ProductAgreementIdentification?.IdentifierStartDate?.TimeZoneCode,
                    "DaylightSavingIndicator": check response?.ProductInstanseInvolvementReference?.AgreementReference?.ProductAgreementIdentification?.IdentifierStartDate?.DaylightSavingIndicator,
                    "DateTimeType": check response?.ProductInstanseInvolvementReference?.AgreementReference?.ProductAgreementIdentification?.IdentifierStartDate?.DateTimeType
                },
                "IdentifierEndDate": {
                    "DateTimeContent": check response?.ProductInstanseInvolvementReference?.AgreementReference?.ProductAgreementIdentification?.IdentifierEndDate?.DateTimeContent,
                    "TimeZoneCode": check response?.ProductInstanseInvolvementReference?.AgreementReference?.ProductAgreementIdentification?.IdentifierEndDate?.TimeZoneCode,
                    "DaylightSavingIndicator": check response?.ProductInstanseInvolvementReference?.AgreementReference?.ProductAgreementIdentification?.IdentifierEndDate?.DaylightSavingIndicator,
                    "DateTimeType": check response?.ProductInstanseInvolvementReference?.AgreementReference?.ProductAgreementIdentification?.IdentifierEndDate?.DateTimeType
                }
            },
            "AgreementSignedDate": {
                "DateContent": check response?.ProductInstanseInvolvementReference?.AgreementReference?.AgreementSignedDate?.DateContent
            },
            "AgreementType": check response?.ProductInstanseInvolvementReference?.AgreementReference?.AgreementType,
            "AgreementValidityPeriod": {
                "FromDateTime": {
                    "DateTimeContent": check response?.ProductInstanseInvolvementReference?.AgreementReference?.AgreementValidityPeriod?.FromDateTime?.DateTimeContent,
                    "TimeZoneCode": check response?.ProductInstanseInvolvementReference?.AgreementReference?.AgreementValidityPeriod?.FromDateTime?.TimeZoneCode,
                    "DaylightSavingIndicator": check response?.ProductInstanseInvolvementReference?.AgreementReference?.AgreementValidityPeriod?.FromDateTime?.DaylightSavingIndicator,
                    "DateTimeType": check response?.ProductInstanseInvolvementReference?.AgreementReference?.AgreementValidityPeriod?.FromDateTime?.DateTimeType
                },
                "ToDateTime": {
                    "DateTimeContent": check response?.ProductInstanseInvolvementReference?.AgreementReference?.AgreementValidityPeriod?.ToDateTime?.DateTimeContent,
                    "TimeZoneCode": check response?.ProductInstanseInvolvementReference?.AgreementReference?.AgreementValidityPeriod?.ToDateTime?.TimeZoneCode,
                    "DaylightSavingIndicator": check response?.ProductInstanseInvolvementReference?.AgreementReference?.AgreementValidityPeriod?.ToDateTime?.DaylightSavingIndicator,
                    "DateTimeType": check response?.ProductInstanseInvolvementReference?.AgreementReference?.AgreementValidityPeriod?.ToDateTime?.DateTimeType
                }
            },
            "AgreementVersion": check response?.ProductInstanseInvolvementReference?.AgreementReference?.AgreementVersion,
            "AgreementStatus": {
                "AgreementStatus": {
                    "StatusReason": check response?.ProductInstanseInvolvementReference?.AgreementReference?.AgreementStatus?.AgreementStatus?.StatusReason,
                    "StatusDateTime": {
                        "DateTimeContent": check response?.ProductInstanseInvolvementReference?.AgreementReference?.AgreementStatus?.AgreementStatus?.StatusDateTime?.DateTimeContent,
                        "TimeZoneCode": check response?.ProductInstanseInvolvementReference?.AgreementReference?.AgreementStatus?.AgreementStatus?.StatusDateTime?.TimeZoneCode,
                        "DaylightSavingIndicator": check response?.ProductInstanseInvolvementReference?.AgreementReference?.AgreementStatus?.AgreementStatus?.StatusDateTime?.DaylightSavingIndicator,
                        "DateTimeType": check response?.ProductInstanseInvolvementReference?.AgreementReference?.AgreementStatus?.AgreementStatus?.StatusDateTime?.DateTimeType
                    },
                    "StatusValidityPeriod": {
                        "FromDateTime": {
                            "DateTimeContent": check response?.ProductInstanseInvolvementReference?.AgreementReference?.AgreementStatus?.AgreementStatus?.StatusValidityPeriod?.FromDateTime?.DateTimeContent,
                            "TimeZoneCode": check response?.ProductInstanseInvolvementReference?.AgreementReference?.AgreementStatus?.AgreementStatus?.StatusValidityPeriod?.FromDateTime?.TimeZoneCode,
                            "DaylightSavingIndicator": check response?.ProductInstanseInvolvementReference?.AgreementReference?.AgreementStatus?.AgreementStatus?.StatusValidityPeriod?.FromDateTime?.DaylightSavingIndicator,
                            "DateTimeType": check response?.ProductInstanseInvolvementReference?.AgreementReference?.AgreementStatus?.AgreementStatus?.StatusValidityPeriod?.FromDateTime?.DateTimeType
                        },
                        "ToDateTime": {
                            "DateTimeContent": check response?.ProductInstanseInvolvementReference?.AgreementReference?.AgreementStatus?.AgreementStatus?.StatusValidityPeriod?.ToDateTime?.DateTimeContent,
                            "TimeZoneCode": check response?.ProductInstanseInvolvementReference?.AgreementReference?.AgreementStatus?.AgreementStatus?.StatusValidityPeriod?.ToDateTime?.TimeZoneCode,
                            "DaylightSavingIndicator": check response?.ProductInstanseInvolvementReference?.AgreementReference?.AgreementStatus?.AgreementStatus?.StatusValidityPeriod?.ToDateTime?.DaylightSavingIndicator,
                            "DateTimeType": check response?.ProductInstanseInvolvementReference?.AgreementReference?.AgreementStatus?.AgreementStatus?.StatusValidityPeriod?.ToDateTime?.DateTimeType
                        }
                    },
                    "StatusInvolvedPartyReference": {
                        "PartyReference": check response?.ProductInstanseInvolvementReference?.AgreementReference?.AgreementStatus?.AgreementStatus?.StatusInvolvedPartyReference?.PartyReference,
                        "InvolvementReference": check response?.ProductInstanseInvolvementReference?.AgreementReference?.AgreementStatus?.AgreementStatus?.StatusInvolvedPartyReference?.InvolvementReference
                    }
                },
                "AgreementStatusType": check response?.ProductInstanseInvolvementReference?.AgreementReference?.AgreementStatus?.AgreementStatusType
            },
            "AgreementSubjectMatter": check response?.ProductInstanseInvolvementReference?.AgreementReference?.AgreementSubjectMatter,
            "AgreementIdentification": {
                "IdentifierValue": check response?.ProductInstanseInvolvementReference?.AgreementReference?.AgreementIdentification?.IdentifierValue,
                "IdentifierIssuerReference": {
                    "PartyReference": check response?.ProductInstanseInvolvementReference?.AgreementReference?.AgreementIdentification?.IdentifierIssuerReference?.PartyReference,
                    "InvolvementReference": check response?.ProductInstanseInvolvementReference?.AgreementReference?.AgreementIdentification?.IdentifierIssuerReference?.InvolvementReference
                },
                "IdentifierStartDate": {
                    "DateTimeContent": check response?.ProductInstanseInvolvementReference?.AgreementReference?.AgreementIdentification?.IdentifierStartDate?.DateTimeContent,
                    "TimeZoneCode": check response?.ProductInstanseInvolvementReference?.AgreementReference?.AgreementIdentification?.IdentifierStartDate?.TimeZoneCode,
                    "DaylightSavingIndicator": check response?.ProductInstanseInvolvementReference?.AgreementReference?.AgreementIdentification?.IdentifierStartDate?.DaylightSavingIndicator,
                    "DateTimeType": check response?.ProductInstanseInvolvementReference?.AgreementReference?.AgreementIdentification?.IdentifierStartDate?.DateTimeType
                },
                "IdentifierEndDate": {
                    "DateTimeContent": check response?.ProductInstanseInvolvementReference?.AgreementReference?.AgreementIdentification?.IdentifierEndDate?.DateTimeContent,
                    "TimeZoneCode": check response?.ProductInstanseInvolvementReference?.AgreementReference?.AgreementIdentification?.IdentifierEndDate?.TimeZoneCode,
                    "DaylightSavingIndicator": check response?.ProductInstanseInvolvementReference?.AgreementReference?.AgreementIdentification?.IdentifierEndDate?.DaylightSavingIndicator,
                    "DateTimeType": check response?.ProductInstanseInvolvementReference?.AgreementReference?.AgreementIdentification?.IdentifierEndDate?.DateTimeType
                }
            },
            "AgreementDate": {
                "DateTimeContent": check response?.ProductInstanseInvolvementReference?.AgreementReference?.AgreementDate?.DateTimeContent,
                "TimeZoneCode": check response?.ProductInstanseInvolvementReference?.AgreementReference?.AgreementDate?.TimeZoneCode,
                "DaylightSavingIndicator": check response?.ProductInstanseInvolvementReference?.AgreementReference?.AgreementDate?.DaylightSavingIndicator,
                "DateTimeType": check response?.ProductInstanseInvolvementReference?.AgreementReference?.AgreementDate?.DateTimeType
            },
            "AgreementDescription": check response?.ProductInstanseInvolvementReference?.AgreementReference?.AgreementDescription
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
