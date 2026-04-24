import financial.bian.attribute.groups.common as common;

import ballerina/http;

# >
# * `IndustryReport` - 
# * `MarketResearchReport` - 
# * `ConsumerInsightsReport` - 
# * `CompetitiveAnalysisReport` - 
# * `TrendAnalysisReport` - 
# * `ProductServiceReport` - 
# * `BrandAnalysisReport` - 
# * `CustomerSatisfactionAndLoyaltyReport` - 
# * `FeasibilityStudies` - 
# * `EconomicAnalysisReport` - 
# * `TechnologyAndInnovationReport` - 
# * `GeographicMarketReport` - 
# * `EnvironmentalAndSustainabilityReport` - 
public type Marketresearchreporttypevalues "IndustryReport"|"MarketResearchReport"|"ConsumerInsightsReport"|"CompetitiveAnalysisReport"|"TrendAnalysisReport"|"ProductServiceReport"|"BrandAnalysisReport"|"CustomerSatisfactionAndLoyaltyReport"|"FeasibilityStudies"|"EconomicAnalysisReport"|"TechnologyAndInnovationReport"|"GeographicMarketReport"|"EnvironmentalAndSustainabilityReport";

# •    Mapping the entire customer journey from awareness to purchase and beyond.•    
# Identifying touchpoints, pain points, and opportunities to improve the customer experience.
public type Insight record {
    # The type of customer insight developed in this evaluation (e.g. retention candidate, cross-sell candidate)
    string InsightEvaluationCustomerInsightType?;
    # Refers to a task for doing the insight analysis
    common:Task InsightEvaluationTask?;
    # The specific details of the analysis (can be a default/standard and scheduled refresh)
    # InsightEvaluationRequestSpecification
    string InsightEvaluationRequestSpecification?;
    # Reference to the behavior model used to develop the insight
    common:CustomerBehaviorModel insightEvaluationCustomerBehaviorModelReference?;
    # Refers to a report used in the insight analysis like Market Research Report
    # InsightEvaluationProductandServiceActivityReport
    common:Report InsightEvaluationProductandServiceActivityReport?;
    # The Record containing the selected event records from the log
    # InsightEvaluationCustomerEventLogReport
    common:CustomerEventLog InsightEvaluationCustomerEventLogReport?;
    # The Record containing the selected event records from the log
    # InsightEvaluationServicingEventLogReport
    ServicingEventLog InsightEvaluationServicingEventLogReport?;
    # Refers to a log used in the insight analysis like Customer Event Log, Servicing Even Log, etc.
    common:Log InsightEvaluationChannelEventLogReport?;
    # The content of a specific market research report or database in any suitable form
    # InsightEvaluationMarketResearchReport
    MarketResearchReport InsightEvaluationMarketResearchReport?;
    # Refers to work documentation, forms and schedules produced and referenced during the insight analysis
    common:Workproduct InsightEvaluationWorkProducts?;
    # The output from executing the assessment
    # InsightEvaluationRequestResult
    string InsightEvaluationRequestResult?;
};

public type CustomerBehaviorInsightAnalysis record {
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
    # AnalysisPeriod
    common:Datetimeperiod AnalysisPeriod?;
    # AnalysisDateTime
    common:Datetime AnalysisDateTime?;
    # AnalysisSpecification
    string AnalysisSpecification?;
    # The schedule for refreshing the analyses for a customer
    common:Schedule AnalysisSchedule?;
};

# >
# * `CustomerViewpoint` - 
# * `CompetitorViewpoint` - 
# * `MarketDynamicsViewpoint` - 
# * `ProductServiceViewpoint` - 
# * `GeographicViewpoint` - 
# * `EconomicAndPoliticalViewpoint` - 
# * `TechnologicalViewpoint` - 
# * `EnvironmentalAndSustainabilityViewpoint` - 
# * `ChannelAndDistributionViewpoint` - 
# * `FinancialViewpoint` - 
public type Marketresearchviewpointtypevalues "CustomerViewpoint"|"CompetitorViewpoint"|"MarketDynamicsViewpoint"|"ProductServiceViewpoint"|"GeographicViewpoint"|"EconomicAndPoliticalViewpoint"|"TechnologicalViewpoint"|"EnvironmentalAndSustainabilityViewpoint"|"ChannelAndDistributionViewpoint"|"FinancialViewpoint";

# The content of a specific market research report or database in any suitable form
public type MarketResearchReport record {
    # MarketResearchReportContent
    string MarketResearchReportContent?;
    # >
    # * `CustomerViewpoint` - 
    # * `CompetitorViewpoint` - 
    # * `MarketDynamicsViewpoint` - 
    # * `ProductServiceViewpoint` - 
    # * `GeographicViewpoint` - 
    # * `EconomicAndPoliticalViewpoint` - 
    # * `TechnologicalViewpoint` - 
    # * `EnvironmentalAndSustainabilityViewpoint` - 
    # * `ChannelAndDistributionViewpoint` - 
    # * `FinancialViewpoint` - 
    Marketresearchviewpointtypevalues MarketResearchViewpointType?;
    # MarketResearchReportPeriod
    common:Datetimeperiod MarketResearchReportPeriod?;
    # Version of the market research report
    # MarketResearchReportVersion
    string MarketResearchReportVersion?;
    # >
    # * `IndustryReport` - 
    # * `MarketResearchReport` - 
    # * `ConsumerInsightsReport` - 
    # * `CompetitiveAnalysisReport` - 
    # * `TrendAnalysisReport` - 
    # * `ProductServiceReport` - 
    # * `BrandAnalysisReport` - 
    # * `CustomerSatisfactionAndLoyaltyReport` - 
    # * `FeasibilityStudies` - 
    # * `EconomicAnalysisReport` - 
    # * `TechnologyAndInnovationReport` - 
    # * `GeographicMarketReport` - 
    # * `EnvironmentalAndSustainabilityReport` - 
    Marketresearchreporttypevalues MarketResearchReportType?;
    # >
    # * `FinancialReport` - 
    # * `BusinessReport` - 
    # * `ManagementReport` - 
    # * `Statement` - 
    # * `MaintenanceReport` - 
    # * `RegulatoryReport` - 
    # * `TaxReport` - 
    # * `AnalysisReport` - 
    common:Reporttypevalues ReportType?;
    # ReportValidityPeriod
    common:Datetimeperiod ReportValidityPeriod?;
    # ReportVersion
    string ReportVersion?;
    # ReportDateTime
    common:Datetime ReportDateTime?;
    # ReportFormat
    string ReportFormat?;
};

# The Record containing the selected event records from the log
public type ServicingEventLog record {
    # LogType
    string LogType?;
    # LogPeriod
    common:Datetimeperiod LogPeriod?;
    # LogDate
    common:Datetime LogDate?;
    # LogIdentification
    common:Identifier LogIdentification?;
};

# Analyze the performance or behavior of some on-going activity or entity  within Customer Behavior Insights. 
# Examples: Provide behavioral insights and analysis into customer behavior and analyze financial market activity in order to identify opportunities, define pricing and evaluate risks.
#
# Analyze the performance or behavior of some on-going activity or entity. Examples: Provide behavioral insights and analysis into customer behavior and analyze financial market activity in order to identify opportunities, define pricing and evaluate risks.
public type CustomerBehaviorAnalysis record {
    # Reference to the associated customer (can currently be a person or a company)
    common:CustomerRelationship CustomerReference?;
    # The schedule for refreshing the analyses for a customer
    # CustomerBehaviorInsightsAnalysisSchedule
    common:Schedule CustomerBehaviorInsightsAnalysisSchedule?;
    # A record of the collection of behavioral insight analyses maintained for the customer
    # CustomerBehaviorInsightsAnalysisRecord
    string CustomerBehaviorInsightsAnalysisRecord?;
    # >
    # * `CustomerBehavioralInsight` - Understanding how customers interact with products, services, and brands.
    # * `CustomerDemographicInsight` - Analyzing customer characteristics such as age, gender, income, education, and location.
    # * `CustomerPsychographicInsight` - Exploring customers' lifestyles, values, interests, and attitudes.
    # * `CustomerTransactionalInsight` - Examining purchase history, order frequency, average transaction value, and payment methods
    # * `CustomerFeedbackAndSentimentInsight` - Gathering and analyzing customer feedback through surveys, reviews, social media, and customer support interactions
    # * `CustomerJourneyInsight` - Mapping the entire customer journey from awareness to purchase and beyond
    # * `CustomerRetentionAndChurnInsight` - Understanding the factors that influence customer retention and attrition
    # * `CustomerFinancialInsight` - Customer financial insights refer to the analysis and understanding of the financial aspects related to customer interactions and behaviors. 
    common:Customerinsighttypevalues CustomerInsightType?;
    # Refers to the insight
    # CustomerInsight
    common:CustomerInsight CustomerInsight?;
    # CustomerInsightCalculationDate
    common:Datetime CustomerInsightCalculationDate?;
    # CustomerBehaviorInsightsAnalysis
    CustomerBehaviorInsightAnalysis CustomerBehaviorInsightsAnalysis?;
    # Refers to a model used in the insight analysis like Customer Behavior Model
    common:Model CustomerBehaviorInsightsAnalysisModelReference?;
    # Refers to a report used in the insight analysis like Market Research Report
    # CustomerBehaviorInsightsAnalysisReportReference
    common:Report CustomerBehaviorInsightsAnalysisReportReference?;
    # Refers to a log used in the insight analysis like Customer Event Log, Servicing Even Log, etc.
    # CustomerBehaviorInsightsAnalysisLogReference
    common:Log CustomerBehaviorInsightsAnalysisLogReference?;
    # Refers to a document used in the insight analysis
    # CustomerBehaviorInsightsAnalysisDocumentReference
    common:Document CustomerBehaviorInsightsAnalysisDocumentReference?;
};

public type CustomerBehaviorAnalysisOk record {|
    *http:Ok;
    # body
    CustomerBehaviorAnalysis body;
|};
