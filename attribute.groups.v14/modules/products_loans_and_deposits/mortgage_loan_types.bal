import financial.bian.attribute.groups.common as common;

import ballerina/http;

public type MortgageLoanFacilityOk record {|
    *http:Ok;
    MortgageLoanFacility body;
|};

public type MortgageLoanFacility record {
    # A Classification value that distinguishes between arrangements according to the type of business services within Mortgage Loan Arrangement ||
    # |
    common:featuretypevalues MortgageLoanFacilityParameterType?;
    # A selected optional business service as subject matter of Mortgage Loan Arrangement ||
    # |
    common:feature MortgageLoanFacilitySelectedOption?;
    # The type of Mortgage Loan Arrangement ||
    # |
    common:loanproducttypevalues MortgageLoanFacilityType?;
    # Reference to Mortgage Loan Arrangement Loan|Loan (https://www.iso20022.org/standardsrepository/type/Loan)|Standard|ISO20022 BM ()
    common:loanarrangement MortgageLoanFacilityReference?;
    # Timetable to fulfill Mortgage Loan Arrangement ||
    # |
    common:schedule MortgageLoanFacilitySchedule?;
    # The status of Mortgage Loan Arrangement Status |Status  (https://www.iso20022.org/standardsrepository/type/Status)|Standard|ISO20022 BM ()
    common:status MortgageLoanFacilityStatus?;
    # The curreny which is arranged in Mortgage Loan Arrangement CurrencyCode|CurrencyCode (https://www.iso20022.org/standardsrepository/type/CurrencyCode)|Standard|ISO20022 BM ()
    common:currencycode MortgageLoanFacilityCurrency?;
    # Reference to the regulation which is defined in Mortgage Loan Arrangement ||
    # |
    common:Regulation MortgageLoanFacilityRegulationReference?;
    # A Classification that distinguishes between the regularity domains of Mortgage Loan Arrangement ||
    # |
    common:Rulesettypevalues MortgageLoanFacilityRegulationType?;
    # Reference to the jurisdiction that is assigned to Mortgage Loan Arrangement in case of legal dispute. Jurisdiction|Jurisdiction (https://www.iso20022.org/standardsrepository/type/Jurisdiction)|Standard|ISO20022 BM ()
    common:Jurisdiction MortgageLoanFacilityJurisdiction?;
    # The financial accounting unit into which the financial events, with regard to the origination and fulfillment of the agreement in the context of Mortgage Loan Arrangement, are entered. ||
    # |
    common:text MortgageLoanFacilityBookingLocation?;
    # The type of account which is linked to Mortgage Loan Arrangement OBExternalAccountSubType1Code| ()|Standard|UK Open Banking ()
    common:Accounttypevalues MortgageLoanFacilityAccountType?;
    # Reference to the account which is linked to Mortgage Loan Arrangement Account|Account  (https://www.iso20022.org/standardsrepository/type/Account)|Standard|ISO20022 BM ()
    common:Account MortgageLoanFacilityAccountReference?;
};
