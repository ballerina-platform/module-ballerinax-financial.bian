import financial.bian.attribute.groups.common as common;

import ballerina/http;

# A Classification value that distinguishes between the type of services within Operational Gateway Operating Session
public type Servicetype record {
    # The name of Condition
    common:Name ServiceTypeName?;
    # >
    # * `ITService` - 
    # * `AdministrativeService` - 
    # * `SystemService` - 
    # * `FinancialService` - 
    # * `InformationService` - 
    # * `BusinessService` - 
    common:Servicetypevalues ServiceType?;
};

public type OutboundWithResponseOk record {|
    *http:Ok;
    OutboundWithResponse body;
|};

public type OperationalGatewayOperatingSessionOk record {|
    *http:Ok;
    OperationalGatewayOperatingSession body;
|};

# The configuration of Operational Gateway Operating Session
public type SystemConfigurationOption record {
    # Options for configuring the system or the function/feature of system.
    string SystemConfigurationOption?;
};

# An operational service or function supported within the Outbound Message Function for doing Outbound Message Function
public type OutboundWithResponse record {
    # The required status/situation and or tasks that need to be completed prior to the invocation of the feature
    common:condition Preconditions?;
    # The schedule and timing of the function
    common:Schedule Schedule?;
    # The Outbound Message Function specific Business Service
    common:businessservice BusinessService?;
    # Reference to Outbound Message Function
    common:Session OperationalGatewayOperatingSessionReference?;
    # Reference to Outbound Message Function
    common:Function OutboundWithResponseFunctionReference?;
    # The type of Outbound With Response Function
    string OutboundWithResponseFunctionType?;
};

public type OutboundMessageOk record {|
    *http:Ok;
    OutboundMessage body;
|};

# An operational service or function supported within the Outbound Message Function for doing Outbound Message Function
public type InboundMessage record {
    # The required status/situation and or tasks that need to be completed prior to the invocation of the feature
    common:condition Preconditions?;
    # The schedule and timing of the function
    common:Schedule Schedule?;
    # The Outbound Message Function specific Business Service
    common:businessservice BusinessService?;
    # Reference to Outbound Message Function
    common:Session OperationalGatewayOperatingSessionReference?;
    # Reference to Outbound Message Function
    common:Function InboundMessageFunctionReference?;
    # The type of Inbound Message Function
    string InboundMessageFunctionType?;
};

# Operate equipment and/or a largely automated facility within Operational Gateway. 
public type OperationalGatewayOperatingSession record {
    # The schedule and timing of the function
    common:Schedule OperationalGatewayOperatingSessionSchedule?;
    # OperationalGatewayOperatingSessionStatus
    common:Status OperationalGatewayOperatingSessionStatus?;
    # Reference to the log of (usage) ativities/events  of Operational Gateway Operating Session
    common:Log OperationalGatewayOperatingSessionUsageLog?;
    # Reference to an entity that assigns and manages the identification.
    # tReference to the organization or agency that issued the identifier (e.g., DMV, Passport Office).
    common:Involvedparty OperationalGatewayOperatingSessionAssociatedPartyReference?;
    # Reference to an entity that assigns and manages the identification.
    # tReference to the organization or agency that issued the identifier (e.g., DMV, Passport Office).
    common:Involvedparty OperationalGatewayOperatingSessionServiceProviderReference?;
    # Specifies the classification of session like Customer Contact Session, Channel Operating Session, Device Operating Session, etc.
    common:Sessiontype OperationalGatewayOperatingSessionType?;
    # The schedule and timing of the function
    common:Schedule OperationalGatewayOperatingSessionServiceProviderSchedule?;
    # A Classification value that distinguishes between the type of services within Operational Gateway Operating Session
    Servicetype OperationalGatewayOperatingSessionServiceType?;
    # The configuration of Operational Gateway Operating Session
    SystemConfigurationOption OperationalGatewayOperatingSessionServiceConfiguration?;
    # Reference to Outbound Message Function
    common:Session OperationalGatewayOperatingSessionReference?;
};

public type InboundMessageOk record {|
    *http:Ok;
    InboundMessage body;
|};

# An operational service or function supported within the Outbound Message Function for doing Outbound Message Function
public type OutboundMessage record {
    # The required status/situation and or tasks that need to be completed prior to the invocation of the feature
    common:condition Preconditions?;
    # The schedule and timing of the function
    common:Schedule Schedule?;
    # The Outbound Message Function specific Business Service
    common:businessservice BusinessService?;
    # Reference to Outbound Message Function
    common:Session OperationalGatewayOperatingSessionReference?;
    # Reference to Outbound Message Function
    common:Function OutboundMessageFunctionReference?;
    # The type of Outbound Message Function
    string OutboundMessageFunctionType?;
};
