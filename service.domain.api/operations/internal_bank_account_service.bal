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

http:Service internalBankAccountService =  service object {

    # Notify Internal Bank Account Facility
    #
    # + return - returns can be any of following types 
    # http:Ok (InternalBankAccountFacility)
    # http:BadRequest (BadRequest)
    # http:Unauthorized (Unauthorized)
    # http:Forbidden (Forbidden)
    # http:NotFound (NotFound)
    # http:TooManyRequests (TooManyRequests)
    # http:InternalServerError (InternalServerError)
    isolated resource function get InternalBankAccount/[string internalbankaccountid]/Notify() returns operations:InternalBankAccountFacility|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        return <operations:InternalBankAccountFacility>{};
    }

    # Retrieve Internal Bank Account Facility
    #
    # + return - returns can be any of following types 
    # http:Ok (InternalBankAccountFacility)
    # http:BadRequest (BadRequest)
    # http:Unauthorized (Unauthorized)
    # http:Forbidden (Forbidden)
    # http:NotFound (NotFound)
    # http:TooManyRequests (TooManyRequests)
    # http:InternalServerError (InternalServerError)
    isolated resource function get InternalBankAccount/[string internalbankaccountid]/Retrieve() returns operations:InternalBankAccountFacility|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        return <operations:InternalBankAccountFacility>{};
    }

    # Initiate Internal Bank Account Facility
    #
    # + return - returns can be any of following types 
    # http:Ok (InternalBankAccountFacility)
    # http:BadRequest (BadRequest)
    # http:Unauthorized (Unauthorized)
    # http:Forbidden (Forbidden)
    # http:NotFound (NotFound)
    # http:TooManyRequests (TooManyRequests)
    # http:InternalServerError (InternalServerError)
    isolated resource function post InternalBankAccount/Initiate(@http:Payload operations:InternalBankAccountFacility payload) returns operations:InternalBankAccountFacilityOk|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        return <operations:InternalBankAccountFacilityOk>{body: {}};
    }

    # Execute Authorization of Booking
    #
    # + return - returns can be any of following types 
    # http:Ok (BookingAuthorization)
    # http:BadRequest (BadRequest)
    # http:Unauthorized (Unauthorized)
    # http:Forbidden (Forbidden)
    # http:NotFound (NotFound)
    # http:TooManyRequests (TooManyRequests)
    # http:InternalServerError (InternalServerError)
    // isolated resource function put InternalBankAccount/[string internalbankaccountid]/BookingAuthorization/[string bookingauthorizationid]/Execute(@http:Payload operations:BookingAuthorization payload) returns operations:BookingAuthorization|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
    //     do {
    //         json|http:ClientError responseFromServer;
    //         lock {
	//             // Invoking the configured backend service
    //             // TODO: Update the endpoint URL as per the actual backend API contract
	//             responseFromServer = externalClient->get("/InternalBankAccount/" + internalbankaccountid + "/BookingAuthorization/" + bookingauthorizationid + "/Execute");
    //         }
    //         io:println("-----------------------------------------------------------------------------------------------");
    //         io:println("Received response from backends API: InternalBankAccount/[string internalbankaccountid]/BookingAuthorization/[string bookingauthorizationid]/Execute");
    //         io:println("{\n" +
    //             "   AccountReference:{...},\n" +
    //             "   TransactionPriorityNumber:\"string\",\n" +
    //             "   BookingDate:{...},\n" +
    //             "   AuthorizationResult:{...},\n" +
    //             "   AuthorizationRejectionReason:{...},\n" +
    //             "   ValueDate:{...},\n" +
    //             "   PositionKeepingReference:{...},\n" +
    //             "   BookingAmount:{...}\n" +
    //             "}");  
    //         io:println("-----------------------------------------------------------------------------------------------");
    //         io:println(" ");
        
    //         if (responseFromServer is http:ClientError) {
    //             io:println("Error response received from backend for API:", responseFromServer);
    //             common:HTTPErrorInternalServerError httpError = {
    //                 body: {
    //                     status_code: "500",
    //                     status: "Internal Server Error",
    //                     message: "An error occurred while processing the request."
    //                 }
    //             };
    //             return httpError;
    //         }
    //         // Transform the response from backend to match the defined return type.
    //         // TODO: Implement the custom transformation logic in the data mapper module            
    //         // This is a sample mapping function. The transformation logic will depend on the actual response structure from the backend API and 
    //         // the defined BIAN data model
    //         operations:BookingAuthorization transformedResponse = check transformAuthorizationBookingResponse(responseFromServer);
    //         return transformedResponse;
    //     } on fail error err {
    //         io:println("Error occurred:", err.message());
    //         common:HTTPErrorInternalServerError httpError = {
    //             body: {
    //                 status_code: "500",
    //                 status: "Internal Server Error",
    //                 message: err.message()
    //             }
    //         };
    //         return httpError;
    //     }
    // }

    # Capture Internal Bank Account Facility
    #
    # + return - returns can be any of following types 
    # http:Ok (InternalBankAccountFacility)
    # http:BadRequest (BadRequest)
    # http:Unauthorized (Unauthorized)
    # http:Forbidden (Forbidden)
    # http:NotFound (NotFound)
    # http:TooManyRequests (TooManyRequests)
    # http:InternalServerError (InternalServerError)
    isolated resource function put InternalBankAccount/[string internalbankaccountid]/Capture(@http:Payload operations:InternalBankAccountFacility payload) returns operations:InternalBankAccountFacility|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        return <operations:InternalBankAccountFacility>{};
    }

    # Control Internal Bank Account Facility
    #
    # + return - returns can be any of following types 
    # http:Ok (InternalBankAccountFacility)
    # http:BadRequest (BadRequest)
    # http:Unauthorized (Unauthorized)
    # http:Forbidden (Forbidden)
    # http:NotFound (NotFound)
    # http:TooManyRequests (TooManyRequests)
    # http:InternalServerError (InternalServerError)
    isolated resource function put InternalBankAccount/[string internalbankaccountid]/Control(@http:Payload operations:InternalBankAccountFacility payload) returns operations:InternalBankAccountFacility|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        return <operations:InternalBankAccountFacility>{};
    }

    # Update Internal Bank Account Facility
    #
    # + return - returns can be any of following types 
    # http:Ok (InternalBankAccountFacility)
    # http:BadRequest (BadRequest)
    # http:Unauthorized (Unauthorized)
    # http:Forbidden (Forbidden)
    # http:NotFound (NotFound)
    # http:TooManyRequests (TooManyRequests)
    # http:InternalServerError (InternalServerError)
    isolated resource function put InternalBankAccount/[string internalbankaccountid]/Update(@http:Payload operations:InternalBankAccountFacility payload) returns operations:InternalBankAccountFacility|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        return <operations:InternalBankAccountFacility>{};
    }
};
