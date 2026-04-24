import financial.bian.attribute.groups.common as common;

import ballerina/http;

public type ProgramTradingOperatingSessionOk record {|
    *http:Ok;
    ProgramTradingOperatingSession body;
|};

# Operate equipment and/or a largely automated facility within Program Trading. 
public type ProgramTradingOperatingSession record {
    # The schedule according to which the service provider will operate the Program Trading Operating Session ||
    # |
    common:schedule ProgramTradingOperatingSessionSchedule?;
    # The status of Program Trading Operating Session Status |Status  (https://www.iso20022.org/standardsrepository/type/Status)|Standard|ISO20022 BM ()
    common:status ProgramTradingOperatingSessionStatus?;
    # Reference to the log of (usage) ativities/events  of Program Trading Operating Session ||
    # |
    common:Log ProgramTradingOperatingSessionUsageLog?;
    # Reference to the party who provides the services of Program Trading Operating Session ||
    # |
    common:involvedparty ProgramTradingOperatingSessionAssociatedPartyReference?;
    # Reference to the party who provides the services of Program Trading Operating Session ||
    # |
    common:involvedparty ProgramTradingOperatingSessionServiceProviderReference?;
    # A Classification value that distinguishes between the type of operations within Program Trading Operating Session ||
    # |
    common:Sessiontype ProgramTradingOperatingSessionType?;
    # The schedule according to which the service provider will operate the Program Trading Operating Session ||
    # |
    common:schedule ProgramTradingOperatingSessionServiceProviderSchedule?;
    # A Classification value that distinguishes between the type of services within Program Trading Operating Session ||
    # |
    common:servicetype ProgramTradingOperatingSessionServiceType?;
    # The configuration of Program Trading Operating Session ||
    # |
    common:systemconfigurationoption ProgramTradingOperatingSessionServiceConfiguration?;
    # An unique reference to an item or an occurrence of Program Trading Operating Session ||
    # |
    common:Session ProgramTradingOperatingSessionReference?;
};

# An operational service or function supported within the Program Trade Execution Function for doing Program Trade Execution Function
public type ProgramTradedPortfolioMaintenance record {
    # The required status/situation and or tasks that need to be completed prior to the invocation of the feature
    common:condition Preconditions?;
    # The schedule according to which the service provider will operate the Program Trading Operating Session ||
    # |
    common:schedule Schedule?;
    # The Program Trade Execution Function specific Business Service
    common:businessservice BusinessService?;
    # An unique reference to an item or an occurrence of Program Trading Operating Session ||
    # |
    common:Session ProgramTradingOperatingSessionReference?;
    # Reference to Program Trade Execution Function
    'common:Function ProgramTradedPortfolioMaintenanceFunctionReference?;
    # The particular date and time point in the progression of time
    common:text ProgramTradedPortfolioMaintenanceFunctionType?;
};

public type ProgramTradeExecutionOk record {|
    *http:Ok;
    ProgramTradeExecution body;
|};

# An operational service or function supported within the Program Trade Execution Function for doing Program Trade Execution Function
public type ProgramTradeExecution record {
    # The required status/situation and or tasks that need to be completed prior to the invocation of the feature
    common:condition Preconditions?;
    # The schedule according to which the service provider will operate the Program Trading Operating Session ||
    # |
    common:schedule Schedule?;
    # The Program Trade Execution Function specific Business Service
    common:businessservice BusinessService?;
    # An unique reference to an item or an occurrence of Program Trading Operating Session ||
    # |
    common:Session ProgramTradingOperatingSessionReference?;
    # Reference to Program Trade Execution Function
    'common:Function ProgramTradeExecutionFunctionReference?;
    # The particular date and time point in the progression of time
    common:text ProgramTradeExecutionFunctionType?;
};

public type ProgramTradedPortfolioAlgorithmOk record {|
    *http:Ok;
    ProgramTradedPortfolioAlgorithm body;
|};

# An operational service or function supported within the Program Trade Execution Function for doing Program Trade Execution Function
public type ProgramTradedPortfolioAlgorithm record {
    # The required status/situation and or tasks that need to be completed prior to the invocation of the feature
    common:condition Preconditions?;
    # The schedule according to which the service provider will operate the Program Trading Operating Session ||
    # |
    common:schedule Schedule?;
    # The Program Trade Execution Function specific Business Service
    common:businessservice BusinessService?;
    # An unique reference to an item or an occurrence of Program Trading Operating Session ||
    # |
    common:Session ProgramTradingOperatingSessionReference?;
    # Reference to Program Trade Execution Function
    'common:Function ProgramTradedPortfolioAlgorithmFunctionReference?;
    # The particular date and time point in the progression of time
    common:text ProgramTradedPortfolioAlgorithmFunctionType?;
};
