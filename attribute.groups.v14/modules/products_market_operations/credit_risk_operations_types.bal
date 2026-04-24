import financial.bian.attribute.groups.common as common;

import ballerina/http;

// ...existing code...

// ...existing code...

public type TradingCreditPositionMeasurementOk record {|
    *http:Ok;
    TradingCreditPositionMeasurement body;
|};

public type TradingCreditPositionMeasurement record {
    # Reference to Tresholds and Limits for monitoring Trading Credit Position Measurement Limit|Limit (https://www.iso20022.org/standardsrepository/type/Limit)|Standard|ISO20022 (https://www.iso20022.org/)

    string status_code?;
    # * `PackageCode` - 
    # * `Buyersitemnumber` - Product identifier assigned by the buyer.
    # * `Commercialdescriptioncodename` - A code to identify a product based on applicable commercial conditions.
    # * `EAN` - The unique EAN (European Article Number) code.
    # * `Harmonizedtariffcodename` - Classification of goods as developed by the Customs Cooperation council.
    # * `Manufacturersitemnumber` - Product identifier as assigned by the manufacturer.
    # * `Modelnumber` - Reference number assigned by the manufacturer to differentiate variations in similar products in a class or group.
    # * `Partnumber` - Reference assigned by the manufacturer to a product part.
    # * `Quotacategory` - Product identifier used by the retail industry.
    # * `Stylenumber` - Identification of the style of a product.
    # * `Suppliersitemnumber` - Number assigned to an article by the supplier of that article.
    # * `Universalproductcode` - Number assigned to a manufacturer's product by the Product Code Council.
    common:productidentificationtypevalues ProductIdentificationType?;
};

public type TradingCounterpartyCreditLimitIndicatorOk record {|
    *http:Ok;
    TradingCounterpartyCreditLimitIndicator body;
|};

# Current status of the limit.
public type limitstatus record {
    # The status of Trading Credit Position Measurement Status |Status  (https://www.iso20022.org/standardsrepository/type/Status)|Standard|ISO20022 BM ()
    common:status LimitStatus?;
    # >
    # * `Enabled` - Limit is currently in effect.
    # * `Disabled` - Limit is not currently in effect.
    # * `Deleted` - Limit has been deleted or suspended.
    # * `Requested` - Limit has been asked for and is not yet enabled.
    limitstatustypevalues LimitStatusType?;
};

# >
# * `Enabled` - Limit is currently in effect.
# * `Disabled` - Limit is not currently in effect.
# * `Deleted` - Limit has been deleted or suspended.
# * `Requested` - Limit has been asked for and is not yet enabled.
public type limitstatustypevalues "Enabled"|"Disabled"|"Deleted"|"Requested";

# The Trading Counterparty Credit Limit Indicator is one integral indicator that can be included in Trading Counterparty Credit Limit Indicator monitoring 
public type TradingCounterpartyCreditLimitIndicator record {
    # Reference to Trading Counterparty Credit Limit Indicator
    string TradingCreditPositionMeasurementReference?;
    # Reference to Trading Counterparty Credit Limit Indicator
    string TradingCounterpartyCreditLimitIndicatorReference?;
    # The configuration of Trading Credit Position Measurement ||
    # |
    common:text TradingCounterpartyCreditLimitIndicatorType?;
    # A selected optional business service as subject matter of Trading Credit Position Measurement ||
    # |
    common:businessservice BusinessService?;
    # Reference to the customer who is involved in Trading Credit Position Measurement ||
    # |
    common:involvedparty BusinessUnitEmployeeReference?;
    # The completion status once Trading Counterparty Credit Limit Indicator has been monitored by applying the Trading Counterparty Credit Limit Indicator indicator
    common:condition Postconditions?;
    # The completion status once Trading Counterparty Credit Limit Indicator has been monitored by applying the Trading Counterparty Credit Limit Indicator indicator
    common:condition Preconditions?;
    # Timetable to monitor Trading Credit Position Measurement ||
    # |
    common:schedule Schedule?;
};

# >
# * `Multilateral` - Limit is a maximum amount value applied to, or by, a participant to a set of counterparties. The multilateral limit is taken into account by the transaction administrator to contain the risk in the system. With the help of the multilateral limit, the direct participant restricts the use of liquidity when clearing payments with all other direct participants for which no bilateral limit is set.
# * `Bilateral` - Limit is applied by one party to a specific counterparty, and corresponds to the maximum amount of traffic party setting the limit can send to that counterparty. The limit can be expressed as a debit or a credit limit. With the help of a bilateral limit, the direct participant restricts the use of liquidity when clearing payments with another direct participant.
# * `Netbilateral` - Limit is applied by one party to a specific counterparty, and corresponds to the maximum net balance acceptable by the party that is setting the limit. The limit is calculated as an arithmetic sum in value of the bilateral flows exchanged between the two parties. The net bilateral limit can be expressed as a debit or a credit balance.
# * `Indirectbilateral` - Limit is a maximum value set by a direct participant with respect to its indirect participant. The limit represents the maximum amount the indirect participant can use to settle its operations.
# * `Global` - Maximum value set by either the transaction administrator or by a member for the participation of a member in the system. The global limit may be expressed as a credit or debit maximum value and is taken into account by the transaction administrator when processing transaction inside the system. With the help of the global limit, the direct participant may limit the use of liquidity when clearing specific type of payments.
# * `Mandatorybilateral` - Mandatory part of the bilateral limit applied by one party to a specific counterparty, and corresponds to the maximum amount of traffic party setting the limit can send to that counterparty. The limit can be expressed as a debit or a credit limit. With the help of a bilateral limit, the direct participant restricts the use of liquidity when clearing payments with another direct participant.
# * `Discretionarybilateral` - Discretionary part of the bilateral limit applied by one party to a specific counterparty, and corresponds to the maximum amount of traffic party setting the limit can send to that counterparty. The limit can be expressed as a debit or a credit limit. With the help of a bilateral limit, the direct participant restricts the use of liquidity when clearing payments with another direct participant.
# * `Directdebit` - Limit not to be exceeded for direct debit operations.
# * `Singlecustomerdirectdebit` - Single direct debit payment limit not to be exceeded by any single direct debit transaction by a customer.
# * `Singlefinancialinstitutiondirectdebit` - Single direct debit payment limit not to be exceeded by any single direct debit transaction initiated by a financial institution.
# * `Totaldailycustomerdirectdebit` - Total daily payments limit for customer direct debits not to be exceeded by the total of all direct debit transactions initiated by customers.
# * `Totaldailyfinancialinstitutiondirectdebit` - Total daily payments limit for financial institutions direct debits not to be exceeded by the total of all direct debit transactions initiated by financial institutions.
# * `Autocollateralisation` - Limit is related to a credit operation that is or can be triggered when a buyer does not have a sufficient amount of money to settle a securities transaction in order to improve its cash position for the next settlement cycle. The credit provided can be secured using securities already held by the buyer (“collateral stocks”) or the securities that are being purchased (“collateral flows”).
# * `Unsecuredcredit` - Limit is related to a cap amount granted by a national central bank or a settlement bank, but generally unsecured outside of the market infrastructure.
# * `Externalguarantee` - Limit is related to a cap amount granted by a national central bank or a settlement bank.
public type limittypevalues "Multilateral"|"Bilateral"|"Netbilateral"|"Indirectbilateral"|"Global"|"Mandatorybilateral"|"Discretionarybilateral"|"Directdebit"|"Singlecustomerdirectdebit"|"Singlefinancialinstitutiondirectdebit"|"Totaldailycustomerdirectdebit"|"Totaldailyfinancialinstitutiondirectdebit"|"Autocollateralisation"|"Unsecuredcredit"|"Externalguarantee";

# >
# * `Annual` - Event takes place every year or once a year.
# * `Monthly` - Event takes place every month or once a month.
# * `Quarterly` - Event takes place every three months or four times a year.
# * `Semiannual` - Event takes place every six months or two times a year.
# * `Weekly` - Event takes place once a week.
# * `Daily` - Event takes place every day.
# * `Adhoc` - Event takes place on request or as necessary.
# * `Intraday` - Event takes place several times a day.
# * `Overnight` - Event takes place overnight.
# * `Tendays` - Event takes place every ten business days.
# * `Fortnightly` - Event takes place every two weeks.
# * `Triggeredbymovement` - Event takes place at the end of the day if there was a movement on the account, otherwise nothing is sent that day.
# * `Never` - Event does never take place.
# * `Rate` - Event takes place based on a change of a rate.
# * `Oncreditevent` - Event occurs due to a credit event occurring for an issuer.
# * `Upfront` - Event that takes place at the initiation of a trade or agreement.
# * `Onexpiry` - Event occurs on expiry of a financial contract.
# * `Hourly` - Event takes place every hours.
public type frequencytypevalues "Annual"|"Monthly"|"Quarterly"|"Semiannual"|"Weekly"|"Daily"|"Adhoc"|"Intraday"|"Overnight"|"Tendays"|"Fortnightly"|"Triggeredbymovement"|"Never"|"Rate"|"Oncreditevent"|"Upfront"|"Onexpiry"|"Hourly";
