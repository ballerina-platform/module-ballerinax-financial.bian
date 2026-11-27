import ballerina/http;
import ballerinax/financial.bian.business.workflows.common as common;
import ballerinax/financial.bian.business.workflows.corporate_customer_onboarding as corporate_customer_onboarding;
import ballerinax/financial.bian.business.workflows.corporate_payroll_service_agreement as corporate_payroll_service_agreement;
import ballerinax/financial.bian.business.workflows.outgoing_credit_transfer as outgoing_credit_transfer;
import ballerinax/financial.bian.business.workflows.savings_account_opening as savings_account_opening;

// HTTP listener for the workflow service
listener http:Listener workflowListener = check new (common:servicePort);

// The service-level CORS config applies globally to each `resource`.
@http:ServiceConfig {
    cors: {
        allowOrigins: ["http://localhost:8080", "https://localhost:8243"],
        allowCredentials: false,
        maxAge: 84900
    }
}

// Main API service - orchestrates calls to external BIAN services
service /api on workflowListener {

    // Main entry point: Complete savings account opening workflow
    isolated resource function post savingsAccountOpening(savings_account_opening:AccountOpeningRequest request) returns savings_account_opening:AccountOpeningResponse|common:HTTPError {
        return savings_account_opening:handleSavingsAccountOpening(request);
    }

    // Main entry point: Complete outgoing credit transfer workflow
    isolated resource function post outgoingCreditTransfer(outgoing_credit_transfer:OutgoingCreditTransferRequest request) returns outgoing_credit_transfer:OutgoingCreditTransferResponse|common:HTTPError {
        return outgoing_credit_transfer:handleOutgoingCreditTransfer(request);
    }

    // Main entry point: Initiate corporate customer onboarding workflow
    isolated resource function post corporateCustomerOnboarding(corporate_customer_onboarding:CorporateCustomerOnboardingRequest request) returns corporate_customer_onboarding:CorporateCustomerOnboardingResponse|common:HTTPError {
        return corporate_customer_onboarding:handleCorporateCustomerOnboarding(request);
    }

    // Main entry point: Establish corporate payroll service agreement workflow
    isolated resource function post corporatePayrollServiceAgreement(corporate_payroll_service_agreement:CorporatePayrollServiceAgreementRequest request) returns corporate_payroll_service_agreement:CorporatePayrollServiceAgreementResponse|common:HTTPError {
        return corporate_payroll_service_agreement:handleCorporatePayrollServiceAgreement(request);
    }

    // Health check endpoint
    isolated resource function get health() returns string {
        return "BIAN Workflow Service is running";
    }
}
