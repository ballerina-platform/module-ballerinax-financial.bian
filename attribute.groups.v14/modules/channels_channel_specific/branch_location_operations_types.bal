import financial.bian.attribute.groups.common as common;

import ballerina/http;

# Reference to the Safe Custody Operations
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

# The Safe Custody Operations is an activity that is performed as one aspect of carrying out the Branch Location Administrative Plan
public type CashInventoryHandling record {
    # The required status/situation before the routine can be undertaken
    common:Condition Preconditions?;
    # Reference to an entity that assigns and manages the identification.
    # tReference to the organization or agency that issued the identifier (e.g., DMV, Passport Office).
    common:Involvedparty BusinessUnitorEmployeeReference?;
    # The timing and key actions/milestones involved in completing the routine
    common:Schedule Schedule?;
    # The <BQ> specific Business Service
    common:BusinessService BusinessService?;
    # The required status/situation before the routine can be undertaken
    common:Condition Postconditions?;
    # Reference to the Branch Location Administrative Plan
    common:Plan BranchLocationAdministrationPlanReference?;
    # Reference to the Safe Custody Operations
    PlannedAction CashInventoryHandlingReference?;
    # The type of Cash Inventory Handling
    string CashInventoryHandlingType?;
};

# Handle and assign the day to day activities, capture time, costs and income for an operational unit within Branch Location Operations. 
public type BranchLocationAdministrativePlan record {
    # A Classification value that specifies the type of Budget
    common:Budgettype BranchLocationAdministrativePlanBudgetType?;
    # BranchLocationAdministrativePlanBudget
    common:Amount BranchLocationAdministrativePlanBudget?;
    # The assignment of a required activity to a responsibe party in Branch Location Administrative Plan
    common:Assignment BranchLocationAdministrativePlanAssignment?;
    # BranchLocationAdministrativePlanDuty
    common:Arrangement BranchLocationAdministrativePlanDuty?;
    # Reference to an entity that assigns and manages the identification.
    # tReference to the organization or agency that issued the identifier (e.g., DMV, Passport Office).
    common:Involvedparty BranchLocationAdministrativePlanAssociatedParty?;
    # Balance of budget which is arranged whitin Branch Location Administrative Plan
    common:Accountbalance BranchLocationAdministrativePlanBudgetBalance?;
    # The subject matter of Branch Location Administrative Plan
    BranchLocation BranchLocationAdministrativePlanSubjectMatter?;
    # The type of Branch Location Administrative Plan
    Plantype BranchLocationAdministrativePlanType?;
    # Reference to the Branch Location Administrative Plan
    common:Plan BranchLocationAdministrativePlanReference?;
    # Documentation of Branch Location Administrative Plan
    string BranchLocationAdministrativePlanDescription?;
};

# The type of Branch Location Administrative Plan
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

# The subject matter of Branch Location Administrative Plan
public type BranchLocation record {
    # BranchReference
    common:Branch BranchReference?;
    # LocationReference
    common:Location LocationReference?;
};

public type BranchLocationAdministrativePlanOk record {|
    *http:Ok;
    # body
    BranchLocationAdministrativePlan body;
|};
