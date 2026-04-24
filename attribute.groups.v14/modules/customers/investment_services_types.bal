import ballerina/http;
import financial.bian.attribute.groups.common as common;

public type ConsumerSecuritiesOrderTransactionOk record {|
    *http:Ok;
    # body
    ConsumerSecuritiesOrderTransaction body;
|};

# The sub-tasks involved in the execution of the financial transaction
public type Confirmation record {
    # The outcome of the funds available check
    FundingCheck ConsumerSecuritiesOrderTransactionFundingCheckResult?;
};

# The sub-tasks involved in the execution of the financial transaction
public type OrderInitiation record {
    # An identifier that allows to uniquely refer to an instance of a Document.
    common:Identifier ConsumerSecuritiesOrderTransactionInstanceReference?;
    # ConsumerSecuritiesOrderTransactionInstanceStatus
    common:Status ConsumerSecuritiesOrderTransactionInstanceStatus?;
    # ConsumerSecuritiesOrderInitiationTaskResult
    common:Task ConsumerSecuritiesOrderInitiationTaskResult?;
};

# The outcome of the funds available check
public type FundingCheck record {
    # >
    # * `Valuation` - 
    # * `Matching` - 
    # * `Authorization` - An evaluation whether a party or system is allowed to do something.
    #
    # The consent given by a participant (or a third party acting on behalf of that participant) in order to transfer funds or securities. (ECB)
    #
    # Authorization is a mechanism by which a computer system determines whether to allow or deny specific action to a user. Authorization is often controlled by rather complex rules and algorithms, usually specified as part of an access control model. Authorization often follows (and required) authentication, however, authentication and authorization are two separate mechanisms. In rare cases, "authorization" is understood as a process of allowing access, granting permissions or giving approval. Such as "authorization" of a request to join a group. (ISO/IEC 24760-1:2019 - IT Security and Privacy)
    # * `Authentication` - An evaluation whether a party or system is what it claims to be.
    #
    # A security mechanism for verifying: 1) the identity of an individual or other entity (including verification by means of a computer or computer application); and 2) the level of authority of that person or entity (i.e. the ability of that person or entity to perform specific tasks or activities). (ECB)
    #
    # Authentication is a mechanism by which a computer system checks that the user is really the one she or he claims to be. Authentication can be implemented by a broad variety of mechanisms broadly divided into three categories: something you know, something you have, something you are. Traditionally, authentication is done by the means of by username and password. Authentication is often followed by authorization, however, authentication and authorization are two separate mechanisms. (ISO/IEC 24760-1:2019 - IT Security and Privacy)
    # * `QualityAssurance` - 
    # * `Audit` - 
    # * `ComplianceCheck` - 
    # * `FundingCheck` - 
    # * `SuitabilityCheck` - 
    # * `PerformanceCheck` - 
    # * `ImpactAssessment` - 
    # * `RiskAssessment` - 
    # * `Rating` - 
    # * `UnderwritingAssessment` - 
    # * `Qualification` - 
    # * `Verification` - A process establishing that a particular information is correct, while the meaning of "information" and "correct" varies from context to context. When dealing with identity information, this usually means formal verification of identity attributes, checking the schema, identifier uniqueness and referential integrity. However, verification may mean deeper verification, such as checking that the information is true and up-to-date.  (ISO/IEC 24760-1:2019 - IT Security and Privacy)
    #
    # * `KYCAssessment` - An assessment conducted by businesses and financial institutions to verify and confirm the identity of their customers or clients. The primary purpose of a KYC check is to prevent illegal activities, such as money laundering, terrorist financing, and fraud, by ensuring that customers are who they claim to be.
    # * `PEPAssessment` - A PEP check, or "Politically Exposed Person" check, is an assessment conducted by used by businesses, financial institutions, and government agencies to identify individuals who hold prominent public positions or have significant political influence. The purpose of a PEP check is to assess and manage the potential risks associated with doing business with these individuals, as they may be more susceptible to corruption, money laundering, or other illicit activities.
    # * `AMLAssessment` - An AML (Anti-Money Laundering) check is an assessment conducted by businesses, financial institutions, and other organizations to prevent and detect money laundering and the financing of criminal activities. The main purpose of an AML check is to ensure that financial transactions and business relationships are not being used to disguise the illegal origins of funds.
    # * `EligibilityCheck` - Determines whether a person or case meets the criteria or preconditions to qualify for a benefit, service, or action.
    # * `ExternalAgencyCheck` - 
    # * `EntitlementCheck` - Determines what benefit, amount, or service the person is actually entitled to receive once eligibility is confirmed.
    common:Assessmenttypevalues AssessmentType?;
    # AssessmentMethod
    string AssessmentMethod?;
    # AssessmentSchedule
    common:Schedule AssessmentSchedule?;
    # AssessmentDescription
    string AssessmentDescription?;
    # AssessmentModel
    common:Model AssessmentModel?;
    # AssessmentDateTime
    common:Datetime AssessmentDateTime?;
    # AssessmentResult
    string AssessmentResult?;
    # Document that provides background or corroborating information regarding an assessment(s).
    common:Document AssessmentSupportingDocument?;
    # Document that provides background or corroborating information regarding an assessment(s).
    # AssessmentRepresentingDocument
    common:Document AssessmentRepresentingDocument?;
    # Change that the assessment reveals is needed.
    # AssessmentRequiredAdjustment
    string AssessmentRequiredAdjustment?;
    # AssessmentRequirement
    common:Requirement AssessmentRequirement?;
    # Date when the assessment expires. (ISO20022)
    # AssessmentExpiryDate
    common:Date AssessmentExpiryDate?;
    # AssessmentStatus
    common:Status AssessmentStatus?;
    # AssessmentIdentification
    common:Identifier AssessmentIdentification?;
};

# Execute a well-bounded financial transaction/task, typically involving largely automated/structured fulfillment processing within Consumer Investments. 
public type ConsumerSecuritiesOrderTransaction record {
    # >
    # * `PaymentInstruction` - 
    # * `DeliveryOrder` - 
    # * `InformationRequest` - 
    # * `ExchangeInstruction` - 
    # * `AllocationInstruction` - 
    # * `MaintenanceInstruction` - 
    common:Instructiontypevalues ConsumerSecuritiesOrderInstructionType?;
    # Reference to a Party who plays a  specific role in the context of assigning a status.
    # CustomerReference
    common:Involvedparty CustomerReference?;
    # Reference to a Party who plays a  specific role in the context of assigning a status.
    # EmployeeorBusinessUnitReference
    common:Involvedparty EmployeeorBusinessUnitReference?;
    # An identifier that allows to uniquely refer to an instance of a Document.
    # InvestmentPortfolioInstanceReference
    common:Identifier InvestmentPortfolioInstanceReference?;
    # Any customer specific processing preferences or requirements
    # ConsumerSecuritiesOrderProcessingInstruction
    common:Instruction ConsumerSecuritiesOrderProcessingInstruction?;
    # The document reference for the order confirmation notice
    # DocumentDirectoryEntryInstanceReference
    common:DocumentDirectoryEntry DocumentDirectoryEntryInstanceReference?;
    # An identifier that allows to uniquely refer to an instance of a Document.
    # CorrespondenceInstanceReference
    common:Identifier CorrespondenceInstanceReference?;
    # The details of the market order transaction captured for the consumer securities trade
    # ConsumerSecuritiesOrderTransaction
    common:Transaction ConsumerSecuritiesOrderTransaction?;
    # An identifier that allows to uniquely refer to an instance of a Document.
    # InvestmentAccountArrangementInstanceReference
    common:Identifier InvestmentAccountArrangementInstanceReference?;
    # An identifier that allows to uniquely refer to an instance of a Document.
    # CurrentAccountArrangementInstanceReference
    common:Identifier CurrentAccountArrangementInstanceReference?;
    # The type of market order underlying the consumer securities order request (e.g. Day Order. Order on Open/Close, Fill or Kill, Limit Order - if allowed for consumer trading)
    # MarketOrderType
    string MarketOrderType?;
    # >
    # * `Equity` - Financial instrument that represents a title of ownership in a company. That is, the shareholder is entitled to a part of the company's profit - usually by payment of a dividend - and to voting rights, if any. Each company issues generally different classes of shares, for example, ordinary or common shares, which have no guaranteed amount of dividend but carry voting rights, or preferred shares, which receive dividends before ordinary shares but have no voting right. (ISO20022)
    # * `Warrant` - Financial instrument that gives the holder the right to purchase shares or bonds at a given price within a specified time. (ISO20022)
    # * `Entitlement` - Financial instrument providing the holder the privilege to subscribe to or to receive specific assets on terms specified. (ISO20022)
    common:Securitytypevalues SecurityType?;
    # The volume of shares to be bought or sold
    # Amount
    common:Amount Amount?;
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
    # Date
    common:Datetime Date?;
};

# The sub-tasks involved in the execution of the financial transaction
public type Quote record {
    # The prevailing bank buy/sell quote for the security
    common:Arrangement SecuritiesPrice?;
};

# An operational service or function supported within the Market Order Quotation Function for doing Market Order Quotation Function
public type InvestmentPortfolioValuation record {
    # The required status/situation and or tasks that need to be completed prior to the invocation of the feature
    common:Condition Preconditions?;
    # The schedule and timing of the function
    # Schedule
    common:Schedule Schedule?;
    # The Market Order Quotation Function specific Business Service
    # BusinessService
    common:BusinessService BusinessService?;
    # Reference to Market Order Quotation Function
    # eTradingWorkbenchOperatingSessionReference
    common:Session eTradingWorkbenchOperatingSessionReference?;
    # Reference to Market Order Quotation Function
    # InvestmentPortfolioValuationFunctionReference
    common:Function InvestmentPortfolioValuationFunctionReference?;
    # The type of Investment Portfolio Valuation Function
    # InvestmentPortfolioValuationFunctionType
    string InvestmentPortfolioValuationFunctionType?;
};

public type MarketOrderInitiationOk record {|
    *http:Ok;
    # body
    MarketOrderInitiation body;
|};

public type ETradingWorkbenchOperatingSessionOk record {|
    *http:Ok;
    # body
    eTradingWorkbenchOperatingSession body;
|};

# A Classification value that distinguishes between the type of services within eTrading Workbench Operating Session
public type Servicetype record {
    # The name of Condition
    common:Name ServiceTypeName?;
    # >
    # * `ITService` - 
    # * `AdministrativeService` - 
    # * `SystemService` - 
    # * `FinancialService` - 
    # * `InformationService` - 
    # * `BusinessService` - 
    common:Servicetypevalues ServiceType?;
};

# Operate equipment and/or a largely automated facility within eTrading Workbench. 
public type eTradingWorkbenchOperatingSession record {
    # The schedule and timing of the function
    common:Schedule eTradingWorkbenchOperatingSessionSchedule?;
    # eTradingWorkbenchOperatingSessionStatus
    common:Status eTradingWorkbenchOperatingSessionStatus?;
    # eTradingWorkbenchOperatingSessionUsageLog
    common:Log eTradingWorkbenchOperatingSessionUsageLog?;
    # Reference to an entity that assigns and manages the identification.
    # tReference to the organization or agency that issued the identifier (e.g., DMV, Passport Office).
    common:Involvedparty eTradingWorkbenchOperatingSessionAssociatedPartyReference?;
    # Reference to an entity that assigns and manages the identification.
    # tReference to the organization or agency that issued the identifier (e.g., DMV, Passport Office).
    common:Involvedparty eTradingWorkbenchOperatingSessionServiceProviderReference?;
    # Specifies the classification of session like Customer Contact Session, Channel Operating Session, Device Operating Session, etc.
    # eTradingWorkbenchOperatingSessionType
    common:Sessiontype eTradingWorkbenchOperatingSessionType?;
    # The schedule and timing of the function
    # eTradingWorkbenchOperatingSessionServiceProviderSchedule
    common:Schedule eTradingWorkbenchOperatingSessionServiceProviderSchedule?;
    # A Classification value that distinguishes between the type of services within eTrading Workbench Operating Session
    # eTradingWorkbenchOperatingSessionServiceType
    Servicetype eTradingWorkbenchOperatingSessionServiceType?;
    # The configuration of eTrading Workbench Operating Session
    SystemConfigurationOption eTradingWorkbenchOperatingSessionServiceConfiguration?;
    # Reference to Market Order Quotation Function
    common:Session eTradingWorkbenchOperatingSessionReference?;
};

public type MarketPriceAnalysisOk record {|
    *http:Ok;
    # body
    MarketPriceAnalysis body;
|};

# The configuration of eTrading Workbench Operating Session
public type SystemConfigurationOption record {
    # Options for configuring the system or the function/feature of system.
    string SystemConfigurationOption?;
};

# An operational service or function supported within the Market Order Quotation Function for doing Market Order Quotation Function
public type MarketOrderInitiation record {
    # The required status/situation and or tasks that need to be completed prior to the invocation of the feature
    common:Condition Preconditions?;
    # The schedule and timing of the function
    # Schedule
    common:Schedule Schedule?;
    # The Market Order Quotation Function specific Business Service
    # BusinessService
    common:BusinessService BusinessService?;
    # Reference to Market Order Quotation Function
    # eTradingWorkbenchOperatingSessionReference
    common:Session eTradingWorkbenchOperatingSessionReference?;
    # Reference to Market Order Quotation Function
    # MarketOrderInitiationFunctionReference
    common:Function MarketOrderInitiationFunctionReference?;
    # The type of Market Order Initiation Function
    # MarketOrderInitiationFunctionType
    string MarketOrderInitiationFunctionType?;
};

public type InvestmentPortfolioValuationOk record {|
    *http:Ok;
    # body
    InvestmentPortfolioValuation body;
|};

public type MarketOrderQuotationOk record {|
    *http:Ok;
    # body
    MarketOrderQuotation body;
|};

# An operational service or function supported within the Market Order Quotation Function for doing Market Order Quotation Function
public type MarketPriceAnalysis record {
    # The required status/situation and or tasks that need to be completed prior to the invocation of the feature
    common:Condition Preconditions?;
    # The schedule and timing of the function
    # Schedule
    common:Schedule Schedule?;
    # The Market Order Quotation Function specific Business Service
    # BusinessService
    common:BusinessService BusinessService?;
    # Reference to Market Order Quotation Function
    # eTradingWorkbenchOperatingSessionReference
    common:Session eTradingWorkbenchOperatingSessionReference?;
    # Reference to Market Order Quotation Function
    # MarketPriceAnalysisFunctionReference
    common:Function MarketPriceAnalysisFunctionReference?;
    # The type of Market Price Analysis Function
    # MarketPriceAnalysisFunctionType
    string MarketPriceAnalysisFunctionType?;
};

# An operational service or function supported within the Market Order Quotation Function for doing Market Order Quotation Function
public type MarketOrderQuotation record {
    # The required status/situation and or tasks that need to be completed prior to the invocation of the feature
    common:Condition Preconditions?;
    # The schedule and timing of the function
    # Schedule
    common:Schedule Schedule?;
    # The Market Order Quotation Function specific Business Service
    # BusinessService
    common:BusinessService BusinessService?;
    # Reference to Market Order Quotation Function
    # eTradingWorkbenchOperatingSessionReference
    common:Session eTradingWorkbenchOperatingSessionReference?;
    # Reference to Market Order Quotation Function
    # MarketOrderQuotationFunctionReference
    common:Function MarketOrderQuotationFunctionReference?;
    # The type of Market Order Quotation Function
    # MarketOrderQuotationFunctionType
    string MarketOrderQuotationFunctionType?;
};

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

# Fulfill any scheduled and ad-hoc obligations under a service arrangement, most typically for a financial product or facility within Investment Portfolio Management. 
public type ManagedInvestmentPortfolioFacility record {
    # Interpretation of the investment portfolio policies as they impact securities selection and investment decisioning
    common:RuleSet InvestmentPortfolioTradingPolicies?;
    # >
    # * `SecurityPolicy` - 
    # * `AdministrativePolicy` - 
    # * `SocialPolicy` - 
    # * `RegulatoryPolicy` - 
    common:Policytypevalues InvestmentPortfolioPolicyType?;
    # A narrative explaining the interpretation of the portfolio policies as they govern trading decisions
    string InvestmentPortfolioPolicyDescription?;
    # Specific trading constraints (e.g. stocks or sectors that are out of bounds and acceptable risk levels)
    string InvestmentPortfolioPolicyLimitsandConstraints?;
    # InvestmentPortfolioInstanceReference
    common:Identifier InvestmentPortfolioInstanceReference?;
    # Maintains the current security holdings
    # InvestmentPortfolioHoldings
    AssetHolding InvestmentPortfolioHoldings?;
    # >
    # * `Equity` - Financial instrument that represents a title of ownership in a company. That is, the shareholder is entitled to a part of the company's profit - usually by payment of a dividend - and to voting rights, if any. Each company issues generally different classes of shares, for example, ordinary or common shares, which have no guaranteed amount of dividend but carry voting rights, or preferred shares, which receive dividends before ordinary shares but have no voting right. (ISO20022)
    # * `Warrant` - Financial instrument that gives the holder the right to purchase shares or bonds at a given price within a specified time. (ISO20022)
    # * `Entitlement` - Financial instrument providing the holder the privilege to subscribe to or to receive specific assets on terms specified. (ISO20022)
    common:Securitytypevalues InvestmentPortfolioSecurityType?;
    # Maintains the current security holdings
    # InvestmentPortfolioSecurityHolding
    AssetHolding InvestmentPortfolioSecurityHolding?;
};

public type ManagedInvestmentPortfolioFacilityOk record {|
    *http:Ok;
    # body
    ManagedInvestmentPortfolioFacility body;
|};

# The product features/services available with a financical facility
public type Trade record {
    # The trading request record used to initiate and track the trade
    common:Instruction InvestmentPortfolioTradeRequest?;
    # >
    # * `Equity` - Financial instrument that represents a title of ownership in a company. That is, the shareholder is entitled to a part of the company's profit - usually by payment of a dividend - and to voting rights, if any. Each company issues generally different classes of shares, for example, ordinary or common shares, which have no guaranteed amount of dividend but carry voting rights, or preferred shares, which receive dividends before ordinary shares but have no voting right. (ISO20022)
    # * `Warrant` - Financial instrument that gives the holder the right to purchase shares or bonds at a given price within a specified time. (ISO20022)
    # * `Entitlement` - Financial instrument providing the holder the privilege to subscribe to or to receive specific assets on terms specified. (ISO20022)
    common:Securitytypevalues InvestmentPortfolioTradeSecurityType?;
    # A description of the trade, including all key trading details (e.g. amount/volume, pricing/terms, clearing and settlement dates)
    # InvestmentPortfolioTradeSecurityTradeDescription
    string InvestmentPortfolioTradeSecurityTradeDescription?;
};

# The product features/services available with a financical facility
public type Opportunity record {
    # Description of the detected market opportunity (e.g. projected movement of an eligible security that is not currently held)
    string MarketOpportunityDescription?;
    # Evaluation of the comparative performance of identified security and that in the investment portfolio that would be replaced/adjusted
    string SecuritiesComparison?;
};

public type TradeOk record {|
    *http:Ok;
    # body
    Trade body;
|};

# The product features/services available with a financical facility
public type FinancialStatusTracking record {
    # The sensitivity viewpoint for a held security position
    string InvestmentPortfolioSecuritySensitivity?;
    # The expected value movement
    string ProjectedValuation?;
    # An impact assessment of the projected movement on the investment portfolio - includes possible policy limit breaches
    string ProjectedPortfolioImpact?;
};

# Maintains the current security holdings
public type AssetHolding record {
    # Specifies in terms of value and quantity the assets. (ISO20022)
    string AssetHolding?;
};

# A collection of terms (within some jurisdiction) that can be selected and configured to define a contract /agreement
#
# Examples: Required disclosures
public type InvestmentTerms record {
    # The type of term (e.g. risk appetite, forbidden securities/sectors)
    string InvestmentPortfolioAgreementTermType?;
    # Description of the term defining how it is to be interpreted, applicable for behavioral controls (e.g. limit of exposure to a segment property or level of risk)
    string InvestmentPortfolioAgreementTermDescription?;
    # One or more specific constraint parameters that calibrate the term, applicable for position constraints (e.g. the specific percentage limit of holdings by value that can be applied to a type of security)
    common:Condition InvestmentPortfolioAgreementTermConstraints?;
};

public type InvestmentTermsOk record {|
    *http:Ok;
    # body
    InvestmentTerms body;
|};

# Maintain the terms and conditions that apply to a commercial relationship within Investment Portfolio Planning.
public type ManagedInvestmentPortfolioAgreement record {
    # Reference to an entity that assigns and manages the identification.
    # tReference to the organization or agency that issued the identifier (e.g., DMV, Passport Office).
    common:Involvedparty CustomerReference?;
    # Reference to the legal entity that is the subject of the agreement
    # LegalEntityReference
    common:Organisation LegalEntityReference?;
    # The identifier of Condition
    # InvestmentPortfolioInstanceReference
    common:Identifier InvestmentPortfolioInstanceReference?;
    # >
    # * `CustomerAgreement` - 
    # * `SupplierAgreement` - 
    # * `BrokerAgreement` - 
    # * `SalesAgreement` - 
    # * `PurchaseAgreement` - 
    # * `MaintenanceAgreement` - 
    # * `ProductAgreement` - 
    # * `ResourceAgreement` - 
    # * `PartnerAgreement` - 
    # * `MasterAgreement` - 
    # * `BilateralAgreement` - 
    # * `RepurchaseAgreement` - 
    common:Agreementtypevalues InvestmentPortfolioAgreementType?;
    # The contractual jurisdiction or coverage of the investment portfolio agreement (e.g. "governed by State")
    # InvestmentPortfolioAgreementJurisdiction
    common:Jurisdiction InvestmentPortfolioAgreementJurisdiction?;
    # The date when the identifier became valid.
    # InvestmentPortfolioAgreementValidFromToDate
    common:Datetime InvestmentPortfolioAgreementValidFromToDate?;
    # Reference to signatories
    # InvestmentPortfolioAgreementSignatoriesResponsibleParties
    string InvestmentPortfolioAgreementSignatoriesResponsibleParties?;
    # Reference to any associated documents, (e.g. signed agreement document, disclosures)
    common:DocumentDirectoryEntry DocumentDirectoryEntryInstanceReference?;
    # The identifier of Condition
    # CustomerAgreementInstanceReference
    common:Identifier CustomerAgreementInstanceReference?;
    # The identifier of Condition
    # PartyRelationshipProcedureInstanceReference
    common:Identifier PartyRelationshipProcedureInstanceReference?;
    # The consolidated view of all of the constituent investment policy terms and conditions in any suitable format
    # ManagedInvestmentPortfolioAgreement
    common:Agreement ManagedInvestmentPortfolioAgreement?;
};

public type ManagedInvestmentPortfolioAgreementOk record {|
    *http:Ok;
    # body
    ManagedInvestmentPortfolioAgreement body;
|};
