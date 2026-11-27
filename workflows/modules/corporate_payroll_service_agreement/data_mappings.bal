import ballerinax/financial.bian.attribute.groups.business_development as business_development;
import ballerinax/financial.bian.attribute.groups.common as common_attributes;
import ballerinax/financial.bian.attribute.groups.customers as customers;
import ballerinax/financial.bian.attribute.groups.products as products;

// ─── Step 1 Mapper ───────────────────────────────────────────────────────────

// Maps the workflow request to a CustomerOffer Initiate request.
// TODO: Set CustomerOfferReference from request.customerId, populate the offer type
//       as "CorporatePayrollService", and include the requested payroll service type
//       and employee count as customer offer processing task parameters.
isolated function mapToCustomerOfferRequest(CorporatePayrollServiceAgreementRequest request)
        returns customers:CustomerOfferProcedure => {};

// ─── Step 1 Extractor ────────────────────────────────────────────────────────

// Extracts the customer offer procedure ID from the Initiate response for use in
// subsequent steps that link back to the customer offer.
// TODO: Read the offer procedure identifier from customerOfferResult.
isolated function extractCustomerOfferId(customers:CustomerOfferProcedure customerOfferResult)
        returns string {
    return "";
}

// ─── Step 2 Extractor ────────────────────────────────────────────────────────

// Extracts the party lifecycle management ID from the customer verification response.
// Used as the anchor reference when returning the payroll agreement ID in the response.
// TODO: Read the administrative plan identifier from verificationResult.
isolated function extractPartyLifecycleId(customers:PartyRelationshipAdministrativePlan verificationResult)
        returns string {
    return "";
}

// ─── Step 5 Mapper ───────────────────────────────────────────────────────────

// Maps the workflow request and retrieved product details to a CorporatePayrollServices
// Initiate (EmployeePaymentServicesFacility) request.
// TODO: Populate the facility type as "CorporatePayrollService", map request.payrollServiceType,
//       request.employeeCount, request.paymentFrequency, and request.paymentAccountId. Include
//       the product directory reference from productDetails as the product specification anchor.
//       Reference the customer party plan from verificationResult as the customer identifier.
isolated function mapToOpenAgreementRequest(CorporatePayrollServiceAgreementRequest request,
        customers:PartyRelationshipAdministrativePlan verificationResult,
        business_development:ProductDirectoryEntry productDetails,
        common_attributes:CustomerProductAndServiceDirectoryEntry customerProducts)
        returns products:EmployeePaymentServicesFacility => {};

// ─── Step 5 Extractor ────────────────────────────────────────────────────────

// Extracts the corporate payroll services facility ID from the Open Agreement response.
// This ID is required for the Authorise Update call in Step 9.
// TODO: Read the facility identifier from openAgreementResult.
isolated function extractCorporatePayrollServicesId(products:EmployeePaymentServicesFacility openAgreementResult)
        returns string {
    return "1234";
}

// ─── Step 6 Mapper ───────────────────────────────────────────────────────────

// Maps the workflow request and payroll facility result to a SalesProductAgreement Initiate request.
// TODO: Set the customer reference from request.customerId, the product agreement reference from
//       the payroll facility returned in Step 5, the agreed fee from request.feeAmount and
//       request.feeCurrency, and the service start date. The agreement type should be
//       "CorporatePayrollServiceAgreement".
isolated function mapToSalesProductAgreementRequest(CorporatePayrollServiceAgreementRequest request,
        products:EmployeePaymentServicesFacility openAgreementResult)
        returns customers:SalesProductAgreement => {};

// ─── Step 6 Extractor ────────────────────────────────────────────────────────

// Extracts the sales product agreement ID from the Initiate response.
// Used in the workflow response to give the caller a reference to the agreement.
// TODO: Read the agreement identifier from salesAgreementResult.
isolated function extractSalesProductAgreementId(customers:SalesProductAgreement salesAgreementResult)
        returns string {
    return "";
}

// ─── Step 7 Mapper ───────────────────────────────────────────────────────────

// Maps the workflow request and sales agreement to a Correspondence Initiate (outbound) request.
// Purpose: signature request letter to the customer.
// TODO: Set the correspondence type to "SignatureRequest", the recipient to request.customerName
//       and request.customerId, and include the sales agreement reference from salesAgreementResult.
//       The communication method should follow the customer's preferred channel.
isolated function mapToSignatureRequestCorrespondence(CorporatePayrollServiceAgreementRequest request,
        customers:SalesProductAgreement salesAgreementResult)
        returns common_attributes:Outbound => {};

// ─── Step 8 Mapper ───────────────────────────────────────────────────────────

// Maps the sales agreement and correspondence to a DocumentDirectory Register request.
// TODO: Set the document type as "SignedSalesProductAgreement", include the sales agreement
//       reference from salesAgreementResult and the correspondence reference from
//       signatureRequestResult as the filing context. The document status should be "Verified"
//       only after the signature correspondence confirms receipt of signed documents.
isolated function mapToFileSalesAgreementRequest(customers:SalesProductAgreement salesAgreementResult,
        common_attributes:Outbound signatureRequestResult)
        returns common_attributes:DocumentDirectoryEntry => {};

// ─── Step 9 Mapper ───────────────────────────────────────────────────────────

// Maps the authorisation context to an EmployeePaymentServicesFacility Update request.
// TODO: Set the facility status to "Authorised", include the document reference from
//       fileSalesAgreementResult as the authorisation evidence, and reference the
//       signed sales agreement. The authorisation must record the date, authoriser
//       reference, and any conditions attached to the approval.
isolated function mapToAuthoriseAgreementRequest(CorporatePayrollServiceAgreementRequest request,
        products:EmployeePaymentServicesFacility openAgreementResult,
        common_attributes:DocumentDirectoryEntry fileSalesAgreementResult)
        returns products:EmployeePaymentServicesFacility => {};

// ─── Step 10 Mapper ──────────────────────────────────────────────────────────

// Maps the workflow request and authorised facility to a PaymentOrder Initiate request.
// TODO: Set the payment amount from request.feeAmount and request.feeCurrency, the debtor
//       account from request.paymentAccountId, the payment purpose as "Payroll" service
//       setup fee, and the payment reference to include the payroll facility ID from
//       authoriseAgreementResult. The creditor should be the bank's internal fee collection account.
isolated function mapToPaymentOrderForFeesRequest(CorporatePayrollServiceAgreementRequest request,
        products:EmployeePaymentServicesFacility authoriseAgreementResult)
        returns products:PaymentInitiationTransaction => {};

// ─── Step 11 Mapper ──────────────────────────────────────────────────────────

// Maps the workflow results to a Correspondence Initiate (outbound) customer notification request.
// TODO: Set the correspondence type to "ServiceActivationConfirmation", the recipient to
//       request.customerName and request.customerId, and include the payroll facility reference,
//       fee payment confirmation from paymentOrderResult, and the agreed payment schedule.
//       The message should instruct the customer on how to submit employee payment files.
isolated function mapToCustomerNotificationCorrespondence(CorporatePayrollServiceAgreementRequest request,
        products:EmployeePaymentServicesFacility authoriseAgreementResult)
        returns common_attributes:Outbound => {};

// ─── Step 12 Mapper ──────────────────────────────────────────────────────────

// Maps the workflow results to a CustomerProductAndServiceDirectory Update request.
// TODO: Add the corporate payroll service as a new entry in the customer's product profile.
//       Include the payroll facility reference from authoriseAgreementResult, the product
//       directory ID, and set the product status to "Active". The update must preserve all
//       existing product entries retrieved in Step 4 while appending the new payroll entry.
isolated function mapToAddPayrollServiceRequest(CorporatePayrollServiceAgreementRequest request,
        common_attributes:CustomerProductAndServiceDirectoryEntry customerProducts,
        products:EmployeePaymentServicesFacility authoriseAgreementResult)
        returns common_attributes:CustomerProductAndServiceDirectoryEntry => {};
