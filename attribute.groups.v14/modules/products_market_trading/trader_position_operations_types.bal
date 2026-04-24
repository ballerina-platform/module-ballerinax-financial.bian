import financial.bian.attribute.groups.common as common;

import ballerina/http;

public type TraderSecurityPositionManagementandAnalysisOk record {|
    *http:Ok;
    TraderSecurityPositionManagementandAnalysis body;
|};

# An operational service or function supported within the Trade Quote and Pricing Function for doing Trade Quote and Pricing Function
public type TraderSecurityPositionManagementandAnalysis record {
    # The required status/situation and or tasks that need to be completed prior to the invocation of the feature
    common:condition Preconditions?;
    # The schedule according to which the service provider will operate the Traded Position Operating Session ||
    # |
    common:schedule Schedule?;
    # The Trade Quote and Pricing Function specific Business Service
    common:businessservice BusinessService?;
    # An unique reference to an item or an occurrence of Traded Position Operating Session ||
    # |
    common:Session TradedPositionOperatingSessionReference?;
    # Reference to Trade Quote and Pricing Function
    'common:Function TraderSecurityPositionManagementandAnalysisFunctionReference?;
    # The particular date and time point in the progression of time
    common:text TraderSecurityPositionManagementandAnalysisFunctionType?;
};

# An operational service or function supported within the Trade Quote and Pricing Function for doing Trade Quote and Pricing Function
public type TradeQuoteandPricing record {
    # The required status/situation and or tasks that need to be completed prior to the invocation of the feature
    common:condition Preconditions?;
    # The schedule according to which the service provider will operate the Traded Position Operating Session ||
    # |
    common:schedule Schedule?;
    # The Trade Quote and Pricing Function specific Business Service
    common:businessservice BusinessService?;
    # An unique reference to an item or an occurrence of Traded Position Operating Session ||
    # |
    common:Session TradedPositionOperatingSessionReference?;
    # Reference to Trade Quote and Pricing Function
    'common:Function TradeQuoteandPricingFunctionReference?;
    # The particular date and time point in the progression of time
    common:text TradeQuoteandPricingFunctionType?;
};

public type TradeCaptureandReportingOk record {|
    *http:Ok;
    TradeCaptureandReporting body;
|};

# An operational service or function supported within the Trade Quote and Pricing Function for doing Trade Quote and Pricing Function
public type TradeDealBlotter record {
    # The required status/situation and or tasks that need to be completed prior to the invocation of the feature
    common:condition Preconditions?;
    # The schedule according to which the service provider will operate the Traded Position Operating Session ||
    # |
    common:schedule Schedule?;
    # The Trade Quote and Pricing Function specific Business Service
    common:businessservice BusinessService?;
    # An unique reference to an item or an occurrence of Traded Position Operating Session ||
    # |
    common:Session TradedPositionOperatingSessionReference?;
    # Reference to Trade Quote and Pricing Function
    'common:Function TradeDealBlotterFunctionReference?;
    # The particular date and time point in the progression of time
    common:text TradeDealBlotterFunctionType?;
};

public type TraderTradingPermissionsandLimitsOk record {|
    *http:Ok;
    TraderTradingPermissionsandLimits body;
|};

# An operational service or function supported within the Trade Quote and Pricing Function for doing Trade Quote and Pricing Function
public type TraderTradingPermissionsandLimits record {
    # The required status/situation and or tasks that need to be completed prior to the invocation of the feature
    common:condition Preconditions?;
    # The schedule according to which the service provider will operate the Traded Position Operating Session ||
    # |
    common:schedule Schedule?;
    # The Trade Quote and Pricing Function specific Business Service
    common:businessservice BusinessService?;
    # An unique reference to an item or an occurrence of Traded Position Operating Session ||
    # |
    common:Session TradedPositionOperatingSessionReference?;
    # Reference to Trade Quote and Pricing Function
    'common:Function TraderTradingPermissionsandLimitsFunctionReference?;
    # The particular date and time point in the progression of time
    common:text TraderTradingPermissionsandLimitsFunctionType?;
};

# Operate equipment and/or a largely automated facility within Trader Position Operations. 
public type TradedPositionOperatingSession record {
    # The schedule according to which the service provider will operate the Traded Position Operating Session ||
    # |
    common:schedule TradedPositionOperatingSessionSchedule?;
    # The status of Traded Position Operating Session Status |Status  (https://www.iso20022.org/standardsrepository/type/Status)|Standard|ISO20022 BM ()
    common:status TradedPositionOperatingSessionStatus?;
    # Reference to the log of (usage) ativities/events  of Traded Position Operating Session ||
    # |
    common:Log TradedPositionOperatingSessionUsageLog?;
    # Reference to the party who provides the services of Traded Position Operating Session ||
    # |
    common:involvedparty TradedPositionOperatingSessionAssociatedPartyReference?;
    # Reference to the party who provides the services of Traded Position Operating Session ||
    # |
    common:involvedparty TradedPositionOperatingSessionServiceProviderReference?;
    # A Classification value that distinguishes between the type of operations within Traded Position Operating Session ||
    # |
    common:Sessiontype TradedPositionOperatingSessionType?;
    # The schedule according to which the service provider will operate the Traded Position Operating Session ||
    # |
    common:schedule TradedPositionOperatingSessionServiceProviderSchedule?;
    # A Classification value that distinguishes between the type of services within Traded Position Operating Session ||
    # |
    common:servicetype TradedPositionOperatingSessionServiceType?;
    # The configuration of Traded Position Operating Session ||
    # |
    common:systemconfigurationoption TradedPositionOperatingSessionServiceConfiguration?;
    # An unique reference to an item or an occurrence of Traded Position Operating Session ||
    # |
    common:Session TradedPositionOperatingSessionReference?;
};

public type TradeQuoteandPricingOk record {|
    *http:Ok;
    TradeQuoteandPricing body;
|};

# An operational service or function supported within the Trade Quote and Pricing Function for doing Trade Quote and Pricing Function
public type TradeCaptureandReporting record {
    # The required status/situation and or tasks that need to be completed prior to the invocation of the feature
    common:condition Preconditions?;
    # The schedule according to which the service provider will operate the Traded Position Operating Session ||
    # |
    common:schedule Schedule?;
    # The Trade Quote and Pricing Function specific Business Service
    common:businessservice BusinessService?;
    # An unique reference to an item or an occurrence of Traded Position Operating Session ||
    # |
    common:Session TradedPositionOperatingSessionReference?;
    # Reference to Trade Quote and Pricing Function
    'common:Function TradeCaptureandReportingFunctionReference?;
    # The particular date and time point in the progression of time
    common:text TradeCaptureandReportingFunctionType?;
};
