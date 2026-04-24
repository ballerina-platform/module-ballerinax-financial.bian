import financial.bian.attribute.groups.common as common;

import ballerina/http;

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

