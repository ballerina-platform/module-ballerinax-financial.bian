import financial.bian.attribute.groups.common as common;

import ballerina/http;

public type IntellectualPropertyExchangeOperatingSessionOk record {|
    *http:Ok;
    # Description of body
    IntellectualPropertyExchangeOperatingSession body;
|};

# An operational service or function supported within the Archiving for doing Archiving
public type CaptureandClassification record {
    # The required status/situation and or tasks that need to be completed prior to the invocation of the feature
    common:Condition Preconditions?;
    # The schedule and timing of the function
    common:Schedule Schedule?;
    # The Archiving specific Business Service
    common:BusinessService BusinessService?;
    # Reference to Archiving
    common:Session IntellectualPropertyExchangeOperatingSessionReference?;
    # Reference to Archiving
    common:Function CaptureandClassificationReference?;
    # The type of Capture and Classification
    string CaptureandClassificationType?;
};

# Operate equipment and/or a largely automated facility  within Knowledge Exchange. 
# Example: Operate the bank's internal intranet facility.
public type IntellectualPropertyExchangeOperatingSession record {
    # The schedule and timing of the function
    common:Schedule IntellectualPropertyExchangeOperatingSessionSchedule?;
    # Description of IntellectualPropertyExchangeOperatingSessionStatus
    common:Status IntellectualPropertyExchangeOperatingSessionStatus?;
    # Reference to the log of (usage) ativities/events  of Intellectual Property Exchange Operating Session
    common:Log IntellectualPropertyExchangeOperatingSessionUsageLog?;
    # Reference to Archiving
    common:Session IntellectualPropertyExchangeOperatingSessionReference?;
    # Reference to an entity that assigns and manages the identification.
    # tReference to the organization or agency that issued the identifier (e.g., DMV, Passport Office).
    common:Involvedparty IntellectualPropertyExchangeOperatingSessionServiceProviderReference?;
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
    common:Sessiontypevalues IntellectualPropertyExchangeOperatingSessionType?;
    # The schedule and timing of the function
    common:Schedule IntellectualPropertyExchangeOperatingSessionServiceProviderSchedule?;
    # >
    # * `ITService` - 
    # * `AdministrativeService` - 
    # * `SystemService` - 
    # * `FinancialService` - 
    # * `InformationService` - 
    # * `BusinessService` - 
    common:Servicetypevalues IntellectualPropertyExchangeOperatingSessionServiceType?;
    # The configuration of Intellectual Property Exchange Operating Session
    common:Arrangement IntellectualPropertyExchangeOperatingSessionServiceConfiguration?;
};

public type CaptureandClassificationOk record {|
    *http:Ok;
    # Description of body
    CaptureandClassification body;
|};

# An operational service or function supported within the Archiving for doing Archiving
public type IndexingandPublication record {
    # The required status/situation and or tasks that need to be completed prior to the invocation of the feature
    common:Condition Preconditions?;
    # The schedule and timing of the function
    common:Schedule Schedule?;
    # The Archiving specific Business Service
    common:BusinessService BusinessService?;
    # Reference to Archiving
    common:Session IntellectualPropertyExchangeOperatingSessionReference?;
    # Reference to Archiving
    common:Function IndexingandPublicationReference?;
    # The type of Indexing and Publication
    string IndexingandPublicationType?;
};

# An operational service or function supported within the Archiving for doing Archiving
public type MaintenanceandAccessAdministration record {
    # The required status/situation and or tasks that need to be completed prior to the invocation of the feature
    common:Condition Preconditions?;
    # The schedule and timing of the function
    common:Schedule Schedule?;
    # The Archiving specific Business Service
    common:BusinessService BusinessService?;
    # Reference to Archiving
    common:Session IntellectualPropertyExchangeOperatingSessionReference?;
    # Reference to Archiving
    common:Function MaintenanceandAccessAdministrationReference?;
    # The type of Maintenance and Access Administration
    string MaintenanceandAccessAdministrationType?;
};

# An operational service or function supported within the Archiving for doing Archiving
public type Archiving record {
    # The required status/situation and or tasks that need to be completed prior to the invocation of the feature
    common:Condition Preconditions?;
    # The schedule and timing of the function
    common:Schedule Schedule?;
    # The Archiving specific Business Service
    common:BusinessService BusinessService?;
    # Reference to Archiving
    common:Session IntellectualPropertyExchangeOperatingSessionReference?;
    # Reference to Archiving
    common:Function ArchivingReference?;
    # The type of Archiving
    string ArchivingType?;
};

# An operational service or function supported within the Archiving for doing Archiving
public type Review_RefinementandEditing record {
    # The required status/situation and or tasks that need to be completed prior to the invocation of the feature
    common:Condition Preconditions?;
    # The schedule and timing of the function
    common:Schedule Schedule?;
    # The Archiving specific Business Service
    common:BusinessService BusinessService?;
    # Reference to Archiving
    common:Session IntellectualPropertyExchangeOperatingSessionReference?;
    # Reference to Archiving
    common:Function Review_RefinementandEditingReference?;
    # The type of Review, Refinement and Editing
    string Review_RefinementandEditingType?;
};
