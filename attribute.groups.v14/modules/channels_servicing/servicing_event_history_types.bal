import financial.bian.attribute.groups.common as common;

import ballerina/http;

# A collection of the events/transactions recorded by the log
#
# Examples: Customer life event, Servicing event
public type Issue record {
    # Reference to the service position where issue arises
    common:Position ServicingPositionReference?;
    # The type of channel device involved in the session exchange (e.g. web, phone, chat, video, VOIP, face to face at a branch - note there can be concurrent sessions within a single customer contact)
    common:Session ServicingPositionSessionReference?;
    # Reference to an entity that assigns and manages the identification.
    # tReference to the organization or agency that issued the identifier (e.g., DMV, Passport Office).
    common:Involvedparty EmployeeorBusinessUnitReference?;
    # Defines the type of event/error being recorded (e.g. support facility failure)
    string ProductionIssueType?;
    # Description of the issue and involved functions, parties
    string ProductionIssueDescription?;
    # An evaluation of the event cause and impact
    common:Assessment ProductionIssueDiagnosis?;
    # Description of corrective actions and assigned parties
    common:Task ProductionIssueResolutionTask?;
};

# A collection of the events/transactions recorded by the log
#
# Examples: Customer life event, Servicing event
public type ServicingFacility record {
    # The type of service support facility engaged (e.g. commission tracking, on-line help, action logging)
    string ServicingFacilityType?;
    # Reference to any record generated from he use of the facility
    common:Identifier ServicingFacilityInstanceReference?;
};

public type ServicingEventLogOk record {|
    *http:Ok;
    # body
    ServicingEventLog body;
|};

# A collection of the events/transactions recorded by the log
#
# Examples: Customer life event, Servicing event
public type ServicingAssignment record {
    # Key dates and times associated with the assignment (e.g. start, end, break duration, available/idle time)
    string DateTimeLocation?;
    # Log of servicing activity at that position during the session (e.g. contacts, sales, issues, breaks)
    common:Report ServicingPositionActivityReport?;
    # Accumulated statistics during the session (e.g. average contact time, wait time, service utilization, facility usage)
    string ServicingPositionActivityStatistics?;
};

# Maintain a log of transactions or activity, typically a financial account/journal or a log of activity to support behavioral analysis within Servicing Event History. 
public type ServicingEventLog record {
    # Reference to the service position where issue arises
    common:Position ServicingPositionReference?;
    # Reference to an entity that assigns and manages the identification.
    # tReference to the organization or agency that issued the identifier (e.g., DMV, Passport Office).
    common:Involvedparty EmployeeorBusinessUnitReference?;
};
