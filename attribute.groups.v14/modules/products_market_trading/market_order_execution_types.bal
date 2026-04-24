import financial.bian.attribute.groups.common as common;

import ballerina/http;

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
