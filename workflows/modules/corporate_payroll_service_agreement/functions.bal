import ballerinax/financial.bian.attribute.groups.business_development as business_development;
import ballerinax/financial.bian.attribute.groups.common as common_attributes;
import ballerinax/financial.bian.attribute.groups.customers as customers;
import ballerinax/financial.bian.attribute.groups.products as products;
import ballerinax/financial.bian.business.workflows.common as common;
import ballerina/io;

// ─── Step 1: Record Request to Open Corporate Payroll Service Agreement ─────

// Calls BIAN Customer Offer v14 — Initiate endpoint.
// BIAN domain: Customers | Service Domain: CustomerOffer
// Creates a formal customer offer procedure to initiate the corporate payroll service
// agreement process. The offer record captures the customer's request details and
// triggers the bank's offer processing pipeline. All subsequent steps use the offer
// reference returned here as the anchor for the agreement setup process.
isolated function initiateCustomerOffer(customers:CustomerOfferProcedure request)
        returns customers:CustomerOfferProcedure|common_attributes:HTTPErrorBadRequest|common_attributes:HTTPErrorUnauthorized|common_attributes:HTTPErrorForbidden|
        common_attributes:HTTPErrorNotFound|common_attributes:HTTPErrorTooManyRequests|common_attributes:HTTPErrorInternalServerError {

    customers:CustomerOfferProcedure|error response = common:customersBianClient->/bian/CustomerOffer/v14/CustomerOffer/Initiate.post(request);
    io:println("Received CustomerOffer Initiate Response");

    if response is error {
        return common:constructInternalServerError(response.message(), response.detail().toString());
    }
    return response;
}

// ─── Step 2: Verify Corporate Customer ──────────────────────────────────────

// Calls BIAN Party Lifecycle Management v14 — Retrieve endpoint.
// BIAN domain: Customers | Service Domain: PartyLifecycleManagement
// Retrieves the corporate customer's existing party record to verify they are a known
// and active customer of the bank with a valid banking relationship. Confirms the
// customer is in good standing and eligible for payroll services before proceeding.
// Also retrieves the customer's risk profile which determines the applicable terms.
isolated function verifyCustomer(string partyLifecycleManagementId)
        returns customers:PartyRelationshipAdministrativePlan|common_attributes:HTTPErrorBadRequest|common_attributes:HTTPErrorUnauthorized|common_attributes:HTTPErrorForbidden|
        common_attributes:HTTPErrorNotFound|common_attributes:HTTPErrorTooManyRequests|common_attributes:HTTPErrorInternalServerError {

    customers:PartyRelationshipAdministrativePlan|error response = common:customersBianClient->/bian/PartyLifecycleManagement/v14/PartyLifecycleManagement/[partyLifecycleManagementId]/Retrieve.get();
    io:println("Received PartyLifecycleManagement Retrieve Response");

    if response is error {
        return common:constructInternalServerError(response.message(), response.detail().toString());
    }
    return response;
}

// ─── Step 3: Get Details of Salary Account Services ─────────────────────────

// Calls BIAN Product Directory v14 — Retrieve endpoint.
// BIAN domain: BusinessDevelopment | Service Domain: ProductDirectory
// Retrieves the product specification for Salary Account Services from the bank's
// product catalogue. This includes the service features, eligibility criteria, fee
// structure, terms and conditions, and any bundling rules applicable to the payroll
// service product. The retrieved specification is used to set the terms agreed with
// the customer in Step 5 (Open Agreement) and Step 6 (Sales Product Agreement).
isolated function getSalaryAccountServiceDetails(string productDirectoryId)
        returns business_development:ProductDirectoryEntry|common_attributes:HTTPErrorBadRequest|common_attributes:HTTPErrorUnauthorized|common_attributes:HTTPErrorForbidden|
        common_attributes:HTTPErrorNotFound|common_attributes:HTTPErrorTooManyRequests|common_attributes:HTTPErrorInternalServerError {

    business_development:ProductDirectoryEntry|error response = common:businessDevBianClient->/bian/ProductDirectory/v14/ProductDirectory/[productDirectoryId]/Retrieve.get();
    io:println("Received ProductDirectory Retrieve Response");

    if response is error {
        return common:constructInternalServerError(response.message(), response.detail().toString());
    }
    return response;
}

// ─── Step 4: Retrieve List of Products of this Customer ─────────────────────

// Calls BIAN Customer Product and Service Directory v14 — Retrieve endpoint.
// BIAN domain: Customers | Service Domain: CustomerProductAndServiceDirectory
// Retrieves the complete list of products and services the customer currently holds
// with the bank. This ensures the payroll service is not a duplicate of an existing
// arrangement and identifies any complementary products (e.g., current accounts
// already set up) that can be linked to the payroll service agreement. Also used
// to determine the applicable pricing tier based on the customer's product portfolio.
isolated function retrieveCustomerProducts(string customerProductServiceDirectoryId)
        returns common_attributes:CustomerProductAndServiceDirectoryEntry|common_attributes:HTTPErrorBadRequest|common_attributes:HTTPErrorUnauthorized|common_attributes:HTTPErrorForbidden|
        common_attributes:HTTPErrorNotFound|common_attributes:HTTPErrorTooManyRequests|common_attributes:HTTPErrorInternalServerError {

    common_attributes:CustomerProductAndServiceDirectoryEntry|error response = common:customersBianClient->/bian/CustomerProductAndServiceDirectory/v14/CustomerProductandServiceDirectory/[customerProductServiceDirectoryId]/Retrieve.get();
    io:println("Received CustomerProductAndServiceDirectory Retrieve Response");

    if response is error {
        return common:constructInternalServerError(response.message(), response.detail().toString());
    }
    return response;
}

// ─── Step 5: Open Corporate Payroll Services Agreement ──────────────────────

// Calls BIAN Corporate Payroll Services v14 — Initiate endpoint.
// BIAN domain: Products | Service Domain: CorporatePayrollServices
// Creates the corporate payroll services facility for the customer, establishing the
// operational agreement for the bank to process employee salary payments on behalf of
// the corporate. The facility record captures the payroll parameters: payment frequency,
// employee count, source account, and service tier. This is the central record to
// which the sales agreement (Step 6), authorisation (Step 9), and fee payment (Step 10)
// are all anchored. The returned facility ID is used for the authorisation update in Step 9.
// Note: "Agree Conditions with Customer" is an internal advisory step that informs the
//       payroll parameters passed into this initiation call; it is not a separate API call.
isolated function openCorporatePayrollServicesAgreement(products:EmployeePaymentServicesFacility request)
        returns products:EmployeePaymentServicesFacility|common_attributes:HTTPErrorBadRequest|common_attributes:HTTPErrorUnauthorized|common_attributes:HTTPErrorForbidden|
        common_attributes:HTTPErrorNotFound|common_attributes:HTTPErrorTooManyRequests|common_attributes:HTTPErrorInternalServerError {

    products:EmployeePaymentServicesFacility|error response = common:productsBianClient->/bian/CorporatePayrollServices/v14/CorporatePayrollServices/Initiate.post(request);
    io:println("Received CorporatePayrollServices Initiate Response");

    if response is error {
        return common:constructInternalServerError(response.message(), response.detail().toString());
    }
    return response;
}

// ─── Step 6: Create Sales Product Agreement ─────────────────────────────────

// Calls BIAN Sales Product Agreement v14 — Initiate endpoint.
// BIAN domain: Customers | Service Domain: SalesProductAgreement
// Creates the formal sales product agreement that legally binds the bank and the
// corporate customer to the payroll service terms. The agreement records the agreed
// fees, service levels, payment schedule, and any special conditions negotiated during
// the customer offer phase. It references both the customer offer (Step 1) and the
// payroll facility (Step 5). The sales agreement must be signed by the customer
// (Step 7) and filed (Step 8) before the payroll facility can be authorised (Step 9).
isolated function createSalesProductAgreement(customers:SalesProductAgreement request)
        returns customers:SalesProductAgreement|common_attributes:HTTPErrorBadRequest|common_attributes:HTTPErrorUnauthorized|common_attributes:HTTPErrorForbidden|
        common_attributes:HTTPErrorNotFound|common_attributes:HTTPErrorTooManyRequests|common_attributes:HTTPErrorInternalServerError {

    customers:SalesProductAgreement|error response = common:customersBianClient->/bian/SalesProductAgreement/v14/SalesProductAgreement/Evaluate.post(request);
    io:println("Received SalesProductAgreement Initiate Response");

    if response is error {
        return common:constructInternalServerError(response.message(), response.detail().toString());
    }
    return response;
}

// ─── Step 7: Get Customer Signatures ────────────────────────────────────────

// Calls BIAN Correspondence v14 — Initiate endpoint (outbound signature request).
// BIAN domain: Channels | Service Domain: Correspondence
// Initiates outbound correspondence to the corporate customer requesting authorised
// signatures on the sales product agreement generated in Step 6. The correspondence
// may be delivered via the customer's preferred channel (email, secure messaging,
// or postal). The bank must hold the agreement in a pending state until signatures
// are received. The correspondence reference is included in the document filing
// record (Step 8) to create an audit trail linking the signature request to the filed document.
isolated function requestCustomerSignatures(common_attributes:Outbound request)
        returns common_attributes:Outbound|common_attributes:HTTPErrorBadRequest|common_attributes:HTTPErrorUnauthorized|common_attributes:HTTPErrorForbidden|
        common_attributes:HTTPErrorNotFound|common_attributes:HTTPErrorTooManyRequests|common_attributes:HTTPErrorInternalServerError {

    common_attributes:Outbound|error response = common:channelsBianClient->/bian/Correspondence/v14/Correspondence/Initiate.post(request);
    io:println("Received Correspondence Initiate (Signatures) Response");

    if response is error {
        return common:constructInternalServerError(response.message(), response.detail().toString());
    }
    return response;
}

// ─── Step 8: File Sales Product Agreement ───────────────────────────────────

// Calls BIAN Document Directory v14 — Register endpoint.
// BIAN domain: Operations | Service Domain: DocumentDirectory
// Registers and files the signed sales product agreement in the bank's document
// management system. Creates a permanent, auditable record linking the signed agreement
// to the customer's party record, the payroll facility, and the correspondence thread
// from Step 7. The filed document reference is required for regulatory compliance and
// is included in the authorisation payload for Step 9, confirming that the legal
// documentation is complete before the payroll facility goes live.
isolated function fileSalesProductAgreement(common_attributes:DocumentDirectoryEntry request)
        returns common_attributes:DocumentDirectoryEntry|common_attributes:HTTPErrorBadRequest|common_attributes:HTTPErrorUnauthorized|common_attributes:HTTPErrorForbidden|
        common_attributes:HTTPErrorNotFound|common_attributes:HTTPErrorTooManyRequests|common_attributes:HTTPErrorInternalServerError {

    common_attributes:DocumentDirectoryEntry|error response = common:operationsBianClient->/bian/DocumentDirectory/v14/DocumentDirectory/Register.post(request);
    io:println("Received DocumentDirectory Register Response");

    if response is error {
        return common:constructInternalServerError(response.message(), response.detail().toString());
    }
    return response;
}

// ─── Step 9: Authorise Corporate Payroll Services Agreement ─────────────────

// Calls BIAN Corporate Payroll Services v14 — Update endpoint.
// BIAN domain: Products | Service Domain: CorporatePayrollServices
// Updates the payroll facility to authorised status, confirming that all prerequisite
// steps are complete: customer verification (Step 2), conditions agreed (Step 5),
// sales agreement created (Step 6), signatures obtained (Step 7), and document filed
// (Step 8). Only after authorisation does the payroll facility become operational
// and eligible to process employee salary payments. The update payload must include
// references to the signed agreement document and the customer's authorised signatories.
isolated function authoriseCorporatePayrollAgreement(string corporatePayrollServicesId,
        products:EmployeePaymentServicesFacility request)
        returns products:EmployeePaymentServicesFacility|common_attributes:HTTPErrorBadRequest|common_attributes:HTTPErrorUnauthorized|common_attributes:HTTPErrorForbidden|
        common_attributes:HTTPErrorNotFound|common_attributes:HTTPErrorTooManyRequests|common_attributes:HTTPErrorInternalServerError {

    products:EmployeePaymentServicesFacility|error response = common:productsBianClient->/bian/CorporatePayrollServices/v14/CorporatePayrollServices/[corporatePayrollServicesId]/Update.put(request);
    io:println("Received CorporatePayrollServices Update (Authorise) Response");

    if response is error {
        return common:constructInternalServerError(response.message(), response.detail().toString());
    }
    return response;
}

// ─── Step 10: Create Payment Order for Fees and Charges ─────────────────────

// Calls BIAN Payment Order v14 — Initiate endpoint.
// BIAN domain: Products | Service Domain: PaymentOrder
// Creates a payment order for the initial setup fees and ongoing service charges
// associated with the corporate payroll service. The payment order debits the
// customer's designated fee payment account (request.paymentAccountId) for the agreed
// fee amount and routes the charge to the bank's fee collection account. Initiating
// the fee payment confirms the customer's financial commitment to the service and
// activates billing for the agreed payment schedule.
isolated function createPaymentOrderForFees(products:PaymentInitiationTransaction request)
        returns products:PaymentInitiationTransaction|common_attributes:HTTPErrorBadRequest|common_attributes:HTTPErrorUnauthorized|common_attributes:HTTPErrorForbidden|
        common_attributes:HTTPErrorNotFound|common_attributes:HTTPErrorTooManyRequests|common_attributes:HTTPErrorInternalServerError {

    products:PaymentInitiationTransaction|error response = common:productsBianClient->/bian/PaymentOrder/v14/PaymentOrder/Initiate.post(request);
    io:println("Received PaymentOrder Initiate Response");

    if response is error {
        return common:constructInternalServerError(response.message(), response.detail().toString());
    }
    return response;
}

// ─── Step 11: Inform Customer ────────────────────────────────────────────────

// Calls BIAN Correspondence v14 — Initiate endpoint (outbound customer notification).
// BIAN domain: Channels | Service Domain: Correspondence
// Sends the customer a confirmation notification that their corporate payroll service
// agreement has been fully established and is now active. The notification includes
// the payroll facility reference number, the agreed payment schedule, the fee payment
// confirmation from Step 10, and instructions for submitting employee payment files
// to the bank. This is the final customer-facing communication confirming that the
// service is ready for use.
isolated function informCustomer(common_attributes:Outbound request)
        returns common_attributes:Outbound|common_attributes:HTTPErrorBadRequest|common_attributes:HTTPErrorUnauthorized|common_attributes:HTTPErrorForbidden|
        common_attributes:HTTPErrorNotFound|common_attributes:HTTPErrorTooManyRequests|common_attributes:HTTPErrorInternalServerError {

    common_attributes:Outbound|error response = common:channelsBianClient->/bian/Correspondence/v14/Correspondence/Initiate.post(request);
    io:println("Received Correspondence Initiate (Inform Customer) Response");

    if response is error {
        return common:constructInternalServerError(response.message(), response.detail().toString());
    }
    return response;
}

// ─── Step 12: Add Payroll Services to Customer Products ─────────────────────

// Calls BIAN Customer Product and Service Directory v14 — Update endpoint.
// BIAN domain: Customers | Service Domain: CustomerProductAndServiceDirectory
// Updates the customer's product and service directory to include the newly activated
// corporate payroll service. This ensures the bank's CRM and customer-facing systems
// reflect the complete product portfolio and allows relationship managers and the
// customer themselves to view and manage the payroll service alongside their other
// banking products. Also triggers downstream systems (e.g., billing, reporting) to
// include the payroll service in the customer's product profile.
isolated function addPayrollServiceToCustomerProducts(string customerProductServiceDirectoryId,
        common_attributes:CustomerProductAndServiceDirectoryEntry request)
        returns common_attributes:CustomerProductAndServiceDirectoryEntry|common_attributes:HTTPErrorBadRequest|common_attributes:HTTPErrorUnauthorized|common_attributes:HTTPErrorForbidden|
        common_attributes:HTTPErrorNotFound|common_attributes:HTTPErrorTooManyRequests|common_attributes:HTTPErrorInternalServerError {

    common_attributes:CustomerProductAndServiceDirectoryEntry|error response = common:customersBianClient->/bian/CustomerProductAndServiceDirectory/v14/CustomerProductandServiceDirectory/[customerProductServiceDirectoryId]/Update.put(request);
    io:println("Received CustomerProductAndServiceDirectory Update Response");

    if response is error {
        return common:constructInternalServerError(response.message(), response.detail().toString());
    }
    return response;
}
