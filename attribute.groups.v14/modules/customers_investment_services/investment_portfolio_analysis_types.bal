import financial.bian.attribute.groups.common as common;

// public type ManagedInvestmentPortfolioAnalysisOk record {|
//     *http:Ok;
//     # body
//     ManagedInvestmentPortfolioAnalysis body;
// |};

# A collection of models/calculations/algoritms that can be applied to a subject or activity
#
# Examples: Average balance calculation, Propensity to buy
public type PerformanceAnalysis record {
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
    common:Analysistypevalues InvestmentPortfolioPerformanceAnalysisType?;
    # Record of a task to perform a selected type of performance analysis on an investment portfolio
    # InvestmentPortfolioPerformanceAnalysisTask
    common:Task InvestmentPortfolioPerformanceAnalysisTask?;
    # The specific details of the performance analysis (can be a default/standard analysis or a specialist/ad-hoc request)
    # InvestmentPerformanceRequestSpecification
    string InvestmentPerformanceRequestSpecification?;
    # Reference to the performance analysis model used
    common:Model InvestmentPerformanceModelReference?;
    # The data file, report of investment transaction details used in the analysis
    # InvestmentPerformanceProductandServiceActivityReport
    common:Report InvestmentPerformanceProductandServiceActivityReport?;
    # The data file, report of investment transaction details used in the analysis
    # InvestmentPerformanceFinancialMarketResearchReport
    common:Report InvestmentPerformanceFinancialMarketResearchReport?;
    # Work documentation, forms and schedules produced and referenced during the analysis
    # InvestmentPerformanceWorkProducts
    common:Workproduct InvestmentPerformanceWorkProducts?;
    # The output from executing the selected performance analysis
    # InvestmentPerformanceRequestResult
    common:Assessment InvestmentPerformanceRequestResult?;
};


# >
# * `InvestmentPortfolioValuation` - The analytical process of determining the current (or projected) worth of an investment portfolio (as financial instrument/asset).
#
# Comment: 
# - Valuation is a quantitative process of determining the fair value of an asset or a firm.https://www.investopedia.com/terms/v/valuation.asp
#
# - Portfolio valuation is challenging: It requires an in-depth understanding of markets, the asset in question, the company and its competitors, and financial and nonfinancial information. (Deloitte)
# * `InvestmentPortfolioSensitivityAnalysis` - The analytical process of determining the Sensitivity of an investment portfolio (as financial instrument/asset).
#
# Sensitivity refers to the impact on a security given a change in some relevant factor. Sensitivity analysis determines how different values of an independent variable affect a particular dependent variable under a given set of assumptions.
# https://www.investopedia.com/terms/s/sensitivityanalysis.asp
# * `InvestmentPortfolioPerformanceAnalysis` - The analytical process of determining the performace of an investment portfolio. 
public type Investmentportfolioanalysistypevalues "InvestmentPortfolioValuation"|"InvestmentPortfolioSensitivityAnalysis"|"InvestmentPortfolioPerformanceAnalysis";

# A consolidated report containing the results of performance analyses applied to the investment portfolio
public type InvestmentPortfolioAnalysisReport record {
    # AnalysisReportDatetime
    common:Datetime AnalysisReportDatetime?;
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
    # Period of time during which the status is valid.
    # ReportValidityPeriod
    common:Datetimeperiod ReportValidityPeriod?;
    # ReportVersion
    string ReportVersion?;
    # ReportDateTime
    common:Datetime ReportDateTime?;
    # ReportFormat
    string ReportFormat?;
};

# The consolidated report of the performance evaluation and comparisons from the analysis
public type InvestmentPortfolioAnalysis record {
    # >
    # * `InvestmentPortfolioValuation` - The analytical process of determining the current (or projected) worth of an investment portfolio (as financial instrument/asset).
    #
    # Comment: 
    # - Valuation is a quantitative process of determining the fair value of an asset or a firm.https://www.investopedia.com/terms/v/valuation.asp
    #
    # - Portfolio valuation is challenging: It requires an in-depth understanding of markets, the asset in question, the company and its competitors, and financial and nonfinancial information. (Deloitte)
    # * `InvestmentPortfolioSensitivityAnalysis` - The analytical process of determining the Sensitivity of an investment portfolio (as financial instrument/asset).
    #
    # Sensitivity refers to the impact on a security given a change in some relevant factor. Sensitivity analysis determines how different values of an independent variable affect a particular dependent variable under a given set of assumptions.
    # https://www.investopedia.com/terms/s/sensitivityanalysis.asp
    # * `InvestmentPortfolioPerformanceAnalysis` - The analytical process of determining the performace of an investment portfolio. 
    Investmentportfolioanalysistypevalues InvestmentPortfolioAnalysisType?;
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
    # Period of time during which the status is valid.
    common:Datetimeperiod AnalysisPeriod?;
    # AnalysisDateTime
    common:Datetime AnalysisDateTime?;
    # AnalysisSpecification
    string AnalysisSpecification?;
    # AnalysisSchedule
    common:Schedule AnalysisSchedule?;
};

# Analyze the performance or behavior of some on-going activity or entity  within Investment Portfolio Analysis. 
# Examples: Provide behavioral insights and analysis into customer behavior and analyze financial market activity in order to identify opportunities, define pricing and evaluate risks.
#
# Analyze the performance or behavior of some on-going activity or entity. Examples: Provide behavioral insights and analysis into customer behavior and analyze financial market activity in order to identify opportunities, define pricing and evaluate risks.
public type ManagedInvestmentPortfolioAnalysis record {
    # Reference to the investment portfolio product instance
    common:ProductAgreement ProductInstanceReference?;
    # Reference to a Party who plays a  specific role in the context of assigning a status.
    # CustomerReference
    common:Involvedparty CustomerReference?;
    # Reference to a Party who plays a  specific role in the context of assigning a status.
    # EmployeeorBusinessUnitReference
    common:Involvedparty EmployeeorBusinessUnitReference?;
    # InvestmentPortfolioInstanceReference
    common:Identifier InvestmentPortfolioInstanceReference?;
    # InvestmentPortfolioAnalysisSchedule
    common:Schedule InvestmentPortfolioAnalysisSchedule?;
    # InvestmentAccountArrangementInstanceReference
    common:Identifier InvestmentAccountArrangementInstanceReference?;
    # InvestmentPortfolioAnalysisReport
    InvestmentPortfolioAnalysisReport InvestmentPortfolioAnalysisReport?;
    # >
    # * `InvestmentPortfolioValuation` - The analytical process of determining the current (or projected) worth of an investment portfolio (as financial instrument/asset).
    #
    # Comment: 
    # - Valuation is a quantitative process of determining the fair value of an asset or a firm.https://www.investopedia.com/terms/v/valuation.asp
    #
    # - Portfolio valuation is challenging: It requires an in-depth understanding of markets, the asset in question, the company and its competitors, and financial and nonfinancial information. (Deloitte)
    # * `InvestmentPortfolioSensitivityAnalysis` - The analytical process of determining the Sensitivity of an investment portfolio (as financial instrument/asset).
    #
    # Sensitivity refers to the impact on a security given a change in some relevant factor. Sensitivity analysis determines how different values of an independent variable affect a particular dependent variable under a given set of assumptions.
    # https://www.investopedia.com/terms/s/sensitivityanalysis.asp
    # * `InvestmentPortfolioPerformanceAnalysis` - The analytical process of determining the performace of an investment portfolio. 
    Investmentportfolioanalysistypevalues InvestmentPortfolioAnalysisType?;
    # The consolidated report of the performance evaluation and comparisons from the analysis
    InvestmentPortfolioAnalysis InvestmentPortfolioAnalysisResult?;
    # InvestmentPortfolioAnalysisReportingDate
    common:Datetime InvestmentPortfolioAnalysisReportingDate?;
    # Reference to associated performance analysis reporting documents
    # DocumentDirectoryEntryInstanceReference
    common:DocumentDirectoryEntry DocumentDirectoryEntryInstanceReference?;
};
