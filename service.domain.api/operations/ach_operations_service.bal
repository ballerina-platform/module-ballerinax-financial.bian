// import ashirwadadayarathne/bian.service_domain.operations.attribute.groups.v14_clearing_and_settlement as clearing_and_settlement;
// import ballerina/http;
// import ballerina/io;

// http:Service achOperationsService =  service object {
    
//     # ReBQ Retrieve details about an ACH transaction batch in clearing and settlement
//     #
//     # + return - returns can be any of following types 
//     # http:Ok (ClearingandSettlement)
//     # http:BadRequest (BadRequest)
//     # http:Unauthorized (Unauthorized)
//     # http:Forbidden (Forbidden)
//     # http:NotFound (NotFound)
//     # http:TooManyRequests (TooManyRequests)
//     # http:InternalServerError (InternalServerError)
//     isolated resource function get ACHOperations/[string achoperationsid]/ClearingandSettlement/[string clearingandsettlementid]/Retrieve() returns clearing_and_settlement:ClearingandSettlement|clearing_and_settlement:HTTPErrorBadRequest|clearing_and_settlement:HTTPErrorUnauthorized|clearing_and_settlement:HTTPErrorForbidden|clearing_and_settlement:HTTPErrorNotFound|clearing_and_settlement:HTTPErrorTooManyRequests|clearing_and_settlement:HTTPErrorInternalServerError {
//         return <clearing_and_settlement:ClearingandSettlement>{};
//     }

//     # ReBQ Retrieve details about an inbound ACH transaction batch
//     #
//     # + return - returns can be any of following types 
//     # http:Ok (InboundACH)
//     # http:BadRequest (BadRequest)
//     # http:Unauthorized (Unauthorized)
//     # http:Forbidden (Forbidden)
//     # http:NotFound (NotFound)
//     # http:TooManyRequests (TooManyRequests)
//     # http:InternalServerError (InternalServerError)
//     isolated resource function get ACHOperations/[string achoperationsid]/InboundACH/[string inboundachid]/Retrieve() returns clearing_and_settlement:InboundACH|clearing_and_settlement:HTTPErrorBadRequest|clearing_and_settlement:HTTPErrorUnauthorized|clearing_and_settlement:HTTPErrorForbidden|clearing_and_settlement:HTTPErrorNotFound|clearing_and_settlement:HTTPErrorTooManyRequests|clearing_and_settlement:HTTPErrorInternalServerError {
//         return <clearing_and_settlement:InboundACH>{};
//     }

//     # ReBQ Retrieve details about an outbound ACH transaction batch
//     #
//     # + return - returns can be any of following types 
//     # http:Ok (OutboundACH)
//     # http:BadRequest (BadRequest)
//     # http:Unauthorized (Unauthorized)
//     # http:Forbidden (Forbidden)
//     # http:NotFound (NotFound)
//     # http:TooManyRequests (TooManyRequests)
//     # http:InternalServerError (InternalServerError)
//     isolated resource function get ACHOperations/[string achoperationsid]/OutboundACH/[string outboundachid]/Retrieve() returns clearing_and_settlement:OutboundACH|clearing_and_settlement:HTTPErrorBadRequest|clearing_and_settlement:HTTPErrorUnauthorized|clearing_and_settlement:HTTPErrorForbidden|clearing_and_settlement:HTTPErrorNotFound|clearing_and_settlement:HTTPErrorTooManyRequests|clearing_and_settlement:HTTPErrorInternalServerError {
//         return <clearing_and_settlement:OutboundACH>{};
//     }

//     # ReBQ Retrieve details about ACH transaction reconciliations
//     #
//     # + return - returns can be any of following types 
//     # http:Ok (Reconciliation)
//     # http:BadRequest (BadRequest)
//     # http:Unauthorized (Unauthorized)
//     # http:Forbidden (Forbidden)
//     # http:NotFound (NotFound)
//     # http:TooManyRequests (TooManyRequests)
//     # http:InternalServerError (InternalServerError)
//     isolated resource function get ACHOperations/[string achoperationsid]/Reconciliation/[string reconciliationid]/Retrieve() returns clearing_and_settlement:Reconciliation|clearing_and_settlement:HTTPErrorBadRequest|clearing_and_settlement:HTTPErrorUnauthorized|clearing_and_settlement:HTTPErrorForbidden|clearing_and_settlement:HTTPErrorNotFound|clearing_and_settlement:HTTPErrorTooManyRequests|clearing_and_settlement:HTTPErrorInternalServerError {
//         return <clearing_and_settlement:Reconciliation>{};
//     }
    
//     # ReCR Retrieve details about the ACH access service session
//     #
//     # + return - returns can be any of following types 
//     # http:Ok (ACHFulfillmentOperatingSession)
//     # http:BadRequest (BadRequest)
//     # http:Unauthorized (Unauthorized)
//     # http:Forbidden (Forbidden)
//     # http:NotFound (NotFound)
//     # http:TooManyRequests (TooManyRequests)
//     # http:InternalServerError (InternalServerError)
//     isolated resource function get ACHOperations/[string achoperationsid]/Retrieve() returns clearing_and_settlement:ACHFulfillmentOperatingSession|clearing_and_settlement:HTTPErrorBadRequest|clearing_and_settlement:HTTPErrorUnauthorized|clearing_and_settlement:HTTPErrorForbidden|clearing_and_settlement:HTTPErrorNotFound|clearing_and_settlement:HTTPErrorTooManyRequests|clearing_and_settlement:HTTPErrorInternalServerError {
//         return <clearing_and_settlement:ACHFulfillmentOperatingSession>{};
//     }

//     # ReBQ Retrieve details about a warehoused outbound ACH transaction batch
//     #
//     # + return - returns can be any of following types 
//     # http:Ok (Warehousing)
//     # http:BadRequest (BadRequest)
//     # http:Unauthorized (Unauthorized)
//     # http:Forbidden (Forbidden)
//     # http:NotFound (NotFound)
//     # http:TooManyRequests (TooManyRequests)
//     # http:InternalServerError (InternalServerError)
//     isolated resource function get ACHOperations/[string achoperationsid]/Warehousing/[string warehousingid]/Retrieve() returns clearing_and_settlement:Warehousing|clearing_and_settlement:HTTPErrorBadRequest|clearing_and_settlement:HTTPErrorUnauthorized|clearing_and_settlement:HTTPErrorForbidden|clearing_and_settlement:HTTPErrorNotFound|clearing_and_settlement:HTTPErrorTooManyRequests|clearing_and_settlement:HTTPErrorInternalServerError {
//         return <clearing_and_settlement:Warehousing>{};
//     }

//     # InBQ Initiate an ACH transaction batch clearing and settlement processing
//     #
//     # + return - returns can be any of following types 
//     # http:Ok (ClearingandSettlement)
//     # http:BadRequest (BadRequest)
//     # http:Unauthorized (Unauthorized)
//     # http:Forbidden (Forbidden)
//     # http:NotFound (NotFound)
//     # http:TooManyRequests (TooManyRequests)
//     # http:InternalServerError (InternalServerError)
//     isolated resource function post ACHOperations/[string achoperationsid]/ClearingandSettlement/Initiate(@http:Payload clearing_and_settlement:ClearingandSettlement payload) returns clearing_and_settlement:ClearingandSettlementOk|clearing_and_settlement:HTTPErrorBadRequest|clearing_and_settlement:HTTPErrorUnauthorized|clearing_and_settlement:HTTPErrorForbidden|clearing_and_settlement:HTTPErrorNotFound|clearing_and_settlement:HTTPErrorTooManyRequests|clearing_and_settlement:HTTPErrorInternalServerError {
//         return <clearing_and_settlement:ClearingandSettlementOk>{body: {}};
//     }

//     # InBQ Initiate an inbound ACH transaction batch handling
//     #
//     # + return - returns can be any of following types 
//     # http:Ok (InboundACH)
//     # http:BadRequest (BadRequest)
//     # http:Unauthorized (Unauthorized)
//     # http:Forbidden (Forbidden)
//     # http:NotFound (NotFound)
//     # http:TooManyRequests (TooManyRequests)
//     # http:InternalServerError (InternalServerError)
//     isolated resource function post ACHOperations/[string achoperationsid]/InboundACH/Initiate(@http:Payload clearing_and_settlement:InboundACH payload) returns clearing_and_settlement:InboundACHOk|clearing_and_settlement:HTTPErrorBadRequest|clearing_and_settlement:HTTPErrorUnauthorized|clearing_and_settlement:HTTPErrorForbidden|clearing_and_settlement:HTTPErrorNotFound|clearing_and_settlement:HTTPErrorTooManyRequests|clearing_and_settlement:HTTPErrorInternalServerError {
//         return <clearing_and_settlement:InboundACHOk>{body: {}};
//     }

//     # InBQ Initiate an outbound ACH transaction batch handling
//     #
//     # + return - returns can be any of following types 
//     # http:Ok (OutboundACH)
//     # http:BadRequest (BadRequest)
//     # http:Unauthorized (Unauthorized)
//     # http:Forbidden (Forbidden)
//     # http:NotFound (NotFound)
//     # http:TooManyRequests (TooManyRequests)
//     # http:InternalServerError (InternalServerError)
//     isolated resource function post ACHOperations/[string achoperationsid]/OutboundACH/Initiate(@http:Payload clearing_and_settlement:OutboundACH payload) returns clearing_and_settlement:OutboundACHOk|clearing_and_settlement:HTTPErrorBadRequest|clearing_and_settlement:HTTPErrorUnauthorized|clearing_and_settlement:HTTPErrorForbidden|clearing_and_settlement:HTTPErrorNotFound|clearing_and_settlement:HTTPErrorTooManyRequests|clearing_and_settlement:HTTPErrorInternalServerError {
//         do {
//             json|http:ClientError responseFromServer;
//             lock {
// 	            // Invoking the configured backend service
//                 // TODO: Update the endpoint URL as per the actual backend API contract
// 	            responseFromServer = check externalClient->get("/ACHOperations/" + achoperationsid + "/OutboundACH/Initiate");
//             }
//             io:println("-----------------------------------------------------------------------------------------------");
//             io:println("Received response from backends API: ACHOperations/[string achoperationsid]/OutboundACH/Initiate");
//             io:println("{\n" +
//                 "   \"OutboundACHTransactionBatchReference\": {\n" +
//                 "       \"BatchTransactionDateTime\": \"string\"\n" +
//                 "   }\n" +
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
//             clearing_and_settlement:OutboundACH transformedPayload = check transformOutboundACHInitiateResponse(responseFromServer);
//             clearing_and_settlement:OutboundACHOk transformedResponse = {
//                 body: transformedPayload
//             };
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

//     # InBQ Initiate the reconciliation of ACH transactions
//     #
//     # + return - returns can be any of following types 
//     # http:Ok (Reconciliation)
//     # http:BadRequest (BadRequest)
//     # http:Unauthorized (Unauthorized)
//     # http:Forbidden (Forbidden)
//     # http:NotFound (NotFound)
//     # http:TooManyRequests (TooManyRequests)
//     # http:InternalServerError (InternalServerError)
//     isolated resource function post ACHOperations/[string achoperationsid]/Reconciliation/Initiate(@http:Payload clearing_and_settlement:Reconciliation payload) returns clearing_and_settlement:ReconciliationOk|clearing_and_settlement:HTTPErrorBadRequest|clearing_and_settlement:HTTPErrorUnauthorized|clearing_and_settlement:HTTPErrorForbidden|clearing_and_settlement:HTTPErrorNotFound|clearing_and_settlement:HTTPErrorTooManyRequests|clearing_and_settlement:HTTPErrorInternalServerError {
//         return <clearing_and_settlement:ReconciliationOk>{body: {}};
//     }

//     # InBQ Initiate a warehoused outbound ACH transaction batch
//     #
//     # + return - returns can be any of following types 
//     # http:Ok (Warehousing)
//     # http:BadRequest (BadRequest)
//     # http:Unauthorized (Unauthorized)
//     # http:Forbidden (Forbidden)
//     # http:NotFound (NotFound)
//     # http:TooManyRequests (TooManyRequests)
//     # http:InternalServerError (InternalServerError)
//     isolated resource function post ACHOperations/[string achoperationsid]/Warehousing/Initiate(@http:Payload clearing_and_settlement:Warehousing payload) returns clearing_and_settlement:WarehousingOk|clearing_and_settlement:HTTPErrorBadRequest|clearing_and_settlement:HTTPErrorUnauthorized|clearing_and_settlement:HTTPErrorForbidden|clearing_and_settlement:HTTPErrorNotFound|clearing_and_settlement:HTTPErrorTooManyRequests|clearing_and_settlement:HTTPErrorInternalServerError {
//         return <clearing_and_settlement:WarehousingOk>{body: {}};
//     }

//     # UpBQ Update an ACH transaction batch in clearing and settlement
//     #
//     # + return - returns can be any of following types 
//     # http:Ok (ClearingandSettlement)
//     # http:BadRequest (BadRequest)
//     # http:Unauthorized (Unauthorized)
//     # http:Forbidden (Forbidden)
//     # http:NotFound (NotFound)
//     # http:TooManyRequests (TooManyRequests)
//     # http:InternalServerError (InternalServerError)
//     isolated resource function put ACHOperations/[string achoperationsid]/ClearingandSettlement/[string clearingandsettlementid]/Update(@http:Payload clearing_and_settlement:ClearingandSettlement payload) returns clearing_and_settlement:ClearingandSettlement|clearing_and_settlement:HTTPErrorBadRequest|clearing_and_settlement:HTTPErrorUnauthorized|clearing_and_settlement:HTTPErrorForbidden|clearing_and_settlement:HTTPErrorNotFound|clearing_and_settlement:HTTPErrorTooManyRequests|clearing_and_settlement:HTTPErrorInternalServerError {
//         return <clearing_and_settlement:ClearingandSettlement>{};
//     }

//     # CoCR Control the execution of the ACH access service session (e.g. terminate)
//     #
//     # + return - returns can be any of following types 
//     # http:Ok (ACHFulfillmentOperatingSession)
//     # http:BadRequest (BadRequest)
//     # http:Unauthorized (Unauthorized)
//     # http:Forbidden (Forbidden)
//     # http:NotFound (NotFound)
//     # http:TooManyRequests (TooManyRequests)
//     # http:InternalServerError (InternalServerError)
//     isolated resource function put ACHOperations/[string achoperationsid]/Control(@http:Payload clearing_and_settlement:ACHFulfillmentOperatingSession payload) returns clearing_and_settlement:ACHFulfillmentOperatingSession|clearing_and_settlement:HTTPErrorBadRequest|clearing_and_settlement:HTTPErrorUnauthorized|clearing_and_settlement:HTTPErrorForbidden|clearing_and_settlement:HTTPErrorNotFound|clearing_and_settlement:HTTPErrorTooManyRequests|clearing_and_settlement:HTTPErrorInternalServerError {
//         return <clearing_and_settlement:ACHFulfillmentOperatingSession>{};
//     }

//     # UpBQ Update an inbound ACH transaction batch
//     #
//     # + return - returns can be any of following types 
//     # http:Ok (InboundACH)
//     # http:BadRequest (BadRequest)
//     # http:Unauthorized (Unauthorized)
//     # http:Forbidden (Forbidden)
//     # http:NotFound (NotFound)
//     # http:TooManyRequests (TooManyRequests)
//     # http:InternalServerError (InternalServerError)
//     isolated resource function put ACHOperations/[string achoperationsid]/InboundACH/[string inboundachid]/Update(@http:Payload clearing_and_settlement:InboundACH payload) returns clearing_and_settlement:InboundACH|clearing_and_settlement:HTTPErrorBadRequest|clearing_and_settlement:HTTPErrorUnauthorized|clearing_and_settlement:HTTPErrorForbidden|clearing_and_settlement:HTTPErrorNotFound|clearing_and_settlement:HTTPErrorTooManyRequests|clearing_and_settlement:HTTPErrorInternalServerError {
//         return <clearing_and_settlement:InboundACH>{};
//     }

//     # UpBQ Update an outbound ACH transaction batch
//     #
//     # + return - returns can be any of following types 
//     # http:Ok (OutboundACH)
//     # http:BadRequest (BadRequest)
//     # http:Unauthorized (Unauthorized)
//     # http:Forbidden (Forbidden)
//     # http:NotFound (NotFound)
//     # http:TooManyRequests (TooManyRequests)
//     # http:InternalServerError (InternalServerError)
//     isolated resource function put ACHOperations/[string achoperationsid]/OutboundACH/[string outboundachid]/Update(@http:Payload clearing_and_settlement:OutboundACH payload) returns clearing_and_settlement:OutboundACH|clearing_and_settlement:HTTPErrorBadRequest|clearing_and_settlement:HTTPErrorUnauthorized|clearing_and_settlement:HTTPErrorForbidden|clearing_and_settlement:HTTPErrorNotFound|clearing_and_settlement:HTTPErrorTooManyRequests|clearing_and_settlement:HTTPErrorInternalServerError {
//         return <clearing_and_settlement:OutboundACH>{};
//     }

//     # UpBQ Update an transaction in reconciliations
//     #
//     # + return - returns can be any of following types 
//     # http:Ok (Reconciliation)
//     # http:BadRequest (BadRequest)
//     # http:Unauthorized (Unauthorized)
//     # http:Forbidden (Forbidden)
//     # http:NotFound (NotFound)
//     # http:TooManyRequests (TooManyRequests)
//     # http:InternalServerError (InternalServerError)
//     isolated resource function put ACHOperations/[string achoperationsid]/Reconciliation/[string reconciliationid]/Update(@http:Payload clearing_and_settlement:Reconciliation payload) returns clearing_and_settlement:Reconciliation|clearing_and_settlement:HTTPErrorBadRequest|clearing_and_settlement:HTTPErrorUnauthorized|clearing_and_settlement:HTTPErrorForbidden|clearing_and_settlement:HTTPErrorNotFound|clearing_and_settlement:HTTPErrorTooManyRequests|clearing_and_settlement:HTTPErrorInternalServerError {
//         return <clearing_and_settlement:Reconciliation>{};
//     }

//     # UpCR Update the operating schedule parameters
//     #
//     # + return - returns can be any of following types 
//     # http:Ok (ACHFulfillmentOperatingSession)
//     # http:BadRequest (BadRequest)
//     # http:Unauthorized (Unauthorized)
//     # http:Forbidden (Forbidden)
//     # http:NotFound (NotFound)
//     # http:TooManyRequests (TooManyRequests)
//     # http:InternalServerError (InternalServerError)
//     isolated resource function put ACHOperations/[string achoperationsid]/Update(@http:Payload clearing_and_settlement:ACHFulfillmentOperatingSession payload) returns clearing_and_settlement:ACHFulfillmentOperatingSession|clearing_and_settlement:HTTPErrorBadRequest|clearing_and_settlement:HTTPErrorUnauthorized|clearing_and_settlement:HTTPErrorForbidden|clearing_and_settlement:HTTPErrorNotFound|clearing_and_settlement:HTTPErrorTooManyRequests|clearing_and_settlement:HTTPErrorInternalServerError {
//         return <clearing_and_settlement:ACHFulfillmentOperatingSession>{};
//     }

//     # UpBQ Update a warehoused outbound ACH transaction batch
//     #
//     # + return - returns can be any of following types 
//     # http:Ok (Warehousing)
//     # http:BadRequest (BadRequest)
//     # http:Unauthorized (Unauthorized)
//     # http:Forbidden (Forbidden)
//     # http:NotFound (NotFound)
//     # http:TooManyRequests (TooManyRequests)
//     # http:InternalServerError (InternalServerError)
//     isolated resource function put ACHOperations/[string achoperationsid]/Warehousing/[string warehousingid]/Update(@http:Payload clearing_and_settlement:Warehousing payload) returns clearing_and_settlement:Warehousing|clearing_and_settlement:HTTPErrorBadRequest|clearing_and_settlement:HTTPErrorUnauthorized|clearing_and_settlement:HTTPErrorForbidden|clearing_and_settlement:HTTPErrorNotFound|clearing_and_settlement:HTTPErrorTooManyRequests|clearing_and_settlement:HTTPErrorInternalServerError {
//         return <clearing_and_settlement:Warehousing>{};
//     }
// };
