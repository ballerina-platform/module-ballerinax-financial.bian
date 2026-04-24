import financial.bian.attribute.groups.common as common;

import ballerina/http;

# >
# * `Principal` - 
# * `Actual` - Actual amount.
# * `Estimated` - Estimated amount (the final amount could be above or below).
# * `Maximum` - Maximum amount (the final amount must be less or equal).
# * `Default` - Default amount.
# * `Replacement` - Replacement amount.
# * `Incremental` - Incremental amount for reservation.
# * `Decremental` - Decremental amount for reservation.
# * `Reserved` - Reserved or updated reserved amount for reservation.
# * `Available` - 
# * `Used` - 
# * `DuePayable` - 
# * `Minimum` - 
# * `Open` - The amount is open.(ISO20022)
# * `Unknown` - The amount is unkown.(ISO20022)
# * `Fixed` - The amount represents a fixed value.(ISO20022)
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
# Oversee the working of a business unit, assign work, manage against a plan and troubleshoot issues within Customer Case Management.
public type CustomerCaseManagementPlan record {
    # Period of time during which the status is valid.
    common:Datetimeperiod CustomerCaseManagementPlanPeriod?;
    # Definition of the basis for customer case evaluation
    # CustomerCasePoliciesAndGuidelines
    common:RuleSet CustomerCasePoliciesAndGuidelines?;
    # The target and actual service performance goals that are tracked by customer case management
    # CustomerCaseServicePerformanceGoals
    common:Goal CustomerCaseServicePerformanceGoals?;
    # The schedule and timing of the analysis performed using the algorithm
    # CustomerCaseServiceSchedule
    common:Schedule CustomerCaseServiceSchedule?;
    # The set-up/organization for the customer case business function (covers operational and management/oversight roles and responsibilities)
    # CustomerCaseServiceOperatingConfiguration
    common:Arrangement CustomerCaseServiceOperatingConfiguration?;
    # Details the number and skill/qualification profile of the customer case handling staff (target and actual)
    # CustomerCaseResourcePlan
    common:Plan CustomerCaseResourcePlan?;
    # Details the number and skill/qualification profile of the customer case handling staff (target and actual)
    # CustomerCaseTrainingPlan
    common:Plan CustomerCaseTrainingPlan?;
};

# Record of the sensitivity/tuning evaluations and adjustments made to the rule settings for the criterion
# An arrangement which is specifying an estimate of costs, revenues, and resources over a specified period, reflecting a reading of future financial conditions and goals. (adapted from Business Dictionary)
# >
# * `Offered` - 
# * `Confirmed` - 
# * `Completed` - 
# * `Signed` - 
# * `Terminated` - 
# * `Rejected` - 
# A collection of one or more responsibilities or tasks under management
#
# Examples: Relationship development, Troubleshooting
public type Performance record {
    # Record of the customer case resolution resource utilization (target and actual)
    string CustomerCaseResourceUtilization?;
    # Estimated projected customer case resource requirements and utilization and loading based on historical patterns and anticipated activity
    string CustomerCaseLoadingProjections?;
    # Tracked activity and performance statistics used to manage the case resolution business function
    string CustomerCaseResolutionServiceStatistics?;
    # The type of activity that is tracked and analyzed (e.g. case resolution throughput, time/effort per case, customer acceptance/appeal rate, merchant acceptance/appeal rate, customer/merchant retention, case resolution profit/loss)
    string CustomerCaseServiceStatisticType?;
    # The statistical analysis that can include historical and trended views of the activity
    common:Amount CustomerCaseServiceStatisticValue?;
    # The evaluation of the root cause or comparative assessments of the analysis
    # CustomerCaseServiceStatisticInterpretation
    string CustomerCaseServiceStatisticInterpretation?;
    # Service/configuration amendment recommendations arising from the statistical analysis
    string CustomerCaseServiceStatisticRecommendation?;
};

# The date when the identifier became valid.
# >
# * `Requested` - 
# * `Proposed` - 
# * `Offered` - 
# * `Accepted` - 
# * `Cancelled` - 
# * `Fulfilled` - 
# * `Terminated` - 
# The statistical analysis that can include historical and trended views of the activity
# Details the number and skill/qualification profile of the customer case handling staff (target and actual)
# >
# * `AdministrativePlan` - 
# * `ManagementPlan` - 
# * `StratgyPlan` - 
# * `FinancialPlan` - 
# * `DevelopmentPlan` - 
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
# A collection of one or more responsibilities or tasks under management
#
# Examples: Relationship development, Troubleshooting
public type Rules record {
    # Definition of the basis for customer case evaluation
    common:RuleSet CustomerCaseDecisionCriterion?;
    # Definition of the applicable subject/criterion to be considered in case evaluation (e.g. documentary evidence, customer/merchant history, projected relationship impact, financial cost/projected revenue impact, reputational impact)
    # CustomerCaseDecisionCriterionDefinition
    string CustomerCaseDecisionCriterionDefinition?;
    # Definition of the basis for customer case evaluation
    common:RuleSet CustomerCaseDecisionCriterionRules?;
    # Record of the sensitivity/tuning evaluations and adjustments made to the rule settings for the criterion
    # CustomerCaseDecisionCriterionAnalysis
    common:Analysis CustomerCaseDecisionCriterionAnalysis?;
    # Sample case examples that apply the criterion that are used to evaluate the impact and re-calibrate the associated rules as appropriate
    # CustomerCaseDecisionCriterionHistory
    string CustomerCaseDecisionCriterionHistory?;
};

# Date on which the agreement was signed by all parties. (ISO20022)
# >
# * `Continent` - 
# * `Country` - 
# * `State` - 
# * `District` - 
# * `Province` - 
# * `Town` - 
# * `City` - 
# * `Region` - 
# The schedule and timing of the analysis performed using the algorithm
# >
# * `Initiate` - 
# * `Execute` - 
# * `Create` - 
# * `Transfer` - 
# * `Pay` - 
# * `Deliver` - 
# * `Apply` - 
# * `Calculate` - 
public type CustomerCaseManagementPlanOk record {|
    *http:Ok;
    # body
    CustomerCaseManagementPlan body;
|};

