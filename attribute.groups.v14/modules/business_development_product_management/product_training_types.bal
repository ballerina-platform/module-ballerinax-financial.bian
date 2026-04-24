import financial.bian.attribute.groups.common as common;

import ballerina/http;

# A Classification value that distinguishes between the type of process undertaken within Procedure
public type Proceduretypevalues record {
    # A Classification value that distinguishes between the type of process undertaken within Procedure
    string Proceduretypevalues?;
};

# Reference to Service Scheduling
public type Workstep record {
    # Result of the workstep
    string WorkstepResult?;
    # A Classification value that distinguishes between the type of workstep undertaken within Procedure
    Worksteptypevalues WorkstepType?;
    # Description of the workstep
    string WorkstepDescription?;
    # The date when the identifier became valid.
    common:Datetime WorkstepDateTime?;
    # Status of the workstep
    common:Status WorkstepStatus?;
    # Work product of the workstep
    common:Workproduct WorkstepWorkproduct?;
};

# A course of action for doing Service Scheduling in the context of executing the Service Scheduling
public type ServiceEvaluation record {
    # The required status/situation and or tasks that need to be completed prior to the initiation of the workstep
    common:Condition Preconditions?;
    # Reference to an entity that assigns and manages the identification.
    # tReference to the organization or agency that issued the identifier (e.g., DMV, Passport Office).
    common:Involvedparty BusinessUnitEmployeeReference?;
    # The timing and key actions/milestones making up the workstep
    common:Schedule Schedule?;
    # The Service Scheduling specific Business Service
    common:BusinessService BusinessService?;
    # The required status/situation and or tasks that need to be completed prior to the initiation of the workstep
    common:Condition Postconditions?;
    # Reference to Service Scheduling
    Procedure ProductTrainingProcedureReference?;
    # Reference to Service Scheduling
    Workstep ServiceEvaluationReference?;
    # The type of Service Evaluation
    string ServiceEvaluationType?;
};

# A course of action for doing Service Scheduling in the context of executing the Service Scheduling
public type ServiceScheduling record {
    # The required status/situation and or tasks that need to be completed prior to the initiation of the workstep
    common:Condition Preconditions?;
    # Reference to an entity that assigns and manages the identification.
    # tReference to the organization or agency that issued the identifier (e.g., DMV, Passport Office).
    common:Involvedparty BusinessUnitEmployeeReference?;
    # The timing and key actions/milestones making up the workstep
    common:Schedule Schedule?;
    # The Service Scheduling specific Business Service
    common:BusinessService BusinessService?;
    # The required status/situation and or tasks that need to be completed prior to the initiation of the workstep
    common:Condition Postconditions?;
    # Reference to Service Scheduling
    Procedure ProductTrainingProcedureReference?;
    # Reference to Service Scheduling
    Workstep ServiceSchedulingReference?;
    # The type of Service Scheduling
    string ServiceSchedulingType?;
};

# Reference to Service Scheduling
public type Procedure record {
    # A Classification value that distinguishes between the type of process undertaken within Procedure
    Proceduretypevalues ProcedureType?;
    # The date when the identifier became valid.
    common:Datetime ProcedureDateTime?;
    # Request to process something (most refers to Asset Type)
    common:Instruction ProcedureRequest?;
    # The timing and key actions/milestones making up the workstep
    common:Schedule ProcedureSchedule?;
    # Status of the procedure
    common:Status ProcedureStatus?;
};

# A course of action for doing Service Scheduling in the context of executing the Service Scheduling
public type ContentDevelopment record {
    # The required status/situation and or tasks that need to be completed prior to the initiation of the workstep
    common:Condition Preconditions?;
    # Reference to an entity that assigns and manages the identification.
    # tReference to the organization or agency that issued the identifier (e.g., DMV, Passport Office).
    common:Involvedparty BusinessUnitEmployeeReference?;
    # The timing and key actions/milestones making up the workstep
    common:Schedule Schedule?;
    # The Service Scheduling specific Business Service
    common:BusinessService BusinessService?;
    # The required status/situation and or tasks that need to be completed prior to the initiation of the workstep
    common:Condition Postconditions?;
    # Reference to Service Scheduling
    Procedure ProductTrainingProcedureReference?;
    # Reference to Service Scheduling
    Workstep ContentDevelopmentReference?;
    # The type of Content Development
    string ContentDevelopmentType?;
};

public type ContentDevelopmentOk record {|
    *http:Ok;
    # body
    ContentDevelopment body;
|};

# A course of action for doing Service Scheduling in the context of executing the Service Scheduling
public type ServiceDelivery record {
    # The required status/situation and or tasks that need to be completed prior to the initiation of the workstep
    common:Condition Preconditions?;
    # Reference to an entity that assigns and manages the identification.
    # tReference to the organization or agency that issued the identifier (e.g., DMV, Passport Office).
    common:Involvedparty BusinessUnitEmployeeReference?;
    # The timing and key actions/milestones making up the workstep
    common:Schedule Schedule?;
    # The Service Scheduling specific Business Service
    common:BusinessService BusinessService?;
    # The required status/situation and or tasks that need to be completed prior to the initiation of the workstep
    common:Condition Postconditions?;
    # Reference to Service Scheduling
    Procedure ProductTrainingProcedureReference?;
    # Reference to Service Scheduling
    Workstep ServiceDeliveryReference?;
    # The type of Service Delivery
    string ServiceDeliveryType?;
};

public type ServiceDeliveryOk record {|
    *http:Ok;
    # body
    ServiceDelivery body;
|};

# A Classification value that distinguishes between the type of workstep undertaken within Procedure
public type Worksteptypevalues record {
    # A Classification value that distinguishes between the type of workstep undertaken within Procedure
    string Worksteptypevalues?;
};

public type ProductTrainingProcedureOk record {|
    *http:Ok;
    # body
    ProductTrainingProcedure body;
|};

public type ServiceSchedulingOk record {|
    *http:Ok;
    # body
    ServiceScheduling body;
|};

public type ProductTrainingProcedure record {
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
