import ballerinax/financial.bian.attribute.groups.customers as customers;
import ballerinax/financial.bian.attribute.groups.common as common;
import ballerina/http;
import ballerina/io;

http:Service customerProductAndServiceEligibilityService =  service object {

    # ReBQ Retrieve details about an eligibility assessment
    #
    # + return - returns can be any of following types 
    # http:Ok (EligibilityCheck)
    # http:BadRequest (BadRequest)
    # http:Unauthorized (Unauthorized)
    # http:Forbidden (Forbidden)
    # http:NotFound (NotFound)
    # http:TooManyRequests (TooManyRequests)
    # http:InternalServerError (InternalServerError)
    isolated resource function get CustomerProductAndServiceEligibility/[string customerproductandserviceeligibilityid]/EligibilityCheck/[string eligibilitycheckid]/Retrieve() returns customers:EligibilityCheck|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        
        do {
            json|http:ClientError responseFromServer;
            lock {
	            // Invoking the configured backend service
                // TODO: Update the endpoint URL as per the actual backend API contract
	            responseFromServer = check externalClient->get("CustomerProductAndServiceEligibility/" + customerproductandserviceeligibilityid + "/EligibilityCheck/" + eligibilitycheckid + "/Retrieve");
            }
            io:println("-----------------------------------------------------------------------------------------------");
            io:println("Received response from backends API: CustomerProductAndServiceEligibility/" + customerproductandserviceeligibilityid + "/EligibilityCheck/" + eligibilitycheckid + "/Retrieve");
            io:println("{\n"+
                "   CustomerProductAndServiceDirectoryEntryDescription: {...},\n"+
                "   CustomerProductAndServiceDirectoryEntrySchedule: {...},\n"+
                "   CustomerProductAndServiceDirectoryEntryVersion: \"v3\",\n"+
                "   CustomerProductAndServiceDirectoryEntryStatus: {...},\n"+
                "   CustomerProductAndServiceDirectoryEntryUsageLog: {...},\n"+
                "   CustomerProductAndServiceDirectoryEntryUpdateLog: {...},\n"+
                "   CustomerProductAndServiceDirectoryEntryServiceConfiguration: {...},\n"+
                "   CustomerProductAndServiceDirectoryEntryInstanceReference: {...},\n"+
                "   CustomerReference: {...},\n"+
                "   ProductAgreementReference: {...},\n"+
                "   ServicerReference: {...},\n"+
                "   ServiceAgreementReference: {...}\n"+
            "}");
            io:println("-----------------------------------------------------------------------------------------------");
            io:println(" ");
        
            if (responseFromServer is http:ClientError) {
                io:println("Error response received from backend:", responseFromServer);
                common:HTTPErrorInternalServerError errorResponse = {
                    body: {
                        status_code: "400",
                        status: "Internal Server Error",
                        message: "An error occurred while processing the request."
                    }
                };
                return errorResponse;
            }
            // Transform the response from backend to match the defined return type.
            // TODO: Implement the custom transformation logic in the data mapper module            
            // This is a sample mapping function. The transformation logic will depend on the actual response structure from the backend API and 
            // the defined BIAN data model for product_management:Operations.
            customers:EligibilityCheck|error eligibilityCheck = transformCustomerProductAndServiceEligibilityResponse(responseFromServer);
            // Handle any errors that occur during transformation
            if (eligibilityCheck is error) {
                io:println("Error response received from backend:", eligibilityCheck);
                common:HTTPErrorInternalServerError errorResponse = {
                    body: {
                        status_code: "400",
                        status: "Internal Server Error",
                        message: "An error occurred while processing the request."
                    }
                };
                return errorResponse;
            }

            // Return the transformed response
            return eligibilityCheck;
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

    # ReBQ Retrieve details about a next best test
    #
    # + return - returns can be any of following types 
    # http:Ok (NextBest)
    # http:BadRequest (BadRequest)
    # http:Unauthorized (Unauthorized)
    # http:Forbidden (Forbidden)
    # http:NotFound (NotFound)
    # http:TooManyRequests (TooManyRequests)
    # http:InternalServerError (InternalServerError)
    isolated resource function get CustomerProductAndServiceEligibility/[string customerproductandserviceeligibilityid]/NextBest/[string nextbestid]/Retrieve() returns customers:NextBest|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        return <customers:NextBest>{};
    }

    # ReCR Retrieve details about an eligibility request
    #
    # + return - returns can be any of following types 
    # http:Ok (CustomerEligibilityAssessment)
    # http:BadRequest (BadRequest)
    # http:Unauthorized (Unauthorized)
    # http:Forbidden (Forbidden)
    # http:NotFound (NotFound)
    # http:TooManyRequests (TooManyRequests)
    # http:InternalServerError (InternalServerError)
    isolated resource function get CustomerProductAndServiceEligibility/[string customerproductandserviceeligibilityid]/Retrieve() returns customers:CustomerEligibilityAssessment|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        return <customers:CustomerEligibilityAssessment>{};
    }

    # EvCR Evaluate a customer's eligibility for a product/service
    #
    # + return - returns can be any of following types 
    # http:Ok (CustomerEligibilityAssessment)
    # http:BadRequest (BadRequest)
    # http:Unauthorized (Unauthorized)
    # http:Forbidden (Forbidden)
    # http:NotFound (NotFound)
    # http:TooManyRequests (TooManyRequests)
    # http:InternalServerError (InternalServerError)
    // isolated resource function post CustomerProductAndServiceEligibility/Evaluate(@http:Payload customers:CustomerEligibilityAssessment payload) returns common:CustomerEligibilityAssessmentOk|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
    //     return <common:CustomerEligibilityAssessmentOk>{body:{}};
    // }

    # Evaluate Eligibility Check
    #
    # + return - returns can be any of following types 
    # http:Ok (EligibilityCheck)
    # http:BadRequest (BadRequest)
    # http:Unauthorized (Unauthorized)
    # http:Forbidden (Forbidden)
    # http:NotFound (NotFound)
    # http:TooManyRequests (TooManyRequests)
    # http:InternalServerError (InternalServerError)
    isolated resource function post CustomerProductAndServiceEligibility/[string customerproductandserviceeligibilityid]/EligibilityCheck/Evaluate(@http:Payload customers:EligibilityCheck payload) returns customers:EligibilityCheckOk|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        return <customers:EligibilityCheckOk>{body:{}};
    }

    # EcCR Accept, reject, verify etc. an eligibility assessment
    #
    # + return - returns can be any of following types 
    # http:Ok (CustomerEligibilityAssessment)
    # http:BadRequest (BadRequest)
    # http:Unauthorized (Unauthorized)
    # http:Forbidden (Forbidden)
    # http:NotFound (NotFound)
    # http:TooManyRequests (TooManyRequests)
    # http:InternalServerError (InternalServerError)
    isolated resource function put CustomerProductAndServiceEligibility/[string customerproductandserviceeligibilityid]/Exchange(@http:Payload customers:CustomerEligibilityAssessment payload) returns customers:CustomerEligibilityAssessment|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        return <customers:CustomerEligibilityAssessment>{};
    }

    # ExCR Execute an automated action against an active evaluation (e.g. provide additional data)
    #
    # + return - returns can be any of following types 
    # http:Ok (CustomerEligibilityAssessment)
    # http:BadRequest (BadRequest)
    # http:Unauthorized (Unauthorized)
    # http:Forbidden (Forbidden)
    # http:NotFound (NotFound)
    # http:TooManyRequests (TooManyRequests)
    # http:InternalServerError (InternalServerError)
    isolated resource function put CustomerProductAndServiceEligibility/[string customerproductandserviceeligibilityid]/Execute(@http:Payload customers:CustomerEligibilityAssessment payload) returns customers:CustomerEligibilityAssessment|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        return <customers:CustomerEligibilityAssessment>{};
    }

    # GrCR Obtain a permission grant reflecting eligibility (perhaps defining a term or other considerations)
    #
    # + return - returns can be any of following types 
    # http:Ok (CustomerEligibilityAssessment)
    # http:BadRequest (BadRequest)
    # http:Unauthorized (Unauthorized)
    # http:Forbidden (Forbidden)
    # http:NotFound (NotFound)
    # http:TooManyRequests (TooManyRequests)
    # http:InternalServerError (InternalServerError)
    isolated resource function put CustomerProductAndServiceEligibility/[string customerproductandserviceeligibilityid]/Grant(@http:Payload customers:CustomerEligibilityAssessment payload) returns customers:CustomerEligibilityAssessment|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        return <customers:CustomerEligibilityAssessment>{};
    }

    # UpBQ Update details about a next best eligibility test
    #
    # + return - returns can be any of following types 
    # http:Ok (NextBest)
    # http:BadRequest (BadRequest)
    # http:Unauthorized (Unauthorized)
    # http:Forbidden (Forbidden)
    # http:NotFound (NotFound)
    # http:TooManyRequests (TooManyRequests)
    # http:InternalServerError (InternalServerError)
    isolated resource function put CustomerProductAndServiceEligibility/[string customerproductandserviceeligibilityid]/NextBest/[string nextbestid]/Update(@http:Payload customers:NextBest payload) returns customers:NextBest|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        return <customers:NextBest>{};
    }

    # RqCR Request manual intervention in an evaluation (e.g. engage a specialist or negotiator)
    #
    # + return - returns can be any of following types 
    # http:Ok (CustomerEligibilityAssessment)
    # http:BadRequest (BadRequest)
    # http:Unauthorized (Unauthorized)
    # http:Forbidden (Forbidden)
    # http:NotFound (NotFound)
    # http:TooManyRequests (TooManyRequests)
    # http:InternalServerError (InternalServerError)
    isolated resource function put CustomerProductAndServiceEligibility/[string customerproductandserviceeligibilityid]/Request(@http:Payload customers:CustomerEligibilityAssessment payload) returns customers:CustomerEligibilityAssessment|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        return <customers:CustomerEligibilityAssessment>{};
    }

    # UpCR Update the product/service eligibility record (e.g. for newly sold products)
    #
    # + return - returns can be any of following types 
    # http:Ok (CustomerEligibilityAssessment)
    # http:BadRequest (BadRequest)
    # http:Unauthorized (Unauthorized)
    # http:Forbidden (Forbidden)
    # http:NotFound (NotFound)
    # http:TooManyRequests (TooManyRequests)
    # http:InternalServerError (InternalServerError)
    isolated resource function put CustomerProductAndServiceEligibility/[string customerproductandserviceeligibilityid]/Update(@http:Payload customers:CustomerEligibilityAssessment payload) returns customers:CustomerEligibilityAssessment|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        return <customers:CustomerEligibilityAssessment>{};
    }
};
