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

configurable string customerProductAndServiceDirectoryRetrieveUrl = ?;
configurable string customerProductAndServiceDirectoryRegisterUrl = ?;

http:Service customerProductAndServiceDirectoryService =  service object {

    # Notify Customer Product And Service Directory Entry
    #
    # + return - returns can be any of following types 
    # http:Ok (CustomerProductAndServiceDirectoryEntry)
    # http:BadRequest (BadRequest)
    # http:Unauthorized (Unauthorized)
    # http:Forbidden (Forbidden)
    # http:NotFound (NotFound)
    # http:TooManyRequests (TooManyRequests)
    # http:InternalServerError (InternalServerError)
    isolated resource function get CustomerProductandServiceDirectory/[string customerproductandservicedirectoryid]/Notify() returns common:CustomerProductAndServiceDirectoryEntry|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        return <common:CustomerProductAndServiceDirectoryEntry>{};
    }

    # Notify In-force Product property
    #
    # + return - returns can be any of following types 
    # http:Ok (Product)
    # http:BadRequest (BadRequest)
    # http:Unauthorized (Unauthorized)
    # http:Forbidden (Forbidden)
    # http:NotFound (NotFound)
    # http:TooManyRequests (TooManyRequests)
    # http:InternalServerError (InternalServerError)
    isolated resource function get CustomerProductandServiceDirectory/[string customerproductandservicedirectoryid]/Product/[string productid]/Notify() returns common:Product|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        return <common:Product>{};
    }

    # Retrieve In-force Product property
    #
    # + return - returns can be any of following types 
    # http:Ok (Product)
    # http:BadRequest (BadRequest)
    # http:Unauthorized (Unauthorized)
    # http:Forbidden (Forbidden)
    # http:NotFound (NotFound)
    # http:TooManyRequests (TooManyRequests)
    # http:InternalServerError (InternalServerError)
    isolated resource function get CustomerProductandServiceDirectory/[string customerproductandservicedirectoryid]/Product/[string productid]/Retrieve() returns common:Product|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        return <common:Product>{};
    }

    # Retrieve Customer Product And Service Directory Entry
    #
    # + return - returns can be any of following types 
    # http:Ok (CustomerProductAndServiceDirectoryEntry)
    # http:BadRequest (BadRequest)
    # http:Unauthorized (Unauthorized)
    # http:Forbidden (Forbidden)
    # http:NotFound (NotFound)
    # http:TooManyRequests (TooManyRequests)
    # http:InternalServerError (InternalServerError)
    isolated resource function get CustomerProductandServiceDirectory/[string customerproductandservicedirectoryid]/Retrieve() returns common:CustomerProductAndServiceDirectoryEntry|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        
        do {
            json|http:ClientError responseFromServer;
            lock {
	            responseFromServer = check externalClient->get(customerProductAndServiceDirectoryRetrieveUrl);
            }
            io:println("----------------------------------------------------------------------------------------------");
            io:println("Received response from backends API: /CustomerProductandServiceDirectory/Retrieve");
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
                "ServiceAgreementReference: {...}\n"+
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
            // Transform the response from backend to match the defined return type
            // TODO: Implement the custom transformation logic in the data mapper module
            common:CustomerProductAndServiceDirectoryEntry|error customerProductAndServiceDirectoryEntry = transformCustomerProductandServiceDirectoryRetrievalResponse(responseFromServer);

            if (customerProductAndServiceDirectoryEntry is error) {
                io:println("Error response received from backend:", customerProductAndServiceDirectoryEntry);
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
            return customerProductAndServiceDirectoryEntry;
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

    # Notify In-force Service property
    #
    # + return - returns can be any of following types 
    # http:Ok (Service)
    # http:BadRequest (BadRequest)
    # http:Unauthorized (Unauthorized)
    # http:Forbidden (Forbidden)
    # http:NotFound (NotFound)
    # http:TooManyRequests (TooManyRequests)
    # http:InternalServerError (InternalServerError)
    isolated resource function get CustomerProductandServiceDirectory/[string customerproductandservicedirectoryid]/Service/[string serviceid]/Notify() returns common:Service|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        return <common:Service>{};
    }

    # Retrieve In-force Service property
    #
    # + return - returns can be any of following types 
    # http:Ok (Service)
    # http:BadRequest (BadRequest)
    # http:Unauthorized (Unauthorized)
    # http:Forbidden (Forbidden)
    # http:NotFound (NotFound)
    # http:TooManyRequests (TooManyRequests)
    # http:InternalServerError (InternalServerError)
    isolated resource function get CustomerProductandServiceDirectory/[string customerproductandservicedirectoryid]/Service/[string serviceid]/Retrieve() returns common:Service|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        return <common:Service>{};
    }

    # Register Customer Product And Service Directory Entry
    #
    # + return - returns can be any of following types 
    # http:Ok (CustomerProductAndServiceDirectoryEntry)
    # http:BadRequest (BadRequest)
    # http:Unauthorized (Unauthorized)
    # http:Forbidden (Forbidden)
    # http:NotFound (NotFound)
    # http:TooManyRequests (TooManyRequests)
    # http:InternalServerError (InternalServerError)
    isolated resource function post CustomerProductandServiceDirectory/Register(@http:Payload common:CustomerProductAndServiceDirectoryEntry payload) returns customers:CustomerProductAndServiceDirectoryEntryOk|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        
        do {
            json|http:ClientError responseFromServer;
            lock {
	            responseFromServer = check externalClient->get(customerProductAndServiceDirectoryRegisterUrl);
            }
            io:println("-----------------------------------------------------------------------------------------------");
            io:println("Received response from backends API: /CustomerProductandServiceDirectory/Register");
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
            common:CustomerProductAndServiceDirectoryEntry|error customerProductAndServiceDirectoryEntry = transfromCustomerProductandServiceDirectoryRegisterResponse(responseFromServer);
            // The transformation function is expected to return an error if the response from the backend cannot be transformed to match the defined return type.
            if (customerProductAndServiceDirectoryEntry is error) {
                io:println("Error response received from backend:", customerProductAndServiceDirectoryEntry);
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

            // If the transformation is successful, return the transformed response
            return <customers:CustomerProductAndServiceDirectoryEntryOk>{body: customerProductAndServiceDirectoryEntry};
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

    # Register In-force Product property
    #
    # + return - returns can be any of following types 
    # http:Ok (Product)
    # http:BadRequest (BadRequest)
    # http:Unauthorized (Unauthorized)
    # http:Forbidden (Forbidden)
    # http:NotFound (NotFound)
    # http:TooManyRequests (TooManyRequests)
    # http:InternalServerError (InternalServerError)
    isolated resource function post CustomerProductandServiceDirectory/[string customerproductandservicedirectoryid]/Product/Register(@http:Payload common:Product payload) returns customers:ProductOk|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        return <customers:ProductOk>{body:{}};
    }

    # Register In-force Service property
    #
    # + return - returns can be any of following types 
    # http:Ok (Service)
    # http:BadRequest (BadRequest)
    # http:Unauthorized (Unauthorized)
    # http:Forbidden (Forbidden)
    # http:NotFound (NotFound)
    # http:TooManyRequests (TooManyRequests)
    # http:InternalServerError (InternalServerError)
    isolated resource function post CustomerProductandServiceDirectory/[string customerproductandservicedirectoryid]/Service/Register(@http:Payload common:Service payload) returns customers:ServiceOk|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        return <customers:ServiceOk>{body:{}};
    }

    # Control Customer Product And Service Directory Entry
    #
    # + return - returns can be any of following types 
    # http:Ok (CustomerProductAndServiceDirectoryEntry)
    # http:BadRequest (BadRequest)
    # http:Unauthorized (Unauthorized)
    # http:Forbidden (Forbidden)
    # http:NotFound (NotFound)
    # http:TooManyRequests (TooManyRequests)
    # http:InternalServerError (InternalServerError)
    isolated resource function put CustomerProductandServiceDirectory/[string customerproductandservicedirectoryid]/Control(@http:Payload common:CustomerProductAndServiceDirectoryEntry payload) returns common:CustomerProductAndServiceDirectoryEntry|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        return <common:CustomerProductAndServiceDirectoryEntry>{};
    }

    # Execute Customer Product And Service Directory Entry
    #
    # + return - returns can be any of following types 
    # http:Ok (CustomerProductAndServiceDirectoryEntry)
    # http:BadRequest (BadRequest)
    # http:Unauthorized (Unauthorized)
    # http:Forbidden (Forbidden)
    # http:NotFound (NotFound)
    # http:TooManyRequests (TooManyRequests)
    # http:InternalServerError (InternalServerError)
    isolated resource function put CustomerProductandServiceDirectory/[string customerproductandservicedirectoryid]/Execute(@http:Payload common:CustomerProductAndServiceDirectoryEntry payload) returns common:CustomerProductAndServiceDirectoryEntry|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        return <common:CustomerProductAndServiceDirectoryEntry>{};
    }

    # Execute In-force Product property
    #
    # + return - returns can be any of following types 
    # http:Ok (Product)
    # http:BadRequest (BadRequest)
    # http:Unauthorized (Unauthorized)
    # http:Forbidden (Forbidden)
    # http:NotFound (NotFound)
    # http:TooManyRequests (TooManyRequests)
    # http:InternalServerError (InternalServerError)
    isolated resource function put CustomerProductandServiceDirectory/[string customerproductandservicedirectoryid]/Product/[string productid]/Execute(@http:Payload common:Product payload) returns common:Product|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        return <common:Product>{};
    }

    # Request In-force Product property
    #
    # + return - returns can be any of following types 
    # http:Ok (Product)
    # http:BadRequest (BadRequest)
    # http:Unauthorized (Unauthorized)
    # http:Forbidden (Forbidden)
    # http:NotFound (NotFound)
    # http:TooManyRequests (TooManyRequests)
    # http:InternalServerError (InternalServerError)
    isolated resource function put CustomerProductandServiceDirectory/[string customerproductandservicedirectoryid]/Product/[string productid]/Request(@http:Payload common:Product payload) returns common:Product|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        return <common:Product>{};
    }

    # Update In-force Product property
    #
    # + return - returns can be any of following types 
    # http:Ok (Product)
    # http:BadRequest (BadRequest)
    # http:Unauthorized (Unauthorized)
    # http:Forbidden (Forbidden)
    # http:NotFound (NotFound)
    # http:TooManyRequests (TooManyRequests)
    # http:InternalServerError (InternalServerError)
    isolated resource function put CustomerProductandServiceDirectory/[string customerproductandservicedirectoryid]/Product/[string productid]/Update(@http:Payload common:Product payload) returns common:Product|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        return <common:Product>{};
    }

    # Request Customer Product And Service Directory Entry
    #
    # + return - returns can be any of following types 
    # http:Ok (CustomerProductAndServiceDirectoryEntry)
    # http:BadRequest (BadRequest)
    # http:Unauthorized (Unauthorized)
    # http:Forbidden (Forbidden)
    # http:NotFound (NotFound)
    # http:TooManyRequests (TooManyRequests)
    # http:InternalServerError (InternalServerError)
    isolated resource function put CustomerProductandServiceDirectory/[string customerproductandservicedirectoryid]/Request(@http:Payload common:CustomerProductAndServiceDirectoryEntry payload) returns common:CustomerProductAndServiceDirectoryEntry|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        return <common:CustomerProductAndServiceDirectoryEntry>{};
    }

    # Execute In-force Service property
    #
    # + return - returns can be any of following types 
    # http:Ok (Service)
    # http:BadRequest (BadRequest)
    # http:Unauthorized (Unauthorized)
    # http:Forbidden (Forbidden)
    # http:NotFound (NotFound)
    # http:TooManyRequests (TooManyRequests)
    # http:InternalServerError (InternalServerError)
    isolated resource function put CustomerProductandServiceDirectory/[string customerproductandservicedirectoryid]/Service/[string serviceid]/Execute(@http:Payload common:Service payload) returns common:Service|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        return <common:Service>{};
    }

    # Request In-force Service property
    #
    # + return - returns can be any of following types 
    # http:Ok (Service)
    # http:BadRequest (BadRequest)
    # http:Unauthorized (Unauthorized)
    # http:Forbidden (Forbidden)
    # http:NotFound (NotFound)
    # http:TooManyRequests (TooManyRequests)
    # http:InternalServerError (InternalServerError)
    isolated resource function put CustomerProductandServiceDirectory/[string customerproductandservicedirectoryid]/Service/[string serviceid]/Request(@http:Payload common:Service payload) returns common:Service|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        return <common:Service>{};
    }

    # Update In-force Service property
    #
    # + return - returns can be any of following types 
    # http:Ok (Service)
    # http:BadRequest (BadRequest)
    # http:Unauthorized (Unauthorized)
    # http:Forbidden (Forbidden)
    # http:NotFound (NotFound)
    # http:TooManyRequests (TooManyRequests)
    # http:InternalServerError (InternalServerError)
    isolated resource function put CustomerProductandServiceDirectory/[string customerproductandservicedirectoryid]/Service/[string serviceid]/Update(@http:Payload common:Service payload) returns common:Service|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        return <common:Service>{};
    }

    # Update Customer Product And Service Directory Entry
    #
    # + return - returns can be any of following types 
    # http:Ok (CustomerProductAndServiceDirectoryEntry)
    # http:BadRequest (BadRequest)
    # http:Unauthorized (Unauthorized)
    # http:Forbidden (Forbidden)
    # http:NotFound (NotFound)
    # http:TooManyRequests (TooManyRequests)
    # http:InternalServerError (InternalServerError)
    isolated resource function put CustomerProductandServiceDirectory/[string customerproductandservicedirectoryid]/Update(@http:Payload common:CustomerProductAndServiceDirectoryEntry payload) returns common:CustomerProductAndServiceDirectoryEntry|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        return <common:CustomerProductAndServiceDirectoryEntry>{}; 
    }
};
