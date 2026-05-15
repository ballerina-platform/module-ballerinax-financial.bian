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

http:Service corporatePayrollServices =  service object {

    # Notify Issue Resolution
    #
    # + return - returns can be any of following types 
    # http:Ok (IssueResolution)
    # http:BadRequest (BadRequest)
    # http:Unauthorized (Unauthorized)
    # http:Forbidden (Forbidden)
    # http:NotFound (NotFound)
    # http:TooManyRequests (TooManyRequests)
    # http:InternalServerError (InternalServerError)
    resource function get CorporatePayrollServices/[string corporatepayrollservicesid]/IssueResolution/[string issueresolutionid]/Notify() returns products:IssueResolution|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        return <products:IssueResolution>{};
    }

    # Retrieve Issue Resolution
    #
    # + return - returns can be any of following types 
    # http:Ok (IssueResolution)
    # http:BadRequest (BadRequest)
    # http:Unauthorized (Unauthorized)
    # http:Forbidden (Forbidden)
    # http:NotFound (NotFound)
    # http:TooManyRequests (TooManyRequests)
    # http:InternalServerError (InternalServerError)
    resource function get CorporatePayrollServices/[string corporatepayrollservicesid]/IssueResolution/[string issueresolutionid]/Retrieve() returns products:IssueResolution|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        return <products:IssueResolution>{};
    }

    # Notify Employee Payment Services Facility
    #
    # + return - returns can be any of following types 
    # http:Ok (EmployeePaymentServicesFacility)
    # http:BadRequest (BadRequest)
    # http:Unauthorized (Unauthorized)
    # http:Forbidden (Forbidden)
    # http:NotFound (NotFound)
    # http:TooManyRequests (TooManyRequests)
    # http:InternalServerError (InternalServerError)
    resource function get CorporatePayrollServices/[string corporatepayrollservicesid]/Notify() returns products:EmployeePaymentServicesFacility|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        return <products:EmployeePaymentServicesFacility>{};
    }

    # Retrieve Employee Payment Services Facility
    #
    # + return - returns can be any of following types 
    # http:Ok (EmployeePaymentServicesFacility)
    # http:BadRequest (BadRequest)
    # http:Unauthorized (Unauthorized)
    # http:Forbidden (Forbidden)
    # http:NotFound (NotFound)
    # http:TooManyRequests (TooManyRequests)
    # http:InternalServerError (InternalServerError)
    resource function get CorporatePayrollServices/[string corporatepayrollservicesid]/Retrieve() returns products:EmployeePaymentServicesFacility|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        return <products:EmployeePaymentServicesFacility>{};
    }

    # Initiate Employee Payment Services Facility
    #
    # + return - returns can be any of following types 
    # http:Ok (EmployeePaymentServicesFacility)
    # http:BadRequest (BadRequest)
    # http:Unauthorized (Unauthorized)
    # http:Forbidden (Forbidden)
    # http:NotFound (NotFound)
    # http:TooManyRequests (TooManyRequests)
    # http:InternalServerError (InternalServerError)
    resource function post CorporatePayrollServices/Initiate(@http:Payload products:EmployeePaymentServicesFacility payload) returns products:EmployeePaymentServicesFacilityOk|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        products:EmployeePaymentServicesFacilityOk|error serviceFacilityOk = {body: {}};
        do {
            json|http:ClientError responseFromServer;
            lock {
	            // Invoking the configured backend service
	            responseFromServer = check externalClient->get("/CorporatePayrollServices/Initiate");
            }
            io:println("-----------------------------------------------------------------------------------------------");
            io:println("Received response from backends API: /CorporatePayrollServices/Initiate");
            io:println("{\n"+
                "   EmployeePaymentServicesFacilityParameterTyp: \"FeeFeature\",\n"+
                "   EmployeePaymentServicesFacilitySelectedOption: {},\n"+
                "   EmployeePaymentServicesFacilityType: {},\n"+
                "   EmployeePaymentServicesFacilityCalendarReference: {},\n"+
                "   EmployeePaymentServicesFacilityStatus: {},\n"+
                "   EmployeePaymentServicesFacilityAssociatedParty: {},\n"+
                "   EmployeePaymentServicesFacilityCurrency: {},\n"+
                "   EmployeePaymentServicesFacilityRegulationReference: {},\n"+
                "   EmployeePaymentServicesFacilityRegulationType: {},\n"+
                "   EmployeePaymentServicesFacilityJurisdiction: {},\n"+
                "   EmployeePaymentServicesFacilityBookingLocation: {},\n"+
                "   EmployeePaymentServicesFacilityAccountType: \"DebitAccount\",\n"+
                "   EmployeePaymentServicesFacilityAccountReference: {},\n"+
                "   EmployeePaymentServicesFacilityCustomerReference: {},\n"+
                "   EmployeePaymentServicesFacilityPosition: {},\n"+
                "   EmployeePaymentServicesFacilityProductReference: {},\n"+
                "   EmployeePaymentServicesFacilityPositionLimit: {},\n"+
                "   EmployeePaymentServicesFacilityReference: {}\n"+
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
            products:EmployeePaymentServicesFacility serviceFacility = check transformCorporatePayrollServicesInitiateResponse(responseFromServer);
            serviceFacilityOk = <products:EmployeePaymentServicesFacilityOk>{body: serviceFacility};
        } on fail error err {
            io:println(err.message());
        }
        if (serviceFacilityOk is error) {
            io:println("Error response received from backend:", serviceFacilityOk);
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
        return serviceFacilityOk;
    }

    # Initiate Issue Resolution
    #
    # + return - returns can be any of following types 
    # http:Ok (IssueResolution)
    # http:BadRequest (BadRequest)
    # http:Unauthorized (Unauthorized)
    # http:Forbidden (Forbidden)
    # http:NotFound (NotFound)
    # http:TooManyRequests (TooManyRequests)
    # http:InternalServerError (InternalServerError)
    resource function post CorporatePayrollServices/[string corporatepayrollservicesid]/IssueResolution/Initiate(@http:Payload products:IssueResolution payload) returns products:IssueResolutionOk|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        return <products:IssueResolutionOk>{body:{}};
    }

    # Control Employee Payment Services Facility
    #
    # + return - returns can be any of following types 
    # http:Ok (EmployeePaymentServicesFacility)
    # http:BadRequest (BadRequest)
    # http:Unauthorized (Unauthorized)
    # http:Forbidden (Forbidden)
    # http:NotFound (NotFound)
    # http:TooManyRequests (TooManyRequests)
    # http:InternalServerError (InternalServerError)
    resource function put CorporatePayrollServices/[string corporatepayrollservicesid]/Control(@http:Payload products:EmployeePaymentServicesFacility payload) returns products:EmployeePaymentServicesFacility|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        return <products:EmployeePaymentServicesFacility>{};
    }

    # Execute Employee Payment Services Facility
    #
    # + return - returns can be any of following types 
    # http:Ok (EmployeePaymentServicesFacility)
    # http:BadRequest (BadRequest)
    # http:Unauthorized (Unauthorized)
    # http:Forbidden (Forbidden)
    # http:NotFound (NotFound)
    # http:TooManyRequests (TooManyRequests)
    # http:InternalServerError (InternalServerError)
    resource function put CorporatePayrollServices/[string corporatepayrollservicesid]/Execute(@http:Payload products:EmployeePaymentServicesFacility payload) returns products:EmployeePaymentServicesFacility|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        return <products:EmployeePaymentServicesFacility>{};
    }

    # Exchange Issue Resolution
    #
    # + return - returns can be any of following types 
    # http:Ok (IssueResolution)
    # http:BadRequest (BadRequest)
    # http:Unauthorized (Unauthorized)
    # http:Forbidden (Forbidden)
    # http:NotFound (NotFound)
    # http:TooManyRequests (TooManyRequests)
    # http:InternalServerError (InternalServerError)
    resource function put CorporatePayrollServices/[string corporatepayrollservicesid]/IssueResolution/[string issueresolutionid]/Exchange(@http:Payload products:IssueResolution payload) returns products:IssueResolution|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        return <products:IssueResolution>{};
    
    }

    # Execute Issue Resolution
    #
    # + return - returns can be any of following types 
    # http:Ok (IssueResolution)
    # http:BadRequest (BadRequest)
    # http:Unauthorized (Unauthorized)
    # http:Forbidden (Forbidden)
    # http:NotFound (NotFound)
    # http:TooManyRequests (TooManyRequests)
    # http:InternalServerError (InternalServerError)
    resource function put CorporatePayrollServices/[string corporatepayrollservicesid]/IssueResolution/[string issueresolutionid]/Execute(@http:Payload products:IssueResolution payload) returns products:IssueResolution|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        return <products:IssueResolution>{};
    }

    # Request Issue Resolution
    #
    # + return - returns can be any of following types 
    # http:Ok (IssueResolution)
    # http:BadRequest (BadRequest)
    # http:Unauthorized (Unauthorized)
    # http:Forbidden (Forbidden)
    # http:NotFound (NotFound)
    # http:TooManyRequests (TooManyRequests)
    # http:InternalServerError (InternalServerError)
    resource function put CorporatePayrollServices/[string corporatepayrollservicesid]/IssueResolution/[string issueresolutionid]/Request(@http:Payload products:IssueResolution payload) returns products:IssueResolution|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        return <products:IssueResolution>{};
    }

    # Update Issue Resolution
    #
    # + return - returns can be any of following types 
    # http:Ok (IssueResolution)
    # http:BadRequest (BadRequest)
    # http:Unauthorized (Unauthorized)
    # http:Forbidden (Forbidden)
    # http:NotFound (NotFound)
    # http:TooManyRequests (TooManyRequests)
    # http:InternalServerError (InternalServerError)
    resource function put CorporatePayrollServices/[string corporatepayrollservicesid]/IssueResolution/[string issueresolutionid]/Update(@http:Payload products:IssueResolution payload) returns products:IssueResolution|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        return <products:IssueResolution>{};
    }

    # Request Employee Payment Services Facility
    #
    # + return - returns can be any of following types 
    # http:Ok (EmployeePaymentServicesFacility)
    # http:BadRequest (BadRequest)
    # http:Unauthorized (Unauthorized)
    # http:Forbidden (Forbidden)
    # http:NotFound (NotFound)
    # http:TooManyRequests (TooManyRequests)
    # http:InternalServerError (InternalServerError)
    resource function put CorporatePayrollServices/[string corporatepayrollservicesid]/Request(@http:Payload products:EmployeePaymentServicesFacility payload) returns products:EmployeePaymentServicesFacility|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        return <products:EmployeePaymentServicesFacility>{};
    }

    # Update Employee Payment Services Facility
    #
    # + return - returns can be any of following types 
    # http:Ok (EmployeePaymentServicesFacility)
    # http:BadRequest (BadRequest)
    # http:Unauthorized (Unauthorized)
    # http:Forbidden (Forbidden)
    # http:NotFound (NotFound)
    # http:TooManyRequests (TooManyRequests)
    # http:InternalServerError (InternalServerError)
    resource function put CorporatePayrollServices/[string corporatepayrollservicesid]/Update(@http:Payload products:EmployeePaymentServicesFacility payload) returns products:EmployeePaymentServicesFacility|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
    
        products:EmployeePaymentServicesFacility|error serviceFacility = {};
        do {
            json|http:ClientError responseFromServer;
            lock {
	            // Invoking the configured backend service
	            responseFromServer = check externalClient->get("/CorporatePayrollServices/" + corporatepayrollservicesid + "/Update");
            }
            io:println("-----------------------------------------------------------------------------------------------");
            io:println("Received response from backends API: /CorporatePayrollServices/" + corporatepayrollservicesid + "/Update");
            io:println("{\n"+
                "   EmployeePaymentServicesFacilityParameterTyp: \"FeeFeature\",\n"+
                "   EmployeePaymentServicesFacilitySelectedOption: {},\n"+
                "   EmployeePaymentServicesFacilityType: {},\n"+
                "   EmployeePaymentServicesFacilityCalendarReference: {},\n"+
                "   EmployeePaymentServicesFacilityStatus: {},\n"+
                "   EmployeePaymentServicesFacilityAssociatedParty: {},\n"+
                "   EmployeePaymentServicesFacilityCurrency: {},\n"+
                "   EmployeePaymentServicesFacilityRegulationReference: {},\n"+
                "   EmployeePaymentServicesFacilityRegulationType: {},\n"+
                "   EmployeePaymentServicesFacilityJurisdiction: {},\n"+
                "   EmployeePaymentServicesFacilityBookingLocation: {},\n"+
                "   EmployeePaymentServicesFacilityAccountType: \"DebitAccount\",\n"+
                "   EmployeePaymentServicesFacilityAccountReference: {},\n"+
                "   EmployeePaymentServicesFacilityCustomerReference: {},\n"+
                "   EmployeePaymentServicesFacilityPosition: {},\n"+
                "   EmployeePaymentServicesFacilityProductReference: {},\n"+
                "   EmployeePaymentServicesFacilityPositionLimit: {},\n"+
                "   EmployeePaymentServicesFacilityReference: {}\n"+
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
            serviceFacility = check transformCorporatePayrollServicesUpdateResponse(responseFromServer);
        } on fail error err {
            io:println(err.message());
        }
        if (serviceFacility is error) {
            io:println("Error response received from backend:", serviceFacility);
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
        return serviceFacility;
    }
};
