import financial.bian.attribute.groups.common as common;

import ballerina/http;

# Oversee the working of a business unit, assign work, manage against a plan and troubleshoot issues within Advanced Voice Services Management.
public type VoiceChannelManagementPlan record {
    # The period covered by the analysis (from to date time)
    common:Datetimeperiod VChannelManagementPlanPeriod?;
    # The channel policies and guidelines for service users
    common:RuleSet VChannelUsagePoliciesAndGuidelines?;
    # The default channel service configuration (Note this can be updated during operations with service calls to the channel operations service domain)
    common:Arrangement VChannelServiceOperatingParameters?;
    # The target and expected performance goals for the channel service
    common:Goal VChannelServicePerformanceGoals?;
    # Planned platform maintenance and upgrade tasks (includes release and capacity upgrades)
    common:Schedule VChannelServiceSchedule?;
};

public type MaintenanceAndUpgradesOk record {|
    *http:Ok;
    # body
    MaintenanceAndUpgrades body;
|};

# A collection of one or more responsibilities or tasks under management
#
# Examples: Relationship development, Troubleshooting
public type MaintenanceAndUpgrades record {
    # Planned platform maintenance and upgrade tasks (includes release and capacity upgrades)
    common:Schedule VChannelMaintenanceandUpgradeSchedule?;
    # The type of work task (e.g. scheduled maintenance, version release, platform upgrade)
    string VChannelMaintenanceandUpgradeWorkTaskType?;
    # The make-up of the channel platform task performed, includes work plan, assignments, effort/expenditures and deliverables as appropriate
    common:Task VChannelMaintenanceandUpgradeWorkTask?;
    # File of consolidated work notes, testing results, agreements etc. for the work task
    common:Workproduct VChannelMaintenanceandUpgradeWorkTaskWorkProducts?;
    # The make-up of the channel platform task performed, includes work plan, assignments, effort/expenditures and deliverables as appropriate
    common:Task VChannelMaintenanceandUpgradeWorkTaskResult?;
    # The date when the identifier became valid.
    common:Datetime VChannelMaintenanceandUpgradeWorkTaskDateandTime?;
};

public type VoiceChannelManagementPlanOk record {|
    *http:Ok;
    # body
    VoiceChannelManagementPlan body;
|};

# A collection of one or more responsibilities or tasks under management
#
# Examples: Relationship development, Troubleshooting
public type CapacityPlanning record {
    # Record of the channel resource utilization and loading
    string VChannelPlatformUtilization?;
    # Estimated projected resource utilization and loading based on historical patterns and anticipated activity - used to identify the need for capacity upgrades
    string VChannelLoadingProjections?;
};

# Set of rules for the purpose of deciding if or if not something is applicable
#
# Examples: Staff assignment, Facility allocation.
public type InventoryAllocation record {
    # The required status/situation before the allocation can be made
    common:Condition Preconditions?;
    # The schedule and timing of allocation decisions
    common:Schedule AllocationSchedule?;
    # The Inventory Allocation specific  Business Service
    common:BusinessService BusinessService?;
};

public type InventoryAllocationOk record {|
    *http:Ok;
    # body
    InventoryAllocation body;
|};

public type BranchCashAllocationOk record {|
    *http:Ok;
    # body
    BranchCashAllocation body;
|};

# Maintain an inventory or holding of some resource and make assignments/allocations as requested  within Branch Currency Management. 
# Example: Track the inventory and administer the distribution of central cash holdings throughout the branch & ATM network.
public type BranchCashAllocation record {
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
    common:Featuretypevalues BranchCashAllocationParameterType?;
    # A characteristic of service which refers 1) mainly to the function or condition of service. 2) to non-functional features like quality and security
    common:Feature BranchCashAllocationSelectedOption?;
    # A Classification value, that distinguishes between the the type of resource allocated withing the Branch Cash Allocation
    string BranchCashAllocation\<SubjectArea\>Type?;
    # Documentation of Branch Cash Allocation
    string BranchCashAllocationDescription?;
    # Request to allocate BranchCash
    common:Instruction BranchCashAllocationRequest?;
    # The schedule and timing of allocation decisions
    common:Schedule BranchCashAllocationSchedule?;
    # The status of the Branch Cash Allocation
    common:Status BranchCashAllocationStatus?;
    # Reference to the party who is involved in Branch Cash Allocation
    common:CashAllocation BranchCashAllocationReference?;
    # Reference to an entity that assigns and manages the identification.
    # tReference to the organization or agency that issued the identifier (e.g., DMV, Passport Office).
    common:Involvedparty BranchCashAllocationCustomerReference?;
    # The currency code for the Branch Cash Allocation
    common:Currencycode BranchCashAllocationCurrency?;
    # Reference to the regulation which is defined for Branch Cash Allocation
    common:Regulation BranchCashAllocationRegulationReference?;
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
    common:Rulesettypevalues BranchCashAllocationRegulationType?;
    # Reference to the jurisdiction that is assigned to Branch Cash Allocation in case of legal dispute.
    common:Jurisdiction BranchCashAllocationJurisdiction?;
    # The financial accounting unit into which the financial events, with regard to the origination and fulfillment of the agreement, are entered.
    common:Address BranchCashAllocationBookingLocation?;
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
    common:Accounttypevalues BranchCashAllocationAccountType?;
    # Reference to the account which is linked to Branch Cash Allocation
    common:Account BranchCashAllocationAccountReference?;
    # Reference to the party who is involved in Branch Cash Allocation
    common:CashAllocation BranchCashAllocationInstance?;
};

# Reference to Branch Location Management Plan
public type BranchLocationManagementPlan record {
    # The goal associated with the branch location management plan
    common:Goal PlanGoal?;
    # An arrangement which is specifying an estimate of costs, revenues, and resources over a specified period, reflecting a reading of future financial conditions and goals. (adapted from Business Dictionary)
    common:Budgetarrangement PlanBudget?;
    # An action that is arranged in a plan for doing or achieving something 
    common:Plannedaction PlannedAction?;
    # >
    # * `AdministrativePlan` - 
    # * `ManagementPlan` - 
    # * `StratgyPlan` - 
    # * `FinancialPlan` - 
    # * `DevelopmentPlan` - 
    common:Plantypevalues PlanType?;
    # The validity period of Condition
    common:Datetimeperiod PlanValidityPeriod?;
    # A textual description of the branch location management plan
    string PlanDescription?;
};

# Reference to Product and Service Planning
public type PlannedAction record {
    # The action associated with the arrangement
    common:Action ArrangementAction?;
    # The date when the identifier became valid.
    common:Datetime ArrangementStartDate?;
    # The date when the identifier became valid.
    common:Datetime ArrangementEndDate?;
    # A characteristic of arrangement which refers to the LifecycleStatus of arrangement (e.g., requested, proposed, offered, accepted, cancelled, terminated, fulfilled, etc.)
    common:Arrangementstatus ArrangementStatus?;
    # The subject matter or topic of the arrangement
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
    # The identifier of Condition
    common:Identifier ArrangementIdentification?;
};

# The Product and Service Planning is a specific role or responsibility that is one aspect of Product and Service Planning
public type StaffandLocationPlanning record {
    # The required status/situation before the duty/obligation can be met
    common:Condition Preconditions?;
    # Reference to an entity that assigns and manages the identification.
    # tReference to the organization or agency that issued the identifier (e.g., DMV, Passport Office).
    common:Involvedparty BusinessUnitEmployeeReference?;
    # The timing and key actions/milestones involved in fulfilling the duty
    common:Schedule Schedule?;
    # The Product and Service Planning specific Business Service
    common:BusinessService BusinessService?;
    # The required status/situation before the duty/obligation can be met
    common:Condition Postconditions?;
    # Reference to Product and Service Planning
    common:Plan BranchLocationManagementPlanReference?;
    # Reference to Product and Service Planning
    PlannedAction StaffandLocationPlanningReference?;
    # The type of Staff and Location Planning
    string StaffandLocationPlanningType?;
};

public type BranchLocationManagementPlanOk record {|
    *http:Ok;
    # body
    BranchLocationManagementPlan body;
|};

# The Product and Service Planning is a specific role or responsibility that is one aspect of Product and Service Planning
public type ProductandServicePlanning record {
    # The required status/situation before the duty/obligation can be met
    common:Condition Preconditions?;
    # Reference to an entity that assigns and manages the identification.
    # tReference to the organization or agency that issued the identifier (e.g., DMV, Passport Office).
    common:Involvedparty BusinessUnitEmployeeReference?;
    # The timing and key actions/milestones involved in fulfilling the duty
    common:Schedule Schedule?;
    # The Product and Service Planning specific Business Service
    common:BusinessService BusinessService?;
    # The required status/situation before the duty/obligation can be met
    common:Condition Postconditions?;
    # Reference to Product and Service Planning
    common:Plan BranchLocationManagementPlanReference?;
    # Reference to Product and Service Planning
    PlannedAction ProductandServicePlanningReference?;
    # The type of Product and Service Planning
    string ProductandServicePlanningType?;
};

# The Product and Service Planning is a specific role or responsibility that is one aspect of Product and Service Planning
public type CustomerLiaison record {
    # The required status/situation before the duty/obligation can be met
    common:Condition Preconditions?;
    # Reference to an entity that assigns and manages the identification.
    # tReference to the organization or agency that issued the identifier (e.g., DMV, Passport Office).
    common:Involvedparty BusinessUnitEmployeeReference?;
    # The timing and key actions/milestones involved in fulfilling the duty
    common:Schedule Schedule?;
    # The Product and Service Planning specific Business Service
    common:BusinessService BusinessService?;
    # The required status/situation before the duty/obligation can be met
    common:Condition Postconditions?;
    # Reference to Product and Service Planning
    common:Plan BranchLocationManagementPlanReference?;
    # Reference to Product and Service Planning
    PlannedAction CustomerLiaisonReference?;
    # The type of Customer Liaison
    string CustomerLiaisonType?;
};

public type CustomerLiaisonOk record {|
    *http:Ok;
    # body
    CustomerLiaison body;
|};

# Analyze the performance or behavior of some on-going activity or entity  within Case Root Cause Analysis. 
# Examples: Provide behavioral insights and analysis into customer behavior and analyze financial market activity in order to identify opportunities, define pricing and evaluate risks.
#
# Analyze the performance or behavior of some on-going activity or entity. Examples: Provide behavioral insights and analysis into customer behavior and analyze financial market activity in order to identify opportunities, define pricing and evaluate risks.
public type CustomerCaseRootCauseAnalysis record {
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
    common:Featuretypevalues CustomerCaseRootCauseAnalysisParameterType?;
    # A characteristic of service which refers 1) mainly to the function or condition of service. 2) to non-functional features like quality and security
    common:Feature CustomerCaseRootCauseAnalysisSelectedOption?;
    # Request to perform Customer Case Root Cause Analysis
    common:Instruction CustomerCaseRootCauseAnalysisRequest?;
    # The schedule and timing of the analysis performed using the algorithm
    common:Schedule CustomerCaseRootCauseAnalysisSchedule?;
    # Status of the customer case root cause analysis
    common:Status CustomerCaseRootCauseAnalysisStatus?;
    # Usage log of the customer case root cause analysis
    common:Log CustomerCaseRootCauseAnalysisUsageLog?;
    # Reference to an entity that assigns and manages the identification.
    # tReference to the organization or agency that issued the identifier (e.g., DMV, Passport Office).
    common:Involvedparty CustomerCaseRootCauseAnalysisRequesterReference?;
};

public type ProductandServiceIssueAnalysisOk record {|
    *http:Ok;
    # body
    ProductandServiceIssueAnalysis body;
|};

public type OperationsandServicingIssueAnalysisOk record {|
    *http:Ok;
    # body
    OperationsandServicingIssueAnalysis body;
|};

# A collection of models/calculations/algoritms that can be applied to a subject or activity
#
# Examples: Average balance calculation, Propensity to buy
public type CreditandFraudRelatedIssueAnalysis record {
    # The required status/situation before the algorithm can be applied
    common:Condition Preconditions?;
    # The schedule and timing of the analysis performed using the algorithm
    common:Schedule AnalysisSchedule?;
    # The algorithm version employed in the analysis
    string VersionNumber?;
    # The Credit and Fraud Related Issue Analysis specific  Business Service
    common:BusinessService BusinessService?;
};

public type CreditandFraudRelatedIssueAnalysisOk record {|
    *http:Ok;
    # body
    CreditandFraudRelatedIssueAnalysis body;
|};

# A collection of models/calculations/algoritms that can be applied to a subject or activity
#
# Examples: Average balance calculation, Propensity to buy
public type OperationsandServicingIssueAnalysis record {
    # The required status/situation before the algorithm can be applied
    common:Condition Preconditions?;
    # The schedule and timing of the analysis performed using the algorithm
    common:Schedule AnalysisSchedule?;
    # The algorithm version employed in the analysis
    string VersionNumber?;
    # The Credit and Fraud Related Issue Analysis specific  Business Service
    common:BusinessService BusinessService?;
};

# A collection of models/calculations/algoritms that can be applied to a subject or activity
#
# Examples: Average balance calculation, Propensity to buy
public type ProductandServiceIssueAnalysis record {
    # The required status/situation before the algorithm can be applied
    common:Condition Preconditions?;
    # The schedule and timing of the analysis performed using the algorithm
    common:Schedule AnalysisSchedule?;
    # The algorithm version employed in the analysis
    string VersionNumber?;
    # The Credit and Fraud Related Issue Analysis specific  Business Service
    common:BusinessService BusinessService?;
};

public type CustomerCaseRootCauseAnalysisOk record {|
    *http:Ok;
    # body
    CustomerCaseRootCauseAnalysis body;
|};

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

# A collection of models/calculations/algoritms that can be applied to a subject or activity
#
# Examples: Average balance calculation, Propensity to buy
public type Bot record {
    # Defines the intended analytical insights and required input data and outputs
    string ChannelActivityBotDetectionAnalysisAlgorithmSpecification?;
    # Reference to output from the applied algorithm
    common:Analysis ChannelActivityBotDetectionAnalysisReference?;
    # Reference to output from the applied algorithm
    common:Analysis ChannelActivityBotDetectionAnalysisResult?;
};

# A collection of models/calculations/algoritms that can be applied to a subject or activity
#
# Examples: Average balance calculation, Propensity to buy
public type CustomerBehavior record {
    # Defines the intended analytical insights and required input data and outputs
    string ChannelActivityCustomerBehaviorAnalysisAlgorithmSpecification?;
    # Reference to output from the applied algorithm
    common:Analysis ChannelActivityCustomerBehaviorAnalysisReference?;
    # Reference to output from the applied algorithm
    common:Analysis ChannelActivityCustomerBehaviorAnalysisResult?;
};

# A collection of models/calculations/algoritms that can be applied to a subject or activity
#
# Examples: Average balance calculation, Propensity to buy
public type DeviceError record {
    # Defines the intended analytical insights and required input data and outputs
    string ChannelActivityDeviceErrorDetectionAnalysisAlgorithmSpecification?;
    # Reference to output from the applied algorithm
    common:Analysis ChannelActivityDeviceErrorDetectionAnalysisReference?;
    # Reference to output from the applied algorithm
    common:Analysis ChannelActivityDeviceErrorDetectionAnalysisResult?;
};

public type ChannelActivityAnalysisOk record {|
    *http:Ok;
    # body
    ChannelActivityAnalysis body;
|};

# A collection of models/calculations/algoritms that can be applied to a subject or activity
#
# Examples: Average balance calculation, Propensity to buy
public type MerchantBehavior record {
    # Defines the intended analytical insights and required input data and outputs
    string ChannelActivityMerchantBehaviorAnalysisAlgorithmSpecification?;
    # Reference to output from the applied algorithm
    common:Analysis ChannelActivityMerchantBehaviorAnalysisReference?;
    # Reference to output from the applied algorithm
    common:Analysis ChannelActivityMerchantBehaviorAnalysisResult?;
};

# A collection of models/calculations/algoritms that can be applied to a subject or activity
#
# Examples: Average balance calculation, Propensity to buy
public type MerchantFraud record {
    # Defines the intended analytical insights and required input data and outputs
    string ChannelActivityMerchantFraudAnalysisAlgorithmSpecification?;
    # Reference to output from the applied algorithm
    common:Analysis ChannelActivityMerchantFraudAnalysisReference?;
    # Reference to output from the applied algorithm
    common:Analysis ChannelActivityMerchantFraudAnalysisResult?;
};

# The result of the analysis
public type ChannelActivityAnalysis record {
    # >
    # * `PerformanceAnalysis` - 
    # * `ActivityAnalysis` - 
    # * `RevenueAnalysis` - 
    # * `CostAnalysis` - 
    # * `PredictiveAnalysis` - 
    # * `BehavioralAnalysis` - 
    # * `ProfitabilityAnalysis` - 
    # * `CompetitiveAnalysis` - 
    # * `CohortAnalysis` - 
    # * `SegmentAnalysis` - 
    # * `SWOTAnalysis` - 
    # * `Benchmarking` - 
    # * `PositioningAnalysis` - 
    # * `ScenarioAnalysis` - 
    # * `IntelligenceGathering` - 
    # * `Profiling` - 
    common:Analysistypevalues AnalysisType?;
    # The result of the analysis performed
    string AnalysisResult?;
    # The period covered by the analysis (from to date time)
    common:Datetimeperiod AnalysisPeriod?;
    # Date and time at which the range starts. (ISO20022)
    common:Datetime AnalysisDateTime?;
    # The specification of the analysis to be performed
    string AnalysisSpecification?;
    # The schedule and timing of the analysis performed using the algorithm
    common:Schedule AnalysisSchedule?;
};

# A collection of models/calculations/algoritms that can be applied to a subject or activity
#
# Examples: Average balance calculation, Propensity to buy
public type CustomerFraud record {
    # Defines the intended analytical insights and required input data and outputs
    string ChannelActivityCustomerFraudAnalysisAlgorithmSpecification?;
    # Reference to output from the applied algorithm
    common:Analysis ChannelActivityCustomerFraudAnalysisReference?;
    # Reference to output from the applied algorithm
    common:Analysis ChannelActivityCustomerFraudAnalysisResult?;
};

public type ContactCenterManagementPlanOk record {|
    *http:Ok;
    # body
    ContactCenterManagementPlan body;
|};

# A collection of one or more responsibilities or tasks under management
#
# Examples: Relationship development, Troubleshooting
public type Performance record {
    # Record of the contact center position target and actual utilization
    string ContactCenterPositionUtilization?;
    # Estimated projected contact center resource requirements and utilization and loading based on historical patterns and anticipated activity
    string ContactCenterLoadingProjections?;
    # Tracked activity and performance statistics used to manage the contact center set-up and to inform staff training
    string ContactCenterServiceStatistics?;
    # The type of activity that is tracked and analyzed (e.g. wait time, average handle time, dropped call ratio, resolution rate)
    string ContactCenterServiceStatisticType?;
    # The statistical analysis that can include historical and trended views of the activity
    common:Amount ContactCenterServiceStatisticValue?;
    # The evaluation of the root cause or comparative assessments of the analysis
    string ContactCenterServiceStatisticInterpretation?;
    # Service/configuration amendment recommendations arising from the statistical analysis
    string ContactCenterServiceStatisticRecommendation?;
};

# Oversee the working of a business unit, assign work, manage against a plan and troubleshoot issues within Contact Center Management.
public type ContactCenterManagementPlan record {
    # The time period addressed by the management plan (typically this will include setting the default daily operating goals and arrangements for the contact center that is periodically updated)
    common:Datetimeperiod ContactCenterManagementPlanPeriod?;
    # The policies and guidelines for contact center employees and service users
    common:RuleSet ContactCenterUsagePoliciesAndGuidelines?;
    # The target and actual service performance goals that are tracked by contact center management
    common:Goal ContactCenterServicePerformanceGoals?;
    # The target and actual contact center service schedule - recording planned and actual service availability and outages (includes any partial service access constraints or restrictions for a 24/7 service)
    common:Schedule ContactCenterServiceSchedule?;
    # The default contact center operational configuration (Note this can include some latitude for position assignment changes to be made during day to day operations with service calls to the Contact Center Operations service domain)
    common:Arrangement ContactCenterServiceOperatingConfiguration?;
    # Details the number and skill profile of the contact center staff (target and actual)
    common:Plan ContactCenterResourcePlan?;
    # Details the number and skill profile of the contact center staff (target and actual)
    common:Plan ContactCenterTrainingPlan?;
};

# Create and maintain a design for a procedure, product/service model or other such entity  within Customer Behavior Models. 
# Example: Create and maintain product designs and analytical models.
public type CustomerBehaviorModelSpecification record {
    # >
    # * `DemographicModel` - Analyze customer behavior based on demographic factors such as age, gender, income, education, and occupation.
    # Example: Segmenting customers by age group to tailor marketing strategies.
    # * `PsychographicModel` - Focus on psychological attributes, including values, attitudes, interests, and lifestyles.
    # Example: Creating buyer personas based on lifestyle choices and interests.
    # * `GeographicModel` - Look at customer behavior based on geographic location, considering factors like regional preferences and climate.
    # Example: Targeting advertisements based on location-specific needs.
    # * `SocioeconomicModel` - Combine social and economic factors to understand consumer behavior
    # Example: Analyzing how economic status influences buying decisions
    # * `SituationalModel` - Consider the context or situation in which the consumer is making a decision, including time of day, season, and situational needs.
    # Example: Promoting holiday-related products during festive seasons.
    # * `CulturalModel` - Focus on the influence of culture, traditions, and social norms on consumer behavior.
    # Example: Adapting marketing messages to align with cultural values and practices.
    # * `Usage-BasedModel` - Segment customers based on how they use a product or service, including frequency and intensity of use.
    # Example: Differentiating between heavy, moderate, and light users of a product.
    # * `Benefit-SoughtModel` - Classify customers according to the benefits they seek from a product or service.
    # Example: Marketing products based on specific benefits like convenience, cost-saving, or luxury.
    # * `HybridModel` - Combine elements from various models to provide a comprehensive view of customer behavior.
    # Example: Using demographic, psychographic, and behavioral data together for more precise targeting
    common:Customerbehaviormodeltypevalues CustomerBehaviorModelType?;
    # A description of the model that clarifies the intended analysis/insights provided
    string CustomerBehaviorModelPurpose?;
    # Maintains the current deployment configuration of the model
    common:Arrangement CustomerBehaviorModelDeployment?;
    # Reference to an entity that assigns and manages the identification.
    # tReference to the organization or agency that issued the identifier (e.g., DMV, Passport Office).
    common:Involvedparty EmployeeorBusinessUnitReference?;
    # Details of the deployment for reference
    ModelDeploymentConfiguration CustomerBehaviorModelDeploymentConfiguration?;
    # Reference to a type of functional requirements specification activity
    common:Task CustomerBehaviorModelDeploymentTaskReference?;
    # Recorded details of a deployment task
    string CustomerBehaviorModelDeploymentTaskRecord?;
    # Defines rules and suitability for model usage
    common:ModelUsage CustomerBehaviorModelUsage?;
    # Status of the customer behavior model
    common:Status CustomerBehaviorModelStatus?;
    # Track reporting of the impact/accuracy of the model's insights
    ModelImpact CustomerBehaviorModelImpact?;
    # Release version of available model plus version history as appropriate
    string CustomerBehaviorModelVersion?;
    # The deployable model in any appropriate form (including historical versions as appropriate)
    common:CustomerBehaviorModel CustomerBehaviorModel?;
};

# Provides guidance on the use of the model
public type ModelUsageRuleSet record {
    # Definition of the rule set
    string RuleSetDefinition?;
    # Interpretation of the rule set
    string RuleSetInterpretation?;
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
    common:Rulesettypevalues RuleSetType?;
    # Name of the rule set
    common:Name RuleSetName?;
    # Identification of the rule set
    common:Identifier RuleSetIdentification?;
    # Lifecycle status of the rule set
    common:Status RuleSetLifecycleStatus?;
};


public type CustomerBehaviorModelSpecificationOk record {|
    *http:Ok;
    # body
    CustomerBehaviorModelSpecification body;
|};

# Details of the deployment for reference
public type ModelDeploymentConfiguration record {
    # Arrangement action for deployment
    common:Action ArrangementAction?;
    # The date when the identifier became valid.
    common:Datetime ArrangementStartDate?;
    # The date when the identifier became valid.
    common:Datetime ArrangementEndDate?;
    # A characteristic of arrangement which refers to the LifecycleStatus of arrangement (e.g., requested, proposed, offered, accepted, cancelled, terminated, fulfilled, etc.)
    common:Arrangementstatus ArrangementStatus?;
    # Subject matter of the arrangement
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
    # Identification of the arrangement
    common:Identifier ArrangementIdentification?;
};

# Reference to compliance conformance check for the specification
public type ComplianceCheck record {
    # Type of compliance check
    string ComplianceCheckType?;
};

# Track reporting of the impact/accuracy of the model's insights
public type ModelImpact record {
    # The impact/accuracy of the model's insights.
    string ModelImpact?;
};

# Oversee the working of a business unit, assign work, manage against a plan and troubleshoot issues within eBranch Management.
public type eBranchChannelManagementPlan record {
    # The time period addressed by the management plan
    common:Datetimeperiod eBranchChannelManagementPlanPeriod?;
    # The channel policies and guidelines for service users
    common:RuleSet eBranchChannelUsagePoliciesAndGuidelines?;
    # The default channel service configuration (Note this can be updated during operations with service calls to the channel operations service domain)
    common:Arrangement eBranchChannelServiceOperatingParameters?;
    # The target and actual service performance goals that are tracked by channel management
    common:Goal eBranchChannelServicePerformanceGoals?;
    # Planned platform maintenance and upgrade tasks (includes release and capacity upgrades)
    common:Schedule eBranchChannelServiceSchedule?;
};

public type EBranchChannelManagementPlanOk record {|
    *http:Ok;
    # body
    eBranchChannelManagementPlan body;
|};

# The main design elements/views making up the overall specification
#
# Examples: Business Requirements
public type Organization record {
    # The required status/situation before the specification aspect can be defined
    common:Condition Preconditions?;
    # The schedule and timing of the definition and update/revisions of the specification aspect
    common:Schedule SpecificationSchedule?;
    # The current version, and version history as appropriate for the specification aspect
    string VersionNumber?;
    # The Business Architecture specific  Business Service
    common:BusinessService BusinessService?;
};

# The main design elements/views making up the overall specification
#
# Examples: Business Requirements
public type InformationArchitecture record {
    # The required status/situation before the specification aspect can be defined
    common:Condition Preconditions?;
    # The schedule and timing of the definition and update/revisions of the specification aspect
    common:Schedule SpecificationSchedule?;
    # The current version, and version history as appropriate for the specification aspect
    string VersionNumber?;
    # The Business Architecture specific  Business Service
    common:BusinessService BusinessService?;
};

public type EnterpriseArchitectureSpecificationOk record {|
    *http:Ok;
    # Description of body
    EnterpriseArchitectureSpecification body;
|};

# The main design elements/views making up the overall specification
#
# Examples: Business Requirements
public type TechnologyInfrastructure record {
    # The required status/situation before the specification aspect can be defined
    common:Condition Preconditions?;
    # The schedule and timing of the definition and update/revisions of the specification aspect
    common:Schedule SpecificationSchedule?;
    # The current version, and version history as appropriate for the specification aspect
    string VersionNumber?;
    # The Business Architecture specific  Business Service
    common:BusinessService BusinessService?;
};

# The main design elements/views making up the overall specification
#
# Examples: Business Requirements
public type BusinessArchitecture record {
    # The required status/situation before the specification aspect can be defined
    common:Condition Preconditions?;
    # The schedule and timing of the definition and update/revisions of the specification aspect
    common:Schedule SpecificationSchedule?;
    # The current version, and version history as appropriate for the specification aspect
    string VersionNumber?;
    # The Business Architecture specific  Business Service
    common:BusinessService BusinessService?;
};

# Create and maintain a design for a procedure, product/service model or other such entity  within Business Architecture. 
# Example: Create and maintain product designs and analytical models.
public type EnterpriseArchitectureSpecification record {
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
    common:Featuretypevalues EnterpriseArchitectureSpecificationParameterType?;
    # A characteristic of service which refers 1) mainly to the function or condition of service. 2) to non-functional features like quality and security
    common:Feature EnterpriseArchitectureSpecificationSelectedOption?;
    # Documentation of Business Architecture Specification
    string EnterpriseArchitectureSpecificationDescription?;
    # The version of Business Architecture Specification
    string EnterpriseArchitectureSpecificationVersion?;
    # Description of EnterpriseArchitectureSpecificationStatus
    common:Status EnterpriseArchitectureSpecificationStatus?;
    # Reference to the log of (usage) ativities/events of Business Architecture Specification
    common:Log EnterpriseArchitectureSpecificationUsageLog?;
    # Information about reactions to a design which is used as a basis for improvement for the Business Architecture Specification.
    string EnterpriseArchitectureSpecificationFeedback?;
    # Reference to the party who has provided Business Architecture Specification
    string EnterpriseArchitectureSpecificationServiceProviderReference?;
};

# The main design elements/views making up the overall specification
#
# Examples: Business Requirements
public type ApplicationArchitecture record {
    # The required status/situation before the specification aspect can be defined
    common:Condition Preconditions?;
    # The schedule and timing of the definition and update/revisions of the specification aspect
    common:Schedule SpecificationSchedule?;
    # The current version, and version history as appropriate for the specification aspect
    string VersionNumber?;
    # The Business Architecture specific  Business Service
    common:BusinessService BusinessService?;
};

public type FraudModelSpecificationOk record {|
    *http:Ok;
    # body
    FraudModelSpecification body;
|};

# The deployable model in any appropriate form (including historical versions as appropriate)
public type FraudModel record {
    # The type or category of model  
    string ModelType?;
    # A description of the model that clarifies the intended analysis/insights provided
    string ModelPurpose?;
    # Model version
    string ModelVersion?;
    # Model name
    common:Name ModelName?;
    # Model date and time
    common:Datetime ModelDateAndTime?;
    # Model status
    common:Status ModelStatus?;
};

# Create and maintain a design for a procedure, product/service model or other such entity  within Fraud Model. 
# Example: Create and maintain product designs and analytical models.
public type FraudModelSpecification record {
    # The type or category of behavior model (e.g. Decision tree, Bayesian Linear Regression, Logistic Regression, Neural Network))
    string FraudModelType?;
    # A description of the model that clarifies the intended analysis/insights provided
    string FraudModelPurpose?;
    # Maintains the current deployment configuration of the model
    string FraudModelDeployment?;
    # Reference to the business units where the model is deployed and in use
    common:BusinessUnit EmployeeBusinessUnitReference?;
    # Details of the deployment for reference
    common:Arrangement FraudModelDeploymentConfiguration?;
    # Reference to a type of testing activity
    common:Task FraudModelDeploymentTaskReference?;
    # Reference to a type of testing activity
    common:Task FraudModelDeploymentTaskRecord?;
    # Status of the model deployment
    common:Status FraudModelStatus?;
    # Tracking deployment and usage frequency
    common:ModelUsage FraudModelUsage?;
    # Track reporting of the impact/accuracy of the model's insights
    string FraudModelImpact?;
    # Release version of available model plus version history as appropriate
    string FraudModelVersion?;
    # The deployable model in any appropriate form (including historical versions as appropriate)
    FraudModel FraudModel?;
};

# An indication or description of the commercial value of the intellectual property asset. This can combine a 'replacement' valuation and an licensing/assignment income assessment. The value can be an estimate and include actual realized income
public type AssetValuation record {
    # A value of some value aspect of an Asset. 
    string AssetValue?;
    # reference to the type of value expressed in the valuation.
    # this can be ratio, qualifier, amounts, etc.
    string AssetValueType?;
    # Type of a particular valuation. Possible types are ad hoc-external valuer, ad hoc-internal valuer, scheduö
    # led external valuer, scheduled internal valuer
    string AssetValuationType?;
    # The date when the identifier became valid.
    common:Datetime AssetValuationDate?;
    # Description of AssetValuationRate
    common:Rate AssetValuationRate?;
    # Description of AssetValuationStatus
    common:Status AssetValuationStatus?;
    # Period of time during which the status is valid.
    common:Datetimeperiod AssetValuationValidityPeriod?;
    # Amount at which the asset has been valued at a particular valuation
    common:Amount AsseValuationAmount?;
    # >
    # * `Valuation` - 
    # * `Matching` - 
    # * `Authorization` - An evaluation whether a party or system is allowed to do something.
    #
    # The consent given by a participant (or a third party acting on behalf of that participant) in order to transfer funds or securities. (ECB)
    #
    # Authorization is a mechanism by which a computer system determines whether to allow or deny specific action to a user. Authorization is often controlled by rather complex rules and algorithms, usually specified as part of an access control model. Authorization often follows (and required) authentication, however, authentication and authorization are two separate mechanisms. In rare cases, "authorization" is understood as a process of allowing access, granting permissions or giving approval. Such as "authorization" of a request to join a group. (ISO/IEC 24760-1:2019 - IT Security and Privacy)
    # * `Authentication` - An evaluation whether a party or system is what it claims to be.
    #
    # A security mechanism for verifying: 1) the identity of an individual or other entity (including verification by means of a computer or computer application); and 2) the level of authority of that person or entity (i.e. the ability of that person or entity to perform specific tasks or activities). (ECB)
    #
    # Authentication is a mechanism by which a computer system checks that the user is really the one she or he claims to be. Authentication can be implemented by a broad variety of mechanisms broadly divided into three categories: something you know, something you have, something you are. Traditionally, authentication is done by the means of by username and password. Authentication is often followed by authorization, however, authentication and authorization are two separate mechanisms. (ISO/IEC 24760-1:2019 - IT Security and Privacy)
    # * `QualityAssurance` - 
    # * `Audit` - 
    # * `ComplianceCheck` - 
    # * `FundingCheck` - 
    # * `SuitabilityCheck` - 
    # * `PerformanceCheck` - 
    # * `ImpactAssessment` - 
    # * `RiskAssessment` - 
    # * `Rating` - 
    # * `UnderwritingAssessment` - 
    # * `Qualification` - 
    # * `Verification` - A process establishing that a particular information is correct, while the meaning of "information" and "correct" varies from context to context. When dealing with identity information, this usually means formal verification of identity attributes, checking the schema, identifier uniqueness and referential integrity. However, verification may mean deeper verification, such as checking that the information is true and up-to-date.  (ISO/IEC 24760-1:2019 - IT Security and Privacy)
    #
    # * `KYCAssessment` - An assessment conducted by businesses and financial institutions to verify and confirm the identity of their customers or clients. The primary purpose of a KYC check is to prevent illegal activities, such as money laundering, terrorist financing, and fraud, by ensuring that customers are who they claim to be.
    # * `PEPAssessment` - A PEP check, or "Politically Exposed Person" check, is an assessment conducted by used by businesses, financial institutions, and government agencies to identify individuals who hold prominent public positions or have significant political influence. The purpose of a PEP check is to assess and manage the potential risks associated with doing business with these individuals, as they may be more susceptible to corruption, money laundering, or other illicit activities.
    # * `AMLAssessment` - An AML (Anti-Money Laundering) check is an assessment conducted by businesses, financial institutions, and other organizations to prevent and detect money laundering and the financing of criminal activities. The main purpose of an AML check is to ensure that financial transactions and business relationships are not being used to disguise the illegal origins of funds.
    # * `EligibilityCheck` - Determines whether a person or case meets the criteria or preconditions to qualify for a benefit, service, or action.
    # * `ExternalAgencyCheck` - 
    # * `EntitlementCheck` - Determines what benefit, amount, or service the person is actually entitled to receive once eligibility is confirmed.
    common:Assessmenttypevalues AssessmentType?;
    # Description of AssessmentMethod
    string AssessmentMethod?;
    # The schedule for maintenance tasks performed and to be performed (e.g. patent renewals)
    common:Schedule AssessmentSchedule?;
    # Description of AssessmentDescription
    string AssessmentDescription?;
    # Description of AssessmentModel
    common:Model AssessmentModel?;
    # The date when the identifier became valid.
    common:Datetime AssessmentDateTime?;
    # Description of AssessmentResult
    string AssessmentResult?;
    # Document that provides background or corroborating information regarding an assessment(s).
    common:Document AssessmentSupportingDocument?;
    # Document that provides background or corroborating information regarding an assessment(s).
    common:Document AssessmentRepresentingDocument?;
    # Change that the assessment reveals is needed.
    string AssessmentRequiredAdjustment?;
    # Description of AssessmentRequirement
    common:Requirement AssessmentRequirement?;
    # Description of AssessmentExpiryDate
    common:Date AssessmentExpiryDate?;
    # Description of AssessmentStatus
    common:Status AssessmentStatus?;
    # Description of AssessmentIdentification
    common:Identifier AssessmentIdentification?;
};

# Reference to the intellectual property asset item
public type Asset record {
    # Description of AssetTitle
    string AssetTitle?;
    # Description of AssetIdentification
    common:Identifier AssetIdentification?;
    # >
    # * `TangibleAsset` - It has a physical form and can be touched or seen.
    # * `IntangibleAsset` - It doesn't have a physical form but hold value
    # * `OperatingAsset` - Used in the day-to-day operations of the business.
    # * `Non-OperatingAsset` - Not used in core business operations but still provide value
    # * `CurrentAsset` - Expected to be converted into cash within one year.
    # * `Non-Current(Fixed)Asset` - Provide value over the long term (more than one year).
    # * `PersonalAsset` - Owned by individuals and not related to a business.
    # * `BusinessAsset` - Owned by a business and used to generate revenue.
    common:Assettypevalues AssetType?;
    # Description of the asset 
    string AssetDescription?;
    # Description of AssetStatus
    common:Status AssetStatus?;
    # The date when the identifier became valid.
    common:Datetime AssetDate?;
    # Classification of the asset.(ISO20022)
    string AssetClassification?;
    # Description of AssetClassificationType
    common:Assetclassificationtypevalues AssetClassificationType?;
    # >
    # * `Subassetclass` - Sub-asset class.(ISO20022)
    # * `Timetomaturitybucket` - Time to maturity bucket.(ISO20022)
    # * `Optiontimetomaturitybucket` - Time to maturity bucket of the option.(ISO20022)
    # * `Swaptimetomaturitybucket` - Time to maturity bucket of the swap.(ISO20022)
    # * `Underlyinginstrumentidentification` - Underlying instrument identification, such as an ISIN code.(ISO20022)
    # * `Underlyingbondissuer` - Issuer of the underlying bond.(ISO20022)
    # * `Underlyinginterestrate` - Underlying interest rate.(ISO20022)
    # * `Underlyingbondterm` - Term of the underlying bond.(ISO20022)
    # * `Assetclass` - Asset class.(ISO20022)
    # * `Underlyingindexidentification` - Underlying index identification such as an ISIN or an index name.(ISO20022)
    # * `Interestratetermofcontract` - Interest rate term of contract.(ISO20022)
    # * `Underlyingreferenceentity` - Underlying reference entity.(ISO20022)
    # * `Sovereignandpublictypeissuer` - Issuer of sovereign and public type.(ISO20022)
    # * `Irdnotionalcurrency1` - Interest rate derivative notional currency 1.(ISO20022)
    # * `Fexnotionalcurrency1` - Foreign exchange derivative notional currency 1.(ISO20022)
    # * `Cfdnotionalcurrency1` - Contract for difference notional currency 1.(ISO20022)
    # * `Fexnotionalcurrency2` - Foreign exchange derivative notional currency 2.(ISO20022)
    # * `Irdnotionalcurrency2` - Interest rate derivative notional currency 2.(ISO20022)
    # * `Cfdnotionalcurrency2` - Contract for difference notional currency 2.(ISO20022)
    # * `Swaptionnotionalcurrency` - Notional currency of the swaption.(ISO20022)
    # * `Creditnotionalcurrency` - Credit derivative notional currency.(ISO20022)
    # * `Commoditynotionalcurrency` - Commodity derivative notional currency.(ISO20022)
    # * `Contracttype` - Contract type.(ISO20022)
    # * `Baseproduct` - Base product.(ISO20022)
    # * `Subproduct` - Sub product.(ISO20022)
    # * `Furthersubproduct` - Further sub product.(ISO20022)
    # * `Deliverycashlocation` - Delivery cash settlement location.(ISO20022)
    # * `Deliverysettlementtype` - Delivery settlement type.(ISO20022)
    # * `Sizespecificationrelatedtofreightsubtype` - Size specification related to freight subtype.(ISO20022)
    # * `Specificroutetimecharteraverage` - Specific route time charter average.(ISO20022)
    # * `Equityunderlyingtype` - Equity derivative underlying type.(ISO20022)
    # * `Parameter` - Parameter.(ISO20022)
    # * `Inflationindexcodename` - Inflation index code or name.(ISO20022)
    # * `ISIN` - Instrument identification.(ISO20022)
    # * `Underlyingindexcdssubclassidentification` - Sub class of the underlying index credit default swap (CDS).(ISO20022)
    # * `Underlyingtype` - Underlying type.(ISSO20022)
    common:Assetsubclassificationtypevalues AssetSubClassificationType?;
    # Description of AssetSubClassification
    string AssetSubClassification?;
};

public type AssignmentOk record {|
    *http:Ok;
    # Description of body
    common:Assignment body;
|};

public type IntellectualPropertyAdministrativePlanOk record {|
    *http:Ok;
    # Description of body
    IntellectualPropertyAdministrativePlan body;
|};

# A collection of one or more clerical routines that are to be followed to administer the operational unit/function
#
# Examples: Time-sheet recording
public type Maintenance record {
    # The schedule for maintenance tasks performed and to be performed (e.g. patent renewals)
    common:Schedule IntellectualPropertyAssetMaintenanceSchedule?;
    # Reference to the intellectual property protection mechanism employed (e.g. copyright, trademark or patent reference number)
    string IntellectualPropertyAssetProtectionReference?;
    # Reference to the registration entity for the intellectual property protection mechanism (e.g. U.S. Patent Office)
    string IntellectualPropertyAssetRegistrationReference?;
    # A record of payments and other actions taken to maintain the asset
    common:Task IntellectualPropertyAssetMaintenanceTaskRecord?;
    # The type of maintenance task (e.g. annual renewal)
    string IntellectualPropertyAssetMaintenanceTaskType?;
    # Description of the task performed
    string IntellectualPropertyAssetMaintenanceTaskDescription?;
    # File of consolidated notes, forms and documents for the maintenance task
    common:Workproduct IntellectualPropertyAssetMaintenanceTaskWorkProducts?;
    # Reference to associated documents
    common:DocumentDirectoryEntry DocumentDirectoryEntryInstanceReference?;
    # Details of any payments made as part of maintenance
    common:Transaction IntellectualPropertyAssetMaintenanceTransaction?;
};

public type MaintenanceOk record {|
    *http:Ok;
    # Description of body
    Maintenance body;
|};

# Handle and assign the day to day activities, capture time, costs and income for an operational unit within Intellectual Property Portfolio. 
public type IntellectualPropertyAdministrativePlan record {
    # Reference to the intellectual property asset item
    Asset IntellectualPropertyAssetReference?;
    # Reference to the intellectual property asset item
    Asset IntellectualPropertyAssetRecord?;
    # >
    # * `TangibleAsset` - It has a physical form and can be touched or seen.
    # * `IntangibleAsset` - It doesn't have a physical form but hold value
    # * `OperatingAsset` - Used in the day-to-day operations of the business.
    # * `Non-OperatingAsset` - Not used in core business operations but still provide value
    # * `CurrentAsset` - Expected to be converted into cash within one year.
    # * `Non-Current(Fixed)Asset` - Provide value over the long term (more than one year).
    # * `PersonalAsset` - Owned by individuals and not related to a business.
    # * `BusinessAsset` - Owned by a business and used to generate revenue.
    common:Assettypevalues IntellectualPropertyAssetType?;
    # Description of significant details and properties of the intellectual property asset
    string IntellectualPropertyAssetDescription?;
    # Details of title ownership, including assigned usage rights
    string IntellectualPropertyAssetTitle?;
    # Details of scope of coverage of the intellectual property asset (e.g. geographic coverage, allowed usage type coverage)
    common:Jurisdiction IntellectualPropertyAssetJurisdiction?;
    # Reference to an entity that assigns and manages the identification.
    # tReference to the organization or agency that issued the identifier (e.g., DMV, Passport Office).
    common:Involvedparty IntellectualPropertyAssetCreator?;
    # An indication or description of the commercial value of the intellectual property asset. This can combine a 'replacement' valuation and an licensing/assignment income assessment. The value can be an estimate and include actual realized income
    AssetValuation IntellectualPropertyAssetValuation?;
    # Reference to associated documents
    common:DocumentDirectoryEntry DocumentDirectoryEntryInstanceReference?;
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
};

public type ProductionEnvironmentandSupportServicesOk record {|
    *http:Ok;
    # body
    ProductionEnvironmentandSupportServices body;
|};

public type ProductTestingandDeploymentMechanismsOk record {|
    *http:Ok;
    # body
    ProductTestingandDeploymentMechanisms body;
|};


public type ProductionPlatformsandInfrastructureOk record {|
    *http:Ok;
    # body
    ProductionPlatformsandInfrastructure body;
|};

# The main design elements/views making up the overall specification
#
# Examples: Business Requirements
public type ITPoliciesandGuidelines record {
    # The required status/situation before the specification aspect can be defined
    common:Condition Preconditions?;
    # The schedule and timing of the definition and update/revisions of the specification aspect
    common:Schedule SpecificationSchedule?;
    # The current version, and version history as appropriate for the specification aspect
    string VersionNumber?;
    # The IT Policies and Guidelines specific  Business Service
    common:BusinessService BusinessService?;
};

# The main design elements/views making up the overall specification
#
# Examples: Business Requirements
public type DevelopmentToolingandEnvironment record {
    # The required status/situation before the specification aspect can be defined
    common:Condition Preconditions?;
    # The schedule and timing of the definition and update/revisions of the specification aspect
    common:Schedule SpecificationSchedule?;
    # The current version, and version history as appropriate for the specification aspect
    string VersionNumber?;
    # The IT Policies and Guidelines specific  Business Service
    common:BusinessService BusinessService?;
};

# The main design elements/views making up the overall specification
#
# Examples: Business Requirements
public type ProductionEnvironmentandSupportServices record {
    # The required status/situation before the specification aspect can be defined
    common:Condition Preconditions?;
    # The schedule and timing of the definition and update/revisions of the specification aspect
    common:Schedule SpecificationSchedule?;
    # The current version, and version history as appropriate for the specification aspect
    string VersionNumber?;
    # The IT Policies and Guidelines specific  Business Service
    common:BusinessService BusinessService?;
};

public type DevelopmentToolingandEnvironmentOk record {|
    *http:Ok;
    # body
    DevelopmentToolingandEnvironment body;
|};

# The main design elements/views making up the overall specification
#
# Examples: Business Requirements
public type ProductionPlatformsandInfrastructure record {
    # The required status/situation before the specification aspect can be defined
    common:Condition Preconditions?;
    # The schedule and timing of the definition and update/revisions of the specification aspect
    common:Schedule SpecificationSchedule?;
    # The current version, and version history as appropriate for the specification aspect
    string VersionNumber?;
    # The IT Policies and Guidelines specific  Business Service
    common:BusinessService BusinessService?;
};

# Create and maintain a design for a procedure, product/service model or other such entity  within IT Standards & Guidelines. 
# Example: Create and maintain product designs and analytical models.
public type TechnologyStandardsSpecification record {
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
    common:Featuretypevalues TechnologyStandardsSpecificationParameterType?;
    # A characteristic of service which refers 1) mainly to the function or condition of service. 2) to non-functional features like quality and security
    common:Feature TechnologyStandardsSpecificationSelectedOption?;
    # Documentation of Technology Standards Specification
    string TechnologyStandardsSpecificationDescription?;
    # The version of Technology Standards Specification
    string TechnologyStandardsSpecificationVersion?;
    # Reference to the log of (usage) ativities/events of Technology Standards Specification
    common:Log TechnologyStandardsSpecificationUsageLog?;
    # Information about reactions to a design which is used as a basis for improvement for the Technology Standards Specification.
    string TechnologyStandardsSpecificationFeedback?;
    # The current status of the Technology Standards Specification
    common:Status TechnologyStandardsSpecificationStatus?;
    # Reference to an entity that assigns and manages the identification.
    # tReference to the organization or agency that issued the identifier (e.g., DMV, Passport Office).
    common:Involvedparty TechnologyStandardsSpecificationServiceProviderReference?;
};

public type ITPoliciesandGuidelinesOk record {|
    *http:Ok;
    # body
    ITPoliciesandGuidelines body;
|};

# The main design elements/views making up the overall specification
#
# Examples: Business Requirements
public type ProductTestingandDeploymentMechanisms record {
    # The required status/situation before the specification aspect can be defined
    common:Condition Preconditions?;
    # The schedule and timing of the definition and update/revisions of the specification aspect
    common:Schedule SpecificationSchedule?;
    # The current version, and version history as appropriate for the specification aspect
    string VersionNumber?;
    # The IT Policies and Guidelines specific  Business Service
    common:BusinessService BusinessService?;
};

public type TechnologyStandardsSpecificationOk record {|
    *http:Ok;
    # body
    TechnologyStandardsSpecification body;
|};

public type IntellectualPropertyExchangeOperatingSessionOk record {|
    *http:Ok;
    # Description of body
    IntellectualPropertyExchangeOperatingSession body;
|};

# An operational service or function supported within the Archiving for doing Archiving
public type CaptureandClassification record {
    # The required status/situation and or tasks that need to be completed prior to the invocation of the feature
    common:Condition Preconditions?;
    # The schedule and timing of the function
    common:Schedule Schedule?;
    # The Archiving specific Business Service
    common:BusinessService BusinessService?;
    # Reference to Archiving
    common:Session IntellectualPropertyExchangeOperatingSessionReference?;
    # Reference to Archiving
    common:Function CaptureandClassificationReference?;
    # The type of Capture and Classification
    string CaptureandClassificationType?;
};

# Operate equipment and/or a largely automated facility  within Knowledge Exchange. 
# Example: Operate the bank's internal intranet facility.
public type IntellectualPropertyExchangeOperatingSession record {
    # The schedule and timing of the function
    common:Schedule IntellectualPropertyExchangeOperatingSessionSchedule?;
    # Description of IntellectualPropertyExchangeOperatingSessionStatus
    common:Status IntellectualPropertyExchangeOperatingSessionStatus?;
    # Reference to the log of (usage) ativities/events  of Intellectual Property Exchange Operating Session
    common:Log IntellectualPropertyExchangeOperatingSessionUsageLog?;
    # Reference to Archiving
    common:Session IntellectualPropertyExchangeOperatingSessionReference?;
    # Reference to an entity that assigns and manages the identification.
    # tReference to the organization or agency that issued the identifier (e.g., DMV, Passport Office).
    common:Involvedparty IntellectualPropertyExchangeOperatingSessionServiceProviderReference?;
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
    common:Sessiontypevalues IntellectualPropertyExchangeOperatingSessionType?;
    # The schedule and timing of the function
    common:Schedule IntellectualPropertyExchangeOperatingSessionServiceProviderSchedule?;
    # >
    # * `ITService` - 
    # * `AdministrativeService` - 
    # * `SystemService` - 
    # * `FinancialService` - 
    # * `InformationService` - 
    # * `BusinessService` - 
    common:Servicetypevalues IntellectualPropertyExchangeOperatingSessionServiceType?;
    # The configuration of Intellectual Property Exchange Operating Session
    common:Arrangement IntellectualPropertyExchangeOperatingSessionServiceConfiguration?;
};

public type CaptureandClassificationOk record {|
    *http:Ok;
    # Description of body
    CaptureandClassification body;
|};

# An operational service or function supported within the Archiving for doing Archiving
public type IndexingandPublication record {
    # The required status/situation and or tasks that need to be completed prior to the invocation of the feature
    common:Condition Preconditions?;
    # The schedule and timing of the function
    common:Schedule Schedule?;
    # The Archiving specific Business Service
    common:BusinessService BusinessService?;
    # Reference to Archiving
    common:Session IntellectualPropertyExchangeOperatingSessionReference?;
    # Reference to Archiving
    common:Function IndexingandPublicationReference?;
    # The type of Indexing and Publication
    string IndexingandPublicationType?;
};

# An operational service or function supported within the Archiving for doing Archiving
public type MaintenanceandAccessAdministration record {
    # The required status/situation and or tasks that need to be completed prior to the invocation of the feature
    common:Condition Preconditions?;
    # The schedule and timing of the function
    common:Schedule Schedule?;
    # The Archiving specific Business Service
    common:BusinessService BusinessService?;
    # Reference to Archiving
    common:Session IntellectualPropertyExchangeOperatingSessionReference?;
    # Reference to Archiving
    common:Function MaintenanceandAccessAdministrationReference?;
    # The type of Maintenance and Access Administration
    string MaintenanceandAccessAdministrationType?;
};

# An operational service or function supported within the Archiving for doing Archiving
public type Archiving record {
    # The required status/situation and or tasks that need to be completed prior to the invocation of the feature
    common:Condition Preconditions?;
    # The schedule and timing of the function
    common:Schedule Schedule?;
    # The Archiving specific Business Service
    common:BusinessService BusinessService?;
    # Reference to Archiving
    common:Session IntellectualPropertyExchangeOperatingSessionReference?;
    # Reference to Archiving
    common:Function ArchivingReference?;
    # The type of Archiving
    string ArchivingType?;
};

# An operational service or function supported within the Archiving for doing Archiving
public type Review_RefinementandEditing record {
    # The required status/situation and or tasks that need to be completed prior to the invocation of the feature
    common:Condition Preconditions?;
    # The schedule and timing of the function
    common:Schedule Schedule?;
    # The Archiving specific Business Service
    common:BusinessService BusinessService?;
    # Reference to Archiving
    common:Session IntellectualPropertyExchangeOperatingSessionReference?;
    # Reference to Archiving
    common:Function Review_RefinementandEditingReference?;
    # The type of Review, Refinement and Editing
    string Review_RefinementandEditingType?;
};

# Create and maintain a design for a procedure, product/service model or other such entity  within Credit Risk Models. 
# Example: Create and maintain product designs and analytical models.
public type CreditRiskModelSpecification record {
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
    common:Featuretypevalues CreditRiskModelSpecificationParameterType?;
    # A characteristic of service which refers 1) mainly to the function or condition of service. 2) to non-functional features like quality and security
    common:Feature CreditRiskModelSpecificationSelectedOption?;
    # Documentation of Credit Risk Model Specification
    string CreditRiskModelSpecificationDescription?;
    # The version of Credit Risk Model Specification
    string CreditRiskModelSpecificationVersion?;
    # Description of CreditRiskModelSpecificationStatus
    common:Status CreditRiskModelSpecificationStatus?;
    # Reference to the log of (usage) ativities/events of Credit Risk Model Specification
    common:Log CreditRiskModelSpecificationUsageLog?;
    # Information about reactions to a design which is used as a basis for improvement for the Credit Risk Model Specification.
    string CreditRiskModelSpecificationFeedback?;
    # Reference to an entity that assigns and manages the identification.
    # tReference to the organization or agency that issued the identifier (e.g., DMV, Passport Office).
    common:Involvedparty CreditRiskModelSpecificationServiceProviderReference?;
};

public type CreditRiskModelSpecificationOk record {|
    *http:Ok;
    # Description of body
    CreditRiskModelSpecification body;
|};

# Operate equipment and/or a largely automated facility within Market Data Switch Operation. 
public type InformationFeedSwitchOperatingSession record {
    # This is the uploaded market information that is distributed over the switch - its content is updated dynamically during the operating session
    common:Service MarketInformationFeedServiceReference?;
    # Defines the range of internally published information services/pages
    common:Profile MarketInformationFeedServiceProfile?;
};

# The collection of operational serivces/functions offered by the operational facility
#
# Examples: messages, capture, routines
public type InternalPublication record {
    # This is the uploaded market information that is distributed over the switch - its content is updated dynamically during the operating session
    common:Service InternalInformationFeedServiceReference?;
    # Defines the range of internally published information services/pages
    common:Profile InternalInformationFeedServiceProfile?;
    # Reference to 'live' internal pages of information that is published
    string InternalInformationFeedServiceRecordReference?;
    # This is the uploaded market information that is distributed over the switch - its content is updated dynamically during the operating session
    common:Service InternalInformationFeedServiceRecord?;
};

public type InformationFeedSwitchOperatingSessionOk record {|
    *http:Ok;
    # body
    InformationFeedSwitchOperatingSession body;
|};

public type DistributionOk record {|
    *http:Ok;
    # body
    Distribution body;
|};

# The collection of operational serivces/functions offered by the operational facility
#
# Examples: messages, capture, routines
public type FeedUpload record {
    # Reference to packets of information/records provided, perhaps with real-time updates
    string MarketInformationFeedServiceRecordReference?;
    # This is the uploaded market information that is distributed over the switch - its content is updated dynamically during the operating session
    common:Service MarketInformationFeedServiceRecord?;
};

public type InternalPublicationOk record {|
    *http:Ok;
    # body
    InternalPublication body;
|};

# The collection of operational serivces/functions offered by the operational facility
#
# Examples: messages, capture, routines
public type Distribution record {
    # Reference to a user's switch service access rights
    string MarketDataSwitchUserAccessRightsRecordReference?;
    # The users are registered to access different services/information made available through the switch - it is used to control information distribution
    common:Arrangement MarketDataSwitchUserAccessRightsRecord?;
    # This tracks the switch service content that the user will receive for this session - reflecting their user access rights
    common:Session MarketDataSwitchServiceUserSessionRecord?;
};

# A collection of one or more deliverables that may be further defined in terms of an approach to be followed to create them
#
# Examples: Functional module specification
public type ProductionSupport record {
    # The consolidated aspects of the servicing deployment tasks
    common:Requirement ProductandServiceDeploymentProductionSupportRequirements?;
    # File of consolidated deployment planning and deliverable specifications for the task
    common:Workproduct ProductandServiceDeploymentProductionSupportRequirementsWorkProducts?;
    # Reference to associated documents
    common:DocumentDirectoryEntry DocumentDirectoryEntryInstanceReference?;
    # Details the tasks and deliverables needed to handle the production support needs of the deployment
    string ProductandServiceDeploymentProductionSupportRequirementsTaskSpecification?;
};

# To build or enhance something, typically an IT production systems  within Product Deployment. Includes development, Assessment and deployment activities.
# Example: Build, enhance, test and deploy a major enhancement to a production product processing system.
public type ProductandServiceDeploymentDevelopment record {
    # The reference to and descriptive name of the deployment project
    common:Name ProductandServiceDeploymentProjectName?;
    # The type of deployment project (e.g. service update, new product release)
    string ProductandServiceDeploymentProjectType?;
    # A description of the scope, goal and make-up of the product deployment project
    string ProductandServiceDeploymentProjectDescription?;
    # The derived deployment execution plan, covering tasks from the completion and acceptance of the deployment plan through to completion of the deployment including post deployment analysis tasks if required. Consolidates the different aspects of the plan. (Captures both planned and actual results)
    common:Plan ProductandServiceDeploymentImplementationPlan?;
    # The financial considerations for the deployment (includes planning and execution)
    common:Budgetarrangement ProductandServiceDeploymentBudget?;
    # The organizational aspects of the deployment effort (includes planning and execution)
    common:Organisation ProductandServiceDeploymentOrganization?;
    # The deployment schedule of events, planned and actual (includes planning and execution tasks)
    common:Schedule ProductandServiceDeploymentSchedule?;
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
};

# A collection of one or more deliverables that may be further defined in terms of an approach to be followed to create them
#
# Examples: Functional module specification
public type Systems record {
    # The consolidated aspects of the servicing deployment tasks
    common:Requirement ProductandServiceDeploymentSystemsRequirements?;
    # File of consolidated deployment planning and deliverable specifications for the task
    common:Workproduct ProductandServiceDeploymentSystemsRequirementsWorkProducts?;
    # Reference to associated documents
    common:DocumentDirectoryEntry DocumentDirectoryEntryInstanceReference?;
    # Details the tasks and deliverables needed to handle the systems needs of the deployment
    string ProductandServiceDeploymentSystemsRequirementsTaskSpecification?;
};

# A collection of one or more deliverables that may be further defined in terms of an approach to be followed to create them
#
# Examples: Functional module specification
public type ITOperations record {
    # The consolidated aspects of the servicing deployment tasks
    common:Requirement ProductandServiceDeploymentITOperationsRequirements?;
    # File of consolidated deployment planning and deliverable specifications for the task
    common:Workproduct ProductandServiceDeploymentITOperationsRequirementsWorkProducts?;
    # Reference to associated documents
    common:DocumentDirectoryEntry DocumentDirectoryEntryInstanceReference?;
    # Details the tasks and deliverables needed to handle the IT operations needs of the deployment
    string ProductandServiceDeploymentITOperationsRequirementsTaskSpecification?;
};

# A collection of one or more deliverables that may be further defined in terms of an approach to be followed to create them
#
# Examples: Functional module specification
public type HROperations record {
    # The consolidated aspects of the servicing deployment tasks
    common:Requirement ProductandServiceDeploymentHROperationsRequirements?;
    # File of consolidated deployment planning and deliverable specifications for the task
    common:Workproduct ProductandServiceDeploymentHROperationsRequirementsWorkProducts?;
    # Reference to associated documents
    common:DocumentDirectoryEntry DocumentDirectoryEntryInstanceReference?;
    # Details the tasks and deliverables needed to handle the staffing operations needs of the deployment
    string ProductandServiceDeploymentHROperationsRequirementsTaskSpecification?;
};

public type ProductandServiceDeploymentDevelopmentOk record {|
    *http:Ok;
    # body
    ProductandServiceDeploymentDevelopment body;
|};

public type ProductorServiceSpecificationOk record {|
    *http:Ok;
    # body
    ProductorServiceSpecification body;
|};

# Create and maintain a design for a procedure, product/service model or other such entity  within Product Design. 
# Example: Create and maintain product designs and analytical models.
public type ProductorServiceSpecification record {
    # The type or category of product or service (e.g. specialized consumer loan, relocation services)
    string ProductandServiceType?;
    # A description of the product or service including its main features and target customer
    string ProductandServiceDescription?;
    # Maintains the current production deployment configuration of the product or service
    string ProductandServiceSpecificationDeployment?;
    # Reference to an entity that assigns and manages the identification.
    # tReference to the organization or agency that issued the identifier (e.g., DMV, Passport Office).
    common:Involvedparty EmployeeorBusinessUnitReference?;
    # Details of the product or service specification deployment for reference
    common:Arrangement ProductandServiceSpecificationDeploymentConfiguration?;
    # Reference to a type of functional requirements specification activity
    common:Task ProductandServiceSpecificationDeploymentTaskReference?;
    # Reference to a type of functional requirements specification activity
    common:Task ProductandServiceSpecificationDeploymentTaskRecord?;
    # A characteristic of service which refers to the lifecycle of service (e.g., initiated, active, de-active, etc.) 
    common:Status ProductandServiceSpecificationStatus?;
    # Tracking deployment and product or service usage frequency
    string ProductandServiceSpecificationUsage?;
    # Track reporting of the performance/profitability (of specific features ) of the product or service specification
    string ProductandServiceSpecificationImpact?;
    # Release version of the available specification plus version history as appropriate
    string ProductandServiceSpecificationVersion?;
    # The deployable product or service specification in any appropriate form (including historical versions as appropriate). Note supporting systems and production/operations facilities are handled in parallel as part of a broader deployment
    string ProductandServiceSpecification?;
};

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

# Any configuration settings for the directory entry (e.g. generally available, provisional)
public type ProductDirectoryEntry record {
    # The current version of the product referenced in the directory.
    string ProductVersion?;
    # >
    # * `OpenDate` - 
    # * `RefreshDate` - 
    common:Directoryentrydatetypevalues DirectoryEntryDateType?;
    # Date of the directory entry
    common:Date DirectoryEntryDate?;
    # The tracked status (e.g. under construction or repair, inhabited, vacant).
    common:Status DirectoryEntryStatus?;
};

# "An assertion or statement with regard to a concept, a characteristic.
#
# Examples: Product pricing rules, Customer reference details
#
# A descriptor can be atomic or composed."
# Prospect Management
public type Operations record {
    # The intended schedule of operational tasks and product service availability
    common:Schedule ProductandServiceOperatingSchedule?;
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
    common:Featuretypevalues ProductandServiceConfigurationParameterType?;
    # Description describing the purpose, options and impact of the parameter
    string ProductandServiceConfigurationParameterDescription?;
    # The default parameter setting and possible value range
    common:Arrangement ProductandServiceConfigurationParameterSetting?;
};

public type ServicingOk record {|
    *http:Ok;
    # body
    Servicing body;
|};

public type ProductDirectoryEntryOk record {|
    *http:Ok;
    # body
    ProductDirectoryEntry body;
|};

public type SalesandMarketingOk record {|
    *http:Ok;
    # body
    SalesandMarketing body;
|};

# Period of time during which the status is valid.

# "An assertion or statement with regard to a concept, a characteristic.
#
# Examples: Product pricing rules, Customer reference details
#
# A descriptor can be atomic or composed."
# Prospect Management
public type SalesandMarketing record {
    # Descriptive materials/brochures organized for selective access
    string ProductandServiceSalesMaterial?;
    # Selectable product or service feature associated with servicing a product or service
    common:ProductFeature ProductandServicesFeaturesAndOptions?;
    # Allowed price/rate ranges by credit grade/customer type (can be reviewed through simulation)
    ProductFeatureModality ProductandServicePricingTable?;
    # Allowed price/rate ranges by credit grade/customer type (can be reviewed through simulation)
    ProductFeatureModality ProductandServiceFeesPenaltiesTable?;
    # Explanation/guidelines for the product or service feature (can be assisted or self serve)
    common:RuleSet ProductSuitabilityGuide?;
    # Applicable legal or regulatory requirements governing eligibility
    CustomerProductEligibilityProfileClass ProductandServiceEligibilityType?;
    # Description/explanation of eligibility requirements, can include required disclosures
    string ProductandServiceEligibilityDescription?;
    # Details the tasks required to complete a customer offer
    ProductRequirement ProductandServiceOfferProcessingRequirements?;
};

# "An assertion or statement with regard to a concept, a characteristic.
#
# Examples: Product pricing rules, Customer reference details
#
# A descriptor can be atomic or composed."
# Prospect Management
public type Servicing record {
    # Selectable product or service feature associated with servicing a product or service
    common:ProductFeature ProductandServiceFeature?;
    # Explanation/guidelines for the product or service feature (can be assisted or self serve)
    common:RuleSet ProductandServiceFeatureGuideline?;
    # Diagnosis guide for addressing reported issues with a product or service feature
    Case ProductandServiceFeatureProblemDiagnosis?;
    # Resolution guide for resolving reported issue with a product or service feature
    CaseResolution ProductandServiceFeatureProblemResolution?;
};

public type ProductionOk record {|
    *http:Ok;
    # body
    common:Production body;
|};

# >
# * `ChannelAccess` - 
# * `ProductAndServiceAccess` - 
# * `DeviceAccess` - 
# * `APIAccess` - 
public type Pointofaccesstypevalues "ChannelAccess"|"ProductAndServiceAccess"|"DeviceAccess"|"APIAccess";

# The access channels and devices that are supported by the product or service
public type ServiceAccessArrangement record {
    # >
    # * `ChannelAccess` - 
    # * `ProductAndServiceAccess` - 
    # * `DeviceAccess` - 
    # * `APIAccess` - 
    Pointofaccesstypevalues PointOfAccessType?;
    # >
    # * `Onlinepin` - On-line PIN authentication (Personal Identification Number).
    # * `Offlinepin` - Off-line PIN authentication (Personal Identification Number).
    # * `Signaturecapture` - Electronic signature capture (handwritten signature).
    # * `Password` - Authentication by a password.
    # * `Biometry` - Biometric authentication of the cardholder.
    # * `Cscverification` - Verification of Card Security Code.
    # * `Cryptogramverification` - Verification of a cryptogram generated by a chip card or another device, for instance ARQC (Authorisation Request Cryptogram).
    # * `Unknownmethod` - Authentication method is performed unknown.
    # * `Bypass` - Authentication bypassed by the merchant.
    # * `Papersignature` - Handwritten paper signature.
    # * `Manualverification` - Manual verification, for example passport or drivers license.
    # * `Merchantauthentication` - Merchant-related authentication.
    # * `Securecertificate` - Electronic commerce transaction secured with the X.509 certificate of a customer.
    # * `Securenocertificate` - Secure electronic transaction without cardholder certificate.
    # * `Securedchannel` - Channel-encrypted transaction.
    # * `Billingaddressverification` - Cardholder billing address verification.
    # * `Cardholderidentificationdata` - Cardholder data provided for verification, for instance social security number, driver license number, passport number.
    # * `Passiveauthentication` - Authentication based on statistical cardholder behaviour.
    # * `Secureelectroniccommerce` - Authentication performed during a secure electronic commerce transaction.
    # * `Shippingaddressverification` - Cardholder shipping address verification.
    # * `Tokenauthentication` - Cryptogram generated by the token requestor or a customer device to validate the authorised use of a token.
    # * `Paymenttoken` - Verification or authentication related to the use of a payment token, for instance the validation of the authorised use of a token.
    # * `Authenticationtoken` - A token is used to verify an already performed authentication.
    # * `Mobile` - Customer mobile device.
    # * `Other` - Other customer authentication.
    # * `Addressdigits` - Digits of the address.
    # * `Alienregistrationnumber` - Number assigned by a government agency to identify foreign nationals.
    # * `Arqcverification` - Verification of a cryptogram generated by a chip card, for instance an ARQC (Authorisation Request Cryptogram).
    # * `Birthdate` - Date of birth of a person.
    # * `Cardholdername` - Name of cardholder
    # * `Cityofbirth` - City of birth to authenticate a person.
    # * `Customeridentification` - Customer number used as a mechanism of authentication.
    # * `Driveridentification` - Identification of a driver in a fleet of vehicles.
    # * `Driverlicensenumber` - Number assigned by a driving license authority to a person driving a car.
    # * `Email` - Electronic mail address
    # * `Employeeidentificationnumber` - Number assigned to an employee by an employer.
    # * `Employeridentificationnumber` - Number assigned to an employer by a registration authority.
    # * `Identitycardnumber` - Number assigned by a national authority to an identity card.
    # * `Onetimepassword` - Verification of a one-time password provided by the issuer.
    # * `Othercardholderidentification` - Other cardholder data provided for identification.
    # * `Othercryptogram` - Verification of a cryptogram generated by a non-card form factor.
    # * `Passportnumber` - Number assigned by a passport authority to a passport.
    # * `Postalcode` - Verification based on digits of the postal code.
    # * `Shippingaddressfrom` - Shipping address from verification.
    # * `Shippingaddressto` - Shipping address to verification
    # * `Cardholderaddress` - Verification whether the address corresponds to the cardholder's one.
    # * `Nonvisiblecsc` - Non visible Card Security Code.
    # * `Othernational` - Other type of verification defined at national level.
    # * `Otherprivate` - Other type of verification defined at private level
    # * `Placeofbirth` - Place of birth of a person.
    # * `Socialsecuritynumber` - Number assigned by a social security agency.
    # * `Taxidentificationnumber` - Number assigned by a tax authority to an entity.
    # * `Accountdigitalsignature` - Account-based digital signature authentication.
    # * `Arpcverification` - Response Card Cryptogram (ARPC)  verification.
    # * `ATC` - Application Transaction Counter
    # * `Offlinebiographics` - Biographics authentication in an offline mode.
    # * `Offlinebiometrics` - Biometrics authentication in an offline mode
    # * `Offlinedataauthentication` - Authentication of data in an offline mode
    # * `Offlinedigitisedsignatureanalysis` - Analysis of signature transmitted offline
    # * `Offlinepinencrypted` - PIN generated offline and transmitted encrypted
    # * `Offlinepininclear` - PIN generated offline and transmitted in clear
    # * `Onlinebiographics` - Biographics authentication in an online mode.
    # * `Phonehome` - Customer home phone number.
    # * `Phonework` - Customer work phone number
    # * `Pkisignature` - PKI (Public Key Infrastructure) based digital signature
    # * `Qualifiedcertificate` - QualifiedCertificate
    # * `Threeds` - Authentication performed during a secure electronic commerce transaction.
    # * `Cardholdercertificateserialnumber` - Serial number of the cardholder's certificate.
    # * `Acceptorcertificateserialnumber` - Serial number of the acceptor's certificate.
    # * `Nationalidentifier` - Nationally assigned identifier.
    common:Authenticationmethodtypevalues AccessCredentialMethod?;
    # Action of the arrangement
    common:Action ArrangementAction?;
    # Start date of the arrangement
    common:Datetime ArrangementStartDate?;
    # End date of the arrangement
    common:Datetime ArrangementEndDate?;
    # A characteristic of arrangement which refers to the LifecycleStatus of arrangement (e.g., requested, proposed, offered, accepted, cancelled, terminated, fulfilled, etc.)
    common:Arrangementstatus ArrangementStatus?;
    # Subject matter of the arrangement
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
    # Identification of the arrangement
    common:Identifier ArrangementIdentification?;
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
    common:Arrangementtypevalues ProductArrangementType?;
};

public type OperationsOk record {|
    *http:Ok;
    # body
    Operations body;
|};

# >
# * `Closed` - Case has been closed. (ISO20022)
# * `Assigned` - Case has been assigned to another party. (ISO20022)
# * `UnderInvestigation` - Case is currently under investigation. (ISO20022)
# * `Unknown` - Case has never been assigned before. (ISO20022)
# * `Overdue` - Investigation is taking too long. (ISO20022)
public type Casestatustypevalues "Closed"|"Assigned"|"UnderInvestigation"|"Unknown"|"Overdue";

# >
# * `FunctionalRequirement` -
# * `TechnicalRequirement` -
# * `OperationalRequirement` -
# * `LegalRequirement` -
# * `TestingRequirement` -
# * `SalesAndMarketingRequirement` -
# * `ServicingRequirement` -
# * `ProductionRequirement` -
# * `SuitabilityRequirement` -
# * `EligibilityRequirement` -
# * `ProcessingRequirement` -
public type Requirementtypevalues "FunctionalRequirement"|"TechnicalRequirement"|"OperationalRequirement"|"LegalRequirement"|"TestingRequirement"|"SalesAndMarketingRequirement"|"ServicingRequirement"|"ProductionRequirement"|"SuitabilityRequirement"|"EligibilityRequirement"|"ProcessingRequirement";

# Allowed price/rate ranges by credit grade/customer type (can be reviewed through simulation)
public type ProductFeatureModality record {
    # >
    # * `AllocationModality` -
    # * `CalculationModality` -
    # * `DerivationModality` -
    # * `PaymentModality` -
    # * `ProcessingModality` -
    # * `ApplicationModality` -
    # * `DeliveryModality` -
    common:Modalitytypevalues ProductFeatureModalityType?;
};

# Resolution guide for resolving reported issue with a product or service feature
public type CaseResolution record {
    # The intended schedule of operational tasks and product service availability
    common:Schedule ResolutionSchedule?;
    # The type of resolution (e.g. success, deferred, rejected)
    string ResolutionType?;
    # Description of the resolution of the investigation case
    string Description?;
};

# Details the tasks required to complete a customer offer
public type ProductRequirement record {
    # >
    # * `FunctionalRequirement` -
    # * `TechnicalRequirement` -
    # * `OperationalRequirement` -
    # * `LegalRequirement` -
    # * `TestingRequirement` -
    # * `SalesAndMarketingRequirement` -
    # * `ServicingRequirement` -
    # * `ProductionRequirement` -
    # * `SuitabilityRequirement` -
    # * `EligibilityRequirement` -
    # * `ProcessingRequirement` -
    Requirementtypevalues ProductRequirementType?;
    # Specification details for the product requirement
    string ProductRequirementSpecification?;
};

# Diagnosis guide for addressing reported issues with a product or service feature
public type Case record {
    # DateTime when the case was created
    common:Datetime CaseCreationDateTime?;
    # >
    # * `Card` -
    # * `Loan` -
    # * `Fraud` -
    # * `Payment` -
    # * `Market` -
    # * `Security` -
    # * `Other` -
    common:Casetypevalues CaseType?;
    # Location associated with the case
    common:Location CaseLocation?;
    # >
    # * `Closed` - Case has been closed. (ISO20022)
    # * `Assigned` - Case has been assigned to another party. (ISO20022)
    # * `UnderInvestigation` - Case is currently under investigation. (ISO20022)
    # * `Unknown` - Case has never been assigned before. (ISO20022)
    # * `Overdue` - Investigation is taking too long. (ISO20022)
    Casestatustypevalues CaseStatus?;
    # Document associated with the case
    common:Document CaseDocument?;
    # DateTime of the case
    common:Datetime CaseDateTime?;
};

# Applicable legal or regulatory requirements governing eligibility
public type CustomerProductEligibilityProfileClass record {
};

# Contains details of the product inventory request, in particular the item type, amount and delivery arrangements
public type ProductInventoryAssignmentRequest record {
    # The type of assignment request (e.g. to schedule, ad-hoc inventory request)
    string ProductInventoryAssignmentRequestType?;
    # Key dates associated with the assignment request (e.g. order date, confirmation date, delivery date)
    common:Date ProductInventoryAssignmentRequestDate?;
};

# Details of inventory and delivery related costs
public type FeeArrangement record {
    # >
    # * `Accountingfee` - Fee paid for accounting services rendered.
    # * `Adrfee` - Charge linked to an ADR (American Depositary Receipt).
    # * `Advisoryfee` - Fee paid for advisory services rendered.
    # * `Airwaybillfee` - Charge is an airway bill fee.
    # * `Backendload` - Sales charge paid by the investor when redeeming an investment such as an investment fund.
    # * `Brokeragefee` - Fee paid to a broker for services provided.
    # * `Clearanceandhandlingatdestination` - Charge is for clearance and handling of goods at destination.
    # * `Clearanceandhandlingatorigin` - Charge is for clearance and handling of goods at origin.
    # * `Collectfreight` - Charge is for the collection of the freight.
    # * `Commission` - Fee paid for services provided.
    # * `Contingencydeferredsalescharge` - Deferred sales charge.
    # * `Correspondentbankcharge` - In investment funds, the charge of the correspondent bank for transferring money.
    # * `Custodyfee` - Fee paid to a custodian in respect of custodial services.
    # * `Dangerousgoodsfee` - Charge is for dangerous goods.
    # * `Dilutionlevy` - In investment funds, a charge payable by the investor covering bid-offer spreads and dealing charges for the underlying investments. The dilution levy is paid to the fund for the benefit of other unit holders.
    # * `Discount` - Charge that has been reduced from the standard initial charge levied by a fund, eg, during a launch period or as negotiated by a funds supermarket / discount broker.
    # * `Equalisation` - The part of an investor's subscription amount that is held by the fund in order to pay incentive or performance fees at the end of the fiscal year.
    # * `Frontendload` - Sales charge paid immediately by the investor when subscribing to an investment such as an investment fund.
    # * `Initial` - Charge paid at the time of the first subscription.
    # * `Insurancepremium` - Charge is a premium for insurance.
    # * `Issuancecancellationfee` - Fee linked to the cancellation of an issuance.
    # * `Issuancefee` - Charge linked to the issuance of security.
    # * `Managementfee` - Fee paid to an investment manager for services. The fee usually includes fund administration costs and investor relationship management. Typically, the amount paid is a percentage of the assets under management.
    # * `Matchingfees` - Fee charged for matching and/or confirmation.
    # * `Miscellaneousfee` - Miscellaneous fee.
    # * `Other` - Another type of charge.
    # * `Packaging` - Charge is for packaging of goods.
    # * `Partacquis` - Portion of charge that the fund is entitled to receive, that cannot be reduced by an intermediary.
    # * `Penalty` - Fee charged to the investor for early redemption of the fund.
    # * `Pickup` - Charge is for pick-up of goods.
    # * `Postagecharge` - Charge paid for the postage.
    # * `Premium` - In investment funds, pre-arranged addition to the trade amount based on the published net asset value.
    # * `Publicationfee` - Fee paid in respect of publications made.
    # * `Regulatoryfee` - Fee charged by a regulatory authority, eg, Securities and Exchange fees.
    # * `Securitycharge` - Charge is for security.
    # * `Serviceprovisionfee` - Fee paid for the provision of financial services.
    # * `Shippingcharge` - Charge for shipping, including the insurance of securities.
    # * `Signatureservice` - Charge is for signature services.
    # * `Specialconcessions` - Charges, drawdown, or other reduction from or in addition to the deal price.
    # * `Speciallyagreedfrontendload` - Specially agreed front-end load.
    # * `Storageatdestination` - Charge is for storage of goods at destination.
    # * `Storageatorigin` - Charge is for storage of goods at origin.
    # * `Switch` - In investment funds, charge related to a switch transaction.
    # * `Transferfee` - In investment funds, a fee charged for the transfer of ownership of an investment fund.
    # * `Transportcharges` - Charge is for transport.
    # * `Ucitscommission` - Charges paid by the investor to the Fund Company for subscription and redemption orders.
    # * `ChequeRelatedFee` - 
    common:Feetypevalues FeeType?;
    # Base amount that would be applied when the service is requested. 
    common:Amount FeeAmount?;
    # Rate used to calculate the amount of the adjustment, allowance, charge or fee. (ISO20022)
    common:Rate FeeRate?;
    # Period during which the fee is effective
    common:Datetimeperiod FeeEffectivePeriod?;
    # Date and time at which the range starts. (ISO20022)
    common:Datetime FeeDueDate?;
    # An arranged FeeRatePlan
    common:Feeplan FeePlan?;
    # >
    # * `Debit` - Transaction is a debt entry
    # * `Credit` - Transaction is a credit entry
    common:Debitcreditindicatortvalues FeeCreditDebitIndicator?;
    # Reason for the amount adjustment (fee). 
    string FeeReason?;
    # >
    # * `Added` - Adjustment amount must be added to the total amount.
    # * `Substracted` - Adjustment amount must be substracted from the total amount.
    common:Adjustmentdirectiontypevalues FeeDirection?;
    # >
    # * `Bornebydebtor` - All transaction charges are to be borne by the debtor.
    # * `Bornebycreditor` - All transaction charges are to be borne by the creditor.
    # * `Shared` - In a credit transfer context, means that transaction charges on the sender side are to be borne by the debtor, transaction charges on the receiver side are to be borne by the creditor. In a direct debit context, means that transaction charges on the sender side are to be borne by the creditor, transaction charges on the receiver side are to be borne by the debtor.
    # * `Followingservicelevel` - Charges are to be applied following the rules agreed in the service level and/or scheme.
    common:Chargebearertypevalues FeeBearerType?;
    # Frequency at which the fee is charged
    common:Frequency FeeChargingFrequency?;
    # >
    # * `Cash` - Payment is with cash.
    # * `Unit` - Units are redeemed to cover payment.
    common:Feepaymentmethodtypevalues FeePaymentMethodType?;
    # Key dates associated with the assignment request (e.g. order date, confirmation date, delivery date)
    common:Date LoanOriginationDate?;
    # Key dates associated with the assignment request (e.g. order date, confirmation date, delivery date)
    common:Date LoanMaturityDate?;
    # Key dates associated with the assignment request (e.g. order date, confirmation date, delivery date)
    common:Date LoanEndDate?;
    # Base amount that would be applied when the service is requested. 
    common:Amount LoanAmount?;
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
    common:Arrangementtypevalues LoanArrangementType?;
    # Action taken on the arrangement
    common:Action ArrangementAction?;
    # Date and time at which the range starts. (ISO20022)
    common:Datetime ArrangementStartDate?;
    # Date and time at which the range starts. (ISO20022)
    common:Datetime ArrangementEndDate?;
    # A characteristic of arrangement which refers to the LifecycleStatus of arrangement (e.g., requested, proposed, offered, accepted, cancelled, terminated, fulfilled, etc.)
    common:Arrangementstatus ArrangementStatus?;
    # Subject matter Of the arrangement
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
    # Unique identifier for the arrangement
    common:Identifier ArrangementIdentification?;
    # Identifier for the payment card arrangement
    common:Identifier PaymentCardArrangementIdentifier?;
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
    common:Arrangementtypevalues CardPaymentArrangementType?;
    # >
    # * `FeeArrangement` - An arrangement which specifies to charge fees when banking transactions did take place, accompanied by the modalities to calculate and charge the fees and the related terms and conditions. 
    # * `FinancialPlanningArrangement` - An arrangement that specifies obligations/rights engaged in the financial advisory service agreement to deliver the Financial Planning Advisory Service
    #
    # Financial Planning Advisory Service is a financial advisory service that provides basic financial advice for short and long term investment and financing options
    # * `TaxOptimizationArrangement` - An arrangement that specifies obligations/rights engaged in the financial advisory service agreement for providing a tax related advice like:
    # - Engaging a product tax specialist to liaise with the customer
    # -The service charge to be made to the customer for the specialist support
    #
    # Tax Optimization Advisory Service is a financial advisory service that provides tax (and compliance) related advice for product and service optimization
    # * `StrategicFundingArrangement` - 
    # * `TacticalFundingArrangement` - 
    # * `CapitalStructuringArrangement` - 
    # * `ProductGuidanceArrangement` - An arrangement that specifies obligations/rights engaged in the financial advisory service agreement to deliver the ProductGuidanceAdvisoryService
    #
    # Product Guidance Advisory Service is a financial advisory service that provides product and service specific guidance and insights
    common:Financialadvisoryservicearrangementtype FinancialAdvisoryServiceArrangementType?;
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
    common:Arrangementtypevalues SavingsAccountArrangementType?;
    # Reference to the product feature applied in this arrangement 
    common:Productfeaturetype SavingsAccountArrangementProductFeatureType?;
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
    common:Arrangementtypevalues CurrentAccountArrangementType?;
    # Reference to the product feature applied in this arrangement 
    common:Productfeaturetype CurrentAccountArrangementProductFeatureType?;
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
    common:Arrangementtypevalues ArrangementType?;
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
    common:Arrangementtypevalues TermDepositArrangementType?;
    # Reference to the product feature applied in this arrangement 
    common:Productfeaturetype TermDepositArrangementProductFeatureType?;
    # Date and time at which the range starts. (ISO20022)
    common:Datetime TermDepositMaturityDate?;
    # Date and time at which the range starts. (ISO20022)
    common:Datetime TermDepositOpenDate?;
    # Base amount that would be applied when the service is requested. 
    common:Amount TermDepositAmount?;
    # Duration of the term deposit
    common:Duration TermDepositDuration?;
    # The Period for which the TermDepositAmount needs ti stay deposited with the Bank
    string DepositTerm?;
    # Type of virtual account arrangement
    string VirtualAccountArrangementType?;
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
    common:Arrangementtypevalues BankPlanArrangementType?;
    # Date and time at which the range starts. (ISO20022)
    common:Datetime CreditFacilityDataTime?;
    # >
    # * `Revolving` - 
    # * `FixedAmount` - 
    # * `Decreasing` - 
    common:Creditfacilitytypevalues CreditFacilityType?;
    # >
    # * `AvailabilityCommission` - 
    common:Creditfacilityratetypevalues CreditFacilityRateType?;
    # Unique identifier for the credit facility
    common:Identifier CreditFacilityNumber?;
    # Base amount that would be applied when the service is requested. 
    common:Amount CreditFacilityAmount?;
    # Frequency at which the fee is charged
    common:Frequency StandingOrderFrequency?;
    # The purpose of a standing order
    string StandingOrderPurpose?;
    # Base amount that would be applied when the service is requested. 
    common:Amount StandingOrderAmount?;
    # Currency code for the standing order
    common:Currencycode StandingOrderCurrency?;
    # Reference to a Party who plays a  specific role in the context of assigning a status.
    common:Involvedparty StandingOrderTargetAccountOwner?;
    # The identification of the target account of a standing order.
    common:Accountidentification StandingOrderTargetAccountIdentification?;
    # Reference to a Party who plays a  specific role in the context of assigning a status.
    common:Involvedparty StandingOrderTargetAccountBank?;
    # Source account for the standing order
    common:Account StandingOrderSourceAccount?;
    # Validity period for the standing order
    common:Datetimeperiod StandingOrderValidityPeriod?;
    # Date and time at which the range starts. (ISO20022)
    common:Datetime StandingOrderDay?;
    # >
    # * `UserDefinedStandingOrder` - Liquidity transfer standing order type, that has been customised or defined to the specific need of the user.(ISO20022)
    # * `PredefinedStandingOrder` - Liquidity transfer standing order type, as predefined in the system. (ISO20022)
    common:Standingordertypevalues StandingOrderType?;
    # Unique identifier for the standing order
    common:Identifier StandingOrderIdentification?;
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
    common:Arrangementtypevalues StandingOrderArrangementType?;
    # >
    # * `FirstPaymentDateTime` - The date on which the first payment for a Standing Order schedule will be made. (Open Banking)
    # * `NextPaymentDateTime` - The date on which the next payment for a Standing Order schedule will be made. (Open Banking)
    # * `LastPaymentDateTime` - The date on which the last (most recent) payment for a Standing Order schedule was made. (Open Banking)
    # * `FinalPaymentDateTime` - The date on which the final payment for a Standing Order schedule will be made. (Open Banking)
    common:Standingorderdatetimetypevalues StandingOrderDateType?;
    # Number of the payments that will be made in completing this frequency sequence including any executed since the sequence start date. (Open Banking)
    string StandingOrderNumberOfPayments?;
    # Date and time at which the range starts. (ISO20022)
    common:Datetime StandingOrderDate?;
    # Status of the standing order
    common:Status StandingOrderStatus?;
    # A schedule which is specified the first payment, last payment, next payment, etc. for a standing orde.
    common:Schedule StandingOrderSchedule?;
    # >
    # * `CreditTransferService` - A payment service allowing a payer to transfer fund to a beneficiary. (a proposed definition for BIAN BOM adapted from ECB)
    # * `StandingOrderService` - A credit transfer service to make regular transfers on given dates to a named beneﬁciary. (a proposed definition for BIAN BOM adapted from ISO20022)
    # * `DirectDebitService` - A payment service for debiting a payer's payment account, where a payment transaction is initiated by the payee on the basis of the payer's consent given to the payee, to the payee's payment service provider or to the payer's own payment service provider. (a proposed definition for BIAN BOM adapted from PSD)
    # * `CardPaymentService` - A payment service to execute payment transactions through a payment card, including online payments. (a proposed definition for BIAN BOM adapted from PSD)
    # * `WithdrawService` - A payment service to take fund out of an account. (a proposed definition for BIAN BOM)
    # * `DepositService` - A payment service to place funds into an account for safekeeping. (a proposed definition for BIAN BOM)
    # * `OverdraftService` - A payment service that allows fund transfer even if there is no provision on the account. (a proposed definition for BIAN BOM)
    # * `MoneyRemittanceService` - A payment service where funds are received from a payer, without any payment accounts being created in the name of the payer or the payee, for the sole purpose of transferring a corresponding amount to a payee or to another payment service provider acting on behalf of the payee, and/or where such funds are received on behalf of and made available to the payee. (a proposed definition for BIAN BOM adapted from PSD)
    # * `StatementService` - A reporting service on payment transactions registered on an account. (a proposed definition for BIAN BOM)
    common:Paymentservicetypevalues ServiceType?;
    # Key dates related to the payment. 
    common:Paymentdatetime PaymentDate?;
    # Period for the payment
    common:Datetimeperiod PaymentPeriod?;
    # >
    # * `Salarypayment` - Transaction is the payment of salaries.
    # * `Treasurypayment` - Transaction is related to treasury operations.
    # * `Advancepayment` - Transaction is an advance payment.
    # * `Agriculturaltransfer` - Transaction is related to the agricultural domain.
    # * `Alimonypayment` - Transaction is the payment of alimony.
    # * `Childbenefit` - Transaction is related to a payment made to assist parent/guardian to maintain child.
    # * `Unemploymentdisabilitybenefit` - Transaction is related to a payment to a person who is unemployed/disabled.
    # * `Bonuspayment.` - Transaction is related to payment of a bonus.
    # * `Cashmanagementtransfer` - Transaction is a general cash management instruction.
    # * `Capitalbuilding` - Transaction is related to capital building fringe fortune, ie capital building for retirement.
    # * `Charitypayment` - Transaction is a payment for charity reasons.
    # * `Collectionpayment` - Transaction is a collection of funds initiated via a credit transfer or direct debit.
    # * `Commoditytransfer` - Transaction is payment of commodities.
    # * `Commercialpayment` - Transaction is related to a payment of commercial credit or debit. (formerly CommercialCredit).
    # * `Commission` - Transaction is payment of commission.
    # * `Costs` - Transaction is related to payment of costs.
    # * `Copyright` - Transaction is payment of copyright.
    # * `Dividend` - Transaction is payment of dividends.
    # * `Foreignexchange` - Transaction is related to a foreign exchange operation.
    # * `Purchasesaleofgoods` - Transaction is related to purchase and sale of goods.
    # * `Governmentpayment` - Transaction is a payment to or from a government department.
    # * `Instalmenthirepurchaseagreement` - Transaction is payment for an installment/hire-purchase agreement.
    # * `Intracompanypayment` - Transaction is an intra-company payment, ie, a payment between two companies belonging to the same group.
    # * `Insurancepremium` - Transaction is payment of an insurance premium.
    # * `Interest` - Transaction is payment of interest.
    # * `Licensefee` - Transaction is payment of a license fee.
    # * `Loan` - Transaction is related to transfer of loan to borrower.
    # * `Loanrepayment` - Transaction is related to repayment of loan to lender.
    # * `Netting` - Transaction is related to a netting operation.
    # * `Payroll` - Transaction is related to the payment of payroll.
    # * `Pensionpayment` - Transaction is the payment of pension.
    # * `Refund` - Transaction is the payment of a refund.
    # * `Rent` - Transaction is the payment of rent.
    # * `Royalties` - Transaction is the payment of royalties.
    # * `Purchasesaleofservices` - Transaction is related to purchase and sale of services.
    # * `Securities` - Transaction is the payment of securities.
    # * `Socialsecuritybenefit` - Transaction is a social security benefit, ie payment made by a government to support individuals.
    # * `Subscription` - Transaction is related to a payment of information or entertainment services either in printed or electronic form.
    # * `Taxpayment` - Transaction is the payment of taxes.
    # * `Valueaddedtaxpayment` - Transaction is the payment of value added tax.
    # * `Consumerthirdpartyconsolidatedpayment` - Transaction is a payment used by a third party who can collect funds to pay on behalf of consumers, ie credit counseling or bill payment companies.
    # * `Debitcollectionpayment` - Collection of funds initiated via a debit transfer.
    # * `Supplierpayment` - Transaction is related to a payment to a supplier.
    # * `Hedging` - Transaction is related to a hedging operation.
    # * `Multipleservicetypes` - Transaction is related to a payment for multiple service types.
    # * `Nototherwisespecified` - Transaction is related to a payment for type of services not specified elsewhere.
    # * `Cardpayment` - Transaction is related to a payment of credit card account.
    # * `Creditcardbill` - Transaction is related to a payment of credit card bill.
    # * `Ferry` - Transaction is a payment for ferry related business.
    # * `Air` - Transaction is a payment for air transport related business.
    # * `Bus` - Transaction is a payment for bus transport related business.
    # * `Railway` - Transaction is a payment for railway transport related business.
    # * `Convalescentcarefacility` - Transaction is a payment for convalescence care facility services.
    # * `Dentalservices` - Transaction is a payment for dental services.
    # * `Anesthesiaservices` - Transaction is a payment for anesthesia services.
    # * `Homehealthcare` - Transaction is a payment for home health care services.
    # * `Hospitalcare` - Transaction is a payment for hospital care services.
    # * `Intermediatecarefacility` - Transaction is a payment for intermediate care facility services.
    # * `Longtermcarefacility` - Transaction is a payment for long-term care facility services.
    # * `Medicalservices` - Transaction is a payment for medical care services.
    # * `Visioncare` - Transaction is a payment for vision care services.
    # * `Durablemedicaleequipment` - Transaction is a payment is for use of durable medical equipment.
    # * `Cabletvbill` - Transaction is related to a payment of cable TV bill.
    # * `Electricitybill` - Transaction is related to a payment of electricity bill.
    # * `Gasbill` - Transaction is related to a payment of gas bill.
    # * `Telephonebill` - Transaction is related to a payment of telephone bill.
    # * `Othertelecomrelatedbill` - Transaction is related to a payment of other telecom related bill.
    # * `Waterbill` - Transaction is related to a payment of water bill.
    # * `Study` - Transaction is related to a payment of study/tuition costs.
    # * `Pricepayment` - Transaction is related to a payment of a price.
    # * `Installment` - Transaction is related to a payment of an installment.
    # * `Recurringinstallmentpayment` - Transaction is related to a payment of a recurring installment made at regular intervals.
    # * `Openingfee` - Transaction is related to a payment of opening fee.
    # * `Cancellationfee` - Transaction is related to a payment of cancellation fee.
    # * `Governmentinsurance` - Transaction is related to a payment of government insurance.
    # * `Insurancepremiumcar` - Transaction is a payment of car insurance premium.
    # * `Laborinsurance` - Transaction is a payment of labor insurance.
    # * `Lifeinsurance` - Transaction is a payment of life insurance.
    # * `Propertyinsurance` - Transaction is a payment of property insurance.
    # * `Healthinsurance` - Transaction is a payment of health insurance.
    # * `Carloanprincipalrepayment` - Transaction is a payment of car loan principal payment.
    # * `Housingloanrepayment` - Transaction is related to a payment of housing loan.
    # * `Companysocialloanpaymenttobank` - Transaction is a payment by a company to a bank for financing social loans to employees.
    # * `Estatetax` - Transaction is related to a payment of estate tax.
    # * `Housingtax` - Transaction is related to a payment of housing tax.
    # * `Incometax` - Transaction is related to a payment of income tax.
    # * `Netincometax` - Transaction is related to a payment of net income tax.
    # * `Businessexpenses` - Transaction is related to a payment of business expenses.
    # * `Trustfund` - Transaction is related to a payment of a trust fund.
    # * `Networkcharge` - Transaction is related to a payment of network charges.
    # * `Networkcommunication` - Transaction is related to a payment of network communication.
    # * `Receiptpayment` - Transaction is related to a payment of receipt.
    # * `Paymentterms` - Transaction is related to payment terms specifications.
    # * `Other` - Other payment purpose.
    # * `Withholding` - Transaction is related to a payment of withholding tax.
    common:Paymentpurposevalues PaymentPurpose?;
    # Amount of the payment (arranged to be paid)
    common:Paymentamountandcurrency PaymentAmountAndCurrency?;
    # >
    # * `Cheque` - Written order to a bank to pay a certain amount of money from one person to another person.
    # * `Credittransfer` - Transfer of an amount of money in the books of the account servicer.
    # * `Directdebit` - Collection of an amount of money from the debtor's bank account by the creditor. The amount of money and dates of collections may vary.
    # * `Transferadvice` - Transfer of an amount of money in the books of the account servicer. An advice should be sent back to the account owner.
    # * `Direct` - Direct method.
    # * `Classical` - Classical method.
    common:Paymentmethodtypevalues PaymentMethod?;
    # >
    # * `Cashtransaction` - Transaction is a withdrawal/deposit of cash.
    # * `Domesticpayment` - Payment has an origin and a destination in the same country, and is made in the currency of that country.
    # * `Domestichighvaluepayment` - Transaction is a high value payment that has an origin and a destination in the same country and is made in the currency of that country.
    # * `Domesticprioritypayment` - Transaction is a priority payment that has an origin and a destination in the same country and is made in the currency of that country.
    # * `Crossborderpayment` - Payment has an origin in one country, a destination in another, and is made in the currency of either the origin or destination country.
    # * `Crossborderprioritypayment` - Transaction is a priority payment that has an origin in one country and a destination in another and is made in the currency of either the origin or destination country.
    # * `Crossborderhighvaluepayment` - Transaction is a high value payment that has an origin in one country and a destination in another country and is made in the currency of either the origin or destination country.
    # * `Thirdcurrencypayment` - Transaction is a payment that is made in a third currency to the origin and destination countries. The origin and destination countries may be one and the same country.
    # * `Thirdcurrencyhighvaluepayment` - Transaction is a high value payment that is made in a third currency to the origin and destination countries. The origin and destination countries may be one and the same country.
    # * `Thirdcurrencyprioritypayment` - Payment is made in a third currency to the origin and destination countries. The origin and destination countries may be the same country.
    # * `Tradesettlementpayment` - Transaction is the settlement of a trade, eg, a securities transaction.
    # * `Foreignexchange` - Transaction isthe settlement of a foreign exchange deal.
    # * `Equivalentamount` - Transaction is an equivalent amount relative to a currency conversion.
    # * `Loan` - Transaction is the payment of a specific amount of money lent by a creditor/lender.
    # * `Loanrepayment` - Transaction is an amount of money transferred in repayment of loan.
    # * `Securities` - Transaction is a payment of securities.
    # * `Lockbox` - Transaction is a payment(s) resulting from a lock box service.
    # * `Dividend` - Transaction is a payment of dividends.
    # * `Crossedcheque` - Transaction is a crossed cheque. A crossed check has two parallel lines across its face, indicating that the cheque must be paid into an account and not cashed over the counter.
    # * `Opencheque` - Transaction is an uncrossed cheque that can be cashed at the bank of origin.
    # * `Ordercheque` - Transaction is a cheque made payable to a named recipient 'or order' enabling the creditor to either deposit it in an account or endorse it to a third party, ie, transfer the rights to the cheque by signing it on the reverse.
    # * `Circularcheque` - Transaction is an instruction from a bank to its correspondent bank to pay the creditor a stated sum of money on presentation of a means of identification.
    # * `Travellerscheques` - Transaction is a payment resulting from travellers cheques.
    # * `Bankdraft` - Transaction is a cheque drawn by a bank on itself or its agent. A person who owes money to another buys the draft from a bank for cash and hands it to the creditor who need have no fear that it might be dishonoured.
    # * `Documentarycredit` - Transaction is a documentary credit from one banker to another, authorising the payment of a specified sum of money to the person named in the document, based on specified conditions.
    # * `Billofexchange` - Transaction is a written order from a drawer to a drawee to pay a specified sum of money upon demand, or on a specified date, to the drawer or to a third party specified by the drawer. A bill of exchange is also called a draft.
    # * `Collection` - Transaction is a collection. A collection is the act of sending a cheque, bill of exchange or another financial instrument to the prospective financial institution for payment.
    # * `Cashmanagementtransfer` - Transaction is a general cash management instruction.
    # * `Topaccount` - Transaction is a cash management instruction, requesting to top the account of the debtor above a certain floor amount. The floor amount, if not pre-agreed by the parties involved, may be specified.
    # * `Zerobalanceaccount` - Transaction is a cash management instruction, requesting to zero balance the account of the debtor.
    # * `Standingfacilities` - Payment is linked to overnight deposits and the marginal lending facility.
    # * `Standardservicelevelcredit` - Transaction is a credit transfer to be processed according to the Standard Service Level.
    # * `Liquiditytransfer` - Payment is made to transfer liquidity to/from the settlement account of a member, to/from the current account held at the central institution or any other institution.
    # * `Advancepayment` - Transaction is a payment made in advance or as an advance.
    # * `Valuedateadjustment` - Transaction reverses a previously incorrectly value dated entry.
    # * `Dvpgross` - Gross cash payment offsetting the amount owed/due for a securities transaction settlement.
    # * `Dvpnet` - Net payment offsetting the cash balance due/owed for a series of securities transactions settlement.
    # * `Netting` - Transaction is a netting operation.
    # * `Limitpayment` - Transaction is a payment that is processed when the pool of liquidity exceeds the minimum value reserved for an express payment in the RTGSPlus system.
    # * `Backup` - Payment is made under the recovery procedure to move liquidity to/from the settlement account of a member according to the specifications of the system.
    # * `Expresspayment` - Transaction is a payment that is processed whenever liquidity is available on the settlement account of a member of the RTGSPlus system.
    # * `Centralbankoperation` - Payment is made to settle an operation made with the central bank.
    # * `Clspayment` - Payment is linked to CLS activities.
    # * `Eurodomesticpayment` - Transaction is a credit transfer in Euro with its country of origin and country of destination within the European Union. The origin and destination countries may be one and the same country.
    # * `Agriculturaltransfer` - Transaction is related to the agricultural domain.
    # * `Alimonypayment` - Transaction is a payment(s) made by one spouse to the other after a separation or divorce. An alimony payment may be applied to other family relationships.
    # * `Balanceretail` - Transaction is a payment offsetting the net cash balance owed/due in a retail payment system.
    # * `Bonuspayment.` - Net cash payment offsetting the balance due/owed in a retail payment system.
    # * `Brokeragefee` - Transaction is charges levied by a broker.
    # * `Capitalbuilding` - Transaction is payment into a personal pension scheme for retirement.
    # * `Charitypayment` - Transaction is a payment for charity reasons.
    # * `Childbenefit` - Transaction is a payment made to a parent/guardian to help maintain a child.
    # * `Commercialcredit` - Transaction is settlement of a commercial credit.
    # * `Commission` - Transaction is payment of a fee for executing a transaction.
    # * `Commoditytransfer` - Transaction is a payment of products traded on a commodity exchange.
    # * `Costs` - Transaction is apayment of costs.
    # * `Copyright` - Transaction is a payment of copyright.
    # * `Governmentpayment` - Transaction is apayment to or from a government department.
    # * `Instalmenthirepurchaseagreement` - Transaction is a payment of an instalment or to the settlement of a hire-purchase agreement.
    # * `Insurancepremium` - Transaction is a payment of an insurance premium.
    # * `Intracompanypayment` - Transaction is an intra-company payment, ie, a payment between two companies belonging to the same group.
    # * `Interest` - Transaction is a payment of interest.
    # * `Licensefee` - Transaction is a payment of a license fee.
    # * `Metals` - Transaction is a purchase or sale of metals.
    # * `Pensionpayment` - Transaction is a payment of a pension allowance.
    # * `Purchasesaleofgoods` - Transaction is a payment for the purchase and sale of goods.
    # * `Refund` - Transaction is a repayment of funds.
    # * `Rent` - Transaction is a payment of rent.
    # * `Royalties` - Transaction is a payment of royalties.
    # * `Purchasesaleofservices` - Transaction is a payment for the purchase and sale of services.
    # * `Salarypayment` - Transaction is a payment of salaries.
    # * `Socialsecuritybenefit` - Transaction is a social security benefit, a payment made by a government to support individuals.
    # * `Standingorder` - Transaction is a standing order. A standing order is an instruction given by a party having explicit authority on the account to debit, ie, either debit account owner or originating party, to a first agent to process cash transfers at specified intervals during an implicit or explicit period of time. It is given once, and is valid for an open or closed period of time.
    # * `Subscription` - Transaction is a payment of a subscription.
    # * `Treasurystatepayment` - Payment is linked to the Treasury State.
    # * `Unemploymentdisabilitybenefit` - Transaction is a payment made to an unemployed/disabled person.
    # * `Valueaddedtaxpayment` - Transaction is apayment of value added tax.
    # * `Taxpayment` - Transaction is a payment of taxes.
    # * `Overnightdeposit` - Transaction is linked to an overnight deposit.
    # * `Marginallending` - Transaction is linked to the marginal lending facility.
    # * `Other` - Specifies that a proprietary code must be indicated.
    # * `Upfront` - Transaction is an initial payment made by one of the counterparties  either to bring a transaction to fair value or for any other reason that may be the cause of an off-market transaction.
    # * `Unwind` - Transaction is the final settlement payment made when a transaction is unwound prior to its end date or a payment that may result due to the full termination of derivative transaction(s).
    # * `Principalexchange` - Transaction is an exchange of notional values for cross-currency swaps.
    common:Paymenttypevalues PaymentType?;
    # >
    # * `Paymentondelivery` - Code for payment on delivery.
    # * `Endofmonthofdelivery` - Code for payment at end of month of delivery.
    # * `Endofperiodafterdelivery` - Code for payment at end of period after delivery.
    # * `Endofperiodafterendofdeliverymonth` - Code for payment at end of period after end of month of delivery.
    # * `Paymentonreceiptofinvoice` - Code for payment on receipt of invoice.
    # * `Endofperiodafterendofreceiptmonth` - Code for payment at end of period after end of month of receipt of invoice.
    # * `Endofperiodafterreceipt` - Code for payment at end of period after receipt of invoice.
    # * `Endofmonthofreceipt` - Code for payment at end of month of receipt of invoice.
    # * `Endofperiodaftermatch` - Code for payment at end of period after match or mismatch acceptance.
    # * `Endofperiodaftershipmentdate` - Payment at end of period after shipment date.
    # * `Endofperiodafterpurchaseorderdate` - Payment at end of period after purchase order date.
    # * `Endofperiodafterbaselineestablishment` - Payment at end of period after baseline establishment date.
    # * `Endofperiodafterinvoicedate` - Payment at end of period after invoice date.
    common:Paymenttimevalues PaymentTime?;
    # >
    # * `Fax` - Remittance advice information must be faxed.
    # * `Electronicdatainterchange` - Remittance advice information must be sent through Electronic Data Interchange (EDI).
    # * `Uniformresourceidentifier` - Remittance advice information needs to be sent to a Uniform Resource Identifier (URI). URI is a compact string of characters that uniquely identify an abstract or physical resource. URI's are the super-set of identifiers, such as URLs, email addresses, ftp sites, etc, and as such, provide the syntax for all of the identification schemes.
    # * `Email` - Remittance advice information must be sent through e-mail.
    # * `Post` - Remittance advice information must be sent through postal services.
    # * `SMS` - Remittance advice information must be sent through by phone as a short message service (SMS).
    common:Remittancedeliverymethodtypevalues RemittanceDeliveryMethod?;
    # Address to which the first agent is to send the remittance information. (ISO20022)
    common:Contactpoint RemittanceLocation?;
    # A schedule which is specified the first payment, last payment, next payment, etc. for a standing orde.
    common:Schedule PaymentSchedule?;
    # Frequency at which the fee is charged
    common:Frequency PaymentFrequency?;
    # Payment reference (sometimes called remittance information or payment description) can appear at both debtor and creditor levels, but with slightly different roles:
    #
    # At the Debtor (Payer) Level 
    # The debtor provides the reference/narrative when initiating the payment. 
    # Purpose: to explain what the payment is for (e.g., Invoice 1234, August rent). 
    # This is usually optional, but very useful for reconciliation.
    #
    #
    # At the Creditor (Payee) Level 
    # The same reference is transmitted along with the payment message and shown to the creditor when funds are received. 
    # Purpose: allows the creditor to match the payment to the correct invoice, order, or account.
    string PaymentDescription?;
    # Unique and unambiguous identifier for the payment
    common:Paymentidentification PaymentIdentification?;
};

# Details about a product inventory type holding
public type ProductInventoryItem record {
    # An item in a product inventory
    string ProductInventoryItem?;
};

# Maintain an inventory or holding of some resource and make assignments/allocations as requested  within Product Inventory Item Management. 
# Example: Track the inventory and administer the distribution of central cash holdings throughout the branch & ATM network.
public type ProductInventoryAllocation record {
    # A schedule which is specified the first payment, last payment, next payment, etc. for a standing orde.
    common:Schedule ProductInventoryAllocationServiceSchedule?;
    # The collection of product inventory items
    AssetHolding ProductInventoryHoldings?;
    # >
    # * `ITService` - 
    # * `AdministrativeService` - 
    # * `SystemService` - 
    # * `FinancialService` - 
    # * `InformationService` - 
    # * `BusinessService` - 
    common:Servicetypevalues ProductandServiceType?;
    # Reference to a specific type of product inventory item
    string ProductInventoryItemType?;
    # Details about a product inventory type holding
    ProductInventoryItem ProductInventoryItemRecord?;
    # Description of the inventory item used for selection/reference purposes
    string ProductInventoryItemDescription?;
    # Details as to the supplier details for obtaining additional items when required (includes ordering details, volumes and frequency, pricing, delivery timelines etc.)
    string ProductInventoryItemSupplierDetails?;
    # The locations where the product inventory is used or allocated
    common:Location ProductInventoryUsedLocations?;
    # The collection of product inventory items
    AssetHolding ProductInventoryHolding?;
};

# The collection of product inventory items
public type AssetHolding record {
    # Specifies in terms of value and quantity the assets. (ISO20022)
    string AssetHolding?;
};

public type ResiliencyandPerformanceChecksOk record {|
    *http:Ok;
    # body
    ResiliencyandPerformanceChecks body;
|};

public type ProcessingErrorandIntegrityChecksOk record {|
    *http:Ok;
    # body
    ProcessingErrorandIntegrityChecks body;
|};

# The Processing Error and Integrity Checks test is one aspect that can be intergrated into the overall Processing Error and Integrity Checks
public type UsabilityChecks record {
    # The required status/situation before the test can be applied
    common:Condition Preconditions?;
    # The schedule and timing of the testing performed
    common:Schedule Schedule?;
    # The test version employed
    string VersionNumber?;
    # The Processing Error and Integrity Checks specific Business Service
    common:BusinessService BusinessService?;
    # Reference to Processing Error and Integrity Checks
    common:Assessment ProductandServiceAssessmentReference?;
    # Reference to Processing Error and Integrity Checks
    common:Test UsabilityChecksReference?;
    # The type of Usability Checks
    string UsabilityChecksType?;
};

# To test or assess an entity, possibly against some formal qualification or certification requirement within Product Quality Assurance. 
public type ProductandServiceAssessment record {
    # A Classification value that distinguishes between Assessments according to type of concern defined within Productand Service Assessment .
    string ProductandServiceAssessmentParameterType?;
    # A selected optional business service as subject matter of Productand Service Assessment
    common:Service ProductandServiceAssessmentSelectedOption?;
    # The type of Productand Service Assessment
    string ProductandServiceAssessmentType?;
    # Reference to Processing Error and Integrity Checks
    common:Assessment ProductandServiceAssessmentReference?;
    # Request to assess
    common:Instruction ProductandServiceAssessmentRequest?;
    # The schedule and timing of the testing performed
    common:Schedule ProductandServiceAssessmentSchedule?;
    # Status of the product and service assessment
    common:Status ProductandServiceAssessmentStatus?;
    # Usage log of the product and service assessment
    common:Log ProductandServiceAssessmentUsageLog?;
    # Reference to an entity that assigns and manages the identification.
    # tReference to the organization or agency that issued the identifier (e.g., DMV, Passport Office).
    common:Involvedparty ProductandServiceAssessmentRequesterReference?;
    # Reference to an entity that assigns and manages the identification.
    # tReference to the organization or agency that issued the identifier (e.g., DMV, Passport Office).
    common:Involvedparty ProductandServiceAssessmentAssociatedParty?;
    # Reference to an entity that assigns and manages the identification.
    # tReference to the organization or agency that issued the identifier (e.g., DMV, Passport Office).
    common:Involvedparty ProductandServiceAssessmentServiceProviderReference?;
};

# The Processing Error and Integrity Checks test is one aspect that can be intergrated into the overall Processing Error and Integrity Checks
public type FunctionalConsistencyChecks record {
    # The required status/situation before the test can be applied
    common:Condition Preconditions?;
    # The schedule and timing of the testing performed
    common:Schedule Schedule?;
    # The test version employed
    string VersionNumber?;
    # The Processing Error and Integrity Checks specific Business Service
    common:BusinessService BusinessService?;
    # Reference to Processing Error and Integrity Checks
    common:Assessment ProductandServiceAssessmentReference?;
    # Reference to Processing Error and Integrity Checks
    common:Test FunctionalConsistencyChecksReference?;
    # The type of Functional Consistency Checks
    string FunctionalConsistencyChecksType?;
};

public type FunctionalConsistencyChecksOk record {|
    *http:Ok;
    # body
    FunctionalConsistencyChecks body;
|};

public type ProductandServiceAssessmentOk record {|
    *http:Ok;
    # body
    ProductandServiceAssessment body;
|};

# The Processing Error and Integrity Checks test is one aspect that can be intergrated into the overall Processing Error and Integrity Checks
public type ProcessingErrorandIntegrityChecks record {
    # The required status/situation before the test can be applied
    common:Condition Preconditions?;
    # The schedule and timing of the testing performed
    common:Schedule Schedule?;
    # The test version employed
    string VersionNumber?;
    # The Processing Error and Integrity Checks specific Business Service
    common:BusinessService BusinessService?;
    # Reference to Processing Error and Integrity Checks
    common:Assessment ProductandServiceAssessmentReference?;
    # Reference to Processing Error and Integrity Checks
    common:Test ProcessingErrorandIntegrityChecksReference?;
    # The type of Processing Error and Integrity Checks
    string ProcessingErrorandIntegrityChecksType?;
};

public type UsabilityChecksOk record {|
    *http:Ok;
    # body
    UsabilityChecks body;
|};

# The Processing Error and Integrity Checks test is one aspect that can be intergrated into the overall Processing Error and Integrity Checks
public type ResiliencyandPerformanceChecks record {
    # The required status/situation before the test can be applied
    common:Condition Preconditions?;
    # The schedule and timing of the testing performed
    common:Schedule Schedule?;
    # The test version employed
    string VersionNumber?;
    # The Processing Error and Integrity Checks specific Business Service
    common:BusinessService BusinessService?;
    # Reference to Processing Error and Integrity Checks
    common:Assessment ProductandServiceAssessmentReference?;
    # Reference to Processing Error and Integrity Checks
    common:Test ResiliencyandPerformanceChecksReference?;
    # The type of Resiliency and Performance Checks
    string ResiliencyandPerformanceChecksType?;
};

# A Classification value that distinguishes between the type of process undertaken within Procedure
public type Proceduretypevalues record {
    # A Classification value that distinguishes between the type of process undertaken within Procedure
    string Proceduretypevalues?;
};

# Reference to Service Scheduling
public type Workstep record {
    # Result of the workstep
    string WorkstepResult?;
    # A Classification value that distinguishes between the type of workstep undertaken within Procedure
    Worksteptypevalues WorkstepType?;
    # Description of the workstep
    string WorkstepDescription?;
    # The date when the identifier became valid.
    common:Datetime WorkstepDateTime?;
    # Status of the workstep
    common:Status WorkstepStatus?;
    # Work product of the workstep
    common:Workproduct WorkstepWorkproduct?;
};

# A course of action for doing Service Scheduling in the context of executing the Service Scheduling
public type ServiceEvaluation record {
    # The required status/situation and or tasks that need to be completed prior to the initiation of the workstep
    common:Condition Preconditions?;
    # Reference to an entity that assigns and manages the identification.
    # tReference to the organization or agency that issued the identifier (e.g., DMV, Passport Office).
    common:Involvedparty BusinessUnitEmployeeReference?;
    # The timing and key actions/milestones making up the workstep
    common:Schedule Schedule?;
    # The Service Scheduling specific Business Service
    common:BusinessService BusinessService?;
    # The required status/situation and or tasks that need to be completed prior to the initiation of the workstep
    common:Condition Postconditions?;
    # Reference to Service Scheduling
    Procedure ProductTrainingProcedureReference?;
    # Reference to Service Scheduling
    Workstep ServiceEvaluationReference?;
    # The type of Service Evaluation
    string ServiceEvaluationType?;
};

# A course of action for doing Service Scheduling in the context of executing the Service Scheduling
public type ServiceScheduling record {
    # The required status/situation and or tasks that need to be completed prior to the initiation of the workstep
    common:Condition Preconditions?;
    # Reference to an entity that assigns and manages the identification.
    # tReference to the organization or agency that issued the identifier (e.g., DMV, Passport Office).
    common:Involvedparty BusinessUnitEmployeeReference?;
    # The timing and key actions/milestones making up the workstep
    common:Schedule Schedule?;
    # The Service Scheduling specific Business Service
    common:BusinessService BusinessService?;
    # The required status/situation and or tasks that need to be completed prior to the initiation of the workstep
    common:Condition Postconditions?;
    # Reference to Service Scheduling
    Procedure ProductTrainingProcedureReference?;
    # Reference to Service Scheduling
    Workstep ServiceSchedulingReference?;
    # The type of Service Scheduling
    string ServiceSchedulingType?;
};

# Reference to Service Scheduling
public type Procedure record {
    # A Classification value that distinguishes between the type of process undertaken within Procedure
    Proceduretypevalues ProcedureType?;
    # The date when the identifier became valid.
    common:Datetime ProcedureDateTime?;
    # Request to process something (most refers to Asset Type)
    common:Instruction ProcedureRequest?;
    # The timing and key actions/milestones making up the workstep
    common:Schedule ProcedureSchedule?;
    # Status of the procedure
    common:Status ProcedureStatus?;
};

# A course of action for doing Service Scheduling in the context of executing the Service Scheduling
public type ContentDevelopment record {
    # The required status/situation and or tasks that need to be completed prior to the initiation of the workstep
    common:Condition Preconditions?;
    # Reference to an entity that assigns and manages the identification.
    # tReference to the organization or agency that issued the identifier (e.g., DMV, Passport Office).
    common:Involvedparty BusinessUnitEmployeeReference?;
    # The timing and key actions/milestones making up the workstep
    common:Schedule Schedule?;
    # The Service Scheduling specific Business Service
    common:BusinessService BusinessService?;
    # The required status/situation and or tasks that need to be completed prior to the initiation of the workstep
    common:Condition Postconditions?;
    # Reference to Service Scheduling
    Procedure ProductTrainingProcedureReference?;
    # Reference to Service Scheduling
    Workstep ContentDevelopmentReference?;
    # The type of Content Development
    string ContentDevelopmentType?;
};

public type ContentDevelopmentOk record {|
    *http:Ok;
    # body
    ContentDevelopment body;
|};

# A course of action for doing Service Scheduling in the context of executing the Service Scheduling
public type ServiceDelivery record {
    # The required status/situation and or tasks that need to be completed prior to the initiation of the workstep
    common:Condition Preconditions?;
    # Reference to an entity that assigns and manages the identification.
    # tReference to the organization or agency that issued the identifier (e.g., DMV, Passport Office).
    common:Involvedparty BusinessUnitEmployeeReference?;
    # The timing and key actions/milestones making up the workstep
    common:Schedule Schedule?;
    # The Service Scheduling specific Business Service
    common:BusinessService BusinessService?;
    # The required status/situation and or tasks that need to be completed prior to the initiation of the workstep
    common:Condition Postconditions?;
    # Reference to Service Scheduling
    Procedure ProductTrainingProcedureReference?;
    # Reference to Service Scheduling
    Workstep ServiceDeliveryReference?;
    # The type of Service Delivery
    string ServiceDeliveryType?;
};

public type ServiceDeliveryOk record {|
    *http:Ok;
    # body
    ServiceDelivery body;
|};

# A Classification value that distinguishes between the type of workstep undertaken within Procedure
public type Worksteptypevalues record {
    # A Classification value that distinguishes between the type of workstep undertaken within Procedure
    string Worksteptypevalues?;
};

public type ProductTrainingProcedureOk record {|
    *http:Ok;
    # body
    ProductTrainingProcedure body;
|};

public type ServiceSchedulingOk record {|
    *http:Ok;
    # body
    ServiceScheduling body;
|};

public type ProductTrainingProcedure record {
    # A Classification value that distinguishes between the type of process undertaken within Procedure
    Proceduretypevalues ProcedureType?;
    # The date when the identifier became valid.
    common:Datetime ProcedureDateTime?;
    # Request to process something (most refers to Asset Type)
    common:Instruction ProcedureRequest?;
    # The timing and key actions/milestones making up the workstep
    common:Schedule ProcedureSchedule?;
    # ProcedureStatus
    common:Status ProcedureStatus?;
};

public type RootCauseAlgorithmOk record {|
    *http:Ok;
    # body
    RootCauseAlgorithm body;
|};

public type ServicingRootCauseAnalysisOk record {|
    *http:Ok;
    # body
    ServicingRootCauseAnalysis body;
|};

# A collection of models/calculations/algoritms that can be applied to a subject or activity
#
# Examples: Average balance calculation, Propensity to buy
public type RootCauseAlgorithm record {
    # Defines the algorithm used and its intended analytical insights
    string ServicingActivityRootCauseAlgorithmSpecification?;
    # The type of work task (e.g. consolidate servicing activity history, apply pattern detection, refine/qualify detected servicing pattern definition)
    string ServicingActivityRootCauseAnalysisWorkTaskType?;
    # The make-up/schedule of the work task performed
    common:Task ServicingActivityRootCauseAnalysisWorkTask?;
    # File of consolidated notes, evaluations and findings for the work task
    common:Workproduct ServicingActivityRootCauseAnalysisWorkTaskWorkProducts?;
    # The make-up/schedule of the work task performed
    common:Task ServicingActivityRootCauseAnalysisWorkTaskResult?;
    # The date-time the specific work task is performed
    DateTime ServicingActivityRootCauseAnalysisWorkTaskDateandTime?;
};

# The date-time the specific work task is performed
public type DateTime record {
    # Expression of the point in time
    #
    # is expressed according to "TimeIndicationType"
    # e.g. period, day, more detailed indication
    string TimeIndication?;
    # The type used to qualify the time indication
    string TimeIndicationType?;
};

# Analyze the performance or behavior of some on-going activity or entity  within Servicing Activity Analysis. 
# Examples: Provide behavioral insights and analysis into customer behavior and analyze financial market activity in order to identify opportunities, define pricing and evaluate risks.
#
# Analyze the performance or behavior of some on-going activity or entity. Examples: Provide behavioral insights and analysis into customer behavior and analyze financial market activity in order to identify opportunities, define pricing and evaluate risks.
public type ServicingRootCauseAnalysis record {
    # The type of servicing activity for which the analysis is performed (e.g. self service, contact center assisted,  ATM access)
    string ServicingActivityType?;
    # The period covered by the analysis (from to date time)
    common:Datetimeperiod ServicingActivityAnalysisPeriod?;
    # >
    # * `PerformanceAnalysis` - 
    # * `ActivityAnalysis` - 
    # * `RevenueAnalysis` - 
    # * `CostAnalysis` - 
    # * `PredictiveAnalysis` - 
    # * `BehavioralAnalysis` - 
    # * `ProfitabilityAnalysis` - 
    # * `CompetitiveAnalysis` - 
    # * `CohortAnalysis` - 
    # * `SegmentAnalysis` - 
    # * `SWOTAnalysis` - 
    # * `Benchmarking` - 
    # * `PositioningAnalysis` - 
    # * `ScenarioAnalysis` - 
    # * `IntelligenceGathering` - 
    # * `Profiling` - 
    common:Analysistypevalues ServicingActivityAnalysisType?;
    # The result of the servicing activity analysis - typically the consolidated view from applying multiple underlying root cause algorithms to highlight patterns that indicate potential root cause issues
    common:Analysis ServicingActivityAnalysisResult?;
    # An analysis of the root causes for the detected service anomalies
    string ServicingActivityAnalysisDetermination?;
    # Proposed changes to procedures/organization etc that can mitigate the detected servicing issues
    string ServicingActivityAnalysisRecommendation?;
    # The raw data used in the analysis (retrieved from Servicing Activity History)
    common:Report ServicingActivityHistoryReport?;
};

# To build or enhance something, typically an IT production systems  within System Development. Includes development, Assessment and deployment activities.
# Example: Build, enhance, test and deploy a major enhancement to a production product processing system.
public type ITSystemDevelopment record {
    # The reference to and descriptive name of the deployment project
    common:Name SystemDevelopmentProjectName?;
    # The type of deployment project (e.g. service update, new product release)
    string SystemDevelopmentProjectType?;
    # A description of the scope, goal and make-up of the product deployment project
    string SystemDevelopmentProjectDescription?;
    # The derived deployment execution plan, covering tasks from the completion and acceptance of the deployment plan through to completion of the deployment including post deployment analysis tasks if required. Consolidates the different aspects of the plan. (Captures both planned and actual results)
    string SystemDevelopmentImplementationPlan?;
    # The financial considerations for the deployment (includes planning and execution)
    string SystemDevelopmentBudget?;
    # The organizational aspects of the deployment effort (includes planning and execution)
    string SystemDevelopmentProjectOrganization?;
    # The deployment schedule of events, planned and actual (includes planning and execution tasks)
    common:Schedule SystemDevelopmentProjectSchedule?;
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
};

# A collection of one or more deliverables that may be further defined in terms of an approach to be followed to create them
#
# Examples: Functional module specification
public type TestingSpecification record {
    # Details the testing tasks and deliverables of system development project
    string TestingSpecificationTaskDefinition?;
    # Collection of design and development work products used in the implementation of the software and data specification
    common:Workproduct TestingSpecificationTaskWorkProducts?;
    # Reference to associated project documents
    common:DocumentDirectoryEntry DocumentDirectoryEntryInstanceReference?;
    # The testing specification and results as a suitably structured and formatted document
    string SystemTestingSpecification?;
};

public type ITSystemDevelopmentOk record {|
    *http:Ok;
    # body
    ITSystemDevelopment body;
|};

# A collection of one or more deliverables that may be further defined in terms of an approach to be followed to create them
#
# Examples: Functional module specification
public type TechnicalSpecification record {
    # Details the technical specification tasks and deliverables of system development project
    string TechnicalSpecificationTaskDefinition?;
    # Collection of design and development work products used in the implementation of the software and data specification
    common:Workproduct TechnicalSpecificationTaskWorkProducts?;
    # Reference to associated project documents
    common:DocumentDirectoryEntry DocumentDirectoryEntryInstanceReference?;
    # The technical specification as a suitably structured and formatted document
    string SystemTechnicalSpecification?;
};

# A collection of one or more deliverables that may be further defined in terms of an approach to be followed to create them
#
# Examples: Functional module specification
public type UsageSpecification record {
    # Details the usage guidelines specification tasks and deliverables of the system development project
    string UsageSpecificationTaskDefinition?;
    # Collection of design and development work products used in the implementation of the software and data specification
    common:Workproduct UsageSpecificationTaskWorkProducts?;
    # Reference to associated project documents
    common:DocumentDirectoryEntry DocumentDirectoryEntryInstanceReference?;
    # The usage guideline specification as a suitably structured and formatted document
    string SystemFunctionalSpecification?;
};

# A collection of one or more deliverables that may be further defined in terms of an approach to be followed to create them
#
# Examples: Functional module specification
public type SoftwareandDataSpecification record {
    # Details the software and data specification/development tasks and deliverables of system development project
    string SoftwareandDataSpecificationTaskDefinition?;
    # Collection of design and development work products used in the implementation of the software and data specification
    common:Workproduct SoftwareandDataSpecificationTaskWorkProducts?;
    # Reference to associated project documents
    common:DocumentDirectoryEntry DocumentDirectoryEntryInstanceReference?;
    # The developed software and data specification in a format suited for production deployment
    string SystemSoftwareandDataSpecification?;
};

# A collection of one or more deliverables that may be further defined in terms of an approach to be followed to create them
#
# Examples: Functional module specification
public type FunctionalSpecification record {
    # Details the functional specification tasks and deliverables of system development project
    string FunctionalSpecificationTaskDefinition?;
    # Collection of design and development work products used in the implementation of the software and data specification
    common:Workproduct FunctionalSpecificationTaskWorkProducts?;
    # Reference to associated project documents
    common:DocumentDirectoryEntry DocumentDirectoryEntryInstanceReference?;
    # The functional specification as a suitably structured and formatted document
    string SystemFunctionalSpecification?;
};
