import financial.bian.attribute.groups.common as common;

import ballerina/http;

# Reference to Fiduciary Relationship Arrangement ||
# |
# Fulfill any scheduled and ad-hoc obligations under a service arrangement, most typically for a financial product or facility  within Fiduciary Agreement. 
# Example: Perform the scheduled (e.g. statements, standing orders) and ad-hoc/requested (e.g. balance inquiries, fund transfers) fulfillment tasks for a customer current account facility.
public type FiduciaryRelationshipFacility record {
    # A Classification value that distinguishes between arrangements according to the type of business services within Fiduciary Relationship Arrangement ||
    # |
    common:featuretypevalues FiduciaryRelationshipFacilityParameterType?;
    # A selected optional business service as subject matter of Fiduciary Relationship Arrangement ||
    # |
    common:feature FiduciaryRelationshipFacilitySelectedOption?;
    # The type of Fiduciary Relationship Arrangement ||
    # |
    common:text FiduciaryRelationshipFacilityType?;
    # Reference to Fiduciary Relationship Arrangement ||
    # |
    common:FinancialFacility FiduciaryRelationshipFacilityReference?;
    # Timetable to fulfill Fiduciary Relationship Arrangement ||
    # |
    common:schedule FiduciaryRelationshipFacilitySchedule?;
    # The status of Fiduciary Relationship Arrangement Status |Status  (https://www.iso20022.org/standardsrepository/type/Status)|Standard|ISO20022 BM ()
    common:status FiduciaryRelationshipFacilityStatus?;
    # The curreny which is arranged in Fiduciary Relationship Arrangement CurrencyCode|CurrencyCode (https://www.iso20022.org/standardsrepository/type/CurrencyCode)|Standard|ISO20022 BM ()
    common:currencycode FiduciaryRelationshipFacilityCurrency?;
    # Reference to the regulation which is defined in Fiduciary Relationship Arrangement ||
    # |
    common:Regulation FiduciaryRelationshipFacilityRegulationReference?;
    # A Classification that distinguishes between the regularity domains of Fiduciary Relationship Arrangement ||
    # |
    common:Rulesettypevalues FiduciaryRelationshipFacilityRegulationType?;
    # Reference to the jurisdiction that is assigned to Fiduciary Relationship Arrangement in case of legal dispute. Jurisdiction|Jurisdiction (https://www.iso20022.org/standardsrepository/type/Jurisdiction)|Standard|ISO20022 BM ()
    common:Jurisdiction FiduciaryRelationshipFacilityJurisdiction?;
    # The financial accounting unit into which the financial events, with regard to the origination and fulfillment of the agreement in the context of Fiduciary Relationship Arrangement, are entered. Location/Address|Location/Address (https://www.iso20022.org/standardsrepository/type/Location)|Standard|ISO20022 BM ()
    common:address FiduciaryRelationshipFacilityBookingLocation?;
    # The type of account which is linked to Fiduciary Relationship Arrangement OBExternalAccountSubType1Code| ()|Standard|UK Open Banking ()
    common:Accounttypevalues FiduciaryRelationshipFacilityAccountType?;
    # Reference to the account which is linked to Fiduciary Relationship Arrangement Account|Account  (https://www.iso20022.org/standardsrepository/type/Account)|Standard|ISO20022 BM ()
    common:Account FiduciaryRelationshipFacilityAccountReference?;
};

# >
# * `PostalAddress` - 
# * `GeolocationAddress` - 
# * `LatitudeAddress` - 
# * `LongitudeAddress` - 
# * `ElectronicAddress` - 
# >
# * `Bilateral` - Balance calculated regarding one member in the system. (ISO20022)
# * `Multilateral` - Balance calculated regarding all members in the system. (ISO20022)
# >
# * `OpeningBalance` - Book balance of the account at the beginning of the account servicer's business day. It always equals the closing book balance from the previous business day. Note: the available balance at the beginning of the account servicer's business day may be different from the closing book balance from the previous business day. (ISO20022)
# * `ClosingBalance` - Balance of the account at the end of the account servicer's business day. It is the sum of the opening balance at the beginning of the day and all entries booked to the account during the account servicer's business day. (ISO20022)
# * `CurrentBalance` - Balance of the account at a precise moment in time. (ISO20022)
# * `AvailableBalance` - Balance of money or securities that is at the disposal of the account owner on the date specified. (ISO20022)
# * `LedgerBalance` - Ledger balance refers to posted transactions (e.g. limit authorisation amount - posted transactions). (ISO20022)
# * `ReserveBalance` - 
# * `FreeBalance` - 
# * `PrincipalBalance` - 
# * `ClosingAvailable` - Closing balance of amount of money that is at the disposal of the account owner on the date specified.
# * `ClosingBooked` - Balance of the account at the end of the pre-agreed account reporting period. It is the sum of the opening booked balance at the beginning of the period and all entries booked to the account during the pre-agreed account reporting period.
# * `ForwardAvailable` - Forward available balance of money that is at the disposal of the account owner on the date specified.
# * `Information` - Balance for informational purposes.
# * `InterimAvailable` - Available balance calculated in the course of the account servicer's business day, at the time specified, and subject to further changes during the business day. The interim balance is calculated on the basis of booked credit and debit items during the calculation time/period specified.
# * `InterimBooked` - Balance calculated in the course of the account servicer's business day, at the time specified, and subject to further changes during the business day. The interim balance is calculated on the basis of booked credit and debit items during the calculation time/period specified.
# * `OpeningAvailable` - Opening balance of amount of money that is at the disposal of the account owner on the date specified.
# * `OpeningBooked` - Book balance of the account at the beginning of the account reporting period. It always equals the closing book balance from the previous report.
# * `PreviouslyClosedBooked` - Balance of the account at the previously closed account reporting period. The opening booked balance for the new period has to be equal to this balance.
# Usage: the previously booked closing balance should equal (inclusive date) the booked closing balance of the date it references and equal the actual booked opening balance of the current date.
# * `Expected` - Balance, composed of booked entries and pending items known at the time of calculation, which projects the end of day balance if everything is booked on the account and no other entry is posted.
# A selected optional business service as subject matter of Fiduciary Relationship Arrangement ||
# |
# The state of the obligations managed on the account, the result of all entries on the account.
#
# Numerical representation of the net increases and decreases in an account at a specific point in time. (ISO20022)
#
# Banking: Amount available in an account for withdrawal or use.
# Read more: http://www.businessdictionary.com/definition/balance.html
#
# Bookkeeping: Difference between the debit and credit sides of an account.
# Read more: http://www.businessdictionary.com/definition/balance.html
public type FiduciaryRelationshipFacilityOk record {|
    *http:Ok;
    # The Fiduciary Relationship Facility details
    FiduciaryRelationshipFacility body;
|};

# Timetable to fulfill Fiduciary Relationship Arrangement ||
# |
# Reference to the regulation which is defined in Fiduciary Relationship Arrangement ||
# |
public type RetrieveFiduciaryRelationshipFacilityResponse_FiduciaryRelationshipFacility record {
    # A Classification value that distinguishes between arrangements according to the type of business services within Fiduciary Relationship Arrangement ||
    # |
    common:featuretypevalues FiduciaryRelationshipFacilityParameterType?;
    # A selected optional business service as subject matter of Fiduciary Relationship Arrangement ||
    # |
    common:feature FiduciaryRelationshipFacilitySelectedOption?;
    # The type of Fiduciary Relationship Arrangement ||
    # |
    common:text FiduciaryRelationshipFacilityType?;
    # Reference to Fiduciary Relationship Arrangement ||
    # |
    common:FinancialFacility FiduciaryRelationshipFacilityReference?;
    # Timetable to fulfill Fiduciary Relationship Arrangement ||
    # |
    common:schedule FiduciaryRelationshipFacilitySchedule?;
    # The status of Fiduciary Relationship Arrangement Status |Status  (https://www.iso20022.org/standardsrepository/type/Status)|Standard|ISO20022 BM ()
    common:status FiduciaryRelationshipFacilityStatus?;
    # The curreny which is arranged in Fiduciary Relationship Arrangement CurrencyCode|CurrencyCode (https://www.iso20022.org/standardsrepository/type/CurrencyCode)|Standard|ISO20022 BM ()
    common:currencycode FiduciaryRelationshipFacilityCurrency?;
    # Reference to the regulation which is defined in Fiduciary Relationship Arrangement ||
    # |
    common:Regulation FiduciaryRelationshipFacilityRegulationReference?;
    # A Classification that distinguishes between the regularity domains of Fiduciary Relationship Arrangement ||
    # |
    common:Rulesettypevalues FiduciaryRelationshipFacilityRegulationType?;
    # Reference to the jurisdiction that is assigned to Fiduciary Relationship Arrangement in case of legal dispute. Jurisdiction|Jurisdiction (https://www.iso20022.org/standardsrepository/type/Jurisdiction)|Standard|ISO20022 BM ()
    common:Jurisdiction FiduciaryRelationshipFacilityJurisdiction?;
    # The financial accounting unit into which the financial events, with regard to the origination and fulfillment of the agreement in the context of Fiduciary Relationship Arrangement, are entered. Location/Address|Location/Address (https://www.iso20022.org/standardsrepository/type/Location)|Standard|ISO20022 BM ()
    common:address FiduciaryRelationshipFacilityBookingLocation?;
    # The type of account which is linked to Fiduciary Relationship Arrangement OBExternalAccountSubType1Code| ()|Standard|UK Open Banking ()
    common:Accounttypevalues FiduciaryRelationshipFacilityAccountType?;
    # Reference to the account which is linked to Fiduciary Relationship Arrangement Account|Account  (https://www.iso20022.org/standardsrepository/type/Account)|Standard|ISO20022 BM ()
    common:Account FiduciaryRelationshipFacilityAccountReference?;
};

# Output: ReCR Retrieve details about any aspect of Fiduciary Relationship Facility
public type RetrieveFiduciaryRelationshipFacilityResponse record {
    # The Fiduciary Relationship Facility details
    RetrieveFiduciaryRelationshipFacilityResponse_FiduciaryRelationshipFacility FiduciaryRelationshipFacility?;
};
