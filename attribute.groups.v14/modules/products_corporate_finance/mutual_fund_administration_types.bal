import financial.bian.attribute.groups.common as common;

import ballerina/http;

# The Fund Tax Administration Routine is an activity that is performed as one aspect of carrying out the Fund Tax Administration Routine
public type FundInvestor_MiddleandBackOfficeService record {
    # Preconditions for the service
    common:condition Preconditions?;
    # Business unit or employee reference
    common:involvedparty BusinessUnitorEmployeeReference?;
    # Schedule details
    common:schedule Schedule?;
    # Business service details
    common:businessservice BusinessService?;
    # Postconditions for the service
    common:condition Postconditions?;
    # Mutual fund administrative plan reference
    common:plan MutualFundAdministrativePlanReference?;
    # Fund investor middle and back office service routine reference
    common:plannedaction FundInvestor_MiddleandBackOfficeServiceRoutineReference?;
    # Fund investor middle and back office service routine type
    common:text FundInvestor_MiddleandBackOfficeServiceRoutineType?;
};

# The Fund Tax Administration Routine is an activity that is performed as one aspect of carrying out the Fund Tax Administration Routine
public type FundFinancialReporting record {
    # Preconditions for the service
    common:condition Preconditions?;
    # Business unit or employee reference
    common:involvedparty BusinessUnitorEmployeeReference?;
    # Schedule details
    common:schedule Schedule?;
    # Business service details
    common:businessservice BusinessService?;
    # Postconditions for the service
    common:condition Postconditions?;
    # Mutual fund administrative plan reference
    common:plan MutualFundAdministrativePlanReference?;
    # Fund financial reporting routine reference
    common:plannedaction FundFinancialReportingRoutineReference?;
    # Fund financial reporting routine type
    common:text FundFinancialReportingRoutineType?;
};

# The Fund Tax Administration Routine is an activity that is performed as one aspect of carrying out the Fund Tax Administration Routine
public type FundInflowsandOutflow record {
    # Preconditions for the service
    common:condition Preconditions?;
    # Business unit or employee reference
    common:involvedparty BusinessUnitorEmployeeReference?;
    # Schedule details
    common:schedule Schedule?;
    # Business service details
    common:businessservice BusinessService?;
    # Postconditions for the service
    common:condition Postconditions?;
    # Mutual fund administrative plan reference
    common:plan MutualFundAdministrativePlanReference?;
    # Fund inflows and outflow routine reference
    common:plannedaction FundInflowsandOutflowRoutineReference?;
    # Fund inflows and outflow routine type
    common:text FundInflowsandOutflowRoutineType?;
};

# Fulfill any scheduled and ad-hoc obligations under a service arrangement, most typically for a financial product or facility within Mutual Fund Administrative Plan.
public type MutualFundAdministrativePlan record {
    # Business unit reference
    common:BusinessUnit BusinessUnitReference?;
    # Mutual fund administrative plan type
    // common:plantype MutualFundAdministrativePlanType?;
    # Mutual fund administrative plan reference
    common:plan MutualFundAdministrativePlanReference?;
    # Mutual fund administrative plan currency
    common:currencycode MutualFundAdministrativePlanCurrency?;
    # Mutual fund administrative plan budget type
    common:budgettype MutualFundAdministrativePlanBudgetType?;
    # Mutual fund administrative plan assignment
    common:Arrangement MutualFundAdministrativePlanAssignment?;
    # Mutual fund administrative plan
    common:plan MutualFundAdministrativePlan?;
    # Mutual fund administrative plan description
    common:text MutualFundAdministrativePlanDescription?;
    # Mutual fund administrative plan schedule
    common:schedule MutualFundAdministrativePlanSchedule?;
    # Mutual fund administrative plan configuration
    common:text MutualFundAdministrativePlanConfiguration?;
    # Mutual fund administrative plan status
    common:text MutualFundAdministrativePlanStatus?;
    # Document directory entry instance reference
    common:documentdirectoryentry DocumentDirectoryEntryInstanceReference?;
};

public type MutualFundAdministrativePlanOk record {|
    *http:Ok;
    MutualFundAdministrativePlan body;
|};

public type FundInvestor_MiddleandBackOfficeServiceOk record {|
    *http:Ok;
    FundInvestor_MiddleandBackOfficeService body;
|};

public type FundFinancialReportingOk record {|
    *http:Ok;
    FundFinancialReporting body;
|};

public type FundInflowsandOutflowOk record {|
    *http:Ok;
    FundInflowsandOutflow body;
|};

