import financial.bian.attribute.groups.common as common;

import ballerina/http;

# An operational service or function supported within the Market Order Quotation Function for doing Market Order Quotation Function
public type InvestmentPortfolioValuation record {
    # The required status/situation and or tasks that need to be completed prior to the invocation of the feature
    common:Condition Preconditions?;
    # The schedule and timing of the function
    # Schedule
    common:Schedule Schedule?;
    # The Market Order Quotation Function specific Business Service
    # BusinessService
    common:BusinessService BusinessService?;
    # Reference to Market Order Quotation Function
    # eTradingWorkbenchOperatingSessionReference
    common:Session eTradingWorkbenchOperatingSessionReference?;
    # Reference to Market Order Quotation Function
    # InvestmentPortfolioValuationFunctionReference
    common:Function InvestmentPortfolioValuationFunctionReference?;
    # The type of Investment Portfolio Valuation Function
    # InvestmentPortfolioValuationFunctionType
    string InvestmentPortfolioValuationFunctionType?;
};

public type MarketOrderInitiationOk record {|
    *http:Ok;
    # body
    MarketOrderInitiation body;
|};

public type ETradingWorkbenchOperatingSessionOk record {|
    *http:Ok;
    # body
    eTradingWorkbenchOperatingSession body;
|};

# A Classification value that distinguishes between the type of services within eTrading Workbench Operating Session
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

# Operate equipment and/or a largely automated facility within eTrading Workbench. 
public type eTradingWorkbenchOperatingSession record {
    # The schedule and timing of the function
    common:Schedule eTradingWorkbenchOperatingSessionSchedule?;
    # eTradingWorkbenchOperatingSessionStatus
    common:Status eTradingWorkbenchOperatingSessionStatus?;
    # eTradingWorkbenchOperatingSessionUsageLog
    common:Log eTradingWorkbenchOperatingSessionUsageLog?;
    # Reference to an entity that assigns and manages the identification.
    # tReference to the organization or agency that issued the identifier (e.g., DMV, Passport Office).
    common:Involvedparty eTradingWorkbenchOperatingSessionAssociatedPartyReference?;
    # Reference to an entity that assigns and manages the identification.
    # tReference to the organization or agency that issued the identifier (e.g., DMV, Passport Office).
    common:Involvedparty eTradingWorkbenchOperatingSessionServiceProviderReference?;
    # Specifies the classification of session like Customer Contact Session, Channel Operating Session, Device Operating Session, etc.
    # eTradingWorkbenchOperatingSessionType
    common:Sessiontype eTradingWorkbenchOperatingSessionType?;
    # The schedule and timing of the function
    # eTradingWorkbenchOperatingSessionServiceProviderSchedule
    common:Schedule eTradingWorkbenchOperatingSessionServiceProviderSchedule?;
    # A Classification value that distinguishes between the type of services within eTrading Workbench Operating Session
    # eTradingWorkbenchOperatingSessionServiceType
    Servicetype eTradingWorkbenchOperatingSessionServiceType?;
    # The configuration of eTrading Workbench Operating Session
    SystemConfigurationOption eTradingWorkbenchOperatingSessionServiceConfiguration?;
    # Reference to Market Order Quotation Function
    common:Session eTradingWorkbenchOperatingSessionReference?;
};

public type MarketPriceAnalysisOk record {|
    *http:Ok;
    # body
    MarketPriceAnalysis body;
|};

# The configuration of eTrading Workbench Operating Session
public type SystemConfigurationOption record {
    # Options for configuring the system or the function/feature of system.
    string SystemConfigurationOption?;
};

# An operational service or function supported within the Market Order Quotation Function for doing Market Order Quotation Function
public type MarketOrderInitiation record {
    # The required status/situation and or tasks that need to be completed prior to the invocation of the feature
    common:Condition Preconditions?;
    # The schedule and timing of the function
    # Schedule
    common:Schedule Schedule?;
    # The Market Order Quotation Function specific Business Service
    # BusinessService
    common:BusinessService BusinessService?;
    # Reference to Market Order Quotation Function
    # eTradingWorkbenchOperatingSessionReference
    common:Session eTradingWorkbenchOperatingSessionReference?;
    # Reference to Market Order Quotation Function
    # MarketOrderInitiationFunctionReference
    common:Function MarketOrderInitiationFunctionReference?;
    # The type of Market Order Initiation Function
    # MarketOrderInitiationFunctionType
    string MarketOrderInitiationFunctionType?;
};

public type InvestmentPortfolioValuationOk record {|
    *http:Ok;
    # body
    InvestmentPortfolioValuation body;
|};

public type MarketOrderQuotationOk record {|
    *http:Ok;
    # body
    MarketOrderQuotation body;
|};

# An operational service or function supported within the Market Order Quotation Function for doing Market Order Quotation Function
public type MarketPriceAnalysis record {
    # The required status/situation and or tasks that need to be completed prior to the invocation of the feature
    common:Condition Preconditions?;
    # The schedule and timing of the function
    # Schedule
    common:Schedule Schedule?;
    # The Market Order Quotation Function specific Business Service
    # BusinessService
    common:BusinessService BusinessService?;
    # Reference to Market Order Quotation Function
    # eTradingWorkbenchOperatingSessionReference
    common:Session eTradingWorkbenchOperatingSessionReference?;
    # Reference to Market Order Quotation Function
    # MarketPriceAnalysisFunctionReference
    common:Function MarketPriceAnalysisFunctionReference?;
    # The type of Market Price Analysis Function
    # MarketPriceAnalysisFunctionType
    string MarketPriceAnalysisFunctionType?;
};

# An operational service or function supported within the Market Order Quotation Function for doing Market Order Quotation Function
public type MarketOrderQuotation record {
    # The required status/situation and or tasks that need to be completed prior to the invocation of the feature
    common:Condition Preconditions?;
    # The schedule and timing of the function
    # Schedule
    common:Schedule Schedule?;
    # The Market Order Quotation Function specific Business Service
    # BusinessService
    common:BusinessService BusinessService?;
    # Reference to Market Order Quotation Function
    # eTradingWorkbenchOperatingSessionReference
    common:Session eTradingWorkbenchOperatingSessionReference?;
    # Reference to Market Order Quotation Function
    # MarketOrderQuotationFunctionReference
    common:Function MarketOrderQuotationFunctionReference?;
    # The type of Market Order Quotation Function
    # MarketOrderQuotationFunctionType
    string MarketOrderQuotationFunctionType?;
};
