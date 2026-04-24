import financial.bian.attribute.groups.common as common;

import ballerina/http;

public type CustomerCreditRatingStateOk record {|
    *http:Ok;
    # body
    CustomerCreditRatingState body;
|};

# The record of the underlying credit assessment performed to support the credit rating state
public type CustomerCreditRatingAssessment record {
    # CreditRatingAssessmentType
    string CreditRatingAssessmentType?;
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
    # The schedule for the upload of the data file/report
    common:Schedule AssessmentSchedule?;
    # AssessmentDescription
    string AssessmentDescription?;
    # AssessmentModel
    common:Model AssessmentModel?;
    # Date and time at which the range starts. (ISO20022)
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
    # Date on which the agreement was signed by all parties. (ISO20022)
    # AssessmentExpiryDate
    common:Date AssessmentExpiryDate?;
    # AssessmentStatus
    common:Status AssessmentStatus?;
    # AssessmentIdentification
    common:Identifier AssessmentIdentification?;
};

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

