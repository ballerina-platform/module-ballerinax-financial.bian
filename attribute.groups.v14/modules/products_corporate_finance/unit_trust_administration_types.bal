import financial.bian.attribute.groups.common as common;

import ballerina/http;

# The Fund Enrolment Routine is an activity that is performed as one aspect of carrying out the Fund Enrolment Routine
public type FundEnrolment record {
    # Preconditions for the fund enrolment
    common:condition Preconditions?;
    # Business unit or employee reference
    common:involvedparty BusinessUnitorEmployeeReference?;
    # Schedule for the fund enrolment
    common:schedule Schedule?;
    # Business service details
    common:businessservice BusinessService?;
    # Postconditions for the fund enrolment
    common:condition Postconditions?;
    # Unit trust administrative plan reference
    common:plan UnitTrustAdministrativePlanReference?;
    # Fund enrolment routine reference
    common:plannedaction FundEnrolmentRoutineReference?;
    # Fund enrolment routine type
    common:text FundEnrolmentRoutineType?;
};

# Fulfill any scheduled and ad-hoc obligations under a service arrangement, most typically for a financial product or facility within Unit Trust Administrative Plan.
public type UnitTrustAdministrativePlan record {
    # Business unit reference
    common:BusinessUnit BusinessUnitReference?;
    # Unit trust administrative plan type
    // common:plantype UnitTrustAdministrativePlanType?;
    # Unit trust administrative plan reference
    common:plan UnitTrustAdministrativePlanReference?;
    # Unit trust administrative plan currency code
    common:currencycode UnitTrustAdministrativePlanCurrency?;
    # Unit trust administrative plan budget type
    common:budgettype UnitTrustAdministrativePlanBudgetType?;
    # Unit trust administrative plan assignment
    common:Arrangement UnitTrustAdministrativePlanAssignment?;
    # Unit trust administrative plan
    common:plan UnitTrustAdministrativePlan?;
    # Unit trust administrative plan description
    common:text UnitTrustAdministrativePlanDescription?;
    # Unit trust administrative plan schedule
    common:schedule UnitTrustAdministrativePlanSchedule?;
    # Unit trust administrative plan configuration
    common:text UnitTrustAdministrativePlanConfiguration?;
    # Unit trust administrative plan status
    common:text UnitTrustAdministrativePlanStatus?;
    # Document directory entry instance reference
    common:documentdirectoryentry DocumentDirectoryEntryInstanceReference?;
};

public type UnitTrustAdministrativePlanOk record {|
    *http:Ok;
    UnitTrustAdministrativePlan body;
|};

public type FundEnrolmentOk record {|
    *http:Ok;
    FundEnrolment body;
|};
