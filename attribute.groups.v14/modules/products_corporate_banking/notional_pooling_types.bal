import financial.bian.attribute.groups.common as common;

import ballerina/http;

# The configuration and execution of Notional Account Arrangement Fulfillment arrangement within the Notional Account Arrangement Fulfillment
public type NotionalAccountArrangement record {
    # The required status/situation prior to the implementation of the feature
    common:condition Preconditions?;
    # The timing and key actions/milestones involved in completing the fulfillment feature instance
    common:schedule Schedule?;
    # The Notional Account Arrangement Fulfillment specific Business Service
    common:businessservice BusinessService?;
    # The required status/situation prior to the implementation of the feature
    common:condition Postconditions?;
    # An unique reference to an item or an occurrence of Notional Pooling Facility ||
    # |
    common:FinancialFacility NotionalPoolingFacilityReference?;
    # Obligation|Obligation (https://www.iso20022.org/standardsrepository/type/Obligation)|Standard|ISO20022 BM ()
    common:Arrangement NotionalAccountArrangementFulfillmentReference?;
    # The particular date and time point in the progression of time
    common:text NotionalAccountArrangementFulfillmentType?;
};

# The configuration and execution of Notional Account Arrangement Fulfillment arrangement within the Notional Account Arrangement Fulfillment
public type NotionalAccountConsolidatedPosition record {
    # The required status/situation prior to the implementation of the feature
    common:condition Preconditions?;
    # The timing and key actions/milestones involved in completing the fulfillment feature instance
    common:schedule Schedule?;
    # The Notional Account Arrangement Fulfillment specific Business Service
    common:businessservice BusinessService?;
    # The required status/situation prior to the implementation of the feature
    common:condition Postconditions?;
    # An unique reference to an item or an occurrence of Notional Pooling Facility ||
    # |
    common:FinancialFacility NotionalPoolingFacilityReference?;
    # Obligation|Obligation (https://www.iso20022.org/standardsrepository/type/Obligation)|Standard|ISO20022 BM ()
    common:Arrangement NotionalAccountConsolidatedPositionFulfillmentReference?;
    # The particular date and time point in the progression of time
    common:text NotionalAccountConsolidatedPositionFulfillmentType?;
};

public type NotionalAccountConsolidatedPositionOk record {|
    *http:Ok;
    NotionalAccountConsolidatedPosition body;
|};

public type NotionalAccountInterestAllocationOk record {|
    *http:Ok;
    NotionalAccountInterestAllocation body;
|};

public type NotionalAccountArrangementOk record {|
    *http:Ok;
    NotionalAccountArrangement body;
|};

# The configuration and execution of Notional Account Arrangement Fulfillment arrangement within the Notional Account Arrangement Fulfillment
public type NotionalAccountInterestAllocation record {
    # The required status/situation prior to the implementation of the feature
    common:condition Preconditions?;
    # The timing and key actions/milestones involved in completing the fulfillment feature instance
    common:schedule Schedule?;
    # The Notional Account Arrangement Fulfillment specific Business Service
    common:businessservice BusinessService?;
    # The required status/situation prior to the implementation of the feature
    common:condition Postconditions?;
    # An unique reference to an item or an occurrence of Notional Pooling Facility ||
    # |
    common:FinancialFacility NotionalPoolingFacilityReference?;
    # Obligation|Obligation (https://www.iso20022.org/standardsrepository/type/Obligation)|Standard|ISO20022 BM ()
    common:Arrangement NotionalAccountInterestAllocationFulfillmentReference?;
    # The particular date and time point in the progression of time
    common:text NotionalAccountInterestAllocationFulfillmentType?;
};

# Fulfill any scheduled and ad-hoc obligations under a service arrangement, most typically for a financial product or facility within Notional Pooling. 
public type NotionalPoolingFacility record {
    # A Classification value that distinguishes between arrangements according to the type of business services within Notional Pooling Facility ||
    # |
    common:featuretypevalues NotionalPoolingFacilityParameterType?;
    # A selected optional product feature as subject matter of Notional Pooling Facility ||
    # |
    common:feature NotionalPoolingFacilitySelectedOption?;
    # The type of Notional Pooling Facility ||
    # |
    common:Bankingproducttype NotionalPoolingFacilityType?;
    # Reference to the calendar used to fulfill Notional Pooling Facility ||
    # |
    common:Calendar NotionalPoolingFacilityCalendarReference?;
    # The status of Notional Pooling Facility Status |Status  (https://www.iso20022.org/standardsrepository/type/Status)|Standard|ISO20022 BM ()
    common:status NotionalPoolingFacilityStatus?;
    # Reference to the customer who is involved in Notional Pooling Facility ||
    # |
    common:involvedparty NotionalPoolingFacilityAssociatedParty?;
    # The curreny which is arranged in Notional Pooling Facility CurrencyCode|CurrencyCode (https://www.iso20022.org/standardsrepository/type/CurrencyCode)|Standard|ISO20022 BM ()
    common:currencycode NotionalPoolingFacilityCurrency?;
    # Reference to the regulation which is defined in Notional Pooling Facility GovernanceRules|GovernanceRules (https://www.iso20022.org/standardsrepository/type/GovernanceRules)|Standard|ISO20022 BM ()
    common:RuleSet NotionalPoolingFacilityRegulationReference?;
    # A Classification that distinguishes between the regularity domains of Notional Pooling Facility ||
    # |
    common:Rulesettype NotionalPoolingFacilityRegulationType?;
    # Reference to the jurisdiction that is assigned to Notional Pooling Facility in case of legal dispute. Jurisdiction|Jurisdiction (https://www.iso20022.org/standardsrepository/type/Jurisdiction)|Standard|ISO20022 BM ()
    common:Jurisdiction NotionalPoolingFacilityJurisdiction?;
    # The financial accounting unit into which the financial events, with regard to the origination and fulfillment of the agreement in the context of Notional Pooling Facility, are entered. ||
    # |
    common:BusinessUnit NotionalPoolingFacilityBookingLocation?;
    # The type of account which is linked to Notional Pooling Facility OBExternalAccountSubType1Code| ()|Standard|UK Open Banking ()
    common:Accounttypevalues NotionalPoolingFacilityAccountType?;
    # Reference to the account which is linked to Notional Pooling Facility Account|Account  (https://www.iso20022.org/standardsrepository/type/Account)|Standard|ISO20022 BM ()
    common:Account NotionalPoolingFacilityAccountReference?;
    # Reference to the customer who is involved in Notional Pooling Facility ||
    # |
    common:involvedparty NotionalPoolingFacilityCustomerReference?;
    # The position of Notional Pooling Facility Position |Position  (https://www.iso20022.org/standardsrepository/type/Position)|Standard|ISO20022 BM ()
    common:Position NotionalPoolingFacilityPosition?;
    # Reference to the product which is linked to Notional Pooling Facility Product_x000D_
    # |Product (https://www.iso20022.org/standardsrepository/type/Product)|Standard|ISO20022 BM ()
    common:bankingproduct NotionalPoolingFacilityProductReference?;
    # Reference to the limitation related to the position of Notional Pooling Facility Limit|Limit (https://www.iso20022.org/standardsrepository/type/Limit)|Standard|ISO20022 (https://www.iso20022.org/)
    common:Limitarrangement NotionalPoolingFacilityPositionLimit?;
    # An unique reference to an item or an occurrence of Notional Pooling Facility ||
    # |
    common:FinancialFacility NotionalPoolingFacilityReference?;
    # Obligation|Obligation (https://www.iso20022.org/standardsrepository/type/Obligation)|Standard|ISO20022 BM ()
    common:Arrangement NotionalPoolingFacilityArrangementReference?;
};

public type NotionalPoolingFacilityOk record {|
    *http:Ok;
    NotionalPoolingFacility body;
|};
