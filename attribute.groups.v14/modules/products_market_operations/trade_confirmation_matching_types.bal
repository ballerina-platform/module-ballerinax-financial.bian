import financial.bian.attribute.groups.common as common;

import ballerina/http;

# Operate equipment and/or a largely automated facility within Trade Confirmation Matching. 
public type TradeMatchingOperatingSession record {
    # The schedule according to which the service provider will operate the Trade Matching Operating Session ||
    # |
    common:schedule TradeMatchingOperatingSessionSchedule?;
    # The status of Trade Matching Operating Session Status |Status  (https://www.iso20022.org/standardsrepository/type/Status)|Standard|ISO20022 BM ()
    common:status TradeMatchingOperatingSessionStatus?;
    # Reference to the log of (usage) ativities/events  of Trade Matching Operating Session ||
    # |
    common:Log TradeMatchingOperatingSessionUsageLog?;
    # Reference to the party who provides the services of Trade Matching Operating Session ||
    # |
    common:involvedparty TradeMatchingOperatingSessionAssociatedPartyReference?;
    # Reference to the party who provides the services of Trade Matching Operating Session ||
    # |
    common:involvedparty TradeMatchingOperatingSessionServiceProviderReference?;
    # A Classification value that distinguishes between the type of operations within Trade Matching Operating Session ||
    # |
    common:Sessiontype TradeMatchingOperatingSessionType?;
    # The schedule according to which the service provider will operate the Trade Matching Operating Session ||
    # |
    common:schedule TradeMatchingOperatingSessionServiceProviderSchedule?;
    # A Classification value that distinguishes between the type of services within Trade Matching Operating Session ||
    # |
    common:servicetype TradeMatchingOperatingSessionServiceType?;
    # The configuration of Trade Matching Operating Session ||
    # |
    common:systemconfigurationoption TradeMatchingOperatingSessionServiceConfiguration?;
    # An unique reference to an item or an occurrence of Trade Matching Operating Session ||
    # |
    common:Session TradeMatchingOperatingSessionReference?;
};

# An operational service or function supported within the Unmatched Market Trade Escalation Function for doing Unmatched Market Trade Escalation Function
public type UnmatchedMarketTradeEscalation record {
    # The required status/situation and or tasks that need to be completed prior to the invocation of the feature
    common:condition Preconditions?;
    # The schedule according to which the service provider will operate the Trade Matching Operating Session ||
    # |
    common:schedule Schedule?;
    # The Unmatched Market Trade Escalation Function specific Business Service
    common:businessservice BusinessService?;
    # An unique reference to an item or an occurrence of Trade Matching Operating Session ||
    # |
    common:Session TradeMatchingOperatingSessionReference?;
    # Reference to Unmatched Market Trade Escalation Function
    'common:Function UnmatchedMarketTradeEscalationFunctionReference?;
    # The particular date and time point in the progression of time
    common:text UnmatchedMarketTradeEscalationFunctionType?;
};

public type UnmatchedMarketTradeEscalationOk record {|
    *http:Ok;
    UnmatchedMarketTradeEscalation body;
|};

public type TransactionConfirmationAffirmationOk record {|
    *http:Ok;
    TransactionConfirmationAffirmation body;
|};

public type TradeMatchingOperatingSessionOk record {|
    *http:Ok;
    TradeMatchingOperatingSession body;
|};

# An operational service or function supported within the Unmatched Market Trade Escalation Function for doing Unmatched Market Trade Escalation Function
public type TransactionConfirmationAffirmation record {
    # The required status/situation and or tasks that need to be completed prior to the invocation of the feature
    common:condition Preconditions?;
    # The schedule according to which the service provider will operate the Trade Matching Operating Session ||
    # |
    common:schedule Schedule?;
    # The Unmatched Market Trade Escalation Function specific Business Service
    common:businessservice BusinessService?;
    # An unique reference to an item or an occurrence of Trade Matching Operating Session ||
    # |
    common:Session TradeMatchingOperatingSessionReference?;
    # Reference to Unmatched Market Trade Escalation Function
    'common:Function TransactionConfirmationorAffirmationFunctionReference?;
    # The particular date and time point in the progression of time
    common:text TransactionConfirmationorAffirmationFunctionType?;
};
