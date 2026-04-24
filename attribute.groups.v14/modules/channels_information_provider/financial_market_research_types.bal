import financial.bian.attribute.groups.common as common;

import ballerina/http;

public type FinancialMarketResearchDirectoryEntryOk record {|
    *http:Ok;
    # body
    FinancialMarketResearchDirectoryEntry body;
|};

# Capture and maintain reference information about some type of entitity within Financial Market Research.
public type FinancialMarketResearchDirectoryEntry record {
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
    Marketresearchviewpointtypevalues FinancialMarketResearchViewpointType?;
    # A description of the available market research consolidated for this maintained viewpoint
    string FinancialMarketResearchViewpointDescription?;
    # The externally sourced reports that are used to assemble the research viewpoint
    FinancialMarketResearch ReferencedFinancialMarketResearchRecord?;
    # Reference to a specific type of predefined market research report or database
    common:MarketResearchReportType FinancialMarketResearchReportTypeReference?;
    # Describes the available market research report content (e.g. customer social network usage analysis)
    string FinancialMarketResearchReportTypeDefinition?;
    # Period of time during which the status is valid.
    common:Datetimeperiod FinancialMarketResearchReportVersionPeriod?;
    # Is the content of the report or database in any suitable form
    FinancialMarketResearchReport FinancialMarketResearchReport?;
    # Usage record of the research viewpoint
    string FinancialMarketResearchViewpointUsage?;
    # Details of the research request
    common:Instruction FinancialMarketResearchReportRequest?;
    # Reference to a Party who plays a  specific role in the context of assigning a status.
    common:Involvedparty EmployeeorBusinessUnitReference?;
};

# The externally sourced reports that are used to assemble the research viewpoint
public type FinancialMarketResearch record {
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
    common:Document AssessmentRepresentingDocument?;
    # Change that the assessment reveals is needed.
    string AssessmentRequiredAdjustment?;
    # AssessmentRequirement
    common:Requirement AssessmentRequirement?;
    # Date when the assessment expires. (ISO20022)
    common:Date AssessmentExpiryDate?;
    # AssessmentStatus
    common:Status AssessmentStatus?;
    # An identifier that allows to uniquely refer to an instance of a Document.
    common:Identifier AssessmentIdentification?;
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

# Is the content of the report or database in any suitable form
public type FinancialMarketResearchReport record {
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
    common:Datetimeperiod ReportValidityPeriod?;
    # ReportVersion
    string ReportVersion?;
    # ReportDateTime
    common:Datetime ReportDateTime?;
    # ReportFormat
    string ReportFormat?;
};
