import financial.bian.attribute.groups.common as common;

import ballerina/http;

public type CommissionTermOk record {|
    *http:Ok;
    CommissionTerm body;
|};

public type EmployeeCommissionAgreementOk record {|
    *http:Ok;
    EmployeeCommissionAgreement body;
|};

# Maintain the terms and conditions that apply to a commercial relationship within Commission Agreement.
# Example: Define and maintain the terms govering the contratcual relationship with a customer.
public type EmployeeCommissionAgreement record {
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
    common:Featuretypevalues EmployeeCommissionAgreementParameterType?;
    # A characteristic of service which refers 1) mainly to the function or condition of service. 2) to non-functional features like quality and security
    common:Feature EmployeeCommissionAgreementSelectedOption?;
    # >
    # * `CustomerAgreement` - 
    # * `SupplierAgreement` - 
    # * `BrokerAgreement` - 
    # * `SalesAgreement` - 
    # * `PurchaseAgreement` - 
    # * `MaintenanceAgreement` - 
    # * `ProductAgreement` - 
    # * `ResourceAgreement` - 
    # * `PartnerAgreement` - 
    # * `MasterAgreement` - 
    # * `BilateralAgreement` - 
    # * `RepurchaseAgreement` - 
    common:Agreementtypevalues EmployeeCommissionAgreementType?;
    # Reference to Commission Terms
    common:Agreement EmployeeCommissionAgreementReference?;
    # Request to discharge Employee Commission Agreement
    common:Instruction EmployeeCommissionAgreementRequest?;
    # Any timing/duration considerations applying to the Commission Terms
    common:Schedule EmployeeCommissionAgreementSchedule?;
    # EmployeeCommissionAgreementStatus
    common:Status EmployeeCommissionAgreementStatus?;
    # Reference to the party who is involved in Employee Commission Agreement
    common:Party EmployeeCommissionAgreementAssociatedParty?;
    # Reference to an entity that assigns and manages the identification.
    # tReference to the organization or agency that issued the identifier (e.g., DMV, Passport Office).
    common:Involvedparty EmployeeCommissionAgreementCustomerReference?;
    # Reference to Commission Terms
    common:Arrangement EmployeeCommissionAgreementObligation?;
    # Reference to Commission Terms
    common:Arrangement EmployeeCommissionAgreementEntitlement?;
    # Reference to the regulation which is defined in Employee Commission Agreement
    common:Regulation EmployeeCommissionAgreementRegulationReference?;
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
    common:Rulesettypevalues EmployeeCommissionAgreementRegulationType?;
    # Reference to the jurisdiction that is assigned to Employee Commission Agreement in case of legal dispute.
    common:Jurisdiction EmployeeCommissionAgreementJurisdiction?;
    # Reference to the account which is linked to Employee Commission Agreement
    AgreementAccount EmployeeCommissionAgreementAccountReference?;
};

# Reference to the account which is linked to Employee Commission Agreement
public type AgreementAccount record {
    # A characteristic of account which refers to the LifecycleStatus of account like opened, closed, blocked, etc.
    #
    # Specifies the current state of an account. (ISO20022)
    common:Accountstatus AccountStatus?;
    # The identifier of account like Account Number.
    common:Accountidentification AccountIdentification?;
    # A characteristic of account which refers to LifecycleDate of account (e.g., ClosingDate, OpeningDate, LiveDate, etc.) 
    common:Accountdatetime AccountDate?;
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
    common:Accounttypevalues AccountType?;
    # AccountPurpose
    string AccountPurpose?;
    # The state of the obligations managed on the account, the result of all entries on the account.
    #
    # Numerical representation of the net increases and decreases in an account at a specific point in time. (ISO20022)
    #
    # Banking: Amount available in an account for withdrawal or use.
    # Read more: http://www.businessdictionary.com/definition/balance.html
    #
    # Bookkeeping: Difference between the debit and credit sides of an account.
    # Read more: http://www.businessdictionary.com/definition/balance.html
    common:Accountbalance AccountBalance?;
    # AccountCurrency
    common:Accountcurrency AccountCurrency?;
    # A detailed explanation or commentary of account. 
    string AccountDescription?;
    # The name of Condition
    common:Name AccountName?;
    # LogType
    string LogType?;
    # The validity period of Condition
    common:Datetimeperiod LogPeriod?;
    # The date when the identifier became valid.
    common:Datetime LogDate?;
    # The identifier of Condition
    common:Identifier LogIdentification?;
};

# Maintain the terms and conditions that apply to a commercial relationship within Commission Agreement.
# Example: Define and maintain the terms govering the contratcual relationship with a customer.
public type CommissionTerm record {
    # The required status/situation for the terms to apply and or tasks that need to be completed prior to the initiation of the workstep
    common:Condition Preconditions?;
    # Any timing/duration considerations applying to the Commission Terms
    common:Schedule Schedule?;
    # The Commission Terms specific Business Service
    common:BusinessService BusinessService?;
    # Reference to Commission Terms
    common:Agreement EmployeeCommissionAgreementReference?;
    # Reference to Commission Terms
    common:Arrangement CommissionTermsReference?;
    # The type of Commission Terms
    string CommissionTermsType?;
};
