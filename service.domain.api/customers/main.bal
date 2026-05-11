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
    
    //Start the listener and register it dynamically.
    check httpListener.'start();
    runtime:registerListener(httpListener);
}