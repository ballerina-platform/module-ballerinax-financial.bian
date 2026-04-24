import ballerina/http;
import financial.bian.attribute.groups.common as common;

# A Classification value that distinguishes between the type of process undertaken within Procedure
public type Proceduretypevalues record {
    # A Classification value that distinguishes between the type of process undertaken within Procedure
    string Proceduretypevalues?;
};

# Reference to Distribution Vehicle Administration
public type Workstep record {
    # WorkstepResult
    string WorkstepResult?;
    # A Classification value that distinguishes between the type of workstep undertaken within Procedure
    Worksteptypevalues WorkstepType?;
    # WorkstepDescription
    string WorkstepDescription?;
    # The date when the identifier became valid.
    common:Datetime WorkstepDateTime?;
    # WorkstepStatus
    common:Status WorkstepStatus?;
    # WorkstepWorkproduct
    common:Workproduct WorkstepWorkproduct?;
};

# A course of action for doing Distribution Vehicle Administration in the context of executing the Distribution Vehicle Administration
public type DistributionPlanning record {
    # The required status/situation and or tasks that need to be completed prior to the initiation of the workstep
    common:Condition Preconditions?;
    # Reference to an entity that assigns and manages the identification.
    # tReference to the organization or agency that issued the identifier (e.g., DMV, Passport Office).
    common:Involvedparty BusinessUnitEmployeeReference?;
    # The timing and key actions/milestones making up the workstep
    common:Schedule Schedule?;
    # The Distribution Vehicle Administration specific Business Service
    common:BusinessService BusinessService?;
    # The required status/situation and or tasks that need to be completed prior to the initiation of the workstep
    common:Condition Postconditions?;
    # Reference to Distribution Vehicle Administration
    Procedure CashDistributionProcedureReference?;
    # Reference to Distribution Vehicle Administration
    Workstep DistributionPlanningReference?;
    # The type of Distribution Planning
    string DistributionPlanningType?;
};

# A course of action for doing Distribution Vehicle Administration in the context of executing the Distribution Vehicle Administration
public type InventoryDistributionOversight record {
    # The required status/situation and or tasks that need to be completed prior to the initiation of the workstep
    common:Condition Preconditions?;
    # Reference to an entity that assigns and manages the identification.
    # tReference to the organization or agency that issued the identifier (e.g., DMV, Passport Office).
    common:Involvedparty BusinessUnitEmployeeReference?;
    # The timing and key actions/milestones making up the workstep
    common:Schedule Schedule?;
    # The Distribution Vehicle Administration specific Business Service
    common:BusinessService BusinessService?;
    # The required status/situation and or tasks that need to be completed prior to the initiation of the workstep
    common:Condition Postconditions?;
    # Reference to Distribution Vehicle Administration
    Procedure CashDistributionProcedureReference?;
    # Reference to Distribution Vehicle Administration
    Workstep InventoryDistributionOversightReference?;
    # The type of Inventory Distribution Oversight
    string InventoryDistributionOversightType?;
};

# Reference to Distribution Vehicle Administration
public type Procedure record {
    # A Classification value that distinguishes between the type of process undertaken within Procedure
    Proceduretypevalues ProcedureType?;
    # The date when the identifier became valid.
    common:Datetime ProcedureDateTime?;
    # Request to process something (most refers to Asset Type)
    common:Instruction ProcedureRequest?;
    # The timing and key actions/milestones making up the workstep
    common:Schedule ProcedureSchedule?;
    # ProcedureStatus
    common:Status ProcedureStatus?;
};

# A course of action for doing Distribution Vehicle Administration in the context of executing the Distribution Vehicle Administration
public type DistributionVehicleAdministration record {
    # The required status/situation and or tasks that need to be completed prior to the initiation of the workstep
    common:Condition Preconditions?;
    # Reference to an entity that assigns and manages the identification.
    # tReference to the organization or agency that issued the identifier (e.g., DMV, Passport Office).
    common:Involvedparty BusinessUnitEmployeeReference?;
    # The timing and key actions/milestones making up the workstep
    common:Schedule Schedule?;
    # The Distribution Vehicle Administration specific Business Service
    common:BusinessService BusinessService?;
    # The required status/situation and or tasks that need to be completed prior to the initiation of the workstep
    common:Condition Postconditions?;
    # Reference to Distribution Vehicle Administration
    Procedure CashDistributionProcedureReference?;
    # Reference to Distribution Vehicle Administration
    Workstep DistributionVehicleAdministrationReference?;
    # The type of Distribution Vehicle Administration
    string DistributionVehicleAdministrationType?;
};

# A course of action for doing Distribution Vehicle Administration in the context of executing the Distribution Vehicle Administration
public type InventoryProvisioning record {
    # The required status/situation and or tasks that need to be completed prior to the initiation of the workstep
    common:Condition Preconditions?;
    # Reference to an entity that assigns and manages the identification.
    # tReference to the organization or agency that issued the identifier (e.g., DMV, Passport Office).
    common:Involvedparty BusinessUnitEmployeeReference?;
    # The timing and key actions/milestones making up the workstep
    common:Schedule Schedule?;
    # The Distribution Vehicle Administration specific Business Service
    common:BusinessService BusinessService?;
    # The required status/situation and or tasks that need to be completed prior to the initiation of the workstep
    common:Condition Postconditions?;
    # Reference to Distribution Vehicle Administration
    Procedure CashDistributionProcedureReference?;
    # Reference to Distribution Vehicle Administration
    Workstep InventoryProvisioningReference?;
    # The type of Inventory Provisioning
    string InventoryProvisioningType?;
};

public type CashDistributionProcedureOk record {|
    *http:Ok;
    # body
    CashDistributionProcedure body;
|};

# Reference to the party who is involved in Cash Distribution Procedure
public type CashDistributionProcedure record {
    # A Classification value that distinguishes between the type of process undertaken within Procedure
    Proceduretypevalues ProcedureType?;
    # The date when the identifier became valid.
    common:Datetime ProcedureDateTime?;
    # Request to process something (most refers to Asset Type)
    common:Instruction ProcedureRequest?;
    # The timing and key actions/milestones making up the workstep
    common:Schedule ProcedureSchedule?;
    # ProcedureStatus
    common:Status ProcedureStatus?;
};

# A Classification value that distinguishes between the type of workstep undertaken within Procedure
public type Worksteptypevalues record {
    # A Classification value that distinguishes between the type of workstep undertaken within Procedure
    string Worksteptypevalues?;
};

public type OutboundWithResponseOk record {|
    *http:Ok;
    # body
    OutboundWithResponse body;
|};

public type CorrespondenceOperatingSessionOk record {|
    *http:Ok;
    # body
    CorrespondenceOperatingSession body;
|};

# The collection of operational serivces/functions offered by the operational facility
#
# Examples: messages, capture, routines
public type OutboundWithResponse record {
    # Date when the response expected. This can result in chasing activities and notification to the sending unit
    common:Datetime ResponseDueDate?;
    # Reference to the inbound correspondence received that has been matched to the outbound message
    common:Correspondence ResponseCorrespondenceReference?;
    # Reference to the inbound correspondence received that has been matched to the outbound message
    common:Correspondence ResponseCorrespondenceRecord?;
};

# Operate equipment and/or a largely automated facility within Correspondence. 
public type CorrespondenceOperatingSession record {
    # Service activity statistics that are maintained during the session
    string CorrespondenceServiceSessionStatistics?;
    # >
    # * `FinancialReport` - 
    # * `BusinessReport` - 
    # * `ManagementReport` - 
    # * `Statement` - 
    # * `MaintenanceReport` - 
    # * `RegulatoryReport` - 
    # * `TaxReport` - 
    # * `AnalysisReport` - 
    common:Reporttypevalues CorrespondenceServiceSessionReportType?;
    # The session activity report
    common:Report CorrespondenceServiceSessionReport?;
    # Date when the response expected. This can result in chasing activities and notification to the sending unit
    common:Datetime CorrespondenceServiceSessionDate?;
};

public type BlockMailingOk record {|
    *http:Ok;
    # body
    BlockMailing body;
|};

# Identifies the preferred media and channel for delivery of the message
public type Channel record {
    # >
    # * `CommunicationChannel` - 
    # * `AuthenticationChannel` - 
    common:Channeltypevalues ChannelType?;
};

# The collection of operational serivces/functions offered by the operational facility
#
# Examples: messages, capture, routines
public type BlockMailing record {
    # Used to track receipt and return of the individual messages making up the block mail
    string BlockmailingRecord?;
};

# The Distribution is an activity that is performed as one aspect of carrying out the Distribution
public type Provisioning record {
    # The required status/situation before the routine can be undertaken
    common:Condition Preconditions?;
    # Reference to an entity that assigns and manages the identification.
    # tReference to the organization or agency that issued the identifier (e.g., DMV, Passport Office).
    common:Involvedparty BusinessUnitEmployeeReference?;
    # The timing and key actions/milestones involved in completing the routine
    common:Schedule Schedule?;
    # The Distribution specific Business Service
    common:BusinessService BusinessService?;
    # The required status/situation before the routine can be undertaken
    common:Condition Postconditions?;
    # Reference to Distribution
    common:Plan ProductInventoryDistributionAdministrativePlanReference?;
    # Reference to Distribution
    PlannedAction ProvisioningReference?;
    # The type of Provisioning
    string ProvisioningType?;
};

public type DistributionOk record {|
    *http:Ok;
    # body
    Distribution body;
|};

public type ProvisioningOk record {|
    *http:Ok;
    # body
    Provisioning body;
|};

public type ProductInventoryDistributionAdministrativePlanOk record {|
    *http:Ok;
    # body
    ProductInventoryDistributionAdministrativePlan body;
|};

public type ProductInventoryDistributionAdministrativePlan record {
    # PlanGoal
    common:Goal PlanGoal?;
    # An arrangement which is specifying an estimate of costs, revenues, and resources over a specified period, reflecting a reading of future financial conditions and goals. (adapted from Business Dictionary)
    common:Budgetarrangement PlanBudget?;
    # An action that is arranged in a plan for doing or achieving something 
    common:Plannedaction PlannedAction?;
    # >
    # * `AdministrativePlan` - 
    # * `ManagementPlan` - 
    # * `StratgyPlan` - 
    # * `FinancialPlan` - 
    # * `DevelopmentPlan` - 
    common:Plantypevalues PlanType?;
    # The validity period of Condition
    common:Datetimeperiod PlanValidityPeriod?;
    # PlanDescription
    string PlanDescription?;
};

# The Distribution is an activity that is performed as one aspect of carrying out the Distribution
public type Distribution record {
    # The required status/situation before the routine can be undertaken
    common:Condition Preconditions?;
    # Reference to an entity that assigns and manages the identification.
    # tReference to the organization or agency that issued the identifier (e.g., DMV, Passport Office).
    common:Involvedparty BusinessUnitEmployeeReference?;
    # The timing and key actions/milestones involved in completing the routine
    common:Schedule Schedule?;
    # The Distribution specific Business Service
    common:BusinessService BusinessService?;
    # The required status/situation before the routine can be undertaken
    common:Condition Postconditions?;
    # Reference to Distribution
    common:Plan ProductInventoryDistributionAdministrativePlanReference?;
    # Reference to Distribution
    PlannedAction DistributionReference?;
    # The type of Distribution
    string DistributionType?;
    # Reference to a user's switch service access rights
    string MarketDataSwitchUserAccessRightsRecordReference?;
    # The users are registered to access different services/information made available through the switch - it is used to control information distribution
    common:Arrangement MarketDataSwitchUserAccessRightsRecord?;
    # This tracks the switch service content that the user will receive for this session - reflecting their user access rights
    common:Session MarketDataSwitchServiceUserSessionRecord?;
};

public type OversightOk record {|
    *http:Ok;
    # body
    Oversight body;
|};

# The Distribution is an activity that is performed as one aspect of carrying out the Distribution
public type Oversight record {
    # The required status/situation before the routine can be undertaken
    common:Condition Preconditions?;
    # Reference to an entity that assigns and manages the identification.
    # tReference to the organization or agency that issued the identifier (e.g., DMV, Passport Office).
    common:Involvedparty BusinessUnitEmployeeReference?;
    # The timing and key actions/milestones involved in completing the routine
    common:Schedule Schedule?;
    # The Distribution specific Business Service
    common:BusinessService BusinessService?;
    # The required status/situation before the routine can be undertaken
    common:Condition Postconditions?;
    # Reference to Distribution
    common:Plan ProductInventoryDistributionAdministrativePlanReference?;
    # Reference to Distribution
    PlannedAction OversightReference?;
    # The type of Oversight
    string OversightType?;
};

# The Distribution is an activity that is performed as one aspect of carrying out the Distribution
public type Mailing record {
    # The required status/situation before the routine can be undertaken
    common:Condition Preconditions?;
    # Reference to an entity that assigns and manages the identification.
    # tReference to the organization or agency that issued the identifier (e.g., DMV, Passport Office).
    common:Involvedparty BusinessUnitEmployeeReference?;
    # The timing and key actions/milestones involved in completing the routine
    common:Schedule Schedule?;
    # The Distribution specific Business Service
    common:BusinessService BusinessService?;
    # The required status/situation before the routine can be undertaken
    common:Condition Postconditions?;
    # Reference to Distribution
    common:Plan ProductInventoryDistributionAdministrativePlanReference?;
    # Reference to Distribution
    PlannedAction MailingReference?;
    # The type of Mailing
    string MailingType?;
};

public type MailingOk record {|
    *http:Ok;
    # body
    Mailing body;
|};
