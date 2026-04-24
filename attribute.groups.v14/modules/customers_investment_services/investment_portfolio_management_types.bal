import financial.bian.attribute.groups.common as common;

import ballerina/http;

# Fulfill any scheduled and ad-hoc obligations under a service arrangement, most typically for a financial product or facility within Investment Portfolio Management. 
public type ManagedInvestmentPortfolioFacility record {
    # Interpretation of the investment portfolio policies as they impact securities selection and investment decisioning
    common:RuleSet InvestmentPortfolioTradingPolicies?;
    # >
    # * `SecurityPolicy` - 
    # * `AdministrativePolicy` - 
    # * `SocialPolicy` - 
    # * `RegulatoryPolicy` - 
    common:Policytypevalues InvestmentPortfolioPolicyType?;
    # A narrative explaining the interpretation of the portfolio policies as they govern trading decisions
    string InvestmentPortfolioPolicyDescription?;
    # Specific trading constraints (e.g. stocks or sectors that are out of bounds and acceptable risk levels)
    string InvestmentPortfolioPolicyLimitsandConstraints?;
    # InvestmentPortfolioInstanceReference
    common:Identifier InvestmentPortfolioInstanceReference?;
    # Maintains the current security holdings
    # InvestmentPortfolioHoldings
    AssetHolding InvestmentPortfolioHoldings?;
    # >
    # * `Equity` - Financial instrument that represents a title of ownership in a company. That is, the shareholder is entitled to a part of the company's profit - usually by payment of a dividend - and to voting rights, if any. Each company issues generally different classes of shares, for example, ordinary or common shares, which have no guaranteed amount of dividend but carry voting rights, or preferred shares, which receive dividends before ordinary shares but have no voting right. (ISO20022)
    # * `Warrant` - Financial instrument that gives the holder the right to purchase shares or bonds at a given price within a specified time. (ISO20022)
    # * `Entitlement` - Financial instrument providing the holder the privilege to subscribe to or to receive specific assets on terms specified. (ISO20022)
    common:Securitytypevalues InvestmentPortfolioSecurityType?;
    # Maintains the current security holdings
    # InvestmentPortfolioSecurityHolding
    AssetHolding InvestmentPortfolioSecurityHolding?;
};

public type ManagedInvestmentPortfolioFacilityOk record {|
    *http:Ok;
    # body
    ManagedInvestmentPortfolioFacility body;
|};

# The product features/services available with a financical facility
public type Trade record {
    # The trading request record used to initiate and track the trade
    common:Instruction InvestmentPortfolioTradeRequest?;
    # >
    # * `Equity` - Financial instrument that represents a title of ownership in a company. That is, the shareholder is entitled to a part of the company's profit - usually by payment of a dividend - and to voting rights, if any. Each company issues generally different classes of shares, for example, ordinary or common shares, which have no guaranteed amount of dividend but carry voting rights, or preferred shares, which receive dividends before ordinary shares but have no voting right. (ISO20022)
    # * `Warrant` - Financial instrument that gives the holder the right to purchase shares or bonds at a given price within a specified time. (ISO20022)
    # * `Entitlement` - Financial instrument providing the holder the privilege to subscribe to or to receive specific assets on terms specified. (ISO20022)
    common:Securitytypevalues InvestmentPortfolioTradeSecurityType?;
    # A description of the trade, including all key trading details (e.g. amount/volume, pricing/terms, clearing and settlement dates)
    # InvestmentPortfolioTradeSecurityTradeDescription
    string InvestmentPortfolioTradeSecurityTradeDescription?;
};

# The product features/services available with a financical facility
public type Opportunity record {
    # Description of the detected market opportunity (e.g. projected movement of an eligible security that is not currently held)
    string MarketOpportunityDescription?;
    # Evaluation of the comparative performance of identified security and that in the investment portfolio that would be replaced/adjusted
    string SecuritiesComparison?;
};

public type TradeOk record {|
    *http:Ok;
    # body
    Trade body;
|};

# The product features/services available with a financical facility
public type FinancialStatusTracking record {
    # The sensitivity viewpoint for a held security position
    string InvestmentPortfolioSecuritySensitivity?;
    # The expected value movement
    string ProjectedValuation?;
    # An impact assessment of the projected movement on the investment portfolio - includes possible policy limit breaches
    string ProjectedPortfolioImpact?;
};

# Maintains the current security holdings
public type AssetHolding record {
    # Specifies in terms of value and quantity the assets. (ISO20022)
    string AssetHolding?;
};

