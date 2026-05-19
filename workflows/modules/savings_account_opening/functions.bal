import ballerinax/financial.bian.attribute.groups.common as common_attributes;
import ballerinax/financial.bian.attribute.groups.business_development as business_development;
import ballerinax/financial.bian.attribute.groups.customers as customers;
import ballerinax/financial.bian.attribute.groups.finance_risk_management as finance_risk_management;
import ballerinax/financial.bian.attribute.groups.operations as operations;
import ballerinax/financial.bian.attribute.groups.products as products;
import ballerinax/financial.bian.business.workflows.common as common;
import ballerina/io;

// Calls BIAN Customer Offer v14 — Initiate endpoint.
// BIAN domain: Customers | Service Domain: CustomerOffer
// Records the customer's expressed interest in a product and creates a formal offer record
// that tracks the sales interaction from initiation through to agreement or rejection.
// The returned procedure record carries the offer reference ID required by downstream steps.
isolated function initiateCustomerOffer(customers:CustomerOfferProcedure request) returns customers:CustomerOfferProcedure|common_attributes:HTTPErrorBadRequest|common_attributes:HTTPErrorUnauthorized|common_attributes:HTTPErrorForbidden|common_attributes:HTTPErrorNotFound|common_attributes:HTTPErrorTooManyRequests|common_attributes:HTTPErrorInternalServerError {

    customers:CustomerOfferProcedure|error response = common:customersBianClient->/bian/CustomerOffer/v14/CustomerOffer/Initiate.post(request);
    io:println("Recieved CustomerOfferProcedure Response");

    if response is error {
        return common:constructInternalServerError(response.message(), response.detail().toString());
    } 
    return response;
}

// Calls BIAN Party Lifecycle Management v14 — Initiate endpoint.
// BIAN domain: Customers | Service Domain: PartyLifecycleManagement
// Manages the end-to-end lifecycle of a party (customer) relationship with the bank, including
// onboarding, identity verification, eligibility assessment, and status tracking.
// Called twice in this workflow: once for onboarding (Step 2) and once for product eligibility
// verification (Step 8). The returned plan record carries party and qualification references.
isolated function initiatePartyLifecycle(customers:PartyRelationshipAdministrativePlan request) returns customers:PartyRelationshipAdministrativePlan|common_attributes:HTTPErrorBadRequest|common_attributes:HTTPErrorUnauthorized|common_attributes:HTTPErrorForbidden|common_attributes:HTTPErrorNotFound|common_attributes:HTTPErrorTooManyRequests|common_attributes:HTTPErrorInternalServerError {

    customers:PartyRelationshipAdministrativePlan|error response = common:customersBianClient->/bian/PartyLifecycleManagement/v14/PartyLifecycleManagement/Initiate.post(request);
    io:println("Recieved PartyRelationshipAdministrativePlan Response");
    
    if response is error {
        return common:constructInternalServerError(response.message(), response.detail().toString());
    } 
    return response;
}

// Calls BIAN Party Reference Data Directory v14 — Retrieve Associations endpoint.
// BIAN domain: Customers | Service Domain: PartyReferenceDataDirectory
// Retrieves the customer's external associations including linked entities, related parties,
// and cross-references to other bank systems (e.g., the Customer Product and Service Directory).
// The associations data is the source for the customer product directory ID used in Step 4.
isolated function retrievePartyReferenceDataDirectoryAssociations(string partyReferenceDataDirectoryId, string associationsId) returns common_attributes:Associations|common_attributes:HTTPErrorBadRequest|common_attributes:HTTPErrorUnauthorized|common_attributes:HTTPErrorForbidden|common_attributes:HTTPErrorNotFound|common_attributes:HTTPErrorTooManyRequests|common_attributes:HTTPErrorInternalServerError {

    common_attributes:Associations|error response = common:customersBianClient->/bian/PartyReferenceDataDirectory/v14/PartyReferenceDataDirectory/partyReferenceDataDirectoryId/Associations/associationsId/Retrieve.get();
    io:println("Recieved PartyReferenceDataDirectoryAssociations Response");
    
    if response is error {
        return common:constructInternalServerError(response.message(), response.detail().toString());
    } 
    return response;
}

// Calls BIAN Customer Product and Service Directory v14 — Retrieve endpoint.
// BIAN domain: Customers | Service Domain: CustomerProductandServiceDirectory
// Returns the full list of products and services the customer currently holds with the bank.
// This data drives the product eligibility evaluation (Step 5), enforcing rules such as
// maximum account count per customer and preventing duplicate product subscriptions.
isolated function retrieveCustomerProductServiceEntry(string customerProductAndServiceDirectoryId) returns common_attributes:CustomerProductAndServiceDirectoryEntry|common_attributes:HTTPErrorBadRequest|common_attributes:HTTPErrorUnauthorized|common_attributes:HTTPErrorForbidden|common_attributes:HTTPErrorNotFound|common_attributes:HTTPErrorTooManyRequests|common_attributes:HTTPErrorInternalServerError {

    common_attributes:CustomerProductAndServiceDirectoryEntry|error response = common:customersBianClient->/bian/CustomerProductAndServiceDirectory/v14/CustomerProductandServiceDirectory/customerProductAndServiceDirectoryId/Retrieve.get();
    io:println("Recieved CustomerProductServiceEntry Response");
    
    if response is error {
        return common:constructInternalServerError(response.message(), response.detail().toString());
    } 
    return response;
}

// Calls BIAN Product Directory v14 — Retrieve SalesandMarketing endpoint.
// BIAN domain: BusinessDevelopment | Service Domain: ProductDirectory
// Returns the sales and marketing profile of the product: interest rates, promotional terms,
// marketing descriptions, and the version of terms and conditions applicable at the time of sale.
// This data is presented to the customer in Step 7 and referenced in the Sales Product Agreement (Step 13).
isolated function retrieveSalesAndMarketing(string productDirectoryId, string salesAndMarketingId) returns business_development:SalesandMarketing|common_attributes:HTTPErrorBadRequest|common_attributes:HTTPErrorUnauthorized|common_attributes:HTTPErrorForbidden|common_attributes:HTTPErrorNotFound|common_attributes:HTTPErrorTooManyRequests|common_attributes:HTTPErrorInternalServerError {

    business_development:SalesandMarketing|error response = common:businessDevBianClient->/bian/ProductDirectory/v14/ProductDirectory/productDirectoryId/SalesandMarketing/salesAndMarketingId/Retrieve.get();
    io:println("Recieved Product Directory SalesAndMarketing Response");
    
    if response is error {
        return common:constructInternalServerError(response.message(), response.detail().toString());
    } 
    return response;
}

// Calls BIAN Regulatory Compliance v14 — Evaluate endpoint.
// BIAN domain: FinanceRiskManagement | Service Domain: RegulatoryCompliance
// Performs KYC, AML, and CFT screening against the customer's profile and the proposed
// account transaction details. A non-compliant result must block the workflow; the returned
// assessment reference is carried forward for audit purposes in the guideline compliance check (Step 22).
isolated function evaluateRegulatoryCompliance(finance_risk_management:RegulatoryComplianceAssessment request) returns finance_risk_management:RegulatoryComplianceAssessment|common_attributes:HTTPErrorBadRequest|common_attributes:HTTPErrorUnauthorized|common_attributes:HTTPErrorForbidden|common_attributes:HTTPErrorNotFound|common_attributes:HTTPErrorTooManyRequests|common_attributes:HTTPErrorInternalServerError {

    finance_risk_management:RegulatoryComplianceAssessment|error response = common:frMgmtBianClient->/bian/RegulatoryCompliance/v14/RegulatoryCompliance/Evaluate.post(request);
    io:println("Recieved RegulatoryCompliance Response");
    
    if response is error {
        return common:constructInternalServerError(response.message(), response.detail().toString());
    } 
    return response;
}

// Calls BIAN Savings Account v14 — Initiate endpoint.
// BIAN domain: Products | Service Domain: SavingsAccount
// Provisions the savings account in the bank's core product system, assigning an account number,
// applying product configuration (interest schedule, limits, features), and setting the initial status.
// The returned facility record is the primary source for the account reference used in all
// downstream steps (position keeping, accounting, device assignment, portfolio update, notification).
isolated function initiateSavingsAccount(products:SavingsAccountFacility request) returns products:SavingsAccountFacility|common_attributes:HTTPErrorBadRequest|common_attributes:HTTPErrorUnauthorized|common_attributes:HTTPErrorForbidden|common_attributes:HTTPErrorNotFound|common_attributes:HTTPErrorTooManyRequests|common_attributes:HTTPErrorInternalServerError {

    products:SavingsAccountFacility|error response = common:productsBianClient->/bian/SavingsAccount/v14/SavingsAccount/Initiate.post(request);
    io:println("Recieved SavingsAccount Response");
    
    if response is error {
        return common:constructInternalServerError(response.message(), response.detail().toString());
    } 
    return response;
}

// Calls BIAN Product Directory v14 — Retrieve Operations endpoint.
// BIAN domain: BusinessDevelopment | Service Domain: ProductDirectory
// Returns the operational configuration of the savings account product: fee schedules,
// transaction limits, processing windows, and channel availability rules.
// These parameters are needed to configure position keeping (Step 14) and to determine
// applicable charges for the fee payment order (Step 18).
isolated function retrieveOperations(string productDirectoryId, string operationsId) returns business_development:Operations|common_attributes:HTTPErrorBadRequest|common_attributes:HTTPErrorUnauthorized|common_attributes:HTTPErrorForbidden|common_attributes:HTTPErrorNotFound|common_attributes:HTTPErrorTooManyRequests|common_attributes:HTTPErrorInternalServerError {

    business_development:Operations|error response = common:businessDevBianClient->/bian/ProductDirectory/v14/ProductDirectory/productDirectoryId/Operations/operationsId/Retrieve.get();
    io:println("Recieved Product Directory Operations Response");
    
    if response is error {
        return common:constructInternalServerError(response.message(), response.detail().toString());
    } 
    return response;
}

// Calls BIAN Party Lifecycle Management v14 — Retrieve Qualification endpoint.
// BIAN domain: Customers | Service Domain: PartyLifecycleManagement
// Returns the result of the customer's product qualification assessment performed in Step 8,
// confirming whether the customer meets all eligibility criteria for the savings account.
// The qualification reference is a mandatory input for the Sales Product Agreement (Step 13).
isolated function retrieveQualification(string partyLifecycleManagementId, string qualificationId) returns customers:Qualification|common_attributes:HTTPErrorBadRequest|common_attributes:HTTPErrorUnauthorized|common_attributes:HTTPErrorForbidden|common_attributes:HTTPErrorNotFound|common_attributes:HTTPErrorTooManyRequests|common_attributes:HTTPErrorInternalServerError {

    customers:Qualification|error response = common:customersBianClient->/bian/PartyLifecycleManagement/v14/PartyLifecycleManagement/partyLifecycleManagementId/Qualification/qualificationId/Retrieve.get();
    io:println("Recieved Party Lifecycle Qualification Response");
    
    if response is error {
        return common:constructInternalServerError(response.message(), response.detail().toString());
    } 
    return response;
}

// Calls BIAN Sales Product Agreement v14 — Evaluate endpoint.
// BIAN domain: Customers | Service Domain: SalesProductAgreement
// Evaluates and records the contractual agreement between the bank and the customer for the
// savings account product. Validates that all required references (offer, qualification, terms)
// are present and consistent before formalising the agreement. The returned agreement reference
// is the legal record of the product sale and is required for guideline compliance (Step 22).
isolated function evaluateSalesProductAgreement(customers:SalesProductAgreement request) returns customers:SalesProductAgreement|common_attributes:HTTPErrorBadRequest|common_attributes:HTTPErrorUnauthorized|common_attributes:HTTPErrorForbidden|common_attributes:HTTPErrorNotFound|common_attributes:HTTPErrorTooManyRequests|common_attributes:HTTPErrorInternalServerError {

    customers:SalesProductAgreement|error response = common:customersBianClient->/bian/SalesProductAgreement/v14/SalesProductAgreement/Evaluate.post(request);
    io:println("Recieved SalesProductAgreement Response");
    
    if response is error {
        return common:constructInternalServerError(response.message(), response.detail().toString());
    } 
    return response;
}

// Calls BIAN Position Keeping v14 — Initiate endpoint.
// BIAN domain: Operations | Service Domain: PositionKeeping
// Creates the authoritative financial position log for the new savings account, establishing
// the real-time balance tracking ledger. The position log reference returned here is passed
// to Financial Accounting (Step 15) to link the opening journal entry to the correct position.
isolated function initiatePositionKeeping(operations:FinancialPositionLog request) returns operations:FinancialPositionLog|common_attributes:HTTPErrorBadRequest|common_attributes:HTTPErrorUnauthorized|common_attributes:HTTPErrorForbidden|common_attributes:HTTPErrorNotFound|common_attributes:HTTPErrorTooManyRequests|common_attributes:HTTPErrorInternalServerError {

    operations:FinancialPositionLog|error response = common:operationsBianClient->/bian/PositionKeeping/v14/PositionKeeping/Initiate.post(request);
    io:println("Received PositionKeeping Response");
    
    if response is error {
        return common:constructInternalServerError(response.message(), response.detail().toString());
    } 
    return response;
}

// Calls BIAN Financial Accounting v14 — Initiate endpoint.
// BIAN domain: Operations | Service Domain: FinancialAccounting
// Books the opening journal entries in the bank's general ledger: a debit to the payment
// clearing account and a credit to the new savings account liability. This step ensures the
// initial deposit is immediately reflected in the bank's financial statements.
isolated function initiateFinancialAccounting(operations:FinancialBookingLog request) returns operations:FinancialBookingLog|common_attributes:HTTPErrorBadRequest|common_attributes:HTTPErrorUnauthorized|common_attributes:HTTPErrorForbidden|common_attributes:HTTPErrorNotFound|common_attributes:HTTPErrorTooManyRequests|common_attributes:HTTPErrorInternalServerError {

    operations:FinancialBookingLog|error response = common:operationsBianClient->/bian/FinancialAccounting/v14/FinancialAccounting/Initiate.post(request);
    io:println("Received FinancialAccounting Response");
    
    if response is error {
        return common:constructInternalServerError(response.message(), response.detail().toString());
    } 
    return response;
}

// Initiate Payment Order - calls external BIAN service
// function initiatePaymentOrder(clearing_and_settlement:PaymentOrderProcedure request) returns clearing_and_settlement:PaymentOrderProcedure|common_attributes:HTTPErrorBadRequest|common_attributes:HTTPErrorUnauthorized|common_attributes:HTTPErrorForbidden|common_attributes:HTTPErrorNotFound|common_attributes:HTTPErrorTooManyRequests|common_attributes:HTTPErrorInternalServerError {

//     clearing_and_settlement:PaymentOrderProcedure|common_attributes:HTTPError|error response = common:externalBianClient->/bian/PaymentOrder/Initiate.post(request);
//     io:println("Received PaymentOrder Response");
    
//     if response is error {
//         return common:constructInternalServerError(response.message(), response.detail().toString());
//     } 
//     return response;
// }

// Calls BIAN Issued Device Administration v14 — Update DeviceAssignment endpoint.
// BIAN domain: Operations | Service Domain: IssuedDeviceAdministration
// Updates the device assignment record to link the customer's existing authentication device
// (card, token, or mobile) to the newly opened savings account. This enables the customer to
// authenticate and transact on the new account using their already-registered device without
// requiring a new device issuance process.
isolated function updateIssuedDevice(string issuedDeviceAdministrationId, string deviceAssignmentId, operations:DeviceAssignment request) returns operations:DeviceAssignment|common_attributes:HTTPErrorBadRequest|common_attributes:HTTPErrorUnauthorized|common_attributes:HTTPErrorForbidden|common_attributes:HTTPErrorNotFound|common_attributes:HTTPErrorTooManyRequests|common_attributes:HTTPErrorInternalServerError {

    operations:DeviceAssignment|error response = common:operationsBianClient->/bian/IssuedDeviceAdministration/v14/IssuedDeviceAdministration/issuedDeviceAdministrationId/DeviceAssignment/deviceAssignmentId/Update.put(request);
    io:println("Received IssuedDevice Response");
    
    if response is error {
        return common:constructInternalServerError(response.message(), response.detail().toString());
    } 
    return response;
}

// Calls BIAN Customer Product and Service Directory v14 — Register endpoint.
// BIAN domain: Customers | Service Domain: CustomerProductandServiceDirectory
// Registers the newly opened savings account as a new entry in the customer's product portfolio.
// This keeps the customer's product list current and makes the account discoverable to all systems
// that rely on the directory (e.g., internet banking, relationship management, statement generation).
isolated function registerCustomerProductService(common_attributes:CustomerProductAndServiceDirectoryEntry request) returns common_attributes:CustomerProductAndServiceDirectoryEntry|common_attributes:HTTPErrorBadRequest|common_attributes:HTTPErrorUnauthorized|common_attributes:HTTPErrorForbidden|common_attributes:HTTPErrorNotFound|common_attributes:HTTPErrorTooManyRequests|common_attributes:HTTPErrorInternalServerError {

    common_attributes:CustomerProductAndServiceDirectoryEntry|error response = common:customersBianClient->/bian/CustomerProductAndServiceDirectory/v14/CustomerProductandServiceDirectory/Register.post(request);
    io:println("Received CustomerProductService Response");
    
    if response is error {
        return common:constructInternalServerError(response.message(), response.detail().toString());
    } 
    return response;
}

// Calls BIAN Correspondence v14 — Initiate Outbound endpoint.
// BIAN domain: Channels | Service Domain: Correspondence
// Triggers delivery of the account opening confirmation message to the customer's registered
// contact channel (email, SMS, or post). The bank is obligated to notify the customer of the
// new account details; this step satisfies that regulatory and service experience requirement.
isolated function initiateCorrespondenceOutbound(string correspondenceId, common_attributes:Outbound request) returns common_attributes:Outbound|common_attributes:HTTPErrorBadRequest|common_attributes:HTTPErrorUnauthorized|common_attributes:HTTPErrorForbidden|common_attributes:HTTPErrorNotFound|common_attributes:HTTPErrorTooManyRequests|common_attributes:HTTPErrorInternalServerError {

    common_attributes:Outbound|error response = common:channelsBianClient->/bian/Correspondence/v14/Correspondence/correspondenceId/Outbound/Initiate.post(request);
    io:println("Received CorrespondenceOutbound Response");
    
    if response is error {
        return common:constructInternalServerError(response.message(), response.detail().toString());
    } 
    return response;
}

// Calls BIAN Guideline Compliance v14 — Evaluate endpoint.
// BIAN domain: FinanceRiskManagement | Service Domain: GuidelineCompliance
// Performs a post-opening internal policy audit to verify the workflow adhered to the bank's
// sales conduct standards, suitability rules, and product governance guidelines. Unlike Step 9
// (regulatory compliance), this evaluates internal policy rather than external law. The assessment
// result is stored for supervisory reporting and internal audit purposes.
isolated function evaluateGuidelineCompliance(finance_risk_management:GuidelineComplianceAssessment request) returns finance_risk_management:GuidelineComplianceAssessment|common_attributes:HTTPErrorBadRequest|common_attributes:HTTPErrorUnauthorized|common_attributes:HTTPErrorForbidden|common_attributes:HTTPErrorNotFound|common_attributes:HTTPErrorTooManyRequests|common_attributes:HTTPErrorInternalServerError {

    finance_risk_management:GuidelineComplianceAssessment|error response = common:frMgmtBianClient->/bian/GuidelineCompliance/v14/GuidelineCompliance/Evaluate.post(request);
    io:println("Received GuidelineCompliance Response");
    
    if response is error {
        return common:constructInternalServerError(response.message(), response.detail().toString());
    } 
    return response;
}
