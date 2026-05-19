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

import ballerinax/financial.bian.attribute.groups.operations as operations;
import ballerinax/financial.bian.attribute.groups.common as common;
import ballerina/http;
import ballerina/io;

configurable string correspondentBankDirectoryUrl = ?;

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
	            responseFromServer = externalClient->get(correspondentBankDirectoryUrl + "/" + correspondentbankdirectoryid + "/Retrieve");
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