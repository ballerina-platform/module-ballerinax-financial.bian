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

configurable string customerCreditRatingInitiateUrl = ?;

http:Service customerCreditRatingService =  service object {

    # ReBQ Retrieve details about a credit alert
    #
    # + return - returns can be any of following types 
    # http:Ok (Alerts)
    # http:BadRequest (BadRequest)
    # http:Unauthorized (Unauthorized)
    # http:Forbidden (Forbidden)
    # http:NotFound (NotFound)
    # http:TooManyRequests (TooManyRequests)
    # http:InternalServerError (InternalServerError)
    resource function get CustomerCreditRating/[string customercreditratingid]/Alerts/[string alertsid]/Retrieve() returns customers:Alerts|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        return <customers:Alerts>{};
    }

    # ReBQ Retrieve details about external reporting to the credit monitoring activity
    #
    # + return - returns can be any of following types 
    # http:Ok (ExternalReporting)
    # http:BadRequest (BadRequest)
    # http:Unauthorized (Unauthorized)
    # http:Forbidden (Forbidden)
    # http:NotFound (NotFound)
    # http:TooManyRequests (TooManyRequests)
    # http:InternalServerError (InternalServerError)
    resource function get CustomerCreditRating/[string customercreditratingid]/ExternalReporting/[string externalreportingid]/Retrieve() returns customers:ExternalReporting|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        return <customers:ExternalReporting>{};
    }

    # ReBQ Retrieve details about internal reporting to the credit monitoring activity
    #
    # + return - returns can be any of following types 
    # http:Ok (InternalReporting)
    # http:BadRequest (BadRequest)
    # http:Unauthorized (Unauthorized)
    # http:Forbidden (Forbidden)
    # http:NotFound (NotFound)
    # http:TooManyRequests (TooManyRequests)
    # http:InternalServerError (InternalServerError)
    resource function get CustomerCreditRating/[string customercreditratingid]/InternalReporting/[string internalreportingid]/Retrieve() returns customers:InternalReporting|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        return <customers:InternalReporting>{};
    }

    # ReCR Retrieve details about credit state monitoring for a customer
    #
    # + return - returns can be any of following types 
    # http:Ok (CustomerCreditRatingState)
    # http:BadRequest (BadRequest)
    # http:Unauthorized (Unauthorized)
    # http:Forbidden (Forbidden)
    # http:NotFound (NotFound)
    # http:TooManyRequests (TooManyRequests)
    # http:InternalServerError (InternalServerError)
    resource function get CustomerCreditRating/[string customercreditratingid]/Retrieve() returns customers:CustomerCreditRatingState|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        return <customers:CustomerCreditRatingState>{};
    }

    # InCR Initiate credit state monitoring for a customer
    #
    # + return - returns can be any of following types 
    # http:Ok (CustomerCreditRatingState)
    # http:BadRequest (BadRequest)
    # http:Unauthorized (Unauthorized)
    # http:Forbidden (Forbidden)
    # http:NotFound (NotFound)
    # http:TooManyRequests (TooManyRequests)
    # http:InternalServerError (InternalServerError)
    isolated resource function post CustomerCreditRating/Initiate(@http:Payload customers:CustomerCreditRatingState payload) returns customers:CustomerCreditRatingStateOk|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        
        do {
            json|http:ClientError responseFromServer;
            lock {
                responseFromServer = check externalClient->get(customerCreditRatingInitiateUrl);
            }
            io:println("-----------------------------------------------------------------------------------------------");
            io:println("Received response from backends API: /CustomerCreditRating/Initiate");
            io:println("{\n" +
                "    CustomerReference: {...},\n" +
                "    CustomerCreditRatingStatusType: \"ActiveRating\",\n" +
                "    CustomerCreditRatingSchedule: {...},\n" +
                "    CustomerCreditRatingAssessmentRecord: {...},\n" +
                "    AssessmentCustomerBehaviorModelReference: {...},\n" +
                "    CreditRatingAssessmentType: {...},\n" +
                "    CreditRatingAssessmentDate: {...},\n" +
                "    CreditRatingAssessmentWorkProducts: {...},\n" +
                "    CreditRatingAssessmentResult: {...},\n" +
                "    CustomerCreditRatingRecord: {...},\n" +
                "    CustomerCreditRatingState: \"7\",\n" +
                "    CustomerCreditRatingAssessment: {...},\n" +
                "    CustomerCreditRatingNarrative: {...},\n" +
                "    CustomerCreditRatingDate: {...}\n" +
            "}");
            io:println("-----------------------------------------------------------------------------------------------");
            io:println(" ");

            if (responseFromServer is http:ClientError) {
                io:println("Error response received from backend:", responseFromServer);
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
            // the defined BIAN data model for customers:CustomerCreditRatingState.
            customers:CustomerCreditRatingState|error customerCreditRatingState = transformCustomerCreditRatingState(responseFromServer);
            if (customerCreditRatingState is error) {
                io:println("Error response received from backend:", customerCreditRatingState);
                common:HTTPErrorBadRequest httpError = {
                    body: {
                        status_code: "400",
                        status: "Bad Request",
                        message: customerCreditRatingState.message()
                    }
                };
                return httpError;
            }
            return <customers:CustomerCreditRatingStateOk>{ body: customerCreditRatingState };
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

    # CaBQ Capture notification of a credit alert
    #
    # + return - returns can be any of following types 
    # http:Ok (Alerts)
    # http:BadRequest (BadRequest)
    # http:Unauthorized (Unauthorized)
    # http:Forbidden (Forbidden)
    # http:NotFound (NotFound)
    # http:TooManyRequests (TooManyRequests)
    # http:InternalServerError (InternalServerError)
    resource function put CustomerCreditRating/[string customercreditratingid]/Alerts/[string alertsid]/Capture(@http:Payload customers:Alerts payload) returns customers:Alerts|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        return <customers:Alerts>{};
    }

    # CoCR Control credit state monitoring (e.g. high frequency update)
    #
    # + return - returns can be any of following types 
    # http:Ok (CustomerCreditRatingState)
    # http:BadRequest (BadRequest)
    # http:Unauthorized (Unauthorized)
    # http:Forbidden (Forbidden)
    # http:NotFound (NotFound)
    # http:TooManyRequests (TooManyRequests)
    # http:InternalServerError (InternalServerError)
    resource function put CustomerCreditRating/[string customercreditratingid]/Control(@http:Payload customers:CustomerCreditRatingState payload) returns customers:CustomerCreditRatingState|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        return <customers:CustomerCreditRatingState>{};
    }

    # EcCR Accept, reject, etc credit state monitoring content
    #
    # + return - returns can be any of following types 
    # http:Ok (CustomerCreditRatingState)
    # http:BadRequest (BadRequest)
    # http:Unauthorized (Unauthorized)
    # http:Forbidden (Forbidden)
    # http:NotFound (NotFound)
    # http:TooManyRequests (TooManyRequests)
    # http:InternalServerError (InternalServerError)
    resource function put CustomerCreditRating/[string customercreditratingid]/Exchange(@http:Payload customers:CustomerCreditRatingState payload) returns customers:CustomerCreditRatingState|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        return <customers:CustomerCreditRatingState>{};
    }

    # ExCR Execute an automated task for credit state (e.g. auto refresh)
    #
    # + return - returns can be any of following types 
    # http:Ok (CustomerCreditRatingState)
    # http:BadRequest (BadRequest)
    # http:Unauthorized (Unauthorized)
    # http:Forbidden (Forbidden)
    # http:NotFound (NotFound)
    # http:TooManyRequests (TooManyRequests)
    # http:InternalServerError (InternalServerError)
    resource function put CustomerCreditRating/[string customercreditratingid]/Execute(@http:Payload customers:CustomerCreditRatingState payload) returns customers:CustomerCreditRatingState|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        return <customers:CustomerCreditRatingState>{};
    }

    # CaBQ Capture external credit reports to support credit analysis and state
    #
    # + return - returns can be any of following types 
    # http:Ok (ExternalReporting)
    # http:BadRequest (BadRequest)
    # http:Unauthorized (Unauthorized)
    # http:Forbidden (Forbidden)
    # http:NotFound (NotFound)
    # http:TooManyRequests (TooManyRequests)
    # http:InternalServerError (InternalServerError)
    resource function put CustomerCreditRating/[string customercreditratingid]/ExternalReporting/[string externalreportingid]/Capture(@http:Payload customers:ExternalReporting payload) returns customers:ExternalReporting|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        return <customers:ExternalReporting>{};
    }

    # CaBQ Capture internal product reports to support credit analysis
    #
    # + return - returns can be any of following types 
    # http:Ok (InternalReporting)
    # http:BadRequest (BadRequest)
    # http:Unauthorized (Unauthorized)
    # http:Forbidden (Forbidden)
    # http:NotFound (NotFound)
    # http:TooManyRequests (TooManyRequests)
    # http:InternalServerError (InternalServerError)
    resource function put CustomerCreditRating/[string customercreditratingid]/InternalReporting/[string internalreportingid]/Capture(@http:Payload customers:InternalReporting payload) returns customers:InternalReporting|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        return <customers:InternalReporting>{};
    }

    # RqCR Request manual intervention for credit state (e.g. revise underlying assessment)
    #
    # + return - returns can be any of following types 
    # http:Ok (CustomerCreditRatingState)
    # http:BadRequest (BadRequest)
    # http:Unauthorized (Unauthorized)
    # http:Forbidden (Forbidden)
    # http:NotFound (NotFound)
    # http:TooManyRequests (TooManyRequests)
    # http:InternalServerError (InternalServerError)
    resource function put CustomerCreditRating/[string customercreditratingid]/Request(@http:Payload customers:CustomerCreditRatingState payload) returns customers:CustomerCreditRatingState|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        return <customers:CustomerCreditRatingState>{};
    }
};
