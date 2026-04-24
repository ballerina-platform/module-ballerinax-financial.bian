import ballerina/http;
import financial.bian.attribute.groups.common as common;

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

# Fulfill any scheduled and ad-hoc obligations under a service arrangement, most typically for a financial product or facility within Market Making. 
public type MarketMakingFacility record {
    # A Classification value that distinguishes between arrangements according to the type of business services within Market Making Facility ||
    # |
    common:featuretypevalues MarketMakingFacilityParameterType?;
    # A selected optional product feature as subject matter of Market Making Facility ||
    # |
    common:feature MarketMakingFacilitySelectedOption?;
    # The type of Market Making Facility ||
    # |
    common:Bankingproducttype MarketMakingFacilityType?;
    # Reference to the calendar used to fulfill Market Making Facility ||
    # |
    calendar MarketMakingFacilityCalendarReference?;
    # The status of Market Making Facility Status |Status  (https://www.iso20022.org/standardsrepository/type/Status)|Standard|ISO20022 BM ()
    common:status MarketMakingFacilityStatus?;
    # Reference to the customer who is involved in Market Making Facility ||
    # |
    common:involvedparty MarketMakingFacilityAssociatedParty?;
    # The curreny which is arranged in Market Making Facility CurrencyCode|CurrencyCode (https://www.iso20022.org/standardsrepository/type/CurrencyCode)|Standard|ISO20022 BM ()
    common:currencycode MarketMakingFacilityCurrency?;
    # Reference to the regulation which is defined in Market Making Facility GovernanceRules|GovernanceRules (https://www.iso20022.org/standardsrepository/type/GovernanceRules)|Standard|ISO20022 BM ()
    ruleset MarketMakingFacilityRegulationReference?;
    # A Classification that distinguishes between the regularity domains of Market Making Facility ||
    # |
    rulesettype MarketMakingFacilityRegulationType?;
    # Reference to the jurisdiction that is assigned to Market Making Facility in case of legal dispute. Jurisdiction|Jurisdiction (https://www.iso20022.org/standardsrepository/type/Jurisdiction)|Standard|ISO20022 BM ()
    jurisdiction MarketMakingFacilityJurisdiction?;
    # The financial accounting unit into which the financial events, with regard to the origination and fulfillment of the agreement in the context of Market Making Facility, are entered. ||
    # |
    businessunit MarketMakingFacilityBookingLocation?;
    # The type of account which is linked to Market Making Facility OBExternalAccountSubType1Code| ()|Standard|UK Open Banking ()
    accounttypevalues MarketMakingFacilityAccountType?;
    # Reference to the account which is linked to Market Making Facility Account|Account  (https://www.iso20022.org/standardsrepository/type/Account)|Standard|ISO20022 BM ()
    account MarketMakingFacilityAccountReference?;
    # Reference to the customer who is involved in Market Making Facility ||
    # |
    common:involvedparty MarketMakingFacilityCustomerReference?;
    # The position of Market Making Facility Position |Position  (https://www.iso20022.org/standardsrepository/type/Position)|Standard|ISO20022 BM ()
    position MarketMakingFacilityPosition?;
    # Reference to the product which is linked to Market Making Facility Product_x000D_
    # |Product (https://www.iso20022.org/standardsrepository/type/Product)|Standard|ISO20022 BM ()
    common:bankingproduct MarketMakingFacilityProductReference?;
    # Reference to the limitation related to the position of Market Making Facility Limit|Limit (https://www.iso20022.org/standardsrepository/type/Limit)|Standard|ISO20022 (https://www.iso20022.org/)
    limitarrangement MarketMakingFacilityPositionLimit?;
    # An unique reference to an item or an occurrence of Market Making Facility ||
    # |
    common:FinancialFacility MarketMakingFacilityReference?;
};

public type MarketMakingQuoteOk record {|
    *http:Ok;
    MarketMakingQuote body;
|};

public type MarketMakingSecurityTradedPositionOk record {|
    *http:Ok;
    MarketMakingSecurityTradedPosition body;
|};

# The configuration and execution of Market Making Quote Fulfillment arrangement within the Market Making Quote Fulfillment
public type MarketMakingBuyandSellOrder record {
    # The required status/situation prior to the implementation of the feature
    common:condition Preconditions?;
    # The timing and key actions/milestones involved in completing the fulfillment feature instance
    common:schedule Schedule?;
    # The Market Making Quote Fulfillment specific Business Service
    common:businessservice BusinessService?;
    # The required status/situation prior to the implementation of the feature
    common:condition Postconditions?;
    # An unique reference to an item or an occurrence of Market Making Facility ||
    # |
    common:FinancialFacility MarketMakingFacilityReference?;
    # Reference to Market Making Quote Fulfillment
    common:Arrangement MarketMakingBuyandSellOrderFulfillmentReference?;
    # The particular date and time point in the progression of time
    common:text MarketMakingBuyandSellOrderFulfillmentType?;
};

# The configuration and execution of Market Making Quote Fulfillment arrangement within the Market Making Quote Fulfillment
public type MarketMakingQuote record {
    # The required status/situation prior to the implementation of the feature
    common:condition Preconditions?;
    # The timing and key actions/milestones involved in completing the fulfillment feature instance
    common:schedule Schedule?;
    # The Market Making Quote Fulfillment specific Business Service
    common:businessservice BusinessService?;
    # The required status/situation prior to the implementation of the feature
    common:condition Postconditions?;
    # An unique reference to an item or an occurrence of Market Making Facility ||
    # |
    common:FinancialFacility MarketMakingFacilityReference?;
    # Reference to Market Making Quote Fulfillment
    common:Arrangement MarketMakingQuoteFulfillmentReference?;
    # The particular date and time point in the progression of time
    common:text MarketMakingQuoteFulfillmentType?;
};

# The configuration and execution of Market Making Quote Fulfillment arrangement within the Market Making Quote Fulfillment
public type MarketMakingSecurityTradedPosition record {
    # The required status/situation prior to the implementation of the feature
    common:condition Preconditions?;
    # The timing and key actions/milestones involved in completing the fulfillment feature instance
    common:schedule Schedule?;
    # The Market Making Quote Fulfillment specific Business Service
    common:businessservice BusinessService?;
    # The required status/situation prior to the implementation of the feature
    common:condition Postconditions?;
    # An unique reference to an item or an occurrence of Market Making Facility ||
    # |
    common:FinancialFacility MarketMakingFacilityReference?;
    # Reference to Market Making Quote Fulfillment
    common:Arrangement MarketMakingSecurityTradedPositionFulfillmentReference?;
    # The particular date and time point in the progression of time
    common:text MarketMakingSecurityTradedPositionFulfillmentType?;
};

public type MarketMakingFacilityOk record {|
    *http:Ok;
    MarketMakingFacility body;
|};

# The buy/sell quote by trade type and volume as appropriate
public type quote record {
    # The price value for the quote.
    string Price?;
    # >
    # * `Average` - Price is an average execution price.
    # * `Averageoverride` - Price is an override of the average price.
    # * `Combined` - Price is composed of the combined expenses (used in the UK market).
    # * `Grossofall` - Price is a gross execution price. The price is an all inclusive price, ie, including all charges, fees, and taxes.
    # * `Limit` - Price is the limit price of a limit order, eg, a customer might put in a limit order to sell financial instruments at 67 or to buy at 60.
    # * `Net` - Price is a net price, ie, net only of local broker's commission, local fees and local taxes.
    # * `Netdisclosed` - Price is net to the disclosed client.
    # * `Netofall` - Price is a net price, ie, net of all charges, fees and taxes.
    # * `Netundisclosed` - Price is net to the client undisclosed (used in the UK market).
    # * `Notionalgross` - Price is notional gross (used in the UK market).
    # * `Parvalue` - Price is equal to the nominal or face value of the instrument.
    # * `Roundedaverage` - Price is a rounded average price.
    # * `Stop` - Price is a stop price used in an order to buy. The order becomes a market order when the financial instrument trades at or above the stop price after the order is submitted. In an order to sell the order becomes a market order when the financial instrument trades at or below the stop price.
    # * `Bid` - Price is the calculated bid price of a dual-priced fund (offer-bid prices), that is, the selling price of the units for the investor.
    # * `Offer` - Price is the calculated offer price of a dual-priced investment fund (offer-bid prices), that is, the buying price of the units for an investor.
    # * `Netassetvalue` - Price is the net asset value per unit that is used either as a transacting price for a single-priced investment fund class, or as a notional price for the calculation of other prices.
    # * `Creation` - Price is the calculated creation price of a dual-priced investment fund (creation-cancellation prices) and the highest possible buying price of the units before the initial charge. The actual buying or offer price, which includes charges, will be higher.
    # * `Cancellation` - Price is the calculated cancellation price of a dual-priced investment fund (creation-cancellation price), and the lowest possible valuation of the units on any one-day. The actual selling or bid price is usually higher.
    # * `Interim` - Price is the non-official interim price given to an investor before the executed price.
    # * `Swing` - Price is the calculated net asset value price of a single-priced investment fund. The price is adjusted to take into account the dealing costs due to individual large deals, or due to a significant imbalance in volumes of subscriptions vs redemptions, as an alternative to dilution levy.
    # * `Other` - Price is another type of price, which is not explicitly defined.
    # * `Mid` - Price is the average price between the bid and offer prices.
    # * `Reinvestment` - Price is the price used when reinvesting units after distribution.
    # * `Switch` - Price is the price used when transferring units between products.
    # * `Dailydividendrate` - Price is the net income of a financial instrument, calculated on each dealing day, and divided by all the units outstanding on that day.
    # * `Market` - Price is the current market price.
    # * `Indicative` - Price is the estimated indicative price.
    # * `Actual` - True offer price.
    # * `Nonadjustedunpublished` - The original NAV before the price of the investment fund was swung.
    # * `Guaranteed` - Price is a guaranteed price.
    # * `Estimatednav` - Price is an estimated net asset value per unit.
    # * `Grossassetvalue` - Price is the gross asset value per unit and includes the performance fee per share. It is used as the transacting price for a fund with equalisation. GAVL price minus the NAVL price = performance fee.
    # * `Estimatedgav` - Price is the estimated gross asset value per unit and includes the performance fee per share. It is used as the transacting price for a fund with equalisation. GAVL price minus the NAVL price = performance fee.
    # * `Sidepocketnav` - Price is the estimated net asset value for the side pocket.
    # * `Ask` - Offer. Price for which seller is willing to sell item.
    # * `Auction` - Price selected as a crossing of an auction.
    # * `Calculated` - Price is calculated.
    # * `Clean` - Paid without accumulated interest.
    # * `Dirty` - Paid with accumulated interest.
    # * `Draw` - Price selected as a result of a lottery/tiebreaker.
    # * `Fairvalue` - Estimate of the potential market price.
    # * `Indicativepaid` - Reduced and partial execution based on high bids and ask orders.
    # * `Kassa` - Official declared price.
    # * `Paid` - Price at which the trade was done.
    # * `Redemptionnav` - Net Asset Value (NAV) applicable to redemptions.
    # * `Settlement` - Price used for the settlement of futures and options.
    # * `Spread` - The difference between bid and ask.
    # * `Subscriptionnav` - Net Asset Value (NAV) applicable to subscriptions.
    # * `Tax` - Price for tax declaration purpose.
    # * `Taxableincomepersharecalculated` - Specifies whether the fund calculates a taxable interest per share (TIS).
    pricetypevalues PriceType?;
    # Exchange rate specified in a quote. (ISO20022)
    common:rate QuotedRate?;
    # >
    # * `Accepted` - Indicates that the quote is accepted for further negotiation.
    # * `Cancelsymbol` - Indicates that all quotes are cancelled for a financial instrument's symbol.
    # * `Cancelsecurity` - Indicates that all quotes are cancelled for a specific security.
    # * `Cancelunderlying` - Indicates that all quotes are cancelled for an underlying financial instrument.
    # * `Cancelall` - Indicates that all quotes are cancelled.
    # * `Rejected` - Indicates that the quote is not accepted.
    # * `Removedfrommarket` - Indicates that all quotes are removed from the market.
    # * `Expired` - Indicates that the quote is not valid anymore.
    # * `Query` - Indicates that the quote is being requested.
    # * `Quotenotfound` - Indicates that no quote can be computed or communicated.
    # * `Pending` - Indicates that the quote is being processed.
    # * `Pass` - Indicates that the counterparty is not interested in the transaction.
    # * `Lockedmarketwarning` - Warning due to a situation of locked market.
    # * `Crossmarketwarning` - Warning due to a situation of cross market.
    # * `Canceledduetolockmarket` - Indicates that the quote is canceled due to a situation of locked market.
    # * `Canceledduetocrossmarket` - Indicates that the quote is canceled due to a situation of cross market.
    quotestatusvalue QuoteStatus?;
};

public type TradeInitiationOk record {|
    *http:Ok;
    TradeInitiation body;
|};

# The sub-tasks involved in the execution of the financial transaction
public type TradeInitiation record {
    # If the market trade is not executed against the bank position, but directly in the wholesale market, this refers to the actual wholesale trading record
    string WholesaleTradeReference?;
    # The tracked and returned processing status of the market trade (e.g. pending, partially complete, complete)
    common:status MarketTradeTransactionInstanceProcessingStatus?;
    # Details of the market trade initiation task
    common:task MarketTradeInitiationTaskResult?;
};

# >
# * `Accepted` - Indicates that the quote is accepted for further negotiation.
# * `Cancelsymbol` - Indicates that all quotes are cancelled for a financial instrument's symbol.
# * `Cancelsecurity` - Indicates that all quotes are cancelled for a specific security.
# * `Cancelunderlying` - Indicates that all quotes are cancelled for an underlying financial instrument.
# * `Cancelall` - Indicates that all quotes are cancelled.
# * `Rejected` - Indicates that the quote is not accepted.
# * `Removedfrommarket` - Indicates that all quotes are removed from the market.
# * `Expired` - Indicates that the quote is not valid anymore.
# * `Query` - Indicates that the quote is being requested.
# * `Quotenotfound` - Indicates that no quote can be computed or communicated.
# * `Pending` - Indicates that the quote is being processed.
# * `Pass` - Indicates that the counterparty is not interested in the transaction.
# * `Lockedmarketwarning` - Warning due to a situation of locked market.
# * `Crossmarketwarning` - Warning due to a situation of cross market.
# * `Canceledduetolockmarket` - Indicates that the quote is canceled due to a situation of locked market.
# * `Canceledduetocrossmarket` - Indicates that the quote is canceled due to a situation of cross market.
public type quotestatusvalue "Accepted"|"Cancelsymbol"|"Cancelsecurity"|"Cancelunderlying"|"Cancelall"|"Rejected"|"Removedfrommarket"|"Expired"|"Query"|"Quotenotfound"|"Pending"|"Pass"|"Lockedmarketwarning"|"Crossmarketwarning"|"Canceledduetolockmarket"|"Canceledduetocrossmarket";

# >
# * `Average` - Price is an average execution price.
# * `Averageoverride` - Price is an override of the average price.
# * `Combined` - Price is composed of the combined expenses (used in the UK market).
# * `Grossofall` - Price is a gross execution price. The price is an all inclusive price, ie, including all charges, fees, and taxes.
# * `Limit` - Price is the limit price of a limit order, eg, a customer might put in a limit order to sell financial instruments at 67 or to buy at 60.
# * `Net` - Price is a net price, ie, net only of local broker's commission, local fees and local taxes.
# * `Netdisclosed` - Price is net to the disclosed client.
# * `Netofall` - Price is a net price, ie, net of all charges, fees and taxes.
# * `Netundisclosed` - Price is net to the client undisclosed (used in the UK market).
# * `Notionalgross` - Price is notional gross (used in the UK market).
# * `Parvalue` - Price is equal to the nominal or face value of the instrument.
# * `Roundedaverage` - Price is a rounded average price.
# * `Stop` - Price is a stop price used in an order to buy. The order becomes a market order when the financial instrument trades at or above the stop price after the order is submitted. In an order to sell the order becomes a market order when the financial instrument trades at or below the stop price.
# * `Bid` - Price is the calculated bid price of a dual-priced fund (offer-bid prices), that is, the selling price of the units for the investor.
# * `Offer` - Price is the calculated offer price of a dual-priced investment fund (offer-bid prices), that is, the buying price of the units for an investor.
# * `Netassetvalue` - Price is the net asset value per unit that is used either as a transacting price for a single-priced investment fund class, or as a notional price for the calculation of other prices.
# * `Creation` - Price is the calculated creation price of a dual-priced investment fund (creation-cancellation prices) and the highest possible buying price of the units before the initial charge. The actual buying or offer price, which includes charges, will be higher.
# * `Cancellation` - Price is the calculated cancellation price of a dual-priced investment fund (creation-cancellation price), and the lowest possible valuation of the units on any one-day. The actual selling or bid price is usually higher.
# * `Interim` - Price is the non-official interim price given to an investor before the executed price.
# * `Swing` - Price is the calculated net asset value price of a single-priced investment fund. The price is adjusted to take into account the dealing costs due to individual large deals, or due to a significant imbalance in volumes of subscriptions vs redemptions, as an alternative to dilution levy.
# * `Other` - Price is another type of price, which is not explicitly defined.
# * `Mid` - Price is the average price between the bid and offer prices.
# * `Reinvestment` - Price is the price used when reinvesting units after distribution.
# * `Switch` - Price is the price used when transferring units between products.
# * `Dailydividendrate` - Price is the net income of a financial instrument, calculated on each dealing day, and divided by all the units outstanding on that day.
# * `Market` - Price is the current market price.
# * `Indicative` - Price is the estimated indicative price.
# * `Actual` - True offer price.
# * `Nonadjustedunpublished` - The original NAV before the price of the investment fund was swung.
# * `Guaranteed` - Price is a guaranteed price.
# * `Estimatednav` - Price is an estimated net asset value per unit.
# * `Grossassetvalue` - Price is the gross asset value per unit and includes the performance fee per share. It is used as the transacting price for a fund with equalisation. GAVL price minus the NAVL price = performance fee.
# * `Estimatedgav` - Price is the estimated gross asset value per unit and includes the performance fee per share. It is used as the transacting price for a fund with equalisation. GAVL price minus the NAVL price = performance fee.
# * `Sidepocketnav` - Price is the estimated net asset value for the side pocket.
# * `Ask` - Offer. Price for which seller is willing to sell item.
# * `Auction` - Price selected as a crossing of an auction.
# * `Calculated` - Price is calculated.
# * `Clean` - Paid without accumulated interest.
# * `Dirty` - Paid with accumulated interest.
# * `Draw` - Price selected as a result of a lottery/tiebreaker.
# * `Fairvalue` - Estimate of the potential market price.
# * `Indicativepaid` - Reduced and partial execution based on high bids and ask orders.
# * `Kassa` - Official declared price.
# * `Paid` - Price at which the trade was done.
# * `Redemptionnav` - Net Asset Value (NAV) applicable to redemptions.
# * `Settlement` - Price used for the settlement of futures and options.
# * `Spread` - The difference between bid and ask.
# * `Subscriptionnav` - Net Asset Value (NAV) applicable to subscriptions.
# * `Tax` - Price for tax declaration purpose.
# * `Taxableincomepersharecalculated` - Specifies whether the fund calculates a taxable interest per share (TIS).
public type pricetypevalues "Average"|"Averageoverride"|"Combined"|"Grossofall"|"Limit"|"Net"|"Netdisclosed"|"Netofall"|"Netundisclosed"|"Notionalgross"|"Parvalue"|"Roundedaverage"|"Stop"|"Bid"|"Offer"|"Netassetvalue"|"Creation"|"Cancellation"|"Interim"|"Swing"|"Other"|"Mid"|"Reinvestment"|"Switch"|"Dailydividendrate"|"Market"|"Indicative"|"Actual"|"Nonadjustedunpublished"|"Guaranteed"|"Estimatednav"|"Grossassetvalue"|"Estimatedgav"|"Sidepocketnav"|"Ask"|"Auction"|"Calculated"|"Clean"|"Dirty"|"Draw"|"Fairvalue"|"Indicativepaid"|"Kassa"|"Paid"|"Redemptionnav"|"Settlement"|"Spread"|"Subscriptionnav"|"Tax"|"Taxableincomepersharecalculated";

# Execute a well-bounded financial transaction/task, typically involving largely automated/structured fulfillment processing within Market Order Execution. 
public type MarketTradeTransaction record {
    # Reference to the associated market trade if the order is executed in the market directly GenericIdentification|GenericIdentification (https://www.iso20022.org/standardsrepository/type/GenericIdentification)|Standard|ISO20022 BM ()
    common:identifier MarketOrderTransactionInstanceReference?;
    # The employee/business unit placing the market order ||
    # |
    common:involvedparty CustomerReference?;
    # The employee/business unit placing the market order ||
    # |
    common:involvedparty EmployeeorBusinessUnitReference?;
    # Any customer specific processing preferences or requirements ||
    # |
    common:Instruction CustomerMarketOrderProcessingInstruction?;
    # The details of the market order transaction ||
    # |
    common:marketordertransaction MarketOrderTransaction?;
    # Reference to the associated market trade if the order is executed in the market directly GenericIdentification|GenericIdentification (https://www.iso20022.org/standardsrepository/type/GenericIdentification)|Standard|ISO20022 BM ()
    common:identifier InvestmentAccountArrangementInstanceReference?;
    # Reference to the associated market trade if the order is executed in the market directly GenericIdentification|GenericIdentification (https://www.iso20022.org/standardsrepository/type/GenericIdentification)|Standard|ISO20022 BM ()
    common:identifier CurrentAccountArrangementInstanceReference?;
    # The type of market order (e.g. Day Order. Order on Open/Close, Fill or Kill, Limit Order) ||
    # |
    common:text MarketOrderType?;
    # The security to be traded ||
    # |
    common:Securitytypevalues SecurityType?;
    # The volume of shares to be bought or sold. This can include different amount types - quoted/committed, traded etc.) CurrencyAndAmount|CurrencyAndAmount (https://www.iso20022.org/standardsrepository/type/CurrencyAndAmount)|Standard|ISO20022  ()
    common:amount Amount?;
    # Key dates associated with the transaction (e.g. order capture, trade execution, order completion) ||
    # |
    common:datetimetypevalues DateType?;
    # Value of the specific date type ISODateTime|ISODateTime (https://www.iso20022.org/standardsrepository/type/ISODateTime)|Standard|ISO20022 BM ()
    common:datetime Date?;
    # Reference to the associated market trade if the order is executed in the market directly GenericIdentification|GenericIdentification (https://www.iso20022.org/standardsrepository/type/GenericIdentification)|Standard|ISO20022 BM ()
    common:identifier MarketOrderTradeInitiationInstanceReference?;
};

# The sub-tasks involved in the execution of the financial transaction
public type Quote record {
    # The security to be traded ||
    # |
    common:Securitytypevalues QuoteSecurityType?;
    # The type of market order (e.g. Day Order. Order on Open/Close, Fill or Kill, Limit Order) ||
    # |
    common:text QuoteType?;
    # The buy/sell quote by trade type and volume as appropriate
    quote Quote?;
};

public type MarketTradeTransactionOk record {|
    *http:Ok;
    MarketTradeTransaction body;
|};

# Execute a well-bounded financial transaction/task, typically involving largely automated/structured fulfillment processing within Market Order. 
public type MarketOrderTransaction record {
    # The type of market order request (e.g. Managed Investment, Corporate Finance) ||
    # |
    common:Instructiontypevalues MarketOrderInstructionType?;
    # The employee/business unit placing the market order ||
    # |
    common:involvedparty CustomerReference?;
    # The employee/business unit placing the market order ||
    # |
    common:involvedparty EmployeeorBusinessUnitReference?;
    # Reference to the underlying cash account supporting the transaction GenericIdentification|GenericIdentification (https://www.iso20022.org/standardsrepository/type/GenericIdentification)|Standard|ISO20022 BM ()
    common:identifier InvestmentPortfolioInstanceReference?;
    # Any customer specific processing preferences or requirements ||
    # |
    common:Instruction CustomerMarketOrderProcessingInstruction?;
    # The document reference for the order confirmation notice ||
    # |
    common:documentdirectoryentry DocumentDirectoryEntryInstanceReference?;
    # Reference to the underlying cash account supporting the transaction GenericIdentification|GenericIdentification (https://www.iso20022.org/standardsrepository/type/GenericIdentification)|Standard|ISO20022 BM ()
    common:identifier CorrespondenceInstanceReference?;
    # The details of the market order transaction ||
    # |
    common:marketordertransaction MarketOrderTransaction?;
    # Reference to the underlying cash account supporting the transaction GenericIdentification|GenericIdentification (https://www.iso20022.org/standardsrepository/type/GenericIdentification)|Standard|ISO20022 BM ()
    common:identifier InvestmentAccountArrangementInstanceReference?;
    # Reference to the underlying cash account supporting the transaction GenericIdentification|GenericIdentification (https://www.iso20022.org/standardsrepository/type/GenericIdentification)|Standard|ISO20022 BM ()
    common:identifier CurrentAccountArrangementInstanceReference?;
    # The type of market order (e.g. Day Order. Order on Open/Close, Fill or Kill, Limit Order) ||
    # |
    common:text MarketOrderType?;
    # The security to be traded ||
    # |
    common:Securitytypevalues SecurityType?;
    # The volume of shares to be bought or sold CurrencyAndAmount|CurrencyAndAmount (https://www.iso20022.org/standardsrepository/type/CurrencyAndAmount)|Standard|ISO20022  ()
    common:amount Amount?;
    # Key dates associated with the transaction (e.g. order capture, trade execution, order completion) ||
    # |
    common:datetimetypevalues DateType?;
    # Value of the specific date type ISODateTime|ISODateTime (https://www.iso20022.org/standardsrepository/type/ISODateTime)|Standard|ISO20022 BM ()
    common:datetime Date?;
};

public type MarketOrderTransactionOk record {|
    *http:Ok;
    MarketOrderTransaction body;
|};

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

public type QuotationProcedureOk record {|
    *http:Ok;
    QuotationProcedure body;
|};

# A Classification value that distinguishes between the type of process undertaken within Procedure
public type proceduretypevalues record {
    # A Classification value that distinguishes between the type of process undertaken within Procedure
    string Proceduretypevalues?;
};

public type MarketQuoteSelectionOk record {|
    *http:Ok;
    MarketQuoteSelection body;
|};

# A course of action for doing Market Quote Selection Workstep in the context of executing the Market Quote Selection Workstep
public type MarketQuoteRequest record {
    # The required status/situation and or tasks that need to be completed prior to the initiation of the workstep
    common:condition Preconditions?;
    # Reference to the customer who is involved in Quotation Procedure ||
    # |
    common:involvedparty BusinessUnitorEmployeeReference?;
    # The schedule according to which the service provider will process the Quotation Procedure ||
    # |
    common:schedule Schedule?;
    # The Market Quote Selection Workstep specific Business Service
    common:businessservice BusinessService?;
    # The required status/situation and or tasks that need to be completed prior to the initiation of the workstep
    common:condition Postconditions?;
    # An unique reference to an item or an occurrence of Quotation Procedure ||
    # |
    common:procedure QuotationProcedureReference?;
    # Reference to Market Quote Selection Workstep
    common:workstep MarketQuoteRequestWorkstepReference?;
    # The particular date and time point in the progression of time
    common:text MarketQuoteRequestWorkstepType?;
};

# Complete work tasks following a defined procedure in support of general office activities and product and service delivery within Quote Management. 
public type QuotationProcedure record {
    # A Classification value that distinguishes between Procedures according to the type of business services and/or type of concern defined within Quotation Procedure ||
    # |
    common:featuretypevalues QuotationProcedureParameterType?;
    # A selected optional business service as subject matter of Quotation Procedure ||
    # |
    common:feature QuotationProcedureSelectedOption?;
    # Request to process Quotation Procedure ||
    # |
    common:Instruction QuotationProcedureRequest?;
    # The schedule according to which the service provider will process the Quotation Procedure ||
    # |
    common:schedule QuotationProcedureSchedule?;
    # The status of Quotation Procedure Status |Status  (https://www.iso20022.org/standardsrepository/type/Status)|Standard|ISO20022 BM ()
    common:status QuotationProcedureStatus?;
    # Reference to the customer who is involved in Quotation Procedure ||
    # |
    common:involvedparty QuotationProcedureAssociatedPartyReference?;
    # Reference to the customer who is involved in Quotation Procedure ||
    # |
    common:involvedparty QuotationProcedureBusinessUnitReference?;
    # Reference to the customer who is involved in Quotation Procedure ||
    # |
    common:involvedparty QuotationProcedureServiceProviderReference?;
    # Reference to the Financial Facility related to Quotation Procedure ||
    # |
    common:FinancialFacility QuotationProcedureFinancialFacilityReference?;
    # Reference to the customer who is involved in Quotation Procedure ||
    # |
    common:involvedparty QuotationProcedureEmployeeReference?;
    # Reference to the customer who is involved in Quotation Procedure ||
    # |
    common:involvedparty QuotationProcedureCustomerReference?;
    # A Classification value that distinguishes between the type of process undertaken within Quotation Procedure ||
    # |
    common:proceduretype QuotationProcedureType?;
    # The schedule according to which the service provider will process the Quotation Procedure ||
    # |
    common:schedule QuotationProcedureServiceProviderSchedule?;
    # A Classification value that distinguishes between the type of services in Quotation Procedure ||
    # |
    common:servicetype QuotationProcedureServiceType?;
    # A Classification value that distinguishes between the type of products/services related to Quotation Procedure ||
    # |
    common:Bankingproducttype QuotationProcedureProductandServiceType?;
    # Reference to the product or service that is related to Quotation Procedure Product_x000D_
    # |Product (https://www.iso20022.org/standardsrepository/type/Product)|Standard|ISO20022 BM ()
    common:bankingproduct QuotationProcedureProductandServiceInstance?;
    # A Classification value that distinguishes between the type of transactions in Quotation Procedure ||
    # |
    common:transactiontype QuotationProcedureTransactionType?;
    # Reference to the transaction that is related to Quotation Procedure ObligationFulfilment|ObligationFulfilment (https://www.iso20022.org/standardsrepository/type/ObligationFulfilment)|Standard|ISO20022 BM ()
    'transaction QuotationProcedureTransaction?;
    # Reference to the Financial Transaction Arrangement that is related to Quotation Procedure Obligation|Obligation (https://www.iso20022.org/standardsrepository/type/Obligation)|Standard|ISO20022 BM ()
    common:Arrangement QuotationProcedureFinancialTransactionArrangement?;
    # Reference to the Customer Agreement that is related to Quotation Procedure Agreement_x000D_
    # |Agreement (https://www.iso20022.org/standardsrepository/type/Agreement)|Standard|ISO20022 BM ()
    agreement QuotationProcedureCustomerAgreementReference?;
    # An unique reference to an item or an occurrence of Quotation Procedure ||
    # |
    common:procedure QuotationProcedureReference?;
};

# A Classification value that distinguishes between the type of workstep undertaken within Procedure
public type worksteptypevalues record {
    # A Classification value that distinguishes between the type of workstep undertaken within Procedure
    string Worksteptypevalues?;
};

# A course of action for doing Market Quote Selection Workstep in the context of executing the Market Quote Selection Workstep
public type MarketQuoteSelection record {
    # The required status/situation and or tasks that need to be completed prior to the initiation of the workstep
    common:condition Preconditions?;
    # Reference to the customer who is involved in Quotation Procedure ||
    # |
    common:involvedparty BusinessUnitorEmployeeReference?;
    # The schedule according to which the service provider will process the Quotation Procedure ||
    # |
    common:schedule Schedule?;
    # The Market Quote Selection Workstep specific Business Service
    common:businessservice BusinessService?;
    # The required status/situation and or tasks that need to be completed prior to the initiation of the workstep
    common:condition Postconditions?;
    # An unique reference to an item or an occurrence of Quotation Procedure ||
    # |
    common:procedure QuotationProcedureReference?;
    # Reference to Market Quote Selection Workstep
    common:workstep MarketQuoteSelectionWorkstepReference?;
    # The particular date and time point in the progression of time
    common:text MarketQuoteSelectionWorkstepType?;
};

# ||
# |
public type repurchaseagreement record {
    # >
    # * `SpecificCollateral` - Repurchase agreement where a single, pre-defined, financial instrument is sold and repurchased. (IS020022)
    # * `GeneralCollateral` - Repurchase agreement where the agreement allows for the sale and repurchase of any of a selection of assets from a pool of eligible assets. (ISO20022)
    repurchaseagreementtypevalues RepurchaseAgreementType?;
};

# An unique reference to an item or an occurrence of Repo Transaction ||
# |
public type repotransaction record {
    # A Transaction that is the result of fulfillment of Repo Arrangement
    string RepoTransaction?;
};

public type RepoTransactionOk record {|
    *http:Ok;
    RepoTransaction body;
|};

# A Classification value that specifies type of transaction for this  Repo Transaction ||
# |
public type repurchasetypevalues "Swap"|"Repurchasecall"|"Pairoff"|"Reporate"|"Rollover"|"Topup"|"Withdrawal"|"Principalexposureadjustment";

# The Repo Transaction Security Transfer Task is a discrete action or task that is required in the execution of the Repo Transaction Security Transfer Task
public type RepoTransactionInitiation record {
    # The required status/situation prior to the execution of the task
    common:condition Preconditions?;
    # The timing and key actions/milestones involved in completing the transaction task
    common:schedule Schedule?;
    # The Repo Transaction Security Transfer Task specific Business Service
    common:businessservice BusinessService?;
    # The required status/situation prior to the execution of the task
    common:condition Postconditions?;
    # Reference to Repo Transaction Security Transfer Task
    'transaction RepoTransactionReference?;
    # Reference to Repo Transaction Security Transfer Task
    common:task RepoTransactionInitiationTaskReference?;
    # The particular date and time point in the progression of time
    common:text RepoTransactionInitiationTaskType?;
};

# The Repo Transaction Security Transfer Task is a discrete action or task that is required in the execution of the Repo Transaction Security Transfer Task
public type RepoTransactionSecurityTransfer record {
    # The required status/situation prior to the execution of the task
    common:condition Preconditions?;
    # The timing and key actions/milestones involved in completing the transaction task
    common:schedule Schedule?;
    # The Repo Transaction Security Transfer Task specific Business Service
    common:businessservice BusinessService?;
    # The required status/situation prior to the execution of the task
    common:condition Postconditions?;
    # Reference to Repo Transaction Security Transfer Task
    'transaction RepoTransactionReference?;
    # Reference to Repo Transaction Security Transfer Task
    common:task RepoTransactionSecurityTransferTaskReference?;
    # The particular date and time point in the progression of time
    common:text RepoTransactionSecurityTransferTaskType?;
};

public type RepoTransactionInitiationOk record {|
    *http:Ok;
    RepoTransactionInitiation body;
|};

# Execute a well-bounded financial transaction/task, typically involving largely automated/structured fulfillment processing within Stock Lending and Repos. 
public type RepoTransaction record {
    # A Classification value that distinguishes between business service transaction within Repo Transaction ||
    # |
    common:featuretypevalues RepoTransactionParameterType?;
    # A selected optional business service as subject matter of Repo Transaction ||
    # |
    'service RepoTransactionSelectedOption?;
    # The status of Repo Transaction ||
    # |
    common:Transactionstatus RepoTransactionStatus?;
    # A Classification value that specifies type of transaction for this  Repo Transaction ||
    # |
    repurchasetypevalues RepoTransactionType?;
    # An unique reference to an item or an occurrence of Repo Transaction ||
    # |
    repotransaction RepoTransactionReference?;
    # ||
    # |
    repurchaseagreement RepurchaseAgreementReference?;
    # ||
    # |
    common:involvedparty RepurchaseAgreementInvolvedPartyReference?;
    # ||
    # |
    repurchaseagreementinvolvementtypevalues RepurchaseAgreementInvolvementType?;
    # ||
    # |
    repoarrangement RepurchaseArrangementReference?;
};

# The Repo Transaction Security Transfer Task is a discrete action or task that is required in the execution of the Repo Transaction Security Transfer Task
public type RepoTransactionCashTransfer record {
    # The required status/situation prior to the execution of the task
    common:condition Preconditions?;
    # The timing and key actions/milestones involved in completing the transaction task
    common:schedule Schedule?;
    # The Repo Transaction Security Transfer Task specific Business Service
    common:businessservice BusinessService?;
    # The required status/situation prior to the execution of the task
    common:condition Postconditions?;
    # Reference to Repo Transaction Security Transfer Task
    'transaction RepoTransactionReference?;
    # Reference to Repo Transaction Security Transfer Task
    common:task RepoTransactionCashTransferTaskReference?;
    # The particular date and time point in the progression of time
    common:text RepoTransactionCashTransferTaskType?;
};

public type RepoTransactionCashTransferOk record {|
    *http:Ok;
    RepoTransactionCashTransfer body;
|};

# ||
# |
public type repoarrangement record {
    # The actual interest rate used for the payment of the interest for the specified interest period. (ISO20022)
    common:rate RepurchaseRate?;
    # The date and time when the repo arrangement terminates.
    common:datetime TerminationDateTime?;
    # Total fee charged 
    common:amount RepurchaseAmount?;
    # A Classification value that specifies type of transaction for this  Repo Transaction ||
    # |
    repurchasetypevalues RepurchaseType?;
};

public type RepoTransactionSecurityTransferOk record {|
    *http:Ok;
    RepoTransactionSecurityTransfer body;
|};

# >
# * `SpecificCollateral` - Repurchase agreement where a single, pre-defined, financial instrument is sold and repurchased. (IS020022)
# * `GeneralCollateral` - Repurchase agreement where the agreement allows for the sale and repurchase of any of a selection of assets from a pool of eligible assets. (ISO20022)
public type repurchaseagreementtypevalues "SpecificCollateral"|"GeneralCollateral";

# ||
# |
public type repurchaseagreementinvolvementtypevalues "Investor/Lender"|"Borrower"|"Dealer"|"Tri-PartyAgent";

public type SuitabilityAssessmentOk record {|
    *http:Ok;
    SuitabilityAssessment body;
|};

# To test or assess an entity, possibly against some formal qualification or certification requirement within Suitability Checking. 
public type SuitabilityAssessment record {
    # Reference to the customer related to the proposed transaction ||
    # |
    common:involvedparty EmployeeorBusinessUnitReference?;
    # Reference to the customer related to the proposed transaction ||
    # |
    common:involvedparty CustomerReference?;
    # The type of market order (e.g. Day Order. Order on Open/Close, Fill or Kill, Limit Order) ||
    # |
    common:text MarketOrderType?;
    # Reference to any correspondence generated by the suitability check GenericIdentification|GenericIdentification (https://www.iso20022.org/standardsrepository/type/GenericIdentification)|Standard|ISO20022 BM ()
    common:identifier InvestmentPortfolioInstanceReference?;
    # Any customer specific processing preferences or requirements ||
    # |
    common:Instruction CustomerMarketOrderProcessingInstruction?;
    # The details of the market order transaction that is to undergo suitability checks ObligationFulfilment|ObligationFulfilment (https://www.iso20022.org/standardsrepository/type/ObligationFulfilment)|Standard|ISO20022 BM ()
    'transaction ProposedMarketOrderTransaction?;
    # Reference to any correspondence generated by the suitability check GenericIdentification|GenericIdentification (https://www.iso20022.org/standardsrepository/type/GenericIdentification)|Standard|ISO20022 BM ()
    common:identifier InvestmentAccountArrangementInstanceReference?;
    # The security to be traded ||
    # |
    common:Securitytypevalues SecurityType?;
    # The volume of shares to be bought or sold CurrencyAndAmount|CurrencyAndAmount (https://www.iso20022.org/standardsrepository/type/CurrencyAndAmount)|Standard|ISO20022  ()
    common:amount Amount?;
    # Key dates associated with the proposed transaction (e.g. opportunity identification, proposal/pitch, suitability evaluation initiated) ||
    # |
    common:datetimetypevalues DateType?;
    # Value of the specific date type ISODateTime|ISODateTime (https://www.iso20022.org/standardsrepository/type/ISODateTime)|Standard|ISO20022 BM ()
    common:datetime Date?;
    # The type and make-up of suitability compliance tests referenced in the assessment ||
    # |
    common:Assessmenttypevalues SuitabilityAssessmentType?;
    # The document reference for any documents accessed and generated (e.g. disclosures) ||
    # |
    common:documentdirectoryentry DocumentDirectoryEntryInstanceReference?;
    # Reference to any correspondence generated by the suitability check GenericIdentification|GenericIdentification (https://www.iso20022.org/standardsrepository/type/GenericIdentification)|Standard|ISO20022 BM ()
    common:identifier CorrespondenceInstanceReference?;
    # Work documentation, forms and schedules produced and referenced during the assessment ||
    # |
    common:workproduct SuitabilityComplianceAssessmentWorkProducts?;
    # Outcome/result of the suitability assessment, can include reported details if appropriate Assessment|Assessment (https://www.iso20022.org/standardsrepository/type/Assessment)|Standard|ISO20022 BM ()
    common:Assessment SuitabilityComplianceAssessmentResult?;
};

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
