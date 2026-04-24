import financial.bian.attribute.groups.common as common;

import ballerina/http;

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

