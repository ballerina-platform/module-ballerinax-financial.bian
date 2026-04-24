import ballerina/http;
import financial.bian.attribute.groups.common as common;

// --- commission_agreement_types.bal ---

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

// --- contractor_and_supplier_agreement_types.bal ---

# Maintain the terms and conditions that apply to a commercial relationship within Contractor and Supplier Agreement.
public type SupplierAgreement record {
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
    common:Featuretypevalues SupplierAgreementParameterType?;
    # A characteristic of service which refers 1) mainly to the function or condition of service. 2) to non-functional features like quality and security
    common:Feature SupplierAgreementSelectedOption?;
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
    common:Agreementtypevalues SupplierAgreementType?;
    # Reference to Policy Term
    common:Agreement SupplierAgreementReference?;
    # Request to discharge Supplier Agreement
    common:Instruction SupplierAgreementDischargeRequest?;
    # Any timing/duration considerations applying to the Policy Term
    common:Schedule SupplierAgreementDischargeSchedule?;
    # A characteristic of agreement which refers to the LifecycleStatus of agreement (e.g., potential, offered, confirmed, completed, signed, terminated).
    common:Agreementstatus SupplierAgreementStatus?;
    # Reference to an entity that assigns and manages the identification.
    # tReference to the organization or agency that issued the identifier (e.g., DMV, Passport Office).
    common:Involvedparty SupplierAgreementAssociatedParty?;
    # Reference to an entity that assigns and manages the identification.
    # tReference to the organization or agency that issued the identifier (e.g., DMV, Passport Office).
    common:Involvedparty SupplierAgreementCustomerReference?;
    # Reference to Policy Term
    SupplierArrangement SupplierAgreementObligation?;
    # Reference to Policy Term
    SupplierArrangement SupplierAgreementEntitlement?;
    # Reference to the regulation which is defined in Supplier Agreement
    common:RuleSet SupplierAgreementRegulationReference?;
    # A Classification that distinguishes between the regularity domains of Supplier Agreement
    common:Rulesettype SupplierAgreementRegulationType?;
    # Reference to the jurisdiction that is assigned to Supplier Agreement in case of legal dispute.
    common:Jurisdiction SupplierAgreementJurisdiction?;
    # Reference to the account which is linked to Supplier Agreement
    #
    # A characteristic of agreement which refers to its involved account to specify the account that will be used to register for the transactions in position keeping management.
    common:Account SupplierAgreementAccountReference?;
    # The subject matter of  Supplier Agreement
    string SupplierAgreementSubjectMatter?;
    # Reference to the product which is linked to Supplier Agreement
    #
    # Comment: 
    # A characteristic of agreement which refers to its related products that are sold by agreement.
    common:Product SupplierAgreementProductReference?;
    # The calendar of Supplier Agreement
    common:Calendar SupplierAgreementCalendarReference?;
    # Reference to Policy Term
    common:Agreement SupplierAgreementAssociatedAgreementReference?;
};

public type SupplierAgreementOk record {|
    *http:Ok;
    SupplierAgreement body;
|};

# Covers the corporate policies and requirements considerations of the agreement
public type SupplierPolicyTerm record {
    # The required status/situation for the terms to apply and or tasks that need to be completed prior to the initiation of the workstep
    common:Condition Preconditions?;
    # Any timing/duration considerations applying to the Policy Term
    common:Schedule Schedule?;
    # The Policy Term specific Business Service
    common:BusinessService BusinessService?;
    # Reference to Policy Term
    common:Agreement SupplierAgreementReference?;
    # Reference to Policy Term
    SupplierArrangement PolicyTermReference?;
    # The type of Policy Term
    string PolicyTermType?;
    # The type of bank policy referenced (e.g. staff certification)
    string BankPolicy\-RuleType?;
    # Reference to the bank's policies or rules
    string ApplicableBankPolicy\-RuleReference?;
    # Explanation or interpretation of the policy or rule as applied
    string ApplicableBankPolicy\-RuleInterpretation?;
};

# Covers the corporate policies and requirements considerations of the agreement
public type SupplierRegulatoryTerm record {
    # The required status/situation for the terms to apply and or tasks that need to be completed prior to the initiation of the workstep
    common:Condition Preconditions?;
    # Any timing/duration considerations applying to the Policy Term
    common:Schedule Schedule?;
    # The Policy Term specific Business Service
    common:BusinessService BusinessService?;
    # Reference to Policy Term
    common:Agreement SupplierAgreementReference?;
    # Reference to Policy Term
    SupplierArrangement RegulatoryTermReference?;
    # The type of Regulatory Term
    string RegulatoryTermType?;
    # The applicable regulatory authority
    string RegulatoryAuthority?;
    # Reference to any regulatory requirements
    string ApplicableRegulationReference?;
    # Explanation or interpretation of the regulation as applied
    string ApplicableRegulationInterpretation?;
};

# Covers the corporate policies and requirements considerations of the agreement
public type SupplierLegalTerm record {
    # The required status/situation for the terms to apply and or tasks that need to be completed prior to the initiation of the workstep
    common:Condition Preconditions?;
    # Any timing/duration considerations applying to the Policy Term
    common:Schedule Schedule?;
    # The Policy Term specific Business Service
    common:BusinessService BusinessService?;
    # Reference to Policy Term
    common:Agreement SupplierAgreementReference?;
    # Reference to Policy Term
    SupplierArrangement LegalTermReference?;
    # The type of Legal Term
    string LegalTermType?;
    # The legal jurisdiction
    string Jurisdiction?;
    # Reference to any legal requirements
    string ApplicableLawReference?;
    # Explanation or interpretation of the law as applied
    string ApplicableLawInterpretation?;
};

# Reference to Policy Term
public type SupplierArrangement record {
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
    # >
    # * `SweepArrangement` - An arrangement into which is promised for the set-up and execution of structured sweeps to and from the facility to a linked account.
    # * `WithdrawalArrangement` - An arrangement into which is promised to deliver Withdraw Service  to take fund out of an account. 
    # * `DepositArrangement` - An arrangement into which is promised to deliver Deposit Service  to place funds into an account for safekeeping. 
    # * `InterestArrangement` - An arrangement into which is promised to apply a pricing element expressed in a percentage  to a principal amount.
    # * `FeeArrangement` - An arrangement into which is promised to apply a charge for services rendered. 
    # * `LienArrangement` - An arrangement into which is promised for placing a lien or block on the account for a specified purpose, amount, and period. 
    # * `InformationArrangement` - An arrangement concerning the information the bank will provide about the agreement/account
    # * `PaymentArrangement` - An arrangement into which is promised to deliver a specific payment service including regular payments, standing orders, direct debits and bill pay instructions. 
    # * `EntitlementArrangement` - Right or obligation linked to the involvement of a party in an agreement
    # * `PeriodArrangement` - 
    # * `CollateralArrangement` - An arrangement into which is promised for handling the oversight of the allocation, valuation and administration of collateral associated with the facility. 
    # * `LimitArrangement` - An arrangement to limit something
    # e.g., the number of transaction per week, the amount of money allowed to withdraw per week/day and etc. 
    # * `AccessArrangement` - An arrangement that allows or restricts the access to a service or product, channel or device through a specific access point
    # * `CardPaymentArrangement` - An arrangement into which is promised to deliver Card payment Service to execute payment transactions through a payment card, including online payments. 
    # * `StandingOrderArrangement` - An arrangement into which is promised to deliver Standing Order Service to make regular transfers on given dates to a named beneﬁciary. 
    # * `OverdraftArrangement` - An arrangement into which is promised to deliver Overdraft Service  that allows fund transfer even if there is no provision on the account. 
    # * `RepaymentArrangement` - An arrangement into which is promised for paying back money previously borrowed from a lender. 
    # * `StatementArrangement` - An arrangement into which is promised to deliver a reporting service on payment transactions registered on an account. 
    # * `CreditTransferArrangement` - An arrangement into which is promised to allow a payer to transfer fund to a beneficiary. 
    # * `ProductAndServiceArrangement` - 
    # * `FactoringArrangement` - 
    # * `RolloverArrangement` - SupplierArrangement stipulating the modalities for an automatic renewal of the agreement
    #
    # i.e. the replacement of the agreement with a new one without renewed negociation and witout explicit agreement of the customer 
    # * `RestructuringArrangement` - 
    # * `InsuranceArrangement` - 
    # * `CollectionArrangement` - An arrangement into which is promised to collect past-due debts from borrowers
    # * `UnderwritingArrangement` - A contractual agreement between parties that commits the underwriter to assuming risk.
    # * `TerminationArrangement` - 
    # * `MaturityArrangement` - 
    # * `AdministrativeArrangement` - 
    common:Arrangementtypevalues Arrangementtype?;
    # The identifier of Condition
    common:Identifier ArrangementIdentification?;
};

public type SupplierLegalTermOk record {|
    *http:Ok;
    SupplierLegalTerm body;
|};

public type SupplierPolicyTermOk record {|
    *http:Ok;
    SupplierPolicyTerm body;
|};

public type SupplierRegulatoryTermOk record {|
    *http:Ok;
    SupplierRegulatoryTerm body;
|};

// --- correspondent_bank_relationship_management_types.bal ---

# Reference to Relationship Reciprocity Assessment Duty
public type PlannedAction record {
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
    # >
    # * `SweepArrangement` - An arrangement into which is promised for the set-up and execution of structured sweeps to and from the facility to a linked account.
    # * `WithdrawalArrangement` - An arrangement into which is promised to deliver Withdraw Service  to take fund out of an account. 
    # * `DepositArrangement` - An arrangement into which is promised to deliver Deposit Service  to place funds into an account for safekeeping. 
    # * `InterestArrangement` - An arrangement into which is promised to apply a pricing element expressed in a percentage  to a principal amount.
    # * `FeeArrangement` - An arrangement into which is promised to apply a charge for services rendered. 
    # * `LienArrangement` - An arrangement into which is promised for placing a lien or block on the account for a specified purpose, amount, and period. 
    # * `InformationArrangement` - An arrangement concerning the information the bank will provide about the agreement/account
    # * `PaymentArrangement` - An arrangement into which is promised to deliver a specific payment service including regular payments, standing orders, direct debits and bill pay instructions. 
    # * `EntitlementArrangement` - Right or obligation linked to the involvement of a party in an agreement
    # * `PeriodArrangement` - 
    # * `CollateralArrangement` - An arrangement into which is promised for handling the oversight of the allocation, valuation and administration of collateral associated with the facility. 
    # * `LimitArrangement` - An arrangement to limit something
    # e.g., the number of transaction per week, the amount of money allowed to withdraw per week/day and etc. 
    # * `AccessArrangement` - An arrangement that allows or restricts the access to a service or product, channel or device through a specific access point
    # * `CardPaymentArrangement` - An arrangement into which is promised to deliver Card payment Service to execute payment transactions through a payment card, including online payments. 
    # * `StandingOrderArrangement` - An arrangement into which is promised to deliver Standing Order Service to make regular transfers on given dates to a named beneﬁciary. 
    # * `OverdraftArrangement` - An arrangement into which is promised to deliver Overdraft Service  that allows fund transfer even if there is no provision on the account. 
    # * `RepaymentArrangement` - An arrangement into which is promised for paying back money previously borrowed from a lender. 
    # * `StatementArrangement` - An arrangement into which is promised to deliver a reporting service on payment transactions registered on an account. 
    # * `CreditTransferArrangement` - An arrangement into which is promised to allow a payer to transfer fund to a beneficiary. 
    # * `ProductAndServiceArrangement` - 
    # * `FactoringArrangement` - 
    # * `RolloverArrangement` - BankRelationshipArrangement stipulating the modalities for an automatic renewal of the agreement
    #
    # i.e. the replacement of the agreement with a new one without renewed negociation and witout explicit agreement of the customer 
    # * `RestructuringArrangement` - 
    # * `InsuranceArrangement` - 
    # * `CollectionArrangement` - An arrangement into which is promised to collect past-due debts from borrowers
    # * `UnderwritingArrangement` - A contractual agreement between parties that commits the underwriter to assuming risk.
    # * `TerminationArrangement` - 
    # * `MaturityArrangement` - 
    # * `AdministrativeArrangement` - 
    common:Arrangementtypevalues Arrangementtype?;
    # The identifier of Condition
    common:Identifier ArrangementIdentification?;
};

# Oversee the working of a business unit, assign work, manage against a plan and troubleshoot issues within Correspondent Bank Relationship Management.
public type CorrepondentBankRelationshipManagementPlan record {
    # The type of Correpondent Bank Relationship Management Plan
    Plantype CorrepondentBankRelationshipManagementPlanType?;
    # Reference to Relationship Reciprocity Assessment Duty
    common:Plan CorrepondentBankRelationshipManagementPlanReference?;
    # A Classification value that specifies the type of Budget
    common:Budgettype CorrepondentBankRelationshipManagementPlanBudgetType?;
    # CorrepondentBankRelationshipManagementPlanBudget
    common:Amount CorrepondentBankRelationshipManagementPlanBudget?;
    # The assignment of a required activity to a responsibe party in Correpondent Bank Relationship Management Plan
    common:Assignment CorrepondentBankRelationshipManagementPlanAssignment?;
    # The set of management responsibilities defined in Correpondent Bank Relationship Management Plan
    BankRelationshipArrangement CorrepondentBankRelationshipManagementPlanDuty?;
    # Documentation of Correpondent Bank Relationship Management Plan
    string CorrepondentBankRelationshipManagementPlanDescription?;
    # Balance of budget which is arranged whitin Correpondent Bank Relationship Management Plan
    common:Accountbalance CorrepondentBankRelationshipManagementPlanBudgetBalance?;
    # Reference to an entity that assigns and manages the identification.
    # tReference to the organization or agency that issued the identifier (e.g., DMV, Passport Office).
    common:Involvedparty CorrepondentBankRelationshipManagementPlanAssociatedParty?;
    # The subject matter of Correpondent Bank Relationship Management Plan
    string CorrepondentBankRelationshipManagementPlanSubjectMatter?;
};

# The Relationship Reciprocity Assessment Duty is a specific role or responsibility that is one aspect of Relationship Reciprocity Assessment Duty
public type RelationshipDevelopment record {
    # The required status/situation before the duty/obligation can be met
    common:Condition Preconditions?;
    # Reference to an entity that assigns and manages the identification.
    # tReference to the organization or agency that issued the identifier (e.g., DMV, Passport Office).
    common:Involvedparty BusinessUnitorEmployeeReference?;
    # The timing and key actions/milestones involved in fulfilling the duty
    common:Schedule Schedule?;
    # The Relationship Reciprocity Assessment Duty specific Business Service
    common:BusinessService BusinessService?;
    # The required status/situation before the duty/obligation can be met
    common:Condition Postconditions?;
    # Reference to Relationship Reciprocity Assessment Duty
    common:Plan CorrepondentBankRelationshipManagementPlanReference?;
    # Reference to Relationship Reciprocity Assessment Duty
    PlannedAction RelationshipDevelopmentDutyReference?;
    # The type of Relationship Development Duty
    string RelationshipDevelopmentDutyType?;
};

# The type of Correpondent Bank Relationship Management Plan
public type Plantype record {
    # The name of Condition
    common:Name PlanTypeName?;
    # >
    # * `AdministrativePlan` - 
    # * `ManagementPlan` - 
    # * `StratgyPlan` - 
    # * `FinancialPlan` - 
    # * `DevelopmentPlan` - 
    common:Plantypevalues PlanType?;
};

# The Relationship Reciprocity Assessment Duty is a specific role or responsibility that is one aspect of Relationship Reciprocity Assessment Duty
public type RelationshipReciprocityAssessment record {
    # The required status/situation before the duty/obligation can be met
    common:Condition Preconditions?;
    # Reference to an entity that assigns and manages the identification.
    # tReference to the organization or agency that issued the identifier (e.g., DMV, Passport Office).
    common:Involvedparty BusinessUnitorEmployeeReference?;
    # The timing and key actions/milestones involved in fulfilling the duty
    common:Schedule Schedule?;
    # The Relationship Reciprocity Assessment Duty specific Business Service
    common:BusinessService BusinessService?;
    # The required status/situation before the duty/obligation can be met
    common:Condition Postconditions?;
    # Reference to Relationship Reciprocity Assessment Duty
    common:Plan CorrepondentBankRelationshipManagementPlanReference?;
    # Reference to Relationship Reciprocity Assessment Duty
    PlannedAction RelationshipReciprocityAssessmentDutyReference?;
    # The type of Relationship Reciprocity Assessment Duty
    string RelationshipReciprocityAssessmentDutyType?;
};

# The set of management responsibilities defined in Correpondent Bank Relationship Management Plan
public type BankRelationshipArrangement record {
    # An agreed commitment to perform actions that meet obligations under an agreement
    string BankRelationshipArrangement?;
};

public type CorrepondentBankRelationshipManagementPlanOk record {|
    *http:Ok;
    CorrepondentBankRelationshipManagementPlan body;
|};

# The Relationship Reciprocity Assessment Duty is a specific role or responsibility that is one aspect of Relationship Reciprocity Assessment Duty
public type IncidentTroubleshootingOversight record {
    # The required status/situation before the duty/obligation can be met
    common:Condition Preconditions?;
    # Reference to an entity that assigns and manages the identification.
    # tReference to the organization or agency that issued the identifier (e.g., DMV, Passport Office).
    common:Involvedparty BusinessUnitorEmployeeReference?;
    # The timing and key actions/milestones involved in fulfilling the duty
    common:Schedule Schedule?;
    # The Relationship Reciprocity Assessment Duty specific Business Service
    common:BusinessService BusinessService?;
    # The required status/situation before the duty/obligation can be met
    common:Condition Postconditions?;
    # Reference to Relationship Reciprocity Assessment Duty
    common:Plan CorrepondentBankRelationshipManagementPlanReference?;
    # Reference to Relationship Reciprocity Assessment Duty
    PlannedAction IncidentTroubleshootingOversightDutyReference?;
    # The type of Incident Troubleshooting Oversight Duty
    string IncidentTroubleshootingOversightDutyType?;
};

// --- interbank_relationship_management_types.bal ---

public type ContactOk record {|
    *http:Ok;
    Contact body;
|};

# >
# * `Jointventure` - 
# * `Tradingpartner` - 
public type Bankrelationshiptypevalues "Jointventure"|"Tradingpartner";

# Oversee the working of a business unit, assign work, manage against a plan and troubleshoot issues within Interbank Relationship Management.
public type BankRelationshipManagementPlan record {
    # Reference to the associated bank
    common:Organisation BankReference?;
    # Key features and details of the bank (e.g. business/segment profile)
    string BankDetails?;
    # Reference to a Party who plays a  specific role in the context of assigning a status.
    common:Involvedparty EmployeeorBusinessUnitReference?;
    # >
    # * `Jointventure` - 
    # * `Tradingpartner` - 
    Bankrelationshiptypevalues BankRelationshipType?;
    # A description of the relationship, outlining roles and expectations as appropriate
    string BankRelationshipDescription?;
    # The target and actual budget covering expenditures and reciprocal business activity as appropriate
    BudgetArrangement BankRelationshipBudget?;
    # Defines the role and contact details for bank representatives
    string BankContactDetails?;
};

# A collection of one or more responsibilities or tasks under management
#
# Examples: Relationship development, Troubleshooting
public type Contact record {
    # Records the timing, purpose, details and impact of customer contacts
    string BankRelationshipContactHistory?;
    # The schedule of past and planned customer contacts
    common:Schedule BankRelationshipContactSchedule?;
    # The record of a customer contact
    string BankRelationshipContactRecord?;
    # The date time and location of the contact
    common:Datetime BankRelationshipContactDate?;
    # Reference to the employee(s) in attendance
    common:Employee EmployeeReference?;
    # The reason and or purpose for the contact (e.g. review, issue, product sales, advice, customer enquiry)
    string BankRelationshipContactType?;
    # The result of the contact, including follow up tasks
    string BankRelationshipContactResult?;
    # Reference to associated documents
    common:documentdirectoryentry DocumentDirectoryEntryInstanceReference?;
};

public type BankRelationshipManagementPlanOk record {|
    *http:Ok;
    BankRelationshipManagementPlan body;
|};

# The target and actual budget covering expenditures and reciprocal business activity as appropriate
public type BudgetArrangement record {
    # A Classification value that specifies the type of Budget
    common:Budgettype BudgetType?;
    # BudgetAmount
    common:Amount BudgetAmount?;
    # ArrangementAction
    common:Action ArrangementAction?;
    # The date time and location of the contact
    common:Datetime ArrangementStartDate?;
    # The date time and location of the contact
    common:Datetime ArrangementEndDate?;
    # A characteristic of arrangement which refers to the LifecycleStatus of arrangement (e.g., requested, proposed, offered, accepted, cancelled, terminated, fulfilled, etc.)
    common:Arrangementstatus ArrangementStatus?;
    # ArrangementSubjectMatter
    common:Subject ArrangementSubjectMatter?;
    # >
    # * `SweepArrangement` - An arrangement into which is promised for the set-up and execution of structured sweeps to and from the facility to a linked account.
    # * `WithdrawalArrangement` - An arrangement into which is promised to deliver Withdraw Service  to take fund out of an account. 
    # * `DepositArrangement` - An arrangement into which is promised to deliver Deposit Service  to place funds into an account for safekeeping. 
    # * `InterestArrangement` - An arrangement into which is promised to apply a pricing element expressed in a percentage  to a principal amount.
    # * `FeeArrangement` - An arrangement into which is promised to apply a charge for services rendered. 
    # * `LienArrangement` - An arrangement into which is promised for placing a lien or block on the account for a specified purpose, amount, and period. 
    # * `InformationArrangement` - An arrangement concerning the information the bank will provide about the agreement/account
    # * `PaymentArrangement` - An arrangement into which is promised to deliver a specific payment service including regular payments, standing orders, direct debits and bill pay instructions. 
    # * `EntitlementArrangement` - Right or obligation linked to the involvement of a party in an agreement
    # * `PeriodArrangement` - 
    # * `CollateralArrangement` - An arrangement into which is promised for handling the oversight of the allocation, valuation and administration of collateral associated with the facility. 
    # * `LimitArrangement` - An arrangement to limit something
    # e.g., the number of transaction per week, the amount of money allowed to withdraw per week/day and etc. 
    # * `AccessArrangement` - An arrangement that allows or restricts the access to a service or product, channel or device through a specific access point
    # * `CardPaymentArrangement` - An arrangement into which is promised to deliver Card payment Service to execute payment transactions through a payment card, including online payments. 
    # * `StandingOrderArrangement` - An arrangement into which is promised to deliver Standing Order Service to make regular transfers on given dates to a named beneﬁciary. 
    # * `OverdraftArrangement` - An arrangement into which is promised to deliver Overdraft Service  that allows fund transfer even if there is no provision on the account. 
    # * `RepaymentArrangement` - An arrangement into which is promised for paying back money previously borrowed from a lender. 
    # * `StatementArrangement` - An arrangement into which is promised to deliver a reporting service on payment transactions registered on an account. 
    # * `CreditTransferArrangement` - An arrangement into which is promised to allow a payer to transfer fund to a beneficiary. 
    # * `ProductAndServiceArrangement` - 
    # * `FactoringArrangement` - 
    # * `RolloverArrangement` - Arrangement stipulating the modalities for an automatic renewal of the agreement
    #
    # i.e. the replacement of the agreement with a new one without renewed negociation and witout explicit agreement of the customer 
    # * `RestructuringArrangement` - 
    # * `InsuranceArrangement` - 
    # * `CollectionArrangement` - An arrangement into which is promised to collect past-due debts from borrowers
    # * `UnderwritingArrangement` - A contractual agreement between parties that commits the underwriter to assuming risk.
    # * `TerminationArrangement` - 
    # * `MaturityArrangement` - 
    # * `AdministrativeArrangement` - 
    common:Arrangementtypevalues Arrangementtype?;
    # ArrangementIdentification
    common:Identifier ArrangementIdentification?;
};

// --- product_service_agency_types.bal ---

# Maintain the terms and conditions that apply to a commercial relationship within Product Service Agency.
public type ServiceProviderAgreement record {
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
    common:Featuretypevalues ServiceProviderAgreementParameterType?;
    # A characteristic of service which refers 1) mainly to the function or condition of service. 2) to non-functional features like quality and security
    common:Feature ServiceProviderAgreementSelectedOption?;
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
    common:Agreementtypevalues ServiceProviderAgreementType?;
    # Reference to Policy Term
    common:Agreement ServiceProviderAgreementReference?;
    # Request to discharge Service Provider Agreement
    common:Instruction ServiceProviderAgreementDischargeRequest?;
    # Any timing/duration considerations applying to the Policy Term
    common:Schedule ServiceProviderAgreementDischargeSchedule?;
    # A characteristic of agreement which refers to the LifecycleStatus of agreement (e.g., potential, offered, confirmed, completed, signed, terminated).
    common:Agreementstatus ServiceProviderAgreementStatus?;
    # Reference to an entity that assigns and manages the identification.
    # tReference to the organization or agency that issued the identifier (e.g., DMV, Passport Office).
    common:Involvedparty ServiceProviderAgreementAssociatedParty?;
    # Reference to an entity that assigns and manages the identification.
    # tReference to the organization or agency that issued the identifier (e.g., DMV, Passport Office).
    common:Involvedparty ServiceProviderAgreementCustomerReference?;
    # Reference to Policy Term
    ServiceProviderArrangement ServiceProviderAgreementObligation?;
    # Reference to Policy Term
    ServiceProviderArrangement ServiceProviderAgreementEntitlement?;
    # Reference to the regulation which is defined in Service Provider Agreement
    common:RuleSet ServiceProviderAgreementRegulationReference?;
    # A Classification that distinguishes between the regularity domains of Service Provider Agreement
    common:Rulesettype ServiceProviderAgreementRegulationType?;
    # Reference to the jurisdiction that is assigned to Service Provider Agreement in case of legal dispute.
    common:Jurisdiction ServiceProviderAgreementJurisdiction?;
    # Reference to the account which is linked to Service Provider Agreement
    #
    # A characteristic of agreement which refers to its involved account to specify the account that will be used to register for the transactions in position keeping management.
    common:Account ServiceProviderAgreementAccountReference?;
    # The subject matter of  Service Provider Agreement
    string ServiceProviderAgreementSubjectMatter?;
    # Reference to the product which is linked to Service Provider Agreement
    #
    # Comment: 
    # A characteristic of agreement which refers to its related products that are sold by agreement.
    common:Product ServiceProviderAgreementProductReference?;
    # The calendar of Service Provider Agreement
    common:Calendar ServiceProviderAgreementCalendarReference?;
    # Reference to Policy Term
    common:Agreement ServiceProviderAgreementAssociatedAgreementReference?;
};

# Covers the corporate policies and requirements considerations of the agreement
public type ServiceProviderPolicyTerm record {
    # The required status/situation for the terms to apply and or tasks that need to be completed prior to the initiation of the workstep
    common:Condition Preconditions?;
    # Any timing/duration considerations applying to the Policy Term
    common:Schedule Schedule?;
    # The Policy Term specific Business Service
    common:BusinessService BusinessService?;
    # Reference to Policy Term
    common:Agreement ServiceProviderAgreementReference?;
    # Reference to Policy Term
    ServiceProviderArrangement PolicyTermReference?;
    # The type of Policy Term
    string PolicyTermType?;
    # The type of bank policy referenced (e.g. staff certification)
    string BankPolicy\-RuleType?;
    # Reference to the bank's policies or rules
    string ApplicableBankPolicy\-RuleReference?;
    # Explanation or interpretation of the policy or rule as applied
    string ApplicableBankPolicy\-RuleInterpretation?;
};

# Covers the corporate policies and requirements considerations of the agreement
public type ServiceProviderRegulatoryTerm record {
    # The required status/situation for the terms to apply and or tasks that need to be completed prior to the initiation of the workstep
    common:Condition Preconditions?;
    # Any timing/duration considerations applying to the Policy Term
    common:Schedule Schedule?;
    # The Policy Term specific Business Service
    common:BusinessService BusinessService?;
    # Reference to Policy Term
    common:Agreement ServiceProviderAgreementReference?;
    # Reference to Policy Term
    ServiceProviderArrangement RegulatoryTermReference?;
    # The type of Regulatory Term
    string RegulatoryTermType?;
    # The applicable regulatory authority
    string RegulatoryAuthority?;
    # Reference to any regulatory requirements
    string ApplicableRegulationReference?;
    # Explanation or interpretation of the regulation as applied
    string ApplicableRegulationInterpretation?;
};

# Covers the corporate policies and requirements considerations of the agreement
public type ServiceProviderLegalTerm record {
    # The required status/situation for the terms to apply and or tasks that need to be completed prior to the initiation of the workstep
    common:Condition Preconditions?;
    # Any timing/duration considerations applying to the Policy Term
    common:Schedule Schedule?;
    # The Policy Term specific Business Service
    common:BusinessService BusinessService?;
    # Reference to Policy Term
    common:Agreement ServiceProviderAgreementReference?;
    # Reference to Policy Term
    ServiceProviderArrangement LegalTermReference?;
    # The type of Legal Term
    string LegalTermType?;
    # The legal jurisdiction
    string Jurisdiction?;
    # Reference to any legal requirements
    string ApplicableLawReference?;
    # Explanation or interpretation of the law as applied
    string ApplicableLawInterpretation?;
};

# Reference to Policy Term
public type ServiceProviderArrangement record {
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
    # >
    # * `SweepArrangement` - An arrangement into which is promised for the set-up and execution of structured sweeps to and from the facility to a linked account.
    # * `WithdrawalArrangement` - An arrangement into which is promised to deliver Withdraw Service  to take fund out of an account. 
    # * `DepositArrangement` - An arrangement into which is promised to deliver Deposit Service  to place funds into an account for safekeeping. 
    # * `InterestArrangement` - An arrangement into which is promised to apply a pricing element expressed in a percentage  to a principal amount.
    # * `FeeArrangement` - An arrangement into which is promised to apply a charge for services rendered. 
    # * `LienArrangement` - An arrangement into which is promised for placing a lien or block on the account for a specified purpose, amount, and period. 
    # * `InformationArrangement` - An arrangement concerning the information the bank will provide about the agreement/account
    # * `PaymentArrangement` - An arrangement into which is promised to deliver a specific payment service including regular payments, standing orders, direct debits and bill pay instructions. 
    # * `EntitlementArrangement` - Right or obligation linked to the involvement of a party in an agreement
    # * `PeriodArrangement` - 
    # * `CollateralArrangement` - An arrangement into which is promised for handling the oversight of the allocation, valuation and administration of collateral associated with the facility. 
    # * `LimitArrangement` - An arrangement to limit something
    # e.g., the number of transaction per week, the amount of money allowed to withdraw per week/day and etc. 
    # * `AccessArrangement` - An arrangement that allows or restricts the access to a service or product, channel or device through a specific access point
    # * `CardPaymentArrangement` - An arrangement into which is promised to deliver Card payment Service to execute payment transactions through a payment card, including online payments. 
    # * `StandingOrderArrangement` - An arrangement into which is promised to deliver Standing Order Service to make regular transfers on given dates to a named beneﬁciary. 
    # * `OverdraftArrangement` - An arrangement into which is promised to deliver Overdraft Service  that allows fund transfer even if there is no provision on the account. 
    # * `RepaymentArrangement` - An arrangement into which is promised for paying back money previously borrowed from a lender. 
    # * `StatementArrangement` - An arrangement into which is promised to deliver a reporting service on payment transactions registered on an account. 
    # * `CreditTransferArrangement` - An arrangement into which is promised to allow a payer to transfer fund to a beneficiary. 
    # * `ProductAndServiceArrangement` - 
    # * `FactoringArrangement` - 
    # * `RolloverArrangement` - ServiceProviderArrangement stipulating the modalities for an automatic renewal of the agreement
    #
    # i.e. the replacement of the agreement with a new one without renewed negociation and witout explicit agreement of the customer 
    # * `RestructuringArrangement` - 
    # * `InsuranceArrangement` - 
    # * `CollectionArrangement` - An arrangement into which is promised to collect past-due debts from borrowers
    # * `UnderwritingArrangement` - A contractual agreement between parties that commits the underwriter to assuming risk.
    # * `TerminationArrangement` - 
    # * `MaturityArrangement` - 
    # * `AdministrativeArrangement` - 
    common:Arrangementtypevalues Arrangementtype?;
    # The identifier of Condition
    common:Identifier ArrangementIdentification?;
};

public type ServiceProviderAgreementOk record {|
    *http:Ok;
    ServiceProviderAgreement body;
|};

public type ServiceProviderLegalTermOk record {|
    *http:Ok;
    ServiceProviderLegalTerm body;
|};

public type ServiceProviderPolicyTermOk record {|
    *http:Ok;
    ServiceProviderPolicyTerm body;
|};

public type ServiceProviderRegulatoryTermOk record {|
    *http:Ok;
    ServiceProviderRegulatoryTerm body;
|};

public type ServiceProviderRegistration record {
    # Unique identification as assigned to identify the account access consent resource.
    common:Identifier Identification?;
    string Method?;
    # The life cycle stage of a device
    #
    # e.g. active, defect
    common:Status Status?;
    # The date when the identifier became valid.
    common:Datetime Datetime?;
    # Reference to an entity that assigns and manages the identification.
    # tReference to the organization or agency that issued the identifier (e.g., DMV, Passport Office).
    common:Involvedparty InvolvedParty?;
    # Period of time during which the status is valid.
    common:Datetimeperiod ValidityPeriod?;
    # The time the session was active
    common:Duration SessionDuration?;
    # The date when the identifier became valid.
    common:Datetime SessionDateAndTime?;
    # The life cycle stage of a device
    #
    # e.g. active, defect
    common:Status SessionStatus?;
    # Specifies the classification of session like Customer Contact Session, Channel Operating Session, Device Operating Session, etc.
    common:Sessiontype SessionType?;
    common:Schedule SessionScheduel?;
    # Unique identification as assigned to identify the account access consent resource.
    common:Identifier SessionIdentification?;
};

public type ServiceProviderRegistrationOperatingSession record {
    ServiceProviderRegistration ServiceProviderRegistrationReference?;
    # Unique identification as assigned to identify the account access consent resource.
    common:Identifier ServiceProviderRegistrationOperatingSessionReference?;
    # Reference to an entity that assigns and manages the identification.
    # tReference to the organization or agency that issued the identifier (e.g., DMV, Passport Office).
    common:Involvedparty ServiceProviderReference?;
    # Reference to an entity that assigns and manages the identification.
    # tReference to the organization or agency that issued the identifier (e.g., DMV, Passport Office).
    common:Involvedparty TPPReference?;
};

// --- sub_custodian_agreement_types.bal ---

public type SubCustodianAgreementOk record {|
    *http:Ok;
    SubCustodianAgreement body;
|};

# Covers the legal considerations of the agreement
public type SubCustodianPolicyTerm record {
    # The required status/situation for the terms to apply and or tasks that need to be completed prior to the initiation of the workstep
    common:Condition Preconditions?;
    # Any timing/duration considerations applying to the Legal Term
    common:Schedule Schedule?;
    # The Legal Term specific Business Service
    common:BusinessService BusinessService?;
    # Reference to Legal Term
    common:Agreement SubCustodianAgreementReference?;
    # Reference to Legal Term
    SubCustodianArrangement PolicyTermReference?;
    # The type of Policy Term
    string PolicyTermType?;
    # The type of bank policy referenced (e.g. staff certification)
    string BankPolicy\-RuleType?;
    # Reference to the bank's policies or rules
    string ApplicableBankPolicy\-RuleReference?;
    # Explanation or interpretation of the policy or rule as applied
    string ApplicableBankPolicy\-RuleInterpretation?;
};

# Covers the legal considerations of the agreement
public type SubCustodianRegulatoryTerm record {
    # The required status/situation for the terms to apply and or tasks that need to be completed prior to the initiation of the workstep
    common:Condition Preconditions?;
    # Any timing/duration considerations applying to the Legal Term
    common:Schedule Schedule?;
    # The Legal Term specific Business Service
    common:BusinessService BusinessService?;
    # Reference to Legal Term
    common:Agreement SubCustodianAgreementReference?;
    # Reference to Legal Term
    SubCustodianArrangement RegulatoryTermReference?;
    # The type of Regulatory Term
    string RegulatoryTermType?;
    # The applicable regulatory authority
    string RegulatoryAuthority?;
    # Reference to any regulatory requirements
    string ApplicableRegulationReference?;
    # Explanation or interpretation of the regulation as applied
    string ApplicableRegulationInterpretation?;
};

# Covers the legal considerations of the agreement
public type SubCustodianLegalTerm record {
    # The required status/situation for the terms to apply and or tasks that need to be completed prior to the initiation of the workstep
    common:Condition Preconditions?;
    # Any timing/duration considerations applying to the Legal Term
    common:Schedule Schedule?;
    # The Legal Term specific Business Service
    common:BusinessService BusinessService?;
    # Reference to Legal Term
    common:Agreement SubCustodianAgreementReference?;
    # Reference to Legal Term
    SubCustodianArrangement LegalTermReference?;
    # The type of Legal Term
    string LegalTermType?;
    # The legal jurisdiction
    string Jurisdiction?;
    # Reference to any legal requirements
    string ApplicableLawReference?;
    # Explanation or interpretation of the law as applied
    string ApplicableLawInterpretation?;
};

# Reference to Legal Term
public type SubCustodianArrangement record {
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
    # >
    # * `SweepArrangement` - An arrangement into which is promised for the set-up and execution of structured sweeps to and from the facility to a linked account.
    # * `WithdrawalArrangement` - An arrangement into which is promised to deliver Withdraw Service  to take fund out of an account. 
    # * `DepositArrangement` - An arrangement into which is promised to deliver Deposit Service  to place funds into an account for safekeeping. 
    # * `InterestArrangement` - An arrangement into which is promised to apply a pricing element expressed in a percentage  to a principal amount.
    # * `FeeArrangement` - An arrangement into which is promised to apply a charge for services rendered. 
    # * `LienArrangement` - An arrangement into which is promised for placing a lien or block on the account for a specified purpose, amount, and period. 
    # * `InformationArrangement` - An arrangement concerning the information the bank will provide about the agreement/account
    # * `PaymentArrangement` - An arrangement into which is promised to deliver a specific payment service including regular payments, standing orders, direct debits and bill pay instructions. 
    # * `EntitlementArrangement` - Right or obligation linked to the involvement of a party in an agreement
    # * `PeriodArrangement` - 
    # * `CollateralArrangement` - An arrangement into which is promised for handling the oversight of the allocation, valuation and administration of collateral associated with the facility. 
    # * `LimitArrangement` - An arrangement to limit something
    # e.g., the number of transaction per week, the amount of money allowed to withdraw per week/day and etc. 
    # * `AccessArrangement` - An arrangement that allows or restricts the access to a service or product, channel or device through a specific access point
    # * `CardPaymentArrangement` - An arrangement into which is promised to deliver Card payment Service to execute payment transactions through a payment card, including online payments. 
    # * `StandingOrderArrangement` - An arrangement into which is promised to deliver Standing Order Service to make regular transfers on given dates to a named beneﬁciary. 
    # * `OverdraftArrangement` - An arrangement into which is promised to deliver Overdraft Service  that allows fund transfer even if there is no provision on the account. 
    # * `RepaymentArrangement` - An arrangement into which is promised for paying back money previously borrowed from a lender. 
    # * `StatementArrangement` - An arrangement into which is promised to deliver a reporting service on payment transactions registered on an account. 
    # * `CreditTransferArrangement` - An arrangement into which is promised to allow a payer to transfer fund to a beneficiary. 
    # * `ProductAndServiceArrangement` - 
    # * `FactoringArrangement` - 
    # * `RolloverArrangement` - SubCustodianArrangement stipulating the modalities for an automatic renewal of the agreement
    #
    # i.e. the replacement of the agreement with a new one without renewed negociation and witout explicit agreement of the customer 
    # * `RestructuringArrangement` - 
    # * `InsuranceArrangement` - 
    # * `CollectionArrangement` - An arrangement into which is promised to collect past-due debts from borrowers
    # * `UnderwritingArrangement` - A contractual agreement between parties that commits the underwriter to assuming risk.
    # * `TerminationArrangement` - 
    # * `MaturityArrangement` - 
    # * `AdministrativeArrangement` - 
    common:Arrangementtypevalues Arrangementtype?;
    # The identifier of Condition
    common:Identifier ArrangementIdentification?;
};

# Maintain the terms and conditions that apply to a commercial relationship within Sub Custodian Agreement.
public type SubCustodianAgreement record {
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
    common:Featuretypevalues SubCustodianAgreementParameterType?;
    # A characteristic of service which refers 1) mainly to the function or condition of service. 2) to non-functional features like quality and security
    common:Feature SubCustodianAgreementSelectedOption?;
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
    common:Agreementtypevalues SubCustodianAgreementType?;
    # Reference to Legal Term
    common:Agreement SubCustodianAgreementReference?;
    # Request to discharge Sub Custodian Agreement
    common:Instruction SubCustodianAgreementDischargeRequest?;
    # Any timing/duration considerations applying to the Legal Term
    common:Schedule SubCustodianAgreementDischargeSchedule?;
    # A characteristic of agreement which refers to the LifecycleStatus of agreement (e.g., potential, offered, confirmed, completed, signed, terminated).
    common:Agreementstatus SubCustodianAgreementStatus?;
    # Reference to an entity that assigns and manages the identification.
    # tReference to the organization or agency that issued the identifier (e.g., DMV, Passport Office).
    common:Involvedparty SubCustodianAgreementAssociatedParty?;
    # Reference to an entity that assigns and manages the identification.
    # tReference to the organization or agency that issued the identifier (e.g., DMV, Passport Office).
    common:Involvedparty SubCustodianAgreementCustomerReference?;
    # Reference to Legal Term
    SubCustodianArrangement SubCustodianAgreementObligation?;
    # Reference to Legal Term
    SubCustodianArrangement SubCustodianAgreementEntitlement?;
    # Reference to the regulation which is defined in Sub Custodian Agreement
    common:RuleSet SubCustodianAgreementRegulationReference?;
    # A Classification that distinguishes between the regularity domains of Sub Custodian Agreement
    common:Rulesettype SubCustodianAgreementRegulationType?;
    # Reference to the jurisdiction that is assigned to Sub Custodian Agreement in case of legal dispute.
    common:Jurisdiction SubCustodianAgreementJurisdiction?;
    # Reference to the account which is linked to Sub Custodian Agreement
    #
    # A characteristic of agreement which refers to its involved account to specify the account that will be used to register for the transactions in position keeping management.
    common:Account SubCustodianAgreementAccountReference?;
    # The subject matter of  Sub Custodian Agreement
    string SubCustodianAgreementSubjectMatter?;
    # Reference to the product which is linked to Sub Custodian Agreement
    #
    # Comment: 
    # A characteristic of agreement which refers to its related products that are sold by agreement.
    common:Product SubCustodianAgreementProductReference?;
    # The calendar of Sub Custodian Agreement
    common:Calendar SubCustodianAgreementCalendarReference?;
    # Reference to Legal Term
    common:Agreement SubCustodianAgreementAssociatedAgreementReference?;
};

public type SubCustodianLegalTermOk record {|
    *http:Ok;
    SubCustodianLegalTerm body;
|};

public type SubCustodianPolicyTermOk record {|
    *http:Ok;
    SubCustodianPolicyTerm body;
|};

public type SubCustodianRegulatoryTermOk record {|
    *http:Ok;
    SubCustodianRegulatoryTerm body;
|};

// --- syndicate_management_types.bal ---

# The Syndicate Eligibility Clauses defines a particular clause or consideration that is applied to determine eligibility for Syndicate Eligibility Clauses
public type SyndicateEligibilityClauses record {
    # Reference to Syndicate Eligibility Clauses
    string SyndicateMembershipReference?;
    # Reference to Syndicate Eligibility Clauses
    string SyndicateEligibilityClausesReference?;
    # The type of Syndicate Eligibility Clauses
    string SyndicateEligibilityClausesType?;
    # The Syndicate Eligibility Clauses specific Business Service
    common:BusinessService BusinessService?;
    # Reference to an entity that assigns and manages the identification.
    # tReference to the organization or agency that issued the identifier (e.g., DMV, Passport Office).
    common:Involvedparty BusinessUnitorEmployeeReference?;
    # The completion status once Syndicate Eligibility Clauses has been governed by applying the Syndicate Eligibility Clauses clause
    common:Condition Postconditions?;
    # The completion status once Syndicate Eligibility Clauses has been governed by applying the Syndicate Eligibility Clauses clause
    common:Condition Preconditions?;
    # The timing and key actions/milestones involved in governing Syndicate Eligibility Clauses by applying the Syndicate Eligibility Clauses clause
    common:Schedule Schedule?;
};

public type SyndicateMembershipOk record {|
    *http:Ok;
    SyndicateMembership body;
|};

# Maintain a membership for some group or related collection of parties within Syndicate Management. 
public type SyndicateMembership record {
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
    common:Featuretypevalues SyndicateMembershipParameterType?;
    # A selected optional business service as subject matter of Syndicate Membership
    common:Service SyndicateMembershipSelectedOption?;
    # Request to enroll Syndicate Membership
    common:Instruction SyndicateMembershipRequest?;
    # Reference to  Syndicate Membership Plan
    common:Plan SyndicateMembershipPlan?;
    # Liability or duty to do something under the terms of Syndicate Membership
    SyndicateArrangement SyndicateMembershipObligation?;
    # Liability or duty to do something under the terms of Syndicate Membership
    SyndicateArrangement SyndicateMembershipEntitlement?;
    # An unique reference to an item or an occurrence of Syndicate Membership
    string SyndicateMembershipReference?;
};

# Liability or duty to do something under the terms of Syndicate Membership
public type SyndicateArrangement record {
    # An agreed commitment to perform actions that meet obligations under an agreement
    string SyndicateArrangement?;
};

# The Syndicate Eligibility Clauses defines a particular clause or consideration that is applied to determine eligibility for Syndicate Eligibility Clauses
public type SyndicateComplianceClauses record {
    # Reference to Syndicate Compliance Clauses
    string SyndicateMembershipReference?;
    # Reference to Syndicate Compliance Clauses
    string SyndicateComplianceClausesReference?;
    # The type of Syndicate Compliance Clauses
    string SyndicateComplianceClausesType?;
    # The Syndicate Eligibility Clauses specific Business Service
    common:BusinessService BusinessService?;
    # Reference to an entity that assigns and manages the identification.
    # tReference to the organization or agency that issued the identifier (e.g., DMV, Passport Office).
    common:Involvedparty BusinessUnitorEmployeeReference?;
    # The completion status once Syndicate Eligibility Clauses has been governed by applying the Syndicate Eligibility Clauses clause
    common:Condition Postconditions?;
    # The completion status once Syndicate Eligibility Clauses has been governed by applying the Syndicate Eligibility Clauses clause
    common:Condition Preconditions?;
    # The timing and key actions/milestones involved in governing Syndicate Eligibility Clauses by applying the Syndicate Eligibility Clauses clause
    common:Schedule Schedule?;
};
