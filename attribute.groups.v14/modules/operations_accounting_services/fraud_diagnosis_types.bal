import financial.bian.attribute.groups.common as common;

import ballerina/http;

# A collection of models/calculations/algoritms that can be applied to a subject or activity
#
# Examples: Average balance calculation, Propensity to buy
public type EconomicModel record {
    # The result of the economic model, including the recommended response
    EconomicModelAnalysis EconomicModelAnalysisResult?;
    # Work documentation, forms and schedules produced and referenced during the analysis (for future reference)
    common:Workproduct EconomicModelWorkProduct?;
};

# A collection of models/calculations/algoritms that can be applied to a subject or activity
#
# Examples: Average balance calculation, Propensity to buy
public type CustomerBehavior record {
    # The result of the economic model, including the recommended response
    common:Analysis CustomerBehaviorAnalysisResult?;
    # Work documentation, forms and schedules produced and referenced during the analysis (for future reference)
    common:Workproduct CustomerBehaviorAnalysisWorkProduct?;
};

public type FraudDiagnosisAnalysisOk record {|
    *http:Ok;
    FraudDiagnosisAnalysis body;
|};

# A collection of models/calculations/algoritms that can be applied to a subject or activity
#
# Examples: Average balance calculation, Propensity to buy
public type AnalystReview record {
    # Reference to an entity that assigns and manages the identification.
    # tReference to the organization or agency that issued the identifier (e.g., DMV, Passport Office).
    common:Involvedparty CustomerReference?;
    # Reference to an outbound contact established with the customer
    string OutboundContactReference?;
    # The result of the economic model, including the recommended response
    common:Analysis AnalystReviewAnalysisResult?;
    # Work documentation, forms and schedules produced and referenced during the analysis (for future reference)
    common:Workproduct AnalystReviewWorkProduct?;
    # The recommended action resulting from the analysts review
    common:Action AnalystReviewRecommendedAction?;
};

# The result of the economic model, including the recommended response
public type EconomicModelAnalysis record {
    # >
    # * `PerformanceAnalysis` - 
    # * `ActivityAnalysis` - 
    # * `RevenueAnalysis` - 
    # * `CostAnalysis` - 
    # * `PredictiveAnalysis` - 
    # * `BehavioralAnalysis` - 
    # * `ProfitabilityAnalysis` - 
    # * `CompetitiveAnalysis` - 
    # * `CohortAnalysis` - 
    # * `SegmentAnalysis` - 
    # * `SWOTAnalysis` - 
    # * `Benchmarking` - 
    # * `PositioningAnalysis` - 
    # * `ScenarioAnalysis` - 
    # * `IntelligenceGathering` - 
    # * `Profiling` - 
    common:Analysistypevalues AnalysisType?;
    # AnalysisResult
    string AnalysisResult?;
    # The period covered by the analysis (from to date time)
    common:Datetimeperiod AnalysisPeriod?;
    # Date and time at which the range starts. (ISO20022)
    common:Datetime AnalysisDateTime?;
    # AnalysisSpecification
    string AnalysisSpecification?;
    # The schedule and timing of the analysis performed using the algorithm
    common:Schedule AnalysisSchedule?;
};

# Analyze the performance or behavior of some on-going activity or entity  within Fraud Diagnosis. 
# Examples: Provide behavioral insights and analysis into customer behavior and analyze financial market activity in order to identify opportunities, define pricing and evaluate risks.
#
# Analyze the performance or behavior of some on-going activity or entity. Examples: Provide behavioral insights and analysis into customer behavior and analyze financial market activity in order to identify opportunities, define pricing and evaluate risks.
public type FraudDiagnosisAnalysis record {
    # Reference to the product fulfillment production session for which fraud diagnosis is performed
    common:Session ProductProductionSessionReference?;
    # Details the types of fraud diagnosis algorithms and tests are applied
    common:Profile FraudDiagnosisEvaluationProfile?;
    # The production transaction details that are submitted for fraud diagnosis
    string FraudDiagnosisTransactionConsolidationRecord?;
    # Details of detected out of pattern production activity that could be fraud highlighted by Fraud Evaluation
    string FraudEvaluationProductionAnomalyRecord?;
    # Reference to the one or more production transactions isolated by the fraud evaluation tests identified by Fraud Evaluation
    common:ProductionTransaction FraudEvaluationProductionAnomalyProductionTransactionReference?;
    # Details the conclusion of the analysis and determination (e.g. diagnosis of likely fraud)
    string FraudDiagnosisDetermination?;
    # Details the recommended action in response to the analysis (e.g. accept or reject the transaction, flag account for fraud)
    string FraudDiagnosisRecommendation?;
};
