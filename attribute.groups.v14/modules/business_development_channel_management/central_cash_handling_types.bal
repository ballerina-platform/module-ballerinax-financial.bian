import financial.bian.attribute.groups.common as common;

import ballerina/http;

# Set of rules for the purpose of deciding if or if not something is applicable
#
# Examples: Staff assignment, Facility allocation.
public type TrackingandAllocation record {
    # The required status/situation before the allocation can be made
    common:Condition Preconditions?;
    # The schedule and timing of allocation decisions
    common:Schedule AllocationSchedule?;
    # The Projection and Allocation specific  Business Service
    common:BusinessService BusinessService?;
};

public type ProjectionandAllocationOk record {|
    *http:Ok;
    # body
    ProjectionandAllocation body;
|};

public type TrackingandAllocationOk record {|
    *http:Ok;
    # body
    TrackingandAllocation body;
|};

# Maintain an inventory or holding of some resource and make assignments/allocations as requested  within Central Cash Handling. 
# Example: Track the inventory and administer the distribution of central cash holdings throughout the branch & ATM network.
public type CentralCashAllocation record {
    # >
    # * `FeeFeature` - This refers to the functionality in a system or platform that manages, calculates, or displays fees associated with specific transactions or services.
    # * `InterestFeature` - This feature calculates and tracks interest earnings or charges on accounts, loans, or investments over time.
    # * `WithdrawalFeature` - The withdraw feature typically refers to an option or functionality that allows users to retrieve or remove something from a system or platform.
    # * `DepositFeature` - This refers to a functionality that allows users to add funds to an account or system, often by transferring money from another source.
    # * `SweepFeature` - 
    # * `LienFeature` - 
    # * `PaymentFeature` - This refers to the functionality that facilitates or tracks the transfer of funds for a purchase or settlement of dues.
    # * `RepaymentFeature` - This feature facilitates or manages the process of paying back borrowed funds, such as loans, credit card balances, or advances.
    # * `LimitFeature` - This feature sets, monitors, or enforces restrictions on the maximum amount that can be accessed, spent, or transacted within a system.
    # * `OverdraftFeature` - This functionality allows users to withdraw more money than what is available in their account balance, often up to a predefined limit.
    # * `StatementFeature` - The statement feature refers to a functionality in banking, finance, or digital platforms that provides users with a detailed record of their transactions or activities over a specific period.
    # * `CurrencyExchangeFeature` - This feature enables users to convert funds from one currency to another at prevailing exchange rates, often within financial or payment platforms.
    # * `PriceFeature` - This feature involves displaying or managing the price of goods, services, or financial instruments within a platform.
    common:Featuretypevalues CentralCashAllocationParameterType?;
    # A characteristic of service which refers 1) mainly to the function or condition of service. 2) to non-functional features like quality and security
    common:Feature CentralCashAllocationSelectedOption?;
    # A Classification value, that distinguishes between the the type of resource allocated withing the Central Cash Allocation
    string CentralCashAllocation\<SubjectArea\>Type?;
    # Documentation of Central Cash Allocation
    string CentralCashAllocationDescription?;
    # Request to allocate CentralCash
    common:Instruction CentralCashAllocationRequest?;
    # The schedule and timing of allocation decisions
    common:Schedule CentralCashAllocationSchedule?;
    # The status of Central Cash Allocation
    common:Status CentralCashAllocationStatus?;
    # Reference to the party who is involved in Central Cash Allocation
    common:CashAllocation CentralCashAllocationReference?;
    # Reference to an entity that assigns and manages the identification.
    # tReference to the organization or agency that issued the identifier (e.g., DMV, Passport Office).
    common:Involvedparty CentralCashAllocationCustomerReference?;
    # The currency code in which the Central Cash Allocation is denominated
    common:Currencycode CentralCashAllocationCurrency?;
    # Reference to the regulation which is defined for Central Cash Allocation
    common:Regulation CentralCashAllocationRegulationReference?;
    # >
    # * `Policy` - Rule that governs business execution.
    #
    # The set of basic principles and associated guidelines, formulated and enforced by the governing body of an organization, to direct and limit its actions in pursuit of long-term goals. (Business Dictionary)
    #
    # * `Regulation` - A rule used to carry out a law (FIBO)
    #
    # Business Dictionary: a rule (with or without the coercive power of law) employed in controlling, directing, or managing an activity, organization, or system. 
    #
    # The set of rules and legislation governing certain actions. 
    # https://financial-dictionary.thefreedictionary.com/Regulatory
    # * `Law` - A binding rule that the courts will enforce.
    # A system of rules and guidelines which are enforced through social institutions to govern behavior. (FIBO)
    #
    # * `Guideline` - A recommended practice (adapted from Business Dictionary)
    # A general rule, principle, or piece of advice.
    # * `Criterion` - A principle or standard by which something may be judged or decided.
    #
    # Read more: http://www.businessdictionary.com/definition/criterion.html
    # * `Standard` - A rule considered by an authority or by general consent as a basis of comparison
    common:Rulesettypevalues CentralCashAllocationRegulationType?;
    # Reference to the jurisdiction that is assigned to Central Cash Allocation in case of legal dispute.
    common:Jurisdiction CentralCashAllocationJurisdiction?;
    # The financial accounting unit into which the financial events, with regard to the origination and fulfillment of the agreement, are entered.
    common:Address CentralCashAllocationBookingLocation?;
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
    common:Accounttypevalues CentralCashAllocationAccountType?;
    # Reference to the account which is linked to Central Cash Allocation
    common:Account CentralCashAllocationAccountReference?;
    # Details of the allocation instance for Central Cash Allocation
    Allocation CentralCashAllocationInstance?;
};

public type Allocation record {
    # The amount allocated
    common:Amount AllocationAmount?;
    # duration for which the allocation is enforced
    common:Duration AllocationDuration?;
    # Indication if it is an allocation or recall
    string AllocationDirection?;
    # AllocationStatus
    common:Status AllocationStatus?;
    # AllocationDescription
    string AllocationDescription?;
    # The identifier of Condition
    common:Identifier TransactionIdentification?;
    # The Date that the transaction has occurred or is planned to occur.
    # A characteristic of transaction which refers to the LifecycleDate of transaction (e.g., initiated date, executed date, fulfillment date). 
    common:Transactiondatetime TransactionDate?;
    # >
    # * `FinancialTransaction` - 
    # * `BusinessTransaction` - 
    # * `BankingTransaction` - 
    # * `AccountingTransaction` - 
    # * `BookingTransaction` - 
    # * `AllocationTransaction` - 
    # * `DeliveryTransaction` - 
    # * `ProductionTransaction` - 
    common:Transactiontypevalues TransactionType?;
    # A detailed explanation or commentary of transaction.
    string TransactionDescription?;
    # A characteristic of transaction which refers to the LifecycleStatus of transaction (e.g., initiated, executed, confirmed, cancelled, etc.) 
    common:Transactionstatus TransactionStatus?;
    # The name of Condition
    common:Name TransactionName?;
};

public type CentralCashAllocationOk record {|
    *http:Ok;
    # body
    CentralCashAllocation body;
|};

# Set of rules for the purpose of deciding if or if not something is applicable
#
# Examples: Staff assignment, Facility allocation.
public type ProjectionandAllocation record {
    # The required status/situation before the allocation can be made
    common:Condition Preconditions?;
    # The schedule and timing of allocation decisions
    common:Schedule AllocationSchedule?;
    # The Projection and Allocation specific  Business Service
    common:BusinessService BusinessService?;
};
