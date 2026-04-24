import financial.bian.attribute.groups.common as common;

import ballerina/http;

public type RootCauseAlgorithmOk record {|
    *http:Ok;
    # body
    RootCauseAlgorithm body;
|};

public type ServicingRootCauseAnalysisOk record {|
    *http:Ok;
    # body
    ServicingRootCauseAnalysis body;
|};

# A collection of models/calculations/algoritms that can be applied to a subject or activity
#
# Examples: Average balance calculation, Propensity to buy
public type RootCauseAlgorithm record {
    # Defines the algorithm used and its intended analytical insights
    string ServicingActivityRootCauseAlgorithmSpecification?;
    # The type of work task (e.g. consolidate servicing activity history, apply pattern detection, refine/qualify detected servicing pattern definition)
    string ServicingActivityRootCauseAnalysisWorkTaskType?;
    # The make-up/schedule of the work task performed
    common:Task ServicingActivityRootCauseAnalysisWorkTask?;
    # File of consolidated notes, evaluations and findings for the work task
    common:Workproduct ServicingActivityRootCauseAnalysisWorkTaskWorkProducts?;
    # The make-up/schedule of the work task performed
    common:Task ServicingActivityRootCauseAnalysisWorkTaskResult?;
    # The date-time the specific work task is performed
    DateTime ServicingActivityRootCauseAnalysisWorkTaskDateandTime?;
};

# The date-time the specific work task is performed
public type DateTime record {
    # Expression of the point in time
    #
    # is expressed according to "TimeIndicationType"
    # e.g. period, day, more detailed indication
    string TimeIndication?;
    # The type used to qualify the time indication
    string TimeIndicationType?;
};

# Analyze the performance or behavior of some on-going activity or entity  within Servicing Activity Analysis. 
# Examples: Provide behavioral insights and analysis into customer behavior and analyze financial market activity in order to identify opportunities, define pricing and evaluate risks.
#
# Analyze the performance or behavior of some on-going activity or entity. Examples: Provide behavioral insights and analysis into customer behavior and analyze financial market activity in order to identify opportunities, define pricing and evaluate risks.
public type ServicingRootCauseAnalysis record {
    # The type of servicing activity for which the analysis is performed (e.g. self service, contact center assisted,  ATM access)
    string ServicingActivityType?;
    # The period covered by the analysis (from to date time)
    common:Datetimeperiod ServicingActivityAnalysisPeriod?;
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
    common:Analysistypevalues ServicingActivityAnalysisType?;
    # The result of the servicing activity analysis - typically the consolidated view from applying multiple underlying root cause algorithms to highlight patterns that indicate potential root cause issues
    common:Analysis ServicingActivityAnalysisResult?;
    # An analysis of the root causes for the detected service anomalies
    string ServicingActivityAnalysisDetermination?;
    # Proposed changes to procedures/organization etc that can mitigate the detected servicing issues
    string ServicingActivityAnalysisRecommendation?;
    # The raw data used in the analysis (retrieved from Servicing Activity History)
    common:Report ServicingActivityHistoryReport?;
};
