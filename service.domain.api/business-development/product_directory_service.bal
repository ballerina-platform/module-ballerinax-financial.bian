
import ballerinax/financial.bian.attribute.groups.business_development as business_development;
import ballerinax/financial.bian.attribute.groups.common as common;
import ballerina/http;
import ballerina/io;

http:Service productDirectoryService =  service object {

    # ReBQ Retrieve product or service operations details from the catalog
    #
    # + return - returns can be any of following types 
    # http:Ok (Operations)
    # http:BadRequest (BadRequest)
    # http:Unauthorized (Unauthorized)
    # http:Forbidden (Forbidden)
    # http:NotFound (NotFound)
    # http:TooManyRequests (TooManyRequests)
    # http:InternalServerError (InternalServerError)
    resource function get ProductDirectory/[string productdirectoryid]/Operations/[string operationsid]/Retrieve() returns business_development:Operations|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        
        do {
            json|http:ClientError responseFromServer;
            lock {
	            // Invoking the configured backend service
                // TODO: Update the endpoint URL as per the actual backend API contract
	            responseFromServer = check externalClient->get("/ProductDirectory/" + productdirectoryid + "/Operations/" + operationsid + "/Retrieve");
            }
            io:println("-----------------------------------------------------------------------------------------------");
            io:println("Received response from backends API: ProductDirectory/" + productdirectoryid + "/Operations/" + operationsid + "/Retrieve");
            io:println("{\n"+
                "   ProductandServiceOperatingSchedule: {...},\n"+
                "   ProductandServiceConfigurationParameterType: \"FeeFeature\",\n"+
                "   ProductandServiceConfigurationParameterDescription: {...},\n"+
                "   ProductandServiceConfigurationParameterSetting: {...}\n"+
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
            // the defined BIAN data model for business_development:Operations.
            business_development:Operations|error operations = transfromProductDirectoryOperationsResponse(responseFromServer);

            // Check if the transformation resulted in an error and handle it accordingly
            if (operations is error) {
                io:println("Error response received from backend:", operations);
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
            return operations;
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

    # ReBQ Retrieve product or service production details from the catalog
    #
    # + return - returns can be any of following types 
    # http:Ok (Production)
    # http:BadRequest (BadRequest)
    # http:Unauthorized (Unauthorized)
    # http:Forbidden (Forbidden)
    # http:NotFound (NotFound)
    # http:TooManyRequests (TooManyRequests)
    # http:InternalServerError (InternalServerError)
    resource function get ProductDirectory/[string productdirectoryid]/Production/[string productionid]/Retrieve() returns common:Production|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        return <common:Production> {};
    }

    # ReCR Retrieve product or service details from the catalog
    #
    # + return - returns can be any of following types 
    # http:Ok (ProductDirectoryEntry)
    # http:BadRequest (BadRequest)
    # http:Unauthorized (Unauthorized)
    # http:Forbidden (Forbidden)
    # http:NotFound (NotFound)
    # http:TooManyRequests (TooManyRequests)
    # http:InternalServerError (InternalServerError)
    resource function get ProductDirectory/[string productdirectoryid]/Retrieve() returns business_development:ProductDirectoryEntry|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        return <business_development:ProductDirectoryEntry> {};
    }

    # ReBQ Retrieve product or service sales and marketing details from the catalog
    #
    # + return - returns can be any of following types 
    # http:Ok (SalesandMarketing)
    # http:BadRequest (BadRequest)
    # http:Unauthorized (Unauthorized)
    # http:Forbidden (Forbidden)
    # http:NotFound (NotFound)
    # http:TooManyRequests (TooManyRequests)
    # http:InternalServerError (InternalServerError)
    resource function get ProductDirectory/[string productdirectoryid]/SalesandMarketing/[string salesandmarketingid]/Retrieve() returns business_development:SalesandMarketing|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        
        do {
            json|http:ClientError responseFromServer;
            lock {
	            // Invoking the configured backend service
                // TODO: Update the endpoint URL as per the actual backend API contract
	            responseFromServer = check externalClient->get("/ProductDirectory/" + productdirectoryid + "/SalesandMarketing/" + salesandmarketingid + "/Retrieve");
            }
            io:println("-----------------------------------------------------------------------------------------------");
            io:println("Received response from backends API: ProductDirectory/" + productdirectoryid + "/SalesandMarketing/" + salesandmarketingid + "/Retrieve");
            io:println("{\n"+
                "   ProductandServiceSalesMaterial: {...},\n"+
                "   ProductandServicesFeaturesAndOptions: {...},\n"+
                "   ProductandServicePricingTable: {...},\n"+
                "   ProductandServiceFeesPenaltiesTable: {...},\n"+
                "   ProductSuitabilityGuide: {...},\n"+
                "   ProductandServiceEligibilityType: {...},\n"+
                "   ProductandServiceEligibilityDescription: {...},\n"+
                "   ProductandServiceOfferProcessingRequirements: {...}\n"+
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
            // the defined BIAN data model for business_development:Operations.
            business_development:SalesandMarketing|error salesAndMarketing = transformProductSalesandMarketingResponse(responseFromServer);

            // Check if the transformation resulted in an error and handle it accordingly
            if (salesAndMarketing is error) {
                io:println("Error response received from backend:", salesAndMarketing);
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
            return salesAndMarketing;
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

    # ReBQ Retrieve product or service servicing details from the catalog
    #
    # + return - returns can be any of following types 
    # http:Ok (Servicing)
    # http:BadRequest (BadRequest)
    # http:Unauthorized (Unauthorized)
    # http:Forbidden (Forbidden)
    # http:NotFound (NotFound)
    # http:TooManyRequests (TooManyRequests)
    # http:InternalServerError (InternalServerError)
    resource function get ProductDirectory/[string productdirectoryid]/Servicing/[string servicingid]/Retrieve() returns business_development:Servicing|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        return <business_development:Servicing> {};
    }

    # InCR Register a new product or service in the catalog
    #
    # + return - returns can be any of following types 
    # http:Ok (ProductDirectoryEntry)
    # http:BadRequest (BadRequest)
    # http:Unauthorized (Unauthorized)
    # http:Forbidden (Forbidden)
    # http:NotFound (NotFound)
    # http:TooManyRequests (TooManyRequests)
    # http:InternalServerError (InternalServerError)
    resource function post ProductDirectory/Register(@http:Payload business_development:ProductDirectoryEntry payload) returns business_development:ProductDirectoryEntryOk|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        return <business_development:ProductDirectoryEntryOk> {body: {}};
    }

    # InBQ Register a new product or service operations details in the catalog
    #
    # + return - returns can be any of following types 
    # http:Ok (Operations)
    # http:BadRequest (BadRequest)
    # http:Unauthorized (Unauthorized)
    # http:Forbidden (Forbidden)
    # http:NotFound (NotFound)
    # http:TooManyRequests (TooManyRequests)
    # http:InternalServerError (InternalServerError)
    resource function post ProductDirectory/[string productdirectoryid]/Operations/Register(@http:Payload business_development:Operations payload) returns business_development:OperationsOk|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        return <business_development:OperationsOk> {body: {}};
    }

    # InBQ Register a new product or service production details in the catalog
    #
    # + return - returns can be any of following types 
    # http:Ok (Production)
    # http:BadRequest (BadRequest)
    # http:Unauthorized (Unauthorized)
    # http:Forbidden (Forbidden)
    # http:NotFound (NotFound)
    # http:TooManyRequests (TooManyRequests)
    # http:InternalServerError (InternalServerError)
    resource function post ProductDirectory/[string productdirectoryid]/Production/Register(@http:Payload common:Production payload) returns business_development:ProductionOk|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        return <business_development:ProductionOk> {body: {}};
    }

    # InBQ Register a new product or service sales and marketing details in the catalog
    #
    # + return - returns can be any of following types 
    # http:Ok (SalesandMarketing)
    # http:BadRequest (BadRequest)
    # http:Unauthorized (Unauthorized)
    # http:Forbidden (Forbidden)
    # http:NotFound (NotFound)
    # http:TooManyRequests (TooManyRequests)
    # http:InternalServerError (InternalServerError)
    resource function post ProductDirectory/[string productdirectoryid]/SalesandMarketing/Register(@http:Payload business_development:SalesandMarketing payload) returns business_development:SalesandMarketingOk|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        return <business_development:SalesandMarketingOk> {body: {}};
    }

    # InBQ Register a new product or service servicing details in the catalog
    #
    # + return - returns can be any of following types 
    # http:Ok (Servicing)
    # http:BadRequest (BadRequest)
    # http:Unauthorized (Unauthorized)
    # http:Forbidden (Forbidden)
    # http:NotFound (NotFound)
    # http:TooManyRequests (TooManyRequests)
    # http:InternalServerError (InternalServerError)
    resource function post ProductDirectory/[string productdirectoryid]/Servicing/Register(@http:Payload business_development:Servicing payload) returns business_development:ServicingOk|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        return <business_development:ServicingOk> {body: {}};
    }

    # UpBQ Update details of a product or service operations details in the catalog
    #
    # + return - returns can be any of following types 
    # http:Ok (Operations)
    # http:BadRequest (BadRequest)
    # http:Unauthorized (Unauthorized)
    # http:Forbidden (Forbidden)
    # http:NotFound (NotFound)
    # http:TooManyRequests (TooManyRequests)
    # http:InternalServerError (InternalServerError)
    resource function put ProductDirectory/[string productdirectoryid]/Operations/[string operationsid]/Update(@http:Payload business_development:Operations payload) returns business_development:Operations|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        return <business_development:Operations> {};
    }

    # UpBQ Update details of a product or service production details in the catalog
    #
    # + return - returns can be any of following types 
    # http:Ok (Production)
    # http:BadRequest (BadRequest)
    # http:Unauthorized (Unauthorized)
    # http:Forbidden (Forbidden)
    # http:NotFound (NotFound)
    # http:TooManyRequests (TooManyRequests)
    # http:InternalServerError (InternalServerError)
    resource function put ProductDirectory/[string productdirectoryid]/Production/[string productionid]/Update(@http:Payload common:Production payload) returns common:Production|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        return <common:Production> {};
    }

    # RqCR Request that an existing entry is updated or revised
    #
    # + return - returns can be any of following types 
    # http:Ok (ProductDirectoryEntry)
    # http:BadRequest (BadRequest)
    # http:Unauthorized (Unauthorized)
    # http:Forbidden (Forbidden)
    # http:NotFound (NotFound)
    # http:TooManyRequests (TooManyRequests)
    # http:InternalServerError (InternalServerError)
    resource function put ProductDirectory/[string productdirectoryid]/Request(@http:Payload business_development:ProductDirectoryEntry payload) returns business_development:ProductDirectoryEntry|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        return <business_development:ProductDirectoryEntry> {};
    }

    # UpBQ Update details of a product or service sales and marketing details in the catalog
    #
    # + return - returns can be any of following types 
    # http:Ok (SalesandMarketing)
    # http:BadRequest (BadRequest)
    # http:Unauthorized (Unauthorized)
    # http:Forbidden (Forbidden)
    # http:NotFound (NotFound)
    # http:TooManyRequests (TooManyRequests)
    # http:InternalServerError (InternalServerError)
    resource function put ProductDirectory/[string productdirectoryid]/SalesandMarketing/[string salesandmarketingid]/Update(@http:Payload business_development:SalesandMarketing payload) returns business_development:SalesandMarketing|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        return <business_development:SalesandMarketing> {};
    }

    # UpBQ Update details of a product or service servicing details in the catalog
    #
    # + return - returns can be any of following types 
    # http:Ok (Servicing)
    # http:BadRequest (BadRequest)
    # http:Unauthorized (Unauthorized)
    # http:Forbidden (Forbidden)
    # http:NotFound (NotFound)
    # http:TooManyRequests (TooManyRequests)
    # http:InternalServerError (InternalServerError)
    resource function put ProductDirectory/[string productdirectoryid]/Servicing/[string servicingid]/Update(@http:Payload business_development:Servicing payload) returns business_development:Servicing|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        return <business_development:Servicing> {};
    }

    # UpCR Update details of a product or service in the catalog
    #
    # + return - returns can be any of following types 
    # http:Ok (ProductDirectoryEntry)
    # http:BadRequest (BadRequest)
    # http:Unauthorized (Unauthorized)
    # http:Forbidden (Forbidden)
    # http:NotFound (NotFound)
    # http:TooManyRequests (TooManyRequests)
    # http:InternalServerError (InternalServerError)
    resource function put ProductDirectory/[string productdirectoryid]/Update(@http:Payload business_development:ProductDirectoryEntry payload) returns business_development:ProductDirectoryEntry|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        return <business_development:ProductDirectoryEntry> {};
    }
};
