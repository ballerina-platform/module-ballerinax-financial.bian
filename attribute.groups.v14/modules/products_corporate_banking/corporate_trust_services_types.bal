import financial.bian.attribute.groups.common as common;

import ballerina/http;

# Fulfill any scheduled and ad-hoc obligations under a service arrangement, most typically for a financial product or facility within Corporate Trust Services. 
public type CorporateTrustServicesFacility record {
    # A Classification value that distinguishes between arrangements according to the type of business services within Corporate Trust Services Facility
    string CorporateTrustServicesFacilityParameterType?;
    # A selected optional product feature as subject matter of Corporate Trust Services Facility ||
    # |
    common:feature CorporateTrustServicesFacilitySelectedOption?;
    # The type of Corporate Trust Services Facility ||
    # |
    common:Bankingproducttype CorporateTrustServicesFacilityType?;
    # Reference to the calendar used to fulfill Corporate Trust Services Facility ||
    # |
    common:Calendar CorporateTrustServicesFacilityCalendarReference?;
    # The status of Corporate Trust Services Facility Status |Status  (https://www.iso20022.org/standardsrepository/type/Status)|Standard|ISO20022 BM ()
    common:status CorporateTrustServicesFacilityStatus?;
    # Reference to the customer who is involved in Corporate Trust Services Facility ||
    # |
    common:involvedparty CorporateTrustServicesFacilityAssociatedParty?;
    # The curreny which is arranged in Corporate Trust Services Facility CurrencyCode|CurrencyCode (https://www.iso20022.org/standardsrepository/type/CurrencyCode)|Standard|ISO20022 BM ()
    common:currencycode CorporateTrustServicesFacilityCurrency?;
    # Reference to the regulation which is defined in Corporate Trust Services Facility GovernanceRules|GovernanceRules (https://www.iso20022.org/standardsrepository/type/GovernanceRules)|Standard|ISO20022 BM ()
    common:RuleSet CorporateTrustServicesFacilityRegulationReference?;
    # A Classification that distinguishes between the regularity domains of Corporate Trust Services Facility ||
    # |
    common:Rulesettype CorporateTrustServicesFacilityRegulationType?;
    # Reference to the jurisdiction that is assigned to Corporate Trust Services Facility in case of legal dispute. Jurisdiction|Jurisdiction (https://www.iso20022.org/standardsrepository/type/Jurisdiction)|Standard|ISO20022 BM ()
    common:Jurisdiction CorporateTrustServicesFacilityJurisdiction?;
    # The financial accounting unit into which the financial events, with regard to the origination and fulfillment of the agreement in the context of Corporate Trust Services Facility, are entered. ||
    # |
    common:BusinessUnit CorporateTrustServicesFacilityBookingLocation?;
    # The type of account which is linked to Corporate Trust Services Facility OBExternalAccountSubType1Code| ()|Standard|UK Open Banking ()
    common:Accounttypevalues CorporateTrustServicesFacilityAccountType?;
    # Reference to the account which is linked to Corporate Trust Services Facility Account|Account  (https://www.iso20022.org/standardsrepository/type/Account)|Standard|ISO20022 BM ()
    common:Account CorporateTrustServicesFacilityAccountReference?;
    # Reference to the customer who is involved in Corporate Trust Services Facility ||
    # |
    common:involvedparty CorporateTrustServicesFacilityCustomerReference?;
    # The position of Corporate Trust Services Facility Position |Position  (https://www.iso20022.org/standardsrepository/type/Position)|Standard|ISO20022 BM ()
    common:Position CorporateTrustServicesFacilityPosition?;
    # Reference to the product which is linked to Corporate Trust Services Facility Product_x000D_
    # |Product (https://www.iso20022.org/standardsrepository/type/Product)|Standard|ISO20022 BM ()
    common:bankingproduct CorporateTrustServicesFacilityProductReference?;
    # Reference to the limitation related to the position of Corporate Trust Services Facility Limit|Limit (https://www.iso20022.org/standardsrepository/type/Limit)|Standard|ISO20022 (https://www.iso20022.org/)
    common:Limitarrangement CorporateTrustServicesFacilityPositionLimit?;
    # An unique reference to an item or an occurrence of Corporate Trust Services Facility ||
    # |
    common:FinancialFacility CorporateTrustServicesFacilityReference?;
};

# The configuration and execution of Project Finance arrangement within the Service Domain
public type ProjectFinance record {
    # The required status/situation prior to the implementation of the feature
    common:condition Preconditions?;
    # The timing and key actions/milestones involved in completing the fulfillment feature instance
    common:schedule Schedule?;
    # The Project Finance specific Business Service
    common:businessservice BusinessService?;
    # The required status/situation prior to the implementation of the feature
    common:condition Postconditions?;
    # An unique reference to an item or an occurrence of Corporate Trust Services Facility ||
    # |
    common:FinancialFacility CorporateTrustServicesFacilityReference?;
    # Reference to Corporate Debt Issue Oversight Fulfillment
    string ProjectFinanceReference?;
    # The particular date and time point in the progression of time
    common:text ProjectFinanceType?;
};

public type ProjectFinanceOk record {|
    *http:Ok;
    ProjectFinance body;
|};

public type CorporateTrustServicesFacilityOk record {|
    *http:Ok;
    CorporateTrustServicesFacility body;
|};

# The configuration and execution of Project Finance arrangement within the Service Domain
public type Escrow record {
    # The required status/situation prior to the implementation of the feature
    common:condition Preconditions?;
    # The timing and key actions/milestones involved in completing the fulfillment feature instance
    common:schedule Schedule?;
    # The Project Finance specific Business Service
    common:businessservice BusinessService?;
    # The required status/situation prior to the implementation of the feature
    common:condition Postconditions?;
    # An unique reference to an item or an occurrence of Corporate Trust Services Facility ||
    # |
    common:FinancialFacility CorporateTrustServicesFacilityReference?;
    # Reference to Escrow 
    string EscrowReference?;
    # The particular date and time point in the progression of time
    common:text EscrowType?;
};

public type EscrowOk record {|
    *http:Ok;
    Escrow body;
|};

public type PublicFinanceOk record {|
    *http:Ok;
    PublicFinance body;
|};

# The configuration and execution of Project Finance arrangement within the Service Domain
public type PublicFinance record {
    # The required status/situation prior to the implementation of the feature
    common:condition Preconditions?;
    # The timing and key actions/milestones involved in completing the fulfillment feature instance
    common:schedule Schedule?;
    # The Project Finance specific Business Service
    common:businessservice BusinessService?;
    # The required status/situation prior to the implementation of the feature
    common:condition Postconditions?;
    # An unique reference to an item or an occurrence of Corporate Trust Services Facility ||
    # |
    common:FinancialFacility CorporateTrustServicesFacilityReference?;
    # Reference to Public Finance
    string PublicFinanceReference?;
    # The particular date and time point in the progression of time
    common:text PublicFinanceType?;
};

# The configuration and execution of Project Finance arrangement within the Service Domain
public type LoanAgencyandAdministration record {
    # The required status/situation prior to the implementation of the feature
    common:condition Preconditions?;
    # The timing and key actions/milestones involved in completing the fulfillment feature instance
    common:schedule Schedule?;
    # The Project Finance specific Business Service
    common:businessservice BusinessService?;
    # The required status/situation prior to the implementation of the feature
    common:condition Postconditions?;
    # An unique reference to an item or an occurrence of Corporate Trust Services Facility ||
    # |
    common:FinancialFacility CorporateTrustServicesFacilityReference?;
    # Reference to Loan Agency and Administration
    string LoanAgencyandAdministrationReference?;
    # The particular date and time point in the progression of time
    common:text LoanAgencyandAdministrationType?;
};

# The configuration and execution of Project Finance arrangement within the Service Domain
public type CourtAdministration record {
    # The required status/situation prior to the implementation of the feature
    common:condition Preconditions?;
    # The timing and key actions/milestones involved in completing the fulfillment feature instance
    common:schedule Schedule?;
    # The Project Finance specific Business Service
    common:businessservice BusinessService?;
    # The required status/situation prior to the implementation of the feature
    common:condition Postconditions?;
    # An unique reference to an item or an occurrence of Corporate Trust Services Facility ||
    # |
    common:FinancialFacility CorporateTrustServicesFacilityReference?;
    # Reference to Court Administration 
    string CourtAdministrationReference?;
    # The particular date and time point in the progression of time
    common:text CourtAdministrationType?;
};

public type CourtAdministrationOk record {|
    *http:Ok;
    CourtAdministration body;
|};

public type LoanAgencyandAdministrationOk record {|
    *http:Ok;
    LoanAgencyandAdministration body;
|};
