// import ashirwadadayarathne/bian.service_domain.operations.attribute.groups.v14_clearing_and_settlement as clearing_and_settlement;
// import ballerina/http;
// import ballerina/io;

// http:Service correspondentBankOperationsService =  service object {

//     # Retrieve clearing and settlement activity with a correspondent
//     #
//     # + return - returns can be any of following types 
//     # http:Ok (ClearingandSettlement)
//     # http:BadRequest (BadRequest)
//     # http:Unauthorized (Unauthorized)
//     # http:Forbidden (Forbidden)
//     # http:NotFound (NotFound)
//     # http:TooManyRequests (TooManyRequests)
//     # http:InternalServerError (InternalServerError)
//     isolated resource function get CorrespondentBankOperations/[string correspondentbankoperationsid]/ClearingandSettlement/[string clearingandsettlementid]/Retrieve() returns clearing_and_settlement:ClearingandSettlement|clearing_and_settlement:HTTPErrorBadRequest|clearing_and_settlement:HTTPErrorUnauthorized|clearing_and_settlement:HTTPErrorForbidden|clearing_and_settlement:HTTPErrorNotFound|clearing_and_settlement:HTTPErrorTooManyRequests|clearing_and_settlement:HTTPErrorInternalServerError {
//         return <clearing_and_settlement:ClearingandSettlement>{};
//     }

//     # Notify Inbound Payments
//     #
//     # + return - returns can be any of following types 
//     # http:Ok (InboundPayments)
//     # http:BadRequest (BadRequest)
//     # http:Unauthorized (Unauthorized)
//     # http:Forbidden (Forbidden)
//     # http:NotFound (NotFound)
//     # http:TooManyRequests (TooManyRequests)
//     # http:InternalServerError (InternalServerError)
//     isolated resource function get CorrespondentBankOperations/[string correspondentbankoperationsid]/InboundPayments/[string inboundpaymentsid]/Notify() returns clearing_and_settlement:InboundPayments|clearing_and_settlement:HTTPErrorBadRequest|clearing_and_settlement:HTTPErrorUnauthorized|clearing_and_settlement:HTTPErrorForbidden|clearing_and_settlement:HTTPErrorNotFound|clearing_and_settlement:HTTPErrorTooManyRequests|clearing_and_settlement:HTTPErrorInternalServerError {
//         return <clearing_and_settlement:InboundPayments>{};
//     }

//     # Retrieve inbound payments
//     #
//     # + return - returns can be any of following types 
//     # http:Ok (InboundPayments)
//     # http:BadRequest (BadRequest)
//     # http:Unauthorized (Unauthorized)
//     # http:Forbidden (Forbidden)
//     # http:NotFound (NotFound)
//     # http:TooManyRequests (TooManyRequests)
//     # http:InternalServerError (InternalServerError)
//     isolated resource function get CorrespondentBankOperations/[string correspondentbankoperationsid]/InboundPayments/[string inboundpaymentsid]/Retrieve() returns clearing_and_settlement:InboundPayments|clearing_and_settlement:HTTPErrorBadRequest|clearing_and_settlement:HTTPErrorUnauthorized|clearing_and_settlement:HTTPErrorForbidden|clearing_and_settlement:HTTPErrorNotFound|clearing_and_settlement:HTTPErrorTooManyRequests|clearing_and_settlement:HTTPErrorInternalServerError {
//         return <clearing_and_settlement:InboundPayments>{};
//     }

//     # Notify Correspondent Bank Operating Session
//     #
//     # + return - returns can be any of following types 
//     # http:Ok (CorrespondentBankOperatingSession)
//     # http:BadRequest (BadRequest)
//     # http:Unauthorized (Unauthorized)
//     # http:Forbidden (Forbidden)
//     # http:NotFound (NotFound)
//     # http:TooManyRequests (TooManyRequests)
//     # http:InternalServerError (InternalServerError)
//     isolated resource function get CorrespondentBankOperations/[string correspondentbankoperationsid]/Notify() returns clearing_and_settlement:CorrespondentBankOperatingSession|clearing_and_settlement:HTTPErrorBadRequest|clearing_and_settlement:HTTPErrorUnauthorized|clearing_and_settlement:HTTPErrorForbidden|clearing_and_settlement:HTTPErrorNotFound|clearing_and_settlement:HTTPErrorTooManyRequests|clearing_and_settlement:HTTPErrorInternalServerError {
//         return <clearing_and_settlement:CorrespondentBankOperatingSession>{};
//     }

//     # Notify Outbound Payments
//     #
//     # + return - returns can be any of following types 
//     # http:Ok (OutboundPayments)
//     # http:BadRequest (BadRequest)
//     # http:Unauthorized (Unauthorized)
//     # http:Forbidden (Forbidden)
//     # http:NotFound (NotFound)
//     # http:TooManyRequests (TooManyRequests)
//     # http:InternalServerError (InternalServerError)
//     isolated resource function get CorrespondentBankOperations/[string correspondentbankoperationsid]/OutboundPayments/[string outboundpaymentsid]/Notify() returns clearing_and_settlement:OutboundPayments|clearing_and_settlement:HTTPErrorBadRequest|clearing_and_settlement:HTTPErrorUnauthorized|clearing_and_settlement:HTTPErrorForbidden|clearing_and_settlement:HTTPErrorNotFound|clearing_and_settlement:HTTPErrorTooManyRequests|clearing_and_settlement:HTTPErrorInternalServerError {
//         return <clearing_and_settlement:OutboundPayments>{};
//     }

//     # Retrieve outbound payments
//     #
//     # + return - returns can be any of following types 
//     # http:Ok (OutboundPayments)
//     # http:BadRequest (BadRequest)
//     # http:Unauthorized (Unauthorized)
//     # http:Forbidden (Forbidden)
//     # http:NotFound (NotFound)
//     # http:TooManyRequests (TooManyRequests)
//     # http:InternalServerError (InternalServerError)
//     isolated resource function get CorrespondentBankOperations/[string correspondentbankoperationsid]/OutboundPayments/[string outboundpaymentsid]/Retrieve() returns clearing_and_settlement:OutboundPayments|clearing_and_settlement:HTTPErrorBadRequest|clearing_and_settlement:HTTPErrorUnauthorized|clearing_and_settlement:HTTPErrorForbidden|clearing_and_settlement:HTTPErrorNotFound|clearing_and_settlement:HTTPErrorTooManyRequests|clearing_and_settlement:HTTPErrorInternalServerError {
//         return <clearing_and_settlement:OutboundPayments>{};
//     }

//     # Notify Reconciliation
//     #
//     # + return - returns can be any of following types 
//     # http:Ok (Reconciliation)
//     # http:BadRequest (BadRequest)
//     # http:Unauthorized (Unauthorized)
//     # http:Forbidden (Forbidden)
//     # http:NotFound (NotFound)
//     # http:TooManyRequests (TooManyRequests)
//     # http:InternalServerError (InternalServerError)
//     isolated resource function get CorrespondentBankOperations/[string correspondentbankoperationsid]/Reconciliation/[string reconciliationid]/Notify() returns clearing_and_settlement:Reconciliation|clearing_and_settlement:HTTPErrorBadRequest|clearing_and_settlement:HTTPErrorUnauthorized|clearing_and_settlement:HTTPErrorForbidden|clearing_and_settlement:HTTPErrorNotFound|clearing_and_settlement:HTTPErrorTooManyRequests|clearing_and_settlement:HTTPErrorInternalServerError {
//         return <clearing_and_settlement:Reconciliation>{};
//     }

//     # Retrieve reconciliation activity with a correspondent
//     #
//     # + return - returns can be any of following types 
//     # http:Ok (Reconciliation)
//     # http:BadRequest (BadRequest)
//     # http:Unauthorized (Unauthorized)
//     # http:Forbidden (Forbidden)
//     # http:NotFound (NotFound)
//     # http:TooManyRequests (TooManyRequests)
//     # http:InternalServerError (InternalServerError)
//     isolated resource function get CorrespondentBankOperations/[string correspondentbankoperationsid]/Reconciliation/[string reconciliationid]/Retrieve() returns clearing_and_settlement:Reconciliation|clearing_and_settlement:HTTPErrorBadRequest|clearing_and_settlement:HTTPErrorUnauthorized|clearing_and_settlement:HTTPErrorForbidden|clearing_and_settlement:HTTPErrorNotFound|clearing_and_settlement:HTTPErrorTooManyRequests|clearing_and_settlement:HTTPErrorInternalServerError {
//         return <clearing_and_settlement:Reconciliation>{};
//     }

//     # Retrieve a correspondent fulfillment arrangement
//     #
//     # + return - returns can be any of following types 
//     # http:Ok (CorrespondentBankOperatingSession)
//     # http:BadRequest (BadRequest)
//     # http:Unauthorized (Unauthorized)
//     # http:Forbidden (Forbidden)
//     # http:NotFound (NotFound)
//     # http:TooManyRequests (TooManyRequests)
//     # http:InternalServerError (InternalServerError)
//     isolated resource function get CorrespondentBankOperations/[string correspondentbankoperationsid]/Retrieve() returns clearing_and_settlement:CorrespondentBankOperatingSession|clearing_and_settlement:HTTPErrorBadRequest|clearing_and_settlement:HTTPErrorUnauthorized|clearing_and_settlement:HTTPErrorForbidden|clearing_and_settlement:HTTPErrorNotFound|clearing_and_settlement:HTTPErrorTooManyRequests|clearing_and_settlement:HTTPErrorInternalServerError {
//         return <clearing_and_settlement:CorrespondentBankOperatingSession>{};
//     }

//     # Initiate a correspondent fulfillment arrangement
//     #
//     # + return - returns can be any of following types 
//     # http:Ok (CorrespondentBankOperatingSession)
//     # http:BadRequest (BadRequest)
//     # http:Unauthorized (Unauthorized)
//     # http:Forbidden (Forbidden)
//     # http:NotFound (NotFound)
//     # http:TooManyRequests (TooManyRequests)
//     # http:InternalServerError (InternalServerError)
//     isolated resource function post CorrespondentBankOperations/Initiate(@http:Payload clearing_and_settlement:CorrespondentBankOperatingSession payload) returns clearing_and_settlement:CorrespondentBankOperatingSessionOk|clearing_and_settlement:HTTPErrorBadRequest|clearing_and_settlement:HTTPErrorUnauthorized|clearing_and_settlement:HTTPErrorForbidden|clearing_and_settlement:HTTPErrorNotFound|clearing_and_settlement:HTTPErrorTooManyRequests|clearing_and_settlement:HTTPErrorInternalServerError {
//         return <clearing_and_settlement:CorrespondentBankOperatingSessionOk>{body: {}};
//     }

//     # Initiate Inbound Payments
//     #
//     # + return - returns can be any of following types 
//     # http:Ok (InboundPayments)
//     # http:BadRequest (BadRequest)
//     # http:Unauthorized (Unauthorized)
//     # http:Forbidden (Forbidden)
//     # http:NotFound (NotFound)
//     # http:TooManyRequests (TooManyRequests)
//     # http:InternalServerError (InternalServerError)
//     isolated resource function post CorrespondentBankOperations/[string correspondentbankoperationsid]/InboundPayments/Initiate(@http:Payload clearing_and_settlement:InboundPayments payload) returns clearing_and_settlement:InboundPaymentsOk|clearing_and_settlement:HTTPErrorBadRequest|clearing_and_settlement:HTTPErrorUnauthorized|clearing_and_settlement:HTTPErrorForbidden|clearing_and_settlement:HTTPErrorNotFound|clearing_and_settlement:HTTPErrorTooManyRequests|clearing_and_settlement:HTTPErrorInternalServerError {
//         return <clearing_and_settlement:InboundPaymentsOk>{body: {}};
//     }

//     # Initiate Outbound Payments
//     #
//     # + return - returns can be any of following types 
//     # http:Ok (OutboundPayments)
//     # http:BadRequest (BadRequest)
//     # http:Unauthorized (Unauthorized)
//     # http:Forbidden (Forbidden)
//     # http:NotFound (NotFound)
//     # http:TooManyRequests (TooManyRequests)
//     # http:InternalServerError (InternalServerError)
//     isolated resource function post CorrespondentBankOperations/[string correspondentbankoperationsid]/OutboundPayments/Initiate(@http:Payload clearing_and_settlement:OutboundPayments payload) returns clearing_and_settlement:OutboundPaymentsOk|clearing_and_settlement:HTTPErrorBadRequest|clearing_and_settlement:HTTPErrorUnauthorized|clearing_and_settlement:HTTPErrorForbidden|clearing_and_settlement:HTTPErrorNotFound|clearing_and_settlement:HTTPErrorTooManyRequests|clearing_and_settlement:HTTPErrorInternalServerError {
//         return <clearing_and_settlement:OutboundPaymentsOk>{body: {}};
//     }

//     # Exchange a clearing and settlement task
//     #
//     # + return - returns can be any of following types 
//     # http:Ok (ClearingandSettlement)
//     # http:BadRequest (BadRequest)
//     # http:Unauthorized (Unauthorized)
//     # http:Forbidden (Forbidden)
//     # http:NotFound (NotFound)
//     # http:TooManyRequests (TooManyRequests)
//     # http:InternalServerError (InternalServerError)
//     isolated resource function put CorrespondentBankOperations/[string correspondentbankoperationsid]/ClearingandSettlement/[string clearingandsettlementid]/Exchange(@http:Payload clearing_and_settlement:ClearingandSettlement payload) returns clearing_and_settlement:ClearingandSettlement|clearing_and_settlement:HTTPErrorBadRequest|clearing_and_settlement:HTTPErrorUnauthorized|clearing_and_settlement:HTTPErrorForbidden|clearing_and_settlement:HTTPErrorNotFound|clearing_and_settlement:HTTPErrorTooManyRequests|clearing_and_settlement:HTTPErrorInternalServerError {
//         return <clearing_and_settlement:ClearingandSettlement>{};
//     }

//     # Request clearing and settlement processing for a correspondent
//     #
//     # + return - returns can be any of following types 
//     # http:Ok (ClearingandSettlement)
//     # http:BadRequest (BadRequest)
//     # http:Unauthorized (Unauthorized)
//     # http:Forbidden (Forbidden)
//     # http:NotFound (NotFound)
//     # http:TooManyRequests (TooManyRequests)
//     # http:InternalServerError (InternalServerError)
//     isolated resource function put CorrespondentBankOperations/[string correspondentbankoperationsid]/ClearingandSettlement/[string clearingandsettlementid]/Request(@http:Payload clearing_and_settlement:ClearingandSettlement payload) returns clearing_and_settlement:ClearingandSettlement|clearing_and_settlement:HTTPErrorBadRequest|clearing_and_settlement:HTTPErrorUnauthorized|clearing_and_settlement:HTTPErrorForbidden|clearing_and_settlement:HTTPErrorNotFound|clearing_and_settlement:HTTPErrorTooManyRequests|clearing_and_settlement:HTTPErrorInternalServerError {
//         return <clearing_and_settlement:ClearingandSettlement>{};
//     }

//     # Update a clearing and settlement transaction
//     #
//     # + return - returns can be any of following types 
//     # http:Ok (ClearingandSettlement)
//     # http:BadRequest (BadRequest)
//     # http:Unauthorized (Unauthorized)
//     # http:Forbidden (Forbidden)
//     # http:NotFound (NotFound)
//     # http:TooManyRequests (TooManyRequests)
//     # http:InternalServerError (InternalServerError)
//     isolated resource function put CorrespondentBankOperations/[string correspondentbankoperationsid]/ClearingandSettlement/[string clearingandsettlementid]/Update(@http:Payload clearing_and_settlement:ClearingandSettlement payload) returns clearing_and_settlement:ClearingandSettlement|clearing_and_settlement:HTTPErrorBadRequest|clearing_and_settlement:HTTPErrorUnauthorized|clearing_and_settlement:HTTPErrorForbidden|clearing_and_settlement:HTTPErrorNotFound|clearing_and_settlement:HTTPErrorTooManyRequests|clearing_and_settlement:HTTPErrorInternalServerError {
//         return <clearing_and_settlement:ClearingandSettlement>{};
//     }

//     # Control the handling of an arrangement
//     #
//     # + return - returns can be any of following types 
//     # http:Ok (CorrespondentBankOperatingSession)
//     # http:BadRequest (BadRequest)
//     # http:Unauthorized (Unauthorized)
//     # http:Forbidden (Forbidden)
//     # http:NotFound (NotFound)
//     # http:TooManyRequests (TooManyRequests)
//     # http:InternalServerError (InternalServerError)
//     isolated resource function put CorrespondentBankOperations/[string correspondentbankoperationsid]/Control(@http:Payload clearing_and_settlement:CorrespondentBankOperatingSession payload) returns clearing_and_settlement:CorrespondentBankOperatingSession|clearing_and_settlement:HTTPErrorBadRequest|clearing_and_settlement:HTTPErrorUnauthorized|clearing_and_settlement:HTTPErrorForbidden|clearing_and_settlement:HTTPErrorNotFound|clearing_and_settlement:HTTPErrorTooManyRequests|clearing_and_settlement:HTTPErrorInternalServerError {
//         return <clearing_and_settlement:CorrespondentBankOperatingSession>{};
//     }

//     # Exchange Correspondent Bank Operating Session
//     #
//     # + return - returns can be any of following types 
//     # http:Ok (CorrespondentBankOperatingSession)
//     # http:BadRequest (BadRequest)
//     # http:Unauthorized (Unauthorized)
//     # http:Forbidden (Forbidden)
//     # http:NotFound (NotFound)
//     # http:TooManyRequests (TooManyRequests)
//     # http:InternalServerError (InternalServerError)
//     isolated resource function put CorrespondentBankOperations/[string correspondentbankoperationsid]/Exchange(@http:Payload clearing_and_settlement:CorrespondentBankOperatingSession payload) returns clearing_and_settlement:CorrespondentBankOperatingSession|clearing_and_settlement:HTTPErrorBadRequest|clearing_and_settlement:HTTPErrorUnauthorized|clearing_and_settlement:HTTPErrorForbidden|clearing_and_settlement:HTTPErrorNotFound|clearing_and_settlement:HTTPErrorTooManyRequests|clearing_and_settlement:HTTPErrorInternalServerError {
//         return <clearing_and_settlement:CorrespondentBankOperatingSession>{};
//     }

//     # Execute Correspondent Bank Operating Session
//     #
//     # + return - returns can be any of following types 
//     # http:Ok (CorrespondentBankOperatingSession)
//     # http:BadRequest (BadRequest)
//     # http:Unauthorized (Unauthorized)
//     # http:Forbidden (Forbidden)
//     # http:NotFound (NotFound)
//     # http:TooManyRequests (TooManyRequests)
//     # http:InternalServerError (InternalServerError)
//     isolated resource function put CorrespondentBankOperations/[string correspondentbankoperationsid]/Execute(@http:Payload clearing_and_settlement:CorrespondentBankOperatingSession payload) returns clearing_and_settlement:CorrespondentBankOperatingSession|clearing_and_settlement:HTTPErrorBadRequest|clearing_and_settlement:HTTPErrorUnauthorized|clearing_and_settlement:HTTPErrorForbidden|clearing_and_settlement:HTTPErrorNotFound|clearing_and_settlement:HTTPErrorTooManyRequests|clearing_and_settlement:HTTPErrorInternalServerError {
//         return <clearing_and_settlement:CorrespondentBankOperatingSession>{};
//     }

//     # Exchange Inbound Payments
//     #
//     # + return - returns can be any of following types 
//     # http:Ok (InboundPayments)
//     # http:BadRequest (BadRequest)
//     # http:Unauthorized (Unauthorized)
//     # http:Forbidden (Forbidden)
//     # http:NotFound (NotFound)
//     # http:TooManyRequests (TooManyRequests)
//     # http:InternalServerError (InternalServerError)
//     isolated resource function put CorrespondentBankOperations/[string correspondentbankoperationsid]/InboundPayments/[string inboundpaymentsid]/Exchange(@http:Payload clearing_and_settlement:InboundPayments payload) returns clearing_and_settlement:InboundPayments|clearing_and_settlement:HTTPErrorBadRequest|clearing_and_settlement:HTTPErrorUnauthorized|clearing_and_settlement:HTTPErrorForbidden|clearing_and_settlement:HTTPErrorNotFound|clearing_and_settlement:HTTPErrorTooManyRequests|clearing_and_settlement:HTTPErrorInternalServerError {
//         return <clearing_and_settlement:InboundPayments>{};
//     }

//     # Execute inbound payment transactions from a correspondent
//     #
//     # + return - returns can be any of following types 
//     # http:Ok (InboundPayments)
//     # http:BadRequest (BadRequest)
//     # http:Unauthorized (Unauthorized)
//     # http:Forbidden (Forbidden)
//     # http:NotFound (NotFound)
//     # http:TooManyRequests (TooManyRequests)
//     # http:InternalServerError (InternalServerError)
//     isolated resource function put CorrespondentBankOperations/[string correspondentbankoperationsid]/InboundPayments/[string inboundpaymentsid]/Execute(@http:Payload clearing_and_settlement:InboundPayments payload) returns clearing_and_settlement:InboundPayments|clearing_and_settlement:HTTPErrorBadRequest|clearing_and_settlement:HTTPErrorUnauthorized|clearing_and_settlement:HTTPErrorForbidden|clearing_and_settlement:HTTPErrorNotFound|clearing_and_settlement:HTTPErrorTooManyRequests|clearing_and_settlement:HTTPErrorInternalServerError {
//         return <clearing_and_settlement:InboundPayments>{};
//     }

//     # Request Inbound Payments
//     #
//     # + return - returns can be any of following types 
//     # http:Ok (InboundPayments)
//     # http:BadRequest (BadRequest)
//     # http:Unauthorized (Unauthorized)
//     # http:Forbidden (Forbidden)
//     # http:NotFound (NotFound)
//     # http:TooManyRequests (TooManyRequests)
//     # http:InternalServerError (InternalServerError)
//     isolated resource function put CorrespondentBankOperations/[string correspondentbankoperationsid]/InboundPayments/[string inboundpaymentsid]/Request(@http:Payload clearing_and_settlement:InboundPayments payload) returns clearing_and_settlement:InboundPayments|clearing_and_settlement:HTTPErrorBadRequest|clearing_and_settlement:HTTPErrorUnauthorized|clearing_and_settlement:HTTPErrorForbidden|clearing_and_settlement:HTTPErrorNotFound|clearing_and_settlement:HTTPErrorTooManyRequests|clearing_and_settlement:HTTPErrorInternalServerError {
//         return <clearing_and_settlement:InboundPayments>{};
//     }

//     # Update inbound payment transactions
//     #
//     # + return - returns can be any of following types 
//     # http:Ok (InboundPayments)
//     # http:BadRequest (BadRequest)
//     # http:Unauthorized (Unauthorized)
//     # http:Forbidden (Forbidden)
//     # http:NotFound (NotFound)
//     # http:TooManyRequests (TooManyRequests)
//     # http:InternalServerError (InternalServerError)
//     isolated resource function put CorrespondentBankOperations/[string correspondentbankoperationsid]/InboundPayments/[string inboundpaymentsid]/Update(@http:Payload clearing_and_settlement:InboundPayments payload) returns clearing_and_settlement:InboundPayments|clearing_and_settlement:HTTPErrorBadRequest|clearing_and_settlement:HTTPErrorUnauthorized|clearing_and_settlement:HTTPErrorForbidden|clearing_and_settlement:HTTPErrorNotFound|clearing_and_settlement:HTTPErrorTooManyRequests|clearing_and_settlement:HTTPErrorInternalServerError {
//         return <clearing_and_settlement:InboundPayments>{};
//     }

//     # Exchange Outbound Payments
//     #
//     # + return - returns can be any of following types 
//     # http:Ok (OutboundPayments)
//     # http:BadRequest (BadRequest)
//     # http:Unauthorized (Unauthorized)
//     # http:Forbidden (Forbidden)
//     # http:NotFound (NotFound)
//     # http:TooManyRequests (TooManyRequests)
//     # http:InternalServerError (InternalServerError)
//     isolated resource function put CorrespondentBankOperations/[string correspondentbankoperationsid]/OutboundPayments/[string outboundpaymentsid]/Exchange(@http:Payload clearing_and_settlement:OutboundPayments payload) returns clearing_and_settlement:OutboundPayments|clearing_and_settlement:HTTPErrorBadRequest|clearing_and_settlement:HTTPErrorUnauthorized|clearing_and_settlement:HTTPErrorForbidden|clearing_and_settlement:HTTPErrorNotFound|clearing_and_settlement:HTTPErrorTooManyRequests|clearing_and_settlement:HTTPErrorInternalServerError {
//         return <clearing_and_settlement:OutboundPayments>{};
//     }

//     # Execute outbound payment transactions to a correspondent
//     #
//     # + return - returns can be any of following types 
//     # http:Ok (OutboundPayments)
//     # http:BadRequest (BadRequest)
//     # http:Unauthorized (Unauthorized)
//     # http:Forbidden (Forbidden)
//     # http:NotFound (NotFound)
//     # http:TooManyRequests (TooManyRequests)
//     # http:InternalServerError (InternalServerError)
//     isolated resource function put CorrespondentBankOperations/[string correspondentbankoperationsid]/OutboundPayments/[string outboundpaymentsid]/Execute(@http:Payload clearing_and_settlement:OutboundPayments payload) returns clearing_and_settlement:OutboundPayments|clearing_and_settlement:HTTPErrorBadRequest|clearing_and_settlement:HTTPErrorUnauthorized|clearing_and_settlement:HTTPErrorForbidden|clearing_and_settlement:HTTPErrorNotFound|clearing_and_settlement:HTTPErrorTooManyRequests|clearing_and_settlement:HTTPErrorInternalServerError {
//         do {
//             json|http:ClientError responseFromServer;
//             lock {
// 	            // Invoking the configured backend service
//                 // TODO: Update the endpoint URL as per the actual backend API contract
// 	            responseFromServer = externalClient->get("/CorrespondentBankOperations/" + correspondentbankoperationsid + "/OutboundPayments/" + outboundpaymentsid + "/Execute");
//             }
//             io:println("-----------------------------------------------------------------------------------------------");
//             io:println("Received response from backends API: CorrespondentBankOperations/[string correspondentbankoperationsid]/OutboundPayments/[string outboundpaymentsid]/Execute");
//             io:println("{\n" +
//                  "   CorrespondentTransactionRecord: {...},\n" +
//                 "   SWIFTTransactionReference: {..},\n" +
//                 "   PayerBankReference: {...},\n" +
//                 "   PayerReference: {...},\n" +
//                 "   CorrespondedBankReference: {...},\n" +
//                 "   PayerProductInstanceReference: {...},\n" +
//                 "   PayeeReference: {...},\n" +
//                 "   PayeeProductInstanceReference: {...},\n" +
//                 "   PayeeBankReference: {...},\n" +
//                 "   SpecialInstructions: {...},\n" +
//                 "   Amount: {...},\n" +
//                 "   Currency: {...},\n" +
//                 "   DateType: \"ExecutedDate\",\n" +
//                 "   Date: {...},\n" +
//                 "   CorrespondentBankRoleType: \"AdvisingBank\",\n" +
//                 "   TransactionStatus: \"string\"\n" +
//                 "}");  
//             io:println("-----------------------------------------------------------------------------------------------");
//             io:println(" ");
        
//             if (responseFromServer is http:ClientError) {
//                 io:println("Error response received from backend for API:", responseFromServer);
//                 clearing_and_settlement:HTTPErrorInternalServerError httpError = {
//                     body: {
//                         status_code: "500",
//                         status: "Internal Server Error",
//                         message: "An error occurred while processing the request."
//                     }
//                 };
//                 return httpError;
//             }
//             // Transform the response from backend to match the defined return type.
//             // TODO: Implement the custom transformation logic in the data mapper module            
//             // This is a sample mapping function. The transformation logic will depend on the actual response structure from the backend API and 
//             // the defined BIAN data model
//             clearing_and_settlement:OutboundPayments transformedResponse = check transformOutboundPaymentTransactionsExecutionResponse(responseFromServer);
//             return transformedResponse;
//         } on fail error err {
//             io:println("Error occurred:", err.message());
//             clearing_and_settlement:HTTPErrorInternalServerError httpError = {
//                 body: {
//                     status_code: "500",
//                     status: "Internal Server Error",
//                     message: err.message()
//                 }
//             };
//             return httpError;
//         }
//     }

//     # Request Outbound Payments
//     #
//     # + return - returns can be any of following types 
//     # http:Ok (OutboundPayments)
//     # http:BadRequest (BadRequest)
//     # http:Unauthorized (Unauthorized)
//     # http:Forbidden (Forbidden)
//     # http:NotFound (NotFound)
//     # http:TooManyRequests (TooManyRequests)
//     # http:InternalServerError (InternalServerError)
//     isolated resource function put CorrespondentBankOperations/[string correspondentbankoperationsid]/OutboundPayments/[string outboundpaymentsid]/Request(@http:Payload clearing_and_settlement:OutboundPayments payload) returns clearing_and_settlement:OutboundPayments|clearing_and_settlement:HTTPErrorBadRequest|clearing_and_settlement:HTTPErrorUnauthorized|clearing_and_settlement:HTTPErrorForbidden|clearing_and_settlement:HTTPErrorNotFound|clearing_and_settlement:HTTPErrorTooManyRequests|clearing_and_settlement:HTTPErrorInternalServerError {
//         return <clearing_and_settlement:OutboundPayments>{};
//     }

//     # Update outbound payment transactions
//     #
//     # + return - returns can be any of following types 
//     # http:Ok (OutboundPayments)
//     # http:BadRequest (BadRequest)
//     # http:Unauthorized (Unauthorized)
//     # http:Forbidden (Forbidden)
//     # http:NotFound (NotFound)
//     # http:TooManyRequests (TooManyRequests)
//     # http:InternalServerError (InternalServerError)
//     isolated resource function put CorrespondentBankOperations/[string correspondentbankoperationsid]/OutboundPayments/[string outboundpaymentsid]/Update(@http:Payload clearing_and_settlement:OutboundPayments payload) returns clearing_and_settlement:OutboundPayments|clearing_and_settlement:HTTPErrorBadRequest|clearing_and_settlement:HTTPErrorUnauthorized|clearing_and_settlement:HTTPErrorForbidden|clearing_and_settlement:HTTPErrorNotFound|clearing_and_settlement:HTTPErrorTooManyRequests|clearing_and_settlement:HTTPErrorInternalServerError {
//         return <clearing_and_settlement:OutboundPayments>{};
//     }

//     # Exchange  a reconciliation task
//     #
//     # + return - returns can be any of following types 
//     # http:Ok (Reconciliation)
//     # http:BadRequest (BadRequest)
//     # http:Unauthorized (Unauthorized)
//     # http:Forbidden (Forbidden)
//     # http:NotFound (NotFound)
//     # http:TooManyRequests (TooManyRequests)
//     # http:InternalServerError (InternalServerError)
//     isolated resource function put CorrespondentBankOperations/[string correspondentbankoperationsid]/Reconciliation/[string reconciliationid]/Exchange(@http:Payload clearing_and_settlement:Reconciliation payload) returns clearing_and_settlement:Reconciliation|clearing_and_settlement:HTTPErrorBadRequest|clearing_and_settlement:HTTPErrorUnauthorized|clearing_and_settlement:HTTPErrorForbidden|clearing_and_settlement:HTTPErrorNotFound|clearing_and_settlement:HTTPErrorTooManyRequests|clearing_and_settlement:HTTPErrorInternalServerError {
//         return <clearing_and_settlement:Reconciliation>{};
//     }

//     # Execute Reconciliation
//     #
//     # + return - returns can be any of following types 
//     # http:Ok (Reconciliation)
//     # http:BadRequest (BadRequest)
//     # http:Unauthorized (Unauthorized)
//     # http:Forbidden (Forbidden)
//     # http:NotFound (NotFound)
//     # http:TooManyRequests (TooManyRequests)
//     # http:InternalServerError (InternalServerError)
//     isolated resource function put CorrespondentBankOperations/[string correspondentbankoperationsid]/Reconciliation/[string reconciliationid]/Execute(@http:Payload clearing_and_settlement:Reconciliation payload) returns clearing_and_settlement:Reconciliation|clearing_and_settlement:HTTPErrorBadRequest|clearing_and_settlement:HTTPErrorUnauthorized|clearing_and_settlement:HTTPErrorForbidden|clearing_and_settlement:HTTPErrorNotFound|clearing_and_settlement:HTTPErrorTooManyRequests|clearing_and_settlement:HTTPErrorInternalServerError {
//         return <clearing_and_settlement:Reconciliation>{};
//     }

//     # Request reconciliation processing for a correspondent
//     #
//     # + return - returns can be any of following types 
//     # http:Ok (Reconciliation)
//     # http:BadRequest (BadRequest)
//     # http:Unauthorized (Unauthorized)
//     # http:Forbidden (Forbidden)
//     # http:NotFound (NotFound)
//     # http:TooManyRequests (TooManyRequests)
//     # http:InternalServerError (InternalServerError)
//     isolated resource function put CorrespondentBankOperations/[string correspondentbankoperationsid]/Reconciliation/[string reconciliationid]/Request(@http:Payload clearing_and_settlement:Reconciliation payload) returns clearing_and_settlement:Reconciliation|clearing_and_settlement:HTTPErrorBadRequest|clearing_and_settlement:HTTPErrorUnauthorized|clearing_and_settlement:HTTPErrorForbidden|clearing_and_settlement:HTTPErrorNotFound|clearing_and_settlement:HTTPErrorTooManyRequests|clearing_and_settlement:HTTPErrorInternalServerError {
//         return <clearing_and_settlement:Reconciliation>{};
//     }

//     # Update a reconciliation task
//     #
//     # + return - returns can be any of following types 
//     # http:Ok (Reconciliation)
//     # http:BadRequest (BadRequest)
//     # http:Unauthorized (Unauthorized)
//     # http:Forbidden (Forbidden)
//     # http:NotFound (NotFound)
//     # http:TooManyRequests (TooManyRequests)
//     # http:InternalServerError (InternalServerError)
//     isolated resource function put CorrespondentBankOperations/[string correspondentbankoperationsid]/Reconciliation/[string reconciliationid]/Update(@http:Payload clearing_and_settlement:Reconciliation payload) returns clearing_and_settlement:Reconciliation|clearing_and_settlement:HTTPErrorBadRequest|clearing_and_settlement:HTTPErrorUnauthorized|clearing_and_settlement:HTTPErrorForbidden|clearing_and_settlement:HTTPErrorNotFound|clearing_and_settlement:HTTPErrorTooManyRequests|clearing_and_settlement:HTTPErrorInternalServerError {
//         return <clearing_and_settlement:Reconciliation>{};
//     }

//     # Request Correspondent Bank Operating Session
//     #
//     # + return - returns can be any of following types 
//     # http:Ok (CorrespondentBankOperatingSession)
//     # http:BadRequest (BadRequest)
//     # http:Unauthorized (Unauthorized)
//     # http:Forbidden (Forbidden)
//     # http:NotFound (NotFound)
//     # http:TooManyRequests (TooManyRequests)
//     # http:InternalServerError (InternalServerError)
//     isolated resource function put CorrespondentBankOperations/[string correspondentbankoperationsid]/Request(@http:Payload clearing_and_settlement:CorrespondentBankOperatingSession payload) returns clearing_and_settlement:CorrespondentBankOperatingSession|clearing_and_settlement:HTTPErrorBadRequest|clearing_and_settlement:HTTPErrorUnauthorized|clearing_and_settlement:HTTPErrorForbidden|clearing_and_settlement:HTTPErrorNotFound|clearing_and_settlement:HTTPErrorTooManyRequests|clearing_and_settlement:HTTPErrorInternalServerError {
//         return <clearing_and_settlement:CorrespondentBankOperatingSession>{};
//     }

//     # Update correspondent fulfillment arrangement
//     #
//     # + return - returns can be any of following types 
//     # http:Ok (CorrespondentBankOperatingSession)
//     # http:BadRequest (BadRequest)
//     # http:Unauthorized (Unauthorized)
//     # http:Forbidden (Forbidden)
//     # http:NotFound (NotFound)
//     # http:TooManyRequests (TooManyRequests)
//     # http:InternalServerError (InternalServerError)
//     isolated resource function put CorrespondentBankOperations/[string correspondentbankoperationsid]/Update(@http:Payload clearing_and_settlement:CorrespondentBankOperatingSession payload) returns clearing_and_settlement:CorrespondentBankOperatingSession|clearing_and_settlement:HTTPErrorBadRequest|clearing_and_settlement:HTTPErrorUnauthorized|clearing_and_settlement:HTTPErrorForbidden|clearing_and_settlement:HTTPErrorNotFound|clearing_and_settlement:HTTPErrorTooManyRequests|clearing_and_settlement:HTTPErrorInternalServerError {
//         return <clearing_and_settlement:CorrespondentBankOperatingSession>{};
//     }
// };
