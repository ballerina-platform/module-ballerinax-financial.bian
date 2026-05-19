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

configurable string financialGatewayOutboundInitiateUrl = ?;

http:Service financialGatewayService =  service object {

    # ReBQ Retrieve details about an inbound financial message
    #
    # + return - returns can be any of following types 
    # http:Ok (Inbound)
    # http:BadRequest (BadRequest)
    # http:Unauthorized (Unauthorized)
    # http:Forbidden (Forbidden)
    # http:NotFound (NotFound)
    # http:TooManyRequests (TooManyRequests)
    # http:InternalServerError (InternalServerError)
    isolated resource function get FinancialGateway/[string financialgatewayid]/Inbound/[string inboundid]/Retrieve() returns common:Inbound|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        return <common:Inbound>{};
    }

    # ReBQ Retrieve details about an outbound financial message
    #
    # + return - returns can be any of following types 
    # http:Ok (Outbound)
    # http:BadRequest (BadRequest)
    # http:Unauthorized (Unauthorized)
    # http:Forbidden (Forbidden)
    # http:NotFound (NotFound)
    # http:TooManyRequests (TooManyRequests)
    # http:InternalServerError (InternalServerError)
    isolated resource function get FinancialGateway/[string financialgatewayid]/Outbound/[string outboundid]/Retrieve() returns common:Outbound|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        return <common:Outbound>{};
    }

    # ReCR Retrieve details and statistics relating to a session
    #
    # + return - returns can be any of following types 
    # http:Ok (FinancialGatewayOperatingSession)
    # http:BadRequest (BadRequest)
    # http:Unauthorized (Unauthorized)
    # http:Forbidden (Forbidden)
    # http:NotFound (NotFound)
    # http:TooManyRequests (TooManyRequests)
    # http:InternalServerError (InternalServerError)
    isolated resource function get FinancialGateway/[string financialgatewayid]/Retrieve() returns channels:FinancialGatewayOperatingSession|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        return <channels:FinancialGatewayOperatingSession>{};
    }

    # InCR Initiate the financial gateway service session
    #
    # + return - returns can be any of following types 
    # http:Ok (FinancialGatewayOperatingSession)
    # http:BadRequest (BadRequest)
    # http:Unauthorized (Unauthorized)
    # http:Forbidden (Forbidden)
    # http:NotFound (NotFound)
    # http:TooManyRequests (TooManyRequests)
    # http:InternalServerError (InternalServerError)
    isolated resource function post FinancialGateway/Initiate(@http:Payload channels:FinancialGatewayOperatingSession payload) returns channels:FinancialGatewayOperatingSessionOk|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        return <channels:FinancialGatewayOperatingSessionOk>{body:{}};
    }

    # InBQ Initiate inbound financial message handling
    #
    # + return - returns can be any of following types 
    # http:Ok (Inbound)
    # http:BadRequest (BadRequest)
    # http:Unauthorized (Unauthorized)
    # http:Forbidden (Forbidden)
    # http:NotFound (NotFound)
    # http:TooManyRequests (TooManyRequests)
    # http:InternalServerError (InternalServerError)
    isolated resource function post FinancialGateway/[string financialgatewayid]/Inbound/Initiate(@http:Payload common:Inbound payload) returns common:InboundOk|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        return <common:InboundOk>{body:{}};
    }

    # InBQ Initiate outbound financial message handling
    #
    # + return - returns can be any of following types 
    # http:Ok (Outbound)
    # http:BadRequest (BadRequest)
    # http:Unauthorized (Unauthorized)
    # http:Forbidden (Forbidden)
    # http:NotFound (NotFound)
    # http:TooManyRequests (TooManyRequests)
    # http:InternalServerError (InternalServerError)
    isolated resource function post FinancialGateway/[string financialgatewayid]/Outbound/Initiate(@http:Payload common:Outbound payload) returns common:OutboundOk|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        do {
            json|http:ClientError responseFromServer;
            lock {
	            responseFromServer = externalClient->get(financialGatewayOutboundInitiateUrl + "/" + financialgatewayid + "/Outbound/Initiate");
            }
            io:println("-----------------------------------------------------------------------------------------------");
            io:println("Received response from backends API:", financialGatewayOutboundInitiateUrl + "/" + financialgatewayid + "/Outbound/Initiate");
            io:println("{\n" + 
                "   FinancialGatewayOutboundMessageType: \"FinancialMessage\",\n" + 
                "   FinancialGatewayOutboundMessageRecord: {...},\n" + 
                "   FinancialGatewayOutboundMessageSender: {...},\n" + 
                "   FinancialGatewayOutboundMessageReceiver: {...},\n" + 
                "   FinancialGatewayOutboundMessageStatus: {...}\n" + 
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
            // the defined BIAN data model for product_management:Operations.
            common:Outbound|error transformedPayload = check transformFinancialGatewayOutboundInitiateResponse(responseFromServer);
            // Checking for errors in the transformation process
            if (transformedPayload is error) {
                io:println("Error response received from backend:", transformedPayload);
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

            // Returning the transformed response
            return <common:OutboundOk>{ body: transformedPayload };
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

    # CoCR Control the service session
    #
    # + return - returns can be any of following types 
    # http:Ok (FinancialGatewayOperatingSession)
    # http:BadRequest (BadRequest)
    # http:Unauthorized (Unauthorized)
    # http:Forbidden (Forbidden)
    # http:NotFound (NotFound)
    # http:TooManyRequests (TooManyRequests)
    # http:InternalServerError (InternalServerError)
    isolated resource function put FinancialGateway/[string financialgatewayid]/Control(@http:Payload channels:FinancialGatewayOperatingSession payload) returns channels:FinancialGatewayOperatingSession|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        return <channels:FinancialGatewayOperatingSession>{};
    }

    # RqCR Report an issue with the production service
    #
    # + return - returns can be any of following types 
    # http:Ok (FinancialGatewayOperatingSession)
    # http:BadRequest (BadRequest)
    # http:Unauthorized (Unauthorized)
    # http:Forbidden (Forbidden)
    # http:NotFound (NotFound)
    # http:TooManyRequests (TooManyRequests)
    # http:InternalServerError (InternalServerError)
    isolated resource function put FinancialGateway/[string financialgatewayid]/Request(@http:Payload channels:FinancialGatewayOperatingSession payload) returns channels:FinancialGatewayOperatingSession|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        return <channels:FinancialGatewayOperatingSession>{};
    }

    # UpCR Update the gateway service details
    #
    # + return - returns can be any of following types 
    # http:Ok (FinancialGatewayOperatingSession)
    # http:BadRequest (BadRequest)
    # http:Unauthorized (Unauthorized)
    # http:Forbidden (Forbidden)
    # http:NotFound (NotFound)
    # http:TooManyRequests (TooManyRequests)
    # http:InternalServerError (InternalServerError)
    isolated resource function put FinancialGateway/[string financialgatewayid]/Update(@http:Payload channels:FinancialGatewayOperatingSession payload) returns channels:FinancialGatewayOperatingSession|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        return <channels:FinancialGatewayOperatingSession>{};
    }
};
