import ballerinax/financial.bian.attribute.groups.operations as operations;
import ballerinax/financial.bian.attribute.groups.common as common;
import ballerina/http;
import ballerina/io;

http:Service positionKeepingService =  service object {
    
    # ReBQ Retrieve details of financial transactions captured in the log
    #
    # + return - returns can be any of following types 
    # http:Ok (FinancialTransactionCapture)
    # http:BadRequest (BadRequest)
    # http:Unauthorized (Unauthorized)
    # http:Forbidden (Forbidden)
    # http:NotFound (NotFound)
    # http:TooManyRequests (TooManyRequests)
    # http:InternalServerError (InternalServerError)
    isolated resource function get PositionKeeping/[string positionkeepingid]/FinancialTransactionCapture/[string financialtransactioncaptureid]/Retrieve() returns operations:FinancialTransactionCapture|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        return <operations:FinancialTransactionCapture>{};
    }

    # ReCR Retrieve information about the log
    #
    # + return - returns can be any of following types 
    # http:Ok (FinancialPositionLog)
    # http:BadRequest (BadRequest)
    # http:Unauthorized (Unauthorized)
    # http:Forbidden (Forbidden)
    # http:NotFound (NotFound)
    # http:TooManyRequests (TooManyRequests)
    # http:InternalServerError (InternalServerError)
    isolated resource function get PositionKeeping/[string positionkeepingid]/Retrieve() returns operations:FinancialPositionLog|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        return <operations:FinancialPositionLog>{};
    }

    # InCR Initiate a position keeping transaction log
    #
    # + return - returns can be any of following types 
    # http:Ok (FinancialPositionLog)
    # http:BadRequest (BadRequest)
    # http:Unauthorized (Unauthorized)
    # http:Forbidden (Forbidden)
    # http:NotFound (NotFound)
    # http:TooManyRequests (TooManyRequests)
    # http:InternalServerError (InternalServerError)
    isolated resource function post PositionKeeping/Initiate(@http:Payload operations:FinancialPositionLog payload) returns operations:FinancialPositionLogOk|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        
        do {
            json|http:ClientError responseFromServer;
            lock {
	            // Invoking the configured backend service
                // TODO: Update the endpoint URL as per the actual backend API contract
	            responseFromServer = check externalClient->get("/PositionKeeping/Initiate");
            }
            io:println("-----------------------------------------------------------------------------------------------");
            io:println("Received response from backends API: /PositionKeeping/Initiate");
            io:println("{\n"+
            "   TransactionLogType: \"FinancialTransaction\",\n"+
            "   ProductInstanceReference: {...},\n"+
            "   CustomerReference: {...},\n"+
            "   CounterpartyReference: {...},\n"+
            "   BaseCurrency: {..},\n"+
            "   InterestApplicationRecord: {...},\n"+
            "   InterestTransaction: {...},\n"+
            "   TransactionDescription: {...},\n"+
            "   TransactionRateType: \"Fixed\",\n"+
            "   TransactionInterestCharge: {...},\n"+
            "   ManagedPositionLimits: {...},\n"+
            "   PositionLimitType: \"Multilateral\",\n"+
            "   PositionLimitSettings: {...},\n"+
            "   PositionLimitValue: {...},\n"+
            "   AmountBlock: {...},\n"+
            "   AmountBlockType: \"Principal\",\n"+
            "   Priority: \"Urgent\",\n"+
            "   Amount: {...},\n"+
            "   DateType: \"MaturityDate\",\n"+
            "   Date: {...},\n"+
            "   InitiationDate: {...},\n"+
            "   Status: {...}\n"+
        "}");
            io:println("-----------------------------------------------------------------------------------------------");
            io:println(" ");
        
            if (responseFromServer is http:ClientError) {
                io:println("Error response received from backend:", responseFromServer);
                common:HTTPError httpError = {
                    status_code: "400",
                    status: "Internal Server Error",
                    message: "An error occurred while processing the request."
                };
                common:HTTPErrorInternalServerError errorResponse = {
                    body: httpError
                };
                return errorResponse;
            }
            // Transform the response from backend to match the defined return type.
            // TODO: Implement the custom transformation logic in the data mapper module            
            // This is a sample mapping function. The transformation logic will depend on the actual response structure from the backend API and 
            // the defined BIAN data model
            operations:FinancialPositionLog|error financialPositionLog = transfromPositionKeepingInitiateResponse(responseFromServer);
            if (financialPositionLog is error) {
                io:println("Error in transforming response:", financialPositionLog);
                common:HTTPError httpError = {
                    status_code: "500",
                    status: "Internal Server Error",
                    message: "An error occurred while processing the request."
                };
                common:HTTPErrorInternalServerError errorResponse = {
                    body: httpError
                };
                return errorResponse;
            }
            return <operations:FinancialPositionLogOk> { body: financialPositionLog };
        } on fail error err {
            io:println("Error response received from backend:", err.message());
            common:HTTPError httpError = {
                status_code: "500",
                status: "Internal Server Error",
                message: "An error occurred while processing the request."
            };
            common:HTTPErrorInternalServerError errorResponse = {
                body: httpError
            };
            return errorResponse;
        }
    }

    # CoCR Control the processing of the log
    #
    # + return - returns can be any of following types 
    # http:Ok (FinancialPositionLog)
    # http:BadRequest (BadRequest)
    # http:Unauthorized (Unauthorized)
    # http:Forbidden (Forbidden)
    # http:NotFound (NotFound)
    # http:TooManyRequests (TooManyRequests)
    # http:InternalServerError (InternalServerError)
    isolated resource function put PositionKeeping/[string positionkeepingid]/Control(@http:Payload operations:FinancialPositionLog payload) returns operations:FinancialPositionLog|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        return <operations:FinancialPositionLog>{};
    }

    # CaBQ Capture details of a financial transaction in the log
    #
    # + return - returns can be any of following types 
    # http:Ok (FinancialTransactionCapture)
    # http:BadRequest (BadRequest)
    # http:Unauthorized (Unauthorized)
    # http:Forbidden (Forbidden)
    # http:NotFound (NotFound)
    # http:TooManyRequests (TooManyRequests)
    # http:InternalServerError (InternalServerError)
    isolated resource function put PositionKeeping/[string positionkeepingid]/FinancialTransactionCapture/[string financialtransactioncaptureid]/Capture(@http:Payload operations:FinancialTransactionCapture payload) returns operations:FinancialTransactionCapture|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        return <operations:FinancialTransactionCapture>{};
    }

    # UpBQ Update details of a captured financial transaction
    #
    # + return - returns can be any of following types 
    # http:Ok (FinancialTransactionCapture)
    # http:BadRequest (BadRequest)
    # http:Unauthorized (Unauthorized)
    # http:Forbidden (Forbidden)
    # http:NotFound (NotFound)
    # http:TooManyRequests (TooManyRequests)
    # http:InternalServerError (InternalServerError)
    isolated resource function put PositionKeeping/[string positionkeepingid]/FinancialTransactionCapture/[string financialtransactioncaptureid]/Update(@http:Payload operations:FinancialTransactionCapture payload) returns operations:FinancialTransactionCapture|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        return <operations:FinancialTransactionCapture>{};
    }

    # UpCR Update details for an active financial transaction log, including reflecting an account block
    #
    # + return - returns can be any of following types 
    # http:Ok (FinancialPositionLog)
    # http:BadRequest (BadRequest)
    # http:Unauthorized (Unauthorized)
    # http:Forbidden (Forbidden)
    # http:NotFound (NotFound)
    # http:TooManyRequests (TooManyRequests)
    # http:InternalServerError (InternalServerError)
    isolated resource function put PositionKeeping/[string positionkeepingid]/Update(@http:Payload operations:FinancialPositionLog payload) returns operations:FinancialPositionLog|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        
        do {
            json|http:ClientError responseFromServer;
            lock {
	            // Invoking the configured backend service
                // TODO: Update the endpoint URL as per the actual backend API contract
	            responseFromServer = externalClient->get("/PositionKeeping/"+ positionkeepingid +"/Update");
            }
            io:println("-----------------------------------------------------------------------------------------------");
            io:println("Received response from backends API: PositionKeeping/[string positionkeepingid]/Update");
            io:println("{\n" +
                "   TransactionLogType: \"FinancialTransaction\",\n" +
                "   ProductInstanceReference: {...},\n" +
                "   CustomerReference: {...},\n" +
                "   CounterpartyReference: {...},\n" +
                "   BaseCurrency: {...},\n" +
                "   InterestApplicationRecord: {...},\n" +
                "   InterestTransaction: {...},\n" +
                "   TransactionDescription: {...},\n" +
                "   TransactionRateType: \"Fixed\",\n" +
                "   TransactionInterestCharge: {...},\n" +
                "   ManagedPositionLimits: {...},\n" +
                "   PositionLimitType: \"Multilateral\",\n" +
                "   PositionLimitSettings: {...},\n" +
                "   PositionLimitValue: {...},\n" +
                "   AmountBlock: {...},\n" +
                "   AmountBlockType: \"Principal\",\n" +
                "   Priority: \"Urgent\",\n" +
                "   Amount: {...},\n" +
                "   DateType: \"MaturityDate\",\n" +
                "   Date: {...},\n" +
                "   InitiationDate: {...},\n" +
                "   Status: {...}\n" +
                "}");  
            io:println("-----------------------------------------------------------------------------------------------");
            io:println(" ");
        
            if (responseFromServer is http:ClientError) {
                io:println("Error response received from backend for API:", responseFromServer);
                common:HTTPErrorInternalServerError httpError = {
                    body: {
                        status_code: "500",
                        status: "Internal Server Error",
                        message: "An error occurred while processing the request."
                    }
                };
                return httpError;
            }
            // Transform the response from backend to match the defined return type.
            // TODO: Implement the custom transformation logic in the data mapper module            
            // This is a sample mapping function. The transformation logic will depend on the actual response structure from the backend API and 
            // the defined BIAN data model
            operations:FinancialPositionLog transformedResponse = check transformPositionKeepingUpdateResponse(responseFromServer);
            return transformedResponse;
        } on fail error err {
            io:println("Error occurred:", err.message());
            common:HTTPErrorInternalServerError httpError = {
                body: {
                    status_code: "500",
                    status: "Internal Server Error",
                    message: err.message()
                }
            };
            return httpError;
        }
    }
};
