import financial.bian.attribute.groups.common as common;

import ballerina/http;

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

# Operate equipment and/or a largely automated facility within Contact Handler. 
public type CustomerContactOperatingSession record {
    # Indicates whether this is an inbound or outbound contact (inbound is customer initiated, outbound is servicing resource initiated)
    common:Yesnoindicator CustomerContactInboundorOutboundIndicator?;
    # An indicator of how the session was concluded (e.g. customer completed, hang-up, further servicing required)
    common:Session eBranchOperatingSessionReference?;
    # An indicator of how the session was concluded (e.g. customer completed, hang-up, further servicing required)
    common:Session AdvancedVoiceServiceOperatingSessionReference?;
    # Reference to the contact record assembled during the customer contact
    common:CustomerContact CustomerContactRecordReference?;
    # Reference to the contact record assembled during the customer contact
    common:CustomerContact CustomerContactRecord?;
    # Reference to a Party who plays a  specific role in the context of assigning a status.
    common:Involvedparty CustomerContactRecordCustomerReference?;
    # CustomerContactRecordContactDevice
    common:Device CustomerContactRecordContactDevice?;
    # CustomerContactRecordAuthenticationStatus
    common:Status CustomerContactRecordAuthenticationStatus?;
    # CustomerContactRecordRoutingSelectionStatus
    common:Status CustomerContactRecordRoutingSelectionStatus?;
    # The requested service from a menu option can be indicated by the customer when initiating or during contact
    string CustomerContactRecordMenuSelection?;
    # The customer may provide details of servicing resource request when initiating or during contact
    common:Instruction CustomerContactRecordServicingRequest?;
    # Contact Handler can reference recent servicing activity for routing, security and servicing purposes (obtained from Service Domain Channel Activity History)
    string CustomerContactRecordServicingEventHistory?;
    # Reference to the servicing position - can be where an inbound contact is routed, or the source of an outbound contact request
    common:Position CustomerContactRecordServicingPositionReference?;
    # Reference to the servicing resource - can be to handle an inbound contact or the source of an outbound contact request
    common:ServicingResource CustomerContactRecordServicingResourceReference?;
    # Records the actions performed during contact, including all dialogue sessions
    common:CustomerEventLog CustomerContactRecordActivityRecord?;
    # Reference to any contact session dialogue records created during the contact - there can be several
    DialogueSession CustomerSessionDialogueReference?;
    # The customer session dialogue details and log
    string CustomerSessionDialogueRecord?;
    # The time the session was active
    common:Duration CustomerContactRecordDuration?;
    # Describes the interpreted result of the contact (e.g. completed, customer terminated, timed-out)
    string CustomerContactRecordResult?;
};

public type CustomerContactOperatingSessionOk record {|
    *http:Ok;
    # body
    CustomerContactOperatingSession body;
|};

# The collection of operational serivces/functions offered by the operational facility
#
# Examples: messages, capture, routines
public type Routing record {
    # The task updates the contact record authentication status field and handles the interaction with the Party Authentication service domain to get the required level of authentication for the contact
    common:Task RoutingTaskRecord?;
};

public type SessionOk record {|
    *http:Ok;
    # body
    common:Session body;
|};

# Reference to any contact session dialogue records created during the contact - there can be several
public type DialogueSession record {
    # Payload of the exchange.
    string DialogueContent?;
    # A unique identifier assigned to each Session to distinguish it from all other sessions.
    common:Identifier DialogueSessionIdentification?;
    # The purpose, need, or goal identified from the customers inputs during the session. Examples include request for information, complaint, order placement, or troubleshooting.
    string DialoguePurpose?;
    # Action executed during the session, such as processing service requests, placing orders, delivering notifications, or updating customer data.
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
    # DialogueSessionUsedDevice
    common:Device DialogueSessionUsedDevice?;
    # The communication medium through which the party (e.g., customer) interacts with the enterprise during the session. Examples include voice call, chat, email, social media message, or self-service porta
    Communicationchannel DialogueSessionUsedChannel?;
    # Key dates and times for the session
    common:Datetime DialogueSessionStartDateAndTime?;
    # Key dates and times for the session
    common:Datetime DialogueSessionEndDateAndTime?;
    # The time the session was active
    common:Duration DialogueSessionDuration?;
    # DialogueSessionStatus
    common:Status DialogueSessionStatus?;
    # DialogueSessionLog
    common:Log DialogueSessionLog?;
    # The time the session was active
    common:Duration SessionDuration?;
    # Key dates and times for the session
    common:Datetime SessionDateAndTime?;
    # SessionStatus
    common:Status SessionStatus?;
    # Specifies the classification of session like Customer Contact Session, Channel Operating Session, Device Operating Session, etc.
    common:Sessiontype SessionType?;
    # SessionScheduel
    common:Schedule SessionScheduel?;
    # A unique identifier assigned to each Session to distinguish it from all other sessions.
    common:Identifier SessionIdentification?;
};

# The communication medium through which the party (e.g., customer) interacts with the enterprise during the session. Examples include voice call, chat, email, social media message, or self-service porta
public type Communicationchannel record {
    # >
    # * `CommunicationChannel` - 
    # * `AuthenticationChannel` - 
    common:Channeltypevalues ChannelType?;
    # SystemAccessSchedule
    common:Schedule SystemAccessSchedule?;
    # SystemType
    string SystemType?;
    # A unique identifier assigned to each Session to distinguish it from all other sessions.
    common:Identifier SystemIdentification?;
    # >
    # * `Model` - Identification of a model for a given manufacturer.
    # * `Serialnumber` - Serial number of a component.
    # * `Approvalnumber` - Unique approval number for a component, delivered by a certification body.
    # * `Systemversion` - Version of the system, eg, "4.0.1" to indicate version 4.0.1.
    # * `Systemname` - Name by which a system is known.
    # * `Identification` - Identification of a system.
    Systemidentificationtypevalues SystemIdentificationType?;
    # SystemStatus
    common:Status SystemStatus?;
    # >
    # * `Suspended` - System is suspended, that is, not operational.
    # * `Active` - System is functioning normally, that is, operational.
    # * `Closed` - System is closed (eg. normal closure of an RTGS).
    # * `Closing` - System needs to wait for completion of intermediate internal activities before going to a status Closed.
    # * `Reservemaintenanceperiodstart` - System is starting a new maintenance period.
    Systemstatustypevalues SystemStatusType?;
    # Key dates and times for the session
    common:Datetime SystemDateTime?;
    #
    # Specifies the language used by the system. (ISO20022)
    string SystemLanguage?;
};

# >
# * `Model` - Identification of a model for a given manufacturer.
# * `Serialnumber` - Serial number of a component.
# * `Approvalnumber` - Unique approval number for a component, delivered by a certification body.
# * `Systemversion` - Version of the system, eg, "4.0.1" to indicate version 4.0.1.
# * `Systemname` - Name by which a system is known.
# * `Identification` - Identification of a system.
public type Systemidentificationtypevalues "Model"|"Serialnumber"|"Approvalnumber"|"Systemversion"|"Systemname"|"Identification";

# >
# * `Suspended` - System is suspended, that is, not operational.
# * `Active` - System is functioning normally, that is, operational.
# * `Closed` - System is closed (eg. normal closure of an RTGS).
# * `Closing` - System needs to wait for completion of intermediate internal activities before going to a status Closed.
# * `Reservemaintenanceperiodstart` - System is starting a new maintenance period.
public type Systemstatustypevalues "Suspended"|"Active"|"Closed"|"Closing"|"Reservemaintenanceperiodstart";
