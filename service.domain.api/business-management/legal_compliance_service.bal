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

import ballerinax/financial.bian.attribute.groups.business_management as business_management;
import ballerinax/financial.bian.attribute.groups.common as common;
import ballerina/http;
import ballerina/io;

configurable string legalComplianceEvaluateUrl = ?;

http:Service legalComplianceService =  service object {

    # ReCR Retrieve details and content from a legal assessment action
    #
    # + return - returns can be any of following types 
    # http:Ok (LegalComplianceAssessment)
    # http:BadRequest (BadRequest)
    # http:Unauthorized (Unauthorized)
    # http:Forbidden (Forbidden)
    # http:NotFound (NotFound)
    # http:TooManyRequests (TooManyRequests)
    # http:InternalServerError (InternalServerError)
    resource function get LegalCompliance/[string legalcomplianceid]/Retrieve() returns business_management:LegalComplianceAssessment|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        return <business_management:LegalComplianceAssessment> {};
    }

    # EvCR Start a legal assessment action
    #
    # + return - returns can be any of following types 
    # http:Ok (LegalComplianceAssessment)
    # http:BadRequest (BadRequest)
    # http:Unauthorized (Unauthorized)
    # http:Forbidden (Forbidden)
    # http:NotFound (NotFound)
    # http:TooManyRequests (TooManyRequests)
    # http:InternalServerError (InternalServerError)
    resource function post LegalCompliance/Evaluate(@http:Payload business_management:LegalComplianceAssessment payload) returns business_management:LegalComplianceAssessmentOk|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        
        do {
            json|http:ClientError responseFromServer;
            lock {
	            responseFromServer = check externalClient->get(legalComplianceEvaluateUrl);
            }
            io:println("-----------------------------------------------------------------------------------------------");
            io:println("Received response from backends API: LegalCompliance/Evaluate");
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
            // the defined BIAN data model for business_management:LegalComplianceAssessment.
            business_management:LegalComplianceAssessment|error legalCompliance = transfromLegalComplianceAssessmentResponse(responseFromServer);

            // Check if the transformation resulted in an error and handle it accordingly
            if (legalCompliance is error) {
                io:println("Error response received from backend:", legalCompliance);
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

            // Return the transformed response
            return <business_management:LegalComplianceAssessmentOk> {
                body: legalCompliance
            };
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

    # EcCR Accept, verify, etc. a legal determination
    #
    # + return - returns can be any of following types 
    # http:Ok (LegalComplianceAssessment)
    # http:BadRequest (BadRequest)
    # http:Unauthorized (Unauthorized)
    # http:Forbidden (Forbidden)
    # http:NotFound (NotFound)
    # http:TooManyRequests (TooManyRequests)
    # http:InternalServerError (InternalServerError)
    resource function put LegalCompliance/[string legalcomplianceid]/Exchange(@http:Payload business_management:LegalComplianceAssessment payload) returns business_management:LegalComplianceAssessment|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        return <business_management:LegalComplianceAssessment> {};
    }

    # RqCR Request a review or adjudication for an assessment
    #
    # + return - returns can be any of following types 
    # http:Ok (LegalComplianceAssessment)
    # http:BadRequest (BadRequest)
    # http:Unauthorized (Unauthorized)
    # http:Forbidden (Forbidden)
    # http:NotFound (NotFound)
    # http:TooManyRequests (TooManyRequests)
    # http:InternalServerError (InternalServerError)
    resource function put LegalCompliance/[string legalcomplianceid]/Request(@http:Payload business_management:LegalComplianceAssessment payload) returns business_management:LegalComplianceAssessment|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        return <business_management:LegalComplianceAssessment> {};
    }

    # UpCR Update submitted details or content for an on-going legal assessment
    #
    # + return - returns can be any of following types 
    # http:Ok (LegalComplianceAssessment)
    # http:BadRequest (BadRequest)
    # http:Unauthorized (Unauthorized)
    # http:Forbidden (Forbidden)
    # http:NotFound (NotFound)
    # http:TooManyRequests (TooManyRequests)
    # http:InternalServerError (InternalServerError)
    resource function put LegalCompliance/[string legalcomplianceid]/Update(@http:Payload business_management:LegalComplianceAssessment payload) returns business_management:LegalComplianceAssessment|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        return <business_management:LegalComplianceAssessment> {};
    }
};
