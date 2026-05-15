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

http:Service documentDirectoryService =  service object {
    # Notify Document Amendment Properties
    #
    # + return - returns can be any of following types 
    # http:Ok (DocumentAmendmentProperties)
    # http:BadRequest (BadRequest)
    # http:Unauthorized (Unauthorized)
    # http:Forbidden (Forbidden)
    # http:NotFound (NotFound)
    # http:TooManyRequests (TooManyRequests)
    # http:InternalServerError (InternalServerError)
    resource function get DocumentDirectory/[string documentdirectoryid]/DocumentAmendmentProperties/[string documentamendmentpropertiesid]/Notify() returns operations:DocumentAmendmentProperties|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        return <operations:DocumentAmendmentProperties>{};
    }

    # Retrieve Document Amendment Properties
    #
    # + return - returns can be any of following types 
    # http:Ok (DocumentAmendmentProperties)
    # http:BadRequest (BadRequest)
    # http:Unauthorized (Unauthorized)
    # http:Forbidden (Forbidden)
    # http:NotFound (NotFound)
    # http:TooManyRequests (TooManyRequests)
    # http:InternalServerError (InternalServerError)
    resource function get DocumentDirectory/[string documentdirectoryid]/DocumentAmendmentProperties/[string documentamendmentpropertiesid]/Retrieve() returns operations:DocumentAmendmentProperties|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        return <operations:DocumentAmendmentProperties>{};
    }

    # Notify Document Archiving Properties
    #
    # + return - returns can be any of following types 
    # http:Ok (DocumentArchivingProperties)
    # http:BadRequest (BadRequest)
    # http:Unauthorized (Unauthorized)
    # http:Forbidden (Forbidden)
    # http:NotFound (NotFound)
    # http:TooManyRequests (TooManyRequests)
    # http:InternalServerError (InternalServerError)
    resource function get DocumentDirectory/[string documentdirectoryid]/DocumentArchivingProperties/[string documentarchivingpropertiesid]/Notify() returns operations:DocumentArchivingProperties|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        return <operations:DocumentArchivingProperties>{};
    }

    # Retrieve Document Archiving Properties
    #
    # + return - returns can be any of following types 
    # http:Ok (DocumentArchivingProperties)
    # http:BadRequest (BadRequest)
    # http:Unauthorized (Unauthorized)
    # http:Forbidden (Forbidden)
    # http:NotFound (NotFound)
    # http:TooManyRequests (TooManyRequests)
    # http:InternalServerError (InternalServerError)
    resource function get DocumentDirectory/[string documentdirectoryid]/DocumentArchivingProperties/[string documentarchivingpropertiesid]/Retrieve() returns operations:DocumentArchivingProperties|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        return <operations:DocumentArchivingProperties>{};
    }

    # Notify Document Reference Properties
    #
    # + return - returns can be any of following types 
    # http:Ok (DocumentReferenceProperties)
    # http:BadRequest (BadRequest)
    # http:Unauthorized (Unauthorized)
    # http:Forbidden (Forbidden)
    # http:NotFound (NotFound)
    # http:TooManyRequests (TooManyRequests)
    # http:InternalServerError (InternalServerError)
    resource function get DocumentDirectory/[string documentdirectoryid]/DocumentReferenceProperties/[string documentreferencepropertiesid]/Notify() returns operations:DocumentReferenceProperties|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        return <operations:DocumentReferenceProperties>{};
    }

    # Retrieve Document Reference Properties
    #
    # + return - returns can be any of following types 
    # http:Ok (DocumentReferenceProperties)
    # http:BadRequest (BadRequest)
    # http:Unauthorized (Unauthorized)
    # http:Forbidden (Forbidden)
    # http:NotFound (NotFound)
    # http:TooManyRequests (TooManyRequests)
    # http:InternalServerError (InternalServerError)
    resource function get DocumentDirectory/[string documentdirectoryid]/DocumentReferenceProperties/[string documentreferencepropertiesid]/Retrieve() returns operations:DocumentReferenceProperties|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        return <operations:DocumentReferenceProperties>{};
    }

    # Notify Document Update History Properties
    #
    # + return - returns can be any of following types 
    # http:Ok (DocumentUpdateHistoryProperties)
    # http:BadRequest (BadRequest)
    # http:Unauthorized (Unauthorized)
    # http:Forbidden (Forbidden)
    # http:NotFound (NotFound)
    # http:TooManyRequests (TooManyRequests)
    # http:InternalServerError (InternalServerError)
    resource function get DocumentDirectory/[string documentdirectoryid]/DocumentUpdateHistoryProperties/[string documentupdatehistorypropertiesid]/Notify() returns operations:DocumentUpdateHistoryProperties|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        return <operations:DocumentUpdateHistoryProperties>{};
    }

    # Retrieve Document Update History Properties
    #
    # + return - returns can be any of following types 
    # http:Ok (DocumentUpdateHistoryProperties)
    # http:BadRequest (BadRequest)
    # http:Unauthorized (Unauthorized)
    # http:Forbidden (Forbidden)
    # http:NotFound (NotFound)
    # http:TooManyRequests (TooManyRequests)
    # http:InternalServerError (InternalServerError)
    resource function get DocumentDirectory/[string documentdirectoryid]/DocumentUpdateHistoryProperties/[string documentupdatehistorypropertiesid]/Retrieve() returns operations:DocumentUpdateHistoryProperties|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        return <operations:DocumentUpdateHistoryProperties>{};
    }

    # Notify Document Verification Properties
    #
    # + return - returns can be any of following types 
    # http:Ok (DocumentVerificationProperties)
    # http:BadRequest (BadRequest)
    # http:Unauthorized (Unauthorized)
    # http:Forbidden (Forbidden)
    # http:NotFound (NotFound)
    # http:TooManyRequests (TooManyRequests)
    # http:InternalServerError (InternalServerError)
    resource function get DocumentDirectory/[string documentdirectoryid]/DocumentVerificationProperties/[string documentverificationpropertiesid]/Notify() returns operations:DocumentVerificationProperties|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        return <operations:DocumentVerificationProperties>{};
    }

    # Retrieve Document Verification Properties
    #
    # + return - returns can be any of following types 
    # http:Ok (DocumentVerificationProperties)
    # http:BadRequest (BadRequest)
    # http:Unauthorized (Unauthorized)
    # http:Forbidden (Forbidden)
    # http:NotFound (NotFound)
    # http:TooManyRequests (TooManyRequests)
    # http:InternalServerError (InternalServerError)
    resource function get DocumentDirectory/[string documentdirectoryid]/DocumentVerificationProperties/[string documentverificationpropertiesid]/Retrieve() returns operations:DocumentVerificationProperties|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        return <operations:DocumentVerificationProperties>{};
    }

    # Notify Document Version Properties
    #
    # + return - returns can be any of following types 
    # http:Ok (DocumentVersionProperties)
    # http:BadRequest (BadRequest)
    # http:Unauthorized (Unauthorized)
    # http:Forbidden (Forbidden)
    # http:NotFound (NotFound)
    # http:TooManyRequests (TooManyRequests)
    # http:InternalServerError (InternalServerError)
    resource function get DocumentDirectory/[string documentdirectoryid]/DocumentVersionProperties/[string documentversionpropertiesid]/Notify() returns operations:DocumentVersionProperties|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        return <operations:DocumentVersionProperties>{};
    }

    # Retrieve Document Version Properties
    #
    # + return - returns can be any of following types 
    # http:Ok (DocumentVersionProperties)
    # http:BadRequest (BadRequest)
    # http:Unauthorized (Unauthorized)
    # http:Forbidden (Forbidden)
    # http:NotFound (NotFound)
    # http:TooManyRequests (TooManyRequests)
    # http:InternalServerError (InternalServerError)
    resource function get DocumentDirectory/[string documentdirectoryid]/DocumentVersionProperties/[string documentversionpropertiesid]/Retrieve() returns operations:DocumentVersionProperties|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        return <operations:DocumentVersionProperties>{};
    }

    # Notify Document Directory Entry
    #
    # + return - returns can be any of following types 
    # http:Ok (DocumentDirectoryEntry)
    # http:BadRequest (BadRequest)
    # http:Unauthorized (Unauthorized)
    # http:Forbidden (Forbidden)
    # http:NotFound (NotFound)
    # http:TooManyRequests (TooManyRequests)
    # http:InternalServerError (InternalServerError)
    resource function get DocumentDirectory/[string documentdirectoryid]/Notify() returns common:DocumentDirectoryEntry|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        return <common:DocumentDirectoryEntry>{};
    }

    # Retrieve Document Directory Entry
    #
    # + return - returns can be any of following types 
    # http:Ok (DocumentDirectoryEntry)
    # http:BadRequest (BadRequest)
    # http:Unauthorized (Unauthorized)
    # http:Forbidden (Forbidden)
    # http:NotFound (NotFound)
    # http:TooManyRequests (TooManyRequests)
    # http:InternalServerError (InternalServerError)
    resource function get DocumentDirectory/[string documentdirectoryid]/Retrieve() returns common:DocumentDirectoryEntry|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        return <common:DocumentDirectoryEntry>{};
    }

    # Register Document Directory Entry
    #
    # + return - returns can be any of following types 
    # http:Ok (DocumentDirectoryEntry)
    # http:BadRequest (BadRequest)
    # http:Unauthorized (Unauthorized)
    # http:Forbidden (Forbidden)
    # http:NotFound (NotFound)
    # http:TooManyRequests (TooManyRequests)
    # http:InternalServerError (InternalServerError)
    resource function post DocumentDirectory/Register(@http:Payload common:DocumentDirectoryEntry payload) returns operations:DocumentDirectoryEntryOk|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        
        do {
            json|http:ClientError responseFromServer;
            lock {
	            // Invoking the configured backend service
                // TODO: Update the endpoint URL as per the actual backend API contract
	            responseFromServer = check externalClient->get("/DocumentDirectory/Register");
            }
            io:println("-----------------------------------------------------------------------------------------------");
            io:println("Received response from backends API: /DocumentDirectory/Register");
            io:println("{\n"+
                "   \"DocumentDirectoryEntryIdentification\": \"string\",\n"+
                "   \"DirectoryEntryDateType\": \"OpenDate\",\n"+
                "   \"DirectoryEntryDate\": {},\n"+
                "   \"DirectoryEntryStatus\": {}\n"+
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
            common:DocumentDirectoryEntry|error transformedResponse = transformDocumentDirectoryInitiateResponse(responseFromServer);
            // Handle the transformed response and return the appropriate response to the client
            if (transformedResponse is error) {
                io:println("Error response received from backend:", transformedResponse);
                common:HTTPError httpError = {
                    status_code: "400",
                    status: "Internal Server Error",
                    message: transformedResponse.message()                   
                };
                common:HTTPErrorInternalServerError errorResponse = {
                    body: httpError
                };
                return errorResponse;
            }

            // Returning the successful response
            return <operations:DocumentDirectoryEntryOk> { body: transformedResponse };
        } on fail error err {
            io:println(err.message());
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

    # Register Document Amendment Properties
    #
    # + return - returns can be any of following types 
    # http:Ok (DocumentAmendmentProperties)
    # http:BadRequest (BadRequest)
    # http:Unauthorized (Unauthorized)
    # http:Forbidden (Forbidden)
    # http:NotFound (NotFound)
    # http:TooManyRequests (TooManyRequests)
    # http:InternalServerError (InternalServerError)
    resource function post DocumentDirectory/[string documentdirectoryid]/DocumentAmendmentProperties/Register(@http:Payload operations:DocumentAmendmentProperties payload) returns operations:DocumentAmendmentPropertiesOk|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        return <operations:DocumentAmendmentPropertiesOk>{body: {}};
    }

    # Register Document Archiving Properties
    #
    # + return - returns can be any of following types 
    # http:Ok (DocumentArchivingProperties)
    # http:BadRequest (BadRequest)
    # http:Unauthorized (Unauthorized)
    # http:Forbidden (Forbidden)
    # http:NotFound (NotFound)
    # http:TooManyRequests (TooManyRequests)
    # http:InternalServerError (InternalServerError)
    resource function post DocumentDirectory/[string documentdirectoryid]/DocumentArchivingProperties/Register(@http:Payload operations:DocumentArchivingProperties payload) returns operations:DocumentArchivingPropertiesOk|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        return <operations:DocumentArchivingPropertiesOk>{body: {}};
    }

    # Register Document Reference Properties
    #
    # + return - returns can be any of following types 
    # http:Ok (DocumentReferenceProperties)
    # http:BadRequest (BadRequest)
    # http:Unauthorized (Unauthorized)
    # http:Forbidden (Forbidden)
    # http:NotFound (NotFound)
    # http:TooManyRequests (TooManyRequests)
    # http:InternalServerError (InternalServerError)
    resource function post DocumentDirectory/[string documentdirectoryid]/DocumentReferenceProperties/Register(@http:Payload operations:DocumentReferenceProperties payload) returns operations:DocumentReferencePropertiesOk|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        return <operations:DocumentReferencePropertiesOk>{body: {}};
    }

    # Register Document Update History Properties
    #
    # + return - returns can be any of following types 
    # http:Ok (DocumentUpdateHistoryProperties)
    # http:BadRequest (BadRequest)
    # http:Unauthorized (Unauthorized)
    # http:Forbidden (Forbidden)
    # http:NotFound (NotFound)
    # http:TooManyRequests (TooManyRequests)
    # http:InternalServerError (InternalServerError)
    resource function post DocumentDirectory/[string documentdirectoryid]/DocumentUpdateHistoryProperties/Register(@http:Payload operations:DocumentUpdateHistoryProperties payload) returns operations:DocumentUpdateHistoryPropertiesOk|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        return <operations:DocumentUpdateHistoryPropertiesOk>{body: {}};
    }

    # Register Document Verification Properties
    #
    # + return - returns can be any of following types 
    # http:Ok (DocumentVerificationProperties)
    # http:BadRequest (BadRequest)
    # http:Unauthorized (Unauthorized)
    # http:Forbidden (Forbidden)
    # http:NotFound (NotFound)
    # http:TooManyRequests (TooManyRequests)
    # http:InternalServerError (InternalServerError)
    resource function post DocumentDirectory/[string documentdirectoryid]/DocumentVerificationProperties/Register(@http:Payload operations:DocumentVerificationProperties payload) returns operations:DocumentVerificationPropertiesOk|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        return <operations:DocumentVerificationPropertiesOk>{body: {}};
    }

    # Register Document Version Properties
    #
    # + return - returns can be any of following types 
    # http:Ok (DocumentVersionProperties)
    # http:BadRequest (BadRequest)
    # http:Unauthorized (Unauthorized)
    # http:Forbidden (Forbidden)
    # http:NotFound (NotFound)
    # http:TooManyRequests (TooManyRequests)
    # http:InternalServerError (InternalServerError)
    resource function post DocumentDirectory/[string documentdirectoryid]/DocumentVersionProperties/Register(@http:Payload operations:DocumentVersionProperties payload) returns operations:DocumentVersionPropertiesOk|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        return <operations:DocumentVersionPropertiesOk>{body: {}};
    }

    # Control Document Directory Entry
    #
    # + return - returns can be any of following types 
    # http:Ok (DocumentDirectoryEntry)
    # http:BadRequest (BadRequest)
    # http:Unauthorized (Unauthorized)
    # http:Forbidden (Forbidden)
    # http:NotFound (NotFound)
    # http:TooManyRequests (TooManyRequests)
    # http:InternalServerError (InternalServerError)
    resource function put DocumentDirectory/[string documentdirectoryid]/Control(@http:Payload common:DocumentDirectoryEntry payload) returns common:DocumentDirectoryEntry|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        return <common:DocumentDirectoryEntry>{};
    }

    # Execute Document Amendment Properties
    #
    # + return - returns can be any of following types 
    # http:Ok (DocumentAmendmentProperties)
    # http:BadRequest (BadRequest)
    # http:Unauthorized (Unauthorized)
    # http:Forbidden (Forbidden)
    # http:NotFound (NotFound)
    # http:TooManyRequests (TooManyRequests)
    # http:InternalServerError (InternalServerError)
    resource function put DocumentDirectory/[string documentdirectoryid]/DocumentAmendmentProperties/[string documentamendmentpropertiesid]/Execute(@http:Payload operations:DocumentAmendmentProperties payload) returns operations:DocumentAmendmentProperties|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        return <operations:DocumentAmendmentProperties>{};
    }

    # Request Document Amendment Properties
    #
    # + return - returns can be any of following types 
    # http:Ok (DocumentAmendmentProperties)
    # http:BadRequest (BadRequest)
    # http:Unauthorized (Unauthorized)
    # http:Forbidden (Forbidden)
    # http:NotFound (NotFound)
    # http:TooManyRequests (TooManyRequests)
    # http:InternalServerError (InternalServerError)
    resource function put DocumentDirectory/[string documentdirectoryid]/DocumentAmendmentProperties/[string documentamendmentpropertiesid]/Request(@http:Payload operations:DocumentAmendmentProperties payload) returns operations:DocumentAmendmentProperties|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        return <operations:DocumentAmendmentProperties>{};
    }

    # Update Document Amendment Properties
    #
    # + return - returns can be any of following types 
    # http:Ok (DocumentAmendmentProperties)
    # http:BadRequest (BadRequest)
    # http:Unauthorized (Unauthorized)
    # http:Forbidden (Forbidden)
    # http:NotFound (NotFound)
    # http:TooManyRequests (TooManyRequests)
    # http:InternalServerError (InternalServerError)
    resource function put DocumentDirectory/[string documentdirectoryid]/DocumentAmendmentProperties/[string documentamendmentpropertiesid]/Update(@http:Payload operations:DocumentAmendmentProperties payload) returns operations:DocumentAmendmentProperties|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        return <operations:DocumentAmendmentProperties>{};
    }

    # Execute Document Archiving Properties
    #
    # + return - returns can be any of following types 
    # http:Ok (DocumentArchivingProperties)
    # http:BadRequest (BadRequest)
    # http:Unauthorized (Unauthorized)
    # http:Forbidden (Forbidden)
    # http:NotFound (NotFound)
    # http:TooManyRequests (TooManyRequests)
    # http:InternalServerError (InternalServerError)
    resource function put DocumentDirectory/[string documentdirectoryid]/DocumentArchivingProperties/[string documentarchivingpropertiesid]/Execute(@http:Payload operations:DocumentArchivingProperties payload) returns operations:DocumentArchivingProperties|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        return <operations:DocumentArchivingProperties>{};
    }

    # Request Document Archiving Properties
    #
    # + return - returns can be any of following types 
    # http:Ok (DocumentArchivingProperties)
    # http:BadRequest (BadRequest)
    # http:Unauthorized (Unauthorized)
    # http:Forbidden (Forbidden)
    # http:NotFound (NotFound)
    # http:TooManyRequests (TooManyRequests)
    # http:InternalServerError (InternalServerError)
    resource function put DocumentDirectory/[string documentdirectoryid]/DocumentArchivingProperties/[string documentarchivingpropertiesid]/Request(@http:Payload operations:DocumentArchivingProperties payload) returns operations:DocumentArchivingProperties|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        return <operations:DocumentArchivingProperties>{};
    }

    # Update Document Archiving Properties
    #
    # + return - returns can be any of following types 
    # http:Ok (DocumentArchivingProperties)
    # http:BadRequest (BadRequest)
    # http:Unauthorized (Unauthorized)
    # http:Forbidden (Forbidden)
    # http:NotFound (NotFound)
    # http:TooManyRequests (TooManyRequests)
    # http:InternalServerError (InternalServerError)
    resource function put DocumentDirectory/[string documentdirectoryid]/DocumentArchivingProperties/[string documentarchivingpropertiesid]/Update(@http:Payload operations:DocumentArchivingProperties payload) returns operations:DocumentArchivingProperties|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        return <operations:DocumentArchivingProperties>{};
    }

    # Execute Document Reference Properties
    #
    # + return - returns can be any of following types 
    # http:Ok (DocumentReferenceProperties)
    # http:BadRequest (BadRequest)
    # http:Unauthorized (Unauthorized)
    # http:Forbidden (Forbidden)
    # http:NotFound (NotFound)
    # http:TooManyRequests (TooManyRequests)
    # http:InternalServerError (InternalServerError)
    resource function put DocumentDirectory/[string documentdirectoryid]/DocumentReferenceProperties/[string documentreferencepropertiesid]/Execute(@http:Payload operations:DocumentReferenceProperties payload) returns operations:DocumentReferenceProperties|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        return <operations:DocumentReferenceProperties>{};
    }

    # Request Document Reference Properties
    #
    # + return - returns can be any of following types 
    # http:Ok (DocumentReferenceProperties)
    # http:BadRequest (BadRequest)
    # http:Unauthorized (Unauthorized)
    # http:Forbidden (Forbidden)
    # http:NotFound (NotFound)
    # http:TooManyRequests (TooManyRequests)
    # http:InternalServerError (InternalServerError)
    resource function put DocumentDirectory/[string documentdirectoryid]/DocumentReferenceProperties/[string documentreferencepropertiesid]/Request(@http:Payload operations:DocumentReferenceProperties payload) returns operations:DocumentReferenceProperties|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        return <operations:DocumentReferenceProperties>{};
    }

    # Update Document Reference Properties
    #
    # + return - returns can be any of following types 
    # http:Ok (DocumentReferenceProperties)
    # http:BadRequest (BadRequest)
    # http:Unauthorized (Unauthorized)
    # http:Forbidden (Forbidden)
    # http:NotFound (NotFound)
    # http:TooManyRequests (TooManyRequests)
    # http:InternalServerError (InternalServerError)
    resource function put DocumentDirectory/[string documentdirectoryid]/DocumentReferenceProperties/[string documentreferencepropertiesid]/Update(@http:Payload operations:DocumentReferenceProperties payload) returns operations:DocumentReferenceProperties|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        return <operations:DocumentReferenceProperties>{};
    }

    # Execute Document Update History Properties
    #
    # + return - returns can be any of following types 
    # http:Ok (DocumentUpdateHistoryProperties)
    # http:BadRequest (BadRequest)
    # http:Unauthorized (Unauthorized)
    # http:Forbidden (Forbidden)
    # http:NotFound (NotFound)
    # http:TooManyRequests (TooManyRequests)
    # http:InternalServerError (InternalServerError)
    resource function put DocumentDirectory/[string documentdirectoryid]/DocumentUpdateHistoryProperties/[string documentupdatehistorypropertiesid]/Execute(@http:Payload operations:DocumentUpdateHistoryProperties payload) returns operations:DocumentUpdateHistoryProperties|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        return <operations:DocumentUpdateHistoryProperties>{};
    }

    # Request Document Update History Properties
    #
    # + return - returns can be any of following types 
    # http:Ok (DocumentUpdateHistoryProperties)
    # http:BadRequest (BadRequest)
    # http:Unauthorized (Unauthorized)
    # http:Forbidden (Forbidden)
    # http:NotFound (NotFound)
    # http:TooManyRequests (TooManyRequests)
    # http:InternalServerError (InternalServerError)
    resource function put DocumentDirectory/[string documentdirectoryid]/DocumentUpdateHistoryProperties/[string documentupdatehistorypropertiesid]/Request(@http:Payload operations:DocumentUpdateHistoryProperties payload) returns operations:DocumentUpdateHistoryProperties|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        return <operations:DocumentUpdateHistoryProperties>{};
    }

    # Update Document Update History Properties
    #
    # + return - returns can be any of following types 
    # http:Ok (DocumentUpdateHistoryProperties)
    # http:BadRequest (BadRequest)
    # http:Unauthorized (Unauthorized)
    # http:Forbidden (Forbidden)
    # http:NotFound (NotFound)
    # http:TooManyRequests (TooManyRequests)
    # http:InternalServerError (InternalServerError)
    resource function put DocumentDirectory/[string documentdirectoryid]/DocumentUpdateHistoryProperties/[string documentupdatehistorypropertiesid]/Update(@http:Payload operations:DocumentUpdateHistoryProperties payload) returns operations:DocumentUpdateHistoryProperties|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        return <operations:DocumentUpdateHistoryProperties>{};
    }

    # Execute Document Verification Properties
    #
    # + return - returns can be any of following types 
    # http:Ok (DocumentVerificationProperties)
    # http:BadRequest (BadRequest)
    # http:Unauthorized (Unauthorized)
    # http:Forbidden (Forbidden)
    # http:NotFound (NotFound)
    # http:TooManyRequests (TooManyRequests)
    # http:InternalServerError (InternalServerError)
    resource function put DocumentDirectory/[string documentdirectoryid]/DocumentVerificationProperties/[string documentverificationpropertiesid]/Execute(@http:Payload operations:DocumentVerificationProperties payload) returns operations:DocumentVerificationProperties|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        return <operations:DocumentVerificationProperties>{};
    }

    # Request Document Verification Properties
    #
    # + return - returns can be any of following types 
    # http:Ok (DocumentVerificationProperties)
    # http:BadRequest (BadRequest)
    # http:Unauthorized (Unauthorized)
    # http:Forbidden (Forbidden)
    # http:NotFound (NotFound)
    # http:TooManyRequests (TooManyRequests)
    # http:InternalServerError (InternalServerError)
    resource function put DocumentDirectory/[string documentdirectoryid]/DocumentVerificationProperties/[string documentverificationpropertiesid]/Request(@http:Payload operations:DocumentVerificationProperties payload) returns operations:DocumentVerificationProperties|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        return <operations:DocumentVerificationProperties>{};
    }

    # Update Document Verification Properties
    #
    # + return - returns can be any of following types 
    # http:Ok (DocumentVerificationProperties)
    # http:BadRequest (BadRequest)
    # http:Unauthorized (Unauthorized)
    # http:Forbidden (Forbidden)
    # http:NotFound (NotFound)
    # http:TooManyRequests (TooManyRequests)
    # http:InternalServerError (InternalServerError)
    resource function put DocumentDirectory/[string documentdirectoryid]/DocumentVerificationProperties/[string documentverificationpropertiesid]/Update(@http:Payload operations:DocumentVerificationProperties payload) returns operations:DocumentVerificationProperties|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        return <operations:DocumentVerificationProperties>{};
    }

    # Execute Document Version Properties
    #
    # + return - returns can be any of following types 
    # http:Ok (DocumentVersionProperties)
    # http:BadRequest (BadRequest)
    # http:Unauthorized (Unauthorized)
    # http:Forbidden (Forbidden)
    # http:NotFound (NotFound)
    # http:TooManyRequests (TooManyRequests)
    # http:InternalServerError (InternalServerError)
    resource function put DocumentDirectory/[string documentdirectoryid]/DocumentVersionProperties/[string documentversionpropertiesid]/Execute(@http:Payload operations:DocumentVersionProperties payload) returns operations:DocumentVersionProperties|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        return <operations:DocumentVersionProperties>{};
    }

    # Request Document Version Properties
    #
    # + return - returns can be any of following types 
    # http:Ok (DocumentVersionProperties)
    # http:BadRequest (BadRequest)
    # http:Unauthorized (Unauthorized)
    # http:Forbidden (Forbidden)
    # http:NotFound (NotFound)
    # http:TooManyRequests (TooManyRequests)
    # http:InternalServerError (InternalServerError)
    resource function put DocumentDirectory/[string documentdirectoryid]/DocumentVersionProperties/[string documentversionpropertiesid]/Request(@http:Payload operations:DocumentVersionProperties payload) returns operations:DocumentVersionProperties|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        return <operations:DocumentVersionProperties>{};
    }

    # Update Document Version Properties
    #
    # + return - returns can be any of following types 
    # http:Ok (DocumentVersionProperties)
    # http:BadRequest (BadRequest)
    # http:Unauthorized (Unauthorized)
    # http:Forbidden (Forbidden)
    # http:NotFound (NotFound)
    # http:TooManyRequests (TooManyRequests)
    # http:InternalServerError (InternalServerError)
    resource function put DocumentDirectory/[string documentdirectoryid]/DocumentVersionProperties/[string documentversionpropertiesid]/Update(@http:Payload operations:DocumentVersionProperties payload) returns operations:DocumentVersionProperties|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        return <operations:DocumentVersionProperties>{};
    }

    # Exchange Document Directory Entry
    #
    # + return - returns can be any of following types 
    # http:Ok (DocumentDirectoryEntry)
    # http:BadRequest (BadRequest)
    # http:Unauthorized (Unauthorized)
    # http:Forbidden (Forbidden)
    # http:NotFound (NotFound)
    # http:TooManyRequests (TooManyRequests)
    # http:InternalServerError (InternalServerError)
    resource function put DocumentDirectory/[string documentdirectoryid]/Exchange(@http:Payload common:DocumentDirectoryEntry payload) returns common:DocumentDirectoryEntry|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        return <common:DocumentDirectoryEntry>{};
    }

    # Execute Document Directory Entry
    #
    # + return - returns can be any of following types 
    # http:Ok (DocumentDirectoryEntry)
    # http:BadRequest (BadRequest)
    # http:Unauthorized (Unauthorized)
    # http:Forbidden (Forbidden)
    # http:NotFound (NotFound)
    # http:TooManyRequests (TooManyRequests)
    # http:InternalServerError (InternalServerError)
    resource function put DocumentDirectory/[string documentdirectoryid]/Execute(@http:Payload common:DocumentDirectoryEntry payload) returns common:DocumentDirectoryEntry|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        return <common:DocumentDirectoryEntry>{};
    }

    # Request Document Directory Entry
    #
    # + return - returns can be any of following types 
    # http:Ok (DocumentDirectoryEntry)
    # http:BadRequest (BadRequest)
    # http:Unauthorized (Unauthorized)
    # http:Forbidden (Forbidden)
    # http:NotFound (NotFound)
    # http:TooManyRequests (TooManyRequests)
    # http:InternalServerError (InternalServerError)
    resource function put DocumentDirectory/[string documentdirectoryid]/Request(@http:Payload common:DocumentDirectoryEntry payload) returns common:DocumentDirectoryEntry|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        return <common:DocumentDirectoryEntry>{};
    }

    # Update Document Directory Entry
    #
    # + return - returns can be any of following types 
    # http:Ok (DocumentDirectoryEntry)
    # http:BadRequest (BadRequest)
    # http:Unauthorized (Unauthorized)
    # http:Forbidden (Forbidden)
    # http:NotFound (NotFound)
    # http:TooManyRequests (TooManyRequests)
    # http:InternalServerError (InternalServerError)
    resource function put DocumentDirectory/[string documentdirectoryid]/Update(@http:Payload common:DocumentDirectoryEntry payload) returns common:DocumentDirectoryEntry|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        return <common:DocumentDirectoryEntry>{};
    }
};
