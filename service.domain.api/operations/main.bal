import ballerina/http;
import ballerina/io;
import ballerina/lang.runtime;

configurable int port = ?;
configurable string serverUrl = ?;

isolated http:Client externalClient = check new (serverUrl);
http:Listener httpListener = check new (port);

public function main() returns error? {
    io:println("Starting BIAN Operations Service on port: ", port.toString());

    // Attach the service to the listener along with the resource path. 
    // check httpListener.attach(achOperationsService, "/bian/ACHOperations/v14");
    check httpListener.attach(positionKeepingService, "/bian/PositionKeeping/v14");
    check httpListener.attach(correspondentBankDirectoryService, "/bian/CorrespondentBankDirectory/v14");
    // check httpListener.attach(correspondentBankOperationsService, "/bian/CorrespondentBankOperations/v14");
    // check httpListener.attach(paymentOrderService, "/bian/PaymentOrder/v14");
    // check httpListener.attach(paymentExecutionService, "/bian/PaymentExecution/v14");
    check httpListener.attach(internalBankAccountService, "/bian/InternalBankAccount/v14");
    check httpListener.attach(issuedDeviceAdministrationService, "/bian/IssuedDeviceAdministration/v14");
    check httpListener.attach(financialAccountingService, "/bian/FinancialAccounting/v14");
    check httpListener.attach(documentDirectoryService, "/bian/DocumentDirectory/v14");
    check httpListener.attach(documentServicesService, "/bian/DocumentServices/v14");
    

    //Start the listener and register it dynamically.
    check httpListener.'start();
    runtime:registerListener(httpListener);
}
