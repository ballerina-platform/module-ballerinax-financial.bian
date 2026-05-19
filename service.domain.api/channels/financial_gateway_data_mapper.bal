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

// This function transforms the response received from the server into the BIAN defined Outbound structure for Financial Gateway messages.
isolated function transformFinancialGatewayOutboundInitiateResponse(json responseFromServer) returns common:Outbound|error => {
    "FinancialGatewayOutboundMessageType": check responseFromServer?.FinancialGatewayOutboundMessageType,
    "FinancialGatewayOutboundMessageRecord": {
        "MessageType": check responseFromServer?.FinancialGatewayOutboundMessageRecord?.MessageType,
        "MessageContent": check responseFromServer?.FinancialGatewayOutboundMessageRecord?.MessageContent,
        "MessageDeliveryStatus": {
            "StatusReason": check responseFromServer?.FinancialGatewayOutboundMessageRecord?.MessageDeliveryStatus?.StatusReason,
            "StatusDateTime": {
                "DateTimeContent": check responseFromServer?.FinancialGatewayOutboundMessageRecord?.MessageDeliveryStatus?.StatusDateTime?.DateTimeContent,
                "TimeZoneCode": check responseFromServer?.FinancialGatewayOutboundMessageRecord?.MessageDeliveryStatus?.StatusDateTime?.TimeZoneCode,
                "DaylightSavingIndicator": check responseFromServer?.FinancialGatewayOutboundMessageRecord?.MessageDeliveryStatus?.StatusDateTime?.DaylightSavingIndicator,
                "DateTimeType": check responseFromServer?.FinancialGatewayOutboundMessageRecord?.MessageDeliveryStatus?.StatusDateTime?.DateTimeType
            },
            "StatusValidityPeriod": {
                "FromDateTime": {
                    "DateTimeContent": check responseFromServer?.FinancialGatewayOutboundMessageRecord?.MessageDeliveryStatus?.StatusValidityPeriod?.FromDateTime?.DateTimeContent,
                    "TimeZoneCode": check responseFromServer?.FinancialGatewayOutboundMessageRecord?.MessageDeliveryStatus?.StatusValidityPeriod?.FromDateTime?.TimeZoneCode,
                    "DaylightSavingIndicator": check responseFromServer?.FinancialGatewayOutboundMessageRecord?.MessageDeliveryStatus?.StatusValidityPeriod?.FromDateTime?.DaylightSavingIndicator,
                    "DateTimeType": check responseFromServer?.FinancialGatewayOutboundMessageRecord?.MessageDeliveryStatus?.StatusValidityPeriod?.FromDateTime?.DateTimeType
                },
                "ToDateTime": {
                    "DateTimeContent": check responseFromServer?.FinancialGatewayOutboundMessageRecord?.MessageDeliveryStatus?.StatusValidityPeriod?.ToDateTime?.DateTimeContent,
                    "TimeZoneCode": check responseFromServer?.FinancialGatewayOutboundMessageRecord?.MessageDeliveryStatus?.StatusValidityPeriod?.ToDateTime?.TimeZoneCode,
                    "DaylightSavingIndicator": check responseFromServer?.FinancialGatewayOutboundMessageRecord?.MessageDeliveryStatus?.StatusValidityPeriod?.ToDateTime?.DaylightSavingIndicator,
                    "DateTimeType": check responseFromServer?.FinancialGatewayOutboundMessageRecord?.MessageDeliveryStatus?.StatusValidityPeriod?.ToDateTime?.DateTimeType
                }
            },
            "StatusInvolvedParty": {
                "PartyReference": check responseFromServer?.FinancialGatewayOutboundMessageRecord?.MessageDeliveryStatus?.StatusInvolvedParty?.PartyReference,
                "InvolvementReference": check responseFromServer?.FinancialGatewayOutboundMessageRecord?.MessageDeliveryStatus?.StatusInvolvedParty?.InvolvementReference
            }
        }
    },
    "FinancialGatewayOutboundMessageSender": {
        "PartyReference": check responseFromServer?.FinancialGatewayOutboundMessageSender?.PartyReference,
        "InvolvementReference": check responseFromServer?.FinancialGatewayOutboundMessageSender?.InvolvementReference
    },
    "FinancialGatewayOutboundMessageReceiver": {
        "PartyReference": check responseFromServer?.FinancialGatewayOutboundMessageReceiver?.PartyReference,
        "InvolvementReference": check responseFromServer?.FinancialGatewayOutboundMessageReceiver?.InvolvementReference
    },
    "FinancialGatewayOutboundMessageStatus": {
        "StatusReason": check responseFromServer?.FinancialGatewayOutboundMessageStatus?.StatusReason,
        "StatusDateTime": {
            "DateTimeContent": check responseFromServer?.FinancialGatewayOutboundMessageStatus?.StatusDateTime?.DateTimeContent,
            "TimeZoneCode": check responseFromServer?.FinancialGatewayOutboundMessageStatus?.StatusDateTime?.TimeZoneCode,
            "DaylightSavingIndicator": check responseFromServer?.FinancialGatewayOutboundMessageStatus?.StatusDateTime?.DaylightSavingIndicator,
            "DateTimeType": check responseFromServer?.FinancialGatewayOutboundMessageStatus?.StatusDateTime?.DateTimeType
        },
        "StatusValidityPeriod": {
            "FromDateTime": {
                "DateTimeContent": check responseFromServer?.FinancialGatewayOutboundMessageStatus?.StatusValidityPeriod?.FromDateTime?.DateTimeContent,
                "TimeZoneCode": check responseFromServer?.FinancialGatewayOutboundMessageStatus?.StatusValidityPeriod?.FromDateTime?.TimeZoneCode,
                "DaylightSavingIndicator": check responseFromServer?.FinancialGatewayOutboundMessageStatus?.StatusValidityPeriod?.FromDateTime?.DaylightSavingIndicator,
                "DateTimeType": check responseFromServer?.FinancialGatewayOutboundMessageStatus?.StatusValidityPeriod?.FromDateTime?.DateTimeType
            },
            "ToDateTime": {
                "DateTimeContent": check responseFromServer?.FinancialGatewayOutboundMessageStatus?.StatusValidityPeriod?.ToDateTime?.DateTimeContent,
                "TimeZoneCode": check responseFromServer?.FinancialGatewayOutboundMessageStatus?.StatusValidityPeriod?.ToDateTime?.TimeZoneCode,
                "DaylightSavingIndicator": check responseFromServer?.FinancialGatewayOutboundMessageStatus?.StatusValidityPeriod?.ToDateTime?.DaylightSavingIndicator,
                "DateTimeType": check responseFromServer?.FinancialGatewayOutboundMessageStatus?.StatusValidityPeriod?.ToDateTime?.DateTimeType
            }
        },
        "StatusInvolvedParty": {
            "PartyReference": check responseFromServer?.FinancialGatewayOutboundMessageStatus?.StatusInvolvedParty?.PartyReference,
            "InvolvementReference": check responseFromServer?.FinancialGatewayOutboundMessageStatus?.StatusInvolvedParty?.InvolvementReference
        }
    }
};
