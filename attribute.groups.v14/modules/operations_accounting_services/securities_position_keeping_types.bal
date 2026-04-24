import financial.bian.attribute.groups.common as common;

import ballerina/http;

# A collection of the events/transactions recorded by the log
#
# Examples: Customer life event, Servicing event
public type SecuritiesTransactionCapture record {
    # The type of securities transaction (e.g. bought amount, sold amount, dividend payment)
    string SecuritiesPostingType?;
    # The logged securities transaction. Note the log can handle a range of transactions covering bought and sold amounts and securities instrument related transactions such as dividend payments
    common:Transaction SecuritiesPostingTransaction?;
    # The date when the identifier became valid.
    common:Datetime SecuritiesPostingValueDate?;
};

# Maintain a log of transactions or activity, typically a financial account/journal or a log of activity to support behavioral analysis within Securities Position Keeping. 
public type SecuritiesPositionLog record {
    # The type of securities transaction log (e.g. equities, derivatives, all)
    string SecuritiesTransactionLogType?;
    # The product/service investment account for which this is the securities transaction log
    common:ProductAgreement ProductInstanceReference?;
    # Reference to an entity that assigns and manages the identification.
    # tReference to the organization or agency that issued the identifier (e.g., DMV, Passport Office).
    common:Involvedparty CustomerReference?;
    # Reference to a counterparty for the log if appropriate (e.g. merchant reference, corporate reference)
    string CounterpartyReference?;
    # Details the range of instruments that are tracked by the log (each instrument has its own transaction record/holding position
    string SecuritiesPositionLogInstrumentProfile?;
    # Details for an individual tracked instrument type - (the log track transactions for multiple securities/instruments)
    string SecuritiesPositionLogInstrumentRecord?;
    # Reference to the type of investment instrument being tracked (e.g. equity, commodity, FX/MM, derivative)
    string SecuritiesInstrumentType?;
    # The specific instrument trading identifier (e.g. NASDAQ Id)
    string SecuritiesInstrumentReference?;
    # Basic position limits that are maintained as an aspect of the log (these can include securities holdings and related instrument properties such as associated dividends entitlements)
    string SecuritiesPositionLimits?;
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
    common:Limittypevalues SecuritiesPositionLimitType?;
    # The position definition, associated limit settings and rules
    string SecuritiesPositionLimitSettings?;
    # The current calculated position
    common:Amount SecuritiesPositionLimitValue?;
    # Support for recording blocks on the log position (handling is by the associated investment account fulfillment service domain)
    string SecuritiesAmountBlock?;
    # The type of block applied to the tracked securities position (e.g. pending, final)
    string SecuritiesAmountBlockType?;
    # Priority classification for the block
    string Priority?;
    # The current calculated position
    common:Amount Amount?;
    # >
    # * `MaturityDate` - 
    # * `InitiatedDate` - 
    # * `RequestedDate` - 
    # * `ExecutedDate` - 
    # * `OpenDate` - 
    # * `CloseDate` - 
    # * `ExpiryDate` - 
    # * `EffectiveDate` - 
    # * `CreatingDate` - 
    # * `ActivationDate` - 
    # * `DeactivationDate` - 
    # * `BlockingDate` - 
    # * `SendingDate` - 
    # * `ValidFromDate` - 
    # * `ValidToDate` - 
    # * `ReceivingDate` - 
    # * `SigningDate` - 
    # * `DueDate` - 
    # * `ValueDate` - 
    # * `FulfillmentDate` - 
    # * `EntryDate` - 
    common:Datetimetypevalues DateType?;
    # The date when the identifier became valid.
    common:Datetime Date?;
    # The date when the identifier became valid.
    common:Datetime InitiationDate?;
    # Status
    common:Status Status?;
};

public type SecuritiesPositionLogOk record {|
    *http:Ok;
    SecuritiesPositionLog body;
|};
