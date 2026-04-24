import financial.bian.attribute.groups.common as common;

import ballerina/http;

# The type of Syndicated Loan Arrangement ||
# |
public type SyndicatedLoanFacilityOk record {|
    *http:Ok;
    # The Syndicated Loan Facility response body
    SyndicatedLoanFacility body;
|};

# Fulfill any scheduled and ad-hoc obligations under a service arrangement, most typically for a financial product or facility  within Syndicated Loan. 
# Example: Perform the scheduled (e.g. statements, standing orders) and ad-hoc/requested (e.g. balance inquiries, fund transfers) fulfillment tasks for a customer current account facility.
public type SyndicatedLoanFacility record {
    # A Classification value that distinguishes between arrangements according to the type of business services within Syndicated Loan Arrangement ||
    # |
    common:featuretypevalues SyndicatedLoanFacilityParameterType?;
    # A selected optional business service as subject matter of Syndicated Loan Arrangement ||
    # |
    common:feature SyndicatedLoanFacilitySelectedOption?;
    # The type of Syndicated Loan Arrangement ||
    # |
    common:loanproducttypevalues SyndicatedLoanFacilityType?;
    # Reference to Syndicated Loan Arrangement Loan|Loan (https://www.iso20022.org/standardsrepository/type/Loan)|Standard|ISO20022 BM ()
    common:loanarrangement SyndicatedLoanFacilityReference?;
    # Timetable to fulfill Syndicated Loan Arrangement ||
    # |
    common:schedule SyndicatedLoanFacilitySchedule?;
    # The status of Syndicated Loan Arrangement Status |Status  (https://www.iso20022.org/standardsrepository/type/Status)|Standard|ISO20022 BM ()
    common:status SyndicatedLoanFacilityStatus?;
    # The curreny which is arranged in Syndicated Loan Arrangement CurrencyCode|CurrencyCode (https://www.iso20022.org/standardsrepository/type/CurrencyCode)|Standard|ISO20022 BM ()
    common:currencycode SyndicatedLoanFacilityCurrency?;
    # Reference to the regulation which is defined in Syndicated Loan Arrangement ||
    # |
    common:Regulation SyndicatedLoanFacilityRegulationReference?;
    # A Classification that distinguishes between the regularity domains of Syndicated Loan Arrangement ||
    # |
    common:Rulesettypevalues SyndicatedLoanFacilityRegulationType?;
    # Reference to the jurisdiction that is assigned to Syndicated Loan Arrangement in case of legal dispute. Jurisdiction|Jurisdiction (https://www.iso20022.org/standardsrepository/type/Jurisdiction)|Standard|ISO20022 BM ()
    common:Jurisdiction SyndicatedLoanFacilityJurisdiction?;
    # The financial accounting unit into which the financial events, with regard to the origination and fulfillment of the agreement in the context of Syndicated Loan Arrangement, are entered. ||
    # |
    common:text SyndicatedLoanFacilityBookingLocation?;
    # The type of account which is linked to Syndicated Loan Arrangement OBExternalAccountSubType1Code| ()|Standard|UK Open Banking ()
    common:Accounttypevalues SyndicatedLoanFacilityAccountType?;
    # Reference to the account which is linked to Syndicated Loan Arrangement Account|Account  (https://www.iso20022.org/standardsrepository/type/Account)|Standard|ISO20022 BM ()
    common:Account SyndicatedLoanFacilityAccountReference?;
};
