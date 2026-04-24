import ballerina/http;
import financial.bian.attribute.groups.common as common;

// --- operational_gateway_types.bal ---

# A Classification value that distinguishes between the type of services within Operational Gateway Operating Session
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

public type OutboundWithResponseOk record {|
    *http:Ok;
    OutboundWithResponse body;
|};

public type OperationalGatewayOperatingSessionOk record {|
    *http:Ok;
    OperationalGatewayOperatingSession body;
|};

# The configuration of Operational Gateway Operating Session
public type SystemConfigurationOption record {
    # Options for configuring the system or the function/feature of system.
    string SystemConfigurationOption?;
};

# An operational service or function supported within the Outbound Message Function for doing Outbound Message Function
public type OutboundWithResponse record {
    # The required status/situation and or tasks that need to be completed prior to the invocation of the feature
    common:condition Preconditions?;
    # The schedule and timing of the function
    common:Schedule Schedule?;
    # The Outbound Message Function specific Business Service
    common:businessservice BusinessService?;
    # Reference to Outbound Message Function
    common:Session OperationalGatewayOperatingSessionReference?;
    # Reference to Outbound Message Function
    common:Function OutboundWithResponseFunctionReference?;
    # The type of Outbound With Response Function
    string OutboundWithResponseFunctionType?;
};

public type OutboundMessageOk record {|
    *http:Ok;
    OutboundMessage body;
|};

# An operational service or function supported within the Outbound Message Function for doing Outbound Message Function
public type InboundMessage record {
    # The required status/situation and or tasks that need to be completed prior to the invocation of the feature
    common:condition Preconditions?;
    # The schedule and timing of the function
    common:Schedule Schedule?;
    # The Outbound Message Function specific Business Service
    common:businessservice BusinessService?;
    # Reference to Outbound Message Function
    common:Session OperationalGatewayOperatingSessionReference?;
    # Reference to Outbound Message Function
    common:Function InboundMessageFunctionReference?;
    # The type of Inbound Message Function
    string InboundMessageFunctionType?;
};

# Operate equipment and/or a largely automated facility within Operational Gateway. 
public type OperationalGatewayOperatingSession record {
    # The schedule and timing of the function
    common:Schedule OperationalGatewayOperatingSessionSchedule?;
    # OperationalGatewayOperatingSessionStatus
    common:Status OperationalGatewayOperatingSessionStatus?;
    # Reference to the log of (usage) ativities/events  of Operational Gateway Operating Session
    common:Log OperationalGatewayOperatingSessionUsageLog?;
    # Reference to an entity that assigns and manages the identification.
    # tReference to the organization or agency that issued the identifier (e.g., DMV, Passport Office).
    common:Involvedparty OperationalGatewayOperatingSessionAssociatedPartyReference?;
    # Reference to an entity that assigns and manages the identification.
    # tReference to the organization or agency that issued the identifier (e.g., DMV, Passport Office).
    common:Involvedparty OperationalGatewayOperatingSessionServiceProviderReference?;
    # Specifies the classification of session like Customer Contact Session, Channel Operating Session, Device Operating Session, etc.
    common:Sessiontype OperationalGatewayOperatingSessionType?;
    # The schedule and timing of the function
    common:Schedule OperationalGatewayOperatingSessionServiceProviderSchedule?;
    # A Classification value that distinguishes between the type of services within Operational Gateway Operating Session
    Servicetype OperationalGatewayOperatingSessionServiceType?;
    # The configuration of Operational Gateway Operating Session
    SystemConfigurationOption OperationalGatewayOperatingSessionServiceConfiguration?;
    # Reference to Outbound Message Function
    common:Session OperationalGatewayOperatingSessionReference?;
};

public type InboundMessageOk record {|
    *http:Ok;
    InboundMessage body;
|};

# An operational service or function supported within the Outbound Message Function for doing Outbound Message Function
public type OutboundMessage record {
    # The required status/situation and or tasks that need to be completed prior to the invocation of the feature
    common:condition Preconditions?;
    # The schedule and timing of the function
    common:Schedule Schedule?;
    # The Outbound Message Function specific Business Service
    common:businessservice BusinessService?;
    # Reference to Outbound Message Function
    common:Session OperationalGatewayOperatingSessionReference?;
    # Reference to Outbound Message Function
    common:Function OutboundMessageFunctionReference?;
    # The type of Outbound Message Function
    string OutboundMessageFunctionType?;
};

// --- system_development_types.bal ---

# To build or enhance something, typically an IT production systems  within System Development. Includes development, Assessment and deployment activities.
# Example: Build, enhance, test and deploy a major enhancement to a production product processing system.
public type ITSystemDevelopment record {
    # The reference to and descriptive name of the deployment project
    common:Name SystemDevelopmentProjectName?;
    # The type of deployment project (e.g. service update, new product release)
    string SystemDevelopmentProjectType?;
    # A description of the scope, goal and make-up of the product deployment project
    string SystemDevelopmentProjectDescription?;
    # The derived deployment execution plan, covering tasks from the completion and acceptance of the deployment plan through to completion of the deployment including post deployment analysis tasks if required. Consolidates the different aspects of the plan. (Captures both planned and actual results)
    string SystemDevelopmentImplementationPlan?;
    # The financial considerations for the deployment (includes planning and execution)
    string SystemDevelopmentBudget?;
    # The organizational aspects of the deployment effort (includes planning and execution)
    string SystemDevelopmentProjectOrganization?;
    # The deployment schedule of events, planned and actual (includes planning and execution tasks)
    common:Schedule SystemDevelopmentProjectSchedule?;
    # >
    # * `MaturityDate` - 
    # * `InitiatedDate` - 
    # * `RequestedDate` - 
    # * `ExecutedDate` - 
    # * `OpenDate` - 
    # * `CloseDate` - 
    # * `ExpiryDate` - 
    # * `EffectiveDate` - 
    # * `CreatingDate` - 
    # * `ActivationDate` - 
    # * `DeactivationDate` - 
    # * `BlockingDate` - 
    # * `SendingDate` - 
    # * `ValidFromDate` - 
    # * `ValidToDate` - 
    # * `ReceivingDate` - 
    # * `SigningDate` - 
    # * `DueDate` - 
    # * `ValueDate` - 
    # * `FulfillmentDate` - 
    # * `EntryDate` - 
    common:Datetimetypevalues DateType?;
    # The date when the identifier became valid.
    common:Datetime Date?;
};

# A collection of one or more deliverables that may be further defined in terms of an approach to be followed to create them
#
# Examples: Functional module specification
public type TestingSpecification record {
    # Details the testing tasks and deliverables of system development project
    string TestingSpecificationTaskDefinition?;
    # Collection of design and development work products used in the implementation of the software and data specification
    common:workproduct TestingSpecificationTaskWorkProducts?;
    # Reference to associated project documents
    common:documentdirectoryentry DocumentDirectoryEntryInstanceReference?;
    # The testing specification and results as a suitably structured and formatted document
    string SystemTestingSpecification?;
};

public type ITSystemDevelopmentOk record {|
    *http:Ok;
    ITSystemDevelopment body;
|};

# A collection of one or more deliverables that may be further defined in terms of an approach to be followed to create them
#
# Examples: Functional module specification
public type TechnicalSpecification record {
    # Details the technical specification tasks and deliverables of system development project
    string TechnicalSpecificationTaskDefinition?;
    # Collection of design and development work products used in the implementation of the software and data specification
    common:workproduct TechnicalSpecificationTaskWorkProducts?;
    # Reference to associated project documents
    common:documentdirectoryentry DocumentDirectoryEntryInstanceReference?;
    # The technical specification as a suitably structured and formatted document
    string SystemTechnicalSpecification?;
};

# A collection of one or more deliverables that may be further defined in terms of an approach to be followed to create them
#
# Examples: Functional module specification
public type UsageSpecification record {
    # Details the usage guidelines specification tasks and deliverables of the system development project
    string UsageSpecificationTaskDefinition?;
    # Collection of design and development work products used in the implementation of the software and data specification
    common:workproduct UsageSpecificationTaskWorkProducts?;
    # Reference to associated project documents
    common:documentdirectoryentry DocumentDirectoryEntryInstanceReference?;
    # The usage guideline specification as a suitably structured and formatted document
    string SystemFunctionalSpecification?;
};

# A collection of one or more deliverables that may be further defined in terms of an approach to be followed to create them
#
# Examples: Functional module specification
public type SoftwareandDataSpecification record {
    # Details the software and data specification/development tasks and deliverables of system development project
    string SoftwareandDataSpecificationTaskDefinition?;
    # Collection of design and development work products used in the implementation of the software and data specification
    common:workproduct SoftwareandDataSpecificationTaskWorkProducts?;
    # Reference to associated project documents
    common:documentdirectoryentry DocumentDirectoryEntryInstanceReference?;
    # The developed software and data specification in a format suited for production deployment
    string SystemSoftwareandDataSpecification?;
};

# A collection of one or more deliverables that may be further defined in terms of an approach to be followed to create them
#
# Examples: Functional module specification
public type FunctionalSpecification record {
    # Details the functional specification tasks and deliverables of system development project
    string FunctionalSpecificationTaskDefinition?;
    # Collection of design and development work products used in the implementation of the software and data specification
    common:workproduct FunctionalSpecificationTaskWorkProducts?;
    # Reference to associated project documents
    common:documentdirectoryentry DocumentDirectoryEntryInstanceReference?;
    # The functional specification as a suitably structured and formatted document
    string SystemFunctionalSpecification?;
};
