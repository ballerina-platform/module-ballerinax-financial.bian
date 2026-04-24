import financial.bian.attribute.groups.common as common;

import ballerina/http;

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

