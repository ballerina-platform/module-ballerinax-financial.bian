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

isolated function transformDocumentDirectoryInitiateResponse(json response) returns common:DocumentDirectoryEntry|error => {
    "DocumentDirectoryEntryIdentification": check response?.DocumentDirectoryEntryIdentification,
    "DirectoryEntryDateType": check response?.DirectoryEntryDateType,
    "DirectoryEntryDate": {
        "DateContent": check response?.DirectoryEntryDate?.DateContent
    },
    "DirectoryEntryStatus": {
        "StatusReason": check response?.DirectoryEntryStatus?.StatusReason,
        "StatusDateTime": {
            "DateTimeContent": check response?.DirectoryEntryStatus?.StatusDateTime?.DateTimeContent,
            "TimeZoneCode": check response?.DirectoryEntryStatus?.StatusDateTime?.TimeZoneCode,
            "DaylightSavingIndicator": check response?.DirectoryEntryStatus?.StatusDateTime?.DaylightSavingIndicator,
            "DateTimeType": check response?.DirectoryEntryStatus?.StatusDateTime?.DateTimeType
        },
        "StatusValidityPeriod": {
            "FromDateTime": {
                "DateTimeContent": check response?.DirectoryEntryStatus?.StatusValidityPeriod?.FromDateTime?.DateTimeContent,
                "TimeZoneCode": check response?.DirectoryEntryStatus?.StatusValidityPeriod?.FromDateTime?.TimeZoneCode,
                "DaylightSavingIndicator": check response?.DirectoryEntryStatus?.StatusValidityPeriod?.FromDateTime?.DaylightSavingIndicator,
                "DateTimeType": check response?.DirectoryEntryStatus?.StatusValidityPeriod?.FromDateTime?.DateTimeType
            },
            "ToDateTime": {
                "DateTimeContent": check response?.DirectoryEntryStatus?.StatusValidityPeriod?.ToDateTime?.DateTimeContent,
                "TimeZoneCode": check response?.DirectoryEntryStatus?.StatusValidityPeriod?.ToDateTime?.TimeZoneCode,
                "DaylightSavingIndicator": check response?.DirectoryEntryStatus?.StatusValidityPeriod?.ToDateTime?.DaylightSavingIndicator,
                "DateTimeType": check response?.DirectoryEntryStatus?.StatusValidityPeriod?.ToDateTime?.DateTimeType
            }
        },
        "StatusInvolvedPartyReference": {
            "PartyReference": check response?.DirectoryEntryStatus?.StatusInvolvedPartyReference?.PartyReference,
            "InvolvementReference": check response?.DirectoryEntryStatus?.StatusInvolvedPartyReference?.InvolvementReference
        }
    }
};
