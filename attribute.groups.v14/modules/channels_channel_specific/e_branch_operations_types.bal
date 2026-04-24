import financial.bian.attribute.groups.common as common;

import ballerina/http;

# Operate equipment and/or a largely automated facility within eBranch Operations. 
public type eBranchChannelOperatingSession record {
    # The channel customer selection menu - selection is configurable for the session. This is used optionally to identify the purpose of the connection
    string EBranchOperationsServiceMenu?;
    # Service activity statistics that are maintained during the session
    string EBranchServiceSessionStatistics?;
    # >
    # * `FinancialReport` - 
    # * `BusinessReport` - 
    # * `ManagementReport` - 
    # * `Statement` - 
    # * `MaintenanceReport` - 
    # * `RegulatoryReport` - 
    # * `TaxReport` - 
    # * `AnalysisReport` - 
    common:Reporttypevalues EBranchServiceSessionReportType?;
    # The session activity report
    common:Report EBranchServiceSessionReport?;
    # A record of any production issues arising during the session
    common:ProductionIssue EBranchProductionIssueRecord?;
    # Reference to an entity that assigns and manages the identification.
    # tReference to the organization or agency that issued the identifier (e.g., DMV, Passport Office).
    common:Involvedparty EmployeeorBusinessUnitReference?;
    # The outbound connection will be part of a customer contact to ensure all logging is performed
    common:CustomerContact CustomerContactRecordReference?;
    # The type of network event or error being recorded (e.g. device failure)
    string ProductionIssueType?;
    # The description of the event error
    string ProductionIssueDescription?;
    # Evaluation of the event cause and impact assessment
    common:Assessment ProductionIssueDiagnosis?;
    # Description of corrective action proposed and taken
    common:Task ProductionIssueResolutionTask?;
    # The life cycle stage of a device
    #
    # e.g. active, defect
    common:Status ProductionIssueStatus?;
};

public type EBranchChannelOperatingSessionOk record {|
    *http:Ok;
    # body
    eBranchChannelOperatingSession body;
|};
