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

import ballerinax/financial.bian.attribute.groups.channels as channels;
import ballerinax/financial.bian.attribute.groups.common as common;
import ballerina/http;
import ballerina/io;

configurable string correspondenceOutboundInitiateUrl = ?;
configurable string correspondenceOutboundWithResponseInitiateUrl = ?;

http:Service correspondenceService =  service object {

    # ReBQ Retrieve details about an outbound correspondence block
    #
    # + return - returns can be any of following types 
    # http:Ok (BlockMailing)
    # http:BadRequest (BadRequest)
    # http:Unauthorized (Unauthorized)
    # http:Forbidden (Forbidden)
    # http:NotFound (NotFound)
    # http:TooManyRequests (TooManyRequests)
    # http:InternalServerError (InternalServerError)
    isolated resource function get Correspondence/[string correspondenceid]/BlockMailing/[string blockmailingid]/Retrieve() returns channels:BlockMailing|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        return <channels:BlockMailing>{};
    }

    # ReBQ Retrieve details about an inbound correspondence item
    #
    # + return - returns can be any of following types 
    # http:Ok (Inbound)
    # http:BadRequest (BadRequest)
    # http:Unauthorized (Unauthorized)
    # http:Forbidden (Forbidden)
    # http:NotFound (NotFound)
    # http:TooManyRequests (TooManyRequests)
    # http:InternalServerError (InternalServerError)
    isolated resource function get Correspondence/[string correspondenceid]/Inbound/[string inboundid]/Retrieve() returns common:Inbound|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        return <common:Inbound>{};
    }

    # ReBQ Retrieve details about an outbound correspondence item
    #
    # + return - returns can be any of following types 
    # http:Ok (Outbound)
    # http:BadRequest (BadRequest)
    # http:Unauthorized (Unauthorized)
    # http:Forbidden (Forbidden)
    # http:NotFound (NotFound)
    # http:TooManyRequests (TooManyRequests)
    # http:InternalServerError (InternalServerError)
    isolated resource function get Correspondence/[string correspondenceid]/Outbound/[string outboundid]/Retrieve() returns common:Outbound|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        return <common:Outbound>{};
    }

    # ReBQ Retrieve details about an outbound correspondence with tracked response
    #
    # + return - returns can be any of following types 
    # http:Ok (OutboundWithResponse)
    # http:BadRequest (BadRequest)
    # http:Unauthorized (Unauthorized)
    # http:Forbidden (Forbidden)
    # http:NotFound (NotFound)
    # http:TooManyRequests (TooManyRequests)
    # http:InternalServerError (InternalServerError)
    isolated resource function get Correspondence/[string correspondenceid]/OutboundWithResponse/[string outboundwithresponseid]/Retrieve() returns channels:OutboundWithResponse|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        return <channels:OutboundWithResponse>{};
    }

    # ReCR Retrieve details about the correspondence session
    #
    # + return - returns can be any of following types 
    # http:Ok (CorrespondenceOperatingSession)
    # http:BadRequest (BadRequest)
    # http:Unauthorized (Unauthorized)
    # http:Forbidden (Forbidden)
    # http:NotFound (NotFound)
    # http:TooManyRequests (TooManyRequests)
    # http:InternalServerError (InternalServerError)
    isolated resource function get Correspondence/[string correspondenceid]/Retrieve() returns channels:CorrespondenceOperatingSession|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        return <channels:CorrespondenceOperatingSession>{};
    }

    # InCR Initiate the correspondence operational facility
    #
    # + return - returns can be any of following types 
    # http:Ok (CorrespondenceOperatingSession)
    # http:BadRequest (BadRequest)
    # http:Unauthorized (Unauthorized)
    # http:Forbidden (Forbidden)
    # http:NotFound (NotFound)
    # http:TooManyRequests (TooManyRequests)
    # http:InternalServerError (InternalServerError)
    isolated resource function post Correspondence/Initiate(@http:Payload channels:CorrespondenceOperatingSession payload) returns channels:CorrespondenceOperatingSessionOk|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        return <channels:CorrespondenceOperatingSessionOk>{body:{}};
    }

    # InBQ Initiate processing an outbound correspondence block
    #
    # + return - returns can be any of following types 
    # http:Ok (BlockMailing)
    # http:BadRequest (BadRequest)
    # http:Unauthorized (Unauthorized)
    # http:Forbidden (Forbidden)
    # http:NotFound (NotFound)
    # http:TooManyRequests (TooManyRequests)
    # http:InternalServerError (InternalServerError)
    isolated resource function post Correspondence/[string correspondenceid]/BlockMailing/Initiate(@http:Payload channels:BlockMailing payload) returns channels:BlockMailingOk|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        return <channels:BlockMailingOk>{body:{}};
    }

    # InBQ Initiate processing of an inbound correspondence item
    #
    # + return - returns can be any of following types 
    # http:Ok (Inbound)
    # http:BadRequest (BadRequest)
    # http:Unauthorized (Unauthorized)
    # http:Forbidden (Forbidden)
    # http:NotFound (NotFound)
    # http:TooManyRequests (TooManyRequests)
    # http:InternalServerError (InternalServerError)
    isolated resource function post Correspondence/[string correspondenceid]/Inbound/Initiate(@http:Payload common:Inbound payload) returns common:InboundOk|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        return <common:InboundOk>{body:{}};
    }

    # InBQ Initiate processing an outbound correspondence item
    #
    # + return - returns can be any of following types 
    # http:Ok (Outbound)
    # http:BadRequest (BadRequest)
    # http:Unauthorized (Unauthorized)
    # http:Forbidden (Forbidden)
    # http:NotFound (NotFound)
    # http:TooManyRequests (TooManyRequests)
    # http:InternalServerError (InternalServerError)
    isolated resource function post Correspondence/[string correspondenceid]/Outbound/Initiate(@http:Payload common:Outbound payload) returns common:OutboundOk|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        
        do {
            json|http:ClientError responseFromServer;
            lock {
	            responseFromServer = check externalClient->get(correspondenceOutboundInitiateUrl);
            }
            io:println("-----------------------------------------------------------------------------------------------");
            io:println("Received response from backends API: Correspondence/Outbound/Initiate");
            io:println("{\n"+
                "   CorrespondenceSourceReference: \"Ref124\",\n"+
                "   CorrespondenceRecord: {...},\n"+
                "   CorrespondenceType: \"UnsolicitedMessage\",\n"+
                "   CorrespondenceTemplateReference: \"Ref234\",\n"+
                "   CorrespondenceTemplateRecord: \"Rec124\",\n"+
                "   CorrespondenceContent: {...},\n"+
                "   CorrespondenceMediaorChannel: {...},\n"+
                "   CorrespondenceAddressee: {...},\n"+
                "   CustomerReference: {...},\n"+
                "   ChannelAccessPreferenceReference: {...},\n"+
                "   ChannelAccessPreferenceProfile: {...},\n"+
                "   ChannelAccessChannelorDeviceType: \"Securecardreader\",\n"+
                "   ChannelAccessChannelorDeviceTypePreference: {...},\n"+
                "   ProductandServiceType: {...},\n"+
                "   EmployeeorBusinessUnitReference: {...},\n"+
                "   DateType: \"MaturityDate\",\n"+
                "   Date: {...}\n"+
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
            // the defined BIAN data model for product_management:Operations.
            common:Outbound|error outbound = transfromCorrespondenceOutboundInitiateResponse(responseFromServer);
            // Checking for errors in the transformation process
            if (outbound is error) {
                io:println("Error response received from backend:", outbound);
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

            // Setting the transformed response as the body of the outbound response
            return <common:OutboundOk>{ body: outbound };
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

    # InBQ Initiate processing outbound correspondence with tracked response
    #
    # + return - returns can be any of following types 
    # http:Ok (OutboundWithResponse)
    # http:BadRequest (BadRequest)
    # http:Unauthorized (Unauthorized)
    # http:Forbidden (Forbidden)
    # http:NotFound (NotFound)
    # http:TooManyRequests (TooManyRequests)
    # http:InternalServerError (InternalServerError)
    isolated resource function post Correspondence/[string correspondenceid]/OutboundWithResponse/Initiate(@http:Payload channels:OutboundWithResponse payload) returns channels:OutboundWithResponseOk|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        
        do {
            json|http:ClientError responseFromServer;
            lock {
	            responseFromServer = check externalClient->get(correspondenceOutboundWithResponseInitiateUrl);
            }
            io:println("-----------------------------------------------------------------------------------------------");
            io:println("Received response from backends API: Correspondence/" + correspondenceid + "/OutboundWithResponse/Initiate");
            io:println("{\n"+
                " \"ResponseDueDate\": {},\n"+
                " \"ResponseCorrespondenceReference\": {},\n"+
                " \"ResponseCorrespondenceRecord\": {}\n"+
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
            // the defined BIAN data model for product_management:Operations.
            channels:OutboundWithResponse|error outboundResponse = transfromCorrespondenceOutboundWithResponse(responseFromServer);
            // Checking for errors in the transformation process
            if (outboundResponse is error) {
                io:println("Error response received from backend:", outboundResponse);
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

            // Setting the transformed response as the body of the outbound response
            return <channels:OutboundWithResponseOk>{ body: outboundResponse };
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

    # UpBQ Update details of an outbound correspondence block
    #
    # + return - returns can be any of following types 
    # http:Ok (BlockMailing)
    # http:BadRequest (BadRequest)
    # http:Unauthorized (Unauthorized)
    # http:Forbidden (Forbidden)
    # http:NotFound (NotFound)
    # http:TooManyRequests (TooManyRequests)
    # http:InternalServerError (InternalServerError)
    isolated resource function put Correspondence/[string correspondenceid]/BlockMailing/[string blockmailingid]/Update(@http:Payload channels:BlockMailing payload) returns channels:BlockMailing|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        return <channels:BlockMailing>{};
    }

    # CoCR Control the session (e.g. suspend incoming mail)
    #
    # + return - returns can be any of following types 
    # http:Ok (CorrespondenceOperatingSession)
    # http:BadRequest (BadRequest)
    # http:Unauthorized (Unauthorized)
    # http:Forbidden (Forbidden)
    # http:NotFound (NotFound)
    # http:TooManyRequests (TooManyRequests)
    # http:InternalServerError (InternalServerError)
    isolated resource function put Correspondence/[string correspondenceid]/Control(@http:Payload channels:CorrespondenceOperatingSession payload) returns channels:CorrespondenceOperatingSession|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        return <channels:CorrespondenceOperatingSession>{};
    }

    # ExCR Execute an automated task (e.g. statistical analysis)
    #
    # + return - returns can be any of following types 
    # http:Ok (CorrespondenceOperatingSession)
    # http:BadRequest (BadRequest)
    # http:Unauthorized (Unauthorized)
    # http:Forbidden (Forbidden)
    # http:NotFound (NotFound)
    # http:TooManyRequests (TooManyRequests)
    # http:InternalServerError (InternalServerError)
    isolated resource function put Correspondence/[string correspondenceid]/Execute(@http:Payload channels:CorrespondenceOperatingSession payload) returns channels:CorrespondenceOperatingSession|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        return <channels:CorrespondenceOperatingSession>{};
    }

    # UpBQ Update details of an inbound correspondence item
    #
    # + return - returns can be any of following types 
    # http:Ok (Inbound)
    # http:BadRequest (BadRequest)
    # http:Unauthorized (Unauthorized)
    # http:Forbidden (Forbidden)
    # http:NotFound (NotFound)
    # http:TooManyRequests (TooManyRequests)
    # http:InternalServerError (InternalServerError)
    isolated resource function put Correspondence/[string correspondenceid]/Inbound/[string inboundid]/Update(@http:Payload common:Inbound payload) returns common:Inbound|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        return <common:Inbound>{};
    }

    # UpBQ Update details of an outbound correspondence item
    #
    # + return - returns can be any of following types 
    # http:Ok (Outbound)
    # http:BadRequest (BadRequest)
    # http:Unauthorized (Unauthorized)
    # http:Forbidden (Forbidden)
    # http:NotFound (NotFound)
    # http:TooManyRequests (TooManyRequests)
    # http:InternalServerError (InternalServerError)
    isolated resource function put Correspondence/[string correspondenceid]/Outbound/[string outboundid]/Update(@http:Payload common:Outbound payload) returns common:Outbound|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        return <common:Outbound>{};
    }

    # UpBQ Update details of an outbound correspondence with tracked response
    #
    # + return - returns can be any of following types 
    # http:Ok (OutboundWithResponse)
    # http:BadRequest (BadRequest)
    # http:Unauthorized (Unauthorized)
    # http:Forbidden (Forbidden)
    # http:NotFound (NotFound)
    # http:TooManyRequests (TooManyRequests)
    # http:InternalServerError (InternalServerError)
    isolated resource function put Correspondence/[string correspondenceid]/OutboundWithResponse/[string outboundwithresponseid]/Update(@http:Payload channels:OutboundWithResponse payload) returns channels:OutboundWithResponse|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        return <channels:OutboundWithResponse>{};
    }

    # RqCR Request manual intervention (e.g. handle lost, wrongly addressed correspondence)
    #
    # + return - returns can be any of following types 
    # http:Ok (CorrespondenceOperatingSession)
    # http:BadRequest (BadRequest)
    # http:Unauthorized (Unauthorized)
    # http:Forbidden (Forbidden)
    # http:NotFound (NotFound)
    # http:TooManyRequests (TooManyRequests)
    # http:InternalServerError (InternalServerError)
    isolated resource function put Correspondence/[string correspondenceid]/Request(@http:Payload channels:CorrespondenceOperatingSession payload) returns channels:CorrespondenceOperatingSession|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        return <channels:CorrespondenceOperatingSession>{};
    }

    # UpCR Update settings and details of the operating session (e.g. change priorities)
    #
    # + return - returns can be any of following types 
    # http:Ok (CorrespondenceOperatingSession)
    # http:BadRequest (BadRequest)
    # http:Unauthorized (Unauthorized)
    # http:Forbidden (Forbidden)
    # http:NotFound (NotFound)
    # http:TooManyRequests (TooManyRequests)
    # http:InternalServerError (InternalServerError)
    isolated resource function put Correspondence/[string correspondenceid]/Update(@http:Payload channels:CorrespondenceOperatingSession payload) returns channels:CorrespondenceOperatingSession|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        return <channels:CorrespondenceOperatingSession>{};
    }
};
