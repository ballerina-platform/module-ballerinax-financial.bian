import financial.bian.attribute.groups.common as common;

import ballerina/http;

public type EmployeePaymentServicesFacilityOk record {|
    *http:Ok;
    EmployeePaymentServicesFacility body;
|};

# Fulfill any scheduled and ad-hoc obligations under a service arrangement, most typically for a financial product or facility within Corporate Payroll Services. 
public type EmployeePaymentServicesFacility record {
    # A Classification value that distinguishes between arrangements according to the type of business services within Employee Payment Services Facility ||
    # |
    common:featuretypevalues EmployeePaymentServicesFacilityParameterType?;
    # A selected optional product feature as subject matter of Employee Payment Services Facility ||
    # |
    common:feature EmployeePaymentServicesFacilitySelectedOption?;
    # The type of Employee Payment Services Facility ||
    # |
    common:Bankingproducttype EmployeePaymentServicesFacilityType?;
    # Reference to the calendar used to fulfill Employee Payment Services Facility ||
    # |
    common:Calendar EmployeePaymentServicesFacilityCalendarReference?;
    # The status of Employee Payment Services Facility Status |Status  (https://www.iso20022.org/standardsrepository/type/Status)|Standard|ISO20022 BM ()
    common:status EmployeePaymentServicesFacilityStatus?;
    # Reference to the customer who is involved in Employee Payment Services Facility ||
    # |
    common:involvedparty EmployeePaymentServicesFacilityAssociatedParty?;
    # The curreny which is arranged in Employee Payment Services Facility CurrencyCode|CurrencyCode (https://www.iso20022.org/standardsrepository/type/CurrencyCode)|Standard|ISO20022 BM ()
    common:currencycode EmployeePaymentServicesFacilityCurrency?;
    # Reference to the regulation which is defined in Employee Payment Services Facility GovernanceRules|GovernanceRules (https://www.iso20022.org/standardsrepository/type/GovernanceRules)|Standard|ISO20022 BM ()
    common:RuleSet EmployeePaymentServicesFacilityRegulationReference?;
    # A Classification that distinguishes between the regularity domains of Employee Payment Services Facility ||
    # |
    common:Rulesettype EmployeePaymentServicesFacilityRegulationType?;
    # Reference to the jurisdiction that is assigned to Employee Payment Services Facility in case of legal dispute. Jurisdiction|Jurisdiction (https://www.iso20022.org/standardsrepository/type/Jurisdiction)|Standard|ISO20022 BM ()
    common:Jurisdiction EmployeePaymentServicesFacilityJurisdiction?;
    # The financial accounting unit into which the financial events, with regard to the origination and fulfillment of the agreement in the context of Employee Payment Services Facility, are entered. ||
    # |
    common:BusinessUnit EmployeePaymentServicesFacilityBookingLocation?;
    # The type of account which is linked to Employee Payment Services Facility OBExternalAccountSubType1Code| ()|Standard|UK Open Banking ()
    common:Accounttypevalues EmployeePaymentServicesFacilityAccountType?;
    # Reference to the account which is linked to Employee Payment Services Facility Account|Account  (https://www.iso20022.org/standardsrepository/type/Account)|Standard|ISO20022 BM ()
    common:Account EmployeePaymentServicesFacilityAccountReference?;
    # Reference to the customer who is involved in Employee Payment Services Facility ||
    # |
    common:involvedparty EmployeePaymentServicesFacilityCustomerReference?;
    # The position of Employee Payment Services Facility Position |Position  (https://www.iso20022.org/standardsrepository/type/Position)|Standard|ISO20022 BM ()
    common:Position EmployeePaymentServicesFacilityPosition?;
    # Reference to the product which is linked to Employee Payment Services Facility Product_x000D_
    # |Product (https://www.iso20022.org/standardsrepository/type/Product)|Standard|ISO20022 BM ()
    common:bankingproduct EmployeePaymentServicesFacilityProductReference?;
    # Reference to the limitation related to the position of Employee Payment Services Facility Limit|Limit (https://www.iso20022.org/standardsrepository/type/Limit)|Standard|ISO20022 (https://www.iso20022.org/)
    common:Limitarrangement EmployeePaymentServicesFacilityPositionLimit?;
    # An unique reference to an item or an occurrence of Employee Payment Services Facility ||
    # |
    common:FinancialFacility EmployeePaymentServicesFacilityReference?;
};
