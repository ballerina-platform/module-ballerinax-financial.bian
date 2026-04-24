import financial.bian.attribute.groups.common as common;

import ballerina/http;

# A Classification value that distinguishes between the type of services within Archive Operating Session

public type DocumentCaptureOk record {|
    *http:Ok;
    # body
    DocumentCapture body;
|};

# An operational service or function supported within the Document Retrieval Function for doing Document Retrieval Function
public type DocumentCapture record {
    # The required status/situation and or tasks that need to be completed prior to the invocation of the feature
    common:Condition Preconditions?;
    # The schedule and timing of the function
    common:Schedule Schedule?;
    # The Document Retrieval Function specific Business Service
    common:BusinessService BusinessService?;
    # Reference to Document Retrieval Function
    common:Session ArchiveOperatingSessionReference?;
    # Reference to Document Retrieval Function
    common:Function DocumentCaptureFunctionReference?;
    # The type of Document Capture Function
    string DocumentCaptureFunctionType?;
};

public type ArchiveOperatingSessionOk record {|
    *http:Ok;
    ArchiveOperatingSession body;
|};

# The configuration of Archive Operating Session
public type SystemConfigurationOption record {
    # Options for configuring the system or the function/feature of system.
    string SystemConfigurationOption?;
};

# An operational service or function supported within the Document Retrieval Function for doing Document Retrieval Function
public type DocumentRetrieval record {
    # The required status/situation and or tasks that need to be completed prior to the invocation of the feature
    common:Condition Preconditions?;
    # The schedule and timing of the function
    common:Schedule Schedule?;
    # The Document Retrieval Function specific Business Service
    common:BusinessService BusinessService?;
    # Reference to Document Retrieval Function
    common:Session ArchiveOperatingSessionReference?;
    # Reference to Document Retrieval Function
    common:Function DocumentRetrievalFunctionReference?;
    # The type of Document Retrieval Function
    string DocumentRetrievalFunctionType?;
};

# Operate equipment and/or a largely automated facility within Archive Services. 
public type ArchiveOperatingSession record {
    # The schedule and timing of the function
    common:Schedule ArchiveOperatingSessionSchedule?;
    # ArchiveOperatingSessionStatus
    common:Status ArchiveOperatingSessionStatus?;
    # Reference to the log of (usage) ativities/events  of Archive Operating Session
    common:Log ArchiveOperatingSessionUsageLog?;
    # Reference to an entity that assigns and manages the identification.
    # tReference to the organization or agency that issued the identifier (e.g., DMV, Passport Office).
    common:Involvedparty ArchiveOperatingSessionAssociatedPartyReference?;
    # Reference to an entity that assigns and manages the identification.
    # tReference to the organization or agency that issued the identifier (e.g., DMV, Passport Office).
    common:Involvedparty ArchiveOperatingSessionServiceProviderReference?;
    # >
    # * `ContactHandlingSession` - 
    # * `CustomerDialogueSession` - 
    # * `ChannelOperatingSession` - 
    # * `GatewayOperatingSession` - 
    # * `SwitchOperatingSession` - 
    # * `DeviceOperatingSession` - 
    # * `InterbankTransactionOperatingSession` - 
    # * `CorrespondenceOperatingSession` - 
    # * `InteractiveHelpOperatingSession` - 
    # * `ACHOperatingSession` - 
    common:Sessiontypevalues ArchiveOperatingSessionType?;
    # The schedule and timing of the function
    common:Schedule ArchiveOperatingSessionServiceProviderSchedule?;
    # A Classification value that distinguishes between the type of services within Archive Operating Session
    Servicetype ArchiveOperatingSessionServiceType?;
    # The configuration of Archive Operating Session
    SystemConfigurationOption ArchiveOperatingSessionServiceConfiguration?;
    # Reference to Document Retrieval Function
    common:Session ArchiveOperatingSessionReference?;
    # Reference to the document that is archived and retrieved by Archive Service
    common:Document ArchiveOperatingSessionDocumentReference?;
};

# A Classification value that distinguishes between the type of services in Account Reconciliation Procedure
public type Servicetype record {
    # The name of Condition
    common:Name ServiceTypeName?;
    # >
    # * `ITService` - 
    # * `AdministrativeService` - 
    # * `SystemService` - 
    # * `FinancialService` - 
    # * `InformationService` - 
    # * `BusinessService` - 
    common:Servicetypevalues ServiceType?;
};

public type DocumentMaintenanceOk record {|
    *http:Ok;
    DocumentMaintenance body;
|};

public type DocumentMaintenance record {
    # The required status/situation and or tasks that need to be completed prior to the invocation of the feature
    common:Condition Preconditions?;
    # The schedule and timing of the function
    common:Schedule Schedule?;
    # The Document Retrieval Function specific Business Service
    common:BusinessService BusinessService?;
    # Reference to Document Retrieval Function
    common:Session ArchiveOperatingSessionReference?;
    # Reference to Document Retrieval Function
    common:Function DocumentMaintenanceFunctionReference?;
    # The type of Document Maintenance Function
    string DocumentMaintenanceFunctionType?;
};

public type DocumentRetrievalOk record {|
    *http:Ok;
    DocumentRetrieval body;
|};
