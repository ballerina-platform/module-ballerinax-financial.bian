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

configurable string customerOfferInitiateUrl = ?;

http:Service customerOfferService =  service object {

    # ReBQ Retrieve details about the agreements impacted and created as part of the offer
    #
    # + return - returns can be any of following types 
    # http:Ok (Agreement)
    # http:BadRequest (BadRequest)
    # http:Unauthorized (Unauthorized)
    # http:Forbidden (Forbidden)
    # http:NotFound (NotFound)
    # http:TooManyRequests (TooManyRequests)
    # http:InternalServerError (InternalServerError)
    isolated resource function get CustomerOffer/[string customerofferid]/Agreement/[string agreementid]/Retrieve() returns common:Agreement|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        return <common:Agreement>{};
    }

    # ReBQ Retrieve details of the compliance assessment
    #
    # + return - returns can be any of following types 
    # http:Ok (Audit)
    # http:BadRequest (BadRequest)
    # http:Unauthorized (Unauthorized)
    # http:Forbidden (Forbidden)
    # http:NotFound (NotFound)
    # http:TooManyRequests (TooManyRequests)
    # http:InternalServerError (InternalServerError)
    isolated resource function get CustomerOffer/[string customerofferid]/Audit/[string auditid]/Retrieve() returns customers:Audit|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        return <customers:Audit>{};
    }

    # ReBQ Retrieve details about the booking
    #
    # + return - returns can be any of following types 
    # http:Ok (Booking)
    # http:BadRequest (BadRequest)
    # http:Unauthorized (Unauthorized)
    # http:Forbidden (Forbidden)
    # http:NotFound (NotFound)
    # http:TooManyRequests (TooManyRequests)
    # http:InternalServerError (InternalServerError)
    isolated resource function get CustomerOffer/[string customerofferid]/Booking/[string bookingid]/Retrieve() returns customers:Booking|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        return <customers:Booking>{};
    }

    # ReBQ Retrieve details about the collateral allocation
    #
    # + return - returns can be any of following types 
    # http:Ok (Collateral)
    # http:BadRequest (BadRequest)
    # http:Unauthorized (Unauthorized)
    # http:Forbidden (Forbidden)
    # http:NotFound (NotFound)
    # http:TooManyRequests (TooManyRequests)
    # http:InternalServerError (InternalServerError)
    // isolated resource function get CustomerOffer/[string customerofferid]/Collateral/[string collateralid]/Retrieve() returns customers:Collateral|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
    //     return <customers:Collateral>{};
    // }

    # ReBQ Retrieve details of the regulatory compliance assessment
    #
    # + return - returns can be any of following types 
    # http:Ok (Compliance)
    # http:BadRequest (BadRequest)
    # http:Unauthorized (Unauthorized)
    # http:Forbidden (Forbidden)
    # http:NotFound (NotFound)
    # http:TooManyRequests (TooManyRequests)
    # http:InternalServerError (InternalServerError)
    isolated resource function get CustomerOffer/[string customerofferid]/Compliance/[string complianceid]/Retrieve() returns customers:Compliance|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        return <customers:Compliance>{};
    }

    # ReBQ Retrieve details about correspondence and documents from the customer offer procedure
    #
    # + return - returns can be any of following types 
    # http:Ok (CorrespondenceandDocuments)
    # http:BadRequest (BadRequest)
    # http:Unauthorized (Unauthorized)
    # http:Forbidden (Forbidden)
    # http:NotFound (NotFound)
    # http:TooManyRequests (TooManyRequests)
    # http:InternalServerError (InternalServerError)
    isolated resource function get CustomerOffer/[string customerofferid]/CorrespondenceandDocuments/[string correspondenceanddocumentsid]/Retrieve() returns customers:CorrespondenceandDocuments|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        return <customers:CorrespondenceandDocuments>{};
    }

    # ReBQ Retrieve details about the credit submission
    #
    # + return - returns can be any of following types 
    # http:Ok (Credit)
    # http:BadRequest (BadRequest)
    # http:Unauthorized (Unauthorized)
    # http:Forbidden (Forbidden)
    # http:NotFound (NotFound)
    # http:TooManyRequests (TooManyRequests)
    # http:InternalServerError (InternalServerError)
    isolated resource function get CustomerOffer/[string customerofferid]/Credit/[string creditid]/Retrieve() returns customers:Credit|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        return <customers:Credit>{};
    }

    # ReBQ Retrieve details about disclosure submissions
    #
    # + return - returns can be any of following types 
    # http:Ok (Disclosures)
    # http:BadRequest (BadRequest)
    # http:Unauthorized (Unauthorized)
    # http:Forbidden (Forbidden)
    # http:NotFound (NotFound)
    # http:TooManyRequests (TooManyRequests)
    # http:InternalServerError (InternalServerError)
    isolated resource function get CustomerOffer/[string customerofferid]/Disclosures/[string disclosuresid]/Retrieve() returns customers:Disclosures|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        return <customers:Disclosures>{};
    }

    # ReBQ Retrieve details about product options and pricing terms
    #
    # + return - returns can be any of following types 
    # http:Ok (FacilityApplication)
    # http:BadRequest (BadRequest)
    # http:Unauthorized (Unauthorized)
    # http:Forbidden (Forbidden)
    # http:NotFound (NotFound)
    # http:TooManyRequests (TooManyRequests)
    # http:InternalServerError (InternalServerError)
    isolated resource function get CustomerOffer/[string customerofferid]/FacilityApplication/[string facilityapplicationid]/Retrieve() returns customers:FacilityApplication|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        return <customers:FacilityApplication>{};
    }

    # ReBQ Retrieve details about the product initiation request
    #
    # + return - returns can be any of following types 
    # http:Ok (ProductInitialization)
    # http:BadRequest (BadRequest)
    # http:Unauthorized (Unauthorized)
    # http:Forbidden (Forbidden)
    # http:NotFound (NotFound)
    # http:TooManyRequests (TooManyRequests)
    # http:InternalServerError (InternalServerError)
    isolated resource function get CustomerOffer/[string customerofferid]/ProductInitialization/[string productinitializationid]/Retrieve() returns customers:ProductInitialization|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        return <customers:ProductInitialization>{};
    }

    # ReCR Retrieve details about a customer offer
    #
    # + return - returns can be any of following types 
    # http:Ok (CustomerOfferProcedure)
    # http:BadRequest (BadRequest)
    # http:Unauthorized (Unauthorized)
    # http:Forbidden (Forbidden)
    # http:NotFound (NotFound)
    # http:TooManyRequests (TooManyRequests)
    # http:InternalServerError (InternalServerError)
    isolated resource function get CustomerOffer/[string customerofferid]/Retrieve() returns customers:CustomerOfferProcedure|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        return <customers:CustomerOfferProcedure>{};
    }

    # ReBQ Retrieve details about the underwriting decision
    #
    # + return - returns can be any of following types 
    # http:Ok (Underwriting)
    # http:BadRequest (BadRequest)
    # http:Unauthorized (Unauthorized)
    # http:Forbidden (Forbidden)
    # http:NotFound (NotFound)
    # http:TooManyRequests (TooManyRequests)
    # http:InternalServerError (InternalServerError)
    isolated resource function get CustomerOffer/[string customerofferid]/Underwriting/[string underwritingid]/Retrieve() returns customers:Underwriting|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        return <customers:Underwriting>{};
    }

    # InCR Initiate the offer procedure
    #
    # + return - returns can be any of following types 
    # http:Ok (CustomerOfferProcedure)
    # http:BadRequest (BadRequest)
    # http:Unauthorized (Unauthorized)
    # http:Forbidden (Forbidden)
    # http:NotFound (NotFound)
    # http:TooManyRequests (TooManyRequests)
    # http:InternalServerError (InternalServerError)
    isolated resource function post CustomerOffer/Initiate(@http:Payload customers:CustomerOfferProcedure payload) returns customers:CustomerOfferProcedureOk|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        
        do {
            json|http:ClientError responseFromServer;
            lock {
	            responseFromServer = check externalClient->get(customerOfferInitiateUrl);
            }
            io:println("-----------------------------------------------------------------------------------------------");
            io:println("Received response from backends API: /CustomerOffer/Initiate");
            io:println("{\n" + 
                "   CustomerReference: {...},\n" + 
                "   PartyReference: {...},\n" + 
                "   ProductandServiceType: \"CurrentAccountAgreement\",\n" + 
                "   CustomerOfferProcessingSchedule: {...},\n" + 
                "   CustomerOfferProcessingTask: {...},\n" + 
                "   CustomerOfferProcessingTaskType: {...},\n" + 
                "   EmployeeBusinessUnitReference: {...},\n" + 
                "   CustomerOfferProcessingTaskWorkProducts: {...},\n" + 
                "   CustomerOfferProcessingTaskResult: {...},\n" + 
                "   CustomerOfferInvolvedParty: {...},\n" + 
                "   CustomerOfferReference: {...},\n" + 
                "   ProductAgreementReference: {...},\n" + 
                "   ProductandServiceReference: {...}\n" + 
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
            customers:CustomerOfferProcedure|error transformedResponse = transformCustomerOfferProcedure(responseFromServer);
            // If the transformation returns an error, log the error and return an appropriate HTTP error response
            if (transformedResponse is error) {
                io:println("Error response received from backend:", transformedResponse);
                common:HTTPErrorInternalServerError httpError = {
                    body: {
                        status_code: "500",
                        status: "Internal Server Error",
                        message: "An error occurred while processing the request."
                    }
                };
                return httpError;
            }

            // Return the transformed response
            return <customers:CustomerOfferProcedureOk>{ body: transformedResponse };
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

    # EcBQ Accept, verify, etc. actions against the customer and product agreements
    #
    # + return - returns can be any of following types 
    # http:Ok (Agreement)
    # http:BadRequest (BadRequest)
    # http:Unauthorized (Unauthorized)
    # http:Forbidden (Forbidden)
    # http:NotFound (NotFound)
    # http:TooManyRequests (TooManyRequests)
    # http:InternalServerError (InternalServerError)
    isolated resource function put CustomerOffer/[string customerofferid]/Agreement/[string agreementid]/Exchange(@http:Payload common:Agreement payload) returns common:Agreement|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        return <common:Agreement>{};
    }

    # UpBQ Update details of the customer agreement
    #
    # + return - returns can be any of following types 
    # http:Ok (Agreement)
    # http:BadRequest (BadRequest)
    # http:Unauthorized (Unauthorized)
    # http:Forbidden (Forbidden)
    # http:NotFound (NotFound)
    # http:TooManyRequests (TooManyRequests)
    # http:InternalServerError (InternalServerError)
    isolated resource function put CustomerOffer/[string customerofferid]/Agreement/[string agreementid]/Update(@http:Payload common:Agreement payload) returns common:Agreement|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        return <common:Agreement>{};
    }

    # UpBQ Update details of submitted materials for audit checks
    #
    # + return - returns can be any of following types 
    # http:Ok (Audit)
    # http:BadRequest (BadRequest)
    # http:Unauthorized (Unauthorized)
    # http:Forbidden (Forbidden)
    # http:NotFound (NotFound)
    # http:TooManyRequests (TooManyRequests)
    # http:InternalServerError (InternalServerError)
    isolated resource function put CustomerOffer/[string customerofferid]/Audit/[string auditid]/Update(@http:Payload customers:Audit payload) returns customers:Audit|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        return <customers:Audit>{};
    }

    # UpBQ Update details of the offer asset and liability booking
    #
    # + return - returns can be any of following types 
    # http:Ok (Booking)
    # http:BadRequest (BadRequest)
    # http:Unauthorized (Unauthorized)
    # http:Forbidden (Forbidden)
    # http:NotFound (NotFound)
    # http:TooManyRequests (TooManyRequests)
    # http:InternalServerError (InternalServerError)
    isolated resource function put CustomerOffer/[string customerofferid]/Booking/[string bookingid]/Update(@http:Payload customers:Booking payload) returns customers:Booking|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        return <customers:Booking>{};
    }

    # EcBQ Accept, reject etc. the collateral allocation
    #
    # + return - returns can be any of following types 
    # http:Ok (Collateral)
    # http:BadRequest (BadRequest)
    # http:Unauthorized (Unauthorized)
    # http:Forbidden (Forbidden)
    # http:NotFound (NotFound)
    # http:TooManyRequests (TooManyRequests)
    # http:InternalServerError (InternalServerError)
    // isolated resource function put CustomerOffer/[string customerofferid]/Collateral/[string collateralid]/Exchange(@http:Payload customers:Collateral payload) returns customers:Collateral|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
    //     return <customers:Collateral>{};
    // }

    # UpBQ Update details of the collateral allocation
    #
    # + return - returns can be any of following types 
    # http:Ok (Collateral)
    # http:BadRequest (BadRequest)
    # http:Unauthorized (Unauthorized)
    # http:Forbidden (Forbidden)
    # http:NotFound (NotFound)
    # http:TooManyRequests (TooManyRequests)
    # http:InternalServerError (InternalServerError)
    // isolated resource function put CustomerOffer/[string customerofferid]/Collateral/[string collateralid]/Update(@http:Payload customers:Collateral payload) returns customers:Collateral|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
    //     return <customers:Collateral>{};
    // }

    # UpBQ Update details submitted for compliance checks
    #
    # + return - returns can be any of following types 
    # http:Ok (Compliance)
    # http:BadRequest (BadRequest)
    # http:Unauthorized (Unauthorized)
    # http:Forbidden (Forbidden)
    # http:NotFound (NotFound)
    # http:TooManyRequests (TooManyRequests)
    # http:InternalServerError (InternalServerError)
    isolated resource function put CustomerOffer/[string customerofferid]/Compliance/[string complianceid]/Update(@http:Payload customers:Compliance payload) returns customers:Compliance|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        return <customers:Compliance>{};
    }

    # CoCR Control the processing of an offer (e.g. terminate)
    #
    # + return - returns can be any of following types 
    # http:Ok (CustomerOfferProcedure)
    # http:BadRequest (BadRequest)
    # http:Unauthorized (Unauthorized)
    # http:Forbidden (Forbidden)
    # http:NotFound (NotFound)
    # http:TooManyRequests (TooManyRequests)
    # http:InternalServerError (InternalServerError)
    isolated resource function put CustomerOffer/[string customerofferid]/Control(@http:Payload customers:CustomerOfferProcedure payload) returns customers:CustomerOfferProcedure|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        return <customers:CustomerOfferProcedure>{};
    }

    # EcBQ Accept, verify, etc. correspondence and documents
    #
    # + return - returns can be any of following types 
    # http:Ok (CorrespondenceandDocuments)
    # http:BadRequest (BadRequest)
    # http:Unauthorized (Unauthorized)
    # http:Forbidden (Forbidden)
    # http:NotFound (NotFound)
    # http:TooManyRequests (TooManyRequests)
    # http:InternalServerError (InternalServerError)
    isolated resource function put CustomerOffer/[string customerofferid]/CorrespondenceandDocuments/[string correspondenceanddocumentsid]/Exchange(@http:Payload customers:CorrespondenceandDocuments payload) returns customers:CorrespondenceandDocuments|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        return <customers:CorrespondenceandDocuments>{};
    }

    # UpBQ Update details about the correspondence and documents accessed and created by the offer
    #
    # + return - returns can be any of following types 
    # http:Ok (CorrespondenceandDocuments)
    # http:BadRequest (BadRequest)
    # http:Unauthorized (Unauthorized)
    # http:Forbidden (Forbidden)
    # http:NotFound (NotFound)
    # http:TooManyRequests (TooManyRequests)
    # http:InternalServerError (InternalServerError)
    isolated resource function put CustomerOffer/[string customerofferid]/CorrespondenceandDocuments/[string correspondenceanddocumentsid]/Update(@http:Payload customers:CorrespondenceandDocuments payload) returns customers:CorrespondenceandDocuments|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        return <customers:CorrespondenceandDocuments>{};
    }

    # UpBQ Update credit submission details
    #
    # + return - returns can be any of following types 
    # http:Ok (Credit)
    # http:BadRequest (BadRequest)
    # http:Unauthorized (Unauthorized)
    # http:Forbidden (Forbidden)
    # http:NotFound (NotFound)
    # http:TooManyRequests (TooManyRequests)
    # http:InternalServerError (InternalServerError)
    isolated resource function put CustomerOffer/[string customerofferid]/Credit/[string creditid]/Update(@http:Payload customers:Credit payload) returns customers:Credit|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        return <customers:Credit>{};
    }

    # EcBQ Accept, reject etc. disclosures
    #
    # + return - returns can be any of following types 
    # http:Ok (Disclosures)
    # http:BadRequest (BadRequest)
    # http:Unauthorized (Unauthorized)
    # http:Forbidden (Forbidden)
    # http:NotFound (NotFound)
    # http:TooManyRequests (TooManyRequests)
    # http:InternalServerError (InternalServerError)
    isolated resource function put CustomerOffer/[string customerofferid]/Disclosures/[string disclosuresid]/Exchange(@http:Payload customers:Disclosures payload) returns customers:Disclosures|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        return <customers:Disclosures>{};
    }

    # UpBQ Update disclosure submission
    #
    # + return - returns can be any of following types 
    # http:Ok (Disclosures)
    # http:BadRequest (BadRequest)
    # http:Unauthorized (Unauthorized)
    # http:Forbidden (Forbidden)
    # http:NotFound (NotFound)
    # http:TooManyRequests (TooManyRequests)
    # http:InternalServerError (InternalServerError)
    isolated resource function put CustomerOffer/[string customerofferid]/Disclosures/[string disclosuresid]/Update(@http:Payload customers:Disclosures payload) returns customers:Disclosures|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        return <customers:Disclosures>{};
    }

    # EcCR Accept, reject, verify, etc an offer procedure
    #
    # + return - returns can be any of following types 
    # http:Ok (CustomerOfferProcedure)
    # http:BadRequest (BadRequest)
    # http:Unauthorized (Unauthorized)
    # http:Forbidden (Forbidden)
    # http:NotFound (NotFound)
    # http:TooManyRequests (TooManyRequests)
    # http:InternalServerError (InternalServerError)
    isolated resource function put CustomerOffer/[string customerofferid]/Exchange(@http:Payload customers:CustomerOfferProcedure payload) returns customers:CustomerOfferProcedure|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        return <customers:CustomerOfferProcedure>{};
    }

    # ExCR Execute an automated task against an offer (e.g. submit data)
    #
    # + return - returns can be any of following types 
    # http:Ok (CustomerOfferProcedure)
    # http:BadRequest (BadRequest)
    # http:Unauthorized (Unauthorized)
    # http:Forbidden (Forbidden)
    # http:NotFound (NotFound)
    # http:TooManyRequests (TooManyRequests)
    # http:InternalServerError (InternalServerError)
    isolated resource function put CustomerOffer/[string customerofferid]/Execute(@http:Payload customers:CustomerOfferProcedure payload) returns customers:CustomerOfferProcedure|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        return <customers:CustomerOfferProcedure>{};
    }

    # EcBQ Accept, reject etc product options and pricing terms
    #
    # + return - returns can be any of following types 
    # http:Ok (FacilityApplication)
    # http:BadRequest (BadRequest)
    # http:Unauthorized (Unauthorized)
    # http:Forbidden (Forbidden)
    # http:NotFound (NotFound)
    # http:TooManyRequests (TooManyRequests)
    # http:InternalServerError (InternalServerError)
    isolated resource function put CustomerOffer/[string customerofferid]/FacilityApplication/[string facilityapplicationid]/Exchange(@http:Payload customers:FacilityApplication payload) returns customers:FacilityApplication|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        return <customers:FacilityApplication>{};
    }

    # UpBQ Update product options and pricing terms
    #
    # + return - returns can be any of following types 
    # http:Ok (FacilityApplication)
    # http:BadRequest (BadRequest)
    # http:Unauthorized (Unauthorized)
    # http:Forbidden (Forbidden)
    # http:NotFound (NotFound)
    # http:TooManyRequests (TooManyRequests)
    # http:InternalServerError (InternalServerError)
    isolated resource function put CustomerOffer/[string customerofferid]/FacilityApplication/[string facilityapplicationid]/Update(@http:Payload customers:FacilityApplication payload) returns customers:FacilityApplication|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        return <customers:FacilityApplication>{};
    }

    # UpBQ Update details of the product initiation request
    #
    # + return - returns can be any of following types 
    # http:Ok (ProductInitialization)
    # http:BadRequest (BadRequest)
    # http:Unauthorized (Unauthorized)
    # http:Forbidden (Forbidden)
    # http:NotFound (NotFound)
    # http:TooManyRequests (TooManyRequests)
    # http:InternalServerError (InternalServerError)
    isolated resource function put CustomerOffer/[string customerofferid]/ProductInitialization/[string productinitializationid]/Update(@http:Payload customers:ProductInitialization payload) returns customers:ProductInitialization|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        return <customers:ProductInitialization>{};
    }

    # RqCR Request manual intervention in an offer (e.g. request specialist support)
    #
    # + return - returns can be any of following types 
    # http:Ok (CustomerOfferProcedure)
    # http:BadRequest (BadRequest)
    # http:Unauthorized (Unauthorized)
    # http:Forbidden (Forbidden)
    # http:NotFound (NotFound)
    # http:TooManyRequests (TooManyRequests)
    # http:InternalServerError (InternalServerError)
    isolated resource function put CustomerOffer/[string customerofferid]/Request(@http:Payload customers:CustomerOfferProcedure payload) returns customers:CustomerOfferProcedure|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        return <customers:CustomerOfferProcedure>{};
    }

    # UpBQ Update submitted materials for the underwriting decision
    #
    # + return - returns can be any of following types 
    # http:Ok (Underwriting)
    # http:BadRequest (BadRequest)
    # http:Unauthorized (Unauthorized)
    # http:Forbidden (Forbidden)
    # http:NotFound (NotFound)
    # http:TooManyRequests (TooManyRequests)
    # http:InternalServerError (InternalServerError)
    isolated resource function put CustomerOffer/[string customerofferid]/Underwriting/[string underwritingid]/Update(@http:Payload customers:Underwriting payload) returns customers:Underwriting|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        return <customers:Underwriting>{};
    }

    # UpCR Update details of an offer procedure
    #
    # + return - returns can be any of following types 
    # http:Ok (CustomerOfferProcedure)
    # http:BadRequest (BadRequest)
    # http:Unauthorized (Unauthorized)
    # http:Forbidden (Forbidden)
    # http:NotFound (NotFound)
    # http:TooManyRequests (TooManyRequests)
    # http:InternalServerError (InternalServerError)
    isolated resource function put CustomerOffer/[string customerofferid]/Update(@http:Payload customers:CustomerOfferProcedure payload) returns customers:CustomerOfferProcedure|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        return <customers:CustomerOfferProcedure>{};
    }
};
