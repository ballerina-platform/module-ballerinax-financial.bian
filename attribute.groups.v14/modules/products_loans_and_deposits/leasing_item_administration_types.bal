import financial.bian.attribute.groups.common as common;

import ballerina/http;

# Output: CaCR Capture Leasing Item Administrative Plan activity or event related information
public type CaptureLeasingItemAdministrativePlanResponse record {
    # Leasing Item Administrative Plan details
    CaptureLeasingItemAdministrativePlanResponse_LeasingItemAdministrativePlan LeasingItemAdministrativePlan?;
};

public type CaptureLeasingItemAdministrativePlanRequest_LeasingItemAdministrativePlan record {
    # A Classification value that distinguishes between Budgets within Leasing Item Administrative Plan according to the type of resource and/or activity that is budgetted ||
    # |
    common:budgettypevalues LeasingItemAdministrativePlanBudgetType?;
    # The allocation of someone or something which is specified for Leasing Item Administrative Plan ||
    # |
    assignment LeasingItemAdministrativePlanAssignment?;
    # Party who is involved in  Leasing Item Administrative Plan ||
    # |
    leasingitemadministrativeplan LeasingItemAdministrativePlan?;
    # Party who is involved in  Leasing Item Administrative Plan ||
    # |
    leasingitemadministrativeplan LeasingItemAdministrativePlanReference?;
};

# Input: UpCR Update details relating to Leasing Item Administrative Plan
public type UpdateLeasingItemAdministrativePlanRequest record {
    # Leasing Item Administrative Plan details
    CaptureLeasingItemAdministrativePlanRequest_LeasingItemAdministrativePlan LeasingItemAdministrativePlan?;
};

# Output: RqCR Request manual intervention or a decision with respect to Leasing Item Administrative Plan
public type RequestLeasingItemAdministrativePlanResponse record {
    # Leasing Item Administrative Plan details
    CaptureLeasingItemAdministrativePlanResponse_LeasingItemAdministrativePlan LeasingItemAdministrativePlan?;
};

# Input: CoCR Control the processing of Leasing Item Administrative Plan
public type ControlLeasingItemAdministrativePlanRequest record {
    # Leasing Item Administrative Plan details
    CaptureLeasingItemAdministrativePlanRequest_LeasingItemAdministrativePlan LeasingItemAdministrativePlan?;
};

# Output: ReCR Retrieve details about any aspect of Leasing Item Administrative Plan
public type RetrieveLeasingItemAdministrativePlanResponse record {
    # Leasing Item Administrative Plan details
    CaptureLeasingItemAdministrativePlanRequest_LeasingItemAdministrativePlan LeasingItemAdministrativePlan?;
};

public type CaptureLeasingItemAdministrativePlanResponse_LeasingItemAdministrativePlan record {
    # A Classification value that distinguishes between Budgets within Leasing Item Administrative Plan according to the type of resource and/or activity that is budgetted ||
    # |
    common:budgettypevalues LeasingItemAdministrativePlanBudgetType?;
    # The allocation of someone or something which is specified for Leasing Item Administrative Plan ||
    # |
    assignment LeasingItemAdministrativePlanAssignment?;
    # Party who is involved in  Leasing Item Administrative Plan ||
    # |
    leasingitemadministrativeplan LeasingItemAdministrativePlan?;
};

public type InitiateLeasingItemAdministrativePlanResponseOk record {|
    *http:Ok;
    InitiateLeasingItemAdministrativePlanResponse body;
|};

# Input: RqCR Request manual intervention or a decision with respect to Leasing Item Administrative Plan
public type RequestLeasingItemAdministrativePlanRequest record {
    # Leasing Item Administrative Plan details
    CaptureLeasingItemAdministrativePlanRequest_LeasingItemAdministrativePlan LeasingItemAdministrativePlan?;
};

# Output: EcCR Accept, verify, etc. aspects of Leasing Item Administrative Plan processing
public type ExchangeLeasingItemAdministrativePlanResponse record {
    # Leasing Item Administrative Plan details
    CaptureLeasingItemAdministrativePlanResponse_LeasingItemAdministrativePlan LeasingItemAdministrativePlan?;
};

# The allocation of someone or something which is specified for Leasing Item Administrative Plan ||
# |
public type assignment record {
    # Reference to the party involved in the assignment
    common:party PartyReference?;
    # Role of the party in the assignment
    common:partyrole PartyInvolvement?;
    # Subject matter of the assignment
    string SubjectMatter?;
};

# Input: CaCR Capture Leasing Item Administrative Plan activity or event related information
public type CaptureLeasingItemAdministrativePlanRequest record {
    # Leasing Item Administrative Plan details
    CaptureLeasingItemAdministrativePlanRequest_LeasingItemAdministrativePlan LeasingItemAdministrativePlan?;
};

# Output: UpCR Update details relating to Leasing Item Administrative Plan
public type UpdateLeasingItemAdministrativePlanResponse record {
    # Leasing Item Administrative Plan details
    CaptureLeasingItemAdministrativePlanResponse_LeasingItemAdministrativePlan LeasingItemAdministrativePlan?;
};

# Output: CoCR Control the processing of Leasing Item Administrative Plan
public type ControlLeasingItemAdministrativePlanResponse record {
    # Leasing Item Administrative Plan details
    CaptureLeasingItemAdministrativePlanResponse_LeasingItemAdministrativePlan LeasingItemAdministrativePlan?;
};

# Party who is involved in  Leasing Item Administrative Plan ||
# |
public type leasingitemadministrativeplan record {
    # A plan for administration of a leased item that is the subject of a leasing agreement financed through the bank.
    string LeasingItemAdministrativePlan?;
};

# Input: EcCR Accept, verify, etc. aspects of Leasing Item Administrative Plan processing
public type ExchangeLeasingItemAdministrativePlanRequest record {
    # Leasing Item Administrative Plan details
    CaptureLeasingItemAdministrativePlanRequest_LeasingItemAdministrativePlan LeasingItemAdministrativePlan?;
};

# Input: GrCR Obtain permission to act in relation to Leasing Item Administrative Plan
public type GrantLeasingItemAdministrativePlanRequest record {
    # Leasing Item Administrative Plan details
    CaptureLeasingItemAdministrativePlanRequest_LeasingItemAdministrativePlan LeasingItemAdministrativePlan?;
};

# Output: InCR Instantiate a new Leasing Item Administrative Plan
public type InitiateLeasingItemAdministrativePlanResponse record {
    # Leasing Item Administrative Plan details
    CaptureLeasingItemAdministrativePlanResponse_LeasingItemAdministrativePlan LeasingItemAdministrativePlan?;
};

# Input: InCR Instantiate a new Leasing Item Administrative Plan
public type InitiateLeasingItemAdministrativePlanRequest record {
    # Leasing Item Administrative Plan details
    CaptureLeasingItemAdministrativePlanRequest_LeasingItemAdministrativePlan LeasingItemAdministrativePlan?;
};

# Output: GrCR Obtain permission to act in relation to Leasing Item Administrative Plan
public type GrantLeasingItemAdministrativePlanResponse record {
    # Leasing Item Administrative Plan details
    CaptureLeasingItemAdministrativePlanResponse_LeasingItemAdministrativePlan LeasingItemAdministrativePlan?;
};
