import financial.bian.attribute.groups.common as common;

import ballerina/http;

public type InformationFeedAdministrationOk record {|
    *http:Ok;
    InformationFeedAdministration body;
|};

# An operational service or function supported within the Dealer Desk Trading Assignment and Limits Function for doing Dealer Desk Trading Assignment and Limits Function
public type InformationFeedAdministration record {
    # The required status/situation and or tasks that need to be completed prior to the invocation of the feature
    common:condition Preconditions?;
    # The schedule according to which the service provider will operate the Dealer Desk Operating Session ||
    # |
    common:schedule Schedule?;
    # The Dealer Desk Trading Assignment and Limits Function specific Business Service
    common:businessservice BusinessService?;
    # An unique reference to an item or an occurrence of Dealer Desk Operating Session ||
    # |
    common:Session DealerDeskOperatingSessionReference?;
    # Reference to Dealer Desk Trading Assignment and Limits Function
    'common:Function InformationFeedAdministrationFunctionReference?;
    # The particular date and time point in the progression of time
    common:text InformationFeedAdministrationFunctionType?;
};

public type DealerDeskConsolidatedPositionTrackingOk record {|
    *http:Ok;
    DealerDeskConsolidatedPositionTracking body;
|};

# An operational service or function supported within the Dealer Desk Trading Assignment and Limits Function for doing Dealer Desk Trading Assignment and Limits Function
public type DealerDeskConsolidatedPositionTracking record {
    # The required status/situation and or tasks that need to be completed prior to the invocation of the feature
    common:condition Preconditions?;
    # The schedule according to which the service provider will operate the Dealer Desk Operating Session ||
    # |
    common:schedule Schedule?;
    # The Dealer Desk Trading Assignment and Limits Function specific Business Service
    common:businessservice BusinessService?;
    # An unique reference to an item or an occurrence of Dealer Desk Operating Session ||
    # |
    common:Session DealerDeskOperatingSessionReference?;
    # Reference to Dealer Desk Trading Assignment and Limits Function
    'common:Function DealerDeskConsolidatedPositionTrackingFunctionReference?;
    # The particular date and time point in the progression of time
    common:text DealerDeskConsolidatedPositionTrackingFunctionType?;
};

# A Classification value that distinguishes between the type of operations within Dealer Desk Operating Session ||
# |
public type sessiontype record {
    # Name by which a party is known and which is usually used to identify that party. (ISO20022)
    common:name SessionTypeName?;
    # >
    # * `ContactHandlingSession` - 
    # * `CustomerDialogueSession` - 
    # * `ChannelOperatingSession` - 
    # * `GatewayOperatingSession` - 
    # * `SwitchOperatingSession` - 
    # * `DeviceOperatingSession` - 
    # * `InterbankTransactionOperatingSession` - 
    # * `CorrespondenceOperatingSession` - 
    # * `InteractiveHelpOperatingSession` - 
    # * `ACHOperatingSession` - 
    common:Sessiontypevalues SessionType?;
};

# Operate equipment and/or a largely automated facility within Dealer Desk. 
public type DealerDeskOperatingSession record {
    # The schedule according to which the service provider will operate the Dealer Desk Operating Session ||
    # |
    common:schedule DealerDeskOperatingSessionSchedule?;
    # The status of Dealer Desk Operating Session Status |Status  (https://www.iso20022.org/standardsrepository/type/Status)|Standard|ISO20022 BM ()
    common:status DealerDeskOperatingSessionStatus?;
    # Reference to the log of (usage) ativities/events  of Dealer Desk Operating Session ||
    # |
    common:Log DealerDeskOperatingSessionUsageLog?;
    # Reference to the party who provides the services of Dealer Desk Operating Session ||
    # |
    common:involvedparty DealerDeskOperatingSessionAssociatedPartyReference?;
    # Reference to the party who provides the services of Dealer Desk Operating Session ||
    # |
    common:involvedparty DealerDeskOperatingSessionServiceProviderReference?;
    # A Classification value that distinguishes between the type of operations within Dealer Desk Operating Session ||
    # |
    sessiontype DealerDeskOperatingSessionType?;
    # The schedule according to which the service provider will operate the Dealer Desk Operating Session ||
    # |
    common:schedule DealerDeskOperatingSessionServiceProviderSchedule?;
    # A Classification value that distinguishes between the type of services within Dealer Desk Operating Session ||
    # |
    common:servicetype DealerDeskOperatingSessionServiceType?;
    # The configuration of Dealer Desk Operating Session ||
    # |
    common:systemconfigurationoption DealerDeskOperatingSessionServiceConfiguration?;
    # An unique reference to an item or an occurrence of Dealer Desk Operating Session ||
    # |
    common:Session DealerDeskOperatingSessionReference?;
};

# An operational service or function supported within the Dealer Desk Trading Assignment and Limits Function for doing Dealer Desk Trading Assignment and Limits Function
public type DealerDeskTradingAssignmentandLimits record {
    # The required status/situation and or tasks that need to be completed prior to the invocation of the feature
    common:condition Preconditions?;
    # The schedule according to which the service provider will operate the Dealer Desk Operating Session ||
    # |
    common:schedule Schedule?;
    # The Dealer Desk Trading Assignment and Limits Function specific Business Service
    common:businessservice BusinessService?;
    # An unique reference to an item or an occurrence of Dealer Desk Operating Session ||
    # |
    common:Session DealerDeskOperatingSessionReference?;
    # Reference to Dealer Desk Trading Assignment and Limits Function
    'common:Function DealerDeskTradingAssignmentandLimitsFunctionReference?;
    # The particular date and time point in the progression of time
    common:text DealerDeskTradingAssignmentandLimitsFunctionType?;
};
