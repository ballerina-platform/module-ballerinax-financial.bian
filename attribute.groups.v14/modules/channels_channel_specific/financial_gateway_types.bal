import financial.bian.attribute.groups.common as common;

import ballerina/http;

public type FinancialGatewayOperatingSessionOk record {|
    *http:Ok;
    # body
    FinancialGatewayOperatingSession body;
|};

# Operate equipment and/or a largely automated facility within Financial Gateway. 
public type FinancialGatewayOperatingSession record {
    # >
    # * `ITService` - 
    # * `AdministrativeService` - 
    # * `SystemService` - 
    # * `FinancialService` - 
    # * `InformationService` - 
    # * `BusinessService` - 
    common:Servicetypevalues FinancialGatewayServiceType?;
    # Service activity statistics that are maintained during the session
    string FinancialGatewayServiceSessionStatistics?;
    # >
    # * `FinancialReport` - 
    # * `BusinessReport` - 
    # * `ManagementReport` - 
    # * `Statement` - 
    # * `MaintenanceReport` - 
    # * `RegulatoryReport` - 
    # * `TaxReport` - 
    # * `AnalysisReport` - 
    common:Reporttypevalues FinancialGatewayServiceSessionReportType?;
    # The session activity report
    common:Report FinancialGatewayServiceSessionReport?;
    # Date and time at which the status was assigned.
    common:Datetime FinancialGatewayServiceSessionDate?;
    # A record of any production issues arising during the gateway session
    SessionIssue FinancialGatewayServiceSessionIssueRecord?;
    # Reference to a Party who plays a  specific role in the context of assigning a status.
    common:Involvedparty EmployeeorBusinessUnitReference?;
    # The message content in any suitable format
    common:Message MessageReference?;
    # The type of network event or error being recorded (e.g. device failure)
    string ProductionIssueType?;
    # The description of the event error
    string ProductionIssueDescription?;
    # Evaluation of the event cause and impact assessment
    common:Assessment ProductionIssueDiagnosis?;
    # Description of corrective action proposed and taken
    common:Task ProductionIssueResolutionTask?;
    # Details of the issue, response and interested parties logged for reference
    common:ProductionIssue ProductionIssueRecord?;
    # ProductionIssueStatus
    common:Status ProductionIssueStatus?;
};

# A record of any production issues arising during the gateway session
public type SessionIssue record {
    # The kind of event happening during a session
    #
    # events are being logged 
    #
    # e.g. login, failure...
    string SessionEventyType?;
    # Date/Time the event occurred (or was detected/logged)
    string SessionEventDateTime?;
};
