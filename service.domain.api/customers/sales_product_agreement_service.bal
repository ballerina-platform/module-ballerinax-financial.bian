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

http:Service salesProductAgreementService =  service object {

    # ReBQ Retrieve details about the legal terms of an agreement
    #
    # + return - returns can be any of following types 
    # http:Ok (LegalTerms)
    # http:BadRequest (BadRequest)
    # http:Unauthorized (Unauthorized)
    # http:Forbidden (Forbidden)
    # http:NotFound (NotFound)
    # http:TooManyRequests (TooManyRequests)
    # http:InternalServerError (InternalServerError)
    // isolated resource function get SalesProductAgreement/[string salesproductagreementid]/LegalTerms/[string legaltermsid]/Retrieve() returns customers:LegalTerms|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
    //     return <customers:LegalTerms>{};
    // }

    # ReBQ Retrieve details about the corporate policy terms of an agreement
    #
    # + return - returns can be any of following types 
    # http:Ok (PolicyTerms)
    # http:BadRequest (BadRequest)
    # http:Unauthorized (Unauthorized)
    # http:Forbidden (Forbidden)
    # http:NotFound (NotFound)
    # http:TooManyRequests (TooManyRequests)
    # http:InternalServerError (InternalServerError)
    // isolated resource function get SalesProductAgreement/[string salesproductagreementid]/PolicyTerms/[string policytermsid]/Retrieve() returns customers:PolicyTerms|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
    //     return <customers:PolicyTerms>{};
    // }

    # ReBQ Retrieve details about the regulatory terms of an agreement
    #
    # + return - returns can be any of following types 
    # http:Ok (RegulatoryTerms)
    # http:BadRequest (BadRequest)
    # http:Unauthorized (Unauthorized)
    # http:Forbidden (Forbidden)
    # http:NotFound (NotFound)
    # http:TooManyRequests (TooManyRequests)
    # http:InternalServerError (InternalServerError)
    // isolated resource function get SalesProductAgreement/[string salesproductagreementid]/RegulatoryTerms/[string regulatorytermsid]/Retrieve() returns customers:RegulatoryTerms|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
    //     return <customers:RegulatoryTerms>{};
    // }

    # ReCR Retrieve details about a sales product agreement
    #
    # + return - returns can be any of following types 
    # http:Ok (SalesProductAgreement)
    # http:BadRequest (BadRequest)
    # http:Unauthorized (Unauthorized)
    # http:Forbidden (Forbidden)
    # http:NotFound (NotFound)
    # http:TooManyRequests (TooManyRequests)
    # http:InternalServerError (InternalServerError)
    isolated resource function get SalesProductAgreement/[string salesproductagreementid]/Retrieve() returns customers:SalesProductAgreement|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        return <customers:SalesProductAgreement>{};
    }

    # EvCR Establish a sales product agreement
    #
    # + return - returns can be any of following types 
    # http:Ok (SalesProductAgreement)
    # http:BadRequest (BadRequest)
    # http:Unauthorized (Unauthorized)
    # http:Forbidden (Forbidden)
    # http:NotFound (NotFound)
    # http:TooManyRequests (TooManyRequests)
    # http:InternalServerError (InternalServerError)
    isolated resource function post SalesProductAgreement/Evaluate(@http:Payload customers:SalesProductAgreement payload) returns customers:SalesProductAgreementOk|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        
        do {
            json|http:ClientError responseFromServer;
            lock {
	            // Invoking the configured backend service
                // TODO: Update the endpoint URL as per the actual backend API contract
	            responseFromServer = check externalClient->get("/SalesProductAgreement/Evaluate");
            }
            io:println("-----------------------------------------------------------------------------------------------");
            io:println("Received response from backends API: /SalesProductAgreement/Evaluate");
            io:println("{\n"+
                "   QualificationType: \"AssetValuation\",\n"+
                "   PublicDirectoryReference: {...},\n"+
                "   SpecialistAgencyServiceReference: {...},\n"+
                "   QualificationTaskRecord: {...},\n"+
                "   QualificationTaskDescription: {...},\n"+
                "   SpecialistAgencyRegulatorServiceRequestResult: {...},\n"+
                "   DocumentDirectoryEntryInstanceReference: {...},\n"+
                "   QualificationTaskWorkProducts: {...},\n"+
                "   QualificationTaskResult: {...}\n"+
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
            customers:SalesProductAgreement|error transformedResponse = transfromSalesProductAgreementEvaluateResponse(responseFromServer);
            // Check if the transformation resulted in an error
            if (transformedResponse is error) {
                io:println("Error response received from backend:", transformedResponse);
                common:HTTPError httpError = {
                    status_code: "500",
                    status: "Internal Server Error",
                    message: transformedResponse.message()
                };
                common:HTTPErrorInternalServerError errorResponse = {
                    body: httpError
                };
                return errorResponse;
            }
            return <customers:SalesProductAgreementOk>{body: transformedResponse};
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

    # EvBQ Establish the legal terms for a sales product agreement
    #
    # + return - returns can be any of following types 
    # http:Ok (LegalTerms)
    # http:BadRequest (BadRequest)
    # http:Unauthorized (Unauthorized)
    # http:Forbidden (Forbidden)
    # http:NotFound (NotFound)
    # http:TooManyRequests (TooManyRequests)
    # http:InternalServerError (InternalServerError)
    // isolated resource function post SalesProductAgreement/[string salesproductagreementid]/LegalTerms/Evaluate(@http:Payload customers:LegalTerms payload) returns customers:LegalTermsOk|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
    //     return <customers:LegalTermsOk>{body:{}};
    // }

    # EvBQ Establish the corporate policy terms for a sales product agreement
    #
    # + return - returns can be any of following types 
    # http:Ok (PolicyTerms)
    # http:BadRequest (BadRequest)
    # http:Unauthorized (Unauthorized)
    # http:Forbidden (Forbidden)
    # http:NotFound (NotFound)
    # http:TooManyRequests (TooManyRequests)
    # http:InternalServerError (InternalServerError)
    // isolated resource function post SalesProductAgreement/[string salesproductagreementid]/PolicyTerms/Evaluate(@http:Payload customers:PolicyTerms payload) returns customers:PolicyTermsOk|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
    //     return <customers:PolicyTermsOk>{body:{}};
    // }

    # EvBQ Establish the regulatory terms for a sales product agreement
    #
    # + return - returns can be any of following types 
    # http:Ok (RegulatoryTerms)
    # http:BadRequest (BadRequest)
    # http:Unauthorized (Unauthorized)
    # http:Forbidden (Forbidden)
    # http:NotFound (NotFound)
    # http:TooManyRequests (TooManyRequests)
    # http:InternalServerError (InternalServerError)
    // isolated resource function post SalesProductAgreement/[string salesproductagreementid]/RegulatoryTerms/Evaluate(@http:Payload customers:RegulatoryTerms payload) returns customers:RegulatoryTermsOk|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
    //     return <customers:RegulatoryTermsOk>{body:{}};
    // }

    # CoCR Control the processing of an agreement
    #
    # + return - returns can be any of following types 
    # http:Ok (SalesProductAgreement)
    # http:BadRequest (BadRequest)
    # http:Unauthorized (Unauthorized)
    # http:Forbidden (Forbidden)
    # http:NotFound (NotFound)
    # http:TooManyRequests (TooManyRequests)
    # http:InternalServerError (InternalServerError)
    isolated resource function put SalesProductAgreement/[string salesproductagreementid]/Control(@http:Payload customers:SalesProductAgreement payload) returns customers:SalesProductAgreement|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        return <customers:SalesProductAgreement>{};
    }

    # EcCR Accept, reject etc an agreement
    #
    # + return - returns can be any of following types 
    # http:Ok (SalesProductAgreement)
    # http:BadRequest (BadRequest)
    # http:Unauthorized (Unauthorized)
    # http:Forbidden (Forbidden)
    # http:NotFound (NotFound)
    # http:TooManyRequests (TooManyRequests)
    # http:InternalServerError (InternalServerError)
    isolated resource function put SalesProductAgreement/[string salesproductagreementid]/Exchange(@http:Payload customers:SalesProductAgreement payload) returns customers:SalesProductAgreement|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        return <customers:SalesProductAgreement>{};
    }

    # GrCR Obtain grant authority to act under the terms of the agreement
    #
    # + return - returns can be any of following types 
    # http:Ok (SalesProductAgreement)
    # http:BadRequest (BadRequest)
    # http:Unauthorized (Unauthorized)
    # http:Forbidden (Forbidden)
    # http:NotFound (NotFound)
    # http:TooManyRequests (TooManyRequests)
    # http:InternalServerError (InternalServerError)
    isolated resource function put SalesProductAgreement/[string salesproductagreementid]/Grant(@http:Payload customers:SalesProductAgreement payload) returns customers:SalesProductAgreement|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        return <customers:SalesProductAgreement>{};
    }

    # UpBQ Update the legal terms for a sales product agreement
    #
    # + return - returns can be any of following types 
    # http:Ok (LegalTerms)
    # http:BadRequest (BadRequest)
    # http:Unauthorized (Unauthorized)
    # http:Forbidden (Forbidden)
    # http:NotFound (NotFound)
    # http:TooManyRequests (TooManyRequests)
    # http:InternalServerError (InternalServerError)
    // isolated resource function put SalesProductAgreement/[string salesproductagreementid]/LegalTerms/[string legaltermsid]/Update(@http:Payload customers:LegalTerms payload) returns customers:LegalTerms|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
    //     return <customers:LegalTerms>{};
    // }

    # UpBQ Update the corporate policy terms for a sales product agreement
    #
    # + return - returns can be any of following types 
    # http:Ok (PolicyTerms)
    # http:BadRequest (BadRequest)
    # http:Unauthorized (Unauthorized)
    # http:Forbidden (Forbidden)
    # http:NotFound (NotFound)
    # http:TooManyRequests (TooManyRequests)
    # http:InternalServerError (InternalServerError)
    // isolated resource function put SalesProductAgreement/[string salesproductagreementid]/PolicyTerms/[string policytermsid]/Update(@http:Payload customers:PolicyTerms payload) returns customers:PolicyTerms|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
    //     return <customers:PolicyTerms>{};
    // }

    # UpBQ Update the regulatory terms for a sales product agreement
    #
    # + return - returns can be any of following types 
    # http:Ok (RegulatoryTerms)
    # http:BadRequest (BadRequest)
    # http:Unauthorized (Unauthorized)
    # http:Forbidden (Forbidden)
    # http:NotFound (NotFound)
    # http:TooManyRequests (TooManyRequests)
    # http:InternalServerError (InternalServerError)
    // isolated resource function put SalesProductAgreement/[string salesproductagreementid]/RegulatoryTerms/[string regulatorytermsid]/Update(@http:Payload customers:RegulatoryTerms payload) returns customers:RegulatoryTerms|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
    //     return <customers:RegulatoryTerms>{};
    // }

    # RqCR Request check of a proposed activity is compatible
    #
    # + return - returns can be any of following types 
    # http:Ok (SalesProductAgreement)
    # http:BadRequest (BadRequest)
    # http:Unauthorized (Unauthorized)
    # http:Forbidden (Forbidden)
    # http:NotFound (NotFound)
    # http:TooManyRequests (TooManyRequests)
    # http:InternalServerError (InternalServerError)
    isolated resource function put SalesProductAgreement/[string salesproductagreementid]/Request(@http:Payload customers:SalesProductAgreement payload) returns customers:SalesProductAgreement|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        return <customers:SalesProductAgreement>{};
    }

    # UpCR Update details of an active sales product agreement
    #
    # + return - returns can be any of following types 
    # http:Ok (SalesProductAgreement)
    # http:BadRequest (BadRequest)
    # http:Unauthorized (Unauthorized)
    # http:Forbidden (Forbidden)
    # http:NotFound (NotFound)
    # http:TooManyRequests (TooManyRequests)
    # http:InternalServerError (InternalServerError)
    isolated resource function put SalesProductAgreement/[string salesproductagreementid]/Update(@http:Payload customers:SalesProductAgreement payload) returns customers:SalesProductAgreement|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        return <customers:SalesProductAgreement>{};
    }
};
