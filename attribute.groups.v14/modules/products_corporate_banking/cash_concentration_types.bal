import financial.bian.attribute.groups.common as common;

import ballerina/http;

public type CashTransferOk record {|
    *http:Ok;
    CashTransfer body;
|};

# Fulfill any scheduled and ad-hoc obligations under a service arrangement, most typically for a financial product or facility within Cash Concentration. 
public type AccountBalanceSweepingFacility record {
    # A Classification value that distinguishes between arrangements according to the type of business services within Account Balance Sweeping Facility ||
    # |
    common:featuretypevalues AccountBalanceSweepingFacilityParameterType?;
    # A selected optional product feature as subject matter of Account Balance Sweeping Facility ||
    # |
    common:feature AccountBalanceSweepingFacilitySelectedOption?;
    # The type of Account Balance Sweeping Facility ||
    # |
    common:Bankingproducttype AccountBalanceSweepingFacilityType?;
    # Reference to the calendar used to fulfill Account Balance Sweeping Facility ||
    # |
    common:Calendar AccountBalanceSweepingFacilityCalendarReference?;
    # The status of Account Balance Sweeping Facility Status |Status  (https://www.iso20022.org/standardsrepository/type/Status)|Standard|ISO20022 BM ()
    common:status AccountBalanceSweepingFacilityStatus?;
    # Reference to the customer who is involved in Account Balance Sweeping Facility ||
    # |
    common:involvedparty AccountBalanceSweepingFacilityAssociatedParty?;
    # The curreny which is arranged in Account Balance Sweeping Facility CurrencyCode|CurrencyCode (https://www.iso20022.org/standardsrepository/type/CurrencyCode)|Standard|ISO20022 BM ()
    common:currencycode AccountBalanceSweepingFacilityCurrency?;
    # Reference to the regulation which is defined in Account Balance Sweeping Facility GovernanceRules|GovernanceRules (https://www.iso20022.org/standardsrepository/type/GovernanceRules)|Standard|ISO20022 BM ()
    common:RuleSet AccountBalanceSweepingFacilityRegulationReference?;
    # A Classification that distinguishes between the regularity domains of Account Balance Sweeping Facility ||
    # |
    common:Rulesettype AccountBalanceSweepingFacilityRegulationType?;
    # Reference to the jurisdiction that is assigned to Account Balance Sweeping Facility in case of legal dispute. Jurisdiction|Jurisdiction (https://www.iso20022.org/standardsrepository/type/Jurisdiction)|Standard|ISO20022 BM ()
    common:Jurisdiction AccountBalanceSweepingFacilityJurisdiction?;
    # The financial accounting unit into which the financial events, with regard to the origination and fulfillment of the agreement in the context of Account Balance Sweeping Facility, are entered. ||
    # |
    common:BusinessUnit AccountBalanceSweepingFacilityBookingLocation?;
    # The type of account which is linked to Account Balance Sweeping Facility OBExternalAccountSubType1Code| ()|Standard|UK Open Banking ()
    common:Accounttypevalues AccountBalanceSweepingFacilityAccountType?;
    # Reference to the account which is linked to Account Balance Sweeping Facility Account|Account  (https://www.iso20022.org/standardsrepository/type/Account)|Standard|ISO20022 BM ()
    common:Account AccountBalanceSweepingFacilityAccountReference?;
    # Reference to the customer who is involved in Account Balance Sweeping Facility ||
    # |
    common:involvedparty AccountBalanceSweepingFacilityCustomerReference?;
    # The position of Account Balance Sweeping Facility Position |Position  (https://www.iso20022.org/standardsrepository/type/Position)|Standard|ISO20022 BM ()
    common:Position AccountBalanceSweepingFacilityPosition?;
    # Reference to the product which is linked to Account Balance Sweeping Facility Product_x000D_
    # |Product (https://www.iso20022.org/standardsrepository/type/Product)|Standard|ISO20022 BM ()
    common:bankingproduct AccountBalanceSweepingFacilityProductReference?;
    # Reference to the limitation related to the position of Account Balance Sweeping Facility Limit|Limit (https://www.iso20022.org/standardsrepository/type/Limit)|Standard|ISO20022 (https://www.iso20022.org/)
    common:Limitarrangement AccountBalanceSweepingFacilityPositionLimit?;
    # An unique reference to an item or an occurrence of Account Balance Sweeping Facility ||
    # |
    common:FinancialFacility AccountBalanceSweepingFacilityReference?;
};

# The configuration and execution of Cash Position Monitoring and Transfer Fulfillment arrangement within the Cash Position Monitoring and Transfer Fulfillment
public type CashTransfer record {
    # The required status/situation prior to the implementation of the feature
    common:condition Preconditions?;
    # The timing and key actions/milestones involved in completing the fulfillment feature instance
    common:schedule Schedule?;
    # The Cash Position Monitoring and Transfer Fulfillment specific Business Service
    common:businessservice BusinessService?;
    # The required status/situation prior to the implementation of the feature
    common:condition Postconditions?;
    # An unique reference to an item or an occurrence of Account Balance Sweeping Facility ||
    # |
    common:FinancialFacility AccountBalanceSweepingFacilityReference?;
    # Reference to Cash Position Monitoring and Transfer Fulfillment
    string CashTransferReference?;
    # The particular date and time point in the progression of time
    common:text CashTransferType?;
};
