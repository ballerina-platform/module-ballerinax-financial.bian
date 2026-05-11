import ballerina/http;
import ballerina/io;
import ballerina/lang.runtime;

configurable int port = ?;
configurable string serverUrl = ?;

isolated http:Client externalClient = check new (serverUrl);
http:Listener httpListener = check new (port);

public function main() returns error? {
    io:println("Starting BIAN Finance and Risk Management Service on port: ", port.toString());

    // Attach the service to the listener along with the resource path. 
    check httpListener.attach(regulatoryComplianceService, "/bian/RegulatoryCompliance/v14");
    check httpListener.attach(guidelineComplianceService, "/bian/GuidelineCompliance/v14");

    //Start the listener and register it dynamically.
    check httpListener.'start();
    runtime:registerListener(httpListener);
}