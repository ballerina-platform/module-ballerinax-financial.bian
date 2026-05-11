import ballerinax/financial.bian.attribute.groups.customers as customers;
import ballerinax/financial.bian.attribute.groups.common as common;
import ballerina/http;
import ballerina/io;

http:Service partyLifecycleManagementService =  service object {

    # ReBQ Retrieve details about document processing for a party life-cycle administration
    #
    # + return - returns can be any of following types 
    # http:Ok (Documentation)
    # http:BadRequest (BadRequest)
    # http:Unauthorized (Unauthorized)
    # http:Forbidden (Forbidden)
    # http:NotFound (NotFound)
    # http:TooManyRequests (TooManyRequests)
    # http:InternalServerError (InternalServerError)
    isolated resource function get PartyLifecycleManagement/[string partylifecyclemanagementid]/Documentation/[string documentationid]/Retrieve() returns customers:Documentation|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        return <customers:Documentation>{};
    }

    # ReBQ Retrieve details about a party identity proofing routine
    #
    # + return - returns can be any of following types 
    # http:Ok (IdentityProofing)
    # http:BadRequest (BadRequest)
    # http:Unauthorized (Unauthorized)
    # http:Forbidden (Forbidden)
    # http:NotFound (NotFound)
    # http:TooManyRequests (TooManyRequests)
    # http:InternalServerError (InternalServerError)
    isolated resource function get PartyLifecycleManagement/[string partylifecyclemanagementid]/IdentityProofing/[string identityproofingid]/Retrieve() returns customers:IdentityProofing|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        return <customers:IdentityProofing>{};
    }

    # ReBQ Retrieve details about customer precedent maintenance
    #
    # + return - returns can be any of following types 
    # http:Ok (Precedents)
    # http:BadRequest (BadRequest)
    # http:Unauthorized (Unauthorized)
    # http:Forbidden (Forbidden)
    # http:NotFound (NotFound)
    # http:TooManyRequests (TooManyRequests)
    # http:InternalServerError (InternalServerError)
    isolated resource function get PartyLifecycleManagement/[string partylifecyclemanagementid]/Precedents/[string precedentsid]/Retrieve() returns customers:Precedents|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        return <customers:Precedents>{};
    }

    # ReBQ Retrieve details about a party qualification routine
    #
    # + return - returns can be any of following types 
    # http:Ok (Qualification)
    # http:BadRequest (BadRequest)
    # http:Unauthorized (Unauthorized)
    # http:Forbidden (Forbidden)
    # http:NotFound (NotFound)
    # http:TooManyRequests (TooManyRequests)
    # http:InternalServerError (InternalServerError)
    isolated resource function get PartyLifecycleManagement/[string partylifecyclemanagementid]/Qualification/[string qualificationid]/Retrieve() returns customers:Qualification|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
       
       do {
            json|http:ClientError responseFromServer;
            lock {
	            // Invoking the configured backend service
                // TODO: Update the endpoint URL as per the actual backend API contract
	            responseFromServer = check externalClient->get("/PartyLifecycleManagement/" + partylifecyclemanagementid + "/Qualification/" + qualificationid + "/Retrieve");
            }
            io:println("-----------------------------------------------------------------------------------------------");
            io:println("Received response from backends API: /PartyLifecycleManagement/" + partylifecyclemanagementid + "/Qualification/" + qualificationid + "/Retrieve");
            io:println("{\n" +
                "    CustomerReference: {...},\n" +
                "    PartyReference: {...},\n" +
                "    PartyRelationshipType: \"PartyIsParentOfParty\",\n" +
                "    PartyLife-cycleMaintenanceSchedule: {...},\n" +
                "    PartyLife-cycleMaintenanceTask: {...},\n" +
                "    PartyLife-cycleMaintenanceTaskType: {...},\n" +
                "    PartyLife-cycleMaintenanceWorkProducts: {...},\n" +
                "    PartyLife-cycleMaintenanceTaskResult: {...},\n" +
                "    CustomerPrecedentProfileUpdateLog: {...},\n" +
                "    PartyRelationshipLifecycleStatus: {...},\n" +
                "    PartyRelationshipLifecyclePhase: {...}\n" +
            "}");
            io:println("-----------------------------------------------------------------------------------------------");
            io:println(" ");
        
            if (responseFromServer is http:ClientError) {
                // Handle the error response
                io:println("Error response received from backend:", responseFromServer);
                common:HTTPErrorInternalServerError httpError = {
                    body:{
                        status_code : "500",
                        status: "Internal Server Error",
                        message : "An error occurred while processing the request."
                    }
                };
                return httpError;
            }
            // Transform the response from backend to match the defined return type.
            // TODO: Implement the custom transformation logic in the data mapper module            
            // This is a sample mapping function. The transformation logic will depend on the actual response structure from the backend API and 
            // the defined BIAN data model for product_management:Operations.
            customers:Qualification|error partyRelationshipQualification = transfromPartyLifecycleManagementQualificationsResponse(responseFromServer);

            // Check if the transformation was successful
            if (partyRelationshipQualification is error) {
                // Handle the error response
                io:println("Error response received from backend:", partyRelationshipQualification);
                common:HTTPErrorBadRequest httpError = {
                    body:{
                        status_code : "400",
                        status: "Bad Request",
                        message : partyRelationshipQualification.message()
                    }
                };
                return httpError;
            }
            return partyRelationshipQualification;
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

    # ReCR Retrieve details about a party life-cycle administrative plan
    #
    # + return - returns can be any of following types 
    # http:Ok (PartyRelationshipAdministrativePlan)
    # http:BadRequest (BadRequest)
    # http:Unauthorized (Unauthorized)
    # http:Forbidden (Forbidden)
    # http:NotFound (NotFound)
    # http:TooManyRequests (TooManyRequests)
    # http:InternalServerError (InternalServerError)
    isolated resource function get PartyLifecycleManagement/[string partylifecyclemanagementid]/Retrieve() returns customers:PartyRelationshipAdministrativePlan|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        return <customers:PartyRelationshipAdministrativePlan>{};
    }

    # InCR Initiate party life-cycle administrative plan
    #
    # + return - returns can be any of following types 
    # http:Ok (PartyRelationshipAdministrativePlan)
    # http:BadRequest (BadRequest)
    # http:Unauthorized (Unauthorized)
    # http:Forbidden (Forbidden)
    # http:NotFound (NotFound)
    # http:TooManyRequests (TooManyRequests)
    # http:InternalServerError (InternalServerError)
    isolated resource function post PartyLifecycleManagement/Initiate(@http:Payload customers:PartyRelationshipAdministrativePlan payload) returns customers:PartyRelationshipAdministrativePlanOk|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {

        do {
            json|http:ClientError responseFromServer;
            lock {
	            // Invoking the configured backend service
                // TODO: Update the endpoint URL as per the actual backend API contract
	            responseFromServer = check externalClient->get("/PartyLifecycleManagement/Initiate");
            }
            io:println("-----------------------------------------------------------------------------------------------");
            io:println("Received response from backends API: /PartyLifecycleManagement/Initiate");
            io:println("{\n" +
                "    CustomerReference: {...},\n" +
                "    PartyReference: {...},\n" +
                "    PartyRelationshipType: \"PartyIsParentOfParty\",\n" +
                "    PartyLife-cycleMaintenanceSchedule: {...},\n" +
                "    PartyLife-cycleMaintenanceTask: {...},\n" +
                "    PartyLife-cycleMaintenanceTaskType: {...},\n" +
                "    PartyLife-cycleMaintenanceWorkProducts: {...},\n" +
                "    PartyLife-cycleMaintenanceTaskResult: {...},\n" +
                "    CustomerPrecedentProfileUpdateLog: {...},\n" +
                "    PartyRelationshipLifecycleStatus: {...},\n" +
                "    PartyRelationshipLifecyclePhase: {...}\n" +
            "}");
            io:println("-----------------------------------------------------------------------------------------------");
            io:println(" ");
        
            if (responseFromServer is http:ClientError) {
                // Handle the error response
                io:println("Error response received from backend:", responseFromServer);
                common:HTTPErrorInternalServerError httpError = {
                    body:{
                        status_code : "500",
                        status: "Internal Server Error",
                        message : "An error occurred while processing the request."
                    }
                };
                return httpError;
            }
            // Transform the response from backend to match the defined return type.
            // TODO: Implement the custom transformation logic in the data mapper module            
            // This is a sample mapping function. The transformation logic will depend on the actual response structure from the backend API and 
            // the defined BIAN data model for product_management:Operations.
            customers:PartyRelationshipAdministrativePlan|error partyRelationshipAdministrativePlan = transformPartyRelationshipPlan(responseFromServer);

            // Check if the transformation was successful
            if (partyRelationshipAdministrativePlan is error) {
                // Handle the error response
                io:println("Error response received from backend:", partyRelationshipAdministrativePlan);
                common:HTTPErrorBadRequest httpError = {
                    body:{
                        status_code : "400",
                        status: "Bad Request",
                        message : partyRelationshipAdministrativePlan.message()
                    }
                };
                return httpError;
            }
            return <customers:PartyRelationshipAdministrativePlanOk>{ body: partyRelationshipAdministrativePlan };
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

    # CoCR Control the processing of a party-life-cycle administrative plan (e.g. terminate)
    #
    # + return - returns can be any of following types 
    # http:Ok (PartyRelationshipAdministrativePlan)
    # http:BadRequest (BadRequest)
    # http:Unauthorized (Unauthorized)
    # http:Forbidden (Forbidden)
    # http:NotFound (NotFound)
    # http:TooManyRequests (TooManyRequests)
    # http:InternalServerError (InternalServerError)
    isolated resource function put PartyLifecycleManagement/[string partylifecyclemanagementid]/Control(@http:Payload customers:PartyRelationshipAdministrativePlan payload) returns customers:PartyRelationshipAdministrativePlan|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        return <customers:PartyRelationshipAdministrativePlan>{};
    }

    # ExBQ Execute an automated action (e.g. input data about a document)
    #
    # + return - returns can be any of following types 
    # http:Ok (Documentation)
    # http:BadRequest (BadRequest)
    # http:Unauthorized (Unauthorized)
    # http:Forbidden (Forbidden)
    # http:NotFound (NotFound)
    # http:TooManyRequests (TooManyRequests)
    # http:InternalServerError (InternalServerError)
    isolated resource function put PartyLifecycleManagement/[string partylifecyclemanagementid]/Documentation/[string documentationid]/Execute(@http:Payload customers:Documentation payload) returns customers:Documentation|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        return <customers:Documentation>{};
    }

    # RqBQ Request manual intervention (e.g. handle a document exchange)
    #
    # + return - returns can be any of following types 
    # http:Ok (Documentation)
    # http:BadRequest (BadRequest)
    # http:Unauthorized (Unauthorized)
    # http:Forbidden (Forbidden)
    # http:NotFound (NotFound)
    # http:TooManyRequests (TooManyRequests)
    # http:InternalServerError (InternalServerError)
    isolated resource function put PartyLifecycleManagement/[string partylifecyclemanagementid]/Documentation/[string documentationid]/Request(@http:Payload customers:Documentation payload) returns customers:Documentation|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        return <customers:Documentation>{};
    }

    # UpBQ Update details about document handling
    #
    # + return - returns can be any of following types 
    # http:Ok (Documentation)
    # http:BadRequest (BadRequest)
    # http:Unauthorized (Unauthorized)
    # http:Forbidden (Forbidden)
    # http:NotFound (NotFound)
    # http:TooManyRequests (TooManyRequests)
    # http:InternalServerError (InternalServerError)
    isolated resource function put PartyLifecycleManagement/[string partylifecyclemanagementid]/Documentation/[string documentationid]/Update(@http:Payload customers:Documentation payload) returns customers:Documentation|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        return <customers:Documentation>{};
    }

    # EcCR Accept, verify, etc. of the party life-cycle administrative plan
    #
    # + return - returns can be any of following types 
    # http:Ok (PartyRelationshipAdministrativePlan)
    # http:BadRequest (BadRequest)
    # http:Unauthorized (Unauthorized)
    # http:Forbidden (Forbidden)
    # http:NotFound (NotFound)
    # http:TooManyRequests (TooManyRequests)
    # http:InternalServerError (InternalServerError)
    isolated resource function put PartyLifecycleManagement/[string partylifecyclemanagementid]/Exchange(@http:Payload customers:PartyRelationshipAdministrativePlan payload) returns customers:PartyRelationshipAdministrativePlan|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        return <customers:PartyRelationshipAdministrativePlan>{};  
    }

    # ExCR Execute an automated action (e.g. input data)
    #
    # + return - returns can be any of following types 
    # http:Ok (PartyRelationshipAdministrativePlan)
    # http:BadRequest (BadRequest)
    # http:Unauthorized (Unauthorized)
    # http:Forbidden (Forbidden)
    # http:NotFound (NotFound)
    # http:TooManyRequests (TooManyRequests)
    # http:InternalServerError (InternalServerError)
    isolated resource function put PartyLifecycleManagement/[string partylifecyclemanagementid]/Execute(@http:Payload customers:PartyRelationshipAdministrativePlan payload) returns customers:PartyRelationshipAdministrativePlan|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        return <customers:PartyRelationshipAdministrativePlan>{};
    }

    # UpBQ Update details about customer precedents
    #
    # + return - returns can be any of following types 
    # http:Ok (Precedents)
    # http:BadRequest (BadRequest)
    # http:Unauthorized (Unauthorized)
    # http:Forbidden (Forbidden)
    # http:NotFound (NotFound)
    # http:TooManyRequests (TooManyRequests)
    # http:InternalServerError (InternalServerError)
    isolated resource function put PartyLifecycleManagement/[string partylifecyclemanagementid]/Precedents/[string precedentsid]/Update(@http:Payload customers:Precedents payload) returns customers:Precedents|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        return <customers:Precedents>{};
    }

    # RqCR Request manual intervention (e.g. negotiate resolution)
    #
    # + return - returns can be any of following types 
    # http:Ok (PartyRelationshipAdministrativePlan)
    # http:BadRequest (BadRequest)
    # http:Unauthorized (Unauthorized)
    # http:Forbidden (Forbidden)
    # http:NotFound (NotFound)
    # http:TooManyRequests (TooManyRequests)
    # http:InternalServerError (InternalServerError)
    isolated resource function put PartyLifecycleManagement/[string partylifecyclemanagementid]/Request(@http:Payload customers:PartyRelationshipAdministrativePlan payload) returns customers:PartyRelationshipAdministrativePlan|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        return <customers:PartyRelationshipAdministrativePlan>{};
    }

    # UpCR Update details about a party life-cycle administrative plan
    #
    # + return - returns can be any of following types 
    # http:Ok (PartyRelationshipAdministrativePlan)
    # http:BadRequest (BadRequest)
    # http:Unauthorized (Unauthorized)
    # http:Forbidden (Forbidden)
    # http:NotFound (NotFound)
    # http:TooManyRequests (TooManyRequests)
    # http:InternalServerError (InternalServerError)
    isolated resource function put PartyLifecycleManagement/[string partylifecyclemanagementid]/Update(@http:Payload customers:PartyRelationshipAdministrativePlan payload) returns customers:PartyRelationshipAdministrativePlan|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
       
       do {
            json|http:ClientError responseFromServer;
            lock {
	            // Invoking the configured backend service
                // TODO: Update the endpoint URL as per the actual backend API contract
	            responseFromServer = check externalClient->get("/PartyLifecycleManagement/" + partylifecyclemanagementid + "/Update");
            }
            io:println("-----------------------------------------------------------------------------------------------");
            io:println("Received response from backends API: /PartyLifecycleManagement/" + partylifecyclemanagementid + "/Update");
            io:println("{\n" +
                "    CustomerReference: {...},\n" +
                "    PartyReference: {...},\n" +
                "    PartyRelationshipType: \"PartyIsParentOfParty\",\n" +
                "    PartyLife-cycleMaintenanceSchedule: {...},\n" +
                "    PartyLife-cycleMaintenanceTask: {...},\n" +
                "    PartyLife-cycleMaintenanceTaskType: {...},\n" +
                "    PartyLife-cycleMaintenanceWorkProducts: {...},\n" +
                "    PartyLife-cycleMaintenanceTaskResult: {...},\n" +
                "    CustomerPrecedentProfileUpdateLog: {...},\n" +
                "    PartyRelationshipLifecycleStatus: {...},\n" +
                "    PartyRelationshipLifecyclePhase: {...}\n" +
            "}");
            io:println("-----------------------------------------------------------------------------------------------");
            io:println(" ");
        
            if (responseFromServer is http:ClientError) {
                // Handle the error response
                io:println("Error response received from backend:", responseFromServer);
                common:HTTPErrorInternalServerError httpError = {
                    body:{
                        status_code : "500",
                        status: "Internal Server Error",
                        message : "An error occurred while processing the request."
                    }
                };
                return httpError;
            }
            // Transform the response from backend to match the defined return type.
            // TODO: Implement the custom transformation logic in the data mapper module            
            // This is a sample mapping function. The transformation logic will depend on the actual response structure from the backend API and 
            // the defined BIAN data model for product_management:Operations.
            customers:PartyRelationshipAdministrativePlan|error partyRelationshipAdministrativePlan = transformPartyRelationshipPlanUpdate(responseFromServer);

            // Check if the transformation was successful
            if (partyRelationshipAdministrativePlan is error) {
                // Handle the error response
                io:println("Error response received from backend:", partyRelationshipAdministrativePlan);
                common:HTTPErrorBadRequest httpError = {
                    body:{
                        status_code : "400",
                        status: "Bad Request",
                        message : partyRelationshipAdministrativePlan.message()
                    }
                };
                return httpError;
            }
            return partyRelationshipAdministrativePlan;
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
};
