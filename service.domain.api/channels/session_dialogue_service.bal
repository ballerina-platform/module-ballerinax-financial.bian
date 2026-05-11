import ballerinax/financial.bian.attribute.groups.channels as channels;
import ballerinax/financial.bian.attribute.groups.common as common;
import ballerina/http;

http:Service sessionDialogueService =  service object {

    # ReBQ Retrieve details about authentication processing
    #
    # + return - returns can be any of following types 
    # http:Ok (Authentication)
    # http:BadRequest (BadRequest)
    # http:Unauthorized (Unauthorized)
    # http:Forbidden (Forbidden)
    # http:NotFound (NotFound)
    # http:TooManyRequests (TooManyRequests)
    # http:InternalServerError (InternalServerError)
    isolated resource function get SessionDialogue/[string sessiondialogueid]/Authentication/[string authenticationid]/Retrieve() returns common:Authentication|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        common:Authentication auth = {};
        return auth;
    }

    # ReBQ Retrieve details about case handling
    #
    # + return - returns can be any of following types 
    # http:Ok (Case)
    # http:BadRequest (BadRequest)
    # http:Unauthorized (Unauthorized)
    # http:Forbidden (Forbidden)
    # http:NotFound (NotFound)
    # http:TooManyRequests (TooManyRequests)
    # http:InternalServerError (InternalServerError)
    isolated resource function get SessionDialogue/[string sessiondialogueid]/Case/[string caseid]/Retrieve() returns channels:Case|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        channels:Case caseDetails = {};
        return caseDetails;
    }

    # ReBQ Retrieve details about customer history recording
    #
    # + return - returns can be any of following types 
    # http:Ok (History)
    # http:BadRequest (BadRequest)
    # http:Unauthorized (Unauthorized)
    # http:Forbidden (Forbidden)
    # http:NotFound (NotFound)
    # http:TooManyRequests (TooManyRequests)
    # http:InternalServerError (InternalServerError)
    isolated resource function get SessionDialogue/[string sessiondialogueid]/History/[string historyid]/Retrieve() returns common:History|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        common:History history = {};
        return history;
    }

    // # ReBQ Retrieve details about customer insight capture
    // #
    // # + return - returns can be any of following types 
    // # http:Ok (RetrieveIntelligenceResponse)
    // # http:BadRequest (BadRequest)
    // # http:Unauthorized (Unauthorized)
    // # http:Forbidden (Forbidden)
    // # http:NotFound (NotFound)
    // # http:TooManyRequests (TooManyRequests)
    // # http:InternalServerError (InternalServerError)
    // isolated resource function get SessionDialogue/[string sessiondialogueid]/Intelligence/[string intelligenceid]/Retrieve() returns channels:RetrieveIntelligenceResponse|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
    //     channels:RetrieveIntelligenceResponse intelligenceResponse = {};
    //     return intelligenceResponse;
    // }

    # ReBQ Retrieve details about offer handling
    #
    # + return - returns can be any of following types 
    # http:Ok (Offer)
    # http:BadRequest (BadRequest)
    # http:Unauthorized (Unauthorized)
    # http:Forbidden (Forbidden)
    # http:NotFound (NotFound)
    # http:TooManyRequests (TooManyRequests)
    # http:InternalServerError (InternalServerError)
    isolated resource function get SessionDialogue/[string sessiondialogueid]/Offer/[string offerid]/Retrieve() returns channels:Offer|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        channels:Offer offer = {};
        return offer;
    }

    # ReBQ Retrieve details about order handling
    #
    # + return - returns can be any of following types 
    # http:Ok (Order)
    # http:BadRequest (BadRequest)
    # http:Unauthorized (Unauthorized)
    # http:Forbidden (Forbidden)
    # http:NotFound (NotFound)
    # http:TooManyRequests (TooManyRequests)
    # http:InternalServerError (InternalServerError)
    isolated resource function get SessionDialogue/[string sessiondialogueid]/Order/[string orderid]/Retrieve() returns channels:Order|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        channels:Order orderDetails = {};
        return orderDetails;
    }

    # ReBQ Retrieve details about product/service handling
    #
    # + return - returns can be any of following types 
    # http:Ok (ProductorService)
    # http:BadRequest (BadRequest)
    # http:Unauthorized (Unauthorized)
    # http:Forbidden (Forbidden)
    # http:NotFound (NotFound)
    # http:TooManyRequests (TooManyRequests)
    # http:InternalServerError (InternalServerError)
    isolated resource function get SessionDialogue/[string sessiondialogueid]/ProductorService/[string productorserviceid]/Retrieve() returns channels:ProductorService|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        channels:ProductorService productService = {};
        return productService;
    }

    # ReBQ Retrieve details about query handling
    #
    # + return - returns can be any of following types 
    # http:Ok (Query)
    # http:BadRequest (BadRequest)
    # http:Unauthorized (Unauthorized)
    # http:Forbidden (Forbidden)
    # http:NotFound (NotFound)
    # http:TooManyRequests (TooManyRequests)
    # http:InternalServerError (InternalServerError)
    isolated resource function get SessionDialogue/[string sessiondialogueid]/Query/[string queryid]/Retrieve() returns channels:Query|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        channels:Query query = {};
        return query;
    }

    # ReCR Retrieve details about a customer dialogue
    #
    # + return - returns can be any of following types 
    # http:Ok (CustomerContactSessionProcedure)
    # http:BadRequest (BadRequest)
    # http:Unauthorized (Unauthorized)
    # http:Forbidden (Forbidden)
    # http:NotFound (NotFound)
    # http:TooManyRequests (TooManyRequests)
    # http:InternalServerError (InternalServerError)
    isolated resource function get SessionDialogue/[string sessiondialogueid]/Retrieve() returns channels:CustomerContactSessionProcedure|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        channels:CustomerContactSessionProcedure sessionProcedure = {};
        return sessionProcedure;
    }

    # ReBQ Retrieve details about sales handling
    #
    # + return - returns can be any of following types 
    # http:Ok (Sales)
    # http:BadRequest (BadRequest)
    # http:Unauthorized (Unauthorized)
    # http:Forbidden (Forbidden)
    # http:NotFound (NotFound)
    # http:TooManyRequests (TooManyRequests)
    # http:InternalServerError (InternalServerError)
    isolated resource function get SessionDialogue/[string sessiondialogueid]/Sales/[string salesid]/Retrieve() returns channels:Sales|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        channels:Sales sales = {};
        return sales;
    }

    # InCR Initiate a customer dialogue
    #
    # + return - returns can be any of following types 
    # http:Ok (CustomerContactSessionProcedure)
    # http:BadRequest (BadRequest)
    # http:Unauthorized (Unauthorized)
    # http:Forbidden (Forbidden)
    # http:NotFound (NotFound)
    # http:TooManyRequests (TooManyRequests)
    # http:InternalServerError (InternalServerError)
    isolated resource function post SessionDialogue/Initiate(@http:Payload channels:CustomerContactSessionProcedure payload) returns channels:CustomerContactSessionProcedureOk|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        channels:CustomerContactSessionProcedureOk sessionProcedureOk = {body: {}};
        return sessionProcedureOk;
    }

    # InBQ Initiate customer case handling
    #
    # + return - returns can be any of following types 
    # http:Ok (Case)
    # http:BadRequest (BadRequest)
    # http:Unauthorized (Unauthorized)
    # http:Forbidden (Forbidden)
    # http:NotFound (NotFound)
    # http:TooManyRequests (TooManyRequests)
    # http:InternalServerError (InternalServerError)
    isolated resource function post SessionDialogue/[string sessiondialogueid]/Case/Initiate(@http:Payload channels:Case payload) returns channels:CaseOk|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        return <channels:CaseOk> {body: {}};
    }

    // # InBQ Initiate customer insight capture
    // #
    // # + return - returns can be any of following types 
    // # http:Ok (InitiateIntelligenceResponse)
    // # http:BadRequest (BadRequest)
    // # http:Unauthorized (Unauthorized)
    // # http:Forbidden (Forbidden)
    // # http:NotFound (NotFound)
    // # http:TooManyRequests (TooManyRequests)
    // # http:InternalServerError (InternalServerError)
    // isolated resource function post SessionDialogue/[string sessiondialogueid]/Intelligence/Initiate(@http:Payload channels:InitiateIntelligenceRequest payload) returns channels:InitiateIntelligenceResponseOk|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
    //     channels:InitiateIntelligenceResponseOk intelligenceResponseOk = {body: {}};
    //     return intelligenceResponseOk;
    // }

    # InBQ Initiate customer offer handling
    #
    # + return - returns can be any of following types 
    # http:Ok (Offer)
    # http:BadRequest (BadRequest)
    # http:Unauthorized (Unauthorized)
    # http:Forbidden (Forbidden)
    # http:NotFound (NotFound)
    # http:TooManyRequests (TooManyRequests)
    # http:InternalServerError (InternalServerError)
    isolated resource function post SessionDialogue/[string sessiondialogueid]/Offer/Initiate(@http:Payload channels:Offer payload) returns channels:OfferOk|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        channels:OfferOk offerOk = {body: {}};
        return offerOk;
    }

    # InBQ Initiate customer order handling
    #
    # + return - returns can be any of following types 
    # http:Ok (Order)
    # http:BadRequest (BadRequest)
    # http:Unauthorized (Unauthorized)
    # http:Forbidden (Forbidden)
    # http:NotFound (NotFound)
    # http:TooManyRequests (TooManyRequests)
    # http:InternalServerError (InternalServerError)
    isolated resource function post SessionDialogue/[string sessiondialogueid]/Order/Initiate(@http:Payload channels:Order payload) returns channels:OrderOk|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        channels:OrderOk orderOk = {body: {}};
        return orderOk;
    }

    # InBQ Initiate customer product/service handling
    #
    # + return - returns can be any of following types 
    # http:Ok (ProductorService)
    # http:BadRequest (BadRequest)
    # http:Unauthorized (Unauthorized)
    # http:Forbidden (Forbidden)
    # http:NotFound (NotFound)
    # http:TooManyRequests (TooManyRequests)
    # http:InternalServerError (InternalServerError)
    isolated resource function post SessionDialogue/[string sessiondialogueid]/ProductorService/Initiate(@http:Payload channels:ProductorService payload) returns channels:ProductorServiceOk|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        channels:ProductorServiceOk productServiceOk = {body: {}};
        return productServiceOk;
    }

    # InBQ Initiate customer query handling
    #
    # + return - returns can be any of following types 
    # http:Ok (Query)
    # http:BadRequest (BadRequest)
    # http:Unauthorized (Unauthorized)
    # http:Forbidden (Forbidden)
    # http:NotFound (NotFound)
    # http:TooManyRequests (TooManyRequests)
    # http:InternalServerError (InternalServerError)
    isolated resource function post SessionDialogue/[string sessiondialogueid]/Query/Initiate(@http:Payload channels:Query payload) returns channels:QueryOk|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        channels:QueryOk queryOk = {body: {}};
        return queryOk;
    }

    # InBQ Initiate customer sales handling
    #
    # + return - returns can be any of following types 
    # http:Ok (Sales)
    # http:BadRequest (BadRequest)
    # http:Unauthorized (Unauthorized)
    # http:Forbidden (Forbidden)
    # http:NotFound (NotFound)
    # http:TooManyRequests (TooManyRequests)
    # http:InternalServerError (InternalServerError)
    isolated resource function post SessionDialogue/[string sessiondialogueid]/Sales/Initiate(@http:Payload channels:Sales payload) returns channels:SalesOk|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        channels:SalesOk salesOk = {body: {}};
        return salesOk;
    }

    # UpBQ Update details for authentication processing
    #
    # + return - returns can be any of following types 
    # http:Ok (Authentication)
    # http:BadRequest (BadRequest)
    # http:Unauthorized (Unauthorized)
    # http:Forbidden (Forbidden)
    # http:NotFound (NotFound)
    # http:TooManyRequests (TooManyRequests)
    # http:InternalServerError (InternalServerError)
    isolated resource function put SessionDialogue/[string sessiondialogueid]/Authentication/[string authenticationid]/Update(@http:Payload common:Authentication payload) returns common:Authentication|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        common:Authentication auth = {};
        return auth;
    }

    # UpBQ Update details for case handling
    #
    # + return - returns can be any of following types 
    # http:Ok (Case)
    # http:BadRequest (BadRequest)
    # http:Unauthorized (Unauthorized)
    # http:Forbidden (Forbidden)
    # http:NotFound (NotFound)
    # http:TooManyRequests (TooManyRequests)
    # http:InternalServerError (InternalServerError)
    isolated resource function put SessionDialogue/[string sessiondialogueid]/Case/[string caseid]/Update(@http:Payload channels:Case payload) returns channels:Case|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        channels:Case caseDetails = {};
        return caseDetails;
    }

    # CoCR Control the processing of a dialogue (e.g. suspend)
    #
    # + return - returns can be any of following types 
    # http:Ok (CustomerContactSessionProcedure)
    # http:BadRequest (BadRequest)
    # http:Unauthorized (Unauthorized)
    # http:Forbidden (Forbidden)
    # http:NotFound (NotFound)
    # http:TooManyRequests (TooManyRequests)
    # http:InternalServerError (InternalServerError)
    isolated resource function put SessionDialogue/[string sessiondialogueid]/Control(@http:Payload channels:CustomerContactSessionProcedure payload) returns channels:CustomerContactSessionProcedure|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        channels:CustomerContactSessionProcedure sessionProcedure = {};
        return sessionProcedure;
    }

    # EcCR Accept, verify, etc. a customer dialogue (e.g. accept proposal)
    #
    # + return - returns can be any of following types 
    # http:Ok (CustomerContactSessionProcedure)
    # http:BadRequest (BadRequest)
    # http:Unauthorized (Unauthorized)
    # http:Forbidden (Forbidden)
    # http:NotFound (NotFound)
    # http:TooManyRequests (TooManyRequests)
    # http:InternalServerError (InternalServerError)
    isolated resource function put SessionDialogue/[string sessiondialogueid]/Exchange(@http:Payload channels:CustomerContactSessionProcedure payload) returns channels:CustomerContactSessionProcedure|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        channels:CustomerContactSessionProcedure sessionProcedure = {};
        return sessionProcedure;
    }

    # ExCR Execute an automated task (e.g. self service offer process)
    #
    # + return - returns can be any of following types 
    # http:Ok (CustomerContactSessionProcedure)
    # http:BadRequest (BadRequest)
    # http:Unauthorized (Unauthorized)
    # http:Forbidden (Forbidden)
    # http:NotFound (NotFound)
    # http:TooManyRequests (TooManyRequests)
    # http:InternalServerError (InternalServerError)
    isolated resource function put SessionDialogue/[string sessiondialogueid]/Execute(@http:Payload channels:CustomerContactSessionProcedure payload) returns channels:CustomerContactSessionProcedure|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        channels:CustomerContactSessionProcedure sessionProcedure = {};
        return sessionProcedure;
    }

    # UpBQ Update details for customer history recording
    #
    # + return - returns can be any of following types 
    # http:Ok (History)
    # http:BadRequest (BadRequest)
    # http:Unauthorized (Unauthorized)
    # http:Forbidden (Forbidden)
    # http:NotFound (NotFound)
    # http:TooManyRequests (TooManyRequests)
    # http:InternalServerError (InternalServerError)
    isolated resource function put SessionDialogue/[string sessiondialogueid]/History/[string historyid]/Update(@http:Payload common:History payload) returns common:History|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        common:History history = {};
        return history;
    }

    // # UpBQ Update details for customer insight capture
    // #
    // # + return - returns can be any of following types 
    // # http:Ok (UpdateIntelligenceResponse)
    // # http:BadRequest (BadRequest)
    // # http:Unauthorized (Unauthorized)
    // # http:Forbidden (Forbidden)
    // # http:NotFound (NotFound)
    // # http:TooManyRequests (TooManyRequests)
    // # http:InternalServerError (InternalServerError)
    // isolated resource function put SessionDialogue/[string sessiondialogueid]/Intelligence/[string intelligenceid]/Update(@http:Payload channels:UpdateIntelligenceRequest payload) returns channels:UpdateIntelligenceResponse|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
    //     channels:UpdateIntelligenceResponse intelligenceResponse = {};
    //     return intelligenceResponse;
    // }

    # UpBQ Update details for offer handling
    #
    # + return - returns can be any of following types 
    # http:Ok (Offer)
    # http:BadRequest (BadRequest)
    # http:Unauthorized (Unauthorized)
    # http:Forbidden (Forbidden)
    # http:NotFound (NotFound)
    # http:TooManyRequests (TooManyRequests)
    # http:InternalServerError (InternalServerError)
    isolated resource function put SessionDialogue/[string sessiondialogueid]/Offer/[string offerid]/Update(@http:Payload channels:Offer payload) returns channels:Offer|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        channels:Offer offer = {};
        return offer;
    }

    # Exchange Order
    #
    # + return - returns can be any of following types 
    # http:Ok (Order)
    # http:BadRequest (BadRequest)
    # http:Unauthorized (Unauthorized)
    # http:Forbidden (Forbidden)
    # http:NotFound (NotFound)
    # http:TooManyRequests (TooManyRequests)
    # http:InternalServerError (InternalServerError)
    isolated resource function put SessionDialogue/[string sessiondialogueid]/Order/[string orderid]/Exchange(@http:Payload channels:Order payload) returns channels:Order|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        channels:Order orderDetails = {};
        return orderDetails;
    }

    # UpBQ Update details for order handling
    #
    # + return - returns can be any of following types 
    # http:Ok (Order)
    # http:BadRequest (BadRequest)
    # http:Unauthorized (Unauthorized)
    # http:Forbidden (Forbidden)
    # http:NotFound (NotFound)
    # http:TooManyRequests (TooManyRequests)
    # http:InternalServerError (InternalServerError)
    isolated resource function put SessionDialogue/[string sessiondialogueid]/Order/[string orderid]/Update(@http:Payload channels:Order payload) returns channels:Order|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        channels:Order orderDetails = {};
        return orderDetails;
    }

    # Exchange customer product/service requirements or acceptance
    #
    # + return - returns can be any of following types 
    # http:Ok (ProductorService)
    # http:BadRequest (BadRequest)
    # http:Unauthorized (Unauthorized)
    # http:Forbidden (Forbidden)
    # http:NotFound (NotFound)
    # http:TooManyRequests (TooManyRequests)
    # http:InternalServerError (InternalServerError)
    isolated resource function put SessionDialogue/[string sessiondialogueid]/ProductorService/[string productorserviceid]/Exchange(@http:Payload  channels:ProductorService payload) returns channels:ProductorService|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        channels:ProductorService productService = {};
        return productService;
    }

    # Capture details for product/service handling
    #
    # + return - returns can be any of following types 
    # http:Ok (ProductorService)
    # http:BadRequest (BadRequest)
    # http:Unauthorized (Unauthorized)
    # http:Forbidden (Forbidden)
    # http:NotFound (NotFound)
    # http:TooManyRequests (TooManyRequests)
    # http:InternalServerError (InternalServerError)
    isolated resource function put SessionDialogue/[string sessiondialogueid]/ProductorService/[string productorserviceid]/Execute(@http:Payload channels:ProductorService payload) returns channels:ProductorService|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        channels:ProductorService productService = {};
        return productService;
    }

    # UpBQ Update details for product/service handling
    #
    # + return - returns can be any of following types 
    # http:Ok (ProductorService)
    # http:BadRequest (BadRequest)
    # http:Unauthorized (Unauthorized)
    # http:Forbidden (Forbidden)
    # http:NotFound (NotFound)
    # http:TooManyRequests (TooManyRequests)
    # http:InternalServerError (InternalServerError)
    isolated resource function put SessionDialogue/[string sessiondialogueid]/ProductorService/[string productorserviceid]/Update(@http:Payload channels:ProductorService payload) returns channels:ProductorService|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        channels:ProductorService productService = {};
        return productService;
    }

    # UpBQ Update details for query handling
    #
    # + return - returns can be any of following types 
    # http:Ok (Query)
    # http:BadRequest (BadRequest)
    # http:Unauthorized (Unauthorized)
    # http:Forbidden (Forbidden)
    # http:NotFound (NotFound)
    # http:TooManyRequests (TooManyRequests)
    # http:InternalServerError (InternalServerError)
    isolated resource function put SessionDialogue/[string sessiondialogueid]/Query/[string queryid]/Update(@http:Payload channels:Query payload) returns channels:Query|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        channels:Query query = {};
        return query;
    }

    # RqCR Request manual intervention (e.g. request servicing support)
    #
    # + return - returns can be any of following types 
    # http:Ok (CustomerContactSessionProcedure)
    # http:BadRequest (BadRequest)
    # http:Unauthorized (Unauthorized)
    # http:Forbidden (Forbidden)
    # http:NotFound (NotFound)
    # http:TooManyRequests (TooManyRequests)
    # http:InternalServerError (InternalServerError)
    isolated resource function put SessionDialogue/[string sessiondialogueid]/Request(@http:Payload channels:CustomerContactSessionProcedure payload) returns channels:CustomerContactSessionProcedure|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        channels:CustomerContactSessionProcedure sessionProcedure = {};
        return sessionProcedure;
    }

    # UpBQ Update details for sales handling
    #
    # + return - returns can be any of following types 
    # http:Ok (Sales)
    # http:BadRequest (BadRequest)
    # http:Unauthorized (Unauthorized)
    # http:Forbidden (Forbidden)
    # http:NotFound (NotFound)
    # http:TooManyRequests (TooManyRequests)
    # http:InternalServerError (InternalServerError)
    isolated resource function put SessionDialogue/[string sessiondialogueid]/Sales/[string salesid]/Update(@http:Payload channels:Sales payload) returns channels:Sales|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        channels:Sales sales = {};
        return sales;
    }

    # UpCR Update details of a customer dialogue
    #
    # + return - returns can be any of following types 
    # http:Ok (CustomerContactSessionProcedure)
    # http:BadRequest (BadRequest)
    # http:Unauthorized (Unauthorized)
    # http:Forbidden (Forbidden)
    # http:NotFound (NotFound)
    # http:TooManyRequests (TooManyRequests)
    # http:InternalServerError (InternalServerError)
    isolated resource function put SessionDialogue/[string sessiondialogueid]/Update(@http:Payload channels:CustomerContactSessionProcedure payload) returns channels:CustomerContactSessionProcedure|common:HTTPErrorBadRequest|common:HTTPErrorUnauthorized|common:HTTPErrorForbidden|common:HTTPErrorNotFound|common:HTTPErrorTooManyRequests|common:HTTPErrorInternalServerError {
        channels:CustomerContactSessionProcedure sessionProcedure = {};
        return sessionProcedure;
    }
};
