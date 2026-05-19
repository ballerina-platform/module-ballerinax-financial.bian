import ballerina/io;
import ballerinax/financial.bian.business.workflows.common as common;

// Main entry point
public function main() returns error? {

    io:println("BIAN Workflow Service started");
    io:println("Service Port: " + common:servicePort.toString());
    io:println("\n=== Main API Endpoints ===");
    io:println("  GET  /api/health - Health check");
    io:println("  POST /api/accountOpening - Complete savings account opening workflow");
    io:println("Service is ready to accept requests.");
}
