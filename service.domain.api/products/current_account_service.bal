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

http:Service currentAccountService =  service object {

    # Retrieve details about an amount block
    #
    # + return - returns can be any of following types 
    # http:Ok (AmountBlock)
    # http:BadRequest (BadRequest)
    # http:Unauthorized (Unauthorized)
    # http:Forbidden (Forbidden)
    # http:NotFound (NotFound)
    # http:TooManyRequests (TooManyRequests)
    # http:InternalServerError (InternalServerError)
    isolated resource function get CurrentAccount/[string currentaccountid]/AmountBlock/[string amountblockid]/Retrieve() returns products:AmountBlock|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        products:AmountBlock response = {};
        return response;
    }

    # ReBQ Retrieve details about a deposit transaction
    #
    # + return - returns can be any of following types 
    # http:Ok (Deposit)
    # http:BadRequest (BadRequest)
    # http:Unauthorized (Unauthorized)
    # http:Forbidden (Forbidden)
    # http:NotFound (NotFound)
    # http:TooManyRequests (TooManyRequests)
    # http:InternalServerError (InternalServerError)
    isolated resource function get CurrentAccount/[string currentaccountid]/Deposit/[string depositid]/Retrieve() returns products:Deposit|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        products:Deposit response = {};
        return response;
    }

    # ReBQ Retrieve details about interest applied to the account
    #
    # + return - returns can be any of following types 
    # http:Ok (Interest)
    # http:BadRequest (BadRequest)
    # http:Unauthorized (Unauthorized)
    # http:Forbidden (Forbidden)
    # http:NotFound (NotFound)
    # http:TooManyRequests (TooManyRequests)
    # http:InternalServerError (InternalServerError)
    isolated resource function get CurrentAccount/[string currentaccountid]/Interest/[string interestid]/Retrieve() returns common:Interest|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        common:Interest response = {};
        return response;
    }

    # Retrieve Details about Issued Device
    #
    # + return - returns can be any of following types 
    # http:Ok (IssuedDevice)
    # http:BadRequest (BadRequest)
    # http:Unauthorized (Unauthorized)
    # http:Forbidden (Forbidden)
    # http:NotFound (NotFound)
    # http:TooManyRequests (TooManyRequests)
    # http:InternalServerError (InternalServerError)
    isolated resource function get CurrentAccount/[string currentaccountid]/IssuedDevice/[string issueddeviceid]/Retrieve() returns products:IssuedDevice|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        products:IssuedDevice response = {};
        return response;
    }

    # ReBQ Retrieve details about a payment transaction or arrangement
    #
    # + return - returns can be any of following types 
    # http:Ok (Payment)
    # http:BadRequest (BadRequest)
    # http:Unauthorized (Unauthorized)
    # http:Forbidden (Forbidden)
    # http:NotFound (NotFound)
    # http:TooManyRequests (TooManyRequests)
    # http:InternalServerError (InternalServerError)
    isolated resource function get CurrentAccount/[string currentaccountid]/Payment/[string paymentid]/Retrieve() returns products:Payment|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        products:Payment response = {};
        return response;
    }

    # ReCR Retrieve information about a current account - either standard canned reports or selected instance attribute values
    #
    # + return - returns can be any of following types 
    # http:Ok (CurrentAccountFacility)
    # http:BadRequest (BadRequest)
    # http:Unauthorized (Unauthorized)
    # http:Forbidden (Forbidden)
    # http:NotFound (NotFound)
    # http:TooManyRequests (TooManyRequests)
    # http:InternalServerError (InternalServerError)
    isolated resource function get CurrentAccount/[string currentaccountid]/Retrieve() returns products:CurrentAccountFacility|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        
        do {
            json|http:ClientError responseFromServer;
            lock {
	            // Invoking the configured backend service
	            responseFromServer = check externalClient->get("/CurrentAccount/" + currentaccountid + "/Retrieve");
            }
            io:println("-----------------------------------------------------------------------------------------------");
            io:println("Received response from backends API:", "/CurrentAccount/" + currentaccountid + "/Retrieve");
            io:println("{\n" + 
                "   ProductInstanceReference: {...},\n" + 
                "   CurrentAccountNumber: {...},\n" + 
                "   CustomerReference: {...},\n" + 
                "   BankBranchLocationReference: {...},\n" + 
                "   AccountType: \"BusinessCurrentAccount\",\n" + 
                "   AccountCurrency: {...},\n" + 
                "   TaxReference: {...},\n" + 
                "   EntitlementOptionDefinition: {...},\n" + 
                "   EntitlementOptionSetting: {...},\n" + 
                "   RestrictionOptionDefinition: {...},\n" + 
                "   RestrictionOptionSetting: {...},\n" + 
                "   Associations: {...},\n" + 
                "   AssociationType: \"PartyIsOwnerOfAccount\",\n" + 
                "   AssociationObligationorEntitlement: {...},\n" + 
                "   AssociationReference: {...},\n" + 
                "   LinkedAccounts: {...},\n" + 
                "   LinkType: \"AccountIsParentAccountForAccount\",\n" + 
                "   AccountDetails: {...},\n" + 
                "   LimitType: \"Multilateral\",\n" + 
                "   LimitSettings: {...},\n" + 
                "   LimitValue: {...},\n" + 
                "   AccountDateType: \"OpeningDate\",\n" + 
                "   AccountDate: {...},\n" + 
                "   AccountBalance: {...},\n" + 
                "   AccountStatus: \"Enabled\"\n" + 
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
            products:CurrentAccountFacility|error transformedResponse = transformCurrentAccountRetrievalResponse(responseFromServer);

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

    # ReBQ Retrieve information about a service fee applied to the account
    #
    # + return - returns can be any of following types 
    # http:Ok (ServiceFee)
    # http:BadRequest (BadRequest)
    # http:Unauthorized (Unauthorized)
    # http:Forbidden (Forbidden)
    # http:NotFound (NotFound)
    # http:TooManyRequests (TooManyRequests)
    # http:InternalServerError (InternalServerError)
    isolated resource function get CurrentAccount/[string currentaccountid]/ServiceFee/[string servicefeeid]/Retrieve() returns common:ServiceFee|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        common:ServiceFee response = {};
        return response;
    }

    # ReBQ Retrieve details about a sweep facility or specific sweep transaction
    #
    # + return - returns can be any of following types 
    # http:Ok (Sweep)
    # http:BadRequest (BadRequest)
    # http:Unauthorized (Unauthorized)
    # http:Forbidden (Forbidden)
    # http:NotFound (NotFound)
    # http:TooManyRequests (TooManyRequests)
    # http:InternalServerError (InternalServerError)
    isolated resource function get CurrentAccount/[string currentaccountid]/Sweep/[string sweepid]/Retrieve() returns products:Sweep|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        products:Sweep response = {};
        return response;
    }

    # ReBQ Retrieve details about a withdrawal transaction
    #
    # + return - returns can be any of following types 
    # http:Ok (Withdrawal)
    # http:BadRequest (BadRequest)
    # http:Unauthorized (Unauthorized)
    # http:Forbidden (Forbidden)
    # http:NotFound (NotFound)
    # http:TooManyRequests (TooManyRequests)
    # http:InternalServerError (InternalServerError)
    isolated resource function get CurrentAccount/[string currentaccountid]/Withdrawal/[string withdrawalid]/Retrieve() returns products:Withdrawal|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        products:Withdrawal response = {};
        return response;
    }

    # InCR Initiate A new Current Account
    #
    # + return - returns can be any of following types 
    # http:Ok (CurrentAccountFacility)
    # http:BadRequest (BadRequest)
    # http:Unauthorized (Unauthorized)
    # http:Forbidden (Forbidden)
    # http:NotFound (NotFound)
    # http:TooManyRequests (TooManyRequests)
    # http:InternalServerError (InternalServerError)
    isolated resource function post CurrentAccount/Initiate(@http:Payload products:CurrentAccountFacility payload) returns products:CurrentAccountFacilityOk|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        products:CurrentAccountFacilityOk response = {body:{}};
        return response;
    }

    # Initiate an amount block
    #
    # + return - returns can be any of following types 
    # http:Ok (AmountBlock)
    # http:BadRequest (BadRequest)
    # http:Unauthorized (Unauthorized)
    # http:Forbidden (Forbidden)
    # http:NotFound (NotFound)
    # http:TooManyRequests (TooManyRequests)
    # http:InternalServerError (InternalServerError)
    isolated resource function post CurrentAccount/[string currentaccountid]/AmountBlock/Initiate(@http:Payload products:AmountBlock payload) returns products:AmountBlockOk|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        products:AmountBlockOk response = {body:{}};
        return response;
    }

    # InBQ Initialize deposit transaction
    #
    # + return - returns can be any of following types 
    # http:Ok (Deposit)
    # http:BadRequest (BadRequest)
    # http:Unauthorized (Unauthorized)
    # http:Forbidden (Forbidden)
    # http:NotFound (NotFound)
    # http:TooManyRequests (TooManyRequests)
    # http:InternalServerError (InternalServerError)
    isolated resource function post CurrentAccount/[string currentaccountid]/Deposit/Initiate(@http:Payload products:Deposit payload) returns products:DepositOk|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        products:DepositOk response = {body:{}};
        return response;
    }

    # Initiate Provision of Issued Device
    #
    # + return - returns can be any of following types 
    # http:Ok (IssuedDevice)
    # http:BadRequest (BadRequest)
    # http:Unauthorized (Unauthorized)
    # http:Forbidden (Forbidden)
    # http:NotFound (NotFound)
    # http:TooManyRequests (TooManyRequests)
    # http:InternalServerError (InternalServerError)
    isolated resource function post CurrentAccount/[string currentaccountid]/IssuedDevice/Initiate(@http:Payload products:IssuedDevice payload) returns products:IssuedDeviceOk|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        products:IssuedDeviceOk response = {body:{}};
        return response;
    }

    # InBQ Initialize a payment transaction
    #
    # + return - returns can be any of following types 
    # http:Ok (Payment)
    # http:BadRequest (BadRequest)
    # http:Unauthorized (Unauthorized)
    # http:Forbidden (Forbidden)
    # http:NotFound (NotFound)
    # http:TooManyRequests (TooManyRequests)
    # http:InternalServerError (InternalServerError)
    isolated resource function post CurrentAccount/[string currentaccountid]/Payment/Initiate(@http:Payload products:Payment payload) returns products:PaymentOk|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        products:PaymentOk response = {body:{}};
        return response;
    }

    # InBQ Initiate service fees against an account
    #
    # + return - returns can be any of following types 
    # http:Ok (ServiceFee)
    # http:BadRequest (BadRequest)
    # http:Unauthorized (Unauthorized)
    # http:Forbidden (Forbidden)
    # http:NotFound (NotFound)
    # http:TooManyRequests (TooManyRequests)
    # http:InternalServerError (InternalServerError)
    isolated resource function post CurrentAccount/[string currentaccountid]/ServiceFee/Initiate(@http:Payload common:ServiceFee payload) returns common:ServiceFeeOk|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        common:ServiceFeeOk response = {body:{}};
        return response;
    }

    # InBQ Set up an account sweep
    #
    # + return - returns can be any of following types 
    # http:Ok (Sweep)
    # http:BadRequest (BadRequest)
    # http:Unauthorized (Unauthorized)
    # http:Forbidden (Forbidden)
    # http:NotFound (NotFound)
    # http:TooManyRequests (TooManyRequests)
    # http:InternalServerError (InternalServerError)
    isolated resource function post CurrentAccount/[string currentaccountid]/Sweep/Initiate(@http:Payload products:Sweep payload) returns products:SweepOk|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        products:SweepOk response = {body:{}};
        return response;
    }

    # InBQ Initialize withdrawal transaction
    #
    # + return - returns can be any of following types 
    # http:Ok (Withdrawal)
    # http:BadRequest (BadRequest)
    # http:Unauthorized (Unauthorized)
    # http:Forbidden (Forbidden)
    # http:NotFound (NotFound)
    # http:TooManyRequests (TooManyRequests)
    # http:InternalServerError (InternalServerError)
    isolated resource function post CurrentAccount/[string currentaccountid]/Withdrawal/Initiate(@http:Payload products:Withdrawal payload) returns products:WithdrawalOk|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        products:WithdrawalOk response = {body:{}};
        return response;
    }

    # Update details of an amount block
    #
    # + return - returns can be any of following types 
    # http:Ok (AmountBlock)
    # http:BadRequest (BadRequest)
    # http:Unauthorized (Unauthorized)
    # http:Forbidden (Forbidden)
    # http:NotFound (NotFound)
    # http:TooManyRequests (TooManyRequests)
    # http:InternalServerError (InternalServerError)
    isolated resource function put CurrentAccount/[string currentaccountid]/AmountBlock/[string amountblockid]/Update(@http:Payload products:AmountBlock payload) returns products:AmountBlock|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        products:AmountBlock response = {};
        return response;
    }

    # Execute Authorization of Booking
    #
    # + return - returns can be any of following types 
    # http:Ok (BookingAuthorization)
    # http:BadRequest (BadRequest)
    # http:Unauthorized (Unauthorized)
    # http:Forbidden (Forbidden)
    # http:NotFound (NotFound)
    # http:TooManyRequests (TooManyRequests)
    # http:InternalServerError (InternalServerError)
    isolated resource function put CurrentAccount/[string currentaccountid]/BookingAuthorization/[string bookingauthorizationid]/Execute(@http:Payload products:BookingAuthorization payload) returns products:BookingAuthorization|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        products:BookingAuthorization response = {};
        return response;
    }

    # CoCR Control the processing of an current account
    #
    # + return - returns can be any of following types 
    # http:Ok (CurrentAccountFacility)
    # http:BadRequest (BadRequest)
    # http:Unauthorized (Unauthorized)
    # http:Forbidden (Forbidden)
    # http:NotFound (NotFound)
    # http:TooManyRequests (TooManyRequests)
    # http:InternalServerError (InternalServerError)
    isolated resource function put CurrentAccount/[string currentaccountid]/Control(@http:Payload products:CurrentAccountFacility payload) returns products:CurrentAccountFacility|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        products:CurrentAccountFacility response = {};
        return response;
    }

    # ExBQ Execute a deposit transaction
    #
    # + return - returns can be any of following types 
    # http:Ok (Deposit)
    # http:BadRequest (BadRequest)
    # http:Unauthorized (Unauthorized)
    # http:Forbidden (Forbidden)
    # http:NotFound (NotFound)
    # http:TooManyRequests (TooManyRequests)
    # http:InternalServerError (InternalServerError)
    isolated resource function put CurrentAccount/[string currentaccountid]/Deposit/[string depositid]/Execute(@http:Payload products:Deposit payload) returns products:Deposit|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        products:Deposit response = {};
        return response;
    }

    # UpBQ Update or correct a deposit transaction
    #
    # + return - returns can be any of following types 
    # http:Ok (Deposit)
    # http:BadRequest (BadRequest)
    # http:Unauthorized (Unauthorized)
    # http:Forbidden (Forbidden)
    # http:NotFound (NotFound)
    # http:TooManyRequests (TooManyRequests)
    # http:InternalServerError (InternalServerError)
    isolated resource function put CurrentAccount/[string currentaccountid]/Deposit/[string depositid]/Update(@http:Payload products:Deposit payload) returns products:Deposit|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        products:Deposit response = {};
        return response;
    }

    # ExBQ Execute Apply Interest
    #
    # + return - returns can be any of following types 
    # http:Ok (Interest)
    # http:BadRequest (BadRequest)
    # http:Unauthorized (Unauthorized)
    # http:Forbidden (Forbidden)
    # http:NotFound (NotFound)
    # http:TooManyRequests (TooManyRequests)
    # http:InternalServerError (InternalServerError)
    isolated resource function put CurrentAccount/[string currentaccountid]/Interest/[string interestid]/Execute(@http:Payload common:Interest payload) returns common:Interest|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        common:Interest response = {};
        return response;
    }

    # Update Details of Issued Device Allocated to This Account
    #
    # + return - returns can be any of following types 
    # http:Ok (IssuedDevice)
    # http:BadRequest (BadRequest)
    # http:Unauthorized (Unauthorized)
    # http:Forbidden (Forbidden)
    # http:NotFound (NotFound)
    # http:TooManyRequests (TooManyRequests)
    # http:InternalServerError (InternalServerError)
    isolated resource function put CurrentAccount/[string currentaccountid]/IssuedDevice/[string issueddeviceid]/Update(@http:Payload products:IssuedDevice payload) returns products:IssuedDevice|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        products:IssuedDevice response = {};
        return response;
    }

    # EcBQ Verify/approve a scheduled repeating payment
    #
    # + return - returns can be any of following types 
    # http:Ok (Payment)
    # http:BadRequest (BadRequest)
    # http:Unauthorized (Unauthorized)
    # http:Forbidden (Forbidden)
    # http:NotFound (NotFound)
    # http:TooManyRequests (TooManyRequests)
    # http:InternalServerError (InternalServerError)
    isolated resource function put CurrentAccount/[string currentaccountid]/Payment/[string paymentid]/Exchange(@http:Payload products:Payment payload) returns products:Payment|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        products:Payment response = {};
        return response;   
    }

    # ExBQ Trigger a payment for a repeating payment set up
    #
    # + return - returns can be any of following types 
    # http:Ok (Payment)
    # http:BadRequest (BadRequest)
    # http:Unauthorized (Unauthorized)
    # http:Forbidden (Forbidden)
    # http:NotFound (NotFound)
    # http:TooManyRequests (TooManyRequests)
    # http:InternalServerError (InternalServerError)
    isolated resource function put CurrentAccount/[string currentaccountid]/Payment/[string paymentid]/Execute(@http:Payload products:Payment payload) returns products:Payment|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        products:Payment response = {};
        return response;
    }

    # UpBQ Update a payment transaction configuration or specific transaction
    #
    # + return - returns can be any of following types 
    # http:Ok (Payment)
    # http:BadRequest (BadRequest)
    # http:Unauthorized (Unauthorized)
    # http:Forbidden (Forbidden)
    # http:NotFound (NotFound)
    # http:TooManyRequests (TooManyRequests)
    # http:InternalServerError (InternalServerError)
    isolated resource function put CurrentAccount/[string currentaccountid]/Payment/[string paymentid]/Update(@http:Payload products:Payment payload) returns products:Payment|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        products:Payment response = {};
        return response;    
    }

    # ExBQ Apply a service fee to the account
    #
    # + return - returns can be any of following types 
    # http:Ok (ServiceFee)
    # http:BadRequest (BadRequest)
    # http:Unauthorized (Unauthorized)
    # http:Forbidden (Forbidden)
    # http:NotFound (NotFound)
    # http:TooManyRequests (TooManyRequests)
    # http:InternalServerError (InternalServerError)
    isolated resource function put CurrentAccount/[string currentaccountid]/ServiceFee/[string servicefeeid]/Execute(@http:Payload common:ServiceFee payload) returns common:ServiceFee|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        common:ServiceFee response = {};
        return response;
    }

    # Update details about an applied service fee
    #
    # + return - returns can be any of following types 
    # http:Ok (ServiceFee)
    # http:BadRequest (BadRequest)
    # http:Unauthorized (Unauthorized)
    # http:Forbidden (Forbidden)
    # http:NotFound (NotFound)
    # http:TooManyRequests (TooManyRequests)
    # http:InternalServerError (InternalServerError)
    isolated resource function put CurrentAccount/[string currentaccountid]/ServiceFee/[string servicefeeid]/Update(@http:Payload common:ServiceFee payload) returns common:ServiceFee|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        common:ServiceFee response = {};
        return response;
    }

    # ExBQ Trigger an account sweep transaction
    #
    # + return - returns can be any of following types 
    # http:Ok (Sweep)
    # http:BadRequest (BadRequest)
    # http:Unauthorized (Unauthorized)
    # http:Forbidden (Forbidden)
    # http:NotFound (NotFound)
    # http:TooManyRequests (TooManyRequests)
    # http:InternalServerError (InternalServerError)
    isolated resource function put CurrentAccount/[string currentaccountid]/Sweep/[string sweepid]/Execute(@http:Payload products:Sweep payload) returns products:Sweep|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        products:Sweep response = {};
        return response;
    }

    # UpBQ Update details of an existing account sweep
    #
    # + return - returns can be any of following types 
    # http:Ok (Sweep)
    # http:BadRequest (BadRequest)
    # http:Unauthorized (Unauthorized)
    # http:Forbidden (Forbidden)
    # http:NotFound (NotFound)
    # http:TooManyRequests (TooManyRequests)
    # http:InternalServerError (InternalServerError)
    isolated resource function put CurrentAccount/[string currentaccountid]/Sweep/[string sweepid]/Update(@http:Payload products:Sweep payload) returns products:Sweep|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        products:Sweep response = {};
        return response;
    }

    # UpCR Update details of a current account
    #
    # + return - returns can be any of following types 
    # http:Ok (CurrentAccountFacility)
    # http:BadRequest (BadRequest)
    # http:Unauthorized (Unauthorized)
    # http:Forbidden (Forbidden)
    # http:NotFound (NotFound)
    # http:TooManyRequests (TooManyRequests)
    # http:InternalServerError (InternalServerError)
    isolated resource function put CurrentAccount/[string currentaccountid]/Update(@http:Payload products:CurrentAccountFacility payload) returns products:CurrentAccountFacility|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        products:CurrentAccountFacility response = {};
        return response;
    }

    # ExBQ Execute a withdrawal transaction
    #
    # + return - returns can be any of following types 
    # http:Ok (Withdrawal)
    # http:BadRequest (BadRequest)
    # http:Unauthorized (Unauthorized)
    # http:Forbidden (Forbidden)
    # http:NotFound (NotFound)
    # http:TooManyRequests (TooManyRequests)
    # http:InternalServerError (InternalServerError)
    isolated resource function put CurrentAccount/[string currentaccountid]/Withdrawal/[string withdrawalid]/Execute(@http:Payload products:Withdrawal payload) returns products:Withdrawal|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        products:Withdrawal response = {};
        return response;
    }

    # UpBQ Update or correct a withdrawal transaction
    #
    # + return - returns can be any of following types 
    # http:Ok (Withdrawal)
    # http:BadRequest (BadRequest)
    # http:Unauthorized (Unauthorized)
    # http:Forbidden (Forbidden)
    # http:NotFound (NotFound)
    # http:TooManyRequests (TooManyRequests)
    # http:InternalServerError (InternalServerError)
    isolated resource function put CurrentAccount/[string currentaccountid]/Withdrawal/[string withdrawalid]/Update(@http:Payload products:Withdrawal payload) returns products:Withdrawal|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        products:Withdrawal response = {};
        return response;
    }
};
