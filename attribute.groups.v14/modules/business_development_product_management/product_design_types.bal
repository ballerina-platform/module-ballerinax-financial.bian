import financial.bian.attribute.groups.common as common;

import ballerina/http;

public type ProductorServiceSpecificationOk record {|
    *http:Ok;
    # body
    ProductorServiceSpecification body;
|};

# Create and maintain a design for a procedure, product/service model or other such entity  within Product Design. 
# Example: Create and maintain product designs and analytical models.
public type ProductorServiceSpecification record {
    # The type or category of product or service (e.g. specialized consumer loan, relocation services)
    string ProductandServiceType?;
    # A description of the product or service including its main features and target customer
    string ProductandServiceDescription?;
    # Maintains the current production deployment configuration of the product or service
    string ProductandServiceSpecificationDeployment?;
    # Reference to an entity that assigns and manages the identification.
    # tReference to the organization or agency that issued the identifier (e.g., DMV, Passport Office).
    common:Involvedparty EmployeeorBusinessUnitReference?;
    # Details of the product or service specification deployment for reference
    common:Arrangement ProductandServiceSpecificationDeploymentConfiguration?;
    # Reference to a type of functional requirements specification activity
    common:Task ProductandServiceSpecificationDeploymentTaskReference?;
    # Reference to a type of functional requirements specification activity
    common:Task ProductandServiceSpecificationDeploymentTaskRecord?;
    # A characteristic of service which refers to the lifecycle of service (e.g., initiated, active, de-active, etc.) 
    common:Status ProductandServiceSpecificationStatus?;
    # Tracking deployment and product or service usage frequency
    string ProductandServiceSpecificationUsage?;
    # Track reporting of the performance/profitability (of specific features ) of the product or service specification
    string ProductandServiceSpecificationImpact?;
    # Release version of the available specification plus version history as appropriate
    string ProductandServiceSpecificationVersion?;
    # The deployable product or service specification in any appropriate form (including historical versions as appropriate). Note supporting systems and production/operations facilities are handled in parallel as part of a broader deployment
    string ProductandServiceSpecification?;
};
