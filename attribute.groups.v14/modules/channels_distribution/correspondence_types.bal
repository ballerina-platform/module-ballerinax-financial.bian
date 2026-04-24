import financial.bian.attribute.groups.common as common;

import ballerina/http;

public type OutboundWithResponseOk record {|
    *http:Ok;
    # body
    OutboundWithResponse body;
|};

# >
# * `Suspended` - System is suspended, that is, not operational.
# * `Active` - System is functioning normally, that is, operational.
# * `Closed` - System is closed (eg. normal closure of an RTGS).
# * `Closing` - System needs to wait for completion of intermediate internal activities before going to a status Closed.
# * `Reservemaintenanceperiodstart` - System is starting a new maintenance period.
public type Systemstatustypevalues "Suspended"|"Active"|"Closed"|"Closing"|"Reservemaintenanceperiodstart";

public type CorrespondenceOperatingSessionOk record {|
    *http:Ok;
    # body
    CorrespondenceOperatingSession body;
|};

# The collection of operational serivces/functions offered by the operational facility
#
# Examples: messages, capture, routines
public type OutboundWithResponse record {
    # Date when the response expected. This can result in chasing activities and notification to the sending unit
    common:Datetime ResponseDueDate?;
    # Reference to the inbound correspondence received that has been matched to the outbound message
    common:Correspondence ResponseCorrespondenceReference?;
    # Reference to the inbound correspondence received that has been matched to the outbound message
    common:Correspondence ResponseCorrespondenceRecord?;
};

# Operate equipment and/or a largely automated facility within Correspondence. 
public type CorrespondenceOperatingSession record {
    # Service activity statistics that are maintained during the session
    string CorrespondenceServiceSessionStatistics?;
    # >
    # * `FinancialReport` - 
    # * `BusinessReport` - 
    # * `ManagementReport` - 
    # * `Statement` - 
    # * `MaintenanceReport` - 
    # * `RegulatoryReport` - 
    # * `TaxReport` - 
    # * `AnalysisReport` - 
    common:Reporttypevalues CorrespondenceServiceSessionReportType?;
    # The session activity report
    common:Report CorrespondenceServiceSessionReport?;
    # Date when the response expected. This can result in chasing activities and notification to the sending unit
    common:Datetime CorrespondenceServiceSessionDate?;
};

public type BlockMailingOk record {|
    *http:Ok;
    # body
    BlockMailing body;
|};

# Identifies the preferred media and channel for delivery of the message
public type Channel record {
    # >
    # * `CommunicationChannel` - 
    # * `AuthenticationChannel` - 
    common:Channeltypevalues ChannelType?;
};

# >
# * `Model` - Identification of a model for a given manufacturer.
# * `Serialnumber` - Serial number of a component.
# * `Approvalnumber` - Unique approval number for a component, delivered by a certification body.
# * `Systemversion` - Version of the system, eg, "4.0.1" to indicate version 4.0.1.
# * `Systemname` - Name by which a system is known.
# * `Identification` - Identification of a system.
public type Systemidentificationtypevalues "Model"|"Serialnumber"|"Approvalnumber"|"Systemversion"|"Systemname"|"Identification";

# The collection of operational serivces/functions offered by the operational facility
#
# Examples: messages, capture, routines
public type BlockMailing record {
    # Used to track receipt and return of the individual messages making up the block mail
    string BlockmailingRecord?;
};

# ???
public type CommunicationChannel record {
    # >
    # * `CommunicationChannel` - 
    # * `AuthenticationChannel` - 
    common:Channeltypevalues ChannelType?;
    # The time schedule that system services are available for use.
    common:Schedule SystemAccessSchedule?;
    # SystemType
    string SystemType?;
    # Reference to the inbound correspondence item
    common:Identifier SystemIdentification?;
    # >
    # * `Model` - Identification of a model for a given manufacturer.
    # * `Serialnumber` - Serial number of a component.
    # * `Approvalnumber` - Unique approval number for a component, delivered by a certification body.
    # * `Systemversion` - Version of the system, eg, "4.0.1" to indicate version 4.0.1.
    # * `Systemname` - Name by which a system is known.
    # * `Identification` - Identification of a system.
    Systemidentificationtypevalues SystemIdentificationType?;
    # Status of the system. (ISO20022)
    common:Status SystemStatus?;
    # >
    # * `Suspended` - System is suspended, that is, not operational.
    # * `Active` - System is functioning normally, that is, operational.
    # * `Closed` - System is closed (eg. normal closure of an RTGS).
    # * `Closing` - System needs to wait for completion of intermediate internal activities before going to a status Closed.
    # * `Reservemaintenanceperiodstart` - System is starting a new maintenance period.
    Systemstatustypevalues SystemStatusType?;
    # Date when the response expected. This can result in chasing activities and notification to the sending unit
    common:Datetime SystemDateTime?;
    #
    # Specifies the language used by the system. (ISO20022)
    string SystemLanguage?;
};
