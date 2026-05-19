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

configurable string partyReferenceDataDirectoryAssociationsRetrieveUrl = ?;
configurable string partyReferenceDataDirectoryUrl = ?;

http:Service partyReferenceDataDirectoryService =  service object {

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
    isolated resource function get PartyReferenceDataDirectory/[string partyreferencedatadirectoryid]/Associations/[string associationsid]/Retrieve() returns common:Associations|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        
        do {
            json|http:ClientError responseFromServer;
            lock {
	            responseFromServer = check externalClient->get(partyReferenceDataDirectoryAssociationsRetrieveUrl);
            }
            io:println("-----------------------------------------------------------------------------------------------");
            io:println("Received response from backends API: PartyReferenceDataDirectory/" + partyreferencedatadirectoryid + "/Associations/" + associationsid + "/Retrieve");
            io:println("{\n"+
                "   EmployeeReference: {...},\n"+
                "   AssociateReference: {...},\n"+
                "   AssociateType: \"PartyIsParentOfParty\",\n"+
                "   AssociateObligationorDependencyDescription: {...},\n"+
                "   AssociationValidFromToDate: {...},\n"+
                "   ProductInstanceReference: {...},\n"+
                "   PreferredBeneficiary: {...},\n"+
                "   ProxyRepresentativePowerofAttorneyReference: {...},\n"+
                "   ProductInstanseInvolvementReference: {...}\n"+
            "}");
            io:println("-----------------------------------------------------------------------------------------------");
            io:println(" ");

            // io:println("Error response received from backend:", responseFromServer);
        
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
            // Transform the response from backend to match the defined return type
            // TODO: Implement the custom transformation logic in the data mapper module
            common:Associations|error associations = transformPartyReferenceDataDirectoryAssociationResponse(responseFromServer);
            // Handle transformation errors
            if (associations is error) {
                io:println("Error response received from backend:", associations);
                common:HTTPError httpError = {
                    status_code: "400",
                    status: "Bad Request",
                    message: "An error occurred while processing the request."
                };
                common:HTTPErrorBadRequest errorResponse = {
                    body: httpError
                };
                return errorResponse;
            }

            //  Return the transformed response
            return associations;
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

    # ReBQ Retrieve details about customer bank relations entries in the directory
    #
    # + return - returns can be any of following types 
    # http:Ok (BankRelations)
    # http:BadRequest (BadRequest)
    # http:Unauthorized (Unauthorized)
    # http:Forbidden (Forbidden)
    # http:NotFound (NotFound)
    # http:TooManyRequests (TooManyRequests)
    # http:InternalServerError (InternalServerError)
    isolated resource function get PartyReferenceDataDirectory/[string partyreferencedatadirectoryid]/BankRelations/[string bankrelationsid]/Retrieve() returns customers:BankRelations|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        return <customers:BankRelations>{};
    }

    # ReBQ Retrieve details about customer demographics entries in the directory
    #
    # + return - returns can be any of following types 
    # http:Ok (Demographics)
    # http:BadRequest (BadRequest)
    # http:Unauthorized (Unauthorized)
    # http:Forbidden (Forbidden)
    # http:NotFound (NotFound)
    # http:TooManyRequests (TooManyRequests)
    # http:InternalServerError (InternalServerError)
    isolated resource function get PartyReferenceDataDirectory/[string partyreferencedatadirectoryid]/Demographics/[string demographicsid]/Retrieve() returns customers:Demographics|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        return <customers:Demographics>{};
    }

    # ReBQ Retrieve details about reference entries in the directory
    #
    # + return - returns can be any of following types 
    # http:Ok (Reference)
    # http:BadRequest (BadRequest)
    # http:Unauthorized (Unauthorized)
    # http:Forbidden (Forbidden)
    # http:NotFound (NotFound)
    # http:TooManyRequests (TooManyRequests)
    # http:InternalServerError (InternalServerError)
    isolated resource function get PartyReferenceDataDirectory/[string partyreferencedatadirectoryid]/Reference/[string referenceid]/Retrieve() returns common:Reference|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        return <common:Reference>{};
    }

    # ReCR Retrieve details about a customer directory entry
    #
    # + return - returns can be any of following types 
    # http:Ok (PartyReferenceDataDirectoryEntry)
    # http:BadRequest (BadRequest)
    # http:Unauthorized (Unauthorized)
    # http:Forbidden (Forbidden)
    # http:NotFound (NotFound)
    # http:TooManyRequests (TooManyRequests)
    # http:InternalServerError (InternalServerError)
    isolated resource function get PartyReferenceDataDirectory/[string partyreferencedatadirectoryid]/Retrieve() returns customers:PartyReferenceDataDirectoryEntry|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        
        do {
            json|http:ClientError responseFromServer;
            lock {
	            responseFromServer = check externalClient->get(partyReferenceDataDirectoryUrl + "/" + partyreferencedatadirectoryid + "/Retrieve");
            }
            io:println("-----------------------------------------------------------------------------------------------");
            io:println("Received response from backends API: PartyReferenceDataDirectory/" + partyreferencedatadirectoryid + "/Retrieve");
             io:println("{\n"+
                "   EmployeeReference: {...},\n"+
                "   AssociateReference: {...},\n"+
                "   AssociateType: \"PartyIsParentOfParty\",\n"+
                "   AssociateObligationorDependencyDescription: {...},\n"+
                "   AssociationValidFromToDate: {...},\n"+
                "   ProductInstanceReference: {...},\n"+
                "   PreferredBeneficiary: {...},\n"+
                "   ProxyRepresentativePowerofAttorneyReference: {...},\n"+
                "   ProductInstanseInvolvementReference: {...}\n"+
            "}");
            io:println("-----------------------------------------------------------------------------------------------");
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
            // Transform the response from backend to match the defined return type
            // TODO: Implement the custom transformation logic in the data mapper module
            customers:PartyReferenceDataDirectoryEntry|error partyReference = transformPartyReferenceDataDirectoryRetrievalResponse(responseFromServer);
            // Handle transformation errors
            if (partyReference is error) {
                io:println("Error response received from backend:", partyReference);
                common:HTTPError httpError = {
                    status_code: "400",
                    status: "Bad Request",
                    message: partyReference.message() // Include the error message from the transformation function for better debugging
                };
                common:HTTPErrorBadRequest errorResponse = {
                    body: httpError
                };
                return errorResponse;
            }

            //  Return the transformed response
            return partyReference;
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

    # InCR Register a customer entity in the catalog
    #
    # + return - returns can be any of following types 
    # http:Ok (PartyReferenceDataDirectoryEntry)
    # http:BadRequest (BadRequest)
    # http:Unauthorized (Unauthorized)
    # http:Forbidden (Forbidden)
    # http:NotFound (NotFound)
    # http:TooManyRequests (TooManyRequests)
    # http:InternalServerError (InternalServerError)
    isolated resource function post PartyReferenceDataDirectory/Register(@http:Payload customers:PartyReferenceDataDirectoryEntry payload) returns customers:PartyReferenceDataDirectoryEntryOk|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        return <customers:PartyReferenceDataDirectoryEntryOk>{body:{}};
    }

    # Capture Association Details
    #
    # + return - returns can be any of following types 
    # http:Ok (Associations)
    # http:BadRequest (BadRequest)
    # http:Unauthorized (Unauthorized)
    # http:Forbidden (Forbidden)
    # http:NotFound (NotFound)
    # http:TooManyRequests (TooManyRequests)
    # http:InternalServerError (InternalServerError)
    isolated resource function post PartyReferenceDataDirectory/[string partyreferencedatadirectoryid]/Associations/Register(@http:Payload common:Associations payload) returns customers:AssociationsOk|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        return <customers:AssociationsOk>{body:{}};
    }

    # UpBQ Update details about an association entry for the customer
    #
    # + return - returns can be any of following types 
    # http:Ok (Associations)
    # http:BadRequest (BadRequest)
    # http:Unauthorized (Unauthorized)
    # http:Forbidden (Forbidden)
    # http:NotFound (NotFound)
    # http:TooManyRequests (TooManyRequests)
    # http:InternalServerError (InternalServerError)
    isolated resource function put PartyReferenceDataDirectory/[string partyreferencedatadirectoryid]/Associations/[string associationsid]/Update(@http:Payload common:Associations payload) returns common:Associations|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        return <common:Associations>{};
    }

    # UpBQ Update details about a customer's bank relations entry for the customer
    #
    # + return - returns can be any of following types 
    # http:Ok (BankRelations)
    # http:BadRequest (BadRequest)
    # http:Unauthorized (Unauthorized)
    # http:Forbidden (Forbidden)
    # http:NotFound (NotFound)
    # http:TooManyRequests (TooManyRequests)
    # http:InternalServerError (InternalServerError)
    isolated resource function put PartyReferenceDataDirectory/[string partyreferencedatadirectoryid]/BankRelations/[string bankrelationsid]/Update(@http:Payload customers:BankRelations payload) returns customers:BankRelations|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        return <customers:BankRelations>{};
    }

    # CoCR Control the handling of a customer entry (e.g. terminate)
    #
    # + return - returns can be any of following types 
    # http:Ok (PartyReferenceDataDirectoryEntry)
    # http:BadRequest (BadRequest)
    # http:Unauthorized (Unauthorized)
    # http:Forbidden (Forbidden)
    # http:NotFound (NotFound)
    # http:TooManyRequests (TooManyRequests)
    # http:InternalServerError (InternalServerError)
    isolated resource function put PartyReferenceDataDirectory/[string partyreferencedatadirectoryid]/Control(@http:Payload customers:PartyReferenceDataDirectoryEntry payload) returns customers:PartyReferenceDataDirectoryEntry|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        return <customers:PartyReferenceDataDirectoryEntry>{};
    }

    # EcBQ Accept, verify, reject etc. details of a customer directory entry
    #
    # + return - returns can be any of following types 
    # http:Ok (Demographics)
    # http:BadRequest (BadRequest)
    # http:Unauthorized (Unauthorized)
    # http:Forbidden (Forbidden)
    # http:NotFound (NotFound)
    # http:TooManyRequests (TooManyRequests)
    # http:InternalServerError (InternalServerError)
    isolated resource function put PartyReferenceDataDirectory/[string partyreferencedatadirectoryid]/Demographics/[string demographicsid]/Exchange(@http:Payload customers:Demographics payload) returns customers:Demographics|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        return <customers:Demographics>{};
    }

    # UpBQ Update details about a customer's demographic entry
    #
    # + return - returns can be any of following types 
    # http:Ok (Demographics)
    # http:BadRequest (BadRequest)
    # http:Unauthorized (Unauthorized)
    # http:Forbidden (Forbidden)
    # http:NotFound (NotFound)
    # http:TooManyRequests (TooManyRequests)
    # http:InternalServerError (InternalServerError)
    isolated resource function put PartyReferenceDataDirectory/[string partyreferencedatadirectoryid]/Demographics/[string demographicsid]/Update(@http:Payload customers:Demographics payload) returns customers:Demographics|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        return <customers:Demographics>{};
    }

    # EcCR Accept, verify, reject a directory entry
    #
    # + return - returns can be any of following types 
    # http:Ok (PartyReferenceDataDirectoryEntry)
    # http:BadRequest (BadRequest)
    # http:Unauthorized (Unauthorized)
    # http:Forbidden (Forbidden)
    # http:NotFound (NotFound)
    # http:TooManyRequests (TooManyRequests)
    # http:InternalServerError (InternalServerError)
    isolated resource function put PartyReferenceDataDirectory/[string partyreferencedatadirectoryid]/Exchange(@http:Payload customers:PartyReferenceDataDirectoryEntry payload) returns customers:PartyReferenceDataDirectoryEntry|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        return <customers:PartyReferenceDataDirectoryEntry>{};
    }

    # ExCR Execute an automated action against an entry
    #
    # + return - returns can be any of following types 
    # http:Ok (PartyReferenceDataDirectoryEntry)
    # http:BadRequest (BadRequest)
    # http:Unauthorized (Unauthorized)
    # http:Forbidden (Forbidden)
    # http:NotFound (NotFound)
    # http:TooManyRequests (TooManyRequests)
    # http:InternalServerError (InternalServerError)
    isolated resource function put PartyReferenceDataDirectory/[string partyreferencedatadirectoryid]/Execute(@http:Payload customers:PartyReferenceDataDirectoryEntry payload) returns customers:PartyReferenceDataDirectoryEntry|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        return <customers:PartyReferenceDataDirectoryEntry>{};
    }

    # UpBQ Update details about a reference entry for the customer
    #
    # + return - returns can be any of following types 
    # http:Ok (Reference)
    # http:BadRequest (BadRequest)
    # http:Unauthorized (Unauthorized)
    # http:Forbidden (Forbidden)
    # http:NotFound (NotFound)
    # http:TooManyRequests (TooManyRequests)
    # http:InternalServerError (InternalServerError)
    isolated resource function put PartyReferenceDataDirectory/[string partyreferencedatadirectoryid]/Reference/[string referenceid]/Update(@http:Payload common:Reference payload) returns common:Reference|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        return <common:Reference>{};
    }

    # RqCR Request manual intervention with an entry (e.g. refresh content)
    #
    # + return - returns can be any of following types 
    # http:Ok (PartyReferenceDataDirectoryEntry)
    # http:BadRequest (BadRequest)
    # http:Unauthorized (Unauthorized)
    # http:Forbidden (Forbidden)
    # http:NotFound (NotFound)
    # http:TooManyRequests (TooManyRequests)
    # http:InternalServerError (InternalServerError)
    isolated resource function put PartyReferenceDataDirectory/[string partyreferencedatadirectoryid]/Request(@http:Payload customers:PartyReferenceDataDirectoryEntry payload) returns customers:PartyReferenceDataDirectoryEntry|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        return <customers:PartyReferenceDataDirectoryEntry>{};
    }

    # UpCR Update details about the customer's directory entry
    #
    # + return - returns can be any of following types 
    # http:Ok (PartyReferenceDataDirectoryEntry)
    # http:BadRequest (BadRequest)
    # http:Unauthorized (Unauthorized)
    # http:Forbidden (Forbidden)
    # http:NotFound (NotFound)
    # http:TooManyRequests (TooManyRequests)
    # http:InternalServerError (InternalServerError)
    isolated resource function put PartyReferenceDataDirectory/[string partyreferencedatadirectoryid]/Update(@http:Payload customers:PartyReferenceDataDirectoryEntry payload) returns customers:PartyReferenceDataDirectoryEntry|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        return <customers:PartyReferenceDataDirectoryEntry>{};
    }
};
