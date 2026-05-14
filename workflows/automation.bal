import ballerina/http;
import ballerinax/financial.bian.business.workflows.common as common;
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

    // Health check endpoint
    isolated resource function get health() returns string {
        return "BIAN Workflow Service is running";
    }
}
