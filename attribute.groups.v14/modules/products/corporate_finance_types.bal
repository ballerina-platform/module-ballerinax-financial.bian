import ballerina/http;
import financial.bian.attribute.groups.common as common;

# The developed prospectus for the ECM/DCM instrument, including agreed pricing strategy
public type prospect record {
    # The prospectus details
    string Prospect?;
};

# The product features/services available with a financical facility
public type Prospectus record {
    # Reference to the employee business unit
    common:BusinessUnit EmployeeBusinessUnitReference?;
    # Record of the prospectus work task
    common:text ProspectusWorkTaskRecord?;
    # Type of the prospectus work task
    common:text ProspectusWorkTaskType?;
    # Description of the prospectus work task
    common:text ProspectusWorkTaskDescription?;
    # Work products of the prospectus work task
    common:workproduct ProspectusWorkTaskWorkProducts?;
    # Reference to the document directory entry instance
    common:documentdirectoryentry DocumentDirectoryEntryInstanceReference?;
    # The prospectus information
    prospect Prospectus?;
};

# The product features/services available with a financical facility
public type Placement record {
    # Reference to the employee business unit
    common:BusinessUnit EmployeeBusinessUnitReference?;
    # List of prospects
    common:text ProspectList?;
    # Schedule for the placement roadshow
    common:schedule PlacementRoadshowSchedule?;
    # Record of the placement work task
    common:text PlacementWorkTaskRecord?;
    # Type of the placement work task
    common:text PlacementWorkTaskType?;
    # Description of the placement work task
    common:text PlacementWorkTaskDescription?;
    # Work products of the placement work task
    common:workproduct PlacementWorkTaskWorkProducts?;
    # Reference to the document directory entry instance
    common:documentdirectoryentry DocumentDirectoryEntryInstanceReference?;
    # The placement transaction
    'transaction PlacementTransaction?;
};

# The product features/services available with a financical facility
public type InstrumentDefinition record {
    # Reference to the employee business unit
    common:BusinessUnit EmployeeBusinessUnitReference?;
    # Record of the instrument definition work task
    common:text InstrumentDefinitionWorkTaskRecord?;
    # Type of the instrument definition work task
    common:text InstrumentDefinitionWorkTaskType?;
    # Description of the instrument definition work task
    common:text InstrumentDefinitionWorkTaskDescription?;
    # Work products of the instrument definition work task
    common:workproduct InstrumentDefinitionWorkTaskWorkProducts?;
    # Reference to the document directory entry instance
    common:documentdirectoryentry DocumentDirectoryEntryInstanceReference?;
    # The instrument definition specification
    common:text InstrumentDefinitionSpecification?;
};

# Fulfill any scheduled and ad-hoc obligations under a service arrangement, most typically for a financial product or facility within ECM And DCM.
public type ECMAndDCMFacility record {
    # Reference to the product instance
    productagreement ProductInstanceReference?;
    # Reference to the customer
    common:involvedparty CustomerReference?;
    # Reference to the bank branch location
    common:branchlocation BankBranchLocationReference?;
    # Reference to the business unit
    common:BusinessUnit BusinessUnitReference?;
    # Reference to the document directory entry instance
    common:documentdirectoryentry DocumentDirectoryEntryInstanceReference?;
    # Associations related to the facility
    common:involvedparty Associations?;
    # Type of the association
    string AssociationType?;
    # Obligation or entitlement of the association
    common:partyobligationorentitlement AssociationObligationEntitlement?;
    # Reference to the association
    common:involvedparty AssociationReference?;
    # Fulfillment schedule for ECM and DCM
    common:schedule ECMAndDCMFulfillmentSchedule?;
    # Type of the date
    common:datetimetypevalues DateType?;
    # The date
    common:datetime Date?;
    # Record of the ECM and DCM instrument
    common:text ECMAndDCMInstrumentRecord?;
};

public type ECMAndDCMFacilityOk record {|
    *http:Ok;
    ECMAndDCMFacility body;
|};

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
