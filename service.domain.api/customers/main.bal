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

import ballerina/http;
import ballerina/io;
import ballerina/lang.runtime;

configurable int port = ?;
configurable string serverUrl = ?;

isolated http:Client externalClient = check new (serverUrl);
http:Listener httpListener = check new (port);

public function main() returns error? {
    io:println("Starting BIAN Customers Service on port: ", port.toString());

    // Attach the service to the listener along with the resource path. 
    check httpListener.attach(customerOfferService, "/bian/CustomerOffer/v14");
    check httpListener.attach(customerProductAndServiceDirectoryService, "/bian/CustomerProductAndServiceDirectory/v14");
    check httpListener.attach(customerProductAndServiceEligibilityService, "/bian/CustomerProductAndServiceEligibility/v14");
    check httpListener.attach(partyLifecycleManagementService, "/bian/PartyLifecycleManagement/v14");
    check httpListener.attach(partyReferenceDataDirectoryService, "/bian/PartyReferenceDataDirectory/v14");
    check httpListener.attach(legalEntityDirectoryService, "/bian/LegalEntityDirectory/v14");
    check httpListener.attach(customerCreditRatingService, "/bian/CustomerCreditRating/v14");
    check httpListener.attach(salesProductAgreementService, "/bian/SalesProductAgreement/v14");
    
    //Start the listener and register it dynamically.
    check httpListener.'start();
    runtime:registerListener(httpListener);
}
