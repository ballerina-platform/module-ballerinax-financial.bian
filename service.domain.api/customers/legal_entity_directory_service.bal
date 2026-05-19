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

import ballerinax/financial.bian.attribute.groups.customers as customers;
import ballerinax/financial.bian.attribute.groups.common as common;
import ballerina/http;
import ballerina/io;

configurable string legalEntityDirectoryUrl = ?;

http:Service legalEntityDirectoryService =  service object {

    # ReBQ Retrieve details about association entries in the directory record
    #
    # + return - returns can be any of following types 
    # http:Ok (Associations)
    # http:BadRequest (BadRequest)
    # http:Unauthorized (Unauthorized)
    # http:Forbidden (Forbidden)
    # http:NotFound (NotFound)
    # http:TooManyRequests (TooManyRequests)
    # http:InternalServerError (InternalServerError)
    resource function get LegalEntityDirectory/[string legalentitydirectoryid]/Associations/[string associationsid]/Retrieve() returns common:Associations|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        return <common:Associations> {};
    }

    # ReBQ Retrieve details about profile entries in the directory record
    #
    # + return - returns can be any of following types 
    # http:Ok (Profile)
    # http:BadRequest (BadRequest)
    # http:Unauthorized (Unauthorized)
    # http:Forbidden (Forbidden)
    # http:NotFound (NotFound)
    # http:TooManyRequests (TooManyRequests)
    # http:InternalServerError (InternalServerError)
    resource function get LegalEntityDirectory/[string legalentitydirectoryid]/Profile/[string profileid]/Retrieve() returns common:Profile|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        return <common:Profile> {};
    }

    # ReBQ Retrieve details about reference entries in the directory record
    #
    # + return - returns can be any of following types 
    # http:Ok (Reference)
    # http:BadRequest (BadRequest)
    # http:Unauthorized (Unauthorized)
    # http:Forbidden (Forbidden)
    # http:NotFound (NotFound)
    # http:TooManyRequests (TooManyRequests)
    # http:InternalServerError (InternalServerError)
    resource function get LegalEntityDirectory/[string legalentitydirectoryid]/Reference/[string referenceid]/Retrieve() returns common:Reference|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        return <common:Reference> {};
    }

    # ReCR Retrieve details about a legal entity directory entry
    #
    # + return - returns can be any of following types 
    # http:Ok (LegalEntityDirectoryEntry)
    # http:BadRequest (BadRequest)
    # http:Unauthorized (Unauthorized)
    # http:Forbidden (Forbidden)
    # http:NotFound (NotFound)
    # http:TooManyRequests (TooManyRequests)
    # http:InternalServerError (InternalServerError)
    resource function get LegalEntityDirectory/[string legalentitydirectoryid]/Retrieve() returns customers:LegalEntityDirectoryEntry|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        do {
            json|http:ClientError responseFromServer;
            lock {
                responseFromServer = check externalClient->get(legalEntityDirectoryUrl + "/" + legalentitydirectoryid + "/Retrieve");
            }

            io:println("-------------------------------------------------------------------------------------------------------");
            io:println("Received response from backends API: LegalEntityDirectory/" + legalentitydirectoryid + "/Retrieve");
            io:println("-------------------------------------------------------------------------------------------------------");
            io:println(" ");

            if (responseFromServer is http:ClientError) {
                io:println("Error response received from backend:", responseFromServer);
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

            customers:LegalEntityDirectoryEntry|error legalEntity =
                transformLegalEntityDirectoryRetrievalResponse(responseFromServer);

            if (legalEntity is error) {
                io:println("Error while transforming backend response:", legalEntity);
                common:HTTPError httpError = {
                    status_code: "400",
                    status: "Bad Request",
                    message: legalEntity.message()
                };
                common:HTTPErrorBadRequest errorResponse = {
                    body: httpError
                };
                return errorResponse;
            }

            return legalEntity;
        } on fail error err {
            io:println(err.message());
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

    # InCR Register a new legal entity in the catalog
    #
    # + return - returns can be any of following types 
    # http:Ok (LegalEntityDirectoryEntry)
    # http:BadRequest (BadRequest)
    # http:Unauthorized (Unauthorized)
    # http:Forbidden (Forbidden)
    # http:NotFound (NotFound)
    # http:TooManyRequests (TooManyRequests)
    # http:InternalServerError (InternalServerError)
    resource function post LegalEntityDirectory/Register(@http:Payload customers:LegalEntityDirectoryEntry payload) returns customers:LegalEntityDirectoryEntryOk|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        return <customers:LegalEntityDirectoryEntryOk> {body: {}};
    }

    # UpBQ Update details about an association entry for the legal entity
    #
    # + return - returns can be any of following types 
    # http:Ok (Associations)
    # http:BadRequest (BadRequest)
    # http:Unauthorized (Unauthorized)
    # http:Forbidden (Forbidden)
    # http:NotFound (NotFound)
    # http:TooManyRequests (TooManyRequests)
    # http:InternalServerError (InternalServerError)
    resource function put LegalEntityDirectory/[string legalentitydirectoryid]/Associations/[string associationsid]/Update(@http:Payload common:Associations payload) returns common:Associations|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        return <common:Associations> {};
    }

    # CoCR Control the handling of an entity entry (e.g. terminate)
    #
    # + return - returns can be any of following types 
    # http:Ok (LegalEntityDirectoryEntry)
    # http:BadRequest (BadRequest)
    # http:Unauthorized (Unauthorized)
    # http:Forbidden (Forbidden)
    # http:NotFound (NotFound)
    # http:TooManyRequests (TooManyRequests)
    # http:InternalServerError (InternalServerError)
    resource function put LegalEntityDirectory/[string legalentitydirectoryid]/Control(@http:Payload customers:LegalEntityDirectoryEntry payload) returns customers:LegalEntityDirectoryEntry|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        return <customers:LegalEntityDirectoryEntry> {};
    }

    # EcCR Accept, verify, reject etc. details of a legal entity directory entry
    #
    # + return - returns can be any of following types 
    # http:Ok (LegalEntityDirectoryEntry)
    # http:BadRequest (BadRequest)
    # http:Unauthorized (Unauthorized)
    # http:Forbidden (Forbidden)
    # http:NotFound (NotFound)
    # http:TooManyRequests (TooManyRequests)
    # http:InternalServerError (InternalServerError)
    resource function put LegalEntityDirectory/[string legalentitydirectoryid]/Exchange(@http:Payload customers:LegalEntityDirectoryEntry payload) returns customers:LegalEntityDirectoryEntry|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        return <customers:LegalEntityDirectoryEntry> {};
    }

    # ExCR Execute an automated action against an entry
    #
    # + return - returns can be any of following types 
    # http:Ok (LegalEntityDirectoryEntry)
    # http:BadRequest (BadRequest)
    # http:Unauthorized (Unauthorized)
    # http:Forbidden (Forbidden)
    # http:NotFound (NotFound)
    # http:TooManyRequests (TooManyRequests)
    # http:InternalServerError (InternalServerError)
    resource function put LegalEntityDirectory/[string legalentitydirectoryid]/Execute(@http:Payload customers:LegalEntityDirectoryEntry payload) returns customers:LegalEntityDirectoryEntry|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        return <customers:LegalEntityDirectoryEntry> {};
    }

    # UpBQ Update details about a profile entry for the legal entity
    #
    # + return - returns can be any of following types 
    # http:Ok (Profile)
    # http:BadRequest (BadRequest)
    # http:Unauthorized (Unauthorized)
    # http:Forbidden (Forbidden)
    # http:NotFound (NotFound)
    # http:TooManyRequests (TooManyRequests)
    # http:InternalServerError (InternalServerError)
    resource function put LegalEntityDirectory/[string legalentitydirectoryid]/Profile/[string profileid]/Update(@http:Payload common:Profile payload) returns common:Profile|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        return <common:Profile> {};
    }

    # UpBQ Update details about a reference entry for the legal entity
    #
    # + return - returns can be any of following types 
    # http:Ok (Reference)
    # http:BadRequest (BadRequest)
    # http:Unauthorized (Unauthorized)
    # http:Forbidden (Forbidden)
    # http:NotFound (NotFound)
    # http:TooManyRequests (TooManyRequests)
    # http:InternalServerError (InternalServerError)
    resource function put LegalEntityDirectory/[string legalentitydirectoryid]/Reference/[string referenceid]/Update(@http:Payload common:Reference payload) returns common:Reference|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        return <common:Reference> {};
    }

    # RqCR Request manual intervention with an entry (e.g. refresh content)
    #
    # + return - returns can be any of following types 
    # http:Ok (LegalEntityDirectoryEntry)
    # http:BadRequest (BadRequest)
    # http:Unauthorized (Unauthorized)
    # http:Forbidden (Forbidden)
    # http:NotFound (NotFound)
    # http:TooManyRequests (TooManyRequests)
    # http:InternalServerError (InternalServerError)
    resource function put LegalEntityDirectory/[string legalentitydirectoryid]/Request(@http:Payload customers:LegalEntityDirectoryEntry payload) returns customers:LegalEntityDirectoryEntry|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        return <customers:LegalEntityDirectoryEntry> {};
    }

    # UpCR Update details about the legal entity directory entry
    #
    # + return - returns can be any of following types 
    # http:Ok (LegalEntityDirectoryEntry)
    # http:BadRequest (BadRequest)
    # http:Unauthorized (Unauthorized)
    # http:Forbidden (Forbidden)
    # http:NotFound (NotFound)
    # http:TooManyRequests (TooManyRequests)
    # http:InternalServerError (InternalServerError)
    resource function put LegalEntityDirectory/[string legalentitydirectoryid]/Update(@http:Payload customers:LegalEntityDirectoryEntry payload) returns customers:LegalEntityDirectoryEntry|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        return <customers:LegalEntityDirectoryEntry> {};
    }
};
