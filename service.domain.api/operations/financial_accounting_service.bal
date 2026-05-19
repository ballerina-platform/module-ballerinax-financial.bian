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

configurable string financialAccountingInitiateUrl = ?;

http:Service financialAccountingService =  service object {

    # ReBQ Retrieve details of postings from the account
    #
    # + return - returns can be any of following types 
    # http:Ok (LedgerPosting)
    # http:BadRequest (BadRequest)
    # http:Unauthorized (Unauthorized)
    # http:Forbidden (Forbidden)
    # http:NotFound (NotFound)
    # http:TooManyRequests (TooManyRequests)
    # http:InternalServerError (InternalServerError)
    isolated resource function get FinancialAccounting/[string financialaccountingid]/LedgerPosting/[string ledgerpostingid]/Retrieve() returns operations:LedgerPosting|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        return <operations:LedgerPosting>{};
    }

    # ReCR Retrieve information about the log
    #
    # + return - returns can be any of following types 
    # http:Ok (FinancialBookingLog)
    # http:BadRequest (BadRequest)
    # http:Unauthorized (Unauthorized)
    # http:Forbidden (Forbidden)
    # http:NotFound (NotFound)
    # http:TooManyRequests (TooManyRequests)
    # http:InternalServerError (InternalServerError)
    isolated resource function get FinancialAccounting/[string financialaccountingid]/Retrieve() returns operations:FinancialBookingLog|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        return <operations:FinancialBookingLog>{};
    }

    # InCR Initiate a financial accounting log
    #
    # + return - returns can be any of following types 
    # http:Ok (FinancialBookingLog)
    # http:BadRequest (BadRequest)
    # http:Unauthorized (Unauthorized)
    # http:Forbidden (Forbidden)
    # http:NotFound (NotFound)
    # http:TooManyRequests (TooManyRequests)
    # http:InternalServerError (InternalServerError)
    isolated resource function post FinancialAccounting/Initiate(@http:Payload operations:FinancialBookingLog payload) returns operations:FinancialBookingLogOk|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        
        do {
            json|http:ClientError responseFromServer;
            lock {
	            responseFromServer = check externalClient->get(financialAccountingInitiateUrl);
            }
            io:println("-----------------------------------------------------------------------------------------------");
            io:println("Received response from backends API: /FinancialAccounting/Initiate");
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
            operations:FinancialBookingLog|error financialBookingLog = transfromFinancialAccountingInitiateResponse(responseFromServer);
            //
            if (financialBookingLog is error) {
                io:println("Error response received from backend:", financialBookingLog);
                common:HTTPError httpError = {
                    status_code: "400",
                    status: "Internal Server Error",
                    message: financialBookingLog.message()
                };
                common:HTTPErrorInternalServerError errorResponse = {
                    body: httpError
                };
                return errorResponse;
            }
            return <operations:FinancialBookingLogOk>{ body: financialBookingLog };
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

    # CoCR Control the processing of the log (e.g. suspend)
    #
    # + return - returns can be any of following types 
    # http:Ok (FinancialBookingLog)
    # http:BadRequest (BadRequest)
    # http:Unauthorized (Unauthorized)
    # http:Forbidden (Forbidden)
    # http:NotFound (NotFound)
    # http:TooManyRequests (TooManyRequests)
    # http:InternalServerError (InternalServerError)
    isolated resource function put FinancialAccounting/[string financialaccountingid]/Control(@http:Payload operations:FinancialBookingLog payload) returns operations:FinancialBookingLog|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        return <operations:FinancialBookingLog>{};
    }

    # CaBQ Post to the financial account
    #
    # + return - returns can be any of following types 
    # http:Ok (LedgerPosting)
    # http:BadRequest (BadRequest)
    # http:Unauthorized (Unauthorized)
    # http:Forbidden (Forbidden)
    # http:NotFound (NotFound)
    # http:TooManyRequests (TooManyRequests)
    # http:InternalServerError (InternalServerError)
    isolated resource function put FinancialAccounting/[string financialaccountingid]/LedgerPosting/[string ledgerpostingid]/Capture(@http:Payload operations:LedgerPosting payload) returns operations:LedgerPosting|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        return <operations:LedgerPosting>{};
    }

    # UpBQ Update details of a posting (repair)
    #
    # + return - returns can be any of following types 
    # http:Ok (LedgerPosting)
    # http:BadRequest (BadRequest)
    # http:Unauthorized (Unauthorized)
    # http:Forbidden (Forbidden)
    # http:NotFound (NotFound)
    # http:TooManyRequests (TooManyRequests)
    # http:InternalServerError (InternalServerError)
    isolated resource function put FinancialAccounting/[string financialaccountingid]/LedgerPosting/[string ledgerpostingid]/Update(@http:Payload operations:LedgerPosting payload) returns operations:LedgerPosting|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        return <operations:LedgerPosting>{};
    }

    # UpCR Update details for an active financial account
    #
    # + return - returns can be any of following types 
    # http:Ok (FinancialBookingLog)
    # http:BadRequest (BadRequest)
    # http:Unauthorized (Unauthorized)
    # http:Forbidden (Forbidden)
    # http:NotFound (NotFound)
    # http:TooManyRequests (TooManyRequests)
    # http:InternalServerError (InternalServerError)
    isolated resource function put FinancialAccounting/[string financialaccountingid]/Update(@http:Payload operations:FinancialBookingLog payload) returns operations:FinancialBookingLog|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        return <operations:FinancialBookingLog>{};
    }
};
