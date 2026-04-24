import financial.bian.attribute.groups.common as common;

import ballerina/http;

# >

public type MerchandisingLoanFacilityOk record {|
    *http:Ok;
    # The merchandising loan facility response body
    MerchandisingLoanFacility body;
|};

# Fulfill any scheduled and ad-hoc obligations under a service arrangement, most typically for a financial product or facility  within Merchandising Loan. 
# Example: Perform the scheduled (e.g. statements, standing orders) and ad-hoc/requested (e.g. balance inquiries, fund transfers) fulfillment tasks for a customer current account facility.
public type MerchandisingLoanFacility record {
    # A Classification value that distinguishes between arrangements according to the type of business services within Merchandising Loan Arrangement ||
    # |
    common:featuretypevalues MerchandisingLoanFacilityParameterType?;
    # A selected optional business service as subject matter of Merchandising Loan Arrangement ||
    # |
    common:feature MerchandisingLoanFacilitySelectedOption?;
    # The type of Merchandising Loan Arrangement ||
    # |
    common:loanproducttypevalues MerchandisingLoanFacilityType?;
    # Reference to Merchandising Loan Arrangement Loan|Loan (https://www.iso20022.org/standardsrepository/type/Loan)|Standard|ISO20022 BM ()
    common:loanarrangement MerchandisingLoanFacilityReference?;
    # Timetable to fulfill Merchandising Loan Arrangement ||
    # |
    common:schedule MerchandisingLoanFacilitySchedule?;
    # The status of Merchandising Loan Arrangement Status |Status  (https://www.iso20022.org/standardsrepository/type/Status)|Standard|ISO20022 BM ()
    common:status MerchandisingLoanFacilityStatus?;
    # Reference to the party who is involved in Merchandising Loan Arrangement Party|Party (https://www.iso20022.org/standardsrepository/type/Party)|Standard|ISO20022BM ()
    common:party MerchandisingLoanFacilityAssociatedParty?;
    # The curreny which is arranged in Merchandising Loan Arrangement CurrencyCode|CurrencyCode (https://www.iso20022.org/standardsrepository/type/CurrencyCode)|Standard|ISO20022 BM ()
    common:currencycode MerchandisingLoanFacilityCurrency?;
    # Reference to the regulation which is defined in Merchandising Loan Arrangement GovernanceRules|GovernanceRules (https://www.iso20022.org/standardsrepository/type/GovernanceRules)|Standard|ISO20022 BM ()
    common:RuleSet MerchandisingLoanFacilityRegulationReference?;
    # A Classification that distinguishes between the regularity domains of Merchandising Loan Arrangement ||
    # |
    common:Rulesettypevalues MerchandisingLoanFacilityRegulationType?;
    # Reference to the jurisdiction that is assigned to Merchandising Loan Arrangement in case of legal dispute. Jurisdiction|Jurisdiction (https://www.iso20022.org/standardsrepository/type/Jurisdiction)|Standard|ISO20022 BM ()
    common:Jurisdiction MerchandisingLoanFacilityJurisdiction?;
    # The financial accounting unit into which the financial events, with regard to the origination and fulfillment of the agreement in the context of Merchandising Loan Arrangement, are entered. Location|Location (https://www.iso20022.org/standardsrepository/type/Location)|Standard|ISO20022 BM  ()
    common:location MerchandisingLoanFacilityBookingLocation?;
    # The type of account which is linked to Merchandising Loan Arrangement OBExternalAccountSubType1Code| ()|Standard|UK Open Banking ()
    common:Accounttypevalues MerchandisingLoanFacilityAccountType?;
    # Reference to the account which is linked to Merchandising Loan Arrangement Account|Account  (https://www.iso20022.org/standardsrepository/type/Account)|Standard|ISO20022 BM ()
    common:Account MerchandisingLoanFacilityAccountReference?;
};

