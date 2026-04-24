import financial.bian.attribute.groups.common as common;

import ballerina/http;

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
    common:Workproduct TestingSpecificationTaskWorkProducts?;
    # Reference to associated project documents
    common:DocumentDirectoryEntry DocumentDirectoryEntryInstanceReference?;
    # The testing specification and results as a suitably structured and formatted document
    string SystemTestingSpecification?;
};

public type ITSystemDevelopmentOk record {|
    *http:Ok;
    # body
    ITSystemDevelopment body;
|};

# A collection of one or more deliverables that may be further defined in terms of an approach to be followed to create them
#
# Examples: Functional module specification
public type TechnicalSpecification record {
    # Details the technical specification tasks and deliverables of system development project
    string TechnicalSpecificationTaskDefinition?;
    # Collection of design and development work products used in the implementation of the software and data specification
    common:Workproduct TechnicalSpecificationTaskWorkProducts?;
    # Reference to associated project documents
    common:DocumentDirectoryEntry DocumentDirectoryEntryInstanceReference?;
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
    common:Workproduct UsageSpecificationTaskWorkProducts?;
    # Reference to associated project documents
    common:DocumentDirectoryEntry DocumentDirectoryEntryInstanceReference?;
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
    common:Workproduct SoftwareandDataSpecificationTaskWorkProducts?;
    # Reference to associated project documents
    common:DocumentDirectoryEntry DocumentDirectoryEntryInstanceReference?;
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
    common:Workproduct FunctionalSpecificationTaskWorkProducts?;
    # Reference to associated project documents
    common:DocumentDirectoryEntry DocumentDirectoryEntryInstanceReference?;
    # The functional specification as a suitably structured and formatted document
    string SystemFunctionalSpecification?;
};
