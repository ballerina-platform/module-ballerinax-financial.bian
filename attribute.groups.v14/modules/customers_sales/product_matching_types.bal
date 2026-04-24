import financial.bian.attribute.groups.common as common;

import ballerina/http;

public type ProductTypeSelectionOk record {|
    *http:Ok;
    # body
    ProductTypeSelection body;
|};

public type ProducttoCustomerCombinationAssessmentOk record {|
    *http:Ok;
    # body
    ProducttoCustomerCombinationAssessment body;
|};

public type ProductEligibilityOk record {|
    *http:Ok;
    # body
    ProductEligibility body;
|};

# The Product Eligibility test is one aspect that can be intergrated into the overall Product Eligibility
public type ProductEligibility record {
    # The required status/situation before the test can be applied
    common:Condition Preconditions?;
    # The schedule and timing of the testing performed
    # Schedule
    common:Schedule Schedule?;
    # The test version employed
    # VersionNumber
    string VersionNumber?;
    # The Product Eligibility specific Business Service
    common:BusinessService BusinessService?;
    # Reference to Product Eligibility
    # ProductCustomerCombinationAssessmentReference
    common:Assessment ProductCustomerCombinationAssessmentReference?;
    # Reference to Product Eligibility
    # ProductEligibilityReference
    common:Test ProductEligibilityReference?;
    # The type of Product Eligibility
    # ProductEligibilityType
    string ProductEligibilityType?;
};

public type BankandCampaignAlignmentOk record {|
    *http:Ok;
    # body
    BankandCampaignAlignment body;
|};

# The Product Eligibility test is one aspect that can be intergrated into the overall Product Eligibility
public type BankandCampaignAlignment record {
    # The required status/situation before the test can be applied
    common:Condition Preconditions?;
    # The schedule and timing of the testing performed
    # Schedule
    common:Schedule Schedule?;
    # The test version employed
    # VersionNumber
    string VersionNumber?;
    # The Product Eligibility specific Business Service
    common:BusinessService BusinessService?;
    # Reference to Product Eligibility
    # ProductCustomerCombinationAssessmentReference
    common:Assessment ProductCustomerCombinationAssessmentReference?;
    # Reference to Product Eligibility
    # BankandCampaignAlignmentReference
    common:Test BankandCampaignAlignmentReference?;
    # The type of Bank and Campaign Alignment
    # BankandCampaignAlignmentType
    string BankandCampaignAlignmentType?;
};

public type ContextCriteriaOk record {|
    *http:Ok;
    # body
    ContextCriteria body;
|};

# The Product Eligibility test is one aspect that can be intergrated into the overall Product Eligibility
public type ContextCriteria record {
    # The required status/situation before the test can be applied
    common:Condition Preconditions?;
    # The schedule and timing of the testing performed
    # Schedule
    common:Schedule Schedule?;
    # The test version employed
    # VersionNumber
    string VersionNumber?;
    # The Product Eligibility specific Business Service
    common:BusinessService BusinessService?;
    # Reference to Product Eligibility
    # ProductCustomerCombinationAssessmentReference
    common:Assessment ProductCustomerCombinationAssessmentReference?;
    # Reference to Product Eligibility
    # ContextCriteriaReference
    common:Test ContextCriteriaReference?;
    # The type of Context Criteria
    # ContextCriteriaType
    string ContextCriteriaType?;
};

# To test or assess an entity, possibly against some formal qualification or certification requirement within Product Matching. 
public type ProducttoCustomerCombinationAssessment record {
    # A Classification value that distinguishes between Assessments according to type of concern defined within Product/ Customer Combination Assessment .
    string ProductCustomerCombinationAssessmentParameterType?;
    # A selected optional business service as subject matter of Product/ Customer Combination Assessment
    common:Service ProductCustomerCombinationAssessmentSelectedOption?;
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
    common:Assessmenttypevalues ProductCustomerCombinationAssessmentType?;
    # Reference to Product Eligibility
    # ProductCustomerCombinationAssessmentReference
    common:Assessment ProductCustomerCombinationAssessmentReference?;
    # Request to assess
    # ProductCustomerCombinationAssessmentRequest
    common:Instruction ProductCustomerCombinationAssessmentRequest?;
    # The schedule and timing of the testing performed
    # ProductCustomerCombinationAssessmentSchedule
    common:Schedule ProductCustomerCombinationAssessmentSchedule?;
    # ProductCustomerCombinationAssessmentStatus
    common:Status ProductCustomerCombinationAssessmentStatus?;
    # ProductCustomerCombinationAssessmentUsageLog
    common:Log ProductCustomerCombinationAssessmentUsageLog?;
    # tReference to the organization or agency that issued the identifier (e.g., DMV, Passport Office).
    common:Involvedparty ProductCustomerCombinationAssessmentRequesterReference?;
    # Reference to an entity that assigns and manages the identification.
    # tReference to the organization or agency that issued the identifier (e.g., DMV, Passport Office).
    common:Involvedparty ProductCustomerCombinationAssessmentAssociatedParty?;
    # Reference to an entity that assigns and manages the identification.
    # tReference to the organization or agency that issued the identifier (e.g., DMV, Passport Office).
    common:Involvedparty ProductCustomerCombinationAssessmentServiceProviderReference?;
};

# The Product Eligibility test is one aspect that can be intergrated into the overall Product Eligibility
public type ProductTypeSelection record {
    # The required status/situation before the test can be applied
    common:Condition Preconditions?;
    # The schedule and timing of the testing performed
    # Schedule
    common:Schedule Schedule?;
    # The test version employed
    # VersionNumber
    string VersionNumber?;
    # The Product Eligibility specific Business Service
    common:BusinessService BusinessService?;
    # Reference to Product Eligibility
    # ProductCustomerCombinationAssessmentReference
    common:Assessment ProductCustomerCombinationAssessmentReference?;
    # Reference to Product Eligibility
    # ProductTypeSelectionReference
    common:Test ProductTypeSelectionReference?;
    # The type of Product Type Selection
    # ProductTypeSelectionType
    string ProductTypeSelectionType?;
};

