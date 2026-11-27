import ballerinax/financial.bian.attribute.groups.common as common_attributes;
import ballerinax/financial.bian.attribute.groups.business_development as business_development;
import ballerinax/financial.bian.attribute.groups.customers as customers;
import ballerinax/financial.bian.attribute.groups.finance_risk_management as finance_risk_management;
import ballerinax/financial.bian.attribute.groups.operations as operations;
import ballerinax/financial.bian.attribute.groups.products as products;
import ballerinax/financial.bian.business.workflows.common as common;
import ballerina/io;

// Handle Request to Open Savings Account
// Implements the sequence defined in Handle-Request-to-Open-Savings-Account.png.
// Orchestrates 22 BIAN service calls across the following domains in order:
//   1.  Notify Retail Customer                           → Customer Offer
//   2.  Retrieve Data About Relevant Customers           → Party Lifecycle Management
//   3.  Retrieve Current Products at This Customer       → Party Reference Data Directory
//   4.  Retrieve Savings Account Products Customer Eligible For → Customer Product & Service Directory
//   5.  [Product Eligibility Evaluation — internal TODO]
//   6.  Get Product Details                              → Product Directory (SalesandMarketing)
//   7.  [Agree Conditions / Giving Details — internal TODO]
//   8.  For Each Signatory: Notify Retail Customer       → Party Lifecycle Management
//   9.  Verify Regulatory Compliance                     → Regulatory Compliance
//   10. Open Savings Account                             → Savings Account
//   11. Verify Completion of Customer Updates            → Party Lifecycle Management (Qualification)
//   12. Get Operational Details                          → Product Directory (Operations)
//   13. Evaluate Sales Product Agreement                 → Sales Product Agreement
//   14. Set Up New Account                               → Position Keeping
//   15. Set Up New Account                               → Financial Accounting
//   16. Create Payment Order for Initial Funding         → Payment Order [TODO: pending client]
//   17. Adapt Savings Account to Customer ID Device      → Issued Device Administration
//   18. Create Payment Order for Fees and Charges        → Payment Order [TODO: pending client]
//   19. Activate Savings Account                         → Savings Account [TODO]
//   20. Add Savings Account to Customer List of Products → Customer Product & Service Directory
//   21. Inform Customer                                  → Correspondence
//   22. Verify Conduct Execution of Opening Process      → Guideline Compliance
// Each step must succeed before the next is executed; any failure halts the workflow.
public isolated function handleSavingsAccountOpening(AccountOpeningRequest request) returns AccountOpeningResponse|common:HTTPError {

    // Step 1: Notify Retail Customer (Customer Offer — Initiate)
    // Diagram: "Notify Retail Customer" → Customer Offer
    // Purpose: Register the customer's intent and create a formal offer record in the bank's
    //          Customer Offer service. This establishes the offer reference that downstream
    //          steps (e.g., Party Lifecycle, Sales Product Agreement) will link back to.
    // Implementation: mapToCustomerOfferRequest must populate the offer procedure with the
    //          customer's name, type, contact channel, and requested product so the offer
    //          service can assign an offer reference ID and record the interaction.
    customers:CustomerOfferProcedure offerRequest = mapToCustomerOfferRequest(request);
    customers:CustomerOfferProcedure|common_attributes:HTTPErrorBadRequest|common_attributes:HTTPErrorUnauthorized|common_attributes:HTTPErrorForbidden|
    common_attributes:HTTPErrorNotFound|common_attributes:HTTPErrorTooManyRequests|common_attributes:HTTPErrorInternalServerError offerResult = initiateCustomerOffer(offerRequest);

    if !(offerResult is customers:CustomerOfferProcedure) {
        io:println("Offer Result Error Type: ", offerResult);
        return <common:HTTPError>{};
    }

    // Step 2: Retrieve Data About Relevant Customers (Party Lifecycle Management — Initiate)
    // Diagram: "Retrieve data about Relevant Customers" → Party Lifecycle Management
    // Purpose: Register or update the customer as a managed party within the bank's Party
    //          Lifecycle Management service. This step onboards the customer into the bank's
    //          core party registry, assigning a party reference that all subsequent services
    //          use to identify and retrieve the customer's profile.
    // Implementation: mapToPartyLifecycleRequest must map the customer's identity details
    //          (name, contact, type) and the offer reference from offerResult to the
    //          PartyRelationshipAdministrativePlan payload, setting the lifecycle stage to
    //          'Onboarding' or 'Active' as appropriate for a new account request.
    customers:PartyRelationshipAdministrativePlan partyRequest = mapToPartyLifecycleRequest(request, offerResult);
    customers:PartyRelationshipAdministrativePlan|common_attributes:HTTPErrorBadRequest|common_attributes:HTTPErrorUnauthorized|common_attributes:HTTPErrorForbidden|
    common_attributes:HTTPErrorNotFound|common_attributes:HTTPErrorTooManyRequests|common_attributes:HTTPErrorInternalServerError partyResult = initiatePartyLifecycle(partyRequest);

    if !(partyResult is customers:PartyRelationshipAdministrativePlan) {
        io:println("Party Result Error Type: ", partyResult);
        return <common:HTTPError>partyResult;
    }

    // Step 3: Retrieve Current Products at This Customer (Party Reference Data Directory — Retrieve Associations)
    // Diagram: "Retrieve Current Products at This Customer" → Party Reference Data Directory
    // Purpose: Fetch the customer's existing banking relationships and linked entity data
    //          from the Party Reference Data Directory. This provides demographic records,
    //          linked accounts, and relationship information needed to assess the customer's
    //          full profile and identify the Customer Product and Service Directory entry.
    // Implementation: extractPartyReferenceDataDirectoryId must parse the party reference
    //          ID from partyResult; extractAssociationsId must identify the associations
    //          sub-record ID. Both IDs are path parameters for the retrieve call.
    string partyReferenceDataDirectoryId = extractPartyReferenceDataDirectoryId(request, partyResult);
    string associationsId = extractAssociationsId(request, partyResult);
    common_attributes:Associations|common_attributes:HTTPErrorBadRequest|common_attributes:HTTPErrorUnauthorized|common_attributes:HTTPErrorForbidden|
    common_attributes:HTTPErrorNotFound|common_attributes:HTTPErrorTooManyRequests|common_attributes:HTTPErrorInternalServerError associationsResult = retrievePartyReferenceDataDirectoryAssociations(partyReferenceDataDirectoryId, associationsId);

    if !(associationsResult is common_attributes:Associations) {
        io:println("Party Reference Data Directory error: ", associationsResult);
        return <common:HTTPError>associationsResult;
    }

    // Step 4: Retrieve Savings Account Products for which Customer is Eligible
    //         (Customer Product and Service Directory — Retrieve)
    // Diagram: "Retrieve Savings Account Products for which Customer is Eligible"
    //          → Customer Product and Service Directory
    // Purpose: Retrieve the customer's current product holdings from the Customer Product
    //          and Service Directory. This is required to determine which products the
    //          customer already holds, enabling eligibility rules (Step 5) to correctly
    //          identify whether the customer qualifies for an additional savings account
    //          and to enforce any product-limit or bundling constraints.
    // Implementation: extractCustomerProductAndServiceDirectoryId must derive the directory
    //          ID from the associations data returned in Step 3.
    string customerProductAndServiceDirectoryId = extractCustomerProductAndServiceDirectoryId(request, associationsResult);
    common_attributes:CustomerProductAndServiceDirectoryEntry|common_attributes:HTTPErrorBadRequest|common_attributes:HTTPErrorUnauthorized|common_attributes:HTTPErrorForbidden|
    common_attributes:HTTPErrorNotFound|common_attributes:HTTPErrorTooManyRequests|common_attributes:HTTPErrorInternalServerError customerProductServiceEntryResult = retrieveCustomerProductServiceEntry(customerProductAndServiceDirectoryId);

    if !(customerProductServiceEntryResult is common_attributes:CustomerProductAndServiceDirectoryEntry) {
        io:println("Customer Product and Service Directory Entry error: ", customerProductServiceEntryResult);
        return <common:HTTPError>customerProductServiceEntryResult;
    }

    // Step 5: Evaluate Product Eligibility (Internal Logic)
    // Diagram: Implicit — occurs between steps 4 and 6 before presenting product details
    // Purpose: Determine which savings account variants the customer is eligible for based
    //          on their existing product portfolio (customerProductServiceEntryResult),
    //          customer segment (customerType), and any bank-defined eligibility rules
    //          (e.g., minimum age, residency status, maximum number of savings accounts).
    //          The result should narrow the account type to a specific product offering
    //          before retrieving marketing details in Step 6.
    // TODO: Implement product eligibility logic here using customerProductServiceEntryResult.
    //       Suggested approach: compare request.accountType against allowed product variants,
    //       verify no duplicate product holds exist, and validate segment-level restrictions.

    // Step 6: Get Product Details (Product Directory — Retrieve SalesandMarketing)
    // Diagram: "Get Product Details" → Product Directory
    // Purpose: Fetch the product's sales terms, interest rates, promotional features, and
    //          marketing content from the Product Directory. This information is needed to
    //          present accurate product conditions to the customer (Step 7) and to populate
    //          the Sales Product Agreement (Step 13) with the correct terms.
    // Implementation: extractProductDirectoryId must resolve the product directory ID for
    //          the requested savings account type; extractSalesAndMarketingId must identify
    //          the sales and marketing sub-entry ID for that product.
    string productDirectoryId = extractProductDirectoryId(request);
    string salesAndMarketingId = extractSalesAndMarketingId(request);
    business_development:SalesandMarketing|common_attributes:HTTPErrorBadRequest|common_attributes:HTTPErrorUnauthorized|common_attributes:HTTPErrorForbidden|
    common_attributes:HTTPErrorNotFound|common_attributes:HTTPErrorTooManyRequests|common_attributes:HTTPErrorInternalServerError productDetails = retrieveSalesAndMarketing(productDirectoryId, salesAndMarketingId);

    if (!(productDetails is business_development:SalesandMarketing)) {
        io:println("Product Details error: ", productDetails);
        return <common:HTTPError>productDetails;
    }

    // Step 7: Agree Conditions with Customer and Use — Giving Details (Internal / Session Dialogue)
    // Diagram: "Agree Conditions with Customer and Use" / "Giving Details"
    // Purpose: Present the product terms retrieved in Step 6 to the customer and record their
    //          explicit consent before proceeding with account creation. This is a regulatory
    //          and compliance requirement — the bank must obtain informed consent for the
    //          product's fees, interest rates, and terms and conditions prior to opening.
    //          If additional information is needed from the customer (e.g., income proof,
    //          identification documents), this is the step to request and collect it.
    // TODO: Implement approval and further-information request logic here.
    //       Suggested approach: send product terms to the customer's preferred contact channel,
    //       await a confirmation response, and store the consent reference for audit purposes.

    // Step 8: For Each Signatory — Notify Retail Customer (Party Lifecycle Management — Initiate)
    // Diagram: "For Each Signatory: Notify Retail Customer" → Party Lifecycle Management
    // Purpose: For each signatory on the account, re-initiate Party Lifecycle Management to run
    //          product-level identity and eligibility checks. Unlike Step 2 (which onboards the
    //          party), this call triggers verification workflows such as identity document
    //          validation, credit bureau checks, and segment classification to confirm each
    //          signatory qualifies for the specific savings account product.
    // Implementation: mapToPartyLifecycleRequest is reused here; ensure the lifecycle stage
    //          or purpose field is set to 'ProductEligibilityVerification' to distinguish
    //          this call from the onboarding call in Step 2.
    customers:PartyRelationshipAdministrativePlan partyLCRequest = mapToPartyLifecycleRequest(request, offerResult);
    customers:PartyRelationshipAdministrativePlan|common_attributes:HTTPErrorBadRequest|common_attributes:HTTPErrorUnauthorized|common_attributes:HTTPErrorForbidden|
    common_attributes:HTTPErrorNotFound|common_attributes:HTTPErrorTooManyRequests|common_attributes:HTTPErrorInternalServerError partyLCResult = initiatePartyLifecycle(partyLCRequest);

    if !(partyLCResult is customers:PartyRelationshipAdministrativePlan) {
        io:println("Party Lifecycle Management error: ", partyLCResult);
        return <common:HTTPError>partyLCResult;
    }

    // Step 9: Verify Regulatory Compliance (Regulatory Compliance — Evaluate)
    // Diagram: "Verify Regulatory Compliance" → Regulatory Compliance
    // Purpose: Submit the customer and account details for regulatory compliance screening,
    //          including Know Your Customer (KYC), Anti-Money Laundering (AML), and
    //          Counter-Financing of Terrorism (CFT) checks. This step is mandatory under
    //          applicable banking regulations and must pass before any account can be created.
    //          A failed compliance result must halt the workflow and flag the application
    //          for manual review by the bank's compliance team.
    // Implementation: mapToRegulatoryComplianceRequest must populate customer identification,
    //          account type, initial deposit amount, and customer residency/country details
    //          so the compliance engine can apply the correct jurisdictional rule set.
    finance_risk_management:RegulatoryComplianceAssessment complianceRequest = mapToRegulatoryComplianceRequest(request);
    finance_risk_management:RegulatoryComplianceAssessment|common_attributes:HTTPErrorBadRequest|common_attributes:HTTPErrorUnauthorized|common_attributes:HTTPErrorForbidden|
    common_attributes:HTTPErrorNotFound|common_attributes:HTTPErrorTooManyRequests|common_attributes:HTTPErrorInternalServerError complianceResult = evaluateRegulatoryCompliance(complianceRequest);

    if !(complianceResult is finance_risk_management:RegulatoryComplianceAssessment) {
        io:println("Regulatory Compliance error: ", complianceResult);
        return <common:HTTPError>complianceResult;
    }

    // Step 10: Open Savings Account (Savings Account — Initiate)
    // Diagram: "Open Savings Account" → Savings Account
    // Purpose: Create the savings account facility in the bank's core product system. This is
    //          the central provisioning step that assigns an account number, applies the product
    //          configuration (interest rate, limits, features), and sets the initial account
    //          status. All subsequent steps depend on the account reference returned here.
    // Implementation: mapToSavingsAccountRequest must map accountType to the product type
    //          identifier, currency and initialDeposit to the account's opening balance fields,
    //          and include the customer's party reference from Steps 2/8 to link the account
    //          to the correct customer record.
    products:SavingsAccountFacility savingsRequest = mapToSavingsAccountRequest(request);
    products:SavingsAccountFacility|common_attributes:HTTPErrorBadRequest|common_attributes:HTTPErrorUnauthorized|common_attributes:HTTPErrorForbidden|
    common_attributes:HTTPErrorNotFound|common_attributes:HTTPErrorTooManyRequests|common_attributes:HTTPErrorInternalServerError savingsResult = initiateSavingsAccount(savingsRequest);

    if !(savingsResult is products:SavingsAccountFacility) {
        io:println("Savings Account error: ", savingsResult);
        return <common:HTTPError>savingsResult;
    }

    // Step 11: Verify Completion of Customer Updates (Party Lifecycle Management — Retrieve Qualification)
    // Diagram: "Verify Completion of Customer Updates" → Party Lifecycle Management (Qualification)
    // Purpose: Retrieve the specific qualification assessment results for the customer from
    //          Party Lifecycle Management. This confirms that all eligibility criteria
    //          (e.g., minimum income threshold, credit score band, residency requirements)
    //          evaluated in Step 8 have been met and that the qualification record can be
    //          referenced in the Sales Product Agreement (Step 13).
    //          Performed immediately after account creation (Step 10) to confirm that all
    //          customer-side updates are complete before configuring operational parameters.
    // Implementation: extractPartyLifecycleManagementId and
    //          extractPartyLifecycleManagementQualificationId must parse the management
    //          session ID and qualification sub-record ID from partyLCResult.
    string partyLifecycleManagementId = extractPartyLifecycleManagementId(request, partyLCResult);
    string qualificationId = extractPartyLifecycleManagementQualificationId(request, partyLCResult);
    customers:Qualification|common_attributes:HTTPErrorBadRequest|common_attributes:HTTPErrorUnauthorized|common_attributes:HTTPErrorForbidden|
    common_attributes:HTTPErrorNotFound|common_attributes:HTTPErrorTooManyRequests|common_attributes:HTTPErrorInternalServerError qualificationDetails = retrieveQualification(partyLifecycleManagementId, qualificationId);

    if (!(qualificationDetails is customers:Qualification)) {
        io:println("Qualification Details error: ", qualificationDetails);
        return <common:HTTPError>qualificationDetails;
    }

    // Step 12: Get Operational Details (Product Directory — Retrieve Operations)
    // Diagram: "Get Operational Details" → Product Directory
    // Purpose: Fetch the operational configuration of the savings account product from the
    //          Product Directory, including processing schedules, fee structures, transaction
    //          limits, and channel availability. Retrieved after qualification confirmation
    //          (Step 11) so that operational parameters are only applied once the customer's
    //          eligibility has been verified. These details are required to configure
    //          position keeping (Step 14) and to determine applicable charges for the
    //          fee payment order (Step 18).
    // Implementation: extractOperationsId must resolve the operations sub-entry ID for the
    //          product identified by productDirectoryId (already extracted in Step 6).
    string operationsId = extractOperationsId(request);
    business_development:Operations|common_attributes:HTTPErrorBadRequest|common_attributes:HTTPErrorUnauthorized|common_attributes:HTTPErrorForbidden|
    common_attributes:HTTPErrorNotFound|common_attributes:HTTPErrorTooManyRequests|common_attributes:HTTPErrorInternalServerError operationsDetails = retrieveOperations(productDirectoryId, operationsId);

    if !(operationsDetails is business_development:Operations) {
        io:println("Operations Details error: ", operationsDetails);
        return <common:HTTPError>operationsDetails;
    }

    // Step 13: Evaluate Sales Product Agreement (Sales Product Agreement — Evaluate)
    // Diagram: → Sales Product Agreement
    // Purpose: Formalise the contractual agreement between the bank and the customer for the
    //          savings account product. This step records the agreed product terms (from Step 6),
    //          customer consent (from Step 7), and qualification confirmation (from Step 11)
    //          into a legally binding sales product agreement. The resulting agreement reference
    //          serves as the audit trail for the product sale.
    // Implementation: mapToSalesProductAgreementRequest must populate the agreement with the
    //          product reference, customer party reference, agreed terms, effective date, and
    //          the qualification and compliance references from earlier steps.
    customers:SalesProductAgreement agreementRequest = mapToSalesProductAgreementRequest(request);
    customers:SalesProductAgreement|common_attributes:HTTPErrorBadRequest|common_attributes:HTTPErrorUnauthorized|common_attributes:HTTPErrorForbidden|
    common_attributes:HTTPErrorNotFound|common_attributes:HTTPErrorTooManyRequests|common_attributes:HTTPErrorInternalServerError agreementResult = evaluateSalesProductAgreement(agreementRequest);

    if !(agreementResult is customers:SalesProductAgreement) {
        io:println("Sales Product Agreement error: ", agreementResult);
        return <common:HTTPError>agreementResult;
    }

    // Step 14: Set Up New Account (Position Keeping — Initiate)
    // Diagram: "Set Up New Account" → Position Keeping
    // Purpose: Create the financial position log that tracks the real-time balance and
    //          transaction history for the new savings account. Position Keeping is the
    //          authoritative ledger for the account's current financial position and is
    //          required by the Financial Accounting service (Step 15) to book opening entries.
    // Implementation: mapToPositionKeepingRequest must link the account reference from
    //          savingsRequest, set the initial position to the initialDeposit amount, include
    //          the currency, and set the position type to 'Deposit' or 'SavingsAccount'.
    operations:FinancialPositionLog positionRequest = mapToPositionKeepingRequest(request, savingsRequest);
    operations:FinancialPositionLog|common_attributes:HTTPErrorBadRequest|common_attributes:HTTPErrorUnauthorized|common_attributes:HTTPErrorForbidden|
    common_attributes:HTTPErrorNotFound|common_attributes:HTTPErrorTooManyRequests|common_attributes:HTTPErrorInternalServerError positionResult = initiatePositionKeeping(positionRequest);

    if !(positionResult is operations:FinancialPositionLog) {
        io:println("Position Keeping error: ", positionResult);
        return <common:HTTPError>positionResult;
    }

    // Step 15: Set Up New Account (Financial Accounting — Initiate)
    // Diagram: "Set Up New Account" → Financial Accounting
    // Purpose: Book the opening journal entries in the bank's general ledger via the
    //          Financial Accounting service. The opening transaction records a debit to the
    //          payment clearing / cash account and a credit to the savings account liability,
    //          establishing the initial balance. This step ensures the account is reflected
    //          in the bank's financial statements from the moment of creation.
    // Implementation: mapToFinancialAccountingRequest must reference the account number from
    //          savingsResult, the position log reference from positionResult, the opening
    //          deposit amount and currency, the booking date, and the appropriate GL account
    //          codes for the debit and credit legs of the opening entry.
    operations:FinancialBookingLog accountingRequest = mapToFinancialAccountingRequest(request, savingsResult, positionResult);
    operations:FinancialBookingLog|common_attributes:HTTPErrorBadRequest|common_attributes:HTTPErrorUnauthorized|common_attributes:HTTPErrorForbidden|
    common_attributes:HTTPErrorNotFound|common_attributes:HTTPErrorTooManyRequests|common_attributes:HTTPErrorInternalServerError accountingResult = initiateFinancialAccounting(accountingRequest);

    if !(accountingResult is operations:FinancialBookingLog) {
        io:println("Financial Accounting error: ", accountingResult);
        return <common:HTTPError>accountingResult;
    }

    // Step 16: Create Payment Order for Initial Funding (Payment Order — Initiate)
    // Diagram: "Create Payment Order for Initial Funding" → Payment Order
    // Purpose: Initiate a payment order to transfer the customer's initial deposit funds
    //          into the newly created savings account. This step is currently pending
    //          integration with the Clearing and Settlement service and has been commented
    //          out until the PaymentOrder BIAN client dependency is available.
    // TODO: Uncomment and implement once clearing_and_settlement client is available.
    //       mapToPaymentOrderRequest must include the source account, destination savings
    //       account number, transfer amount, currency, and the value date of the transfer.
    // clearing_and_settlement:PaymentOrderProcedure paymentOrderRequest = mapToPaymentOrderRequest(request, savingsResult);
    // clearing_and_settlement:PaymentOrderProcedure|common_attributes:HTTPErrorBadRequest|...
    // paymentOrderResult = initiatePaymentOrder(paymentOrderRequest);
    // if !(paymentOrderResult is clearing_and_settlement:PaymentOrderProcedure) { ... }

    // Step 17: Adapt Savings Account to Customer Identification Device
    //          (Issued Device Administration — Update DeviceAssignment)
    // Diagram: "Adapt Savings Account to Customer Identification Device"
    //          → Issued Device Administration
    // Purpose: Associate the new savings account with the customer's existing authentication
    //          device (e.g., mobile banking app token, debit card, hardware OTP device) via
    //          the Issued Device Administration service. This enables the customer to
    //          transact on the new account immediately through their registered device without
    //          requiring a separate device provisioning step.
    // Implementation: extractIssuedDeviceAdministrationId must identify the customer's device
    //          administration record; extractDeviceAssignmentId must identify the specific
    //          device-to-product assignment entry. mapToDeviceAssignmentRequest must include
    //          the new account number from savingsResult and the device reference.
    string issuedDeviceAdministrationId = extractIssuedDeviceAdministrationId(request);
    string deviceAssignmentId = extractDeviceAssignmentId(request);
    operations:DeviceAssignment deviceAssignmentRequest = mapToDeviceAssignmentRequest(request, savingsResult);
    operations:DeviceAssignment|common_attributes:HTTPErrorBadRequest|common_attributes:HTTPErrorUnauthorized|common_attributes:HTTPErrorForbidden|
    common_attributes:HTTPErrorNotFound|common_attributes:HTTPErrorTooManyRequests|common_attributes:HTTPErrorInternalServerError deviceAssignmentResult = updateIssuedDevice(issuedDeviceAdministrationId, deviceAssignmentId, deviceAssignmentRequest);

    if !(deviceAssignmentResult is operations:DeviceAssignment) {
        io:println("Device Assignment error: ", deviceAssignmentResult);
        return <common:HTTPError>deviceAssignmentResult;
    }

    // Step 18: Create Payment Order for Fees and Charges (Payment Order — Initiate)
    // Diagram: "Create Payment Order for Fees and Charges" → Payment Order
    // Purpose: Initiate a separate payment order to collect any applicable account opening
    //          fees or maintenance charges as defined in the product's fee schedule
    //          (retrieved in Step 12). This step is currently pending integration with the
    //          Clearing and Settlement service and has been commented out.
    // TODO: Uncomment and implement once clearing_and_settlement client is available.
    //       mapToPaymentOrderRequest must reference the fee amounts from operationsDetails,
    //       with the savings account as the debit source and the bank's fee collection
    //       account as the credit destination.
    // clearing_and_settlement:PaymentOrderProcedure paymentOrderRequestForFees = mapToPaymentOrderRequest(request, savingsResult);
    // ...
    // if !(paymentOrderResultForFees is clearing_and_settlement:PaymentOrderProcedure) { ... }

    // Step 19: Activate Savings Account (Savings Account — Update/Execute)
    // Diagram: "Activate Savings Account" → Savings Account
    // Purpose: Transition the newly created savings account from a 'Pending' or 'Initiated'
    //          status to 'Active', enabling the customer to perform transactions. Activation
    //          should only occur after all preceding steps (compliance, agreement, accounting,
    //          fee collection) have completed successfully to prevent premature access.
    // TODO: Implement activation logic here.
    //       Suggested approach: call the SavingsAccount Update or Execute endpoint with an
    //       'Activate' action, updating the account status and recording the activation timestamp.

    // Step 20: Add Savings Account to Customer List of Products
    //          (Customer Product and Service Directory — Register)
    // Diagram: "Add Savings Account to Customer List of Products"
    //          → Customer Product and Service Directory
    // Purpose: Update the Customer Product and Service Directory to include the newly opened
    //          savings account in the customer's product portfolio. This ensures the customer's
    //          account list is current and that downstream systems (e.g., internet banking,
    //          relationship management) can discover and display the new account.
    // Implementation: mapToCustomerProductServiceEntryUpdate must add the new savings account
    //          reference (account number, product type, status, opening date) from savingsResult
    //          to the existing customer product entry identified by customerProductAndServiceDirectoryId.
    common_attributes:CustomerProductAndServiceDirectoryEntry customerProductServiceEntryRequest = mapToCustomerProductServiceEntryUpdate(request, savingsResult);
    common_attributes:CustomerProductAndServiceDirectoryEntry|common_attributes:HTTPErrorBadRequest|common_attributes:HTTPErrorUnauthorized|common_attributes:HTTPErrorForbidden|
    common_attributes:HTTPErrorNotFound|common_attributes:HTTPErrorTooManyRequests|common_attributes:HTTPErrorInternalServerError updateCustomerProductResult = registerCustomerProductService(customerProductServiceEntryRequest);

    if (!(updateCustomerProductResult is common_attributes:CustomerProductAndServiceDirectoryEntry)) {
        io:println("Update Customer Product Service error: ", updateCustomerProductResult);
        return <common:HTTPError>updateCustomerProductResult;
    }

    // Step 21: Inform Customer (Correspondence — Initiate Outbound)
    // Diagram: "Inform Customer" → Correspondence
    // Purpose: Send the customer a formal account opening confirmation through their preferred
    //          communication channel (email, SMS, postal mail) using the Correspondence service.
    //          The notification must include the account number, product terms summary, and
    //          next steps (e.g., how to access internet banking, deposit funds). This satisfies
    //          both the regulatory obligation to inform the customer and the service experience
    //          requirement to confirm successful account creation.
    // Implementation: mapToCorrespondenceOutbound must populate the outbound record with the
    //          customer's contact details, the correspondence template ID for account opening,
    //          and the account details from savingsResult. extractCorrespondenceId must resolve
    //          or generate the correspondence session ID for this customer interaction.
    common_attributes:Outbound outbound = mapToCorrespondenceOutbound(request, savingsResult);
    string correspondenceId = extractCorrespondenceId(request, outbound);
    common_attributes:Outbound|common_attributes:HTTPErrorBadRequest|common_attributes:HTTPErrorUnauthorized|common_attributes:HTTPErrorForbidden|
    common_attributes:HTTPErrorNotFound|common_attributes:HTTPErrorTooManyRequests|common_attributes:HTTPErrorInternalServerError correspondenceResult = initiateCorrespondenceOutbound(correspondenceId, outbound);

    if !(correspondenceResult is common_attributes:Outbound) {
        io:println("Correspondence Outbound error: ", correspondenceResult);
        return <common:HTTPError>correspondenceResult;
    }

    // Step 22: Verify Conduct Execution of Savings Account Opening Process
    //          (Guideline Compliance — Evaluate)
    // Diagram: "Verify Conduct Execution of Savings Account Opening Process"
    //          → Guideline Compliance
    // Purpose: Perform a post-opening internal guideline compliance check to verify that the
    //          entire account opening workflow was executed in accordance with the bank's
    //          internal policies, conduct standards, and product governance rules. Unlike
    //          Step 9 (regulatory compliance), this step validates adherence to internal
    //          guidelines such as sales conduct, suitability assessment, and documentation
    //          completeness. The result is recorded for audit and supervisory reporting.
    // Implementation: mapToGuidelineComplianceAssessment must reference the workflow steps
    //          completed, the product sold, the customer segment, the sales agreement reference,
    //          and the compliance assessment reference from Step 9.
    finance_risk_management:GuidelineComplianceAssessment guidelineRequest = mapToGuidelineComplianceAssessment(request, savingsResult);
    finance_risk_management:GuidelineComplianceAssessment|common_attributes:HTTPErrorBadRequest|common_attributes:HTTPErrorUnauthorized|common_attributes:HTTPErrorForbidden|
    common_attributes:HTTPErrorNotFound|common_attributes:HTTPErrorTooManyRequests|common_attributes:HTTPErrorInternalServerError guidelineResult = evaluateGuidelineCompliance(guidelineRequest);

    if !(guidelineResult is finance_risk_management:GuidelineComplianceAssessment) {
        io:println("Guideline Compliance error: ", guidelineResult);
        return <common:HTTPError>guidelineResult;
    }

    // Return success response
    // TODO: workflowId and accountNumber should be sourced from the workflow execution context
    //       and savingsResult respectively, rather than hardcoded placeholder values.
    AccountOpeningResponse successResponse = {
        workflowId: "1234",
        accountNumber: "005020001993",
        status: "SUCCESS",
        message: "Savings account opened successfully"
    };
    return successResponse;
}

