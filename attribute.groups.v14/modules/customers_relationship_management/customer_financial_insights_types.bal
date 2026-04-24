import financial.bian.attribute.groups.common as common;

public type CustomerFinancialInsightAnalysis record {
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
    # The date on which the state of something is calculated
    # AnalysisDateTime
    common:Datetime AnalysisDateTime?;
    # AnalysisSpecification
    string AnalysisSpecification?;
    # The schedule and timing of the analysis performed using the algorithm
    common:Schedule AnalysisSchedule?;
};

# Maintain information about an analysis on the customer's financial position
public type CustomerFinancialPositionAnalysis record {
    # Reference to the associated customer (can currently be a person or a company)
    common:CustomerRelationship CustomerReference?;
    # A record of the collection of fionancial insight analyses maintained for the customer
    # CustomerFinancialInsightsAnalysisRecord
    string CustomerFinancialInsightsAnalysisRecord?;
    # The schedule and timing of the analysis performed using the algorithm
    common:Schedule CustomerFinancialInsightAnalysisSchedule?;
    # The date on which the state of something is calculated
    # CustomerInsightCalculationDate
    common:Datetime CustomerInsightCalculationDate?;
    # Refers to the insight
    # CustomerInsight
    common:CustomerInsight CustomerInsight?;
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
    # CustomerFinancialInsightsAnalysis
    CustomerFinancialInsightAnalysis CustomerFinancialInsightsAnalysis?;
    # Refers to a model used in the insight analysis like Customer Behavior Model
    common:Model CustomerFinancialInsightsAnalysisModelReference?;
    # Refers to a report used in the insight analysis like Market Research Report
    # CustomerFinancialInsightsAnalysisReportReference
    common:Report CustomerFinancialInsightsAnalysisReportReference?;
    # Refers to a document used in the insight analysis
    # CustomerFinancialInsightsAnalysisDocumentReference
    common:Document CustomerFinancialInsightsAnalysisDocumentReference?;
    # Refers to a log used in the insight analysis like Customer Event Log, Servicing Even Log, etc.
    # CustomerFinancialInsightsAnalysisLogReference
    common:Log CustomerFinancialInsightsAnalysisLogReference?;
    # Refers to a position used in the insight analysis like Customer Financial Position
    # CustomerFinancialInsightsAnalysisPositionReference
    common:Position CustomerFinancialInsightsAnalysisPositionReference?;
};

