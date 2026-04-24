import financial.bian.attribute.groups.common as common;

import ballerina/http;

# A course of action for doing Receivables Evaluation in the context of executing the Receivables Evaluation
public type ReceivablesEvaluation record {
    # The required status/situation and or tasks that need to be completed prior to the initiation of the workstep
    common:Condition Preconditions?;
    # Reference to an entity that assigns and manages the identification.
    # tReference to the organization or agency that issued the identifier (e.g., DMV, Passport Office).
    common:Involvedparty BusinessUnitEmployeeReference?;
    # The timing and key actions/milestones making up the workstep
    common:Schedule Schedule?;
    # The Receivables Evaluation specific Business Service
    common:BusinessService BusinessService?;
    # The required status/situation and or tasks that need to be completed prior to the initiation of the workstep
    common:Condition Postconditions?;
    # Reference to Receivables Evaluation
    Procedure AccountsReceivableProcedureReference?;
    # Reference to Receivables Evaluation
    Workstep ReceivablesEvaluationReference?;
    # The type of Receivables Evaluation
    string ReceivablesEvaluationType?;
};

public type AccountsReceivableProcedureOk record {|
    *http:Ok;
    AccountsReceivableProcedure body;
|};

# Reference to the party who is involved in Accounts Receivable Procedure
public type AccountsReceivableProcedure record {
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

public type CustomerNegotiationOk record {|
    *http:Ok;
    CustomerNegotiation body;
|};

# A course of action for doing Receivables Evaluation in the context of executing the Receivables Evaluation
public type CustomerNegotiation record {
    # The required status/situation and or tasks that need to be completed prior to the initiation of the workstep
    common:Condition Preconditions?;
    # Reference to an entity that assigns and manages the identification.
    # tReference to the organization or agency that issued the identifier (e.g., DMV, Passport Office).
    common:Involvedparty BusinessUnitEmployeeReference?;
    # The timing and key actions/milestones making up the workstep
    common:Schedule Schedule?;
    # The Receivables Evaluation specific Business Service
    common:BusinessService BusinessService?;
    # The required status/situation and or tasks that need to be completed prior to the initiation of the workstep
    common:Condition Postconditions?;
    # Reference to Receivables Evaluation
    Procedure AccountsReceivableProcedureReference?;
    # Reference to Receivables Evaluation
    Workstep CustomerNegotiationReference?;
    # The type of Customer Negotiation
    string CustomerNegotiationType?;
};

public type PaymentOk record {|
    *http:Ok;
    Payment body;
|};

# A course of action for doing Receivables Evaluation in the context of executing the Receivables Evaluation
public type Payment record {
    # The required status/situation and or tasks that need to be completed prior to the initiation of the workstep
    common:Condition Preconditions?;
    # Reference to an entity that assigns and manages the identification.
    # tReference to the organization or agency that issued the identifier (e.g., DMV, Passport Office).
    common:Involvedparty BusinessUnitEmployeeReference?;
    # The timing and key actions/milestones making up the workstep
    common:Schedule Schedule?;
    # The Receivables Evaluation specific Business Service
    common:BusinessService BusinessService?;
    # The required status/situation and or tasks that need to be completed prior to the initiation of the workstep
    common:Condition Postconditions?;
    # Reference to Receivables Evaluation
    Procedure AccountsReceivableProcedureReference?;
    # Reference to Receivables Evaluation
    Workstep PaymentReference?;
    # The type of Payment
    string PaymentType?;
};

public type ReceivablesEvaluationOk record {|
    *http:Ok;
    ReceivablesEvaluation body;
|};

public type ResolutionOk record {|
    *http:Ok;
    Resolution body;
|};

# A course of action for doing Receivables Evaluation in the context of executing the Receivables Evaluation
public type Resolution record {
    # The required status/situation and or tasks that need to be completed prior to the initiation of the workstep
    common:Condition Preconditions?;
    # Reference to an entity that assigns and manages the identification.
    # tReference to the organization or agency that issued the identifier (e.g., DMV, Passport Office).
    common:Involvedparty BusinessUnitEmployeeReference?;
    # The timing and key actions/milestones making up the workstep
    common:Schedule Schedule?;
    # The Receivables Evaluation specific Business Service
    common:BusinessService BusinessService?;
    # The required status/situation and or tasks that need to be completed prior to the initiation of the workstep
    common:Condition Postconditions?;
    # Reference to Receivables Evaluation
    Procedure AccountsReceivableProcedureReference?;
    # Reference to Receivables Evaluation
    Workstep ResolutionReference?;
    # The type of Resolution
    string ResolutionType?;
};
