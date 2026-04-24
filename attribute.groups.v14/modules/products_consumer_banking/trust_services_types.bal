import financial.bian.attribute.groups.common as common;

import ballerina/http;

# Fulfill any scheduled and ad-hoc obligations under a service arrangement, most typically for a financial product or facility within Trust Services.
# Represents the facility for managing corporate trust services including estate management, tax administration, and loan agency
public type CorporateTrustServicesFacility record {
    # A Classification value that distinguishes between arrangements according to the type of business services within Corporate Trust Services Facility ||
    # |
    common:featuretypevalues CorporateTrustServicesFacilityParameterType?;
    # A selected optional product feature as subject matter of Corporate Trust Services Facility ||
    # |
    common:feature CorporateTrustServicesFacilitySelectedOption?;
    # The type of Corporate Trust Services Facility ||
    # |
    bankingproducttype CorporateTrustServicesFacilityType?;
    # Reference to the calendar used to fulfill Corporate Trust Services Facility ||
    # |
    calendar CorporateTrustServicesFacilityCalendarReference?;
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
    rulesettype CorporateTrustServicesFacilityRegulationType?;
    # Reference to the jurisdiction that is assigned to Corporate Trust Services Facility in case of legal dispute. Jurisdiction|Jurisdiction (https://www.iso20022.org/standardsrepository/type/Jurisdiction)|Standard|ISO20022 BM ()
    jurisdiction CorporateTrustServicesFacilityJurisdiction?;
    # The financial accounting unit into which the financial events, with regard to the origination and fulfillment of the agreement in the context of Corporate Trust Services Facility, are entered. ||
    # |
    businessunit CorporateTrustServicesFacilityBookingLocation?;
    # The type of account which is linked to Corporate Trust Services Facility OBExternalAccountSubType1Code| ()|Standard|UK Open Banking ()
    common:Accounttypevalues CorporateTrustServicesFacilityAccountType?;
    # Reference to the account which is linked to Corporate Trust Services Facility Account|Account  (https://www.iso20022.org/standardsrepository/type/Account)|Standard|ISO20022 BM ()
    common:Account CorporateTrustServicesFacilityAccountReference?;
    # Reference to the customer who is involved in Corporate Trust Services Facility ||
    # |
    common:involvedparty CorporateTrustServicesFacilityCustomerReference?;
    # The position of Corporate Trust Services Facility Position |Position  (https://www.iso20022.org/standardsrepository/type/Position)|Standard|ISO20022 BM ()
    position CorporateTrustServicesFacilityPosition?;
    # Reference to the product which is linked to Corporate Trust Services Facility Product_x000D_
    # |Product (https://www.iso20022.org/standardsrepository/type/Product)|Standard|ISO20022 BM ()
    common:bankingproduct CorporateTrustServicesFacilityProductReference?;
    # Reference to the limitation related to the position of Corporate Trust Services Facility Limit|Limit (https://www.iso20022.org/standardsrepository/type/Limit)|Standard|ISO20022 (https://www.iso20022.org/)
    common:Limitarrangement CorporateTrustServicesFacilityPositionLimit?;
    # An unique reference to an item or an occurrence of Corporate Trust Services Facility ||
    # |
    common:FinancialFacility CorporateTrustServicesFacilityReference?;
};

# The configuration and execution of Trust Tax and Expense Fulfillment arrangement within the Trust Tax and Expense Fulfillment
# Represents tax and expense management for trust accounts
public type TrustTaxandExpense record {
    # The required status/situation prior to the implementation of the feature
    common:condition Preconditions?;
    # The timing and key actions/milestones involved in completing the fulfillment feature instance
    common:schedule Schedule?;
    # The Trust Tax and Expense Fulfillment specific Business Service
    common:businessservice BusinessService?;
    # The required status/situation prior to the implementation of the feature
    common:condition Postconditions?;
    # An unique reference to an item or an occurrence of Corporate Trust Services Facility ||
    # |
    common:FinancialFacility CorporateTrustServicesFacilityReference?;
    # Reference to Trust Tax and Expense Fulfillment
    common:Arrangement TrustTaxandExpenseFulfillmentReference?;
    # The particular date and time point in the progression of time
    common:text TrustTaxandExpenseFulfillmentType?;
};

public type TrustTaxandExpenseOk record {|
    *http:Ok;
    TrustTaxandExpense body;
|};

public type CorporateTrustServicesFacilityOk record {|
    *http:Ok;
    CorporateTrustServicesFacility body;
|};

# The financial accounting unit into which the financial events, with regard to the origination and fulfillment of the agreement in the context of Corporate Trust Services Facility, are entered. ||
# |
public type businessunit record {
    # The specific business function or capability provided by the unit
    string BusinessFunction?;
    # The objective or goal of the business unit
    string Goal?;
};

# The position of Corporate Trust Services Facility Position |Position  (https://www.iso20022.org/standardsrepository/type/Position)|Standard|ISO20022 BM ()
public type position record {
    # The monetary or numerical value of the position
    common:value PositionValue?;
    # The quantity or volume of the position held
    string PositionQuantity?;
    # The date when the position was established or valued
    common:datetime PositionDate?;
    # The monetary amount of the position
    common:amount PositionAmount?;
};

public type TrustEstateInheritanceandIncomeTaxOk record {|
    *http:Ok;
    TrustEstate_InheritanceandIncomeTax body;
|};

# The type of Corporate Trust Services Facility ||
# |
public type bankingproducttype record {
    # The detailed definition of the product type
    string ProductTypeDefinition?;
    # >
    # * `LoanProduct` - 
    # * `CurrentAccountProduct` - 
    # * `SavingAccountProduct` - 
    # * `BrokeredProduct` - 
    # * `TermDepositProduct` - 
    common:bankingproducttypevalues ProductType?;
    # The authority or organization that issued the product classification
    string ProductClassificationIssuingAuthority?;
};

# The configuration and execution of Trust Tax and Expense Fulfillment arrangement within the Trust Tax and Expense Fulfillment
# Represents loan agency and administrative services for trust facilities
public type LoanAgencyandAdministration record {
    # The required status/situation prior to the implementation of the feature
    common:condition Preconditions?;
    # The timing and key actions/milestones involved in completing the fulfillment feature instance
    common:schedule Schedule?;
    # The Trust Tax and Expense Fulfillment specific Business Service
    common:businessservice BusinessService?;
    # The required status/situation prior to the implementation of the feature
    common:condition Postconditions?;
    # An unique reference to an item or an occurrence of Corporate Trust Services Facility ||
    # |
    common:FinancialFacility CorporateTrustServicesFacilityReference?;
    # Reference to Trust Tax and Expense Fulfillment
    common:Arrangement TrustAssetMaintenanceandManagementFulfillmentReference?;
    # The particular date and time point in the progression of time
    common:text TrustAssetMaintenanceandManagementFulfillmentType?;
};

# Reference to the jurisdiction that is assigned to Corporate Trust Services Facility in case of legal dispute. Jurisdiction|Jurisdiction (https://www.iso20022.org/standardsrepository/type/Jurisdiction)|Standard|ISO20022 BM ()
public type jurisdiction record {
    # Jurisdiction that will be assigned in case of legal dispute.
    string Jurisdiction?;
};

# The configuration and execution of Trust Tax and Expense Fulfillment arrangement within the Trust Tax and Expense Fulfillment
# Represents estate, inheritance, and income tax management for trust services
public type TrustEstate_InheritanceandIncomeTax record {
    # The required status/situation prior to the implementation of the feature
    common:condition Preconditions?;
    # The timing and key actions/milestones involved in completing the fulfillment feature instance
    common:schedule Schedule?;
    # The Trust Tax and Expense Fulfillment specific Business Service
    common:businessservice BusinessService?;
    # The required status/situation prior to the implementation of the feature
    common:condition Postconditions?;
    # An unique reference to an item or an occurrence of Corporate Trust Services Facility ||
    # |
    common:FinancialFacility CorporateTrustServicesFacilityReference?;
    # Reference to Trust Tax and Expense Fulfillment
    common:Arrangement TrustEstate_InheritanceandIncomeTaxFulfillmentReference?;
    # The particular date and time point in the progression of time
    common:text TrustEstate_InheritanceandIncomeTaxFulfillmentType?;
};

# The configuration and execution of Trust Tax and Expense Fulfillment arrangement within the Trust Tax and Expense Fulfillment
# Represents court-related administration for trust services
public type CourtAdministration record {
    # The required status/situation prior to the implementation of the feature
    common:condition Preconditions?;
    # The timing and key actions/milestones involved in completing the fulfillment feature instance
    common:schedule Schedule?;
    # The Trust Tax and Expense Fulfillment specific Business Service
    common:businessservice BusinessService?;
    # The required status/situation prior to the implementation of the feature
    common:condition Postconditions?;
    # An unique reference to an item or an occurrence of Corporate Trust Services Facility ||
    # |
    common:FinancialFacility TrustServicesFacilityReference?;
    # Reference to Trust Court Administration Fulfillment
    string CourtAdministrationReference?;
    # The particular date and time point in the progression of time
    common:text CourtAdministrationType?;
};

# A Classification that distinguishes between the regularity domains of Corporate Trust Services Facility ||
# |
public type rulesettype record {
    # Name by which a party is known and which is usually used to identify that party. (ISO20022)
    common:name RuleSetTypeName?;
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
};

# Reference to the calendar used to fulfill Corporate Trust Services Facility ||
# |
public type calendar record {
    # >
    # * `UKCalendar` - 
    # * `ChineseCalendar` - 
    calendartypevalues CalendarType?;
    # Name by which a party is known and which is usually used to identify that party. (ISO20022)
    common:name CalendarName?;
};

public type CourtAdministrationOk record {|
    *http:Ok;
    CourtAdministration body;
|};

public type LoanAgencyandAdministrationOk record {|
    *http:Ok;
    LoanAgencyandAdministration body;
|};

# >
# * `UKCalendar` - 
# * `ChineseCalendar` - 
public type calendartypevalues "UKCalendar"|"ChineseCalendar";
