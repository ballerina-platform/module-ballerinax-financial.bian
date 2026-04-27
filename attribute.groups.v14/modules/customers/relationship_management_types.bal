import ballerina/http;
import financial.bian.attribute.groups.common as common;

public type CustomerAgreementOk record {|
    *http:Ok;
    # body
    common:CustomerAgreement body;
|};

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

public type CustomerCreditRatingStateOk record {|
    *http:Ok;
    # body
    CustomerCreditRatingState body;
|};

# Monitor and define the status/rating of some entity within Customer Credit Rating. 
public type CustomerCreditRatingState record {
    # Reference to an entity that assigns and manages the identification.
    # tReference to the organization or agency that issued the identifier (e.g., DMV, Passport Office).
    common:Involvedparty CustomerReference?;
    # The type of credit status being monitored (e.g. consumer, small business, corporate)
    # CustomerCreditRatingStatusType
    string CustomerCreditRatingStatusType?;
    # The schedule for the upload of the data file/report
    common:Schedule CustomerCreditRatingSchedule?;
    # The record of the underlying credit assessment performed to support the credit rating state
    # CustomerCreditRatingAssessmentRecord
    CustomerCreditRatingAssessment CustomerCreditRatingAssessmentRecord?;
    # Reference to the customer behavior model(s) used to develop any underlying analysis for determining the credit state
    common:CustomerBehaviorModel AssessmentCustomerBehaviorModelReference?;
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
    common:Assessmenttypevalues CreditRatingAssessmentType?;
    # Date and time at which the range starts. (ISO20022)
    # CreditRatingAssessmentDate
    common:Datetime CreditRatingAssessmentDate?;
    # Work documentation, forms and schedules produced and referenced during the analysis
    # CreditRatingAssessmentWorkProducts
    common:Workproduct CreditRatingAssessmentWorkProducts?;
    # The resulting report from the credit rating assessment
    # CreditRatingAssessmentResult
    common:Assessment CreditRatingAssessmentResult?;
    # A record of the customers credit state
    # CustomerCreditRatingRecord
    common:CustomerRating CustomerCreditRatingRecord?;
    # Is the current credit rating or score (typically a ranking value e.g. 1-10)
    # CustomerCreditRatingState
    string CustomerCreditRatingState?;
    # The record of the underlying credit assessment performed to support the credit rating state
    CustomerCreditRatingAssessment CustomerCreditRatingAssessment?;
    # A structured report outlining basis for the credit rating
    string CustomerCreditRatingNarrative?;
    # Date and time at which the range starts. (ISO20022)
    common:Datetime CustomerCreditRatingDate?;
};

# A collection of information feeds/measures that can be used to track the status of one or more items/entitites
#
# Examples: Composite position, Customer alert
public type Alerts record {
    # The product/service instance that generated the alert
    common:ProductAgreement ProductInstanceReference?;
    # The individual source of the alert - if not automated by production
    # EmployeeBusinessUnitReference
    common:BusinessUnit EmployeeBusinessUnitReference?;
    # The type of alert (e.g. missed payment, limit breach)
    # CustomerCreditAlertType
    string CustomerCreditAlertType?;
    # Details of the event behind the notification
    string CustomerCreditAlertDescription?;
    # Date and time at which the range starts. (ISO20022)
    common:Datetime Date?;
};

# A collection of information feeds/measures that can be used to track the status of one or more items/entitites
#
# Examples: Composite position, Customer alert
public type ExternalReporting record {
    # The schedule for the upload of the data file/report
    common:Schedule RatingAgencyReportSchedule?;
    # >
    # * `FinancialReport` - 
    # * `BusinessReport` - 
    # * `ManagementReport` - 
    # * `Statement` - 
    # * `MaintenanceReport` - 
    # * `RegulatoryReport` - 
    # * `TaxReport` - 
    # * `AnalysisReport` - 
    common:Reporttypevalues RatingAgencyCreditReportType?;
    # Reference to the report provided by the agency
    # Referencetotheratingagencycreditreport
    string Referencetotheratingagencycreditreport?;
    # Reference to the internal bank product and service activity report that is used for the credit assessment
    common:Report RatingAgencyCreditReport?;
    # Date and time at which the range starts. (ISO20022)
    # RatingAgencyCreditReportDate
    common:Datetime RatingAgencyCreditReportDate?;
};

# A collection of information feeds/measures that can be used to track the status of one or more items/entitites
#
# Examples: Composite position, Customer alert
public type InternalReporting record {
    # Reference to the internal bank product and service activity report that is used for the credit assessment
    common:Report ProductandServiceActivityReportReference?;
    # The schedule for the upload of the data file/report
    # ProductandServiceActivityReportSchedule
    common:Schedule ProductandServiceActivityReportSchedule?;
    # Reference to the internal bank product and service activity report that is used for the credit assessment
    # ProductandServiceActivityReport
    common:Report ProductandServiceActivityReport?;
};

# Reference to the recorded lead/opportunity if sale progresses
public type SalesLead record {
    # The origin of the lead, such as walk-in, solicitation, referral etc.
    string LeadOrigin?;
    # A description of lead/opportunity generated by the customer campaign
    string LeadDescription?;
    # >
    # * `Lead` - A lead is an individual or organization that has shown interest in a companys products or services. This could be through filling out a form, subscribing to a newsletter, or any other initial engagement. Leads are typically the starting point in the sales funnel and require further qualification to determine their potential as a customer.
    #
    # * `Prospect` - A prospect is a lead that has been qualified, meaning that the lead has been assessed and determined to have a higher likelihood of becoming a customer. This qualification often involves verifying that the prospect meets certain criteria, such as having the budget, authority, need, and timeline to make a purchase (often referred to as BANT criteria).
    #
    # * `Customer` - A customer is a prospect who has completed a purchase or has entered into a formal business relationship with the company. Customers are individuals or organizations that have decided to buy the company's products or services, and the focus now shifts to maintaining and enhancing the relationship to encourage repeat business.
    #
    # * `LoyalCustomer` - A loyal customer is one who not only makes repeated purchases but also demonstrates a strong, positive relationship with the company. Loyal customers often advocate for the brand, provide valuable feedback, and have a higher lifetime value. They are the result of successful customer relationship management, where the company consistently meets or exceeds their expectations.
    #
    #
    #
    # A loyal customer is someone who consistently chooses your brand's products or services over competitors, often due to positive past experiences, emotional connections, and trust built over time. Loyal customers are valuable to businesses as they typically contribute to a significant portion of revenue, are more likely to make repeat purchases, and can act as brand advocates, promoting the brand to others.
    Customerrelationshiplifecyclephasevalues CustomerRelationshipLifecyclePhaseType?;
    # Description
    string Description?;
    # Specifies whether the phase is the current phase of the party relationship.
    string IsCurrentPhase?;
    # The name of the phase of the relationship, such as prospect, contracted, on-board, etc.
    common:Name PhaseName?;
    # PhaseStatus
    common:Status PhaseStatus?;
    # PhasePeriod
    common:Datetimeperiod PhasePeriod?;
};

# A collection of the events/transactions recorded by the log
#
# - Capture events related to Sales
public type Life record {
    # The type of event  (e.g. marriage/divorce, relocation, birth, graduation)
    string CustomerLifeEventType?;
    # Reference to a contact event log
    common:CustomerContact CustomerContactRecordReference?;
    # Employees involved in recording the event
    # EmployeeUnitReference
    common:Involvedparty EmployeeUnitReference?;
    # The details of the event (in a suitable format)
    # CustomerLifeEventRecord
    common:Event CustomerLifeEventRecord?;
    # Date and time at which the status was assigned.
    # DateandTime
    common:Datetime DateandTime?;
    # LocationReference
    common:Location LocationReference?;
};

# A collection of the events/transactions recorded by the log
#
# - Capture events related to Sales
public type ProductProcessing record {
    # Reference to the specific product instance being processed
    common:ProductAgreement ProductInstanceReference?;
    # The type of event (e.g. payment initiation, statement request)
    # ProductEventType
    string ProductEventType?;
    # Details of the processing activity if available
    string ProductEventDescription?;
    # Outcome of the processing action if available
    string ProductEventResult?;
    # Employees involved in recording the event
    common:Involvedparty EmployeeUnitReference?;
    # The details of the event (in a suitable format)
    # CustomerProductandServiceEventRecord
    common:Event CustomerProductandServiceEventRecord?;
    # Date and time at which the status was assigned.
    # DateandTime
    common:Datetime DateandTime?;
    # LocationReference
    common:Location LocationReference?;
};

# A collection of the events/transactions recorded by the log
#
# - Capture events related to Sales
public type Fraud record {
    # The type of event  (e.g. stolen card, disputed transaction)
    string CustomerFraudCaseEventType?;
    # Reference to a contact event log
    common:CustomerContact CustomerContactRecordReference?;
    # Reference to the types or instances of products/services being serviced if provided
    # AccessedProductandService
    common:Product AccessedProductandService?;
    # Employees involved in recording the event
    # EmployeeUnitReference
    common:Involvedparty EmployeeUnitReference?;
    # Reference to the fraud case processing the analysis and response
    # FraudCaseReference
    Case FraudCaseReference?;
    # Date and time at which the status was assigned.
    common:Datetime DateandTime?;
    # LocationReference
    common:Location LocationReference?;
};

# A collection of the events/transactions recorded by the log
#
# - Capture events related to Sales
public type Servicing record {
    # The type of event (e.g. self-service, assisted)
    string CustomerServicingEventType?;
    # Reference to a contact event log
    common:CustomerContact CustomerContactRecordReference?;
    # Reference to the types or instances of products/services being serviced if provided
    # AccessedProductandService
    common:Product AccessedProductandService?;
    # >
    # * `Securecardreader` - Secure card reader attached to the customer device
    # * `Nonsecurecardreader` - Non-secure card reader attached to the customer device.
    # * `Mobile` - Mobile phone
    # * `Tablet` - Tablet
    # * `Personalcomputer` - Personal computer
    # * `Othernational` - Other device defined at national level
    # * `Otherprivate` - Other device defined in a private way.
    # * `Wearable` - Wearable device.
    # * `Vehicle` - Vehicle.
    # * `Embedded` - Embedded in a device.
    # * `Keyfob` - Key Fob
    # * `Jewellery` - Jewellery
    # * `Sticker` - Sticker
    # * `Gamingdevice` - Gaming Device
    # * `Watch` - Watch
    # * `Unknown` - Device type unknown
    # * `BiometricDevice` - A biometric device is a security identification and authentication device. Such devices use automated methods of verifying or recognising the identity of a living person based on a physiological or behavioral characteristic.
    # https://en.wikipedia.org/wiki/Biometric_device
    #
    common:Devicetypevalues ChannelandDeviceType?;
    # The given purpose for the customer servicing action
    # ContactPurpose
    string ContactPurpose?;
    # The captured result of the servicing event
    string ContactResult?;
    # Employees involved in recording the event
    common:Involvedparty EmployeeUnitReference?;
    # The details of the event (in a suitable format)
    # CustomerServicingEventRecord
    common:Event CustomerServicingEventRecord?;
    # Date and time at which the status was assigned.
    # DateandTime
    common:Datetime DateandTime?;
    # LocationReference
    common:Location LocationReference?;
};

# A collection of the events/transactions recorded by the log
#
# - Capture events related to Sales
public type Sales record {
    # The type of event (e.g. campaign, unsolicited, solicited, development)
    string CustomerSalesEventType?;
    # Employees involved in recording the event
    common:Involvedparty EmployeeUnitReference?;
    # >
    # * `LoanProduct` - 
    # * `CurrentAccountProduct` - 
    # * `SavingAccountProduct` - 
    # * `BrokeredProduct` - 
    # * `TermDepositProduct` - 
    common:Bankingproducttypevalues ProductandServiceType?;
    # Reference to the recorded lead/opportunity if sale progresses
    # LeadandOpportunityReference
    SalesLead LeadandOpportunityReference?;
    # The details of the event (in a suitable format)
    common:Event CustomerSalesEventRecord?;
    # Reference to any commission agreement if appropriate
    # CommissionAgreementReference
    common:Agreement CommissionAgreementReference?;
    # Date and time at which the status was assigned.
    # DateandTime
    common:Datetime DateandTime?;
    # LocationReference
    common:Location LocationReference?;
};

# >
# * `CustomerRelationshipEvent` - A Value of Customer Event Type in which events related to the customer relationship are specified. 
# * `CustomerSaleEvent` - A Value of Customer Event Type in which events related to the customer sale are specified. 
#
# * `CustomerProductEvent` - A Value of Customer Event Type in which events related to the customer product are specified. 
#
# * `CustomerFraudEvent` - A Value of Customer Event Type in which events related to the customer fraud are specified. 
#
# * `CustomerLifeEvent` - A Value of Customer Event Type in which events related to the customer life are specified. 
#
public type Customereventtypevalues "CustomerRelationshipEvent"|"CustomerSaleEvent"|"CustomerProductEvent"|"CustomerFraudEvent"|"CustomerLifeEvent";

# >
# * `Lead` - A lead is an individual or organization that has shown interest in a companys products or services. This could be through filling out a form, subscribing to a newsletter, or any other initial engagement. Leads are typically the starting point in the sales funnel and require further qualification to determine their potential as a customer.
#
# * `Prospect` - A prospect is a lead that has been qualified, meaning that the lead has been assessed and determined to have a higher likelihood of becoming a customer. This qualification often involves verifying that the prospect meets certain criteria, such as having the budget, authority, need, and timeline to make a purchase (often referred to as BANT criteria).
#
# * `Customer` - A customer is a prospect who has completed a purchase or has entered into a formal business relationship with the company. Customers are individuals or organizations that have decided to buy the company's products or services, and the focus now shifts to maintaining and enhancing the relationship to encourage repeat business.
#
# * `LoyalCustomer` - A loyal customer is one who not only makes repeated purchases but also demonstrates a strong, positive relationship with the company. Loyal customers often advocate for the brand, provide valuable feedback, and have a higher lifetime value. They are the result of successful customer relationship management, where the company consistently meets or exceeds their expectations.
#
#
#
# A loyal customer is someone who consistently chooses your brand's products or services over competitors, often due to positive past experiences, emotional connections, and trust built over time. Loyal customers are valuable to businesses as they typically contribute to a significant portion of revenue, are more likely to make repeat purchases, and can act as brand advocates, promoting the brand to others.
public type Customerrelationshiplifecyclephasevalues "Lead"|"Prospect"|"Customer"|"LoyalCustomer";

public type CustomerEventLogOk record {|
    *http:Ok;
    # body
    common:CustomerEventLog body;
|};

# A collection of the events/transactions recorded by the log
#
# - Capture events related to Sales
public type Relationship record {
    # CustomerRelationshipEventType
    string CustomerRelationshipEventType?;
    # Employees involved in recording the event
    common:Involvedparty EmployeeUnitReference?;
    # The details of the event (in a suitable format)
    # CustomerRelationshipEventRecord
    common:Event CustomerRelationshipEventRecord?;
    # CustomerRelationshipEventAction
    common:Action CustomerRelationshipEventAction?;
    # DateandTime
    common:Datetime DateandTime?;
    # LocationReference
    common:Location LocationReference?;
};

# >
# * `Closed` - Case has been closed. (ISO20022)
# * `Assigned` - Case has been assigned to another party. (ISO20022)
# * `UnderInvestigation` - Case is currently under investigation. (ISO20022)
# * `Unknown` - Case has never been assigned before. (ISO20022)
# * `Overdue` - Investigation is taking too long. (ISO20022)
public type Casestatustypevalues "Closed"|"Assigned"|"UnderInvestigation"|"Unknown"|"Overdue";

# Diagnosis guide for addressing reported issues
public type Case record {
    # Date and time the case was created
    common:Datetime CaseCreationDateTime?;
    # >
    # * `Card` -
    # * `Loan` -
    # * `Fraud` -
    # * `Payment` -
    # * `Market` -
    # * `Security` -
    # * `Other` -
    common:Casetypevalues CaseType?;
    # Location associated with the case
    common:Location CaseLocation?;
    # >
    # * `Closed` - Case has been closed. (ISO20022)
    # * `Assigned` - Case has been assigned to another party. (ISO20022)
    # * `UnderInvestigation` - Case is currently under investigation. (ISO20022)
    # * `Unknown` - Case has never been assigned before. (ISO20022)
    # * `Overdue` - Investigation is taking too long. (ISO20022)
    Casestatustypevalues CaseStatus?;
    # Document associated with the case
    common:Document CaseDocument?;
    # Date and time of the case
    common:Datetime CaseDateTime?;
};

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

public type CustomerProductAndServiceDirectoryEntryOk record {|
    *http:Ok;
    # body
    common:CustomerProductAndServiceDirectoryEntry body;
|};

public type ProductOk record {|
    *http:Ok;
    # body
    common:Product body;
|};

public type ServiceOk record {|
    *http:Ok;
    # body
    common:Service body;
|};

public type ServiceAgreement record {
    # Type
    string Type?;
    # The In-force Product property properties that represent a discrete aspect of the In-force Product property
    common:Service ServiceReference?;
    # AgreementReference
    common:Agreement AgreementReference?;
    # AgreementSignedDate
    common:Date AgreementSignedDate?;
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
    common:Agreementtypevalues AgreementType?;
    # Period of time during which the status is valid.
    # AgreementValidityPeriod
    common:Datetimeperiod AgreementValidityPeriod?;
    # AgreementVersion
    string AgreementVersion?;
    # A characteristic of agreement which refers to the LifecycleStatus of agreement (e.g., potential, offered, confirmed, completed, signed, terminated).
    common:Agreementstatus AgreementStatus?;
    # AgreementSubjectMatter
    string AgreementSubjectMatter?;
    # An unique reference to an item or an occurrence of  Product BQ
    common:Identifier AgreementIdentification?;
    # The date when the identifier became valid.
    # AgreementDate
    common:Datetime AgreementDate?;
    # AgreementDescription
    string AgreementDescription?;
};

// public type CustomerEligibilityAssessmentOk record {|
//     *http:Ok;
//     # body
//     CustomerEligibilityAssessment body;
// |};

public type EligibilityCheck record {
    # The result of the eligibility assessment for the requested product/service - details any eligibility considerations or requirements and the applicable terms
    CustomerProductProfileAssessment CustomerProductandServiceEligibilityAssessmentResult?;
};

public type NextBest record {
    # Product/service features used to focus the selection
    common:ProductFeature RequestedProductandServiceProperties?;
    # The general type of product/service for which the best eligible product match is requested (e.g. term deposit, loan)
    # ProductServiceType
    common:Bankingproducttype ProductServiceType?;
    # The result is a descending list of matched products with the associated eligibility that are available to the customer
    # CustomerProductandServiceNextBestAssessmentResult
    common:Assessment CustomerProductandServiceNextBestAssessmentResult?;
};

# The result of the eligibility assessment for the requested product/service - details any eligibility considerations or requirements and the applicable terms
public type CustomerProductProfileAssessment record {
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
    # The date when the identifier became valid.
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

public type EligibilityCheckOk record {|
    *http:Ok;
    # body
    EligibilityCheck body;
|};

public type CustomerEligibilityAssessment record {
    # Reference to an entity that assigns and manages the identification.
    # tReference to the organization or agency that issued the identifier (e.g., DMV, Passport Office).
    common:Involvedparty CustomerReference?;
    # This is the is the eligibility profile including in-force product terms
    # CustomerProductandServiceProfile
    common:CustomerProductAndServiceProfile CustomerProductandServiceProfile?;
    # >
    # * `Customerproductserviceeligibilityprofile` - 
    # * `Customerproductserviceusageprofile` - 
    # * `Customerproductservicecoverageprofile` - 
    # * `Customerproductservicesaleprofile` - 
    # * `Customerproductserviceconsentprofile` - 
    common:Customerproductserviceprofiletypevalues ProductandServiceType?;
    # Defines if and under what terms a product/service is available to this customer - this detail is maintained by the service domain and referenced by this evaluation
    # CustomerProductandServiceTypeEligibility
    common:Arrangement CustomerProductandServiceTypeEligibility?;
    # Records the sold/in-force status of a product/service with the customer. Again this detail is maintained by the service domain and referenced by this evaluation
    # CustomerProductandServiceTypeUsage
    common:ProductUsage CustomerProductandServiceTypeUsage?;
    # Date when the assessment expires. (ISO20022)
    # Date
    common:Date Date?;
};

// public type CustomerPropositionAgreementOk record {|
//     *http:Ok;
//     # body
//     CustomerPropositionAgreement body;
// |};

# The Bank Defined Product and Service Term reflects the application of a specific rule or regulation that is an aspect of the Bank Defined Product and Service Term
public type CustomerDefinedProductandServiceTerm record {
    # The required status/situation for the terms to apply and or tasks that need to be completed prior to the initiation of the workstep
    common:Condition Preconditions?;
    # Any timing/duration considerations applying to the Bank Defined Product and Service Term
    # Schedule
    common:Schedule Schedule?;
    # The Bank Defined Product and Service Term specific Business Service
    # BusinessService
    common:BusinessService BusinessService?;
    # Reference to Bank Defined Product and Service Term
    # CustomerPropositionAgreementReference
    common:Agreement CustomerPropositionAgreementReference?;
    # Reference to Bank Defined Product and Service Term
    # CustomerDefinedProductandServiceTermReference
    common:Arrangement CustomerDefinedProductandServiceTermReference?;
    # The type of Customer Defined Product and Service Term
    # CustomerDefinedProductandServiceTermType
    string CustomerDefinedProductandServiceTermType?;
};

# The Bank Defined Product and Service Term reflects the application of a specific rule or regulation that is an aspect of the Bank Defined Product and Service Term
public type BankDefinedProductandServiceTerm record {
    # The required status/situation for the terms to apply and or tasks that need to be completed prior to the initiation of the workstep
    common:Condition Preconditions?;
    # Any timing/duration considerations applying to the Bank Defined Product and Service Term
    # Schedule
    common:Schedule Schedule?;
    # The Bank Defined Product and Service Term specific Business Service
    # BusinessService
    common:BusinessService BusinessService?;
    # Reference to Bank Defined Product and Service Term
    # CustomerPropositionAgreementReference
    common:Agreement CustomerPropositionAgreementReference?;
    # Reference to Bank Defined Product and Service Term
    # BankDefinedProductandServiceTermReference
    common:Arrangement BankDefinedProductandServiceTermReference?;
    # The type of Bank Defined Product and Service Term
    # BankDefinedProductandServiceTermType
    string BankDefinedProductandServiceTermType?;
};

public type CustomerDefinedProductandServiceTermOk record {|
    *http:Ok;
    # body
    CustomerDefinedProductandServiceTerm body;
|};

# Maintain the terms and conditions that apply to a commercial relationship within Customer Proposition.
public type CustomerPropositionAgreement record {
    # >
    # * `FeeFeature` - This refers to the functionality in a system or platform that manages, calculates, or displays fees associated with specific transactions or services.
    # * `InterestFeature` - This feature calculates and tracks interest earnings or charges on accounts, loans, or investments over time.
    # * `WithdrawalFeature` - The withdraw feature typically refers to an option or functionality that allows users to retrieve or remove something from a system or platform.
    # * `DepositFeature` - This refers to a functionality that allows users to add funds to an account or system, often by transferring money from another source.
    # * `SweepFeature` - 
    # * `LienFeature` - 
    # * `PaymentFeature` - This refers to the functionality that facilitates or tracks the transfer of funds for a purchase or settlement of dues.
    # * `RepaymentFeature` - This feature facilitates or manages the process of paying back borrowed funds, such as loans, credit card balances, or advances.
    # * `LimitFeature` - This feature sets, monitors, or enforces restrictions on the maximum amount that can be accessed, spent, or transacted within a system.
    # * `OverdraftFeature` - This functionality allows users to withdraw more money than what is available in their account balance, often up to a predefined limit.
    # * `StatementFeature` - The statement feature refers to a functionality in banking, finance, or digital platforms that provides users with a detailed record of their transactions or activities over a specific period.
    # * `CurrencyExchangeFeature` - This feature enables users to convert funds from one currency to another at prevailing exchange rates, often within financial or payment platforms.
    # * `PriceFeature` - This feature involves displaying or managing the price of goods, services, or financial instruments within a platform.
    common:Featuretypevalues CustomerPropositionAgreementParameterType?;
    # A characteristic of service which refers 1) mainly to the function or condition of service. 2) to non-functional features like quality and security
    # CustomerPropositionAgreementSelectedOption
    common:Feature CustomerPropositionAgreementSelectedOption?;
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
    common:Agreementtypevalues CustomerPropositionAgreementType?;
    # Reference to Bank Defined Product and Service Term
    # CustomerPropositionAgreementReference
    common:Agreement CustomerPropositionAgreementReference?;
    # Request to discharge Customer Proposition Agreement
    # CustomerPropositionAgreementDischargeRequest
    common:Instruction CustomerPropositionAgreementDischargeRequest?;
    # Any timing/duration considerations applying to the Bank Defined Product and Service Term
    # CustomerPropositionAgreementDischargeSchedule
    common:Schedule CustomerPropositionAgreementDischargeSchedule?;
    # A characteristic of agreement which refers to the LifecycleStatus of agreement (e.g., potential, offered, confirmed, completed, signed, terminated).
    # CustomerPropositionAgreementStatus
    common:Agreementstatus CustomerPropositionAgreementStatus?;
    # Reference to an entity that assigns and manages the identification.
    # tReference to the organization or agency that issued the identifier (e.g., DMV, Passport Office).
    common:Involvedparty CustomerPropositionAgreementAssociatedParty?;
    # Reference to an entity that assigns and manages the identification.
    # tReference to the organization or agency that issued the identifier (e.g., DMV, Passport Office).
    common:Involvedparty CustomerPropositionAgreementCustomerReference?;
    # Reference to Bank Defined Product and Service Term
    # CustomerPropositionAgreementObligation
    common:Arrangement CustomerPropositionAgreementObligation?;
    # Reference to Bank Defined Product and Service Term
    # CustomerPropositionAgreementEntitlement
    common:Arrangement CustomerPropositionAgreementEntitlement?;
    # Reference to the regulation which is defined in Customer Proposition Agreement
    # CustomerPropositionAgreementRegulationReference
    common:RuleSet CustomerPropositionAgreementRegulationReference?;
    # A Classification that distinguishes between the regularity domains of Customer Proposition Agreement
    # CustomerPropositionAgreementRegulationType
    common:Rulesettype CustomerPropositionAgreementRegulationType?;
    # Reference to the jurisdiction that is assigned to Customer Proposition Agreement in case of legal dispute.
    # CustomerPropositionAgreementJurisdiction
    common:Jurisdiction CustomerPropositionAgreementJurisdiction?;
    # Reference to the account which is linked to Customer Proposition Agreement
    #
    # A characteristic of agreement which refers to its involved account to specify the account that will be used to register for the transactions in position keeping management.
    common:Account CustomerPropositionAgreementAccountReference?;
    # The subject matter of  Customer Proposition Agreement
    # CustomerPropositionAgreementSubjectMatter
    string CustomerPropositionAgreementSubjectMatter?;
    # Reference to the product which is linked to Customer Proposition Agreement
    #
    # Comment: 
    # A characteristic of agreement which refers to its related products that are sold by agreement.
    common:Product CustomerPropositionAgreementProductReference?;
    # The calendar of Customer Proposition Agreement
    # CustomerPropositionAgreementCalendarReference
    common:Calendar CustomerPropositionAgreementCalendarReference?;
    # Reference to Bank Defined Product and Service Term
    # CustomerPropositionAgreementAssociatedAgreementReference
    common:Agreement CustomerPropositionAgreementAssociatedAgreementReference?;
};

public type BankDefinedProductandServiceTermOk record {|
    *http:Ok;
    # body
    BankDefinedProductandServiceTerm body;
|};

# Oversee the working of a business unit, assign work, manage against a plan and troubleshoot issues within Customer Relationship Management.
public type CustomerRelationshipManagementPlan record {
    # Reference to a Party who plays a  specific role in the context of assigning a status.
    common:Involvedparty CustomerReference?;
    # Reference to a Party who plays a  specific role in the context of assigning a status.
    # EmployeeBusinessUnitReference
    common:Involvedparty EmployeeBusinessUnitReference?;
    # >
    # * `CustomerProfitabilityRating` - A value of Customer Rating Type whereby customer profitability is measured.
    #
    # A customer profitability rating (CPR) is an assessment used by businesses to evaluate the profitability of individual customers or customer segments. This rating helps companies understand which customers contribute the most to their bottom line and enables them to tailor their strategies to maximize overall profitability.
    # * `CustomerCreditRating` - A value of Customer Rating Type whereby customer creditability is measured.
    #
    # A customer credit rating is a numerical score or rating that represents the creditworthiness of an individual or a business. It indicates the likelihood that the borrower will repay their debt obligations on time
    # * `CustomerRiskRating` - A customer risk rating is an assessment of the potential risk associated with a customer, often used in the context of anti-money laundering (AML) and know your customer (KYC) regulations. It evaluates the likelihood of a customer engaging in activities that could pose a legal, financial, or reputational risk to the institution.
    common:Customerratingtypevalues CustomerRelationshipRatingType?;
    # The rating value (and explanation)
    # CustomerRelationshipRating
    common:CustomerRating CustomerRelationshipRating?;
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
    # Description of the insight
    # CustomerInsightDescription
    string CustomerInsightDescription?;
    # The target and actual budget covering income and allowed expenses/discounts
    CustomerRelationshipBudget CustomerBudget?;
    # Covers current and near term target product/service coverage as per the judgment of the Relationship Manager
    CustomerProductCoverage CustomerProductCoverage?;
    # Extracted analysis from production activity used to detect trends and key events (product activity/turnover summaries)
    common:ProductUsage CustomerProductUsage?;
    # Obtained from the appropriate Service Domain, this provides an automated/rules based analysis of unsold/eligible products and associated terms that can be refined by the manager
    # CustomerProductEligibilityProfile
    CustomerProductEligibilityProfileClass CustomerProductEligibilityProfile?;
    # A plan outlining longer term relationship goals and performance/profitability both target and actual
    common:Plan CustomerSalesPlan?;
    # A maintained perspective of the profitability of the relationship to date and projected
    # CustomerProfitability
    CustomerProfitability CustomerProfitability?;
};

public type ContactOk record {|
    *http:Ok;
    # body
    Contact body;
|};

# >
# * `CustomerEngagement` - Objective: Keep customers actively involved with the brand.
# Activities: Regular communication through newsletters, social media interactions, loyalty programs, and personalized offers.
#
# Regular Interaction: Keep customers engaged through regular communication and interactions.
# Value Delivery: Continuously deliver value through high-quality products, services, and content.
# * `CustomerRetention` - Objective: Maintain long-term relationships and prevent customer churn.
# Activities: Implementing loyalty programs, conducting satisfaction surveys, and providing consistent value through updates and enhancements.
# Customer Satisfaction: Focus on maintaining high levels of customer satisfaction.
# Problem Resolution: Quickly and effectively address any issues or concerns that arise
# * `CustomerAdvocacy` - Objective: Turn satisfied customers into brand advocates who can help attract new customers.
# Activities: Encouraging reviews and testimonials, creating referral programs, and engaging with customers on social media.
#
# Encourage Referrals: Motivate satisfied customers to refer others to your business.
# Leverage Testimonials: Use positive customer testimonials and reviews to build credibility and attract new customers.
# * `CustomerCross-SellingAndUpselling` - Customer Upselling
# Definition: Upselling is a sales technique aimed at encouraging customers to purchase a higher-end product than the one they originally intended to buy, or to add features and services that increase the overall value of the purchase.
#
# Purpose: The primary goal of upselling is to increase the sales revenue from each transaction and to provide customers with enhanced value and satisfaction by offering better products or services.
#
#
# Customer Cross-Selling
# Definition: Cross-selling is a sales technique that involves encouraging customers to buy related or complementary products in addition to their initial purchase.
#
# Purpose: The main objective of cross-selling is to increase the average order value and to improve the overall customer experience by offering products that complement their original purchase.
public type Customerrelationshipdevelopmenttypevalues "CustomerEngagement"|"CustomerRetention"|"CustomerAdvocacy"|"CustomerCross-SellingAndUpselling";

public type Caseresolution record {
    # ResolutionSchedule
    common:Schedule ResolutionSchedule?;
    # The type of resolution (e.g. success, deferred, rejected)
    # ResolutionType
    string ResolutionType?;
    # Description of the resolution of the investigation case
    string Description?;
};

# Record of an incident
public type CustomerIncident record {
    # >
    # * `ProductIssues` - Defective or malfunctioning products.
    # Incorrect or damaged items received.
    # Issues with product performance or quality.
    # * `ServiceIssues` - Poor customer service interactions.
    # Delays in service delivery or support.
    # Incorrect or inadequate service provided.
    # * `BillingAndPaymentIssues` - Incorrect charges or billing errors.
    # Problems with refunds or returns.
    # Issues with payment processing.
    # * `TechnicalIssues` - Problems with software or applications.
    # Website outages or functionality issues.
    # Difficulty in accessing services or accounts.
    # * `LogisticsAndDeliveryIssues` - Delayed or lost shipments.
    # Incorrect delivery addresses.
    # Problems with delivery tracking.
    # * `PolicyAndProcedureIssues` - Disputes over company policies.
    # Miscommunication or lack of clarity about terms and conditions.
    # Issues with warranties or guarantees.
    # * `RelationshipIssues` - 
    Customerincidenttypevalues CustomerIncidentType?;
    # CustomerIncidentSource
    common:Event CustomerIncidentSource?;
    # CustomerIncidentDescription
    string CustomerIncidentDescription?;
    # CustomerIncidentResolution
    Caseresolution CustomerIncidentResolution?;
};

public type IncidentOk record {|
    *http:Ok;
    # body
    Incident body;
|};

# The target and actual budget covering income and allowed expenses/discounts
public type CustomerRelationshipBudget record {
    # The budget which is planned to spend for a specific customer relationship. 
    string CustomerRelationshipBudget?;
};

public type CustomerRelationshipManagementPlanOk record {|
    *http:Ok;
    # body
    CustomerRelationshipManagementPlan body;
|};

# A maintained perspective of the profitability of the relationship to date and projected
public type CustomerProfitability record {
    # The profitability for a specific customer relationship. 
    #
    # Profitability: The state or condition of yielding a financial profit or gain. (Business Dictionary)
    string CustomerProfitability?;
};

# Narrative of the resolution actions made or committed
public type CustomerCaseResolution record {
    # CustomerCaseResolution
    string CustomerCaseResolution?;
};

# Covers current and near term target product/service coverage as per the judgment of the Relationship Manager
public type CustomerProductCoverage record {
    # CustomerProductCoverage
    string CustomerProductCoverage?;
};

# A collection of one or more responsibilities or tasks under management
#
# Examples: Relationship development, Troubleshooting
public type Contact record {
    # Records the timing, purpose, details and impact of customer contacts
    common:CustomerContact CustomerRelationshipContactHistory?;
    # CustomerRelationshipContactSchedule
    common:Schedule CustomerRelationshipContactSchedule?;
    # CustomerRelationshipContactRecord
    common:CustomerContact CustomerRelationshipContactRecord?;
    # The date time and location of the contact
    # CustomerRelationshipContactDate
    common:Date CustomerRelationshipContactDate?;
    # Reference to a Party who plays a  specific role in the context of assigning a status.
    # EmployeeReference
    common:Involvedparty EmployeeReference?;
    # The reason and or purpose for the contact (e.g. review, issue, product sales, advice, customer enquiry)
    # CustomerRelationshipContactType
    string CustomerRelationshipContactType?;
    # The result of the contact, including follow up tasks
    string CustomerRelationshipContactResult?;
};

# >
# * `ProductIssues` - Defective or malfunctioning products.
# Incorrect or damaged items received.
# Issues with product performance or quality.
# * `ServiceIssues` - Poor customer service interactions.
# Delays in service delivery or support.
# Incorrect or inadequate service provided.
# * `BillingAndPaymentIssues` - Incorrect charges or billing errors.
# Problems with refunds or returns.
# Issues with payment processing.
# * `TechnicalIssues` - Problems with software or applications.
# Website outages or functionality issues.
# Difficulty in accessing services or accounts.
# * `LogisticsAndDeliveryIssues` - Delayed or lost shipments.
# Incorrect delivery addresses.
# Problems with delivery tracking.
# * `PolicyAndProcedureIssues` - Disputes over company policies.
# Miscommunication or lack of clarity about terms and conditions.
# Issues with warranties or guarantees.
# * `RelationshipIssues` - 
public type Customerincidenttypevalues "ProductIssues"|"ServiceIssues"|"BillingAndPaymentIssues"|"TechnicalIssues"|"LogisticsAndDeliveryIssues"|"PolicyAndProcedureIssues"|"RelationshipIssues";

# A collection of one or more responsibilities or tasks under management
#
# Examples: Relationship development, Troubleshooting
public type Incident record {
    # Record of an incident
    CustomerIncident RelationshipIncidentRecord?;
    # Reference to a Party who plays a  specific role in the context of assigning a status.
    common:Involvedparty EmployeeBusinessUnitReference?;
    # Production activity and transaction records relating to the incident
    # ProductandServiceActivityReference
    common:Transaction ProductandServiceActivityReference?;
    # >
    # * `CustomerBehavioralInsight` - Understanding how customers interact with products, services, and brands.
    # * `CustomerDemographicInsight` - Analyzing customer characteristics such as age, gender, income, education, and location.
    # * `CustomerPsychographicInsight` - Exploring customers' lifestyles, values, interests, and attitudes.
    # * `CustomerTransactionalInsight` - Examining purchase history, order frequency, average transaction value, and payment methods
    # * `CustomerFeedbackAndSentimentInsight` - Gathering and analyzing customer feedback through surveys, reviews, social media, and customer support interactions
    # * `CustomerJourneyInsight` - Mapping the entire customer journey from awareness to purchase and beyond
    # * `CustomerRetentionAndChurnInsight` - Understanding the factors that influence customer retention and attrition
    # * `CustomerFinancialInsight` - Customer financial insights refer to the analysis and understanding of the financial aspects related to customer interactions and behaviors. 
    common:Customerinsighttypevalues CustomerIncidentType?;
    # Description of the incident in whatever form appropriate
    # CustomerIncidentDescription
    string CustomerIncidentDescription?;
    # Narrative of the resolution actions made or committed
    CustomerCaseResolution CustomerIncidentResolution?;
};

# Applicable legal or regulatory requirements governing eligibility
public type CustomerProductEligibilityProfileClass record {
};

public type SyndicatedLoanApplicationProcedureOk record {|
    *http:Ok;
    # body
    SyndicatedLoanApplicationProcedure body;
|};

# A Classification value that distinguishes between the type of transactions in Syndicated Loan Application Procedure.
public type Transactiontype record {
    # TransactionTypeName
    common:Name TransactionTypeName?;
    # >
    # * `FinancialTransaction` - 
    # * `BusinessTransaction` - 
    # * `BankingTransaction` - 
    # * `AccountingTransaction` - 
    # * `BookingTransaction` - 
    # * `AllocationTransaction` - 
    # * `DeliveryTransaction` - 
    # * `ProductionTransaction` - 
    common:Transactiontypevalues TransactionType?;
};

# An unique reference to an item or an occurrence of Syndicated Loan Application Procedure.
public type Procedure record {
    # ProcedureType
    Proceduretypevalues ProcedureType?;
    # The date when the identifier became valid.
    common:Datetime ProcedureDateTime?;
    # Request to process Syndicated Loan Application Procedure.
    # ProcedureRequest
    common:Instruction ProcedureRequest?;
    # Timetable to process Syndicated Loan Application Procedure.
    # ProcedureSchedule
    common:Schedule ProcedureSchedule?;
    # ProcedureStatus
    common:Status ProcedureStatus?;
};

# A Classification value that distinguishes between the type of process undertaken within Syndicated Loan Application Procedure.
public type Proceduretype record {
    # ProcedureTypeName
    common:Name ProcedureTypeName?;
    # ProcedureType
    Proceduretypevalues ProcedureType?;
};

# Complete work tasks following a defined procedure in support of general office activities and product and service delivery within Loan Syndication. 
public type SyndicatedLoanApplicationProcedure record {
    # >
    # * `FeeFeature` - This refers to the functionality in a system or platform that manages, calculates, or displays fees associated with specific transactions or services.
    # * `InterestFeature` - This feature calculates and tracks interest earnings or charges on accounts, loans, or investments over time.
    # * `WithdrawalFeature` - The withdraw feature typically refers to an option or functionality that allows users to retrieve or remove something from a system or platform.
    # * `DepositFeature` - This refers to a functionality that allows users to add funds to an account or system, often by transferring money from another source.
    # * `SweepFeature` - 
    # * `LienFeature` - 
    # * `PaymentFeature` - This refers to the functionality that facilitates or tracks the transfer of funds for a purchase or settlement of dues.
    # * `RepaymentFeature` - This feature facilitates or manages the process of paying back borrowed funds, such as loans, credit card balances, or advances.
    # * `LimitFeature` - This feature sets, monitors, or enforces restrictions on the maximum amount that can be accessed, spent, or transacted within a system.
    # * `OverdraftFeature` - This functionality allows users to withdraw more money than what is available in their account balance, often up to a predefined limit.
    # * `StatementFeature` - The statement feature refers to a functionality in banking, finance, or digital platforms that provides users with a detailed record of their transactions or activities over a specific period.
    # * `CurrencyExchangeFeature` - This feature enables users to convert funds from one currency to another at prevailing exchange rates, often within financial or payment platforms.
    # * `PriceFeature` - This feature involves displaying or managing the price of goods, services, or financial instruments within a platform.
    common:Featuretypevalues SyndicatedLoanApplicationProcedureParameterType?;
    # A selected optional business service as subject matter of Syndicated Loan Application Procedure.
    # SyndicatedLoanApplicationProcedureSelectedOption
    common:Feature SyndicatedLoanApplicationProcedureSelectedOption?;
    # Request to process Syndicated Loan Application Procedure.
    # SyndicatedLoanApplicationProcedureRequest
    common:Instruction SyndicatedLoanApplicationProcedureRequest?;
    # Timetable to process Syndicated Loan Application Procedure.
    # SyndicatedLoanApplicationProcedureSchedule
    common:Schedule SyndicatedLoanApplicationProcedureSchedule?;
    # SyndicatedLoanApplicationProcedureStatus
    common:Status SyndicatedLoanApplicationProcedureStatus?;
    # tReference to the organization or agency that issued the identifier (e.g., DMV, Passport Office).
    common:Involvedparty SyndicatedLoanApplicationProcedureAssociatedPartyReference?;
    # Reference to an entity that assigns and manages the identification.
    # tReference to the organization or agency that issued the identifier (e.g., DMV, Passport Office).
    common:Involvedparty SyndicatedLoanApplicationProcedureBusinessUnitReference?;
    # Reference to an entity that assigns and manages the identification.
    # tReference to the organization or agency that issued the identifier (e.g., DMV, Passport Office).
    common:Involvedparty SyndicatedLoanApplicationProcedureServiceProviderReference?;
    # Reference to the Financial Facility related to Syndicated Loan Application Procedure.
    # SyndicatedLoanApplicationProcedureFinancialFacilityReference
    common:FinancialFacility SyndicatedLoanApplicationProcedureFinancialFacilityReference?;
    # Reference to an entity that assigns and manages the identification.
    # tReference to the organization or agency that issued the identifier (e.g., DMV, Passport Office).
    common:Involvedparty SyndicatedLoanApplicationProcedureEmployeeReference?;
    # Reference to an entity that assigns and manages the identification.
    # tReference to the organization or agency that issued the identifier (e.g., DMV, Passport Office).
    common:Involvedparty SyndicatedLoanApplicationProcedureCustomerReference?;
    # A Classification value that distinguishes between the type of process undertaken within Syndicated Loan Application Procedure.
    # SyndicatedLoanApplicationProcedureType
    Proceduretype SyndicatedLoanApplicationProcedureType?;
    # Timetable to process Syndicated Loan Application Procedure.
    common:Schedule SyndicatedLoanApplicationProcedureServiceProviderSchedule?;
    # A Classification value that distinguishes between the type of services in Syndicated Loan Application Procedure.
    # SyndicatedLoanApplicationProcedureServiceType
    Servicetype SyndicatedLoanApplicationProcedureServiceType?;
    # A Classification value that distinguishes between the type of products/services related to Syndicated Loan Application Procedure.
    common:Bankingproducttype SyndicatedLoanApplicationProcedureProductandServiceType?;
    # Reference to the product or service that is related to Syndicated Loan Application Procedure.
    # SyndicatedLoanApplicationProcedureProductandServiceInstance
    common:Product SyndicatedLoanApplicationProcedureProductandServiceInstance?;
    # A Classification value that distinguishes between the type of transactions in Syndicated Loan Application Procedure.
    # SyndicatedLoanApplicationProcedureTransactionType
    Transactiontype SyndicatedLoanApplicationProcedureTransactionType?;
    # Reference to the transaction that is related to Syndicated Loan Application Procedure.
    common:Transaction SyndicatedLoanApplicationProcedureTransaction?;
    # Reference to the Financial Transaction Arrangement that is related to Syndicated Loan Application Procedure.
    # SyndicatedLoanApplicationProcedureFinancialTransactionArrangement
    common:Arrangement SyndicatedLoanApplicationProcedureFinancialTransactionArrangement?;
    # Reference to the Customer Agreement that is related to Syndicated Loan Application Procedure.
    # SyndicatedLoanApplicationProcedureCustomerAgreementReference
    common:Agreement SyndicatedLoanApplicationProcedureCustomerAgreementReference?;
    # An unique reference to an item or an occurrence of Syndicated Loan Application Procedure.
    # SyndicatedLoanApplicationProcedureReference
    Procedure SyndicatedLoanApplicationProcedureReference?;
};

# Reference to the bank's policies or rules
public type Policy record {
    # >
    # * `SecurityPolicy` - 
    # * `AdministrativePolicy` - 
    # * `SocialPolicy` - 
    # * `RegulatoryPolicy` - 
    common:Policytypevalues PolicyType?;
    # RuleSetDefinition
    string RuleSetDefinition?;
    # RuleSetInterpretation
    string RuleSetInterpretation?;
    # >
    # * `Policy` - Rule that governs business execution.
    #
    # The set of basic principles and associated guidelines, formulated and enforced by the governing body of an organization, to direct and limit its actions in pursuit of long-term goals. (Business Dictionary)
    #
    # * `Regulation` - A rule used to carry out a law (FIBO)
    #
    # Business Dictionary: a rule (with or without the coercive power of law) employed in controlling, directing, or managing an activity, organization, or system. 
    #
    # The set of rules and legislation governing certain actions. 
    # https://financial-dictionary.thefreedictionary.com/Regulatory
    # * `Law` - A binding rule that the courts will enforce.
    # A system of rules and guidelines which are enforced through social institutions to govern behavior. (FIBO)
    #
    # * `Guideline` - A recommended practice (adapted from Business Dictionary)
    # A general rule, principle, or piece of advice.
    # * `Criterion` - A principle or standard by which something may be judged or decided.
    #
    # Read more: http://www.businessdictionary.com/definition/criterion.html
    # * `Standard` - A rule considered by an authority or by general consent as a basis of comparison
    common:Rulesettypevalues RuleSetType?;
    # RuleSetName
    common:Name RuleSetName?;
    # RuleSetIdentification
    common:Identifier RuleSetIdentification?;
    # RuleSetLifecycleStatus
    common:Status RuleSetLifecycleStatus?;
};

# Maintain the terms and conditions that apply to a commercial relationship within Sales Product Agreement.
public type SalesProductAgreement record {
    # Reference to an entity that assigns and manages the identification.
    # tReference to the organization or agency that issued the identifier (e.g., DMV, Passport Office).
    common:Involvedparty CustomerReference?;
    # Reference to an entity that assigns and manages the identification.
    # tReference to the organization or agency that issued the identifier (e.g., DMV, Passport Office).
    common:Involvedparty LegalEntityReference?;
    # Reference to the specific product instance covered by the sales product agreement
    # ProductInstanceReference
    common:ProductAgreement ProductInstanceReference?;
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
    common:Agreementtypevalues AgreementType?;
    # The legal jurisdiction
    # AgreementJurisdiction
    common:Jurisdiction AgreementJurisdiction?;
    # Period of time during which the status is valid.
    # AgreementValidFromToDate
    common:Datetimeperiod AgreementValidFromToDate?;
    # Reference to signatories
    # AgreementSignatoriesResponsibleParties
    ProductAgreementInvolvement AgreementSignatoriesResponsibleParties?;
    # Reference to any associated documents
    common:DocumentDirectoryEntry DocumentDirectoryEntryInstanceReference?;
    # Reference to the customer master agreement that governs the product agreement
    # CustomerAgreementReference
    common:CustomerAgreement CustomerAgreementReference?;
    # Reference to KYC/Regulatory assessments maintained elsewhere for the customer
    # PartyLife\-cycleManagementReference
    common:PartyRelationshipLifecyclePhase PartyLife\-cycleManagementReference?;
    # Reference to the banking product (e.g., its features, terms and conditions)
    # BankingProductReference
    common:Product BankingProductReference?;
};

public type SalesProductAgreementOk record {|
    *http:Ok;
    # body
    SalesProductAgreement body;
|};

