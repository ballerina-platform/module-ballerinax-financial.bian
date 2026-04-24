import financial.bian.attribute.groups.common as common;

import ballerina/http;

# A Classification value that distinguishes between the type of process undertaken within Procedure
public type Proceduretypevalues record {
    # A Classification value that distinguishes between the type of process undertaken within Procedure
    string Proceduretypevalues?;
};

# The date-time the prospect campaign execution task is processed
public type DateTime record {
    # Expression of the point in time
    #
    # is expressed according to "TimeIndicationType"
    # e.g. period, day, more detailed indication
    string TimeIndication?;
    # TimeIndicationType
    string TimeIndicationType?;
};

# The result/impact of the overall prospect campaign event (that can include multiple identified prospects for on-boarding)
public type ProspectCampaignProcedure record {
    # A Classification value that distinguishes between the type of process undertaken within Procedure
    Proceduretypevalues ProcedureType?;
    # The date when the identifier became valid.
    common:Datetime ProcedureDateTime?;
    # Request to process something (most refers to Asset Type)
    # ProcedureRequest
    common:Instruction ProcedureRequest?;
    # The schedule and timing of the analysis performed using the algorithm
    # ProcedureSchedule
    common:Schedule ProcedureSchedule?;
    # ProcedureStatus
    common:Status ProcedureStatus?;
};

public type ProspectCampaignProcedureOk record {|
    *http:Ok;
    # body
    ProspectCampaignProcedure body;
|};

