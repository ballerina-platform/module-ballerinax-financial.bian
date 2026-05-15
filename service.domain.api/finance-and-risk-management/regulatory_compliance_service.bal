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

import ballerinax/financial.bian.attribute.groups.finance_risk_management as finance_risk_management;
import ballerinax/financial.bian.attribute.groups.common as common;
import ballerina/http;
import ballerina/io;

http:Service regulatoryComplianceService =  service object {

    # Retrieve Details about a Regulatory Compliance
    #
    # + return - returns can be any of following types 
    # http:Ok (RegulatoryComplianceAssessment)
    # http:BadRequest (BadRequest)
    # http:Unauthorized (Unauthorized)
    # http:Forbidden (Forbidden)
    # http:NotFound (NotFound)
    # http:TooManyRequests (TooManyRequests)
    # http:InternalServerError (InternalServerError)
    isolated resource function get RegulatoryCompliance/[string regulatorycomplianceid]/Retrieve() returns finance_risk_management:RegulatoryComplianceAssessment|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        return <finance_risk_management:RegulatoryComplianceAssessment>{};
    }

    # Evaluate Regulatory Compliance
    #
    # + return - returns can be any of following types 
    # http:Ok (RegulatoryComplianceAssessment)
    # http:BadRequest (BadRequest)
    # http:Unauthorized (Unauthorized)
    # http:Forbidden (Forbidden)
    # http:NotFound (NotFound)
    # http:TooManyRequests (TooManyRequests)
    # http:InternalServerError (InternalServerError)
    isolated resource function post RegulatoryCompliance/Evaluate(@http:Payload finance_risk_management:RegulatoryComplianceAssessment payload) returns finance_risk_management:RegulatoryComplianceAssessmentOk|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        
        do {
            json|http:ClientError responseFromServer;
            lock {
	            // Invoking the configured backend service
                // TODO: Update the endpoint URL as per the actual backend API contract
	            responseFromServer = check externalClient->get("/RegulatoryCompliance/Evaluate");
            }
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

            io:println("-----------------------------------------------------------------------------------------------");
            io:println("Received response from backends API: RegulatoryCompliance/Evaluate");
            io:println("{\n"+
                "   RegulatoryAssessmentType: {..},\n"+
                "   BusinessUnitReference: {...},\n"+
                "   ProductandServiceReference: {...},\n"+
                "   CustomerReference: {...},\n"+
                "   RegulatoryAuthorityReference: {...},\n"+
                "   RegulationReference: {...},\n"+
                "   RegulationDefinition: {...},\n"+
                "   RegulationComplianceandReportingRequirements: {...},\n"+
                "   RegulationAccountability: {...},\n"+
                "   RegulationPenalties: {...},\n"+
                "   RegulationGuideline: {...},\n"+
                "   DocumentReference: {...},\n"+
                "   RegulatoryAssessmentWorkProducts: {...},\n"+
                "   RegulatoryAssessmentResult: \"Success\",\n"+
                "   RegulatoryComplianceAssessmentReference: {...},\n"+
                "   AssessmentRequestor: {...},\n"+
                "   AssessmentStartDate: {...},\n"+
                "   AssessmentCompletionDate: {...},\n"+
                "   RegulationCustomerType: \"Corporation\",\n"+
                "   RegulationCustomerResidenceStatus: \"Resident\",\n"+
                "   RegulationValidfromDate: {...},\n"+
                "   RegulationValidtoDate: {...}\n"+
             "}"); 
            io:println("-----------------------------------------------------------------------------------------------");
            io:println(" ");
    
            // Transform the response from backend to match the defined return type.
            // TODO: Implement the custom transformation logic in the data mapper module            
            // This is a sample mapping function. The transformation logic will depend on the actual response structure from the backend API and 
            // the defined BIAN data model for product_management:Operations.
            finance_risk_management:RegulatoryComplianceAssessment|error transformedResponse = transfromRegulatoryComplianceResponse(responseFromServer);
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
            return <finance_risk_management:RegulatoryComplianceAssessmentOk>{ body: transformedResponse };
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

    # Capture Regulatory Requirement
    #
    # + return - returns can be any of following types 
    # http:Ok (RegulatoryComplianceAssessment)
    # http:BadRequest (BadRequest)
    # http:Unauthorized (Unauthorized)
    # http:Forbidden (Forbidden)
    # http:NotFound (NotFound)
    # http:TooManyRequests (TooManyRequests)
    # http:InternalServerError (InternalServerError)
    isolated resource function put RegulatoryCompliance/[string regulatorycomplianceid]/Capture(@http:Payload finance_risk_management:RegulatoryComplianceAssessment payload) returns finance_risk_management:RegulatoryComplianceAssessment|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        return <finance_risk_management:RegulatoryComplianceAssessment>{};
    }

    # Request a Review of a Regulatory Compliance
    #
    # + return - returns can be any of following types 
    # http:Ok (RegulatoryComplianceAssessment)
    # http:BadRequest (BadRequest)
    # http:Unauthorized (Unauthorized)
    # http:Forbidden (Forbidden)
    # http:NotFound (NotFound)
    # http:TooManyRequests (TooManyRequests)
    # http:InternalServerError (InternalServerError)
    isolated resource function put RegulatoryCompliance/[string regulatorycomplianceid]/Request(@http:Payload finance_risk_management:RegulatoryComplianceAssessment payload) returns finance_risk_management:RegulatoryComplianceAssessment|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        return <finance_risk_management:RegulatoryComplianceAssessment>{};
    }

    # Update Details of a Regulatory Compliance
    #
    # + return - returns can be any of following types 
    # http:Ok (RegulatoryComplianceAssessment)
    # http:BadRequest (BadRequest)
    # http:Unauthorized (Unauthorized)
    # http:Forbidden (Forbidden)
    # http:NotFound (NotFound)
    # http:TooManyRequests (TooManyRequests)
    # http:InternalServerError (InternalServerError)
    isolated resource function put RegulatoryCompliance/[string regulatorycomplianceid]/Update(@http:Payload finance_risk_management:RegulatoryComplianceAssessment payload) returns finance_risk_management:RegulatoryComplianceAssessment|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        return <finance_risk_management:RegulatoryComplianceAssessment>{};
    }
};
