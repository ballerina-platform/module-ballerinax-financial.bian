import financial.bian.attribute.groups.common as common;

import ballerina/http;

# Reference to the collection of advisory service sessions underlying the service Loan|Loan (https://www.iso20022.org/standardsrepository/type/Loan)|Standard|ISO20022 ()
public type loanagreement record {
    # Term and condition to govern the use of loan product and the loan agreement in general.
    common:condition LoanTermAndCondition?;
};

public type CorporateTaxAdvisoryFacilityOk record {|
    *http:Ok;
    CorporateTaxAdvisoryFacility body;
|};

# Fulfill any scheduled and ad-hoc obligations under a service arrangement, most typically for a financial product or facility within Corporate Tax Advisory. 
public type CorporateTaxAdvisoryFacility record {
    # Reference to the collection of advisory service sessions underlying the service Loan|Loan (https://www.iso20022.org/standardsrepository/type/Loan)|Standard|ISO20022 ()
    loanagreement ProductInstanceReference?;
    # Business unit and or employee reference to the source of the financial advice ||
    # |
    common:involvedparty CustomerReference?;
    # Bank branch associated with the customer account/relationship for booking purposes ||
    # |
    common:branchlocation BankBranchLocationReference?;
    # Business unit and or employee reference to the source of the financial advice ||
    # |
    common:involvedparty EmployeeBusinessUnitReference?;
    # File of consolidated notes, forms and documents for the advisory sessions ||
    # |
    common:workproduct CorporateTaxAdvisoryWorkProducts?;
    # The document reference for associated documents such as disclosures and acceptance records ||
    # |
    common:documentdirectoryentry DocumentDirectoryEntryInstanceReference?;
    # Target and actual dates for tasks performed (includes any specialist sessions) ||
    # |
    common:schedule CorporateTaxAdviceSessionSchedule?;
    # The combination of the different tax advisory sessions and assessments provided to the customer ||
    # |
    common:text CorporateTaxAdviceConsolidationRecord?;
    # Key dates and times associated with the advisory sessions (e.g. booking date, start date/time) ||
    # |
    common:datetimetypevalues DateType?;
    # Value of the date type ISODateTime|ISODateTime (https://www.iso20022.org/standardsrepository/type/ISODateTime)|Standard|ISO20022 BM ()
    common:datetime Date?;
};
