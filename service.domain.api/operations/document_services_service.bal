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
import ballerina/io;

configurable string documentServicesInitiateUrl = ?;

http:Service documentServicesService =  service object {

    # Notify Document Service Procedure
    #
    # + return - returns can be any of following types 
    # http:Ok (DocumentServiceProcedure)
    # http:BadRequest (BadRequest)
    # http:Unauthorized (Unauthorized)
    # http:Forbidden (Forbidden)
    # http:NotFound (NotFound)
    # http:TooManyRequests (TooManyRequests)
    # http:InternalServerError (InternalServerError)
    resource function get DocumentServices/[string documentservicesid]/Notify() returns operations:DocumentServiceProcedure|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        return <operations:DocumentServiceProcedure>{};
    }

    # Initiate Document Service Procedure
    #
    # + return - returns can be any of following types 
    # http:Ok (DocumentServiceProcedure)
    # http:BadRequest (BadRequest)
    # http:Unauthorized (Unauthorized)
    # http:Forbidden (Forbidden)
    # http:NotFound (NotFound)
    # http:TooManyRequests (TooManyRequests)
    # http:InternalServerError (InternalServerError)
    resource function post DocumentServices/Initiate(@http:Payload operations:DocumentServiceProcedure payload) returns operations:DocumentServiceProcedureOk|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        
        do {
            json|http:ClientError responseFromServer;
            lock {
	            responseFromServer = check externalClient->get(documentServicesInitiateUrl);
            }
            io:println("-----------------------------------------------------------------------------------------------");
            io:println("Received response from backends API: /DocumentServices/Initiate");
            io:println("{\n"+
                "   TransactionLogType: \"FinancialTransaction\",\n"+
                "   ProductInstanceReference: {...},\n"+
                "   CustomerReference: {...},\n"+
                "   CounterpartyReference: {...},\n"+
                "   BaseCurrency: {...},\n"+
                "   InterestApplicationRecord: {...},\n"+
                "   InterestTransaction: {...},\n"+
                "   TransactionDescription: {...},\n"+
                "   TransactionRateType: \"Fixed\",\n"+
                "   TransactionInterestCharge: {...},\n"+
                "   ManagedPositionLimits: {...},\n"+
                "   PositionLimitType: \"Multilateral\",\n"+
                "   PositionLimitSettings: {...},\n"+
                "   PositionLimitValue: {...},\n"+
                "   AmountBlock: {...},\n"+
                "   AmountBlockType: \"Principal\",\n"+
                "   Priority: \"Urgent\",\n"+
                "   Amount: {...},\n"+
                "   DateType: \"MaturityDate\",\n"+
                "   Date: {...},\n"+
                "   InitiationDate: {...},\n"+
                "   Status: {...}\n"+
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
            // the defined BIAN data model
            operations:DocumentServiceProcedure|error documentServiceProcedure = transfromDocumentServicesInitiateResponse(responseFromServer);
            //
            if (documentServiceProcedure is error) {
                io:println("Error response received from backend:", documentServiceProcedure);
                common:HTTPError httpError = {
                    status_code: "400",
                    status: "Internal Server Error",
                    message: documentServiceProcedure.message()
                };
                common:HTTPErrorInternalServerError errorResponse = {
                    body: httpError
                };
                return errorResponse;
            }
            return <operations:DocumentServiceProcedureOk>{ body: documentServiceProcedure };
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

    # Control Document Service Procedure
    #
    # + return - returns can be any of following types 
    # http:Ok (DocumentServiceProcedure)
    # http:BadRequest (BadRequest)
    # http:Unauthorized (Unauthorized)
    # http:Forbidden (Forbidden)
    # http:NotFound (NotFound)
    # http:TooManyRequests (TooManyRequests)
    # http:InternalServerError (InternalServerError)
    resource function put DocumentServices/[string documentservicesid]/Control(@http:Payload operations:DocumentServiceProcedure payload) returns operations:DocumentServiceProcedure|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        return <operations:DocumentServiceProcedure>{};
    }

    # Exchange Document Service Procedure
    #
    # + return - returns can be any of following types 
    # http:Ok (DocumentServiceProcedure)
    # http:BadRequest (BadRequest)
    # http:Unauthorized (Unauthorized)
    # http:Forbidden (Forbidden)
    # http:NotFound (NotFound)
    # http:TooManyRequests (TooManyRequests)
    # http:InternalServerError (InternalServerError)
    resource function put DocumentServices/[string documentservicesid]/Exchange(@http:Payload operations:DocumentServiceProcedure payload) returns operations:DocumentServiceProcedure|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        return <operations:DocumentServiceProcedure>{};
    }

    # Execute Document Service Procedure
    #
    # + return - returns can be any of following types 
    # http:Ok (DocumentServiceProcedure)
    # http:BadRequest (BadRequest)
    # http:Unauthorized (Unauthorized)
    # http:Forbidden (Forbidden)
    # http:NotFound (NotFound)
    # http:TooManyRequests (TooManyRequests)
    # http:InternalServerError (InternalServerError)
    resource function put DocumentServices/[string documentservicesid]/Execute(@http:Payload operations:DocumentServiceProcedure payload) returns operations:DocumentServiceProcedure|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        return <operations:DocumentServiceProcedure>{};
    }

    # Request Document Service Procedure
    #
    # + return - returns can be any of following types 
    # http:Ok (DocumentServiceProcedure)
    # http:BadRequest (BadRequest)
    # http:Unauthorized (Unauthorized)
    # http:Forbidden (Forbidden)
    # http:NotFound (NotFound)
    # http:TooManyRequests (TooManyRequests)
    # http:InternalServerError (InternalServerError)
    resource function put DocumentServices/[string documentservicesid]/Request(@http:Payload operations:DocumentServiceProcedure payload) returns operations:DocumentServiceProcedure|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        return <operations:DocumentServiceProcedure>{};
    }
};
