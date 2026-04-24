import financial.bian.attribute.groups.common as common;

import ballerina/http;

# A collection of models/calculations/algoritms that can be applied to a subject or activity
#
# Examples: Average balance calculation, Propensity to buy
public type Bot record {
    # Defines the intended analytical insights and required input data and outputs
    string ChannelActivityBotDetectionAnalysisAlgorithmSpecification?;
    # Reference to output from the applied algorithm
    common:Analysis ChannelActivityBotDetectionAnalysisReference?;
    # Reference to output from the applied algorithm
    common:Analysis ChannelActivityBotDetectionAnalysisResult?;
};

# A collection of models/calculations/algoritms that can be applied to a subject or activity
#
# Examples: Average balance calculation, Propensity to buy
public type CustomerBehavior record {
    # Defines the intended analytical insights and required input data and outputs
    string ChannelActivityCustomerBehaviorAnalysisAlgorithmSpecification?;
    # Reference to output from the applied algorithm
    common:Analysis ChannelActivityCustomerBehaviorAnalysisReference?;
    # Reference to output from the applied algorithm
    common:Analysis ChannelActivityCustomerBehaviorAnalysisResult?;
};

# A collection of models/calculations/algoritms that can be applied to a subject or activity
#
# Examples: Average balance calculation, Propensity to buy
public type DeviceError record {
    # Defines the intended analytical insights and required input data and outputs
    string ChannelActivityDeviceErrorDetectionAnalysisAlgorithmSpecification?;
    # Reference to output from the applied algorithm
    common:Analysis ChannelActivityDeviceErrorDetectionAnalysisReference?;
    # Reference to output from the applied algorithm
    common:Analysis ChannelActivityDeviceErrorDetectionAnalysisResult?;
};

public type ChannelActivityAnalysisOk record {|
    *http:Ok;
    # body
    ChannelActivityAnalysis body;
|};

# A collection of models/calculations/algoritms that can be applied to a subject or activity
#
# Examples: Average balance calculation, Propensity to buy
public type MerchantBehavior record {
    # Defines the intended analytical insights and required input data and outputs
    string ChannelActivityMerchantBehaviorAnalysisAlgorithmSpecification?;
    # Reference to output from the applied algorithm
    common:Analysis ChannelActivityMerchantBehaviorAnalysisReference?;
    # Reference to output from the applied algorithm
    common:Analysis ChannelActivityMerchantBehaviorAnalysisResult?;
};

# A collection of models/calculations/algoritms that can be applied to a subject or activity
#
# Examples: Average balance calculation, Propensity to buy
public type MerchantFraud record {
    # Defines the intended analytical insights and required input data and outputs
    string ChannelActivityMerchantFraudAnalysisAlgorithmSpecification?;
    # Reference to output from the applied algorithm
    common:Analysis ChannelActivityMerchantFraudAnalysisReference?;
    # Reference to output from the applied algorithm
    common:Analysis ChannelActivityMerchantFraudAnalysisResult?;
};

# The result of the analysis
public type ChannelActivityAnalysis record {
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
    # The result of the analysis performed
    string AnalysisResult?;
    # The period covered by the analysis (from to date time)
    common:Datetimeperiod AnalysisPeriod?;
    # Date and time at which the range starts. (ISO20022)
    common:Datetime AnalysisDateTime?;
    # The specification of the analysis to be performed
    string AnalysisSpecification?;
    # The schedule and timing of the analysis performed using the algorithm
    common:Schedule AnalysisSchedule?;
};

# A collection of models/calculations/algoritms that can be applied to a subject or activity
#
# Examples: Average balance calculation, Propensity to buy
public type CustomerFraud record {
    # Defines the intended analytical insights and required input data and outputs
    string ChannelActivityCustomerFraudAnalysisAlgorithmSpecification?;
    # Reference to output from the applied algorithm
    common:Analysis ChannelActivityCustomerFraudAnalysisReference?;
    # Reference to output from the applied algorithm
    common:Analysis ChannelActivityCustomerFraudAnalysisResult?;
};
