import financial.bian.attribute.groups.common as common;

import ballerina/http;

public type MarketTradeReportingOperatingSessionOk record {|
    *http:Ok;
    MarketTradeReportingOperatingSession body;
|};

# Operate equipment and/or a largely automated facility within Trade and Price Reporting. 
public type MarketTradeReportingOperatingSession record {
    # The schedule according to which the service provider will operate the Market Trade Reporting Operating Session ||
    # |
    common:schedule MarketTradeReportingOperatingSessionSchedule?;
    # The status of Market Trade Reporting Operating Session Status |Status  (https://www.iso20022.org/standardsrepository/type/Status)|Standard|ISO20022 BM ()
    common:status MarketTradeReportingOperatingSessionStatus?;
    # Reference to the log of (usage) ativities/events  of Market Trade Reporting Operating Session ||
    # |
    common:Log MarketTradeReportingOperatingSessionUsageLog?;
    # Reference to the party who provides the services of Market Trade Reporting Operating Session ||
    # |
    common:involvedparty MarketTradeReportingOperatingSessionAssociatedPartyReference?;
    # Reference to the party who provides the services of Market Trade Reporting Operating Session ||
    # |
    common:involvedparty MarketTradeReportingOperatingSessionServiceProviderReference?;
    # A Classification value that distinguishes between the type of operations within Market Trade Reporting Operating Session ||
    # |
    common:Sessiontype MarketTradeReportingOperatingSessionType?;
    # The schedule according to which the service provider will operate the Market Trade Reporting Operating Session ||
    # |
    common:schedule MarketTradeReportingOperatingSessionServiceProviderSchedule?;
    # A Classification value that distinguishes between the type of services within Market Trade Reporting Operating Session ||
    # |
    common:servicetype MarketTradeReportingOperatingSessionServiceType?;
    # The configuration of Market Trade Reporting Operating Session ||
    # |
    common:systemconfigurationoption MarketTradeReportingOperatingSessionServiceConfiguration?;
    # An unique reference to an item or an occurrence of Market Trade Reporting Operating Session ||
    # |
    common:Session MarketTradeReportingOperatingSessionReference?;
};
