import financial.bian.attribute.groups.common as common;

import ballerina/http;

# A Classification value that distinguishes between the type of services within Information Feed Operating Session
public type Servicetype record {
    # Name (label) of the location. (ISO20022)
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

# The configuration of Information Feed Operating Session
public type SystemConfigurationOption record {
    # Options for configuring the system or the function/feature of system.
    string SystemConfigurationOption?;
};

public type InformationFeedOperatingSessionOk record {|
    *http:Ok;
    # body
    InformationFeedOperatingSession body;
|};

# Operate equipment and/or a largely automated facility within Information Provider Operation. 
public type InformationFeedOperatingSession record {
    # Timetable to operate Information Feed Operating Session
    common:Schedule InformationFeedOperatingSessionSchedule?;
    # The tracked status (e.g. under construction or repair, inhabited, vacant).
    common:Status InformationFeedOperatingSessionStatus?;
    # Reference to the log of (usage) ativities/events  of Information Feed Operating Session
    common:Log InformationFeedOperatingSessionUsageLog?;
    # Reference to a Party who plays a  specific role in the context of assigning a status.
    common:Involvedparty InformationFeedOperatingSessionAssociatedPartyReference?;
    # Reference to a Party who plays a  specific role in the context of assigning a status.
    common:Involvedparty InformationFeedOperatingSessionServiceProviderReference?;
    # A Classification value that distinguishes between the type of operations within Information Feed Operating Session
    common:Sessiontype InformationFeedOperatingSessionType?;
    # Timetable to operate Information Feed Operating Session
    common:Schedule InformationFeedOperatingSessionServiceProviderSchedule?;
    # A Classification value that distinguishes between the type of services within Information Feed Operating Session
    Servicetype InformationFeedOperatingSessionServiceType?;
    # The configuration of Information Feed Operating Session
    SystemConfigurationOption InformationFeedOperatingSessionServiceConfiguration?;
    # An unique reference to an item or an occurrence of Information Feed Operating Session
    common:Session InformationFeedOperatingSessionReference?;
};
