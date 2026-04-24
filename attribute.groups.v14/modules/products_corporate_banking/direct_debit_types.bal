import financial.bian.attribute.groups.common as common;

import ballerina/http;

# Output: ReCR Retrieve details about any aspect of Direct Debit Facility
public type RetrieveDirectDebitFacilityResponse record {
    # Direct Debit Facility details
    RetrieveDirectDebitFacilityResponse_DirectDebitFacility DirectDebitFacility?;
};

public type RetrieveDirectDebitFacilityResponse_DirectDebitFacility record {
    # Reference to Direct Debit Arrangement DirectDebitMandate|DirectDebitMandate (https://www.iso20022.org/standardsrepository/type/DirectDebitMandate)|Standard|ISO20022 BM ()
    common:directdebitmandatearrangement DirectDebitFacilityParameterType?;
    # A selected optional business service as subject matter of Direct Debit Arrangement ||
    # |
    common:feature DirectDebitFacilitySelectedOption?;
    # Reference to Direct Debit Arrangement DirectDebitMandate|DirectDebitMandate (https://www.iso20022.org/standardsrepository/type/DirectDebitMandate)|Standard|ISO20022 BM ()
    common:directdebitmandatearrangement DirectDebitFacilityType?;
    # Reference to Direct Debit Arrangement DirectDebitMandate|DirectDebitMandate (https://www.iso20022.org/standardsrepository/type/DirectDebitMandate)|Standard|ISO20022 BM ()
    common:directdebitmandatearrangement DirectDebitFacilityReference?;
    # Timetable to fulfill Direct Debit Arrangement ||
    # |
    common:schedule DirectDebitFacilitySchedule?;
    # The status of Direct Debit Arrangement Status |Status  (https://www.iso20022.org/standardsrepository/type/Status)|Standard|ISO20022 BM ()
    common:status DirectDebitFacilityStatus?;
    # The curreny which is arranged in Direct Debit Arrangement CurrencyCode|CurrencyCode (https://www.iso20022.org/standardsrepository/type/CurrencyCode)|Standard|ISO20022 BM ()
    common:currencycode DirectDebitFacilityCurrency?;
    # Reference to the regulation which is defined in Direct Debit Arrangement GovernanceRules|GovernanceRules (https://www.iso20022.org/standardsrepository/type/GovernanceRules)|Standard|ISO20022 BM ()
    common:RuleSet DirectDebitFacilityRegulationReference?;
    # A Classification that distinguishes between the regularity domains of Direct Debit Arrangement ||
    # |
    common:Rulesettypevalues DirectDebitFacilityRegulationType?;
    # Reference to the jurisdiction that is assigned to Direct Debit Arrangement in case of legal dispute. Jurisdiction|Jurisdiction (https://www.iso20022.org/standardsrepository/type/Jurisdiction)|Standard|ISO20022 BM ()
    common:Jurisdiction DirectDebitFacilityJurisdiction?;
    # The financial accounting unit into which the financial events, with regard to the origination and fulfillment of the agreement in the context of Direct Debit Arrangement, are entered. Location/Address|Location/Address (https://www.iso20022.org/standardsrepository/type/Location)|Standard|ISO20022 BM ()
    common:address DirectDebitFacilityBookingLocation?;
    # The type of account which is linked to Direct Debit Arrangement OBExternalAccountSubType1Code| ()|Standard|UK Open Banking ()
    common:Accounttypevalues DirectDebitFacilityAccountType?;
    # Reference to the account which is linked to Direct Debit Arrangement Account|Account  (https://www.iso20022.org/standardsrepository/type/Account)|Standard|ISO20022 BM ()
    common:Account DirectDebitFacilityAccountReference?;
};

# Business Information for the set-up and execution of different types of payment from the facility, including regular payments, standing orders, direct debits and bill pay instructions.
public type FundsAvailableCheck record {
    # The required status/situation prior to the implementation of the feature
    common:condition Preconditions?;
    # Timetable to fulfill Direct Debit Arrangement ||
    # |
    common:schedule Schedule?;
    # The Payment Tracking specific Business Service
    common:businessservice BusinessService?;
    # The required status/situation prior to the implementation of the feature
    common:condition Postconditions?;
    # The identifier of Condition
    common:identifier DirectDebitFacilityReference?;
    # The identifier of Condition
    common:identifier FundsAvailableCheckReference?;
    # The particular date and time point in the progression of time
    common:text FundsAvailableCheckType?;
};

# Business Information for the set-up and execution of different types of payment from the facility, including regular payments, standing orders, direct debits and bill pay instructions.
public type PaymentInitiation record {
    # The required status/situation prior to the implementation of the feature
    common:condition Preconditions?;
    # Timetable to fulfill Direct Debit Arrangement ||
    # |
    common:schedule Schedule?;
    # The Payment Tracking specific Business Service
    common:businessservice BusinessService?;
    # The required status/situation prior to the implementation of the feature
    common:condition Postconditions?;
    # The identifier of Condition
    common:identifier DirectDebitFacilityReference?;
    # The identifier of Condition
    common:identifier PaymentInitiationReference?;
    # The particular date and time point in the progression of time
    common:text PaymentInitiationType?;
};

# Business Information for the set-up and execution of different types of payment from the facility, including regular payments, standing orders, direct debits and bill pay instructions.
public type BatchDebit record {
    # The required status/situation prior to the implementation of the feature
    common:condition Preconditions?;
    # Timetable to fulfill Direct Debit Arrangement ||
    # |
    common:schedule Schedule?;
    # The Payment Tracking specific Business Service
    common:businessservice BusinessService?;
    # The required status/situation prior to the implementation of the feature
    common:condition Postconditions?;
    # The identifier of Condition
    common:identifier DirectDebitFacilityReference?;
    # The identifier of Condition
    common:identifier BatchDebitReference?;
    # The particular date and time point in the progression of time
    common:text BatchDebitType?;
};

# Business Information for the set-up and execution of different types of payment from the facility, including regular payments, standing orders, direct debits and bill pay instructions.
public type PaymentTracking record {
    # The required status/situation prior to the implementation of the feature
    common:condition Preconditions?;
    # Timetable to fulfill Direct Debit Arrangement ||
    # |
    common:schedule Schedule?;
    # The Payment Tracking specific Business Service
    common:businessservice BusinessService?;
    # The required status/situation prior to the implementation of the feature
    common:condition Postconditions?;
    # The identifier of Condition
    common:identifier DirectDebitFacilityReference?;
    # The identifier of Condition
    common:identifier PaymentTrackingReference?;
    # The particular date and time point in the progression of time
    common:text PaymentTrackingType?;
};

# Fulfill any scheduled and ad-hoc obligations under a service arrangement, most typically for a financial product or facility  within Direct Debit. 
# Example: Perform the scheduled (e.g. statements, standing orders) and ad-hoc/requested (e.g. balance inquiries, fund transfers) fulfillment tasks for a customer current account facility.
public type DirectDebitFacility record {
    # Reference to Direct Debit Arrangement DirectDebitMandate|DirectDebitMandate (https://www.iso20022.org/standardsrepository/type/DirectDebitMandate)|Standard|ISO20022 BM ()
    common:directdebitmandatearrangement DirectDebitFacilityParameterType?;
    # A selected optional business service as subject matter of Direct Debit Arrangement ||
    # |
    common:feature DirectDebitFacilitySelectedOption?;
    # Reference to Direct Debit Arrangement DirectDebitMandate|DirectDebitMandate (https://www.iso20022.org/standardsrepository/type/DirectDebitMandate)|Standard|ISO20022 BM ()
    common:directdebitmandatearrangement DirectDebitFacilityType?;
    # Reference to Direct Debit Arrangement DirectDebitMandate|DirectDebitMandate (https://www.iso20022.org/standardsrepository/type/DirectDebitMandate)|Standard|ISO20022 BM ()
    common:directdebitmandatearrangement DirectDebitFacilityReference?;
    # Timetable to fulfill Direct Debit Arrangement ||
    # |
    common:schedule DirectDebitFacilitySchedule?;
    # The status of Direct Debit Arrangement Status |Status  (https://www.iso20022.org/standardsrepository/type/Status)|Standard|ISO20022 BM ()
    common:status DirectDebitFacilityStatus?;
    # The curreny which is arranged in Direct Debit Arrangement CurrencyCode|CurrencyCode (https://www.iso20022.org/standardsrepository/type/CurrencyCode)|Standard|ISO20022 BM ()
    common:currencycode DirectDebitFacilityCurrency?;
    # Reference to the regulation which is defined in Direct Debit Arrangement GovernanceRules|GovernanceRules (https://www.iso20022.org/standardsrepository/type/GovernanceRules)|Standard|ISO20022 BM ()
    common:RuleSet DirectDebitFacilityRegulationReference?;
    # A Classification that distinguishes between the regularity domains of Direct Debit Arrangement ||
    # |
    common:Rulesettypevalues DirectDebitFacilityRegulationType?;
    # Reference to the jurisdiction that is assigned to Direct Debit Arrangement in case of legal dispute. Jurisdiction|Jurisdiction (https://www.iso20022.org/standardsrepository/type/Jurisdiction)|Standard|ISO20022 BM ()
    common:Jurisdiction DirectDebitFacilityJurisdiction?;
    # The financial accounting unit into which the financial events, with regard to the origination and fulfillment of the agreement in the context of Direct Debit Arrangement, are entered. Location/Address|Location/Address (https://www.iso20022.org/standardsrepository/type/Location)|Standard|ISO20022 BM ()
    common:address DirectDebitFacilityBookingLocation?;
    # The type of account which is linked to Direct Debit Arrangement OBExternalAccountSubType1Code| ()|Standard|UK Open Banking ()
    common:Accounttypevalues DirectDebitFacilityAccountType?;
    # Reference to the account which is linked to Direct Debit Arrangement Account|Account  (https://www.iso20022.org/standardsrepository/type/Account)|Standard|ISO20022 BM ()
    common:Account DirectDebitFacilityAccountReference?;
};

public type ReportingOk record {|
    *http:Ok;
    Reporting body;
|};

public type DirectDebitFacilityOk record {|
    *http:Ok;
    DirectDebitFacility body;
|};

public type PaymentTrackingOk record {|
    *http:Ok;
    PaymentTracking body;
|};

# Business Information for the set-up and execution of different types of payment from the facility, including regular payments, standing orders, direct debits and bill pay instructions.
public type VerifyMandate record {
    # The required status/situation prior to the implementation of the feature
    common:condition Preconditions?;
    # Timetable to fulfill Direct Debit Arrangement ||
    # |
    common:schedule Schedule?;
    # The Payment Tracking specific Business Service
    common:businessservice BusinessService?;
    # The required status/situation prior to the implementation of the feature
    common:condition Postconditions?;
    # The identifier of Condition
    common:identifier DirectDebitFacilityReference?;
    # The identifier of Condition
    common:identifier VerifyMandateReference?;
    # The particular date and time point in the progression of time
    common:text VerifyMandateType?;
};

# Business Information for the set-up and execution of different types of payment from the facility, including regular payments, standing orders, direct debits and bill pay instructions.
public type Reporting record {
    # The required status/situation prior to the implementation of the feature
    common:condition Preconditions?;
    # Timetable to fulfill Direct Debit Arrangement ||
    # |
    common:schedule Schedule?;
    # The Payment Tracking specific Business Service
    common:businessservice BusinessService?;
    # The required status/situation prior to the implementation of the feature
    common:condition Postconditions?;
    # The identifier of Condition
    common:identifier DirectDebitFacilityReference?;
    # The identifier of Condition
    common:identifier ReportingReference?;
    # The particular date and time point in the progression of time
    common:text ReportingType?;
};
