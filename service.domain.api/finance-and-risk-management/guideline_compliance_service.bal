import ballerinax/financial.bian.attribute.groups.finance_risk_management as finance_risk_management;
import ballerinax/financial.bian.attribute.groups.common as common;
import ballerina/http;
import ballerina/io;

http:Service guidelineComplianceService =  service object {
    
    # ReCR Retrieve details and content from an active guideline compliance assessment
    #
    # + return - returns can be any of following types 
    # http:Ok (GuidelineComplianceAssessment)
    # http:BadRequest (BadRequest)
    # http:Unauthorized (Unauthorized)
    # http:Forbidden (Forbidden)
    # http:NotFound (NotFound)
    # http:TooManyRequests (TooManyRequests)
    # http:InternalServerError (InternalServerError)
    isolated resource function get GuidelineCompliance/[string guidelinecomplianceid]/Retrieve() returns finance_risk_management:GuidelineComplianceAssessment|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        return <finance_risk_management:GuidelineComplianceAssessment>{};
    }

    # EvCR Start a guideline compliance evaluation assessment
    #
    # + return - returns can be any of following types 
    # http:Ok (GuidelineComplianceAssessment)
    # http:BadRequest (BadRequest)
    # http:Unauthorized (Unauthorized)
    # http:Forbidden (Forbidden)
    # http:NotFound (NotFound)
    # http:TooManyRequests (TooManyRequests)
    # http:InternalServerError (InternalServerError)
    isolated resource function post GuidelineCompliance/Evaluate(@http:Payload finance_risk_management:GuidelineComplianceAssessment payload) returns finance_risk_management:GuidelineComplianceAssessmentOk|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        
        do {
            json|http:ClientError responseFromServer;
            lock {
	            // Invoking the configured backend service
                // TODO: Update the endpoint URL as per the actual backend API contract
	            responseFromServer = check externalClient->get("/GuidelineCompliance/Evaluate");
            }
            io:println("-----------------------------------------------------------------------------------------------");
            io:println("Received response from backends API: /GuidelineCompliance/Evaluate");
            io:println("{\n"+
                "   GuidelineComplianceAssessmentType: \"AssetValuation\",\n"+
                "   BusinessUnitReference: {...},\n"+
                "   ProductandServiceReference: {...},\n"+
                "   CustomerReference: {...},\n"+
                "   GuidelineComplianceAssessmentWorkProducts: {...},\n"+
                "   GuidelineComplianceAssessmentResult: {...}\n"+
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
            finance_risk_management:GuidelineComplianceAssessment|error transformedResponse = transfromGuidelineComplianceEvaluateResponse(responseFromServer);

            // Handle transformation errors and return appropriate error response
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

            // Return the transformed response wrapped in the appropriate success response type
            return <finance_risk_management:GuidelineComplianceAssessmentOk>{ body: transformedResponse};
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

    # EcCR Accept or reject a guideline compliance determination
    #
    # + return - returns can be any of following types 
    # http:Ok (GuidelineComplianceAssessment)
    # http:BadRequest (BadRequest)
    # http:Unauthorized (Unauthorized)
    # http:Forbidden (Forbidden)
    # http:NotFound (NotFound)
    # http:TooManyRequests (TooManyRequests)
    # http:InternalServerError (InternalServerError)
    isolated resource function put GuidelineCompliance/[string guidelinecomplianceid]/Exchange(@http:Payload finance_risk_management:GuidelineComplianceAssessment payload) returns finance_risk_management:GuidelineComplianceAssessment|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        return <finance_risk_management:GuidelineComplianceAssessment>{};
    }

    # RqCR Request a review or adjudication for a guideline assessment
    #
    # + return - returns can be any of following types 
    # http:Ok (GuidelineComplianceAssessment)
    # http:BadRequest (BadRequest)
    # http:Unauthorized (Unauthorized)
    # http:Forbidden (Forbidden)
    # http:NotFound (NotFound)
    # http:TooManyRequests (TooManyRequests)
    # http:InternalServerError (InternalServerError)
    isolated resource function put GuidelineCompliance/[string guidelinecomplianceid]/Request(@http:Payload finance_risk_management:GuidelineComplianceAssessment payload) returns finance_risk_management:GuidelineComplianceAssessment|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        return <finance_risk_management:GuidelineComplianceAssessment>{};
    }

    # UpCR Update submitted details or content for an on-going guideline compliance assessment
    #
    # + return - returns can be any of following types 
    # http:Ok (GuidelineComplianceAssessment)
    # http:BadRequest (BadRequest)
    # http:Unauthorized (Unauthorized)
    # http:Forbidden (Forbidden)
    # http:NotFound (NotFound)
    # http:TooManyRequests (TooManyRequests)
    # http:InternalServerError (InternalServerError)
    isolated resource function put GuidelineCompliance/[string guidelinecomplianceid]/Update(@http:Payload finance_risk_management:GuidelineComplianceAssessment payload) returns finance_risk_management:GuidelineComplianceAssessment|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        return <finance_risk_management:GuidelineComplianceAssessment>{};
    }
};
