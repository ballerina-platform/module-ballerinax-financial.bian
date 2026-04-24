import financial.bian.attribute.groups.common as common;

import ballerina/http;

# The Fund Accounting Routine is an activity that is performed as one aspect of carrying out the Fund Accounting Routine
public type FundPerformanceFee record {
    # Preconditions for the fund performance fee routine
    common:condition Preconditions?;
    # Business unit or employee reference
    common:involvedparty BusinessUnitorEmployeeReference?;
    # Schedule information
    common:schedule Schedule?;
    # Business service details
    common:businessservice BusinessService?;
    # Postconditions after the routine
    common:condition Postconditions?;
    # Hedge fund administrative plan reference
    common:plan HedgeFundAdministrativePlanReference?;
    # Fund performance fee routine reference
    common:plannedaction FundPerformanceFeeRoutineReference?;
    # Fund performance fee routine type
    common:text FundPerformanceFeeRoutineType?;
};

# The Fund Accounting Routine is an activity that is performed as one aspect of carrying out the Fund Accounting Routine
public type FundManagement record {
    # Preconditions for the fund management routine
    common:condition Preconditions?;
    # Business unit or employee reference
    common:involvedparty BusinessUnitorEmployeeReference?;
    # Schedule information
    common:schedule Schedule?;
    # Business service details
    common:businessservice BusinessService?;
    # Postconditions after the routine
    common:condition Postconditions?;
    # Hedge fund administrative plan reference
    common:plan HedgeFundAdministrativePlanReference?;
    # Fund management routine reference
    common:plannedaction FundManagementRoutineReference?;
    # Fund management routine type
    common:text FundManagementRoutineType?;
};

# Fulfill any scheduled and ad-hoc obligations under a service arrangement, most typically for a financial product or facility within Hedge Fund Administrative Plan.
public type HedgeFundAdministrativePlan record {
    # Business unit reference
    common:BusinessUnit BusinessUnitReference?;
    # Hedge fund administrative plan type
    // common:plantype HedgeFundAdministrativePlanType?;
    # Hedge fund administrative plan reference
    common:plan HedgeFundAdministrativePlanReference?;
    # Hedge fund administrative plan currency
    common:currencycode HedgeFundAdministrativePlanCurrency?;
    # Hedge fund administrative plan budget type
    common:budgettype HedgeFundAdministrativePlanBudgetType?;
    # Hedge fund administrative plan assignment
    common:Arrangement HedgeFundAdministrativePlanAssignment?;
    # Hedge fund administrative plan
    common:plan HedgeFundAdministrativePlan?;
    # Hedge fund administrative plan description
    common:text HedgeFundAdministrativePlanDescription?;
    # Hedge fund administrative plan schedule
    common:schedule HedgeFundAdministrativePlanSchedule?;
    # Hedge fund administrative plan configuration
    common:text HedgeFundAdministrativePlanConfiguration?;
    # Hedge fund administrative plan status
    common:text HedgeFundAdministrativePlanStatus?;
    # Document directory entry instance reference
    common:documentdirectoryentry DocumentDirectoryEntryInstanceReference?;
};

public type HedgeFundAdministrativePlanOk record {|
    *http:Ok;
    HedgeFundAdministrativePlan body;
|};

public type FundPerformanceFeeOk record {|
    *http:Ok;
    FundPerformanceFee body;
|};

public type FundManagementOk record {|
    *http:Ok;
    FundManagement body;
|};
