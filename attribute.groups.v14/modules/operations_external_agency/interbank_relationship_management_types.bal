import financial.bian.attribute.groups.common as common;

import ballerina/http;

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

