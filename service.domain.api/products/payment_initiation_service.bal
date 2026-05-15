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

import ballerinax/financial.bian.attribute.groups.common as common;
import ballerinax/financial.bian.attribute.groups.products as products;
import ballerina/http;
import ballerina/io;

http:Service paymentInitiationService =  service object {

    # ReBQ Retrieve details about a payment transaction compliance check
    #
    # + return - returns can be any of following types 
    # http:Ok (Compliance)
    # http:BadRequest (BadRequest)
    # http:Unauthorized (Unauthorized)
    # http:Forbidden (Forbidden)
    # http:NotFound (NotFound)
    # http:TooManyRequests (TooManyRequests)
    # http:InternalServerError (InternalServerError)
    resource function get PaymentInitiation/[string paymentinitiationid]/Compliance/[string complianceid]/Retrieve() returns products:Compliance|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        products:Compliance compliance = {"body": {}};
        return compliance; // TODO: Implement the logic
    }

    # ReBQ Retrieve details about a payment transaction funds available
    #
    # + return - returns can be any of following types 
    # http:Ok (FundingCheck)
    # http:BadRequest (BadRequest)
    # http:Unauthorized (Unauthorized)
    # http:Forbidden (Forbidden)
    # http:NotFound (NotFound)
    # http:TooManyRequests (TooManyRequests)
    # http:InternalServerError (InternalServerError)
    resource function get PaymentInitiation/[string paymentinitiationid]/FundingCheck/[string fundingcheckid]/Retrieve() returns products:FundingCheck|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        products:FundingCheck fundingCheck = {"body": {}};
        return fundingCheck; // TODO: Implement the logic
    }

    # ReBQ Retrieve details about the payment order initiation
    #
    # + return - returns can be any of following types 
    # http:Ok (OrderInitiation)
    # http:BadRequest (BadRequest)
    # http:Unauthorized (Unauthorized)
    # http:Forbidden (Forbidden)
    # http:NotFound (NotFound)
    # http:TooManyRequests (TooManyRequests)
    # http:InternalServerError (InternalServerError)
    resource function get PaymentInitiation/[string paymentinitiationid]/OrderInitiation/[string orderinitiationid]/Retrieve() returns products:OrderInitiation|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        products:OrderInitiation orderInitiation = {"body": {}};
        return orderInitiation; // TODO: Implement the logic
    }

    # ReCR Retrieve details about a payment transaction
    #
    # + return - returns can be any of following types 
    # http:Ok (PaymentInitiationTransaction)
    # http:BadRequest (BadRequest)
    # http:Unauthorized (Unauthorized)
    # http:Forbidden (Forbidden)
    # http:NotFound (NotFound)
    # http:TooManyRequests (TooManyRequests)
    # http:InternalServerError (InternalServerError)
    resource function get PaymentInitiation/[string paymentinitiationid]/Retrieve() returns products:PaymentInitiationTransaction|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        products:PaymentInitiationTransaction paymentTransaction = {"body": {}};
        return paymentTransaction; // TODO: Implement the logic
    }

    # InCR Initiate a payment transaction
    #
    # + return - returns can be any of following types 
    # http:Ok (PaymentInitiationTransaction)
    # http:BadRequest (BadRequest)
    # http:Unauthorized (Unauthorized)
    # http:Forbidden (Forbidden)
    # http:NotFound (NotFound)
    # http:TooManyRequests (TooManyRequests)
    # http:InternalServerError (InternalServerError)
    resource function post PaymentInitiation/Initiate(@http:Payload products:PaymentInitiationTransaction payload) returns products:PaymentInitiationTransaction|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        do {
            // Invoking the configured backend service
            json|http:ClientError responseFromServer;
            lock {
	            // Invoking the configured backend service
	            responseFromServer = check externalClient->get("/PaymentInitiation/Initiate");
            }
            if (responseFromServer is http:ClientError) {
                io:println("Error response received from backend for API: /PaymentInitiation/Initiate");
                common:HTTPErrorInternalServerError httpError = {
                    body: {
                        status_code: "500",
                        status: "Internal Server Error",
                        message: "An error occurred while processing the request."
                    }
                };
                return httpError;
            }
            io:println("-----------------------------------------------------------------------------------------------");
            io:println("Received response from backends API: PaymentInitiation/Initiate");
            io:println("{\n" + 
            "   PaymentTransactionType: \"FinancialTransaction\",\n" + 
            "   RecurringPaymentRecord: {...},\n" + 
            "   RecurringPaymentCustomerReference: {...},\n" + 
            "   RecurringPaymentReference: {...},\n" + 
            "   CustomerReference: {...},\n" + 
            "   PaymentTransaction: {...},\n" + 
            "   PayerReference: {...},\n" + 
            "   PayerBankReference: {...},\n" + 
            "   PayerProductInstanceReference: {...},\n" + 
            "   PayeeReference: {...},\n" + 
            "   PayeeBankReference: {...},\n" + 
            "   PayeeProductInstanceReference: {...},\n" + 
            "   Amount: {...},\n" + 
            "   Currency: {...},\n" + 
            "   DateType: \"MaturityDate\",\n" + 
            "   Date: {...},\n" + 
            "   PaymentFeesCharges: {...},\n" + 
            "   PaymentMechanism: \"ACH\",\n" + 
            "   PaymentPurpose: {...},\n" + 
            "   DocumentDirectoryEntryInstanceReference: {...},\n" + 
            "   DocumentContent: {...}\n" + 
            "}");
            io:println("-----------------------------------------------------------------------------------------------");
            io:println(" ");
        
            // Transform the response from backend to match the defined return type
            products:PaymentInitiationTransaction transformedResponse = check transformPaymentInitiationInitiateResponse(responseFromServer);
            return transformedResponse;
        } on fail error err {
            io:println("Error occurred:", err.message());
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

    # EcBQ Verify or accept the payment transaction (results in a payment order)
    #
    # + return - returns can be any of following types 
    # http:Ok (OrderInitiation)
    # http:BadRequest (BadRequest)
    # http:Unauthorized (Unauthorized)
    # http:Forbidden (Forbidden)
    # http:NotFound (NotFound)
    # http:TooManyRequests (TooManyRequests)
    # http:InternalServerError (InternalServerError)
    resource function put PaymentInitiation/[string paymentinitiationid]/OrderInitiation/[string orderinitiationid]/Exchange(@http:Payload products:OrderInitiation payload) returns products:OrderInitiation|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        products:OrderInitiation orderInitiation = {"body": {}};
        return orderInitiation; // TODO: Implement the logic
    }

    # UpCR Update details of a payment transaction instruction
    #
    # + return - returns can be any of following types 
    # http:Ok (PaymentInitiationTransaction)
    # http:BadRequest (BadRequest)
    # http:Unauthorized (Unauthorized)
    # http:Forbidden (Forbidden)
    # http:NotFound (NotFound)
    # http:TooManyRequests (TooManyRequests)
    # http:InternalServerError (InternalServerError)
    resource function put PaymentInitiation/[string paymentinitiationid]/Update(@http:Payload products:PaymentInitiationTransaction payload) returns products:PaymentInitiationTransaction|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        do {
            // Invoking the configured backend service
            json|http:ClientError responseFromServer;
            lock {
	            // Invoking the configured backend service
	            responseFromServer = check externalClient->get("/PaymentInitiation/" + paymentinitiationid + "/Update");
            }
            io:println("-----------------------------------------------------------------------------------------------");
            io:println("Received response from backends API: /PaymentInitiation/[string paymentinitiationid]/Update");
            io:println("{\n" + 
            "   PaymentTransactionType: \"FinancialTransaction\",\n" + 
            "   RecurringPaymentRecord: {...},\n" + 
            "   RecurringPaymentCustomerReference: {...},\n" + 
            "   RecurringPaymentReference: {...},\n" + 
            "   CustomerReference: {...},\n" + 
            "   PaymentTransaction: {...},\n" + 
            "   PayerReference: {...},\n" + 
            "   PayerBankReference: {...},\n" + 
            "   PayerProductInstanceReference: {...},\n" + 
            "   PayeeReference: {...},\n" + 
            "   PayeeBankReference: {...},\n" + 
            "   PayeeProductInstanceReference: {...},\n" + 
            "   Amount: {...},\n" + 
            "   Currency: {...},\n" + 
            "   DateType: \"MaturityDate\",\n" + 
            "   Date: {...},\n" + 
            "   PaymentFeesCharges: {...},\n" + 
            "   PaymentMechanism: \"ACH\",\n" + 
            "   PaymentPurpose: {...},\n" + 
            "   DocumentDirectoryEntryInstanceReference: {...},\n" + 
            "   DocumentContent: {...}\n" + 
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
            // Transform the response from backend to match the defined return type
            products:PaymentInitiationTransaction transformedResponse = check transformPaymentInitiationUpdateResponse(responseFromServer);
            return transformedResponse;
        } on fail error err {
            io:println("Error occurred:", err.message());
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
};
