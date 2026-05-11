import ballerinax/financial.bian.attribute.groups.operations as operations;
import ballerinax/financial.bian.attribute.groups.common as common;
import ballerina/http;
import ballerina/io;

http:Service correspondentBankDirectoryService =  service object {

    # Retrieve Details about Correspondent Bank
    #
    # + return - returns can be any of following types 
    # http:Ok (CorrespondentBankDirectoryEntry)
    # http:BadRequest (BadRequest)
    # http:Unauthorized (Unauthorized)
    # http:Forbidden (Forbidden)
    # http:NotFound (NotFound)
    # http:TooManyRequests (TooManyRequests)
    # http:InternalServerError (InternalServerError)
    isolated resource function get CorrespondentBankDirectory/[string correspondentbankdirectoryid]/Retrieve() returns operations:CorrespondentBankDirectoryEntry|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        do {
            json|http:ClientError responseFromServer;
            lock {
	            // Invoking the configured backend service
                // TODO: Update the endpoint URL as per the actual backend API contract
	            responseFromServer = externalClient->get("/CorrespondentBankDirectory/" + correspondentbankdirectoryid + "/Retrieve");
            }
            io:println("-----------------------------------------------------------------------------------------------");
            io:println("Received response from backends API: CorrespondentBankDirectory/[string correspondentbankdirectoryid]/Retrieve");
            io:println("{\n" +
                "   CorrespondentTransactionRecord: {...},\n" +
                "   SWIFTTransactionReference: {..},\n" +
                "   PayerBankReference: {...},\n" +
                "   PayerReference: {...},\n" +
                "   CorrespondedBankReference: {...},\n" +
                "   PayerProductInstanceReference: {...},\n" +
                "   PayeeReference: {...},\n" +
                "   PayeeProductInstanceReference: {...},\n" +
                "   PayeeBankReference: {...},\n" +
                "   SpecialInstructions: {...},\n" +
                "   Amount: {...},\n" +
                "   Currency: {...},\n" +
                "   DateType: \"ExecutedDate\",\n" +
                "   Date: {...},\n" +
                "   CorrespondentBankRoleType: \"AdvisingBank\",\n" +
                "   TransactionStatus: \"string\"\n" +
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
            operations:CorrespondentBankDirectoryEntry transformedResponse = check transformCorrespondentBankDetailRetrieveResponse(responseFromServer);
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

    # Register Correspondent Bank
    #
    # + return - returns can be any of following types 
    # http:Ok (CorrespondentBankDirectoryEntry)
    # http:BadRequest (BadRequest)
    # http:Unauthorized (Unauthorized)
    # http:Forbidden (Forbidden)
    # http:NotFound (NotFound)
    # http:TooManyRequests (TooManyRequests)
    # http:InternalServerError (InternalServerError)
    isolated resource function post CorrespondentBankDirectory/Register(@http:Payload operations:CorrespondentBankDirectoryEntry payload) returns operations:CorrespondentBankDirectoryEntryOk|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        return <operations:CorrespondentBankDirectoryEntryOk>{body: {}};   
    }

    # RqCR Request that an existing entry is updated or revised
    #
    # + return - returns can be any of following types 
    # http:Ok (CorrespondentBankDirectoryEntry)
    # http:BadRequest (BadRequest)
    # http:Unauthorized (Unauthorized)
    # http:Forbidden (Forbidden)
    # http:NotFound (NotFound)
    # http:TooManyRequests (TooManyRequests)
    # http:InternalServerError (InternalServerError)
    isolated resource function put CorrespondentBankDirectory/[string correspondentbankdirectoryid]/Request(@http:Payload operations:CorrespondentBankDirectoryEntry payload) returns operations:CorrespondentBankDirectoryEntry|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        return <operations:CorrespondentBankDirectoryEntry>{};
    }

    # Update details of Correspondent Bank
    #
    # + return - returns can be any of following types 
    # http:Ok (CorrespondentBankDirectoryEntry)
    # http:BadRequest (BadRequest)
    # http:Unauthorized (Unauthorized)
    # http:Forbidden (Forbidden)
    # http:NotFound (NotFound)
    # http:TooManyRequests (TooManyRequests)
    # http:InternalServerError (InternalServerError)
    isolated resource function put CorrespondentBankDirectory/[string correspondentbankdirectoryid]/Update(@http:Payload operations:CorrespondentBankDirectoryEntry payload) returns operations:CorrespondentBankDirectoryEntry|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        return <operations:CorrespondentBankDirectoryEntry>{};
    }
};