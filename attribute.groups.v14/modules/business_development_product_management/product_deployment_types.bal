import financial.bian.attribute.groups.common as common;

import ballerina/http;

# A collection of one or more deliverables that may be further defined in terms of an approach to be followed to create them
#
# Examples: Functional module specification
public type ProductionSupport record {
    # The consolidated aspects of the servicing deployment tasks
    common:Requirement ProductandServiceDeploymentProductionSupportRequirements?;
    # File of consolidated deployment planning and deliverable specifications for the task
    common:Workproduct ProductandServiceDeploymentProductionSupportRequirementsWorkProducts?;
    # Reference to associated documents
    common:DocumentDirectoryEntry DocumentDirectoryEntryInstanceReference?;
    # Details the tasks and deliverables needed to handle the production support needs of the deployment
    string ProductandServiceDeploymentProductionSupportRequirementsTaskSpecification?;
};

# To build or enhance something, typically an IT production systems  within Product Deployment. Includes development, Assessment and deployment activities.
# Example: Build, enhance, test and deploy a major enhancement to a production product processing system.
public type ProductandServiceDeploymentDevelopment record {
    # The reference to and descriptive name of the deployment project
    common:Name ProductandServiceDeploymentProjectName?;
    # The type of deployment project (e.g. service update, new product release)
    string ProductandServiceDeploymentProjectType?;
    # A description of the scope, goal and make-up of the product deployment project
    string ProductandServiceDeploymentProjectDescription?;
    # The derived deployment execution plan, covering tasks from the completion and acceptance of the deployment plan through to completion of the deployment including post deployment analysis tasks if required. Consolidates the different aspects of the plan. (Captures both planned and actual results)
    common:Plan ProductandServiceDeploymentImplementationPlan?;
    # The financial considerations for the deployment (includes planning and execution)
    common:Budgetarrangement ProductandServiceDeploymentBudget?;
    # The organizational aspects of the deployment effort (includes planning and execution)
    common:Organisation ProductandServiceDeploymentOrganization?;
    # The deployment schedule of events, planned and actual (includes planning and execution tasks)
    common:Schedule ProductandServiceDeploymentSchedule?;
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
public type Systems record {
    # The consolidated aspects of the servicing deployment tasks
    common:Requirement ProductandServiceDeploymentSystemsRequirements?;
    # File of consolidated deployment planning and deliverable specifications for the task
    common:Workproduct ProductandServiceDeploymentSystemsRequirementsWorkProducts?;
    # Reference to associated documents
    common:DocumentDirectoryEntry DocumentDirectoryEntryInstanceReference?;
    # Details the tasks and deliverables needed to handle the systems needs of the deployment
    string ProductandServiceDeploymentSystemsRequirementsTaskSpecification?;
};

# A collection of one or more deliverables that may be further defined in terms of an approach to be followed to create them
#
# Examples: Functional module specification
public type ITOperations record {
    # The consolidated aspects of the servicing deployment tasks
    common:Requirement ProductandServiceDeploymentITOperationsRequirements?;
    # File of consolidated deployment planning and deliverable specifications for the task
    common:Workproduct ProductandServiceDeploymentITOperationsRequirementsWorkProducts?;
    # Reference to associated documents
    common:DocumentDirectoryEntry DocumentDirectoryEntryInstanceReference?;
    # Details the tasks and deliverables needed to handle the IT operations needs of the deployment
    string ProductandServiceDeploymentITOperationsRequirementsTaskSpecification?;
};

# A collection of one or more deliverables that may be further defined in terms of an approach to be followed to create them
#
# Examples: Functional module specification
public type HROperations record {
    # The consolidated aspects of the servicing deployment tasks
    common:Requirement ProductandServiceDeploymentHROperationsRequirements?;
    # File of consolidated deployment planning and deliverable specifications for the task
    common:Workproduct ProductandServiceDeploymentHROperationsRequirementsWorkProducts?;
    # Reference to associated documents
    common:DocumentDirectoryEntry DocumentDirectoryEntryInstanceReference?;
    # Details the tasks and deliverables needed to handle the staffing operations needs of the deployment
    string ProductandServiceDeploymentHROperationsRequirementsTaskSpecification?;
};

public type ProductandServiceDeploymentDevelopmentOk record {|
    *http:Ok;
    # body
    ProductandServiceDeploymentDevelopment body;
|};
