import financial.bian.attribute.groups.common as common;

import ballerina/http;

# >
# * `Suspended` - System is suspended, that is, not operational.
# * `Active` - System is functioning normally, that is, operational.
# * `Closed` - System is closed (eg. normal closure of an RTGS).
# * `Closing` - System needs to wait for completion of intermediate internal activities before going to a status Closed.
# * `Reservemaintenanceperiodstart` - System is starting a new maintenance period.
public type Systemstatustypevalues "Suspended"|"Active"|"Closed"|"Closing"|"Reservemaintenanceperiodstart";

public type VoiceChannelOperatingSessionOk record {|
    *http:Ok;
    # body
    VoiceChannelOperatingSession body;
|};

# >
# * `Success` - Action executed successfully, requested result delivered.
# * `Pending` - Action accepted but not yet fully executed; requires background processing.
# * `Requires_Authentication` - Action cannot proceed until customer re-authenticates.
# * `Requires_Approval` - Action paused awaiting manual or automated approval.
# * `Failed_Validation` - Request failed due to invalid/missing input parameters.
# * `Failed_Authentication` - Request failed due to incorrect or missing authentication.
# * `Rejected` - Action explicitly denied due to business rules or risk controls.
# * `Cancelled` - Action was initiated but then stopped before completion.
# * `Error_System` - Request could not be completed due to a technical/system error.
# * `Error_Unknown` - Request failed for an unspecified or unexpected reason.
public type Dialoguesessionrequestedactionoutcomestatustypevalues "Success"|"Pending"|"Requires_Authentication"|"Requires_Approval"|"Failed_Validation"|"Failed_Authentication"|"Rejected"|"Cancelled"|"Error_System"|"Error_Unknown";

# Operate equipment and/or a largely automated facility within Advanced Voice Services Operations. 
public type VoiceChannelOperatingSession record {
    # Service Domain attribute referenced during the session covering the menu options
    string AdvancedVoiceServicesOperationsServiceMenu?;
    # Service activity statistics that are maintained during the session
    string VChannelServiceSessionStatistics?;
    # >
    # * `FinancialReport` - 
    # * `BusinessReport` - 
    # * `ManagementReport` - 
    # * `Statement` - 
    # * `MaintenanceReport` - 
    # * `RegulatoryReport` - 
    # * `TaxReport` - 
    # * `AnalysisReport` - 
    common:Reporttypevalues VChannelServiceSessionReportType?;
    # The session activity report
    common:Report VChannelServiceSessionReport?;
    # A record of any production issues arising during the session
    common:ProductionIssue VChannelProductionIssueRecord?;
    # The source of the outbound connection request
    common:BusinessUnit EmployeeBusinessUnitReference?;
    # Reference to the customer contact record used accessing outbound channel
    common:CustomerContact CustomerContactRecordReference?;
    # The type of network event or error being recorded (e.g. device failure)
    string ProductionIssueType?;
    # The description of the event error
    string ProductionIssueDescription?;
    # Evaluation of the event cause and impact assessment
    string ProductionIssueDiagnosis?;
    # Description of corrective action proposed and taken
    common:Task ProductionIssueResolutionTask?;
    # The life cycle stage of a device
    #
    # e.g. active, defect
    common:Status ProductionIssueStatus?;
};

# >
# * `Model` - Identification of a model for a given manufacturer.
# * `Serialnumber` - Serial number of a component.
# * `Approvalnumber` - Unique approval number for a component, delivered by a certification body.
# * `Systemversion` - Version of the system, eg, "4.0.1" to indicate version 4.0.1.
# * `Systemname` - Name by which a system is known.
# * `Identification` - Identification of a system.
public type Systemidentificationtypevalues "Model"|"Serialnumber"|"Approvalnumber"|"Systemversion"|"Systemname"|"Identification";

# The communication medium through which the party (e.g., customer) interacts with the enterprise during the session. Examples include voice call, chat, email, social media message, or self-service porta
public type Communicationchannel record {
    # >
    # * `CommunicationChannel` - 
    # * `AuthenticationChannel` - 
    common:Channeltypevalues ChannelType?;
    # The schedule of past and planned customer contacts
    common:Schedule SystemAccessSchedule?;
    # SystemType
    string SystemType?;
    # SystemIdentification
    common:Identifier SystemIdentification?;
    # >
    # * `Model` - Identification of a model for a given manufacturer.
    # * `Serialnumber` - Serial number of a component.
    # * `Approvalnumber` - Unique approval number for a component, delivered by a certification body.
    # * `Systemversion` - Version of the system, eg, "4.0.1" to indicate version 4.0.1.
    # * `Systemname` - Name by which a system is known.
    # * `Identification` - Identification of a system.
    Systemidentificationtypevalues SystemIdentificationType?;
    # The life cycle stage of a device
    #
    # e.g. active, defect
    common:Status SystemStatus?;
    # >
    # * `Suspended` - System is suspended, that is, not operational.
    # * `Active` - System is functioning normally, that is, operational.
    # * `Closed` - System is closed (eg. normal closure of an RTGS).
    # * `Closing` - System needs to wait for completion of intermediate internal activities before going to a status Closed.
    # * `Reservemaintenanceperiodstart` - System is starting a new maintenance period.
    Systemstatustypevalues SystemStatusType?;
    # The date when the identifier became valid.
    common:Datetime SystemDateTime?;
    #
    # Specifies the language used by the system. (ISO20022)
    string SystemLanguage?;
};

# The record used to handle the contact (see Service Domain-Contact Handler for complete definition)
public type DialogueSession record {
    # Payload of the exchange.
    string DialogueContent?;
    # DialogueSessionIdentification
    common:Identifier DialogueSessionIdentification?;
    # The purpose, need, or goal identified from the customers inputs during the session. Examples include request for information, complaint, order placement, or troubleshooting.
    string DialoguePurpose?;
    # DialogueSessionRequestedAction
    common:Action DialogueSessionRequestedAction?;
    # >
    # * `Success` - Action executed successfully, requested result delivered.
    # * `Pending` - Action accepted but not yet fully executed; requires background processing.
    # * `Requires_Authentication` - Action cannot proceed until customer re-authenticates.
    # * `Requires_Approval` - Action paused awaiting manual or automated approval.
    # * `Failed_Validation` - Request failed due to invalid/missing input parameters.
    # * `Failed_Authentication` - Request failed due to incorrect or missing authentication.
    # * `Rejected` - Action explicitly denied due to business rules or risk controls.
    # * `Cancelled` - Action was initiated but then stopped before completion.
    # * `Error_System` - Request could not be completed due to a technical/system error.
    # * `Error_Unknown` - Request failed for an unspecified or unexpected reason.
    Dialoguesessionrequestedactionoutcomestatustypevalues DialogueSessionOutcome?;
    # Details of the device being used for access
    common:Device DialogueSessionUsedDevice?;
    # The communication medium through which the party (e.g., customer) interacts with the enterprise during the session. Examples include voice call, chat, email, social media message, or self-service porta
    Communicationchannel DialogueSessionUsedChannel?;
    # The date when the identifier became valid.
    common:Datetime DialogueSessionStartDateAndTime?;
    # The date when the identifier became valid.
    common:Datetime DialogueSessionEndDateAndTime?;
    # Detain used for statistics
    common:Duration DialogueSessionDuration?;
    # The life cycle stage of a device
    #
    # e.g. active, defect
    common:Status DialogueSessionStatus?;
    # A complete record of the conversation during the session, including chat messages, call notes, emails, or any other exchanged content. It captures both customer and agent/bot contributions for reference, analysis, and compliance.
    common:Log DialogueSessionLog?;
    # Detain used for statistics
    common:Duration SessionDuration?;
    # The date when the identifier became valid.
    common:Datetime SessionDateAndTime?;
    # The life cycle stage of a device
    #
    # e.g. active, defect
    common:Status SessionStatus?;
    # Specifies the classification of session like Customer Contact Session, Channel Operating Session, Device Operating Session, etc.
    common:Sessiontype SessionType?;
    # The schedule of past and planned customer contacts
    common:Schedule SessionScheduel?;
    # SessionIdentification
    common:Identifier SessionIdentification?;
};
