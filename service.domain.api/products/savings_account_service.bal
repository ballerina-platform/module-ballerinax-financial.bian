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

configurable string savingsAccountInitiateUrl = ?;

http:Service savingsAccountService =  service object {

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
    resource function get SavingsAccount/[string savingsaccountid]/AmountBlock/[string amountblockid]/Retrieve() returns products:AmountBlock|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        return <products:AmountBlock>{};
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
    resource function get SavingsAccount/[string savingsaccountid]/Deposit/[string depositid]/Retrieve() returns products:Deposit|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        return <products:Deposit>{};
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
    resource function get SavingsAccount/[string savingsaccountid]/Interest/[string interestid]/Retrieve() returns common:Interest|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        return <common:Interest>{};
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
    resource function get SavingsAccount/[string savingsaccountid]/IssuedDevice/[string issueddeviceid]/Retrieve() returns products:IssuedDevice|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        return <products:IssuedDevice>{};
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
    resource function get SavingsAccount/[string savingsaccountid]/Payment/[string paymentid]/Retrieve() returns products:Payment|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        return <products:Payment>{};
    }

    # ReCR Retrieve information about a savings account - either standard canned reports or selected instance attribute values
    #
    # + return - returns can be any of following types 
    # http:Ok (SavingsAccountFacility)
    # http:BadRequest (BadRequest)
    # http:Unauthorized (Unauthorized)
    # http:Forbidden (Forbidden)
    # http:NotFound (NotFound)
    # http:TooManyRequests (TooManyRequests)
    # http:InternalServerError (InternalServerError)
    resource function get SavingsAccount/[string savingsaccountid]/Retrieve() returns products:SavingsAccountFacility|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        return <products:SavingsAccountFacility>{};
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
    resource function get SavingsAccount/[string savingsaccountid]/ServiceFee/[string servicefeeid]/Retrieve() returns common:ServiceFee|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        return <common:ServiceFee>{};
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
    resource function get SavingsAccount/[string savingsaccountid]/Sweep/[string sweepid]/Retrieve() returns products:Sweep|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        return <products:Sweep>{};
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
    resource function get SavingsAccount/[string savingsaccountid]/Withdrawal/[string withdrawalid]/Retrieve() returns products:Withdrawal|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        return <products:Withdrawal>{};
    }

   # InCR Initiate A new savings account
    #
    # + return - returns can be any of following types 
    # http:Ok (SavingsAccountFacility)
    # http:BadRequest (BadRequest)
    # http:Unauthorized (Unauthorized)
    # http:Forbidden (Forbidden)
    # http:NotFound (NotFound)
    # http:TooManyRequests (TooManyRequests)
    # http:InternalServerError (InternalServerError)
    resource function post SavingsAccount/Initiate(@http:Payload products:SavingsAccountFacility payload) returns products:SavingsAccountFacilityOk|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        
        do {
            json|http:ClientError responseFromServer;
            lock {
	            responseFromServer = check externalClient->get(savingsAccountInitiateUrl);
            }
            io:println("-----------------------------------------------------------------------------------------------");
            io:println("Received response from backends API: /SavingsAccount/Initiate");
            io:println("{\n"+
                "   ProductInstanceReference: {...},\n"+
                "   SavingsAccountNumber: {...},\n"+
                "   CustomerReference: {...},\n"+
                "   BankBranchLocationReference: {...},\n"+
                "   AccountType: \"DebitAccount\",\n"+
                "   AccountCurrency: {..},\n"+
                "   TaxReference: {...},\n"+
                "   EntitlementOptionDefinition: {...},\n"+
                "   EntitlementOptionSetting: {...},\n"+
                "   RestrictionOptionDefinition: {...},\n"+
                "   RestrictionOptionSetting: {...},\n"+
                "   Associations: {...},\n"+
                "   AssociationType: \"PartyIsOwnerOfAccount\",\n"+
                "   AssociationObligationEntitlement: {...},\n"+
                "   AssociationReference: {...},\n"+
                "   LinkedAccounts: {...},\n"+
                "   LinkType: \"AccountIsParentAccountForAccount\",\n"+
                "   AccountDetails: {...},\n"+
                "   AccountDateType: \"OpeningDate\",\n"+
                "   AccountDate: {...},\n"+
                "   LimitValue: {...},\n"+
                "   LimitType: \"Multilateral\",\n"+
                "   LimitSettings: {...}\n"+
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
            products:SavingsAccountFacility|error savingsAccountFacility = transformSavingsAccountInitiateResponse(responseFromServer);

            if (savingsAccountFacility is error) {
                io:println("Error response received from backend:", savingsAccountFacility);
                common:HTTPError httpError = {
                    status_code: "400",
                    status: "Internal Server Error",
                    message: savingsAccountFacility.message()
                };
                common:HTTPErrorInternalServerError errorResponse = {
                    body: httpError
                };
                return errorResponse;
            }

            return <products:SavingsAccountFacilityOk> {body: savingsAccountFacility};
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
    resource function post SavingsAccount/[string savingsaccountid]/AmountBlock/Initiate(@http:Payload products:AmountBlock payload) returns products:AmountBlockOk|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        return <products:AmountBlockOk>{body: {}};
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
    resource function post SavingsAccount/[string savingsaccountid]/Deposit/Initiate(@http:Payload products:Deposit payload) returns products:DepositOk|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        return <products:DepositOk>{body: {}};
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
    resource function post SavingsAccount/[string savingsaccountid]/IssuedDevice/Initiate(@http:Payload products:IssuedDevice payload) returns products:IssuedDeviceOk|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        return <products:IssuedDeviceOk>{body: {}};
    }

    # InBQ Initialize a payment transaction (can be single or repeating)
    #
    # + return - returns can be any of following types 
    # http:Ok (Payment)
    # http:BadRequest (BadRequest)
    # http:Unauthorized (Unauthorized)
    # http:Forbidden (Forbidden)
    # http:NotFound (NotFound)
    # http:TooManyRequests (TooManyRequests)
    # http:InternalServerError (InternalServerError)
    resource function post SavingsAccount/[string savingsaccountid]/Payment/Initiate(@http:Payload products:Payment payload) returns products:PaymentOk|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        return <products:PaymentOk>{body: {}};
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
    resource function post SavingsAccount/[string savingsaccountid]/ServiceFee/Initiate(@http:Payload common:ServiceFee payload) returns common:ServiceFeeOk|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        return <common:ServiceFeeOk>{body: {}};
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
    resource function post SavingsAccount/[string savingsaccountid]/Sweep/Initiate(@http:Payload products:Sweep payload) returns products:SweepOk|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        return <products:SweepOk>{body: {}};
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
    resource function post SavingsAccount/[string savingsaccountid]/Withdrawal/Initiate(@http:Payload products:Withdrawal payload) returns products:WithdrawalOk|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        return <products:WithdrawalOk>{body: {}};
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
    resource function put SavingsAccount/[string savingsaccountid]/AmountBlock/[string amountblockid]/Update(@http:Payload products:AmountBlock payload) returns products:AmountBlock|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        return <products:AmountBlock>{};
    }

    # Execute authorization of booking
    #
    # + return - returns can be any of following types 
    # http:Ok (BookingAuthorization)
    # http:BadRequest (BadRequest)
    # http:Unauthorized (Unauthorized)
    # http:Forbidden (Forbidden)
    # http:NotFound (NotFound)
    # http:TooManyRequests (TooManyRequests)
    # http:InternalServerError (InternalServerError)
    resource function put SavingsAccount/[string savingsaccountid]/BookingAuthorization/[string bookingauthorizationid]/Execute(@http:Payload products:BookingAuthorization payload) returns products:BookingAuthorization|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        return <products:BookingAuthorization>{};
    }

    # CoCR Control the processing of an a savings account
    #
    # + return - returns can be any of following types 
    # http:Ok (SavingsAccountFacility)
    # http:BadRequest (BadRequest)
    # http:Unauthorized (Unauthorized)
    # http:Forbidden (Forbidden)
    # http:NotFound (NotFound)
    # http:TooManyRequests (TooManyRequests)
    # http:InternalServerError (InternalServerError)
    resource function put SavingsAccount/[string savingsaccountid]/Control(@http:Payload products:SavingsAccountFacility payload) returns products:SavingsAccountFacility|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        return <products:SavingsAccountFacility>{};
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
    resource function put SavingsAccount/[string savingsaccountid]/Deposit/[string depositid]/Execute(@http:Payload products:Deposit payload) returns products:Deposit|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        return <products:Deposit>{};
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
    resource function put SavingsAccount/[string savingsaccountid]/Deposit/[string depositid]/Update(@http:Payload products:Deposit payload) returns products:Deposit|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        return <products:Deposit>{};
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
    resource function put SavingsAccount/[string savingsaccountid]/Interest/[string interestid]/Execute(@http:Payload common:Interest payload) returns common:Interest|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        return <common:Interest>{};
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
    resource function put SavingsAccount/[string savingsaccountid]/IssuedDevice/[string issueddeviceid]/Update(@http:Payload products:IssuedDevice payload) returns products:IssuedDevice|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        return <products:IssuedDevice>{};
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
    resource function put SavingsAccount/[string savingsaccountid]/Payment/[string paymentid]/Exchange(@http:Payload products:Payment payload) returns products:Payment|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        return <products:Payment>{};
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
    resource function put SavingsAccount/[string savingsaccountid]/Payment/[string paymentid]/Execute(@http:Payload products:Payment payload) returns products:Payment|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        return <products:Payment>{};
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
    resource function put SavingsAccount/[string savingsaccountid]/Payment/[string paymentid]/Update(@http:Payload products:Payment payload) returns products:Payment|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        return <products:Payment>{};
    }

    # ExBQ Execute Apply Service Fee
    #
    # + return - returns can be any of following types 
    # http:Ok (ServiceFee)
    # http:BadRequest (BadRequest)
    # http:Unauthorized (Unauthorized)
    # http:Forbidden (Forbidden)
    # http:NotFound (NotFound)
    # http:TooManyRequests (TooManyRequests)
    # http:InternalServerError (InternalServerError)
    resource function put SavingsAccount/[string savingsaccountid]/ServiceFee/[string servicefeeid]/Execute(@http:Payload common:ServiceFee payload) returns common:ServiceFee|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        return <common:ServiceFee>{};
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
    resource function put SavingsAccount/[string savingsaccountid]/ServiceFee/[string servicefeeid]/Update(@http:Payload common:ServiceFee payload) returns common:ServiceFee|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        return <common:ServiceFee>{};
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
    resource function put SavingsAccount/[string savingsaccountid]/Sweep/[string sweepid]/Execute(@http:Payload products:Sweep payload) returns products:Sweep|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        return <products:Sweep>{};
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
    resource function put SavingsAccount/[string savingsaccountid]/Sweep/[string sweepid]/Update(@http:Payload products:Sweep payload) returns products:Sweep|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        return <products:Sweep>{};
    }

    # UpCR Update details of a savings account
    #
    # + return - returns can be any of following types 
    # http:Ok (SavingsAccountFacility)
    # http:BadRequest (BadRequest)
    # http:Unauthorized (Unauthorized)
    # http:Forbidden (Forbidden)
    # http:NotFound (NotFound)
    # http:TooManyRequests (TooManyRequests)
    # http:InternalServerError (InternalServerError)
    resource function put SavingsAccount/[string savingsaccountid]/Update(@http:Payload products:SavingsAccountFacility payload) returns products:SavingsAccountFacility|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        return <products:SavingsAccountFacility>{};
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
    resource function put SavingsAccount/[string savingsaccountid]/Withdrawal/[string withdrawalid]/Execute(@http:Payload products:Withdrawal payload) returns products:Withdrawal|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        return <products:Withdrawal>{};
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
    resource function put SavingsAccount/[string savingsaccountid]/Withdrawal/[string withdrawalid]/Update(@http:Payload products:Withdrawal payload) returns products:Withdrawal|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        return <products:Withdrawal>{};
    }
};
