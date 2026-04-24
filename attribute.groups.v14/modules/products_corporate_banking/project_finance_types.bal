import financial.bian.attribute.groups.common as common;

import ballerina/http;

public type ProjectFinanceRepaymentOk record {|
    *http:Ok;
    ProjectFinanceRepayment body;
|};

public type ProjectFinancePlacementOk record {|
    *http:Ok;
    ProjectFinancePlacement body;
|};

# Fulfill any scheduled and ad-hoc obligations under a service arrangement, most typically for a financial product or facility within Project Finance. 
public type ProjectFinanceFacility record {
    # A Classification value that distinguishes between arrangements according to the type of business services within Project Finance Facility ||
    # |
    common:featuretypevalues ProjectFinanceFacilityParameterType?;
    # A selected optional product feature as subject matter of Project Finance Facility ||
    # |
    common:feature ProjectFinanceFacilitySelectedOption?;
    # The type of Project Finance Facility ||
    # |
    common:Bankingproducttype ProjectFinanceFacilityType?;
    # Reference to the calendar used to fulfill Project Finance Facility ||
    # |
    common:Calendar ProjectFinanceFacilityCalendarReference?;
    # The status of Project Finance Facility Status |Status  (https://www.iso20022.org/standardsrepository/type/Status)|Standard|ISO20022 BM ()
    common:status ProjectFinanceFacilityStatus?;
    # Reference to the customer who is involved in Project Finance Facility ||
    # |
    common:involvedparty ProjectFinanceFacilityAssociatedParty?;
    # The curreny which is arranged in Project Finance Facility CurrencyCode|CurrencyCode (https://www.iso20022.org/standardsrepository/type/CurrencyCode)|Standard|ISO20022 BM ()
    common:currencycode ProjectFinanceFacilityCurrency?;
    # Reference to the regulation which is defined in Project Finance Facility GovernanceRules|GovernanceRules (https://www.iso20022.org/standardsrepository/type/GovernanceRules)|Standard|ISO20022 BM ()
    common:RuleSet ProjectFinanceFacilityRegulationReference?;
    # A Classification that distinguishes between the regularity domains of Project Finance Facility ||
    # |
    common:Rulesettype ProjectFinanceFacilityRegulationType?;
    # Reference to the jurisdiction that is assigned to Project Finance Facility in case of legal dispute. Jurisdiction|Jurisdiction (https://www.iso20022.org/standardsrepository/type/Jurisdiction)|Standard|ISO20022 BM ()
    common:Jurisdiction ProjectFinanceFacilityJurisdiction?;
    # The financial accounting unit into which the financial events, with regard to the origination and fulfillment of the agreement in the context of Project Finance Facility, are entered. ||
    # |
    common:BusinessUnit ProjectFinanceFacilityBookingLocation?;
    # The type of account which is linked to Project Finance Facility OBExternalAccountSubType1Code| ()|Standard|UK Open Banking ()
    common:Accounttypevalues ProjectFinanceFacilityAccountType?;
    # Reference to the account which is linked to Project Finance Facility Account|Account  (https://www.iso20022.org/standardsrepository/type/Account)|Standard|ISO20022 BM ()
    common:Account ProjectFinanceFacilityAccountReference?;
    # Reference to the customer who is involved in Project Finance Facility ||
    # |
    common:involvedparty ProjectFinanceFacilityCustomerReference?;
    # The position of Project Finance Facility Position |Position  (https://www.iso20022.org/standardsrepository/type/Position)|Standard|ISO20022 BM ()
    common:Position ProjectFinanceFacilityPosition?;
    # Reference to the product which is linked to Project Finance Facility Product_x000D_
    # |Product (https://www.iso20022.org/standardsrepository/type/Product)|Standard|ISO20022 BM ()
    common:bankingproduct ProjectFinanceFacilityProductReference?;
    # Reference to the limitation related to the position of Project Finance Facility Limit|Limit (https://www.iso20022.org/standardsrepository/type/Limit)|Standard|ISO20022 (https://www.iso20022.org/)
    common:Limitarrangement ProjectFinanceFacilityPositionLimit?;
    # An unique reference to an item or an occurrence of Project Finance Facility ||
    # |
    common:FinancialFacility ProjectFinanceFacilityReference?;
};

# The configuration and execution of Project Finance Placement Fulfillment arrangement within the Project Finance Placement Fulfillment
public type ProjectFinancePlacement record {
    # The required status/situation prior to the implementation of the feature
    common:condition Preconditions?;
    # The timing and key actions/milestones involved in completing the fulfillment feature instance
    common:schedule Schedule?;
    # The Project Finance Placement Fulfillment specific Business Service
    common:businessservice BusinessService?;
    # The required status/situation prior to the implementation of the feature
    common:condition Postconditions?;
    # An unique reference to an item or an occurrence of Project Finance Facility ||
    # |
    common:FinancialFacility ProjectFinanceFacilityReference?;
    # Reference to Project Finance Placement Fulfillment
    common:Arrangement ProjectFinancePlacementFulfillmentReference?;
    # The particular date and time point in the progression of time
    common:text ProjectFinancePlacementFulfillmentType?;
};

public type ProjectFinanceFacilityOk record {|
    *http:Ok;
    ProjectFinanceFacility body;
|};

# The configuration and execution of Project Finance Placement Fulfillment arrangement within the Project Finance Placement Fulfillment
public type ProjectFinanceRepayment record {
    # The required status/situation prior to the implementation of the feature
    common:condition Preconditions?;
    # The timing and key actions/milestones involved in completing the fulfillment feature instance
    common:schedule Schedule?;
    # The Project Finance Placement Fulfillment specific Business Service
    common:businessservice BusinessService?;
    # The required status/situation prior to the implementation of the feature
    common:condition Postconditions?;
    # An unique reference to an item or an occurrence of Project Finance Facility ||
    # |
    common:FinancialFacility ProjectFinanceFacilityReference?;
    # Reference to Project Finance Placement Fulfillment
    common:Arrangement ProjectFinanceRepaymentFulfillmentReference?;
    # The particular date and time point in the progression of time
    common:text ProjectFinanceRepaymentFulfillmentType?;
    # An unique reference to an item or an occurance (data type is Object)
    string ReaymentFulfillmentInstanceReference?;
    # The type of repayment (e.g. scheduled repayment, balloon/early termination)
    string RepaymentTransactionType?;
    # Reference to the customer who is involved in Project Finance Facility ||
    # |
    common:involvedparty RepaymentTransactionPayerReference?;
    # Reference to the account where the payment is made from
    string RepaymentTransactionPayerProductInstanceReference?;
    # Reference to the customer who is involved in Project Finance Facility ||
    # |
    common:involvedparty RepaymentTransactionPayerBankReference?;
    # The amount of the repayment
    common:amount RepaymentTransactionAmount?;
    # The curreny which is arranged in Project Finance Facility CurrencyCode|CurrencyCode (https://www.iso20022.org/standardsrepository/type/CurrencyCode)|Standard|ISO20022 BM ()
    common:currencycode RepaymentTransactionCurrency?;
    # The value date for the repayment transaction
    common:Date RepaymentTransactionValueDate?;
};

public type ProjectFinanceArrangementOk record {|
    *http:Ok;
    ProjectFinanceArrangement body;
|};

# The configuration and execution of Project Finance Placement Fulfillment arrangement within the Project Finance Placement Fulfillment
public type ProjectFinanceSPV record {
    # The required status/situation prior to the implementation of the feature
    common:condition Preconditions?;
    # The timing and key actions/milestones involved in completing the fulfillment feature instance
    common:schedule Schedule?;
    # The Project Finance Placement Fulfillment specific Business Service
    common:businessservice BusinessService?;
    # The required status/situation prior to the implementation of the feature
    common:condition Postconditions?;
    # An unique reference to an item or an occurrence of Project Finance Facility ||
    # |
    common:FinancialFacility ProjectFinanceFacilityReference?;
    # Reference to Project Finance Placement Fulfillment
    common:Arrangement ProjectFinanceSPVFulfillmentReference?;
    # The particular date and time point in the progression of time
    common:text ProjectFinanceSPVFulfillmentType?;
};

# The configuration and execution of Project Finance Placement Fulfillment arrangement within the Project Finance Placement Fulfillment
public type ProjectFinanceArrangement record {
    # The required status/situation prior to the implementation of the feature
    common:condition Preconditions?;
    # The timing and key actions/milestones involved in completing the fulfillment feature instance
    common:schedule Schedule?;
    # The Project Finance Placement Fulfillment specific Business Service
    common:businessservice BusinessService?;
    # The required status/situation prior to the implementation of the feature
    common:condition Postconditions?;
    # An unique reference to an item or an occurrence of Project Finance Facility ||
    # |
    common:FinancialFacility ProjectFinanceFacilityReference?;
    # Reference to Project Finance Placement Fulfillment
    common:Arrangement ProjectFinanceArrangementFulfillmentReference?;
    # The particular date and time point in the progression of time
    common:text ProjectFinanceArrangementFulfillmentType?;
};

public type ProjectFinanceSPVOk record {|
    *http:Ok;
    ProjectFinanceSPV body;
|};
