import financial.bian.attribute.groups.common as common;

import ballerina/http;

# A collection of the events/transactions recorded by the log
public type FinancialTransactionCapture record {
    # The description of purpose of the financial transaction
    string PostingDescription?;
    # The logged financial transaction
    common:Transaction PostingTransaction?;
    # The date of the transaction
    common:Date PostingValueDate?;
};

# Interest transaction type values
public type Interesttransactiontypevalues "InterestAllocationTransaction"|"InterestPaymentTransaction"|"InterestAdjustmentTransaction";

# The record of applied interest if interest calculations are supported
public type InterestArrangement record {
    # An arranged InterestRate
    common:Rate InterestRate?;
    # InterestDefinition
    string InterestDefinition?;
    # Period of time during which the status is valid.
    common:Datetimeperiod InterestPeriod?;
    # An arranged InterestRatePlan
    common:Rateplan InterestRatePlan?;
    # An interest schedule is an arranged/planned set of dates at which interest will be claimed.
    common:Schedule InterestSchedule?;
    # The date of the transaction
    common:Date LoanOriginationDate?;
    # The date of the transaction
    common:Date LoanMaturityDate?;
    # The date of the transaction
    common:Date LoanEndDate?;
    # LoanAmount
    common:Amount LoanAmount?;
    # ArrangementAction
    common:Action ArrangementAction?;
    # The date when the identifier became valid.
    common:Datetime ArrangementStartDate?;
    # The date when the identifier became valid.
    common:Datetime ArrangementEndDate?;
    # A characteristic of arrangement which refers to the LifecycleStatus of arrangement (e.g., requested, proposed, offered, accepted, cancelled, terminated, fulfilled, etc.)
    common:Arrangementstatus ArrangementStatus?;
    # ArrangementSubjectMatter
    common:Subject ArrangementSubjectMatter?;
    # An identifier that allows to uniquely refer to an instance of a transaction.
    common:Identifier ArrangementIdentification?;
    # An identifier that allows to uniquely refer to an instance of a transaction.
    common:Identifier PaymentCardArrangementIdentifier?;
    # SavingsAccountArrangementProductFeatureType
    common:Productfeaturetype SavingsAccountArrangementProductFeatureType?;
    # CurrentAccountArrangementProductFeatureType
    common:Productfeaturetype CurrentAccountArrangementProductFeatureType?;
    # ProductArrangementProductFeatureType
    common:Productfeaturetype ProductArrangementProductFeatureType?;
    # TermDepositArrangementProductFeatureType
    common:Productfeaturetype TermDepositArrangementProductFeatureType?;
    # The date when the identifier became valid.
    common:Datetime TermDepositMaturityDate?;
    # The date when the identifier became valid.
    common:Datetime TermDepositOpenDate?;
    # TermDepositAmount
    common:Amount TermDepositAmount?;
    # TermDepositDuration
    common:Duration TermDepositDuration?;
    # The Period for which the TermDepositAmount needs ti stay deposited with the Bank
    string DepositTerm?;
    # VirtualAccountArrangementType
    string VirtualAccountArrangementType?;
    # The date when the identifier became valid.
    common:Datetime CreditFacilityDataTime?;
    # An identifier that allows to uniquely refer to an instance of a transaction.
    common:Identifier CreditFacilityNumber?;
    # CreditFacilityAmount
    common:Amount CreditFacilityAmount?;
};

# Position Keeping response type
public type FinancialPositionLogOk record {|
    *http:Ok;
    # body
    FinancialPositionLog body;
|};

# Maintain a log of transactions or activity, typically a financial account/journal or a log of activity to support behavioral analysis within Position Keeping.
public type FinancialPositionLog record {
    # The product/service for which this is a financial transaction log
    common:ProductAgreement ProductInstanceReference?;
    # Reference to an entity that assigns and manages the identification.
    common:Involvedparty CustomerReference?;
    # Reference to an entity that assigns and manages the identification.
    common:Involvedparty CounterpartyReference?;
    # The currency for the logged  transactions
    common:Currencycode BaseCurrency?;
    # The record of applied interest if interest calculations are supported
    InterestArrangement InterestApplicationRecord?;
    # A record of applied interest
    InterestTransaction InterestTransaction?;
    # General description of the interest transaction
    string TransactionDescription?;
    # TransactionInterestCharge
    common:Amount TransactionInterestCharge?;
    # Basic position limits that are maintained as an aspect of the log
    common:LimitArrangement ManagedPositionLimits?;
    # Basic position limits that are maintained as an aspect of the log
    common:LimitArrangement PositionLimitSettings?;
    # The current calculated position
    string PositionLimitValue?;
    # AmountBlock
    common:Amount AmountBlock?;
    # Amount
    common:Amount Amount?;
    # Value of the specific date type
    common:Datetime Date?;
    # The date of the transaction
    common:Date InitiationDate?;
    # Status
    common:Status Status?;
};

# A record of applied interest
public type InterestTransaction record {
    # InterestTransactionAmount
    common:Amount InterestTransactionAmount?;
    # Description of InterestTransaction
    string InterestTransactionDescription?;
    # An arranged InterestRate
    common:Rate AppliedInterestRate?;
    # An identifier that allows to uniquely refer to an instance of a transaction.
    common:Identifier TransactionIdentification?;
    # The Date that the transaction has occurred or is planned to occur.
    common:Transactiondatetime TransactionDate?;
    # A detailed explanation or commentary of transaction.
    string TransactionDescription?;
    # A characteristic of transaction which refers to the LifecycleStatus of transaction (e.g., initiated, executed, confirmed, cancelled, etc.) 
    common:Transactionstatus TransactionStatus?;
    # The name of transaction.
    common:Name TransactionName?;
};
