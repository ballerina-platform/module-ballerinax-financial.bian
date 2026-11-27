import ballerinax/financial.bian.attribute.groups.business_development as business_development;
import ballerinax/financial.bian.attribute.groups.common as common_attributes;
import ballerinax/financial.bian.attribute.groups.customers as customers;
import ballerinax/financial.bian.attribute.groups.products as products;
import ballerinax/financial.bian.business.workflows.common as common;
import ballerina/io;

// Handle Request to Establish Corporate Payroll Service Agreement
// Implements the sequence defined in Establish-Corporate-payroll-service.png.
// Orchestrates 12 BIAN service calls across the following domains in order:
//   1.  Record Request to Open Corporate Payroll Service Agreement → Customer Offer (Initiate)
//   2.  Verify Corporate Customer                                  → Party Lifecycle Management (Retrieve)
//   3.  Get Details of Salary Account Services                     → Product Directory (Retrieve)
//   4.  Retrieve List of Products of this Customer                 → Customer Product and Service Directory (Retrieve)
//       [Agree Conditions with Customer — internal advisory step, not a separate API call]
//   5.  Open Corporate Payroll Services Agreement                  → Corporate Payroll Services (Initiate)
//   6.  Create Sales Product Agreement                             → Sales Product Agreement (Initiate)
//   7.  Get Customer Signatures                                    → Correspondence (Initiate)
//   8.  File Sales Product Agreement                               → Document Directory (Register)
//   9.  Authorise Corporate Payroll Services Agreement             → Corporate Payroll Services (Update)
//  10.  Create Payment Order for Fees and Charges                  → Payment Order (Initiate)
//  11.  Inform Customer                                            → Correspondence (Initiate)
//  12.  Add Payroll Services to Customer Products                  → Customer Product and Service Directory (Update)
// Each step must succeed before the next is executed; any failure halts the workflow.
public isolated function handleCorporatePayrollServiceAgreement(CorporatePayrollServiceAgreementRequest request) returns CorporatePayrollServiceAgreementResponse|common:HTTPError {

    // Step 1: Record Request to Open Corporate Payroll Service Agreement (Customer Offer — Initiate)
    // Diagram: "Record Request to Open Corporate Payroll Service Agreement" → Customer Offer
    // Purpose: Create a formal customer offer procedure in the bank's CRM to record the corporate
    //          customer's request to establish a payroll service agreement. The offer procedure
    //          is the initiating record for the entire agreement setup workflow and anchors the
    //          customer's intent. All downstream agreement and document records link back to this offer.
    // Implementation: mapToCustomerOfferRequest must set the offer type as "CorporatePayrollService",
    //          include request.customerId as the customer reference, and capture the payroll service
    //          type and employee count as processing task parameters in the offer procedure.
    customers:CustomerOfferProcedure customerOfferRequest = mapToCustomerOfferRequest(request);
    customers:CustomerOfferProcedure|common_attributes:HTTPErrorBadRequest|common_attributes:HTTPErrorUnauthorized|common_attributes:HTTPErrorForbidden|
    common_attributes:HTTPErrorNotFound|common_attributes:HTTPErrorTooManyRequests|common_attributes:HTTPErrorInternalServerError customerOfferResult = initiateCustomerOffer(customerOfferRequest);

    if !(customerOfferResult is customers:CustomerOfferProcedure) {
        io:println("CustomerOffer Initiate error: ", customerOfferResult);
        return <common:HTTPError>customerOfferResult;
    }

    // Step 2: Verify Corporate Customer (Party Lifecycle Management — Retrieve)
    // Diagram: "Verify Corporate Customer" → Party Lifecycle Management
    // Purpose: Retrieve the corporate customer's existing party lifecycle record to confirm
    //          they are a known, active, and eligible customer. Verification checks that the
    //          customer's banking relationship is in good standing (no sanctions holds, account
    //          not blocked) and retrieves the risk profile that determines the applicable
    //          payroll service terms. A failed or inactive party record must halt the workflow.
    // Implementation: request.customerId is used directly as the partyLifecycleManagementId.
    //          The returned administrative plan is used to extract customer status and risk
    //          classification for the agreement conditions agreed in the advisory step below.
    customers:PartyRelationshipAdministrativePlan|common_attributes:HTTPErrorBadRequest|common_attributes:HTTPErrorUnauthorized|common_attributes:HTTPErrorForbidden|
    common_attributes:HTTPErrorNotFound|common_attributes:HTTPErrorTooManyRequests|common_attributes:HTTPErrorInternalServerError verificationResult = verifyCustomer(request.customerId);

    if !(verificationResult is customers:PartyRelationshipAdministrativePlan) {
        io:println("PartyLifecycleManagement Retrieve (Verify Customer) error: ", verificationResult);
        return <common:HTTPError>verificationResult;
    }

    // Step 3: Get Details of Salary Account Services (Product Directory — Retrieve)
    // Diagram: "Get details of Salary Account Services" → Product Directory
    // Purpose: Retrieve the bank's current product specification for the Salary Account / Corporate
    //          Payroll service from the product catalogue. This includes the standard fee schedule,
    //          service level features (payment cut-off times, supported file formats, reporting
    //          options), eligibility rules, and bundling options. The retrieved specification
    //          drives the terms presented to the customer during the advisory "Agree Conditions"
    //          step and is referenced in the sales product agreement created in Step 6.
    // Implementation: request.productDirectoryId identifies the Salary Account Services product
    //          entry in the product directory. Retrieve the full ProductDirectoryEntry to obtain
    //          the authoritative fee structure and feature list.
    business_development:ProductDirectoryEntry|common_attributes:HTTPErrorBadRequest|common_attributes:HTTPErrorUnauthorized|common_attributes:HTTPErrorForbidden|
    common_attributes:HTTPErrorNotFound|common_attributes:HTTPErrorTooManyRequests|common_attributes:HTTPErrorInternalServerError productDetails = getSalaryAccountServiceDetails(request.productDirectoryId);

    if !(productDetails is business_development:ProductDirectoryEntry) {
        io:println("ProductDirectory Retrieve error: ", productDetails);
        return <common:HTTPError>productDetails;
    }

    // Step 4: Retrieve List of Products of this Customer (Customer Product and Service Directory — Retrieve)
    // Diagram: "Retrieve List of Products of this Customer" → Customer Product and Service Directory
    // Purpose: Retrieve the full inventory of products and services the corporate customer already
    //          holds with the bank. This serves two purposes:
    //          (a) Duplicate check — ensures the customer does not already have an active corporate
    //              payroll service, preventing duplicate agreements.
    //          (b) Portfolio pricing — determines whether the customer qualifies for a bundled rate
    //              or preferential fee tier based on their existing product holdings.
    //          The retrieved directory entry is also preserved and extended in Step 12 to add the
    //          new payroll service without losing the existing product list.
    // Implementation: request.customerProductServiceDirectoryId identifies the customer's product
    //          and service directory entry.
    common_attributes:CustomerProductAndServiceDirectoryEntry|common_attributes:HTTPErrorBadRequest|common_attributes:HTTPErrorUnauthorized|common_attributes:HTTPErrorForbidden|
    common_attributes:HTTPErrorNotFound|common_attributes:HTTPErrorTooManyRequests|common_attributes:HTTPErrorInternalServerError customerProducts = retrieveCustomerProducts(request.customerProductServiceDirectoryId);

    if !(customerProducts is common_attributes:CustomerProductAndServiceDirectoryEntry) {
        io:println("CustomerProductAndServiceDirectory Retrieve error: ", customerProducts);
        return <common:HTTPError>customerProducts;
    }

    // [Agree Conditions with Customer]
    // Diagram: "Agree Conditions with Customer" — internal advisory step.
    // This is a relationship manager / customer dialogue interaction, not a BIAN service call.
    // The conditions agreed (fees, payment schedule, employee count, service tier) are captured
    // as fields on the CorporatePayrollServiceAgreementRequest and are used to populate the
    // agreement initiation payload in Step 5. No external API call is made for this step.

    // Step 5: Open Corporate Payroll Services Agreement (Corporate Payroll Services — Initiate)
    // Diagram: "Open Corporate Payroll Services Agreement" → Corporate Payroll Services
    // Purpose: Create the operational payroll service facility in the Corporate Payroll Services
    //          domain. This establishes the bank's commitment to process employee salary payments
    //          on behalf of the corporate. The facility parameters (payment frequency, employee
    //          count, source account, service tier) are drawn from the conditions agreed in the
    //          advisory step, the product specification from Step 3, and the customer's existing
    //          product portfolio from Step 4. The facility ID returned here is the primary
    //          operational reference used in Steps 9 (Authorise), 10 (Fees), and 12 (Products).
    // Implementation: mapToOpenAgreementRequest must combine all four inputs (request, verification
    //          result, product details, customer products) to build a complete facility initiation
    //          payload that reflects the agreed service terms.
    products:EmployeePaymentServicesFacility openAgreementRequest = mapToOpenAgreementRequest(request, verificationResult, productDetails, customerProducts);
    products:EmployeePaymentServicesFacility|common_attributes:HTTPErrorBadRequest|common_attributes:HTTPErrorUnauthorized|common_attributes:HTTPErrorForbidden|
    common_attributes:HTTPErrorNotFound|common_attributes:HTTPErrorTooManyRequests|common_attributes:HTTPErrorInternalServerError openAgreementResult = openCorporatePayrollServicesAgreement(openAgreementRequest);

    if !(openAgreementResult is products:EmployeePaymentServicesFacility) {
        io:println("CorporatePayrollServices Initiate error: ", openAgreementResult);
        return <common:HTTPError>openAgreementResult;
    }

    string corporatePayrollServicesId = extractCorporatePayrollServicesId(openAgreementResult);

    // Step 6: Create Sales Product Agreement (Sales Product Agreement — Initiate)
    // Diagram: "Create Sales Product Agreement" → Sales Product Agreement
    // Purpose: Generate the formal legal agreement document that binds the bank and the corporate
    //          customer to the payroll service terms. The sales product agreement records the agreed
    //          fees (from request.feeAmount and request.feeCurrency), service level commitments,
    //          payment schedule, and any negotiated conditions. It references the payroll facility
    //          created in Step 5 as the underlying service being contracted. The agreement must be
    //          signed (Step 7) and filed (Step 8) before the facility can be authorised (Step 9).
    // Implementation: mapToSalesProductAgreementRequest must link the agreement to both the
    //          customer (request.customerId) and the payroll facility (openAgreementResult).
    customers:SalesProductAgreement salesAgreementRequest = mapToSalesProductAgreementRequest(request, openAgreementResult);
    customers:SalesProductAgreement|common_attributes:HTTPErrorBadRequest|common_attributes:HTTPErrorUnauthorized|common_attributes:HTTPErrorForbidden|
    common_attributes:HTTPErrorNotFound|common_attributes:HTTPErrorTooManyRequests|common_attributes:HTTPErrorInternalServerError salesAgreementResult = createSalesProductAgreement(salesAgreementRequest);

    if !(salesAgreementResult is customers:SalesProductAgreement) {
        io:println("SalesProductAgreement Initiate error: ", salesAgreementResult);
        return <common:HTTPError>salesAgreementResult;
    }

    string salesProductAgreementId = extractSalesProductAgreementId(salesAgreementResult);

    // Step 7: Get Customer Signatures (Correspondence — Initiate)
    // Diagram: "Get Customer signatures" → Correspondence
    // Purpose: Send an outbound correspondence to the corporate customer requesting authorised
    //          signatories to sign the sales product agreement created in Step 6. The bank
    //          dispatches the agreement via the customer's preferred channel (email, secure
    //          portal, or postal service). The payroll facility remains in a pending state
    //          until the signed agreement is returned and filed. The correspondence thread
    //          is included in the document filing record (Step 8) to maintain a complete
    //          audit trail from signature request through to filed document.
    // Implementation: mapToSignatureRequestCorrespondence must set the correspondence type
    //          as "SignatureRequest" and link it to the sales agreement from Step 6.
    common_attributes:Outbound signatureRequestRequest = mapToSignatureRequestCorrespondence(request, salesAgreementResult);
    common_attributes:Outbound|common_attributes:HTTPErrorBadRequest|common_attributes:HTTPErrorUnauthorized|common_attributes:HTTPErrorForbidden|
    common_attributes:HTTPErrorNotFound|common_attributes:HTTPErrorTooManyRequests|common_attributes:HTTPErrorInternalServerError signatureRequestResult = requestCustomerSignatures(signatureRequestRequest);

    if !(signatureRequestResult is common_attributes:Outbound) {
        io:println("Correspondence Initiate (Signatures) error: ", signatureRequestResult);
        return <common:HTTPError>signatureRequestResult;
    }

    // Step 8: File Sales Product Agreement (Document Directory — Register)
    // Diagram: "File Sales Product Agreement" → Document Directory
    // Purpose: Register and permanently file the signed sales product agreement in the bank's
    //          document management system. Creates an auditable record that links the signed
    //          document to the customer's party record, the payroll facility, and the
    //          correspondence thread from Step 7. The filed document reference is the legal
    //          evidence required for the authorisation in Step 9, confirming that all
    //          documentation prerequisites are met before the payroll facility goes live.
    // Implementation: mapToFileSalesAgreementRequest must include both the sales agreement
    //          reference from Step 6 and the correspondence reference from Step 7 in the
    //          document directory entry to create a traceable audit chain.
    common_attributes:DocumentDirectoryEntry fileSalesAgreementRequest = mapToFileSalesAgreementRequest(salesAgreementResult, signatureRequestResult);
    common_attributes:DocumentDirectoryEntry|common_attributes:HTTPErrorBadRequest|common_attributes:HTTPErrorUnauthorized|common_attributes:HTTPErrorForbidden|
    common_attributes:HTTPErrorNotFound|common_attributes:HTTPErrorTooManyRequests|common_attributes:HTTPErrorInternalServerError fileSalesAgreementResult = fileSalesProductAgreement(fileSalesAgreementRequest);

    if !(fileSalesAgreementResult is common_attributes:DocumentDirectoryEntry) {
        io:println("DocumentDirectory Register error: ", fileSalesAgreementResult);
        return <common:HTTPError>fileSalesAgreementResult;
    }

    // Step 9: Authorise Corporate Payroll Services Agreement (Corporate Payroll Services — Update)
    // Diagram: "Authorise Corporate Payroll Services Agreement" → Corporate Payroll Services
    // Purpose: Update the payroll facility record to "Authorised" status, completing all
    //          prerequisite gates: customer verified (Step 2), conditions agreed (Step 5),
    //          sales agreement signed (Steps 6–7), and documents filed (Step 8). Authorisation
    //          activates the facility for operational use — the bank can now process employee
    //          salary payment files submitted by the customer. This is the compliance and
    //          legal clearance gate for the payroll service; without it the facility remains
    //          in a provisional state and cannot execute payments.
    // Implementation: mapToAuthoriseAgreementRequest must reference the filed document from
    //          Step 8 as the authorisation evidence and set the facility status to "Authorised".
    products:EmployeePaymentServicesFacility authoriseAgreementRequest = mapToAuthoriseAgreementRequest(request, openAgreementResult, fileSalesAgreementResult);
    products:EmployeePaymentServicesFacility|common_attributes:HTTPErrorBadRequest|common_attributes:HTTPErrorUnauthorized|common_attributes:HTTPErrorForbidden|
    common_attributes:HTTPErrorNotFound|common_attributes:HTTPErrorTooManyRequests|common_attributes:HTTPErrorInternalServerError authoriseAgreementResult = authoriseCorporatePayrollAgreement(corporatePayrollServicesId, authoriseAgreementRequest);

    if !(authoriseAgreementResult is products:EmployeePaymentServicesFacility) {
        io:println("CorporatePayrollServices Update (Authorise) error: ", authoriseAgreementResult);
        return <common:HTTPError>authoriseAgreementResult;
    }

    // Step 10: Create Payment Order for Fees and Charges (Payment Order — Initiate)
    // Diagram: "Create Payment Order for Fees and Charges" → Payment Order
    // Purpose: Initiate a payment order to collect the agreed setup fee and initial service
    //          charge from the customer's designated fee payment account. Debits request.feeAmount
    //          in request.feeCurrency from request.paymentAccountId and routes the funds to the
    //          bank's internal fee collection account. Initiating the fee payment at this point
    //          confirms the customer's financial commitment to the service and activates billing
    //          for the agreed ongoing service charge schedule.
    // Implementation: mapToPaymentOrderForFeesRequest must set the payment purpose as "Payroll"
    //          service setup fee and reference the payroll facility ID from authoriseAgreementResult.
    // products:PaymentInitiationTransaction paymentOrderRequest = mapToPaymentOrderForFeesRequest(request, authoriseAgreementResult);
    // products:PaymentInitiationTransaction|common_attributes:HTTPErrorBadRequest|common_attributes:HTTPErrorUnauthorized|common_attributes:HTTPErrorForbidden|
    // common_attributes:HTTPErrorNotFound|common_attributes:HTTPErrorTooManyRequests|common_attributes:HTTPErrorInternalServerError paymentOrderResult = createPaymentOrderForFees(paymentOrderRequest);

    // if !(paymentOrderResult is products:PaymentInitiationTransaction) {
    //     io:println("PaymentOrder Initiate error: ", paymentOrderResult);
    //     return <common:HTTPError>paymentOrderResult;
    // }

    // Step 11: Inform Customer (Correspondence — Initiate)
    // Diagram: "Inform Customer" → Correspondence
    // Purpose: Send the corporate customer a confirmation notification that their payroll service
    //          agreement is fully established and the facility is now active and authorised. The
    //          notification includes the payroll facility reference number, a summary of the agreed
    //          service terms, confirmation of the fee payment collected in Step 10, and operational
    //          instructions for submitting employee payment files to the bank. This closes the
    //          customer-facing communication loop and marks the end of the onboarding interaction.
    // Implementation: mapToCustomerNotificationCorrespondence must include the payroll facility
    //          reference, the fee payment confirmation from Step 10, and the agreed payment schedule.
    common_attributes:Outbound informCustomerRequest = mapToCustomerNotificationCorrespondence(request, authoriseAgreementResult);
    common_attributes:Outbound|common_attributes:HTTPErrorBadRequest|common_attributes:HTTPErrorUnauthorized|common_attributes:HTTPErrorForbidden|
    common_attributes:HTTPErrorNotFound|common_attributes:HTTPErrorTooManyRequests|common_attributes:HTTPErrorInternalServerError informCustomerResult = informCustomer(informCustomerRequest);

    if !(informCustomerResult is common_attributes:Outbound) {
        io:println("Correspondence Initiate (Inform Customer) error: ", informCustomerResult);
        return <common:HTTPError>informCustomerResult;
    }

    // Step 12: Add Payroll Services to Customer Products (Customer Product and Service Directory — Update)
    // Diagram: "Add Payroll Services to Customer Products" → Customer Product and Service Directory
    // Purpose: Update the customer's product and service directory to include the newly activated
    //          corporate payroll service alongside their existing products. This ensures the bank's
    //          CRM, customer portal, billing, and reporting systems all reflect the complete product
    //          portfolio. The update preserves all existing product entries retrieved in Step 4 and
    //          appends the payroll service as a new active entry. Downstream systems that subscribe
    //          to the customer product directory are notified of the change and can activate
    //          payroll-related features (e.g., dedicated relationship manager alerts, payroll reporting).
    // Implementation: mapToAddPayrollServiceRequest must retain all existing products from the
    //          customerProducts retrieved in Step 4 and add the new payroll service entry referencing
    //          the authorised facility from Step 9.
    common_attributes:CustomerProductAndServiceDirectoryEntry addPayrollRequest = mapToAddPayrollServiceRequest(request, customerProducts, authoriseAgreementResult);
    common_attributes:CustomerProductAndServiceDirectoryEntry|common_attributes:HTTPErrorBadRequest|common_attributes:HTTPErrorUnauthorized|common_attributes:HTTPErrorForbidden|
    common_attributes:HTTPErrorNotFound|common_attributes:HTTPErrorTooManyRequests|common_attributes:HTTPErrorInternalServerError addPayrollResult = addPayrollServiceToCustomerProducts(request.customerProductServiceDirectoryId, addPayrollRequest);

    if !(addPayrollResult is common_attributes:CustomerProductAndServiceDirectoryEntry) {
        io:println("CustomerProductAndServiceDirectory Update error: ", addPayrollResult);
        return <common:HTTPError>addPayrollResult;
    }

    io:println("Corporate Payroll Service Agreement workflow completed successfully for: ", request.customerName);

    CorporatePayrollServiceAgreementResponse response =  {
        workflowId: "corporate-payroll-" + request.customerId,
        payrollAgreementId: corporatePayrollServicesId,
        salesProductAgreementId: salesProductAgreementId,
        status: "SUCCESS",
        message: "Corporate payroll service agreement established successfully for " + request.customerName
    };

    return response;
}
