import financial.bian.attribute.groups.common as common;

import ballerina/http;

# To test or assess an entity, possibly against some formal qualification or certification requirement within Fraud Evaluation. 
public type FraudEvaluationAssessment record {
    # Reference to the product fulfillment production session for which on-line fraud evaluation is performed
    common:Session ProductProductionSessionReference?;
    # Details the types of fraud evaluation tests applied
    common:Profile FraudEvaluationTestProfile?;
    # The type of technique use to combine results of the different tests used to detect out of pattern behavior
    string FraudEvaluationEnsembleTechniqueType?;
    # The definition of how the constituent rule set/decision tree and model test are combined to compete the assessment
    string FraudEvaluationEnsembleTechniqueDefinition?;
    # The production transaction details that are submitted for fraud evaluation - note this will typically be a real-time dataset
    string FraudEvaluationTransactionConsolidationRecord?;
    # Details of detected out of pattern production activity that could be fraud
    string FraudEvaluationProductionAnomalyRecord?;
    # Reference to the one or more production transactions isolated by the fraud evaluation tests
    common:ProductionTransaction FraudEvaluationProductionAnomalyProductionTransactionReference?;
};

public type FraudEvaluationAssessmentOk record {|
    *http:Ok;
    FraudEvaluationAssessment body;
|};

# All kind of verifications 
#
# Examples: Password verification
public type RuleSetsandDecisionTrees record {
    # The production transaction assessment test results, including reference to any potential fraud transactions - note this can be a real-time dataset
    common:Test RuleSetsAndDecisionTreesTestResult?;
    # Work documentation, forms and schedules produced and referenced during the assessment task
    common:Workproduct RuleSetsAndDecisionTreesTestWorkProduct?;
};

# All kind of verifications 
#
# Examples: Password verification
public type Models record {
    # The production transaction assessment test results, including reference to any potential fraud transactions - note this can be a real-time dataset
    common:Test ModelsTestResult?;
    # Work documentation, forms and schedules produced and referenced during the assessment task
    common:Workproduct ModelsTestWorkProduct?;
};
