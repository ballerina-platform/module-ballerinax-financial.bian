import financial.bian.attribute.groups.common as common;

import ballerina/http;

public type AccountsReceivablePurchaseOk record {|
    *http:Ok;
    AccountsReceivablePurchase body;
|};

# The configuration and execution of Accounts Receivable Evaluation Fulfillment arrangement within the Accounts Receivable Evaluation Fulfillment
public type AccountReceivableFactoring record {
    # The required status/situation prior to the implementation of the feature
    common:condition Preconditions?;
    # The timing and key actions/milestones involved in completing the fulfillment feature instance
    common:schedule Schedule?;
    # The Accounts Receivable Evaluation Fulfillment specific Business Service
    common:businessservice BusinessService?;
    # The required status/situation prior to the implementation of the feature
    common:condition Postconditions?;
    # An unique reference to an item or an occurrence of Factoring Facility ||
    # |
    common:FinancialFacility FactoringFacilityReference?;
    # Reference to Accounts Receivable Evaluation Fulfillment
    common:Arrangement AccountReceivableFactoringFulfillmentReference?;
    # The particular date and time point in the progression of time
    common:text AccountReceivableFactoringFulfillmentType?;
};

# The configuration and execution of Accounts Receivable Evaluation Fulfillment arrangement within the Accounts Receivable Evaluation Fulfillment
public type AccountsReceivableEvaluation record {
    # The required status/situation prior to the implementation of the feature
    common:condition Preconditions?;
    # The timing and key actions/milestones involved in completing the fulfillment feature instance
    common:schedule Schedule?;
    # The Accounts Receivable Evaluation Fulfillment specific Business Service
    common:businessservice BusinessService?;
    # The required status/situation prior to the implementation of the feature
    common:condition Postconditions?;
    # An unique reference to an item or an occurrence of Factoring Facility ||
    # |
    common:FinancialFacility FactoringFacilityReference?;
    # Reference to Accounts Receivable Evaluation Fulfillment
    common:Arrangement AccountsReceivableEvaluationFulfillmentReference?;
    # The particular date and time point in the progression of time
    common:text AccountsReceivableEvaluationFulfillmentType?;
};

public type AccountsReceivableEvaluationOk record {|
    *http:Ok;
    AccountsReceivableEvaluation body;
|};

public type FactoringFacilityOk record {|
    *http:Ok;
    FactoringFacility body;
|};

# The configuration and execution of Accounts Receivable Evaluation Fulfillment arrangement within the Accounts Receivable Evaluation Fulfillment
public type AccountsReceivablePurchase record {
    # The required status/situation prior to the implementation of the feature
    common:condition Preconditions?;
    # The timing and key actions/milestones involved in completing the fulfillment feature instance
    common:schedule Schedule?;
    # The Accounts Receivable Evaluation Fulfillment specific Business Service
    common:businessservice BusinessService?;
    # The required status/situation prior to the implementation of the feature
    common:condition Postconditions?;
    # An unique reference to an item or an occurrence of Factoring Facility ||
    # |
    common:FinancialFacility FactoringFacilityReference?;
    # Reference to Accounts Receivable Evaluation Fulfillment
    common:Arrangement AccountsReceivablePurchaseFulfillmentReference?;
    # The particular date and time point in the progression of time
    common:text AccountsReceivablePurchaseFulfillmentType?;
};

# The configuration and execution of Accounts Receivable Evaluation Fulfillment arrangement within the Accounts Receivable Evaluation Fulfillment
public type AccountReceivableProcessing record {
    # The required status/situation prior to the implementation of the feature
    common:condition Preconditions?;
    # The timing and key actions/milestones involved in completing the fulfillment feature instance
    common:schedule Schedule?;
    # The Accounts Receivable Evaluation Fulfillment specific Business Service
    common:businessservice BusinessService?;
    # The required status/situation prior to the implementation of the feature
    common:condition Postconditions?;
    # An unique reference to an item or an occurrence of Factoring Facility ||
    # |
    common:FinancialFacility FactoringFacilityReference?;
    # Reference to Accounts Receivable Evaluation Fulfillment
    common:Arrangement AccountReceivableProcessingFulfillmentReference?;
    # The particular date and time point in the progression of time
    common:text AccountReceivableProcessingFulfillmentType?;
};

# Fulfill any scheduled and ad-hoc obligations under a service arrangement, most typically for a financial product or facility within Factoring. 
public type FactoringFacility record {
    # A Classification value that distinguishes between arrangements according to the type of business services within Factoring Facility ||
    # |
    common:featuretypevalues FactoringFacilityParameterType?;
    # A selected optional product feature as subject matter of Factoring Facility ||
    # |
    common:feature FactoringFacilitySelectedOption?;
    # The type of Factoring Facility ||
    # |
    common:Bankingproducttype FactoringFacilityType?;
    # Reference to the calendar used to fulfill Factoring Facility ||
    # |
    common:Calendar FactoringFacilityCalendarReference?;
    # The status of Factoring Facility Status |Status  (https://www.iso20022.org/standardsrepository/type/Status)|Standard|ISO20022 BM ()
    common:status FactoringFacilityStatus?;
    # Reference to the customer who is involved in Factoring Facility ||
    # |
    common:involvedparty FactoringFacilityAssociatedParty?;
    # The curreny which is arranged in Factoring Facility CurrencyCode|CurrencyCode (https://www.iso20022.org/standardsrepository/type/CurrencyCode)|Standard|ISO20022 BM ()
    common:currencycode FactoringFacilityCurrency?;
    # Reference to the regulation which is defined in Factoring Facility GovernanceRules|GovernanceRules (https://www.iso20022.org/standardsrepository/type/GovernanceRules)|Standard|ISO20022 BM ()
    common:RuleSet FactoringFacilityRegulationReference?;
    # A Classification that distinguishes between the regularity domains of Factoring Facility ||
    # |
    common:Rulesettype FactoringFacilityRegulationType?;
    # Reference to the jurisdiction that is assigned to Factoring Facility in case of legal dispute. Jurisdiction|Jurisdiction (https://www.iso20022.org/standardsrepository/type/Jurisdiction)|Standard|ISO20022 BM ()
    common:Jurisdiction FactoringFacilityJurisdiction?;
    # The financial accounting unit into which the financial events, with regard to the origination and fulfillment of the agreement in the context of Factoring Facility, are entered. ||
    # |
    common:BusinessUnit FactoringFacilityBookingLocation?;
    # The type of account which is linked to Factoring Facility OBExternalAccountSubType1Code| ()|Standard|UK Open Banking ()
    common:Accounttypevalues FactoringFacilityAccountType?;
    # Reference to the account which is linked to Factoring Facility Account|Account  (https://www.iso20022.org/standardsrepository/type/Account)|Standard|ISO20022 BM ()
    common:Account FactoringFacilityAccountReference?;
    # Reference to the customer who is involved in Factoring Facility ||
    # |
    common:involvedparty FactoringFacilityCustomerReference?;
    # The position of Factoring Facility Position |Position  (https://www.iso20022.org/standardsrepository/type/Position)|Standard|ISO20022 BM ()
    common:Position FactoringFacilityPosition?;
    # Reference to the product which is linked to Factoring Facility Product_x000D_
    # |Product (https://www.iso20022.org/standardsrepository/type/Product)|Standard|ISO20022 BM ()
    common:bankingproduct FactoringFacilityProductReference?;
    # Reference to the limitation related to the position of Factoring Facility Limit|Limit (https://www.iso20022.org/standardsrepository/type/Limit)|Standard|ISO20022 (https://www.iso20022.org/)
    common:Limitarrangement FactoringFacilityPositionLimit?;
    # An unique reference to an item or an occurrence of Factoring Facility ||
    # |
    common:FinancialFacility FactoringFacilityReference?;
};

public type AccountReceivableProcessingOk record {|
    *http:Ok;
    AccountReceivableProcessing body;
|};

public type AccountReceivableFactoringOk record {|
    *http:Ok;
    AccountReceivableFactoring body;
|};
