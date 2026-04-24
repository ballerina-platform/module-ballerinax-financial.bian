import financial.bian.attribute.groups.common as common;

import ballerina/http;

public type FinancialBookingLogOk record {|
    *http:Ok;
    FinancialBookingLog body;
|};

# Maintain a log of transactions or activity, typically a financial account/journal or a log of activity to support behavioral analysis within Financial Accounting. 
public type FinancialBookingLog record {
    # >
    # * `DebitAccount` - 
    # * `CreditAccount` - 
    # * `VostroAcount` - In correspondent banking, an account held by one bank on behalf of another bank (the customer bank); the customer bank regards this account as its nostro account. (ECB)
    # * `NostroAccount` - In correspondent banking, an account held by a customer bank on the books of another bank acting as a service provider. The other bank regards this account as a loro account. (ECB)
    # * `PaymentAccount` - 
    # * `SettlementAccount` - A specific purpose account used to post debit and credit entries as a result of the transaction. (ISO20022)
    #
    # Account which is used for settlement. (ISO20022)
    # * `SavingAccount` - 
    # * `CurrentAccount` - 
    # * `CashAccount` - 
    # * `LoanAccount` - 
    # * `IndividualAccount` - 
    # * `JointAccount` - 
    # * `LiquidationAccount` - 
    # * `ProvisionAccount` - 
    # * `PartnershipAccount` - 
    # * `InvestmentAccount` - 
    common:Accounttypevalues FinancialAccountType?;
    # Reference to the associated product or service for which this is the underlying accounting
    common:Product ProductandServiceReference?;
    # Reference to the owning business unit and associated business activity
    common:BusinessUnit BusinessUnitReference?;
    # Reference to applicable account booking rules
    common:RuleSet ChartofAccountBookingRules?;
    # BaseCurrency
    common:Currencycode BaseCurrency?;
    # Status
    common:Status Status?;
};

# A collection of the events/transactions recorded by the log
#
# Examples: Customer life event, Servicing event
public type LedgerPosting record {
    # Defines the posting location in the account ledger according to the chart of accounts (e.g. based on customer, transaction type)
    string PostingDirection?;
    # The posting amount as a credit-debit pair
    common:Amount PostingAmount\(creditdebitpair\)?;
    # The date and time of the posting
    common:Datetime PostingValueDate?;
    # Any confirmation notification
    string PostingResult?;
};
