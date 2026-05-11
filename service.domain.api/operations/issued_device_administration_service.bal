import ballerinax/financial.bian.attribute.groups.operations as operations;
import ballerinax/financial.bian.attribute.groups.common as common;
import ballerina/http;
import ballerina/io;

http:Service issuedDeviceAdministrationService =  service object {

    # ReBQ Retrieve details about an assigned biometric
    #
    # + return - returns can be any of following types 
    # http:Ok (BiometricAssignment)
    # http:BadRequest (BadRequest)
    # http:Unauthorized (Unauthorized)
    # http:Forbidden (Forbidden)
    # http:NotFound (NotFound)
    # http:TooManyRequests (TooManyRequests)
    # http:InternalServerError (InternalServerError)
    isolated resource function get IssuedDeviceAdministration/[string issueddeviceadministrationid]/BiometricAssignment/[string biometricassignmentid]/Retrieve() returns operations:BiometricAssignment|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        return <operations:BiometricAssignment>{};
    }

    # ReBQ Retrieve details about issued cheques
    #
    # + return - returns can be any of following types 
    # http:Ok (ChequesAssignment)
    # http:BadRequest (BadRequest)
    # http:Unauthorized (Unauthorized)
    # http:Forbidden (Forbidden)
    # http:NotFound (NotFound)
    # http:TooManyRequests (TooManyRequests)
    # http:InternalServerError (InternalServerError)
    isolated resource function get IssuedDeviceAdministration/[string issueddeviceadministrationid]/ChequesAssignment/[string chequesassignmentid]/Retrieve() returns operations:ChequesAssignment|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        return <operations:ChequesAssignment>{};
    }

    # ReBQ Retrieve details about an assigned device
    #
    # + return - returns can be any of following types 
    # http:Ok (DeviceAssignment)
    # http:BadRequest (BadRequest)
    # http:Unauthorized (Unauthorized)
    # http:Forbidden (Forbidden)
    # http:NotFound (NotFound)
    # http:TooManyRequests (TooManyRequests)
    # http:InternalServerError (InternalServerError)
    isolated resource function get IssuedDeviceAdministration/[string issueddeviceadministrationid]/DeviceAssignment/[string deviceassignmentid]/Retrieve() returns operations:DeviceAssignment|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        return <operations:DeviceAssignment>{};
    }

    # ReBQ Retrieve details about an assigned password
    #
    # + return - returns can be any of following types 
    # http:Ok (PasswordAssignment)
    # http:BadRequest (BadRequest)
    # http:Unauthorized (Unauthorized)
    # http:Forbidden (Forbidden)
    # http:NotFound (NotFound)
    # http:TooManyRequests (TooManyRequests)
    # http:InternalServerError (InternalServerError)
    isolated resource function get IssuedDeviceAdministration/[string issueddeviceadministrationid]/PasswordAssignment/[string passwordassignmentid]/Retrieve() returns operations:PasswordAssignment|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        return <operations:PasswordAssignment>{};
    }

    # ReBQ Retrieve details about an assigned ser=AndAnd password
    #
    # + return - returns can be any of following types 
    # http:Ok (QuestionAssignment)
    # http:BadRequest (BadRequest)
    # http:Unauthorized (Unauthorized)
    # http:Forbidden (Forbidden)
    # http:NotFound (NotFound)
    # http:TooManyRequests (TooManyRequests)
    # http:InternalServerError (InternalServerError)
    isolated resource function get IssuedDeviceAdministration/[string issueddeviceadministrationid]/QuestionAssignment/[string questionassignmentid]/Retrieve() returns operations:QuestionAssignment|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        return <operations:QuestionAssignment>{};
    }

    # ReBQ Retrieve details about an assigned reader
    #
    # + return - returns can be any of following types 
    # http:Ok (ReaderAssignment)
    # http:BadRequest (BadRequest)
    # http:Unauthorized (Unauthorized)
    # http:Forbidden (Forbidden)
    # http:NotFound (NotFound)
    # http:TooManyRequests (TooManyRequests)
    # http:InternalServerError (InternalServerError)
    isolated resource function get IssuedDeviceAdministration/[string issueddeviceadministrationid]/ReaderAssignment/[string readerassignmentid]/Retrieve() returns operations:ReaderAssignment|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        return <operations:ReaderAssignment>{};
    }

    # ReCR Retrieve details about an allocation
    #
    # + return - returns can be any of following types 
    # http:Ok (IssuedDeviceAllocation)
    # http:BadRequest (BadRequest)
    # http:Unauthorized (Unauthorized)
    # http:Forbidden (Forbidden)
    # http:NotFound (NotFound)
    # http:TooManyRequests (TooManyRequests)
    # http:InternalServerError (InternalServerError)
    isolated resource function get IssuedDeviceAdministration/[string issueddeviceadministrationid]/Retrieve() returns  operations:IssuedDeviceAllocation|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        return <operations:IssuedDeviceAllocation>{};
    }

    # Retrieve Details about Assigned Token
    #
    # + return - returns can be any of following types 
    # http:Ok (TokenAssignment)
    # http:BadRequest (BadRequest)
    # http:Unauthorized (Unauthorized)
    # http:Forbidden (Forbidden)
    # http:NotFound (NotFound)
    # http:TooManyRequests (TooManyRequests)
    # http:InternalServerError (InternalServerError)
    isolated resource function get IssuedDeviceAdministration/[string issueddeviceadministrationid]/TokenAssignment/[string tokenassignmentid]/Retrieve() returns operations:TokenAssignment|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        return <operations:TokenAssignment>{};
    }

    # PrCR Allocate an issued device (selected type will internally invoke assignment type)
    #
    # + return - returns can be any of following types 
    # http:Ok (IssuedDeviceAllocation)
    # http:BadRequest (BadRequest)
    # http:Unauthorized (Unauthorized)
    # http:Forbidden (Forbidden)
    # http:NotFound (NotFound)
    # http:TooManyRequests (TooManyRequests)
    # http:InternalServerError (InternalServerError)
    isolated resource function post IssuedDeviceAdministration/Initiate(@http:Payload operations:IssuedDeviceAllocation payload) returns operations:IssuedDeviceAllocationOk|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        return <operations:IssuedDeviceAllocationOk>{body: {}};
    }

    # PrBQ Provide a biometric assignment
    #
    # + return - returns can be any of following types 
    # http:Ok (BiometricAssignment)
    # http:BadRequest (BadRequest)
    # http:Unauthorized (Unauthorized)
    # http:Forbidden (Forbidden)
    # http:NotFound (NotFound)
    # http:TooManyRequests (TooManyRequests)
    # http:InternalServerError (InternalServerError)
    isolated resource function post IssuedDeviceAdministration/[string issueddeviceadministrationid]/BiometricAssignment/Initiate(@http:Payload operations:BiometricAssignment payload) returns operations:BiometricAssignmentOk|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        return <operations:BiometricAssignmentOk>{body: {}};
    }

    # PrBQ Provide cheques
    #
    # + return - returns can be any of following types 
    # http:Ok (ChequesAssignment)
    # http:BadRequest (BadRequest)
    # http:Unauthorized (Unauthorized)
    # http:Forbidden (Forbidden)
    # http:NotFound (NotFound)
    # http:TooManyRequests (TooManyRequests)
    # http:InternalServerError (InternalServerError)
    isolated resource function post IssuedDeviceAdministration/[string issueddeviceadministrationid]/ChequesAssignment/Initiate(@http:Payload operations:ChequesAssignment payload) returns operations:ChequesAssignmentOk|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        return <operations:ChequesAssignmentOk>{body: {}};
    }

    # PrBQ Provide a password assignment
    #
    # + return - returns can be any of following types 
    # http:Ok (PasswordAssignment)
    # http:BadRequest (BadRequest)
    # http:Unauthorized (Unauthorized)
    # http:Forbidden (Forbidden)
    # http:NotFound (NotFound)
    # http:TooManyRequests (TooManyRequests)
    # http:InternalServerError (InternalServerError)
    isolated resource function post IssuedDeviceAdministration/[string issueddeviceadministrationid]/PasswordAssignment/Initiate(@http:Payload operations:PasswordAssignment payload) returns operations:PasswordAssignmentOk|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        return <operations:PasswordAssignmentOk>{body: {}};
    }

    # PrBQ Provide a secret question assignment
    #
    # + return - returns can be any of following types 
    # http:Ok (QuestionAssignment)
    # http:BadRequest (BadRequest)
    # http:Unauthorized (Unauthorized)
    # http:Forbidden (Forbidden)
    # http:NotFound (NotFound)
    # http:TooManyRequests (TooManyRequests)
    # http:InternalServerError (InternalServerError)
    isolated resource function post IssuedDeviceAdministration/[string issueddeviceadministrationid]/QuestionAssignment/Initiate(@http:Payload operations:QuestionAssignment payload) returns operations:QuestionAssignmentOk|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        return <operations:QuestionAssignmentOk>{body: {}};
    }

    # Provide Details about Assigned Token
    #
    # + return - returns can be any of following types 
    # http:Ok (TokenAssignment)
    # http:BadRequest (BadRequest)
    # http:Unauthorized (Unauthorized)
    # http:Forbidden (Forbidden)
    # http:NotFound (NotFound)
    # http:TooManyRequests (TooManyRequests)
    # http:InternalServerError (InternalServerError)
    isolated resource function post IssuedDeviceAdministration/[string issueddeviceadministrationid]/TokenAssignment/Provide(@http:Payload operations:TokenAssignment payload) returns operations:TokenAssignmentOk|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        return <operations:TokenAssignmentOk>{body: {}};
    }

    # CoBQ Control an assigned biometric (e.g. suspend)
    #
    # + return - returns can be any of following types 
    # http:Ok (BiometricAssignment)
    # http:BadRequest (BadRequest)
    # http:Unauthorized (Unauthorized)
    # http:Forbidden (Forbidden)
    # http:NotFound (NotFound)
    # http:TooManyRequests (TooManyRequests)
    # http:InternalServerError (InternalServerError)
    isolated resource function put IssuedDeviceAdministration/[string issueddeviceadministrationid]/BiometricAssignment/[string biometricassignmentid]/Control(@http:Payload operations:BiometricAssignment payload) returns operations:BiometricAssignment|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        return <operations:BiometricAssignment>{};
    }

    # EcBQ Accept, verify, reject etc. an assigned biometric
    #
    # + return - returns can be any of following types 
    # http:Ok (BiometricAssignment)
    # http:BadRequest (BadRequest)
    # http:Unauthorized (Unauthorized)
    # http:Forbidden (Forbidden)
    # http:NotFound (NotFound)
    # http:TooManyRequests (TooManyRequests)
    # http:InternalServerError (InternalServerError)
    isolated resource function put IssuedDeviceAdministration/[string issueddeviceadministrationid]/BiometricAssignment/[string biometricassignmentid]/Exchange(@http:Payload operations:BiometricAssignment payload) returns operations:BiometricAssignment|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        return <operations:BiometricAssignment>{};
    }

    # UpBQ Update details of an assigned biometric
    #
    # + return - returns can be any of following types 
    # http:Ok (BiometricAssignment)
    # http:BadRequest (BadRequest)
    # http:Unauthorized (Unauthorized)
    # http:Forbidden (Forbidden)
    # http:NotFound (NotFound)
    # http:TooManyRequests (TooManyRequests)
    # http:InternalServerError (InternalServerError)
    isolated resource function put IssuedDeviceAdministration/[string issueddeviceadministrationid]/BiometricAssignment/[string biometricassignmentid]/Update(@http:Payload operations:BiometricAssignment payload) returns operations:BiometricAssignment|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        return <operations:BiometricAssignment>{};
    }

    # CoBQ Control issued cheques (e.g. cancel)
    #
    # + return - returns can be any of following types 
    # http:Ok (ChequesAssignment)
    # http:BadRequest (BadRequest)
    # http:Unauthorized (Unauthorized)
    # http:Forbidden (Forbidden)
    # http:NotFound (NotFound)
    # http:TooManyRequests (TooManyRequests)
    # http:InternalServerError (InternalServerError)
    isolated resource function put IssuedDeviceAdministration/[string issueddeviceadministrationid]/ChequesAssignment/[string chequesassignmentid]/Control(@http:Payload  operations:ChequesAssignment payload) returns operations:ChequesAssignment|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        return <operations:ChequesAssignment>{};
    }

    # EcBQ Accept, verify receipt etc. of issued cheques
    #
    # + return - returns can be any of following types 
    # http:Ok (ChequesAssignment)
    # http:BadRequest (BadRequest)
    # http:Unauthorized (Unauthorized)
    # http:Forbidden (Forbidden)
    # http:NotFound (NotFound)
    # http:TooManyRequests (TooManyRequests)
    # http:InternalServerError (InternalServerError)
    isolated resource function put IssuedDeviceAdministration/[string issueddeviceadministrationid]/ChequesAssignment/[string chequesassignmentid]/Exchange(@http:Payload operations:ChequesAssignment payload) returns operations:ChequesAssignment|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        return <operations:ChequesAssignment>{};
    }

    # CoCR Control an issued device allocation (e.g. suspend)
    #
    # + return - returns can be any of following types 
    # http:Ok (IssuedDeviceAllocation)
    # http:BadRequest (BadRequest)
    # http:Unauthorized (Unauthorized)
    # http:Forbidden (Forbidden)
    # http:NotFound (NotFound)
    # http:TooManyRequests (TooManyRequests)
    # http:InternalServerError (InternalServerError)
    isolated resource function put IssuedDeviceAdministration/[string issueddeviceadministrationid]/Control(@http:Payload operations:IssuedDeviceAllocation payload) returns operations:IssuedDeviceAllocation|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        return <operations:IssuedDeviceAllocation>{};
    }

    # CaBQ Capture usage details of an assigned device
    #
    # + return - returns can be any of following types 
    # http:Ok (DeviceAssignment)
    # http:BadRequest (BadRequest)
    # http:Unauthorized (Unauthorized)
    # http:Forbidden (Forbidden)
    # http:NotFound (NotFound)
    # http:TooManyRequests (TooManyRequests)
    # http:InternalServerError (InternalServerError)
    isolated resource function put IssuedDeviceAdministration/[string issueddeviceadministrationid]/DeviceAssignment/[string deviceassignmentid]/Capture(@http:Payload operations:DeviceAssignment payload) returns operations:DeviceAssignment|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        return <operations:DeviceAssignment>{};
    }

    # CoBQ Control an assigned device (e.g. out of service)
    #
    # + return - returns can be any of following types 
    # http:Ok (DeviceAssignment)
    # http:BadRequest (BadRequest)
    # http:Unauthorized (Unauthorized)
    # http:Forbidden (Forbidden)
    # http:NotFound (NotFound)
    # http:TooManyRequests (TooManyRequests)
    # http:InternalServerError (InternalServerError)
    isolated resource function put IssuedDeviceAdministration/[string issueddeviceadministrationid]/DeviceAssignment/[string deviceassignmentid]/Control(@http:Payload operations:DeviceAssignment payload) returns operations:DeviceAssignment|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        return <operations:DeviceAssignment>{};
    }

    # UpBQ Update details of an assigned device
    #
    # + return - returns can be any of following types 
    # http:Ok (DeviceAssignment)
    # http:BadRequest (BadRequest)
    # http:Unauthorized (Unauthorized)
    # http:Forbidden (Forbidden)
    # http:NotFound (NotFound)
    # http:TooManyRequests (TooManyRequests)
    # http:InternalServerError (InternalServerError)
    isolated resource function put IssuedDeviceAdministration/[string issueddeviceadministrationid]/DeviceAssignment/[string deviceassignmentid]/Update(@http:Payload operations:DeviceAssignment payload) returns operations:DeviceAssignment|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        
        operations:DeviceAssignment|error deviceAssignment = {};
        do {
            json|http:ClientError responseFromServer;
            lock {
	            // Invoking the configured backend service
                // TODO: Update the endpoint URL as per the actual backend API contract
	            responseFromServer = check externalClient->get("/IssuedDeviceAdministration/" + issueddeviceadministrationid + "/DeviceAssignment/" + deviceassignmentid + "/Update");
            }
            io:println("-----------------------------------------------------------------------------------------------");
            io:println("Received response from backends API: /IssuedDeviceAdministration/[string issueddeviceadministrationid]/DeviceAssignment/[string deviceassignmentid]/Update");
            io:println("{\n" +
                "   CustomerReference: {...},\n" +
                "   ProductInstanceReference: {...},\n" +
                "   IssuedDeviceType: \"Securecardreader\",\n" +
                "   AssociatedPermissions: {...},\n" +
                "   IssueDate: {...},\n" +
                "   ValidFrom-ToDate: {...}\n" +
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
            deviceAssignment = transfromIssuedDeviceAdministrationResponse(responseFromServer);
        } on fail error err {
            io:println(err.message());
        }
        if (deviceAssignment is error) {
            io:println("Error response received from backend:", deviceAssignment);
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
        return deviceAssignment;
    }

    # EcCR Accept, verify, etc aspects of an allocation
    #
    # + return - returns can be any of following types 
    # http:Ok (IssuedDeviceAllocation)
    # http:BadRequest (BadRequest)
    # http:Unauthorized (Unauthorized)
    # http:Forbidden (Forbidden)
    # http:NotFound (NotFound)
    # http:TooManyRequests (TooManyRequests)
    # http:InternalServerError (InternalServerError)
    isolated resource function put IssuedDeviceAdministration/[string issueddeviceadministrationid]/Exchange(@http:Payload operations:IssuedDeviceAllocation payload) returns operations:IssuedDeviceAllocation|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        return <operations:IssuedDeviceAllocation>{};
    }

    # CaBQ Capture usage details of an assigned password
    #
    # + return - returns can be any of following types 
    # http:Ok (PasswordAssignment)
    # http:BadRequest (BadRequest)
    # http:Unauthorized (Unauthorized)
    # http:Forbidden (Forbidden)
    # http:NotFound (NotFound)
    # http:TooManyRequests (TooManyRequests)
    # http:InternalServerError (InternalServerError)
    isolated resource function put IssuedDeviceAdministration/[string issueddeviceadministrationid]/PasswordAssignment/[string passwordassignmentid]/Capture(@http:Payload operations:PasswordAssignment payload) returns operations:PasswordAssignment|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        return  <operations:PasswordAssignment>{};
    }

    # CoBQ Control an assigned password (e.g. suspend)
    #
    # + return - returns can be any of following types 
    # http:Ok (PasswordAssignment)
    # http:BadRequest (BadRequest)
    # http:Unauthorized (Unauthorized)
    # http:Forbidden (Forbidden)
    # http:NotFound (NotFound)
    # http:TooManyRequests (TooManyRequests)
    # http:InternalServerError (InternalServerError)
    isolated resource function put IssuedDeviceAdministration/[string issueddeviceadministrationid]/PasswordAssignment/[string passwordassignmentid]/Control(@http:Payload operations:PasswordAssignment payload) returns operations:PasswordAssignment|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        return <operations:PasswordAssignment>{};
    }

    # EcBQ Accept, verify, reject etc. an assigned password
    #
    # + return - returns can be any of following types 
    # http:Ok (PasswordAssignment)
    # http:BadRequest (BadRequest)
    # http:Unauthorized (Unauthorized)
    # http:Forbidden (Forbidden)
    # http:NotFound (NotFound)
    # http:TooManyRequests (TooManyRequests)
    # http:InternalServerError (InternalServerError)
    isolated resource function put IssuedDeviceAdministration/[string issueddeviceadministrationid]/PasswordAssignment/[string passwordassignmentid]/Exchange(@http:Payload operations:PasswordAssignment payload) returns operations:PasswordAssignment|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        return <operations:PasswordAssignment>{};
    }

    # UpBQ Update details of an assigned password
    #
    # + return - returns can be any of following types 
    # http:Ok (PasswordAssignment)
    # http:BadRequest (BadRequest)
    # http:Unauthorized (Unauthorized)
    # http:Forbidden (Forbidden)
    # http:NotFound (NotFound)
    # http:TooManyRequests (TooManyRequests)
    # http:InternalServerError (InternalServerError)
    isolated resource function put IssuedDeviceAdministration/[string issueddeviceadministrationid]/PasswordAssignment/[string passwordassignmentid]/Update(@http:Payload operations:PasswordAssignment payload) returns operations:PasswordAssignment|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        return <operations:PasswordAssignment>{};
    }

    # CaBQ Capture usage details of an assigned secret question
    #
    # + return - returns can be any of following types 
    # http:Ok (QuestionAssignment)
    # http:BadRequest (BadRequest)
    # http:Unauthorized (Unauthorized)
    # http:Forbidden (Forbidden)
    # http:NotFound (NotFound)
    # http:TooManyRequests (TooManyRequests)
    # http:InternalServerError (InternalServerError)
    isolated resource function put IssuedDeviceAdministration/[string issueddeviceadministrationid]/QuestionAssignment/[string questionassignmentid]/Capture(@http:Payload operations:QuestionAssignment payload) returns operations:QuestionAssignment|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        return <operations:QuestionAssignment>{};
    }

    # CoBQ Control an assigned secret question (e.g. suspend)
    #
    # + return - returns can be any of following types 
    # http:Ok (QuestionAssignment)
    # http:BadRequest (BadRequest)
    # http:Unauthorized (Unauthorized)
    # http:Forbidden (Forbidden)
    # http:NotFound (NotFound)
    # http:TooManyRequests (TooManyRequests)
    # http:InternalServerError (InternalServerError)
    isolated resource function put IssuedDeviceAdministration/[string issueddeviceadministrationid]/QuestionAssignment/[string questionassignmentid]/Control(@http:Payload operations:QuestionAssignment payload) returns operations:QuestionAssignment|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        return <operations:QuestionAssignment>{};
    }

    # EcBQ Accept, verify, reject etc. an assigned secret question
    #
    # + return - returns can be any of following types 
    # http:Ok (QuestionAssignment)
    # http:BadRequest (BadRequest)
    # http:Unauthorized (Unauthorized)
    # http:Forbidden (Forbidden)
    # http:NotFound (NotFound)
    # http:TooManyRequests (TooManyRequests)
    # http:InternalServerError (InternalServerError)
    isolated resource function put IssuedDeviceAdministration/[string issueddeviceadministrationid]/QuestionAssignment/[string questionassignmentid]/Exchange(@http:Payload operations:QuestionAssignment payload) returns operations:QuestionAssignment|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        return <operations:QuestionAssignment>{};
    }

    # UpBQ Update details of an assigned secret question
    #
    # + return - returns can be any of following types 
    # http:Ok (QuestionAssignment)
    # http:BadRequest (BadRequest)
    # http:Unauthorized (Unauthorized)
    # http:Forbidden (Forbidden)
    # http:NotFound (NotFound)
    # http:TooManyRequests (TooManyRequests)
    # http:InternalServerError (InternalServerError)
    isolated resource function put IssuedDeviceAdministration/[string issueddeviceadministrationid]/QuestionAssignment/[string questionassignmentid]/Update(@http:Payload operations:QuestionAssignment payload) returns operations:QuestionAssignment|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        return <operations:QuestionAssignment>{};
    }

    # CaBQ Capture usage details of an assigned reader
    #
    # + return - returns can be any of following types 
    # http:Ok (ReaderAssignment)
    # http:BadRequest (BadRequest)
    # http:Unauthorized (Unauthorized)
    # http:Forbidden (Forbidden)
    # http:NotFound (NotFound)
    # http:TooManyRequests (TooManyRequests)
    # http:InternalServerError (InternalServerError)
    isolated resource function put IssuedDeviceAdministration/[string issueddeviceadministrationid]/ReaderAssignment/[string readerassignmentid]/Capture(@http:Payload operations:ReaderAssignment payload) returns operations:ReaderAssignment|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        return <operations:ReaderAssignment>{};
    }

    # CoBQ Control an assigned reader (e.g. out of service)
    #
    # + return - returns can be any of following types 
    # http:Ok (ReaderAssignment)
    # http:BadRequest (BadRequest)
    # http:Unauthorized (Unauthorized)
    # http:Forbidden (Forbidden)
    # http:NotFound (NotFound)
    # http:TooManyRequests (TooManyRequests)
    # http:InternalServerError (InternalServerError)
    isolated resource function put IssuedDeviceAdministration/[string issueddeviceadministrationid]/ReaderAssignment/[string readerassignmentid]/Control(@http:Payload operations:ReaderAssignment payload) returns operations:ReaderAssignment|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        return <operations:ReaderAssignment>{};
    }

    # UpBQ Update details of an assigned reader device
    #
    # + return - returns can be any of following types 
    # http:Ok (ReaderAssignment)
    # http:BadRequest (BadRequest)
    # http:Unauthorized (Unauthorized)
    # http:Forbidden (Forbidden)
    # http:NotFound (NotFound)
    # http:TooManyRequests (TooManyRequests)
    # http:InternalServerError (InternalServerError)
    isolated resource function put IssuedDeviceAdministration/[string issueddeviceadministrationid]/ReaderAssignment/[string readerassignmentid]/Update(@http:Payload operations:ReaderAssignment payload) returns operations:ReaderAssignment|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        return <operations:ReaderAssignment>{};
    }

    # Capture Assigned Token
    #
    # + return - returns can be any of following types 
    # http:Ok (TokenAssignment)
    # http:BadRequest (BadRequest)
    # http:Unauthorized (Unauthorized)
    # http:Forbidden (Forbidden)
    # http:NotFound (NotFound)
    # http:TooManyRequests (TooManyRequests)
    # http:InternalServerError (InternalServerError)
    isolated resource function put IssuedDeviceAdministration/[string issueddeviceadministrationid]/TokenAssignment/[string tokenassignmentid]/Capture(@http:Payload operations:TokenAssignment payload) returns operations:TokenAssignment|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        return <operations:TokenAssignment>{};
    }

    # Execute token assignment amend permission
    #
    # + return - returns can be any of following types 
    # http:Ok (TokenAssignment)
    # http:BadRequest (BadRequest)
    # http:Unauthorized (Unauthorized)
    # http:Forbidden (Forbidden)
    # http:NotFound (NotFound)
    # http:TooManyRequests (TooManyRequests)
    # http:InternalServerError (InternalServerError)
    isolated resource function put IssuedDeviceAdministration/[string issueddeviceadministrationid]/TokenAssignment/[string tokenassignmentid]/Execute(@http:Payload operations:TokenAssignment payload) returns operations:TokenAssignment|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        return <operations:TokenAssignment>{};
    }

    # Update Details of Assigned Token
    #
    # + return - returns can be any of following types 
    # http:Ok (TokenAssignment)
    # http:BadRequest (BadRequest)
    # http:Unauthorized (Unauthorized)
    # http:Forbidden (Forbidden)
    # http:NotFound (NotFound)
    # http:TooManyRequests (TooManyRequests)
    # http:InternalServerError (InternalServerError)
    isolated resource function put IssuedDeviceAdministration/[string issueddeviceadministrationid]/TokenAssignment/[string tokenassignmentid]/Update(@http:Payload operations:TokenAssignment payload) returns operations:TokenAssignment|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        return <operations:TokenAssignment>{};    
    }

    # UpCR Update details of an allocation
    #
    # + return - returns can be any of following types 
    # http:Ok (IssuedDeviceAllocation)
    # http:BadRequest (BadRequest)
    # http:Unauthorized (Unauthorized)
    # http:Forbidden (Forbidden)
    # http:NotFound (NotFound)
    # http:TooManyRequests (TooManyRequests)
    # http:InternalServerError (InternalServerError)
    isolated resource function put IssuedDeviceAdministration/[string issueddeviceadministrationid]/Update(@http:Payload operations:IssuedDeviceAllocation payload) returns operations:IssuedDeviceAllocation|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        return <operations:IssuedDeviceAllocation>{};
    }
};
