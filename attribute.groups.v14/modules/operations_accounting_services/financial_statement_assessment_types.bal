import financial.bian.attribute.groups.common as common;

import ballerina/http;

public type SensitivityTestOk record {|
    *http:Ok;
    SensitivityTest body;
|};

public type LiquidityandCashFlowTestOk record {|
    *http:Ok;
    LiquidityandCashFlowTest body;
|};

public type RiskTestOk record {|
    *http:Ok;
    RiskTest body;
|};

public type AssetandLiabilityValuationTestOk record {|
    *http:Ok;
    AssetandLiabilityValuationTest body;
|};

public type FinancialStatementAssessmentOk record {|
    *http:Ok;
    FinancialStatementAssessment body;
|};

# The Liquidity and Cash Flow Test test is one aspect that can be intergrated into the overall Liquidity and Cash Flow Test
public type SensitivityTest record {
    # The required status/situation before the test can be applied
    common:Condition Preconditions?;
    # The schedule and timing of the testing performed
    common:Schedule Schedule?;
    # The test version employed
    string VersionNumber?;
    # The Liquidity and Cash Flow Test specific Business Service
    common:BusinessService SensitivityTestService?;
    # Reference to Liquidity and Cash Flow Test
    common:Assessment FinancialStatementAssessmentReference?;
    # Reference to Liquidity and Cash Flow Test
    common:Test SensitivityTestReference?;
    # >
    # * `ProductEligibilityTest` - 
    # * `NextBestProductTest` - 
    # * `IssuedDeviceTest` - 
    # * `CardHolderAuthenticationTest` - 
    # * `CardFundsAvailableTest` - 
    # * `CardTransactionFraudTest` - 
    # * `CardStand-InAuthorizationTest` - 
    # * `ExternalAccessRequestTest` - 
    # * `SuitabilityTest` - 
    # * `LegalComplianceTest` - 
    # * `RegulatoryComplianceTest` - 
    # * `SystemFunctionalTest` - 
    # * `SystemProductionTest` - 
    # * `SystemBusinessRiskTest` - 
    # * `SystemOperationsTest` - 
    # * `CreditPolicyComplianceTest` - 
    # * `RuleSetAndDecisionTreeTest` - 
    # * `ModelBasedTests` - 
    # * `AssetAndLiabilityValuationTest` - 
    # * `LiquidityAndCashFlowTest` - 
    # * `RiskTest` - 
    # * `SensitivityTest` - 
    common:Testtypevalues SensitivityTestType?;
};

# The Liquidity and Cash Flow Test test is one aspect that can be intergrated into the overall Liquidity and Cash Flow Test
public type LiquidityandCashFlowTest record {
    # The required status/situation before the test can be applied
    common:Condition Preconditions?;
    # The schedule and timing of the testing performed
    common:Schedule Schedule?;
    # The test version employed
    string VersionNumber?;
    # The Liquidity and Cash Flow Test specific Business Service
    common:BusinessService LiquidityandCashFlowTestService?;
    # Reference to Liquidity and Cash Flow Test
    common:Assessment FinancialStatementAssessmentReference?;
    # Reference to Liquidity and Cash Flow Test
    common:Test LiquidityandCashFlowTestReference?;
    # >
    # * `ProductEligibilityTest` - 
    # * `NextBestProductTest` - 
    # * `IssuedDeviceTest` - 
    # * `CardHolderAuthenticationTest` - 
    # * `CardFundsAvailableTest` - 
    # * `CardTransactionFraudTest` - 
    # * `CardStand-InAuthorizationTest` - 
    # * `ExternalAccessRequestTest` - 
    # * `SuitabilityTest` - 
    # * `LegalComplianceTest` - 
    # * `RegulatoryComplianceTest` - 
    # * `SystemFunctionalTest` - 
    # * `SystemProductionTest` - 
    # * `SystemBusinessRiskTest` - 
    # * `SystemOperationsTest` - 
    # * `CreditPolicyComplianceTest` - 
    # * `RuleSetAndDecisionTreeTest` - 
    # * `ModelBasedTests` - 
    # * `AssetAndLiabilityValuationTest` - 
    # * `LiquidityAndCashFlowTest` - 
    # * `RiskTest` - 
    # * `SensitivityTest` - 
    common:Testtypevalues LiquidityandCashFlowTestType?;
};

# The Liquidity and Cash Flow Test test is one aspect that can be intergrated into the overall Liquidity and Cash Flow Test
public type AssetandLiabilityValuationTest record {
    # The required status/situation before the test can be applied
    common:Condition Preconditions?;
    # The schedule and timing of the testing performed
    common:Schedule Schedule?;
    # The test version employed
    string VersionNumber?;
    # The Liquidity and Cash Flow Test specific Business Service
    common:BusinessService AssetandLiabilityValuationTestService?;
    # Reference to Liquidity and Cash Flow Test
    common:Assessment FinancialStatementAssessmentReference?;
    # Reference to Liquidity and Cash Flow Test
    common:Test AssetandLiabilityValuationTestReference?;
    # >
    # * `ProductEligibilityTest` - 
    # * `NextBestProductTest` - 
    # * `IssuedDeviceTest` - 
    # * `CardHolderAuthenticationTest` - 
    # * `CardFundsAvailableTest` - 
    # * `CardTransactionFraudTest` - 
    # * `CardStand-InAuthorizationTest` - 
    # * `ExternalAccessRequestTest` - 
    # * `SuitabilityTest` - 
    # * `LegalComplianceTest` - 
    # * `RegulatoryComplianceTest` - 
    # * `SystemFunctionalTest` - 
    # * `SystemProductionTest` - 
    # * `SystemBusinessRiskTest` - 
    # * `SystemOperationsTest` - 
    # * `CreditPolicyComplianceTest` - 
    # * `RuleSetAndDecisionTreeTest` - 
    # * `ModelBasedTests` - 
    # * `AssetAndLiabilityValuationTest` - 
    # * `LiquidityAndCashFlowTest` - 
    # * `RiskTest` - 
    # * `SensitivityTest` - 
    common:Testtypevalues AssetandLiabilityValuationTestType?;
};

# The Liquidity and Cash Flow Test test is one aspect that can be intergrated into the overall Liquidity and Cash Flow Test
public type RiskTest record {
    # The required status/situation before the test can be applied
    common:Condition Preconditions?;
    # The schedule and timing of the testing performed
    common:Schedule Schedule?;
    # The test version employed
    string VersionNumber?;
    # The Liquidity and Cash Flow Test specific Business Service
    common:BusinessService RiskTestService?;
    # Reference to Liquidity and Cash Flow Test
    common:Assessment FinancialStatementAssessmentReference?;
    # Reference to Liquidity and Cash Flow Test
    common:Test RiskTestReference?;
    # >
    # * `ProductEligibilityTest` - 
    # * `NextBestProductTest` - 
    # * `IssuedDeviceTest` - 
    # * `CardHolderAuthenticationTest` - 
    # * `CardFundsAvailableTest` - 
    # * `CardTransactionFraudTest` - 
    # * `CardStand-InAuthorizationTest` - 
    # * `ExternalAccessRequestTest` - 
    # * `SuitabilityTest` - 
    # * `LegalComplianceTest` - 
    # * `RegulatoryComplianceTest` - 
    # * `SystemFunctionalTest` - 
    # * `SystemProductionTest` - 
    # * `SystemBusinessRiskTest` - 
    # * `SystemOperationsTest` - 
    # * `CreditPolicyComplianceTest` - 
    # * `RuleSetAndDecisionTreeTest` - 
    # * `ModelBasedTests` - 
    # * `AssetAndLiabilityValuationTest` - 
    # * `LiquidityAndCashFlowTest` - 
    # * `RiskTest` - 
    # * `SensitivityTest` - 
    common:Testtypevalues RiskTestType?;
};

# To test or assess an entity, possibly against some formal qualification or certification requirement within Financial Statement Assessment. 
public type FinancialStatementAssessment record {
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
    common:Featuretypevalues FinancialStatementAssessmentParameterType?;
    # A selected optional business service as subject matter of Financial Statement Assessment
    common:Service FinancialStatementAssessmentSelectedOption?;
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
    common:Assessmenttypevalues FinancialStatementAssessmentType?;
    # Reference to Liquidity and Cash Flow Test
    common:Assessment FinancialStatementAssessmentReference?;
    # Request to assess
    common:Instruction FinancialStatementAssessmentRequest?;
    # The schedule and timing of the testing performed
    common:Schedule FinancialStatementAssessmentSchedule?;
    # FinancialStatementAssessmentStatus
    common:Status FinancialStatementAssessmentStatus?;
    # FinancialStatementAssessmentUsageLog
    common:Log FinancialStatementAssessmentUsageLog?;
    # Reference to an entity that assigns and manages the identification.
    # tReference to the organization or agency that issued the identifier (e.g., DMV, Passport Office).
    common:Involvedparty FinancialStatementAssessmentRequesterReference?;
    # Reference to an entity that assigns and manages the identification.
    # tReference to the organization or agency that issued the identifier (e.g., DMV, Passport Office).
    common:Involvedparty FinancialStatementAssessmentAssociatedParty?;
    # Reference to an entity that assigns and manages the identification.
    # tReference to the organization or agency that issued the identifier (e.g., DMV, Passport Office).
    common:Involvedparty FinancialStatementAssessmentServiceProviderReference?;
};
