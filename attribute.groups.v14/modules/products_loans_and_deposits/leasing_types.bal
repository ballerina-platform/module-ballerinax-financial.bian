import financial.bian.attribute.groups.common as common;

import ballerina/http;

# The type of Leasing Arrangement ||
# |
# Fulfill any scheduled and ad-hoc obligations under a service arrangement, most typically for a financial product or facility  within Leasing. 
# Example: Perform the scheduled (e.g. statements, standing orders) and ad-hoc/requested (e.g. balance inquiries, fund transfers) fulfillment tasks for a customer current account facility.
public type LeasingFacility record {
    # A Classification value that distinguishes between arrangements according to the type of business services within Leasing Arrangement ||
    # |
    common:featuretypevalues LeasingFacilityParameterType?;
    # A selected optional business service as subject matter of Leasing Arrangement ||
    # |
    common:feature LeasingFacilitySelectedOption?;
    # The type of Leasing Arrangement ||
    # |
    common:loanproducttypevalues LeasingFacilityType?;
    # Reference to Leasing Arrangement ||
    # |
    leasearrangement LeasingFacilityReference?;
    # Timetable to fulfill Leasing Arrangement ||
    # |
    common:schedule LeasingFacilitySchedule?;
    # The status of Leasing Arrangement Status |Status  (https://www.iso20022.org/standardsrepository/type/Status)|Standard|ISO20022 BM ()
    common:status LeasingFacilityStatus?;
    # The curreny which is arranged in Leasing Arrangement CurrencyCode|CurrencyCode (https://www.iso20022.org/standardsrepository/type/CurrencyCode)|Standard|ISO20022 BM ()
    common:currencycode LeasingFacilityCurrency?;
    # Reference to the regulation which is defined in Leasing Arrangement ||
    # |
    common:Regulation LeasingFacilityRegulationReference?;
    # A Classification that distinguishes between the regularity domains of Leasing Arrangement ||
    # |
    common:Rulesettypevalues LeasingFacilityRegulationType?;
    # Reference to the jurisdiction that is assigned to Leasing Arrangement in case of legal dispute. Jurisdiction|Jurisdiction (https://www.iso20022.org/standardsrepository/type/Jurisdiction)|Standard|ISO20022 BM ()
    common:Jurisdiction LeasingFacilityJurisdiction?;
    # The financial accounting unit into which the financial events, with regard to the origination and fulfillment of the agreement in the context of Leasing Arrangement, are entered.
    string LeasingFacilityBookingLocation?;
    # The type of account which is linked to Leasing Arrangement OBExternalAccountSubType1Code| ()|Standard|UK Open Banking ()
    common:Accounttypevalues LeasingFacilityAccountType?;
    # Reference to the account which is linked to Leasing Arrangement Account|Account  (https://www.iso20022.org/standardsrepository/type/Account)|Standard|ISO20022 BM ()
    common:Account LeasingFacilityAccountReference?;
};

public type LeasingFacilityOk record {|
    *http:Ok;
    LeasingFacility body;
|};

# Reference to Leasing Arrangement ||
# |
public type leasearrangement record {
    # The type of Leasing Arrangement
    string LeasingArrangementType?;
};
