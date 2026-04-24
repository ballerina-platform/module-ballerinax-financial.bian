import financial.bian.attribute.groups.common as common;

import ballerina/http;

# To test or assess an entity, possibly against some formal qualification or certification requirement within Card Authorization. 
public type CreditCardAuthorizationAssessment record {
    # Reference to the network the card transaction is handled by as recorded with the transaction ||
    # |
    common:cardnetwork NetworkReference?;
    # The identity of the account holder submitting the transaction ||
    # |
    common:involvedparty ParticipantAcquirerBankReference?;
    # The identity of the account holder submitting the transaction ||
    # |
    common:involvedparty ParticipantIssuerBankReference?;
    # The type of transaction (purchase, cash advance, etc.) CardPayment|CardPayment (https://www.iso20022.org/standardsrepository/type/CardPayment)|Standard|ISO20022 BM ()
    common:cardpaymenttransaction CardTransactionRecord?;
    # The account number associated with the card transaction ||
    # |
    common:ProductAgreement CardTransactionProductInstanceReference?;
    # The identity of the account holder submitting the transaction ||
    # |
    common:involvedparty CardHolderReference?;
    # Reference to the issued device submitted to authorize the transaction (e.g. card number) ||
    # |
    common:Device CardTransactionIssuedDeviceReference?;
    # Reference to the network the card transaction is handled by as recorded with the transaction ||
    # |
    common:cardnetwork CardTransactionNetworkReference?;
    # Refers to the merchant initiating settlement CardPaymentPartyRole|CardPaymentPartyRole (https://www.iso20022.org/standardsrepository/type/CardPaymentPartyRole)|Standard|ISO20022 BM ()
    common:cardpaymenttransactioninvolvement CardTransactionIssuingBankReference?;
    # Refers to the merchant initiating settlement CardPaymentPartyRole|CardPaymentPartyRole (https://www.iso20022.org/standardsrepository/type/CardPaymentPartyRole)|Standard|ISO20022 BM ()
    common:cardpaymenttransactioninvolvement CardTransactionMerchantAcquiringBankReference?;
    # The type of transaction (purchase, cash advance, etc.) CardPayment|CardPayment (https://www.iso20022.org/standardsrepository/type/CardPayment)|Standard|ISO20022 BM ()
    common:cardpaymenttransaction CardTransactionType?;
    # The currency that the transaction is made in CurrencyCode|CurrencyCode (https://www.iso20022.org/standardsrepository/type/CurrencyCode)|Standard|ISO20022 BM ()
    common:currencycode CardTransactionCurrency?;
    # Type of amount (e.g. original amount, billing currency amount, conversion rate, FX Mark-up) TypeOfAmountCode|TypeOfAmountCode (https://www.iso20022.org/standardsrepository/type/TypeOfAmountCode)|Standard|ISO20022 BM ()
    common:amounttypevalues CardTransactionAmountType?;
    # The amount corresponding to the type CurrencyAndAmount|CurrencyAndAmount (https://www.iso20022.org/standardsrepository/type/CurrencyAndAmount)|Standard|ISO20022  ()
    common:amount CardTransactionAmount?;
    # Refers to the merchant initiating settlement CardPaymentPartyRole|CardPaymentPartyRole (https://www.iso20022.org/standardsrepository/type/CardPaymentPartyRole)|Standard|ISO20022 BM ()
    common:cardpaymenttransactioninvolvement CardTransactionMerchantReference?;
    # Refers to the point of sale location Location|Location (https://www.iso20022.org/standardsrepository/type/Location)|Standard|ISO20022 BM  ()
    common:location CardTransactionLocationReference?;
    # Details of the transaction (e.g. purchased service/product, purpose) Product_x000D_
    # |Product (https://www.iso20022.org/standardsrepository/type/Product)|Standard|ISO20022 BM ()
    common:bankingproduct CardTransactionProductandServiceReference?;
    # Significant dates and times associated with the transaction
    string CardTransactionDateandTime?;
    # The applied intercharge fee Adjustment|Adjustment (https://www.iso20022.org/standardsrepository/type/Adjustment)|Standard|ISO20022 BM ()
    common:feearrangement CardTransactionFXConversionCharge?;
    # The applied intercharge fee Adjustment|Adjustment (https://www.iso20022.org/standardsrepository/type/Adjustment)|Standard|ISO20022 BM ()
    common:feearrangement CardTransactionInterchargeFee?;
    # Details the reference, amount, timestamp of the transaction authorization CardPaymentValidation|CardPaymentValidation (https://www.iso20022.org/standardsrepository/type/CardPaymentValidation)|Standard|ISO20022 BM ()
    common:cardpaymentauthorization CardTransactionAuthorizationRecord?;
};

public type AuthorizationOk record {|
    *http:Ok;
    Authorization body;
|};

public type model record {
    # The particular date and time point in the progression of time
    common:text ModelType?;
    # The particular date and time point in the progression of time
    common:text ModelPurpose?;
    # The particular date and time point in the progression of time
    common:text ModelVersion?;
    # Name by which a party is known and which is usually used to identify that party. (ISO20022)
    common:name ModelName?;
    common:datetime ModelDateAndTime?;
    # Refers to the lifecycle of a Condition
    common:status ModelStatus?;
};

# The <BQ> test is one aspect that can be intergrated into the overall <CR>
public type Authorization record {
    # The required status/situation before the test can be applied
    common:condition Preconditions?;
    # The schedule and timing of the testing performed
    common:schedule Schedule?;
    # The test version employed
    string VersionNumber?;
    # The <BQ> specific Business Service
    common:businessservice BusinessService?;
    # Reference to the Credit Card Authorization Assessment
    assessment CreditCardAuthorizationAssessmentReference?;
    # Reference to Authorization
    common:authorization AuthorizationReference?;
    # The particular date and time point in the progression of time
    common:text AuthorizationType?;
};

# The <BQ> test is one aspect that can be intergrated into the overall <CR>
public type StandIn record {
    # Refers to the file where lost/stolen card details are maintained. This is a file accessed using external service access
    string NegativeFileReference?;
    # Reference to Authorization
    common:authorization CardAccountStandInAuthorizationResult?;
};

# >
# * `AssetValuation` - 
# * `ProductMatching` - 
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
public type assessmenttypevalues "AssetValuation"|"ProductMatching"|"Authorization"|"Authentication"|"QualityAssurance"|"Audit"|"ComplianceCheck"|"FundingCheck"|"SuitabilityCheck"|"PerformanceCheck"|"ImpactAssessment"|"RiskAssessment"|"Rating"|"UnderwritingAssessment"|"Qualification"|"Verification"|"KYCAssessment"|"PEPAssessment"|"AMLAssessment";

# >
# * `Denial` - The authentication didn’t succeed.
# * `Nonparticipation` - The card does not participate in the authentication programme.
# * `Unabletoauthenticate` - The authentication couldn’t be carried out.
# * `Merchantnotenroled` - Merchant not enrolled in the authentication programme.
# * `Withcryptogram` - Authentication succeeded with a cryptogram.
# * `Withoutcryptogram` - Authentication succeeded without a cryptogram.
public type authenticationresulttypevalues "Denial"|"Nonparticipation"|"Unabletoauthenticate"|"Merchantnotenroled"|"Withcryptogram"|"Withoutcryptogram";

# Reference to the Credit Card Authorization Assessment
public type assessment record {
    # >
    # * `AssetValuation` - 
    # * `ProductMatching` - 
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
    assessmenttypevalues AssessmentType?;
    # The particular date and time point in the progression of time
    common:text AssessmentMethod?;
    # The schedule and timing of the testing performed
    common:schedule AssessmentSchedule?;
    # The particular date and time point in the progression of time
    common:text AssessmentDescription?;
    # The model used for the assessment
    model AssessmentModel?;
    # The particular date and time point in the progression of time
    common:datetime AssessmentDateTime?;
    # The particular date and time point in the progression of time
    common:text AssessmentResult?;
    # Document that provides background or corroborating information regarding an assessment(s).
    common:Document AssessmentSupportingDocument?;
    # Document that provides background or corroborating information regarding an assessment(s).
    common:Document AssessmentRepresentingDocument?;
    # The particular date and time point in the progression of time
    common:text AssessmentRequiredAdjustment?;
    # The requirement details for the assessment
    requirement AssessmentRequirement?;
    # Date when the assessment expires. (ISO20022)
    common:Date AssessmentExpiryDate?;
    # Refers to the lifecycle of a Condition
    common:status AssessmentStatus?;
};

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
public type testtypevalues "ProductEligibilityTest"|"NextBestProductTest"|"IssuedDeviceTest"|"CardHolderAuthenticationTest"|"CardFundsAvailableTest"|"CardTransactionFraudTest"|"CardStand-InAuthorizationTest"|"ExternalAccessRequestTest"|"SuitabilityTest"|"LegalComplianceTest"|"RegulatoryComplianceTest"|"SystemFunctionalTest"|"SystemProductionTest"|"SystemBusinessRiskTest"|"SystemOperationsTest"|"CreditPolicyComplianceTest"|"RuleSetAndDecisionTreeTest"|"ModelBasedTests"|"AssetAndLiabilityValuationTest"|"LiquidityAndCashFlowTest"|"RiskTest"|"SensitivityTest";

# Result of the fraud check
public type test record {
    # The particular date and time point in the progression of time
    common:text TestResult?;
    # The particular date and time point in the progression of time
    common:text TestGuidance?;
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
    testtypevalues TestType?;
    # The particular date and time point in the progression of time
    common:text TestDescription?;
};

# The <BQ> test is one aspect that can be intergrated into the overall <CR>
public type CreditCheck record {
    # Result of the fraud check
    test CardAccountavailablebalancecheckresult?;
};

# Use if customer details/questions used to verify identity
public type cardpaymentauthentication record {
    # The identity of the account holder submitting the transaction ||
    # |
    common:involvedparty CardHolder?;
};

# The <BQ> test is one aspect that can be intergrated into the overall <CR>
public type FraudCheck record {
    # Result of the fraud check
    test FraudCheckResult?;
};

# The <BQ> test is one aspect that can be intergrated into the overall <CR>
public type DeviceCheck record {
    # The particular date and time point in the progression of time
    common:text IssuedDeviceSecurityCode?;
    # The particular date and time point in the progression of time
    common:text IssuedDeviceCryptogram?;
    # The particular date and time point in the progression of time
    common:text IssuedDeviceCVV?;
    # The particular date and time point in the progression of time
    common:text IssuedDeviceBIN?;
    # Result of the fraud check
    test IssuedDeviceCheckDigit?;
    # Result of the fraud check
    test IssuedDeviceValidThrough?;
    # Result of the fraud check
    test IssuedDeviceCheckResult?;
};

public type CreditCardAuthorizationAssessmentOk record {|
    *http:Ok;
    CreditCardAuthorizationAssessment body;
|};

public type requirement record {
    string RequirementType?;
};
