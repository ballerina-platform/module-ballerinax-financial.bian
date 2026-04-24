import financial.bian.attribute.groups.common as common;

import ballerina/http;

public type FraudModelSpecificationOk record {|
    *http:Ok;
    # body
    FraudModelSpecification body;
|};

# The deployable model in any appropriate form (including historical versions as appropriate)
public type FraudModel record {
    # The type or category of model  
    string ModelType?;
    # A description of the model that clarifies the intended analysis/insights provided
    string ModelPurpose?;
    # Model version
    string ModelVersion?;
    # Model name
    common:Name ModelName?;
    # Model date and time
    common:Datetime ModelDateAndTime?;
    # Model status
    common:Status ModelStatus?;
};

# Create and maintain a design for a procedure, product/service model or other such entity  within Fraud Model. 
# Example: Create and maintain product designs and analytical models.
public type FraudModelSpecification record {
    # The type or category of behavior model (e.g. Decision tree, Bayesian Linear Regression, Logistic Regression, Neural Network))
    string FraudModelType?;
    # A description of the model that clarifies the intended analysis/insights provided
    string FraudModelPurpose?;
    # Maintains the current deployment configuration of the model
    string FraudModelDeployment?;
    # Reference to the business units where the model is deployed and in use
    common:BusinessUnit EmployeeBusinessUnitReference?;
    # Details of the deployment for reference
    common:Arrangement FraudModelDeploymentConfiguration?;
    # Reference to a type of testing activity
    common:Task FraudModelDeploymentTaskReference?;
    # Reference to a type of testing activity
    common:Task FraudModelDeploymentTaskRecord?;
    # Status of the model deployment
    common:Status FraudModelStatus?;
    # Tracking deployment and usage frequency
    common:ModelUsage FraudModelUsage?;
    # Track reporting of the impact/accuracy of the model's insights
    string FraudModelImpact?;
    # Release version of available model plus version history as appropriate
    string FraudModelVersion?;
    # The deployable model in any appropriate form (including historical versions as appropriate)
    FraudModel FraudModel?;
};
