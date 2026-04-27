import ballerina/http;
import financial.bian.attribute.groups.common as common;

// --- guideline_compliance_types.bal ---

public type GuidelineComplianceAssessmentOk record {|
    *http:Ok;
    # body
    GuidelineComplianceAssessment body;
|};

# To test or assess an entity, possibly against some formal qualification or certification requirement within Guideline Compliance. 
public type GuidelineComplianceAssessment record {
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
    common:Assessmenttypevalues GuidelineComplianceAssessmentType?;
    # The business function or unit assessed for compliance if appropriate
    common:BusinessUnit BusinessUnitReference?;
    # The associated product/service being assessed if appropriate
    common:Product ProductandServiceReference?;
    # Reference to an entity that assigns and manages the identification.
    # tReference to the organization or agency that issued the identifier (e.g., DMV, Passport Office).
    common:Involvedparty CustomerReference?;
    # Reference to any documentation classified/archived as appropriate
    common:Document DocumentReference?;
    # Work documentation, forms and schedules produced and referenced during the assessment
    common:Workproduct GuidelineComplianceAssessmentWorkProducts?;
    # Outcome/result of the assessment, can include remedial actions
    common:Assessment GuidelineComplianceAssessmentResult?;
};

// --- regulatory_compliance_types.bal ---

# To test or assess an entity, possibly against some formal qualification or certification requirement within Regulatory Compliance. 
public type RegulatoryComplianceAssessment record {
    # The type and make-up of regulatory tests referenced in the assessment
    string RegulatoryAssessmentType?;
    # Reference to the business function or unit assessed for compliance if applicable
    common:BusinessUnit BusinessUnitReference?;
    # Reference to the product or service being assessed, possibly in combination with the referenced customer and the referenced business unit
    common:Product ProductandServiceReference?;
    # Reference to an entity that assigns and manages the identification.
    # tReference to the organization or agency that issued the identifier (e.g., DMV, Passport Office).
    common:Involvedparty CustomerReference?;
    # Reference to the authority pertaining to the evaluated regulation
    common:RegulatoryAuthority RegulatoryAuthorityReference?;
    # Reference to the specific regulation against which the assessment is done
    common:Regulation RegulationReference?;
    # Description of the specific regulation against which the assessment is done
    string RegulationDefinition?;
    # Description of the measurements and reporting required to demonstrate compliance
    string RegulationComplianceandReportingRequirements?;
    # Reference to the business function or unit assessed for compliance if applicable
    common:BusinessUnit RegulationAccountability?;
    # Description of the implications of non-compliance
    string RegulationPenalties?;
    # Guidelines issued by the regulator about how to comply with the regulation
    Guideline RegulationGuideline?;
    # A reference to an instance in Document Directory
    common:Document DocumentReference?;
    # Work documentation, forms and schedules produced and referenced during the assessment
    common:Workproduct RegulatoryAssessmentWorkProducts?;
    # Description of the result of the assessment, can include remedial actions
    string RegulatoryAssessmentResult?;
    # RegulatoryComplianceAssessmentReference
    common:Identifier RegulatoryComplianceAssessmentReference?;
    # Reference to an entity that assigns and manages the identification.
    # tReference to the organization or agency that issued the identifier (e.g., DMV, Passport Office).
    common:Involvedparty AssessmentRequestor?;
    # The date when the identifier became valid.
    common:Datetime AssessmentStartDate?;
    # The date when the identifier became valid.
    common:Datetime AssessmentCompletionDate?;
    # >
    # * `Corporation` - Legal structure is a corporation.
    # * `Individual` - Legal structure is an individual.
    # * `Supranational` - Legal structure is a supranational.
    # * `Sovereign` - Legal structure is a sovereign.
    # * `Municipal` - Legal structure is a municipal.
    # * `Province` - Legal structure is a province.
    # * `State` - Legal structure is a state.
    # * `County` - Legal structure is a county.
    # * `Partnership` - Legal structure is a partnership.
    # * `Financialinstitution` - Legal structure is a financial institution.
    # * `National` - Legal structure is a state.
    common:Organisationlegalstructuretypevalues RegulationCustomerType?;
    # >
    # * `Resident` - 
    # * `Permanentresident` - 
    # * `Nonresident` - 
    Residentalstatustypevalues RegulationCustomerResidenceStatus?;
    # The date when the identifier became valid.
    common:Datetime RegulationValidfromDate?;
    # The date when the identifier became valid.
    common:Datetime RegulationValidtoDate?;
};

public type RegulatoryComplianceAssessmentOk record {|
    *http:Ok;
    # body
    RegulatoryComplianceAssessment body;
|};

# >
# * `Resident` - 
# * `Permanentresident` - 
# * `Nonresident` - 
public type Residentalstatustypevalues "Resident"|"Permanentresident"|"Nonresident";

# Guidelines issued by the regulator about how to comply with the regulation
public type Guideline record {
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

// --- regulatory_reporting_types.bal ---

public type RegulatoryComplianceAdministrativePlanOk record {|
    *http:Ok;
    # body
    RegulatoryComplianceAdministrativePlan body;
|};

# A collection of one or more clerical routines that are to be followed to administer the operational unit/function
#
# Examples: Time-sheet recording
public type Authoring record {
    # Details the production information/measurements required for reporting - includes reporting format
    string RegulatoryReportTypeComplianceReportingRequirements?;
    # Period of time during which the status is valid.
    common:Datetimeperiod ReportingPeriod?;
    # Refers to the company group or subsidiary covered by the regulatory report
    common:Organisation ReportingBusinessLegalEntityReference?;
    # The business unit being assessed for enquiry if appropriate
    common:BusinessUnit ReportingBusinessUnitReference?;
    # Refers to the regulatory report
    RegulatoryReport RegulatoryReportReference?;
    # Refers to the regulatory report
    RegulatoryReport RegulatoryReport?;
    # The document reference for all classified/archived documents from the enquiry
    common:Document RegulatoryReportDocumentReference?;
};

# Refers to the regulatory report
public type RegulatoryReport record {
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
    # The date when the identifier became valid.
    common:Datetime ReportDateTime?;
    # ReportFormat
    string ReportFormat?;
};

# A collection of one or more clerical routines that are to be followed to administer the operational unit/function
#
# Examples: Time-sheet recording
public type Consolidation record {
    # Description of the source content required for a report type
    string RegulatoryReportTypeContentRequirements?;
    # Reference to an entity that assigns and manages the identification.
    # tReference to the organization or agency that issued the identifier (e.g., DMV, Passport Office).
    common:Involvedparty SourceBusinessUnitorEmployeeReference?;
    # The instances of products/services being assessed if appropriate
    common:Product SourceProductandServiceReference?;
    # Reference to an entity that assigns and manages the identification.
    # tReference to the organization or agency that issued the identifier (e.g., DMV, Passport Office).
    common:Involvedparty SourceCustomerReference?;
    # The possibly extensive collection of production transaction records assembled for reporting
    string SourceTransactionRecords?;
};

# Handle and assign the day to day activities, capture time, costs and income for an operational unit within Regulatory Reporting. 
public type RegulatoryComplianceAdministrativePlan record {
    # Reference to the interested regulatory reporting authority
    common:RegulatoryAuthority RegulatoryAuthorityReference?;
    # The details of all regulatory reporting requirements and scheduled reporting tasks
    common:Schedule RegulatoryReportingSchedule?;
    # Reference to the regulation for which content is being collected
    common:Regulation RegulationReference?;
    # >
    # * `FinancialReport` - 
    # * `BusinessReport` - 
    # * `ManagementReport` - 
    # * `Statement` - 
    # * `MaintenanceReport` - 
    # * `RegulatoryReport` - 
    # * `TaxReport` - 
    # * `AnalysisReport` - 
    common:Reporttypevalues RegulatoryReportType?;
};

# A collection of one or more clerical routines that are to be followed to administer the operational unit/function
#
# Examples: Time-sheet recording
public type Enquiries record {
    # The description of the requested information for the regulatory enquiry
    string RegulatoryEnquiry?;
    # The business unit being assessed for enquiry if appropriate
    common:BusinessUnit EnquiryBusinessUnitReference?;
    # The instances of products/services being assessed if appropriate
    common:Product EnquiryProductandServiceReference?;
    # Reference to an entity that assigns and manages the identification.
    # tReference to the organization or agency that issued the identifier (e.g., DMV, Passport Office).
    common:Involvedparty EnquiryCustomerReference?;
    # The possibly extensive collection of production transaction records assembled for the enquiry
    string EnquiryTransactionRecords?;
    # Work documentation, forms and schedules produced and referenced during the enquiry
    common:Workproduct RegulatoryEnquiryWorkProducts?;
    # The record or report that is the outcome/result of the enquiry
    string RegulatoryEnquiryResult?;
    # The document reference for all classified/archived documents from the enquiry
    common:Document RegulatoryEnquiryDocumentReference?;
};
