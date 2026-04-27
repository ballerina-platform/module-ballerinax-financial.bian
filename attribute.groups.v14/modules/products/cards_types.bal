import ballerina/http;
import financial.bian.attribute.groups.common as common;

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

# The product features/services available with a financical facility
public type ParticipantService record {
    # Reference to the service request made by the network participant
    cardnetworkparticpantservice ParticipantServiceRecord?;
    # >
    # * `ITService` - 
    # * `AdministrativeService` - 
    # * `SystemService` - 
    # * `FinancialService` - 
    # * `InformationService` - 
    # * `BusinessService` - 
    common:Servicetypevalues NetworkParticipantServiceType?;
    # Details of service charge levied against the Network Participant Facility
    common:feearrangement NetworkParticipantServiceCharge?;
    # Key dates and times associated with the provision of the service (e.g. initiation of service fulfillment)
    string NetworkParticipantServiceDateandTime?;
    # Work documentation, forms and schedules produced and referenced during the network service delivery (includes charges, service activity log and results etc.)
    common:workproduct NetworkParticipantNetworkServiceRequestWorkProduct?;
    # The particular date and time point in the progression of time
    common:text NetworkParticipantNetworkServiceRequestResult?;
};

# Defines the card clearing fees/terms in force ||
# |
public type cardclearingarrangement record {
    # An arrangement (obligation and right) defined for doing the clearing of a card based transaction or a batch of card based transactions.
    string CardClearingArrangement?;
};

# The product features/services available with a financical facility
public type ParticipantAccount record {
    # Reference to the posting transaction against the network participant account
    'common:Transaction ParticipantAccountPostingTransaction?;
    # The particular date and time point in the progression of time
    common:text NetworkParticipantFacilityAccountPostingPurpose?;
    # Posted amount  (probably captured as a credit/debit pair)
    common:amount NetworkParticipantFacilityAccountPostingAmount?;
    # The value date for the account posting transaction
    common:datetime NetworkParticipantFacilityAccountPostingValueDate?;
    # The particular date and time point in the progression of time
    common:text NetworkParticipantFacilityAccountPostingResult?;
};

# Fulfill any scheduled and ad-hoc obligations under a service arrangement, most typically for a financial product or facility within Card Network Participant Facility. 
public type CardNetworkParticipantFacility record {
    # Reference to the participant facility product instance Product_x000D_
    # |Product (https://www.iso20022.org/standardsrepository/type/Product)|Standard|ISO20022 BM ()
    common:bankingproduct ProductandServiceReference?;
    # Reference to the Issuing bank for which the Network orchestrates clearing and settlement processing ||
    # |
    common:involvedparty CustomerReference?;
    # Reference to the legal entity (typically the customer) Party|Party (https://www.iso20022.org/standardsrepository/type/Party)|Standard|ISO20022BM ()
    common:party PartyReference?;
    # The operational configuration terms/options that govern the participant facility arrangement Obligation|Obligation (https://www.iso20022.org/standardsrepository/type/Obligation)|Standard|ISO20022 BM ()
    common:Arrangement FacilityTerms?;
    # Reference to the Issuing bank for which the Network orchestrates clearing and settlement processing ||
    # |
    common:involvedparty ParticipantAcquirerBankReference?;
    # Defines the card clearing fees/terms in force ||
    # |
    cardclearingarrangement ParticipantAcquirerBankClearingandSettlementTerms?;
    # Defines the tasks and processing schedule for the participant) ||
    # |
    common:schedule ParticipantAcquirerBankServiceSchedule?;
    # Reference to the Issuing bank for which the Network orchestrates clearing and settlement processing ||
    # |
    common:involvedparty ParticipantIssuerBankReference?;
    # Defines the card clearing fees/terms in force ||
    # |
    cardclearingarrangement ParticipantIssuerBankClearingandSettlementTerms?;
    # Defines the tasks and processing schedule for the participant) ||
    # |
    common:schedule ParticipantIssuerBankServiceSchedule?;
};

# Reference to the service request made by the network participant
public type cardnetworkparticpantservice record {
    # The type of Network Participant Service  (e.g. merchant alert, chargeback arbitration, chargeback reduction)
    string NetworkParticipantServiceType?;
    # Details of service charge levied against the Network Participant Facility.
    string NetworkParticipantServiceCharge?;
    # Key dates and times associated with the provision of the service (e.g. initiation of service fulfillment)
    string NetworkParticipantServiceDate\/Time?;
};

public type CardNetworkParticipantFacilityOk record {|
    *http:Ok;
    CardNetworkParticipantFacility body;
|};

public type InitiateCardFinancialCaptureTransactionResponseOk record {|
    *http:Ok;
    InitiateCardFinancialCaptureTransactionResponse body;
|};

# Output: ExCR Execute an available automated action for Credit Charge Card Financial Capture Transaction
public type ExecuteCardFinancialCaptureTransactionResponse record {
    # The card financial capture transaction details
    ControlCardFinancialCaptureTransactionResponse_CardFinancialCaptureTransaction CardFinancialCaptureTransaction?;
};

# Input: EcCR Accept, verify, etc. aspects of Credit Charge Card Financial Capture Transaction processing
public type ExchangeCardFinancialCaptureTransactionRequest record {
    # The card financial capture transaction details
    ControlCardFinancialCaptureTransactionRequest_CardFinancialCaptureTransaction CardFinancialCaptureTransaction?;
};

# Input: ExCR Execute an available automated action for Credit Charge Card Financial Capture Transaction
public type ExecuteCardFinancialCaptureTransactionRequest record {
    # The card financial capture transaction details
    ControlCardFinancialCaptureTransactionRequest_CardFinancialCaptureTransaction CardFinancialCaptureTransaction?;
};

# Output: CoCR Control the processing of Credit Charge Card Financial Capture Transaction
public type ControlCardFinancialCaptureTransactionResponse record {
    # The card financial capture transaction details
    ControlCardFinancialCaptureTransactionResponse_CardFinancialCaptureTransaction CardFinancialCaptureTransaction?;
};

# Input: UpCR Update details relating to Credit Charge Card Financial Capture Transaction
public type UpdateCardFinancialCaptureTransactionRequest record {
    # The card financial capture transaction details
    ControlCardFinancialCaptureTransactionRequest_CardFinancialCaptureTransaction CardFinancialCaptureTransaction?;
};

# The card financial capture transaction request details
public type ControlCardFinancialCaptureTransactionRequest_CardFinancialCaptureTransaction record {
    # A Classification value that distinguishes between business service transaction within Credit/Charge Card Financial Capture Transaction ||
    # |
    common:featuretypevalues CardFinancialCaptureTransactionParameterType?;
    # A selected optional business service as subject matter of Credit/Charge Card Financial Capture Transaction ||
    # |
    common:feature CardFinancialCaptureTransactionSelectedOption?;
    # The status of Credit/Charge Card Financial Capture Transaction Status |Status  (https://www.iso20022.org/standardsrepository/type/Status)|Standard|ISO20022 BM ()
    common:status CardFinancialCaptureTransactionStatus?;
    # A Classification value that specifies type of transaction for this  Credit/Charge Card Financial Capture Transaction ||
    # |
    common:Transactiontypevalues CardFinancialCaptureTransactionType?;
    # A Classification value that specifies type of transaction for this  Credit/Charge Card Financial Capture Transaction ||
    # |
    common:Transactiontypevalues CardFinancialCaptureTransactionTransactionType?;
};

# Output: InCR Instantiate a new Credit Charge Card Financial Capture Transaction
public type InitiateCardFinancialCaptureTransactionResponse record {
    # The card financial capture transaction details
    ControlCardFinancialCaptureTransactionResponse_CardFinancialCaptureTransaction CardFinancialCaptureTransaction?;
};

# Output: ReCR Retrieve details about any aspect of Credit Charge Card Financial Capture Transaction
public type RetrieveCardFinancialCaptureTransactionResponse record {
    # The card financial capture transaction details
    ControlCardFinancialCaptureTransactionRequest_CardFinancialCaptureTransaction CardFinancialCaptureTransaction?;
};

public type ControlCardFinancialCaptureTransactionResponse_CardFinancialCaptureTransaction record {
    # A Classification value that distinguishes between business service transaction within Credit/Charge Card Financial Capture Transaction ||
    # |
    common:featuretypevalues CardFinancialCaptureTransactionParameterType?;
    # A selected optional business service as subject matter of Credit/Charge Card Financial Capture Transaction ||
    # |
    common:feature CardFinancialCaptureTransactionSelectedOption?;
    # The status of Credit/Charge Card Financial Capture Transaction Status |Status  (https://www.iso20022.org/standardsrepository/type/Status)|Standard|ISO20022 BM ()
    common:status CardFinancialCaptureTransactionStatus?;
};

# Input: CoCR Control the processing of Credit Charge Card Financial Capture Transaction
public type ControlCardFinancialCaptureTransactionRequest record {
    # The card financial capture transaction details
    ControlCardFinancialCaptureTransactionRequest_CardFinancialCaptureTransaction CardFinancialCaptureTransaction?;
};

# Output: UpCR Update details relating to Credit Charge Card Financial Capture Transaction
public type UpdateCardFinancialCaptureTransactionResponse record {
    # The card financial capture transaction details
    ControlCardFinancialCaptureTransactionResponse_CardFinancialCaptureTransaction CardFinancialCaptureTransaction?;
};

# Output: EcCR Accept, verify, etc. aspects of Credit Charge Card Financial Capture Transaction processing
public type ExchangeCardFinancialCaptureTransactionResponse record {
    # The card financial capture transaction details
    ControlCardFinancialCaptureTransactionResponse_CardFinancialCaptureTransaction CardFinancialCaptureTransaction?;
};

# Input: InCR Instantiate a new Credit Charge Card Financial Capture Transaction
public type InitiateCardFinancialCaptureTransactionRequest record {
    # The card financial capture transaction details
    ControlCardFinancialCaptureTransactionRequest_CardFinancialCaptureTransaction CardFinancialCaptureTransaction?;
};

# Output: RqCR Request manual intervention or a decision with respect to Credit Charge Card Financial Capture Transaction
public type RequestCardFinancialCaptureTransactionResponse record {
    # The card financial capture transaction details
    ControlCardFinancialCaptureTransactionResponse_CardFinancialCaptureTransaction CardFinancialCaptureTransaction?;
};

# Input: RqCR Request manual intervention or a decision with respect to Credit Charge Card Financial Capture Transaction
public type RequestCardFinancialCaptureTransactionRequest record {
    # The card financial capture transaction details
    ControlCardFinancialCaptureTransactionRequest_CardFinancialCaptureTransaction CardFinancialCaptureTransaction?;
};

public type CreditCardPositionLogOk record {|
    *http:Ok;
    CreditCardPositionLog body;
|};

# Maintain a log of transactions or activity, typically a financial account/journal or a log of activity to support behavioral analysis within Credit Card Position Keeping. 
public type CreditCardPositionLog record {
    # A Classification value that distinguishes between business service events logged within Credit Card Position Log ||
    # |
    common:featuretypevalues CreditCardPositionLogParameterType?;
    # A selected optional business service as subject matter of Credit Card Position Log ||
    # |
    'service CreditCardPositionLogSelectedOption?;
    # The configuration of Credit Card Position Log ||
    # |
    common:text CreditCardPositionLogType?;
    # Timetable to track Credit Card Position Log ||
    # |
    common:schedule CreditCardPositionLogSchedule?;
    # An unique reference to an item or an occurrence of Credit Card Position Log ||
    # |
    common:Log CreditCardPositionLogUsageLog?;
    # An unique reference to an item or an occurrence of Credit Card Position Log ||
    # |
    common:Log CreditCardPositionLogUpdateLog?;
    # Reference to the customer who is involved in Credit Card Position Log ||
    # |
    common:involvedparty CreditCardPositionLogAssociatedParty?;
    # Reference to the business unit which is involved in Credit Card Position Log ||
    # |
    businessunit CreditCardPositionLogBusinessUnitReference?;
    # Reference to the customer who is involved in Credit Card Position Log ||
    # |
    common:involvedparty CreditCardPositionLogCustomerReference?;
    # The configuration of Credit Card Position Log ||
    # |
    common:text CreditCardPositionLogServiceConfiguration?;
    # The position of Credit Card Position Log Position |Position  (https://www.iso20022.org/standardsrepository/type/Position)|Standard|ISO20022 BM ()
    position CreditCardPositionLogPosition?;
    # A classification value expressing the kind of position withing the Credit Card Position Log ||
    # |
    positiontype CreditCardPositionLogPositionType?;
    # Reference to the time limitation related to the position of Credit Card Position Log Limit|Limit (https://www.iso20022.org/standardsrepository/type/Limit)|Standard|ISO20022 (https://www.iso20022.org/)
    common:Limitarrangement CreditCardPositionLogPositionLimitTime?;
    # An unique reference to an item or an occurrence of Credit Card Position Log ||
    # |
    common:Log CreditCardPositionLogReference?;
};

# The Card Transaction Event is one of the specific types of events that is recorded in the Card Transaction Event
public type CardTransactionEvent record {
    # The required status/situation before the event is captured
    common:condition Preconditions?;
    # Timetable to track Credit Card Position Log ||
    # |
    common:schedule Schedule?;
    # The Card Transaction Event specific Business Service
    common:businessservice BusinessService?;
    # The required status/situation before the event is captured
    common:condition Postconditions?;
    # An unique reference to an item or an occurrence of Credit Card Position Log ||
    # |
    common:Log CreditCardPositionLogReference?;
    # Reference to Card Transaction Event
    event CardTransactionEventReference?;
    # The configuration of Credit Card Position Log ||
    # |
    common:text CardTransactionEventType?;
};

# Reference to Card Transaction Event
public type event record {
    # The configuration of Credit Card Position Log ||
    # |
    common:text EventType?;
    # The date and time when the event occurred
    common:datetime EventDateTime?;
    # The configuration of Credit Card Position Log ||
    # |
    common:text EventDescription?;
    # The source or origin of the event
    string EventSource?;
    # The location where the event occurred
    common:location EventLocation?;
    # The action associated with the event
    common:Action EventAction?;
    # Refers to the lifecycle of a Condition
    common:status EventStatus?;
    # The value associated with the event
    common:value EventValue?;
    # The period during which the event is valid
    common:datetimeperiod EventValidityPeriod?;
    # The identifier of Condition
    common:identifier EventIdentification?;
};

# A classification value expressing the kind of position withing the Credit Card Position Log ||
# |
public type positiontype record {
    # A classification of the position. 
    string PositionType?;
};

public type CreditPlanOk record {|
    *http:Ok;
    CreditPlan body;
|};

# >
# * `Valueaddedtaxofzerorate` - Tax for which a zero rate applies.
# * `Provincial` - Tax is a provincial tax.
# * `Nationaltax` - Tax is a national tax.
# * `Statetax` - Tax is a state tax.
# * `Withholdingtax` - Tax is on income deducted at source, which the paying agent is legally obliged to deduct from its payments of interest on deposits and other proceeds of a financial instrument.
# * `Capitalgaintax` - Tax is on a capital gain (realised and unrealised), that is, the profit that is gained from the sale of a financial instrument.
# * `Interimprofittax` - Tax is on the sum of all earnings/revenues accrued since the last dividend distribution.
# * `Stampduty` - Tax is on certain documents and transactions.
# * `Wealthtax` - Tax is a special tax imposed, applicable only when the value of assets or categories of assets owned by an entity are above a given ceiling defined by the tax authority. Wealth tax is not linked to income.
# * `Inheritancetax` - Tax that is payable at the time of death on any items (money or otherwise), where ownership changes either upon death or within a legally specified number of years before death.
# * `Solidaritysurcharge` - Tax that is levied by legal authorities for solidarity purposes.
# * `Taxcredit` - Direct reduction of an individual's tax liability.
# * `Equalisation` - The part of an investor's subscription amount that is held by the fund in order to pay incentive / performance fees at the end of the fiscal year.
# * `Gifttax` - Tax that is levied on assets given to individuals prior to the death of the donor. Gift tax is designed to ensure the integrity of the inheritance tax, preventing the pre-death transfer of wealth.
# * `Consumptiontax` - Tax that is levied on goods and services purchased by customers, and is added to the retail price.
# * `Alternativeminimumtax` - Tax is an alternative minimum tax.
# * `Localtax` - Tax that is charged by a local settlement system or local jurisdiction.
# * `Nationalfederaltax` - Tax is a country, national, or federal tax that is usually charged by the custodian.
# * `Paymentlevytax` - Tax levied on a payment.
# * `Stockexchangetax` - Tax collected by a stock exchange.
# * `Transactiontax` - Tax levied on a transaction.
# * `Transfertax` - Tax levied on a transfer.
# * `Valueaddedtax` - Tax is a value added tax.
# * `Localbrokercommission` - Local broker's commission amount.
# * `Executingbrokercommission` - Executing broker's commission amount.
# * `Eutaxretention` - Tax withheld at source in the framework of the European Directive on taxation of savings in the form of interest payments.
# * `Aktiengewinn1` - Share-related profit. This is a tax specific to the German market. The share-related-profit gives the fund the opportunity to pass on to the institutional investor redeeming fund units certain tax-free income from equity. The calculation method is based on the old Investment Tax Act (Investmentsteuergesetz).
# * `Aktiengewinn2` - Share-related profit. This is a tax specific to the German market. The share-related-profit gives the fund the opportunity to pass on to the institutional investor redeeming fund units certain tax-free income from equity. The calculation method is based on the new Investment Tax Act (Investmentsteuergesetz).
# * `Zwischengewinn` - Zwischengewinn.
# * `Customstax` - Tax is customs and excise.
# * `Other` - Another type of tax.
# * `Mietgewinn` - Earnings from renting.
# * `Germanlocaltax3` - Local tax (Zinstopf) offset interest per unit against tax exempt amount (variation to offset interest per unit in relation to tax exempt amount).
# * `Germanlocaltax4` - Local tax (Ertrag Besitzanteilig) yield liable for interest down payment tax.
# * `Germanlocaltax2` - Local tax (ZAS pflichtige Zinsen) - interest liable for interest down payment tax (proportion of gross interest per unit/interim profits that is not covered by the credit in the interest pool).
# * `Withholdingofforeigntax` - Rate at which the income will be withheld by the jurisdiction in which the income was originally paid, for which relief at source and/or reclaim may be possible.
# * `Withholdingoflocaltax` - Rate at which the income will be withheld by the jurisdiction in which the account owner is located, for which relief at source and/or reclaim may be possible.
# * `Capitallosscredit` - Tax recovery is due to capital loss.
public type taxtypevalues "Valueaddedtaxofzerorate"|"Provincial"|"Nationaltax"|"Statetax"|"Withholdingtax"|"Capitalgaintax"|"Interimprofittax"|"Stampduty"|"Wealthtax"|"Inheritancetax"|"Solidaritysurcharge"|"Taxcredit"|"Equalisation"|"Gifttax"|"Consumptiontax"|"Alternativeminimumtax"|"Localtax"|"Nationalfederaltax"|"Paymentlevytax"|"Stockexchangetax"|"Transactiontax"|"Transfertax"|"Valueaddedtax"|"Localbrokercommission"|"Executingbrokercommission"|"Eutaxretention"|"Aktiengewinn1"|"Aktiengewinn2"|"Zwischengewinn"|"Customstax"|"Other"|"Mietgewinn"|"Germanlocaltax3"|"Germanlocaltax4"|"Germanlocaltax2"|"Withholdingofforeigntax"|"Withholdingoflocaltax"|"Capitallosscredit";

# >
# * `Onlinepin` - On-line PIN authentication (Personal Identification Number).
# * `Offlinepin` - Off-line PIN authentication (Personal Identification Number).
# * `Signaturecapture` - Electronic signature capture (handwritten signature).
# * `Password` - Authentication by a password.
# * `Biometry` - Biometric authentication of the cardholder.
# * `Cscverification` - Verification of Card Security Code.
# * `Cryptogramverification` - Verification of a cryptogram generated by a chip card or another device, for instance ARQC (Authorisation Request Cryptogram).
# * `Unknownmethod` - Authentication method is performed unknown.
# * `Bypass` - Authentication bypassed by the merchant.
# * `Papersignature` - Handwritten paper signature.
# * `Manualverification` - Manual verification, for example passport or drivers license.
# * `Merchantauthentication` - Merchant-related authentication.
# * `Securecertificate` - Electronic commerce transaction secured with the X.509 certificate of a customer.
# * `Securenocertificate` - Secure electronic transaction without cardholder certificate.
# * `Securedchannel` - Channel-encrypted transaction.
# * `Billingaddressverification` - Cardholder billing address verification.
# * `Cardholderidentificationdata` - Cardholder data provided for verification, for instance social security number, driver license number, passport number.
# * `Passiveauthentication` - Authentication based on statistical cardholder behaviour.
# * `Secureelectroniccommerce` - Authentication performed during a secure electronic commerce transaction.
# * `Shippingaddressverification` - Cardholder shipping address verification.
# * `Tokenauthentication` - Cryptogram generated by the token requestor or a customer device to validate the authorised use of a token.
# * `Paymenttoken` - Verification or authentication related to the use of a payment token, for instance the validation of the authorised use of a token.
# * `Authenticationtoken` - A token is used to verify an already performed authentication.
# * `Mobile` - Customer mobile device.
# * `Other` - Other customer authentication.
# * `Addressdigits` - Digits of the address.
# * `Alienregistrationnumber` - Number assigned by a government agency to identify foreign nationals.
# * `Arqcverification` - Verification of a cryptogram generated by a chip card, for instance an ARQC (Authorisation Request Cryptogram).
# * `Birthdate` - Date of birth of a person.
# * `Cardholdername` - Name of cardholder
# * `Cityofbirth` - City of birth to authenticate a person.
# * `Customeridentification` - Customer number used as a mechanism of authentication.
# * `Driveridentification` - Identification of a driver in a fleet of vehicles.
# * `Driverlicensenumber` - Number assigned by a driving license authority to a person driving a car.
# * `Email` - Electronic mail address
# * `Employeeidentificationnumber` - Number assigned to an employee by an employer.
# * `Employeridentificationnumber` - Number assigned to an employer by a registration authority.
# * `Identitycardnumber` - Number assigned by a national authority to an identity card.
# * `Onetimepassword` - Verification of a one-time password provided by the issuer.
# * `Othercardholderidentification` - Other cardholder data provided for identification.
# * `Othercryptogram` - Verification of a cryptogram generated by a non-card form factor.
# * `Passportnumber` - Number assigned by a passport authority to a passport.
# * `Postalcode` - Verification based on digits of the postal code.
# * `Shippingaddressfrom` - Shipping address from verification.
# * `Shippingaddressto` - Shipping address to verification
# * `Cardholderaddress` - Verification whether the address corresponds to the cardholder's one.
# * `Nonvisiblecsc` - Non visible Card Security Code.
# * `Othernational` - Other type of verification defined at national level.
# * `Otherprivate` - Other type of verification defined at private level
# * `Placeofbirth` - Place of birth of a person.
# * `Socialsecuritynumber` - Number assigned by a social security agency.
# * `Taxidentificationnumber` - Number assigned by a tax authority to an entity.
# * `Accountdigitalsignature` - Account-based digital signature authentication.
# * `Arpcverification` - Response Card Cryptogram (ARPC)  verification.
# * `ATC` - Application Transaction Counter
# * `Offlinebiographics` - Biographics authentication in an offline mode.
# * `Offlinebiometrics` - Biometrics authentication in an offline mode
# * `Offlinedataauthentication` - Authentication of data in an offline mode
# * `Offlinedigitisedsignatureanalysis` - Analysis of signature transmitted offline
# * `Offlinepinencrypted` - PIN generated offline and transmitted encrypted
# * `Offlinepininclear` - PIN generated offline and transmitted in clear
# * `Onlinebiographics` - Biographics authentication in an online mode.
# * `Phonehome` - Customer home phone number.
# * `Phonework` - Customer work phone number
# * `Pkisignature` - PKI (Public Key Infrastructure) based digital signature
# * `Qualifiedcertificate` - QualifiedCertificate
# * `Threeds` - Authentication performed during a secure electronic commerce transaction.
# * `Cardholdercertificateserialnumber` - Serial number of the cardholder's certificate.
# * `Acceptorcertificateserialnumber` - Serial number of the acceptor's certificate.
# * `Nationalidentifier` - Nationally assigned identifier.
public type authenticationmethodtypevalues "Onlinepin"|"Offlinepin"|"Signaturecapture"|"Password"|"Biometry"|"Cscverification"|"Cryptogramverification"|"Unknownmethod"|"Bypass"|"Papersignature"|"Manualverification"|"Merchantauthentication"|"Securecertificate"|"Securenocertificate"|"Securedchannel"|"Billingaddressverification"|"Cardholderidentificationdata"|"Passiveauthentication"|"Secureelectroniccommerce"|"Shippingaddressverification"|"Tokenauthentication"|"Paymenttoken"|"Authenticationtoken"|"Mobile"|"Other"|"Addressdigits"|"Alienregistrationnumber"|"Arqcverification"|"Birthdate"|"Cardholdername"|"Cityofbirth"|"Customeridentification"|"Driveridentification"|"Driverlicensenumber"|"Email"|"Employeeidentificationnumber"|"Employeridentificationnumber"|"Identitycardnumber"|"Onetimepassword"|"Othercardholderidentification"|"Othercryptogram"|"Passportnumber"|"Postalcode"|"Shippingaddressfrom"|"Shippingaddressto"|"Cardholderaddress"|"Nonvisiblecsc"|"Othernational"|"Otherprivate"|"Placeofbirth"|"Socialsecuritynumber"|"Taxidentificationnumber"|"Accountdigitalsignature"|"Arpcverification"|"ATC"|"Offlinebiographics"|"Offlinebiometrics"|"Offlinedataauthentication"|"Offlinedigitisedsignatureanalysis"|"Offlinepinencrypted"|"Offlinepininclear"|"Onlinebiographics"|"Phonehome"|"Phonework"|"Pkisignature"|"Qualifiedcertificate"|"Threeds"|"Cardholdercertificateserialnumber"|"Acceptorcertificateserialnumber"|"Nationalidentifier";

public type servicearrangementmodality record {
    # >
    # * `AllocationModality` - 
    # * `CalculationModality` - 
    # * `DerivationModality` - 
    # * `PaymentModality` - 
    # * `ProcessingModality` - 
    # * `ApplicationModality` - 
    # * `DeliveryModality` - 
    common:Modalitytypevalues ServiceArrangementModalityType?;
};

# >
# * `StandardRatePlan` -
# * `AdjustmentRatePlan` -
# * `FinalRatePlan` -
public type rateplantypevalues "StandardRatePlan"|"AdjustmentRatePlan"|"FinalRatePlan";

# An arranged InterestRatePlan
public type rateplan record {
    # The name of the rate plan
    string RatePlanName?;
    # >
    # * `StandardRatePlan` - 
    # * `AdjustmentRatePlan` - 
    # * `FinalRatePlan` - 
    rateplantypevalues RatePlanType?;
    # The rate plan details
    string RatePlan?;
};

# A record of applied interest
public type interesttransaction record {
    # The amount of interest (to be applied or applied)
    common:amount InterestTransactionAmount?;
    # Definition of a specific product feature provided as an option ||
    # |
    common:text InterestTransactionDescription?;
    # >
    # * `InterestAllocationTransaction` - 
    # * `InterestPaymentTransaction` - 
    # * `InterestAdjustmentTransaction` - 
    interesttransactiontypevalues InterestTransactionType?;
    # The rate of interest (to be applied or applied)
    common:rate AppliedInterestRate?;
    # >
    # * `Fixed` - Indicates that the type of interest is fixed.
    # * `Floatingratenote` - Indicates that the type of interest is a floating rate note.
    # * `Dualbasis` - Indicates that the type of interest is a dual basis.
    # * `Index` - Indicates that the type of interest is index.
    # * `Discounted` - Indicates that the type of interest is discounted.
    # * `Zerocoupon` - Indicates that the type of interest is a zero coupon.
    # * `Exinterest` - Indicates deal price excluding accrued interest.
    # * `Cuminterest` - Indicates deal price including accrued interest.
    interesttypevalues AppliedInteretType?;
    # >
    # * `Debit` - Transaction is a debt entry
    # * `Credit` - Transaction is a credit entry
    common:debitcreditindicatortvalues InterestCreditDebitIndicator?;
};

# >
# * `InvoiceFactor` - 
# * `Invoicee` - Party who receives the invoice. 
#
# * `InvoiceIssuer` - Party who creates an invoice and claiming payment for goods or services rendered to the customer.
# * `Invoicer` - 
public type invoiceinvolvementtypevaleus "InvoiceFactor"|"Invoicee"|"InvoiceIssuer"|"Invoicer";

# Fulfill any scheduled and ad-hoc obligations under a service arrangement, most typically for a financial product or facility within Credit Card. 
public type CreditCardFacility record {
    # Reference to the credit/charge card account product instance CardPayment|CardPayment (https://www.iso20022.org/standardsrepository/type/CardPayment)|Standard|ISO20022 BM ()
    common:cardpaymentagreement ProductInstanceReference?;
    # Reference identifier linking the account to appropriate tax handling ||
    # |
    common:involvedparty CustomerReference?;
    # Reference identifier linking the account to appropriate tax handling ||
    # |
    common:involvedparty PartyReference?;
    # Bank branch associated with the card account for booking purposes ||
    # |
    common:branchlocation BankBranchLocationReference?;
    # Required for dual currency accounts CurrencyCode|CurrencyCode (https://www.iso20022.org/standardsrepository/type/CurrencyCode)|Standard|ISO20022 BM ()
    common:currencycode AccountCurrency?;
    # Required for dual currency accounts CurrencyCode|CurrencyCode (https://www.iso20022.org/standardsrepository/type/CurrencyCode)|Standard|ISO20022 BM ()
    common:currencycode SecondaryBillingCurrency?;
    # Reference identifier linking the account to appropriate tax handling ||
    # |
    common:involvedparty TaxReference?;
    # Description of the role, obligations or entitlements of the associated party ||
    # |
    common:partyobligationorentitlement EntitlementOptionDefinition?;
    # Description of the role, obligations or entitlements of the associated party ||
    # |
    common:partyobligationorentitlement EntitlementOptionSetting?;
    # The setting for the restriction option AccountRestriction_x000D_
    # |AccountRestriction (https://www.iso20022.org/standardsrepository/type/AccountRestriction)|Standard|ISO20022 BM  ()
    common:accountrestriction RestrictionOptionDefinition?;
    # The setting for the restriction option AccountRestriction_x000D_
    # |AccountRestriction (https://www.iso20022.org/standardsrepository/type/AccountRestriction)|Standard|ISO20022 BM  ()
    common:accountrestriction RestrictionOptionSetting?;
    # Defines allowed access paths/channels supported (e.g. POS, ATM, Local/International, Merchant Categories) ||
    # |
    common:accessarrangement AllowedAccess?;
    # Different product features (e.g. Card Scheme, Product Type [credit, charge, debit], Dual currency billing, transaction processing options, billing options, credit plan consolidation options, payment application options etc.) ||
    # |
    agreementconfigurationoption ConfigurationOptions?;
    # Definition of a specific product feature provided as an option ||
    # |
    common:text CreditCardFacilityOptionDefinition?;
    # The selected option value for this instance CardPayment|CardPayment (https://www.iso20022.org/standardsrepository/type/CardPayment)|Standard|ISO20022 BM ()
    cardpaymentarrangement CreditCardFacilityOptionSetting?;
    # Any involved parties and the nature of their associations to the card account Account Party Role_x000D_
    # |Account Party Role (https://www.iso20022.org/standardsrepository/type/AccountPartyRole)|Standard|ISO20022 BM ()
    common:accountinvolvement Associations?;
    # The type of association (e.g. guarantor, co-signer) AccountPartyRole |AccountPartyRole  (https://www.iso20022.org/standardsrepository/type/AccountPartyRole)|Standard|ISO20022 BM ()
    common:accountinvolvementtypevalues AssociationType?;
    # Description of the role, obligations or entitlements of the associated party ||
    # |
    common:partyobligationorentitlement AssociationObligationEntitlement?;
    # Reference to the associated party Party|Party (https://www.iso20022.org/standardsrepository/type/Party)|Standard|ISO20022BM ()
    common:party AssociationReference?;
    # Details of the linked account Account|Account  (https://www.iso20022.org/standardsrepository/type/Account)|Standard|ISO20022 BM ()
    common:Account LinkedAccounts?;
    # The type and purpose for the link ||
    # |
    common:account_accountrelationshiptypevalues LinkType?;
    # Details of the linked account Account|Account  (https://www.iso20022.org/standardsrepository/type/Account)|Standard|ISO20022 BM ()
    common:Account AccountDetails?;
    # Key dates associated with the account (e.g. opening date, closing date) Account/OpeningDate|Account/OpeningDate (https://www.iso20022.org/standardsrepository/type/Account)|Standard|ISO20022 BM ()
    common:Accountdatetimetypevalues DateType?;
    # Value of the date type ||
    # |
    common:datetime Date?;
    # The schedule for generating product statements to schedule ||
    # |
    common:schedule StatementsSchedule?;
    # The types of scheduled statement (e.g. balance/mini-statement/annual) ||
    # |
    common:statementtypevalues StatementType?;
    # The types of transactions and transaction details to be included ||
    # |
    common:Transactiontypevalues StatementTransactionType?;
    # The reporting period covered by the statement DateTimePeriod|DateTimePeriod (https://www.iso20022.org/standardsrepository/type/DateTimePeriod)|Standard|ISO20022 BM ()
    common:datetimeperiod StatementPeriod?;
    # The statement content ||
    # |
    report StatementReport?;
    # The associated limit settings and rules Limit|Limit (https://www.iso20022.org/standardsrepository/type/Limit)|Standard|ISO20022 (https://www.iso20022.org/)
    common:Limitarrangement LimitSettings?;
    # The current calculated limit ||
    # |
    common:value LimitValue?;
    # The type of limit  LimitTypeCode|LimitTypeCode (https://www.iso20022.org/standardsrepository/type/LimitTypeCode)|Standard|ISO20022 BM ()
    common:Limittypevalues LimitType?;
};

# >
# * `Active` - Status of the restriction is active.
# * `Inactive` - Status of the restriction is inactive.
public type accountrestrictionstatustypevalues "Active"|"Inactive";

# The product features/services available with a financical facility
public type IssuedDevice record {
    # Reference identifier linking the account to appropriate tax handling ||
    # |
    common:involvedparty CustomerReference?;
    # Tracked property of the issued device (e.g. card number)
    common:feature DevicePropertyType?;
    # Reference to the device instance in Issued Device Administration
    common:Device IssuedDeviceAdministrationReference?;
    # Value of the date type ||
    # |
    common:datetime DeviceValidfromDate?;
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
    common:Devicetypevalues DeviceType?;
    # The processing option setting
    common:Arrangement DeviceOptionSetting?;
    # The processing and handling guidelines and rules
    common:RuleSet DeviceProcessingGuidelinesandRules?;
    # Reference identifier linking the account to appropriate tax handling ||
    # |
    common:involvedparty DevicePartyReference?;
    # Value of the date type ||
    # |
    common:datetime DeviceIssueDate?;
    # >
    # * `Issued` - 
    # * `IssuedButNotActivated` - 
    # * `Activated` - 
    # * `Suspended` - 
    # * `Retrieved` - 
    // common:issueddevicestatustypevalues DeviceStatus?;
    # External account number identifier
    common:identifier AccountExternalAccountNumber?;
    # The property setting
    string DevicePropertySetting?;
    # The identifier of the account to which the Issued Device will be attached
    common:Accountidentification AccountIdentifier?;
    # Definition of a specific product feature provided as an option ||
    # |
    common:text DeviceDeliveryMethod?;
    # The name of the branch where the customer will collect the device
    common:branch DeviceCollectLocation?;
    # Tracked property of the issued device (e.g. card number)
    common:feature DeviceOptionDefinition?;
    # Value of the date type ||
    # |
    common:datetime DeviceValidtoDate?;
    # The processing option setting
    common:Arrangement DeviceAssociatedPermissions?;
    // # `CardDesign` - 
    // common:devicecustomizationtypevalues DeviceCustomerCustomizationReference?;
};

public type taxidentification record {
    common:identifier TaxIdentification?;
    # >
    # * `TaxIdentificationNumber` - 
    # * `GlobalIntermediaryIdentificationNumber` - 
    taxidentificationtypevalues TaxIdentificationType?;
};

# >
# * `Simple` - Calculation method by which interest is calculated on the original principal only. Accumulated interest from prior periods is not used in calculations for the following periods. (ISO20022)
#
# * `Compounding` - Calculation method by which interest is calculated each period on the original principal and all interest accumulated during past periods. (ISO20022)
public type interestcalculationmethodtypevalues "Simple"|"Compounding";

# Defines the set-up for the billing processing (e.g. cycle date, type of billing, etc.)
public type billingarrangement record {
    # Billing arrangement configuration details
    string BillingArrangement?;
};

# >
# * `TaxIdentificationNumber` - 
# * `GlobalIntermediaryIdentificationNumber` - 
public type taxidentificationtypevalues "TaxIdentificationNumber"|"GlobalIntermediaryIdentificationNumber";

# >
# * `Fixed` - Rate is fixed.
# * `Forfeit` - No specific repurchase rate applies to the transaction Repo, only a forfeit.
# * `Variable` - Rate is variable.
# * `Scheduled` - Rate of the scheduled payment.
# * `Unscheduled` - Rate of the unscheduled payment.
# * `Discount` - Interest rate type is Discount.
# * `Fixedrateunderlyingexposureforlife` - Interest rate type is Fixed rate underlying exposure (for life).
# * `Fixedrateunderlyingexposurewithcompulsoryfutureswitchtofloating` - Interest rate type is Fixed rate underlying exposure with compulsory future switch to floating.
# * `Fixedwithfutureperiodicresets` - Interest rate type is Fixed with future periodic resets.
# * `Floatinglinkedtoindex` - Interest rate type is Floating rate underlying exposure linked to one index that will revert to another index in the future.
# * `Floatingrateunderlyingexposureforlife` - Interest rate type is Floating rate underlying exposure (for life).
# * `Floatingrateunderlyingexposurewithcap` - Interest rate type is Floating rate underlying exposure with cap.
# * `Floatingrateunderlyingexposurewithfloor` - Interest rate type is Floating rate underlying exposure with floor.
# * `Floatingrateunderlyingexposurewithfloorandcap` - Interest rate type is Floating rate underlying exposure with both floor and cap.
# * `Modular` - Interest rate type is Modular.
# * `Obligorswapped` - Interest rate type is Obligor Swapped.
# * `Other` - Any other type of interest rate that can be applied.
# * `Swicthoptionality` - Interest rate type is Switch Optionality.
public type interestratetypevalues "Fixed"|"Forfeit"|"Variable"|"Scheduled"|"Unscheduled"|"Discount"|"Fixedrateunderlyingexposureforlife"|"Fixedrateunderlyingexposurewithcompulsoryfutureswitchtofloating"|"Fixedwithfutureperiodicresets"|"Floatinglinkedtoindex"|"Floatingrateunderlyingexposureforlife"|"Floatingrateunderlyingexposurewithcap"|"Floatingrateunderlyingexposurewithfloor"|"Floatingrateunderlyingexposurewithfloorandcap"|"Modular"|"Obligorswapped"|"Other"|"Swicthoptionality";

# The statement content ||
# |
public type report record {
    # >
    # * `FinancialReport` - 
    # * `BusinessReport` - 
    # * `ManagementReport` - 
    # * `Statement` - 
    # * `MaintenanceReport` - 
    # * `RegulatoryReport` - 
    # * `TaxReport` - 
    # * `AnalysisReport` - 
    reporttypevalues ReportType?;
    # The reporting period covered by the statement DateTimePeriod|DateTimePeriod (https://www.iso20022.org/standardsrepository/type/DateTimePeriod)|Standard|ISO20022 BM ()
    common:datetimeperiod ReportValidityPeriod?;
    # The version of the report
    string ReportVersion?;
    # Value of the date type ||
    # |
    common:datetime ReportDateTime?;
    # Definition of a specific product feature provided as an option ||
    # |
    common:text ReportFormat?;
};

# Status of the restriction.
public type accountrestrictionstatus record {
    # The status of the account restriction
    common:status AccountRestrictionStatus?;
    # >
    # * `Active` - Status of the restriction is active.
    # * `Inactive` - Status of the restriction is inactive.
    accountrestrictionstatustypevalues AccountRestrictionStatusType?;
};

# The product features/services available with a financical facility
public type Repayment record {
    # The billing instance
    'common:Transaction RepaymentTransaction?;
    # The types of transactions and transaction details to be included ||
    # |
    common:Transactiontypevalues RepaymentTransactionType?;
    # The billing/invoicing transaction details
    invoice BillingInstanceReference?;
    # Reference identifier linking the account to appropriate tax handling ||
    # |
    common:involvedparty RepaymentTransactionPayerReference?;
    # Reference to the account where the payment is made from
    common:ProductAgreement RepaymentTransactionPayerProductInstanceReference?;
    # Reference identifier linking the account to appropriate tax handling ||
    # |
    common:involvedparty RepaymentTransactionPayerBankReference?;
    # The amount of interest (to be applied or applied)
    common:amount RepaymentTransactionAmount?;
    # Required for dual currency accounts CurrencyCode|CurrencyCode (https://www.iso20022.org/standardsrepository/type/CurrencyCode)|Standard|ISO20022 BM ()
    common:currencycode RepaymentTransactionCurrency?;
    # Transaction authorisation deadline to complete the related payment. (ISO20022)
    common:Date RepaymentTransactionValueDate?;
};

# The selected option value for this instance CardPayment|CardPayment (https://www.iso20022.org/standardsrepository/type/CardPayment)|Standard|ISO20022 BM ()
public type cardpaymentarrangement record {
    # Unique identifier for the payment card arrangement
    common:identifier PaymentCardArrangementIdentifier?;
    # >
    # * `SweepArrangement` - An arrangement into which is promised for the set-up and execution of structured sweeps to and from the facility to a linked account.
    # * `WithdrawalArrangement` - An arrangement into which is promised to deliver Withdraw Service  to take fund out of an account. 
    # * `DepositArrangement` - An arrangement into which is promised to deliver Deposit Service  to place funds into an account for safekeeping. 
    # * `InterestArrangement` - An arrangement into which is promised to apply a pricing element expressed in a percentage  to a principal amount.
    # * `FeeArrangement` - An arrangement into which is promised to apply a charge for services rendered. 
    # * `LienArrangement` - An arrangement into which is promised for placing a lien or block on the account for a specified purpose, amount, and period. 
    # * `InformationArrangement` - An arrangement concerning the information the bank will provide about the agreement/account
    # * `PaymentArrangement` - An arrangement into which is promised to deliver a specific payment service including regular payments, standing orders, direct debits and bill pay instructions. 
    # * `EntitlementArrangement` - Right or obligation linked to the involvement of a party in an agreement
    # * `PeriodArrangement` - 
    # * `CollateralArrangement` - An arrangement into which is promised for handling the oversight of the allocation, valuation and administration of collateral associated with the facility. 
    # * `LimitArrangement` - An arrangement to limit something
    # e.g., the number of transaction per week, the amount of money allowed to withdraw per week/day and etc. 
    # * `AccessArrangement` - An arrangement that allows or restricts the access to a service or product, channel or device through a specific access point
    # * `CardPaymentArrangement` - An arrangement into which is promised to deliver Card payment Service to execute payment transactions through a payment card, including online payments. 
    # * `StandingOrderArrangement` - An arrangement into which is promised to deliver Standing Order Service to make regular transfers on given dates to a named beneﬁciary. 
    # * `OverdraftArrangement` - An arrangement into which is promised to deliver Overdraft Service  that allows fund transfer even if there is no provision on the account. 
    # * `RepaymentArrangement` - An arrangement into which is promised for paying back money previously borrowed from a lender. 
    # * `StatementArrangement` - An arrangement into which is promised to deliver a reporting service on payment transactions registered on an account. 
    # * `CreditTransferArrangement` - An arrangement into which is promised to allow a payer to transfer fund to a beneficiary. 
    # * `ProductAndServiceArrangement` - 
    # * `FactoringArrangement` - 
    # * `RolloverArrangement` - Arrangement stipulating the modalities for an automatic renewal of the agreement
    #
    # i.e. the replacement of the agreement with a new one without renewed negociation and witout explicit agreement of the customer 
    # * `RestructuringArrangement` - 
    # * `InsuranceArrangement` - 
    # * `CollectionArrangement` - An arrangement into which is promised to collect past-due debts from borrowers
    # * `UnderwritingArrangement` - A contractual agreement between parties that commits the underwriter to assuming risk.
    # * `TerminationArrangement` - 
    # * `MaturityArrangement` - 
    common:Arrangementtypevalues CardPaymentArrangementType?;
};

public type IssuedDeviceOk record {|
    *http:Ok;
    IssuedDevice body;
|};

# Different product features (e.g. Card Scheme, Product Type [credit, charge, debit], Dual currency billing, transaction processing options, billing options, credit plan consolidation options, payment application options etc.) ||
# |
public type agreementconfigurationoption record {
    # Options for configuring the agreement or the arrangement of agreement.
    string AgreementConfigurationOption?;
};

# >
# * `ChannelAccess` - 
# * `ProductAndServiceAccess` - 
# * `DeviceAccess` - 
# * `APIAccess` - 
public type pointofaccesstypevalues "ChannelAccess"|"ProductAndServiceAccess"|"DeviceAccess"|"APIAccess";

# The product features/services available with a financical facility
public type CardTransaction record {
    # The card transaction record
    common:cardpaymenttransaction CardTransaction?;
    # Reference to the credit/charge card account product instance CardPayment|CardPayment (https://www.iso20022.org/standardsrepository/type/CardPayment)|Standard|ISO20022 BM ()
    common:cardpaymentagreement CardTransactionProductInstanceReference?;
    # Network used for handling the card payment transaction.
    common:cardnetwork CardTransactionNetworkReference?;
    # Refers to the card holder's issuing bank
    common:cardpaymenttransactioninvolvement CardTransactionIssuingBankReference?;
    # Refers to the card holder's issuing bank
    common:cardpaymenttransactioninvolvement CardTransactionMerchantAcquiringBankReference?;
    # The card transaction record
    common:cardpaymenttransaction CardTransactionType?;
    # Required for dual currency accounts CurrencyCode|CurrencyCode (https://www.iso20022.org/standardsrepository/type/CurrencyCode)|Standard|ISO20022 BM ()
    common:currencycode CardTransactionCurrency?;
    # >
    # * `Principal` - 
    # * `Actual` - Actual amount.
    # * `Estimated` - Estimated amount (the final amount could be above or below).
    # * `Maximum` - Maximum amount (the final amount must be less or equal).
    # * `Default` - Default amount.
    # * `Replacement` - Replacement amount.
    # * `Incremental` - Incremental amount for reservation.
    # * `Decremental` - Decremental amount for reservation.
    # * `Reserved` - Reserved or updated reserved amount for reservation.
    # * `Available` - 
    # * `Used` - 
    # * `DuePayable` - 
    # * `Minimum` - 
    # * `Open` - The amount is open.(ISO20022)
    # * `Unknown` - The amount is unkown.(ISO20022)
    # * `Fixed` - The amount represents a fixed value.(ISO20022)
    common:amounttypevalues CardTransactionAmountType?;
    # The amount of interest (to be applied or applied)
    common:amount CardTransactionAmount?;
    # Refers to the card holder's issuing bank
    common:cardpaymenttransactioninvolvement CardTransactionMerchantReference?;
    # Geographical location of the device.
    common:location CardTransactionLocationReference?;
    # Product on which a tax is applied.
    common:bankingproduct CardTransactionProductandServiceReference?;
    # Significant dates and times associated with the transaction
    string CardTransactionDateandTime?;
    # Specifies the adjustments subject to a tax.
    common:feearrangement CardTransactionFXConversionCharge?;
    # Specifies the adjustments subject to a tax.
    common:feearrangement CardTransactionInterchargeFee?;
    # Details the reference, amount, timestamp of the transaction authorization)
    common:cardpaymentauthorization CardTransactionAuthorizationRecord?;
};

# >
# * `Fixed` - Indicates that the type of interest is fixed.
# * `Floatingratenote` - Indicates that the type of interest is a floating rate note.
# * `Dualbasis` - Indicates that the type of interest is a dual basis.
# * `Index` - Indicates that the type of interest is index.
# * `Discounted` - Indicates that the type of interest is discounted.
# * `Zerocoupon` - Indicates that the type of interest is a zero coupon.
# * `Exinterest` - Indicates deal price excluding accrued interest.
# * `Cuminterest` - Indicates deal price including accrued interest.
public type interesttypevalues "Fixed"|"Floatingratenote"|"Dualbasis"|"Index"|"Discounted"|"Zerocoupon"|"Exinterest"|"Cuminterest";

# >
# * `Fixed` - Rate is fixed.
# * `Forfeit` - No specific repurchase rate applies to the transaction Repo, only a forfeit.
# * `Variable` - Rate is variable.
# * `Open` - Rate has not been established.
# * `Unknown` - Rate is unknown by the sender or has not been established.
# * `Nilpayment` - Rate will not be paid.
# * `Additionaltax` - Rate used for additional tax that cannot be categorised.
# * `Charges` - Rate used to calculate the amount of the charges/fees that cannot be categorised.
# * `Cashinlieuofsecurities` - Rate used to calculate the cash disbursement in lieu of a fractional quantity of, for example, equity.
# * `Gross` - Cash dividend per equity before deductions or allowances have been made.
# * `Cashincentive` - Rate of the cash premium made available if the securities holder consents or participates to an event, for example, consent fees.
# * `Net` - Relates to the netting of settlement instructions.
# * `Sollication` - Cash rate made available in an offer in order to encourage participation in the offer.
# * `Stampduty` - Financial instrument has not been stamped and/or duly signed.
# * `Stockexchangetax` - Rate of stock exchange tax.
# * `Withholdingtax` - Relates to a tax refund from the authorities on the associated corporate action event.
# * `Transfertax` - Transaction has been generated due to transformation following a corporate action.
# * `Transactiontax` - Rate used to calculate the amount of transaction tax.
# * `Taxdeferred` - Rate relating to the underlying security for which tax is deferred.
# * `Taxfeeamount` - Rate relating to the underlying security which is not taxable.
# * `Withholdingofforeigntax` - Rate at which the income will be withheld by the jurisdiction in which the income was originally paid, for which relief at source and/or reclaim may be possible.
# * `Withholdingoflocaltax` - Rate at which the income will be withheld by the jurisdiction in which the account owner is located, for which relief at source and/or reclaim may be possible.
# * `Imputed` - Imputed tax.
# * `Precompte` - Rate is a precompte.
# * `Onetiertax` - Rate is a one tier tax.
# * `Localtax` - Interest liable for interest down payment tax (proportion of gross interest per unit/interim profits that is not covered by the credit in the interest pool).
# * `Scheduled` - Rate of the scheduled payment.
# * `Unscheduled` - Rate of the unscheduled payment.
# * `Anyandall` - Any and all rate is sought.
public type ratetypevalues "Fixed"|"Forfeit"|"Variable"|"Open"|"Unknown"|"Nilpayment"|"Additionaltax"|"Charges"|"Cashinlieuofsecurities"|"Gross"|"Cashincentive"|"Net"|"Sollication"|"Stampduty"|"Stockexchangetax"|"Withholdingtax"|"Transfertax"|"Transactiontax"|"Taxdeferred"|"Taxfeeamount"|"Withholdingofforeigntax"|"Withholdingoflocaltax"|"Imputed"|"Precompte"|"Onetiertax"|"Localtax"|"Scheduled"|"Unscheduled"|"Anyandall";

# The product features/services available with a financical facility
public type CreditPlan record {
    # Definition of a specific product feature provided as an option ||
    # |
    common:text CreditPlanType?;
    # The processing option setting
    common:Arrangement CreditPlanTerms?;
    # Details of the linked account Account|Account  (https://www.iso20022.org/standardsrepository/type/Account)|Standard|ISO20022 BM ()
    common:Account CreditPlanAccountReference?;
};

# >
# * `InterestAllocationTransaction` - 
# * `InterestPaymentTransaction` - 
# * `InterestAdjustmentTransaction` - 
public type interesttransactiontypevalues "InterestAllocationTransaction"|"InterestPaymentTransaction"|"InterestAdjustmentTransaction";

public type CreditCardFacilityOk record {|
    *http:Ok;
    CreditCardFacility body;
|};

# Interest for which a tax is specified.
public type interestarrangement record {
    # >
    # * `Fixed` - Indicates that the type of interest is fixed.
    # * `Floatingratenote` - Indicates that the type of interest is a floating rate note.
    # * `Dualbasis` - Indicates that the type of interest is a dual basis.
    # * `Index` - Indicates that the type of interest is index.
    # * `Discounted` - Indicates that the type of interest is discounted.
    # * `Zerocoupon` - Indicates that the type of interest is a zero coupon.
    # * `Exinterest` - Indicates deal price excluding accrued interest.
    # * `Cuminterest` - Indicates deal price including accrued interest.
    interesttypevalues InterestType?;
    # The rate of interest (to be applied or applied)
    common:rate InterestRate?;
    # Definition of a specific product feature provided as an option ||
    # |
    common:text InterestDefinition?;
    # >
    # * `Fixed` - Rate is fixed.
    # * `Forfeit` - No specific repurchase rate applies to the transaction Repo, only a forfeit.
    # * `Variable` - Rate is variable.
    # * `Scheduled` - Rate of the scheduled payment.
    # * `Unscheduled` - Rate of the unscheduled payment.
    # * `Discount` - Interest rate type is Discount.
    # * `Fixedrateunderlyingexposureforlife` - Interest rate type is Fixed rate underlying exposure (for life).
    # * `Fixedrateunderlyingexposurewithcompulsoryfutureswitchtofloating` - Interest rate type is Fixed rate underlying exposure with compulsory future switch to floating.
    # * `Fixedwithfutureperiodicresets` - Interest rate type is Fixed with future periodic resets.
    # * `Floatinglinkedtoindex` - Interest rate type is Floating rate underlying exposure linked to one index that will revert to another index in the future.
    # * `Floatingrateunderlyingexposureforlife` - Interest rate type is Floating rate underlying exposure (for life).
    # * `Floatingrateunderlyingexposurewithcap` - Interest rate type is Floating rate underlying exposure with cap.
    # * `Floatingrateunderlyingexposurewithfloor` - Interest rate type is Floating rate underlying exposure with floor.
    # * `Floatingrateunderlyingexposurewithfloorandcap` - Interest rate type is Floating rate underlying exposure with both floor and cap.
    # * `Modular` - Interest rate type is Modular.
    # * `Obligorswapped` - Interest rate type is Obligor Swapped.
    # * `Other` - Any other type of interest rate that can be applied.
    # * `Swicthoptionality` - Interest rate type is Switch Optionality.
    interestratetypevalues InterestRateType?;
    # The reporting period covered by the statement DateTimePeriod|DateTimePeriod (https://www.iso20022.org/standardsrepository/type/DateTimePeriod)|Standard|ISO20022 BM ()
    common:datetimeperiod InterestPeriod?;
    # An arranged InterestRatePlan
    rateplan InterestRatePlan?;
    # The schedule for generating product statements to schedule ||
    # |
    common:schedule InterestSchedule?;
};

# >
# * `FinancialReport` - 
# * `BusinessReport` - 
# * `ManagementReport` - 
# * `Statement` - 
# * `MaintenanceReport` - 
# * `RegulatoryReport` - 
# * `TaxReport` - 
# * `AnalysisReport` - 
public type reporttypevalues "FinancialReport"|"BusinessReport"|"ManagementReport"|"Statement"|"MaintenanceReport"|"RegulatoryReport"|"TaxReport"|"AnalysisReport";

# The product features/services available with a financical facility
public type Fees record {
    # Details of the linked account Account|Account  (https://www.iso20022.org/standardsrepository/type/Account)|Standard|ISO20022 BM ()
    common:Account FeeCreditAccount?;
    # Description of the fee calculation method for this fee type
    // common:servicemodality FeeCalculationMethod?;
    # The rate of interest (to be applied or applied)
    common:rate FeeRate?;
    # >
    # * `Accountingfee` - Fee paid for accounting services rendered.
    # * `Adrfee` - Charge linked to an ADR (American Depositary Receipt).
    # * `Advisoryfee` - Fee paid for advisory services rendered.
    # * `Airwaybillfee` - Charge is an airway bill fee.
    # * `Backendload` - Sales charge paid by the investor when redeeming an investment such as an investment fund.
    # * `Brokeragefee` - Fee paid to a broker for services provided.
    # * `Clearanceandhandlingatdestination` - Charge is for clearance and handling of goods at destination.
    # * `Clearanceandhandlingatorigin` - Charge is for clearance and handling of goods at origin.
    # * `Collectfreight` - Charge is for the collection of the freight.
    # * `Commission` - Fee paid for services provided.
    # * `Contingencydeferredsalescharge` - Deferred sales charge.
    # * `Correspondentbankcharge` - In investment funds, the charge of the correspondent bank for transferring money.
    # * `Custodyfee` - Fee paid to a custodian in respect of custodial services.
    # * `Dangerousgoodsfee` - Charge is for dangerous goods.
    # * `Dilutionlevy` - In investment funds, a charge payable by the investor covering bid-offer spreads and dealing charges for the underlying investments. The dilution levy is paid to the fund for the benefit of other unit holders.
    # * `Discount` - Charge that has been reduced from the standard initial charge levied by a fund, eg, during a launch period or as negotiated by a funds supermarket / discount broker.
    # * `Equalisation` - The part of an investor's subscription amount that is held by the fund in order to pay incentive or performance fees at the end of the fiscal year.
    # * `Frontendload` - Sales charge paid immediately by the investor when subscribing to an investment such as an investment fund.
    # * `Initial` - Charge paid at the time of the first subscription.
    # * `Insurancepremium` - Charge is a premium for insurance.
    # * `Issuancecancellationfee` - Fee linked to the cancellation of an issuance.
    # * `Issuancefee` - Charge linked to the issuance of security.
    # * `Managementfee` - Fee paid to an investment manager for services. The fee usually includes fund administration costs and investor relationship management. Typically, the amount paid is a percentage of the assets under management.
    # * `Matchingfees` - Fee charged for matching and/or confirmation.
    # * `Miscellaneousfee` - Miscellaneous fee.
    # * `Other` - Another type of charge.
    # * `Packaging` - Charge is for packaging of goods.
    # * `Partacquis` - Portion of charge that the fund is entitled to receive, that cannot be reduced by an intermediary.
    # * `Penalty` - Fee charged to the investor for early redemption of the fund.
    # * `Pickup` - Charge is for pick-up of goods.
    # * `Postagecharge` - Charge paid for the postage.
    # * `Premium` - In investment funds, pre-arranged addition to the trade amount based on the published net asset value.
    # * `Publicationfee` - Fee paid in respect of publications made.
    # * `Regulatoryfee` - Fee charged by a regulatory authority, eg, Securities and Exchange fees.
    # * `Securitycharge` - Charge is for security.
    # * `Serviceprovisionfee` - Fee paid for the provision of financial services.
    # * `Shippingcharge` - Charge for shipping, including the insurance of securities.
    # * `Signatureservice` - Charge is for signature services.
    # * `Specialconcessions` - Charges, drawdown, or other reduction from or in addition to the deal price.
    # * `Speciallyagreedfrontendload` - Specially agreed front-end load.
    # * `Storageatdestination` - Charge is for storage of goods at destination.
    # * `Storageatorigin` - Charge is for storage of goods at origin.
    # * `Switch` - In investment funds, charge related to a switch transaction.
    # * `Transferfee` - In investment funds, a fee charged for the transfer of ownership of an investment fund.
    # * `Transportcharges` - Charge is for transport.
    # * `Ucitscommission` - Charges paid by the investor to the Fund Company for subscription and redemption orders.
    # * `ChequeRelatedFee` - 
    common:feetypevalues FeeType?;
    # >
    # * `Bornebydebtor` - All transaction charges are to be borne by the debtor.
    # * `Bornebycreditor` - All transaction charges are to be borne by the creditor.
    # * `Shared` - In a credit transfer context, means that transaction charges on the sender side are to be borne by the debtor, transaction charges on the receiver side are to be borne by the creditor. In a direct debit context, means that transaction charges on the sender side are to be borne by the creditor, transaction charges on the receiver side are to be borne by the debtor.
    # * `Followingservicelevel` - Charges are to be applied following the rules agreed in the service level and/or scheme.
    common:chargebearertypevalues ChargeBearerType?;
    # Reference identifier linking the account to appropriate tax handling ||
    # |
    common:involvedparty ChargeBearerReference?;
    # >
    # * `Onclosing` - This fee is triggered on closing of a product
    # * `Onopening` - This fee is triggered on opening of a product
    # * `Chargingperiod` - This fee is triggered at the end of each charging period
    # * `Daily` - This fee is triggered every day
    # * `Peritem` - This fee is triggered by the processing of an item on the product
    # * `Monthly` - This fee is triggered monthly
    # * `Onanniversary` - This fee is triggered on the anniversary of opening the product
    # * `Other` - Other Fee Frequency
    # * `Perhundredpounds` - This fee is triggered for every hundred pounds withdrawn
    # * `Perhour` - This fee is triggered every hour
    # * `Peroccurrence` - This fee is triggered per occurrence of the transaction or service. This differs from PerItem, in that if a batch of items is processed at the same time, a PerOccurrence fee would incur a single charge, whereas a PerItem fee would be charged for each item within the batch.
    # * `Persheet` - This fee is levied on every statement sheet
    # * `Pertransaction` - The fee is charged for each transaction
    # * `Pertransactionamount` - The amount stated is levied for each transaction processed
    # * `Pertransactionpercentage` - The fee amount is the given percentage of the transaction processed and is levied for each transaction
    # * `Quarterly` - This fee is triggered at the end of every quarter
    # * `Sixmonthly` - This fee is triggered at the end of every 6 month period
    # * `Statementmonthly` - This fee is triggered based on a monthly statement period
    # * `Weekly` - The fee is triggered weekly
    # * `Yearly` - This fee is triggered yearly
    // common:feeapplicationfrequencyvalues FeeApplicationFrequency?;
    # The amount of interest (to be applied or applied)
    common:amount FeeAmount?;
    # The amount of interest (to be applied or applied)
    common:amount AccrualFeeAmount?;
    # Details of the linked account Account|Account  (https://www.iso20022.org/standardsrepository/type/Account)|Standard|ISO20022 BM ()
    common:Account FeeDebitAccount?;
    # Description of the fee calculation method for this fee type
    // common:servicemodality FeePaymentMethod?;
    # >
    # * `Debit` - Transaction is a debt entry
    # * `Credit` - Transaction is a credit entry
    common:debitcreditindicatortvalues AccruedCreditDebitIndicator?;
    # >
    # * `Flat` - Charge/tax basis is a lump sum.
    # * `Perunit` - Charges/tax basis is per unit of financial instrument.
    # * `Percentage` - Charge/tax basis is a percentage.
    # * `Rateperbrackets` - Charge/tax basis is a percentage which depends on the tax brackets.
    # * `Ratewithminimumamount` - Rate with a minimum amount.
    # * `Ratewithmaximumamount` - Rate with a maximum amount.
    # * `Other` - Another type of taxation basis.
    # * `Grossamount` - Charge/Commission/tax basis is based on the gross amount.
    # * `Netamount` - Charge/commission/tax basis is based on the net amount.
    # * `Netassetvalueprice` - Charge/tax basis is the price.
    // common:feecalculationmethodtypevalues FeeCalculationMethodType?;
    # >
    # * `Onclosing` - This fee is triggered on closing of a product
    # * `Onopening` - This fee is triggered on opening of a product
    # * `Chargingperiod` - This fee is triggered at the end of each charging period
    # * `Daily` - This fee is triggered every day
    # * `Peritem` - This fee is triggered by the processing of an item on the product
    # * `Monthly` - This fee is triggered monthly
    # * `Onanniversary` - This fee is triggered on the anniversary of opening the product
    # * `Other` - Other Fee Frequency
    # * `Perhundredpounds` - This fee is triggered for every hundred pounds withdrawn
    # * `Perhour` - This fee is triggered every hour
    # * `Peroccurrence` - This fee is triggered per occurrence of the transaction or service. This differs from PerItem, in that if a batch of items is processed at the same time, a PerOccurrence fee would incur a single charge, whereas a PerItem fee would be charged for each item within the batch.
    # * `Persheet` - This fee is levied on every statement sheet
    # * `Pertransaction` - The fee is charged for each transaction
    # * `Pertransactionamount` - The amount stated is levied for each transaction processed
    # * `Pertransactionpercentage` - The fee amount is the given percentage of the transaction processed and is levied for each transaction
    # * `Quarterly` - This fee is triggered at the end of every quarter
    # * `Sixmonthly` - This fee is triggered at the end of every 6 month period
    # * `Statementmonthly` - This fee is triggered based on a monthly statement period
    # * `Weekly` - The fee is triggered weekly
    # * `Yearly` - This fee is triggered yearly
    // common:feecalculationfrequencyvalues FeeCalculationFrequency?;
    # >
    # * `Cash` - Payment is with cash.
    # * `Unit` - Units are redeemed to cover payment.
    common:Feepaymentmethodtypevalues FeePaymentMethodType?;
    # The amount of interest (to be applied or applied)
    common:amount FeeApplicationAmount?;
    # Value of the date type ||
    # |
    common:datetime FeeApplicationDate?;
    # >
    # * `Debit` - Transaction is a debt entry
    # * `Credit` - Transaction is a credit entry
    common:debitcreditindicatortvalues FeeApplicationCreditDebitIndicator?;
};

# The product features/services available with a financical facility
public type Billing record {
    # Defines the set-up for the billing processing (e.g. cycle date, type of billing, etc.)
    billingarrangement BillingParameters?;
    # The billing/invoicing transaction details
    invoice BillingTransaction?;
    # The target for the invoice, typically the card holder
    invoiceinvolvement BillingTransactionParty?;
    # The billing address for the transaction
    common:address BillingTransactionAddress?;
    # The reporting period covered by the statement DateTimePeriod|DateTimePeriod (https://www.iso20022.org/standardsrepository/type/DateTimePeriod)|Standard|ISO20022 BM ()
    common:datetimeperiod BillingTransactionPeriod?;
    # Reference to an associated statement (that is included in the generated invoice)
    common:statement BillingTransactionStatementReference?;
    # The amount of interest (to be applied or applied)
    common:amount BillingTransactionAmount?;
    # The amount of interest (to be applied or applied)
    common:amount BillingTransactionMinimumRequiredPayment?;
    # Transaction authorisation deadline to complete the related payment. (ISO20022)
    common:Date BillingTransactionPaymentDueDate?;
};

# The target for the invoice, typically the card holder
public type invoiceinvolvement record {
    # >
    # * `InvoiceFactor` - 
    # * `Invoicee` - Party who receives the invoice. 
    #
    # * `InvoiceIssuer` - Party who creates an invoice and claiming payment for goods or services rendered to the customer.
    # * `Invoicer` - 
    invoiceinvolvementtypevaleus InvoiceInvolvementType?;
    # Reference to the associated party Party|Party (https://www.iso20022.org/standardsrepository/type/Party)|Standard|ISO20022BM ()
    common:party PartyReference?;
    # The billing/invoicing transaction details
    invoice InvoiceReference?;
};

# The billing/invoicing transaction details
public type invoice record {
    # Unique identifier for the invoice
    common:identifier InvoiceIdentification?;
    # Definition of a specific product feature provided as an option ||
    # |
    common:text InvoiceType?;
    # Value of the date type ||
    # |
    common:datetime InvoiceDueDate?;
    # The reporting period covered by the statement DateTimePeriod|DateTimePeriod (https://www.iso20022.org/standardsrepository/type/DateTimePeriod)|Standard|ISO20022 BM ()
    common:datetimeperiod InvoicePeriod?;
    # The billing address for the invoice
    common:address InvoiceAdress?;
    # The document assigned to the invoice
    common:Document InvoiceAssignedDocument?;
    # The amount of interest (to be applied or applied)
    common:amount InvoiceAmount?;
    # The current status of the invoice
    common:status InvoiceStatus?;
    # The amount of interest (to be applied or applied)
    common:amount CreditDebitNoteAmount?;
    # The amount of interest (to be applied or applied)
    common:amount TotalTaxAmount?;
    # The amount of interest (to be applied or applied)
    common:amount TotalInvoiceAmount?;
    # Required for dual currency accounts CurrencyCode|CurrencyCode (https://www.iso20022.org/standardsrepository/type/CurrencyCode)|Standard|ISO20022 BM ()
    common:currencycode InvoiceCurrency?;
    # The amount of interest (to be applied or applied)
    common:amount TotalCharge?;
    # The amount of interest (to be applied or applied)
    common:amount TotalPrepaidAmount?;
    # The amount of interest (to be applied or applied)
    common:amount TotalNetAmount?;
    # >
    # * `Debit` - Transaction is a debt entry
    # * `Credit` - Transaction is a credit entry
    common:debitcreditindicatortvalues CreditDebitIndicator?;
    # The amount of interest (to be applied or applied)
    common:amount RemittedAmount?;
    # Value of the date type ||
    # |
    common:datetime InvoiceIssueDate?;
};

# Details the instruction received from Card Case to book chargeback for the transaction - could be partial chargeback - amount is detailed in instruction
public type chargebackinstruction record {
    # An instruction to book chargeback for the transaction. 
    string ChargebackInstruction?;
};

# Fulfill any scheduled and ad-hoc obligations under a service arrangement, most typically for a financial product or facility within Merchant Acquiring Facility. 
public type MerchantAcquiringFacility record {
    # Reference to the merchant facility product instance ||
    # |
    merchantagreement ProductInstanceReference?;
    # Reference to the legal entity (typically the customer) ||
    # |
    common:involvedparty CustomerReference?;
    # Reference to the legal entity (typically the customer) ||
    # |
    common:involvedparty PartyReference?;
    # Bank branch associated with the merchant account for booking purposes ||
    # |
    common:branch BankBranchLocationReference?;
    # The billing currency for the merchant acquiring facility account CurrencyCode|CurrencyCode (https://www.iso20022.org/standardsrepository/type/CurrencyCode)|Standard|ISO20022 BM ()
    common:currencycode AccountCurrency?;
    # Reference identifier linking the account to appropriate tax handling GenericIdentification|GenericIdentification (https://www.iso20022.org/standardsrepository/type/GenericIdentification)|Standard|ISO20022 BM ()
    common:identifier TaxReference?;
    # Operational terms governing the merchant facility Obligation|Obligation (https://www.iso20022.org/standardsrepository/type/Obligation)|Standard|ISO20022 BM ()
    common:Arrangement MerchantAcquiringFacilityOperationalTerms?;
    # The associated limit settings and rules Limit|Limit (https://www.iso20022.org/standardsrepository/type/Limit)|Standard|ISO20022 (https://www.iso20022.org/)
    common:Limitarrangement LimitSettings?;
    # The current calculated limit ||
    # |
    common:value LimitValue?;
    # The type of limit  LimitTypeCode|LimitTypeCode (https://www.iso20022.org/standardsrepository/type/LimitTypeCode)|Standard|ISO20022 BM ()
    common:Limittypevalues LimitType?;
};

public type MerchantAcquiringFacilityOk record {|
    *http:Ok;
    MerchantAcquiringFacility body;
|};

# The product features/services available with a financical facility
// public type Clearing record {
//     # Reference to the card transaction as recorded by issuer and/or acquirer
//     common:cardpaymenttransaction CardTransactionRecordReference?;
//     # The account number associated with the card transaction
//     common:ProductAgreement CardTransactionProductInstanceReference?;
//     # Reference to the legal entity (typically the customer) ||
//     # |
//     common:involvedparty CardHolderReference?;
//     # Reference to the issued device submitted to authorize the transaction (e.g. card number)
//     issueddevice CardTransactionIssuedDeviceReference?;
//     # Network used for handling the card payment transaction.
//     common:cardnetwork CardTransactionNetworkReference?;
//     # Reference to the legal entity (typically the customer) ||
//     # |
//     common:involvedparty CardTransactionIssuingBankReference?;
//     # Reference to the legal entity (typically the customer) ||
//     # |
//     common:involvedparty CardTransactionMerchantAcquiringBankReference?;
//     # >
//     # * `FinancialTransaction` - 
//     # * `BusinessTransaction` - 
//     # * `BankingTransaction` - 
//     # * `AccountingTransaction` - 
//     # * `BookingTransaction` - 
//     # * `AllocationTransaction` - 
//     # * `DeliveryTransaction` - 
//     # * `ProductionTransaction` - 
//     common:Transactiontypevalues CardTransactionType?;
//     # The billing currency for the merchant acquiring facility account CurrencyCode|CurrencyCode (https://www.iso20022.org/standardsrepository/type/CurrencyCode)|Standard|ISO20022 BM ()
//     common:currencycode CardTransactionCurrency?;
//     # >
//     # * `Principal` - 
//     # * `Actual` - Actual amount.
//     # * `Estimated` - Estimated amount (the final amount could be above or below).
//     # * `Maximum` - Maximum amount (the final amount must be less or equal).
//     # * `Default` - Default amount.
//     # * `Replacement` - Replacement amount.
//     # * `Incremental` - Incremental amount for reservation.
//     # * `Decremental` - Decremental amount for reservation.
//     # * `Reserved` - Reserved or updated reserved amount for reservation.
//     # * `Available` - 
//     # * `Used` - 
//     # * `DuePayable` - 
//     # * `Minimum` - 
//     # * `Open` - The amount is open.(ISO20022)
//     # * `Unknown` - The amount is unkown.(ISO20022)
//     # * `Fixed` - The amount represents a fixed value.(ISO20022)
//     common:amounttypevalues CardTransactionAmountType?;
//     # The monetary amount of the card transaction
//     common:amount CardTransactionAmount?;
//     # Reference to the legal entity (typically the customer) ||
//     # |
//     common:involvedparty CardTransactionMerchantReference?;
//     # Place where the merchant actually performed the transaction. (ISO20022)
//     common:location CardTransactionLocationReference?;
//     # The product or service to which the Issued Device will be attached
//     common:bankingproduct CardTransactionProductandServiceReference?;
//     # Date and time at which the status was assigned.
//     common:datetime CardTransactionDateandTime?;
//     # The applied currency conversion charge
//     common:feearrangement CardTransactionFXConversionCharge?;
//     # The applied currency conversion charge
//     common:feearrangement CardTransactionInterchargeFee?;
//     # Details the reference, amount, timestamp of the transaction authorization
//     common:authorization CardTransactionAuthorizationRecord?;
// };

# The product features/services available with a financical facility
public type Settlement record {
    # Reference to the legal entity (typically the customer) ||
    # |
    common:involvedparty ParticipantMerchantAcquirerBankReference?;
    # Reference to the legal entity (typically the customer) ||
    # |
    common:involvedparty ParticipantIssuerBankReference?;
    # Specifies the reasons for the status.
    common:text CardFinancialSettlementServicePaymentAdviceRecord?;
    # Reference to the card transaction as recorded by issuer and/or acquirer
    common:cardpaymenttransaction ParticipantPaymentTransaction?;
    # The settlement account statement for the processing window - used to confirm payments
    accountstatement ParticipantAcquirerBankSettlementAccountStatement?;
};

# The settlement account statement for the processing window - used to confirm payments
public type accountstatement record {
    # >
    # * `OpeningBalance` - Book balance of the account at the beginning of the account servicer's business day. It always equals the closing book balance from the previous business day. Note: the available balance at the beginning of the account servicer's business day may be different from the closing book balance from the previous business day. (ISO20022)
    # * `ClosingBalance` - Balance of the account at the end of the account servicer's business day. It is the sum of the opening balance at the beginning of the day and all entries booked to the account during the account servicer's business day. (ISO20022)
    # * `CurrentBalance` - Balance of the account at a precise moment in time. (ISO20022)
    # * `AvailableBalance` - Balance of money or securities that is at the disposal of the account owner on the date specified. (ISO20022)
    # * `LedgerBalance` - Ledger balance refers to posted transactions (e.g. limit authorisation amount - posted transactions). (ISO20022)
    # * `ReserveBalance` - 
    # * `FreeBalance` - 
    # * `PrincipalBalance` - 
    # * `ClosingAvailable` - Closing balance of amount of money that is at the disposal of the account owner on the date specified.
    # * `ClosingBooked` - Balance of the account at the end of the pre-agreed account reporting period. It is the sum of the opening booked balance at the beginning of the period and all entries booked to the account during the pre-agreed account reporting period.
    # * `ForwardAvailable` - Forward available balance of money that is at the disposal of the account owner on the date specified.
    # * `Information` - Balance for informational purposes.
    # * `InterimAvailable` - Available balance calculated in the course of the account servicer's business day, at the time specified, and subject to further changes during the business day. The interim balance is calculated on the basis of booked credit and debit items during the calculation time/period specified.
    # * `InterimBooked` - Balance calculated in the course of the account servicer's business day, at the time specified, and subject to further changes during the business day. The interim balance is calculated on the basis of booked credit and debit items during the calculation time/period specified.
    # * `OpeningAvailable` - Opening balance of amount of money that is at the disposal of the account owner on the date specified.
    # * `OpeningBooked` - Book balance of the account at the beginning of the account reporting period. It always equals the closing book balance from the previous report.
    # * `PreviouslyClosedBooked` - Balance of the account at the previously closed account reporting period. The opening booked balance for the new period has to be equal to this balance.
    # Usage: the previously booked closing balance should equal (inclusive date) the booked closing balance of the date it references and equal the actual booked opening balance of the current date.
    # * `Expected` - Balance, composed of booked entries and pending items known at the time of calculation, which projects the end of day balance if everything is booked on the account and no other entry is posted.
    common:Balancetypevalues AccountStatementBalanceType?;
    # The state of the obligations managed on the account, the result of all entries on the account.
    #
    # Numerical representation of the net increases and decreases in an account at a specific point in time. (ISO20022)
    #
    # Banking: Amount available in an account for withdrawal or use.
    # Read more: http://www.businessdictionary.com/definition/balance.html
    #
    # Bookkeeping: Difference between the debit and credit sides of an account.
    # Read more: http://www.businessdictionary.com/definition/balance.html
    common:Accountbalance AccountStatementBalance?;
    # Reference identifier linking the account to appropriate tax handling GenericIdentification|GenericIdentification (https://www.iso20022.org/standardsrepository/type/GenericIdentification)|Standard|ISO20022 BM ()
    common:identifier AccountStatementIdentification?;
    # >
    # * `AccountClosure` - 
    # * `AccountOpening` - 
    # * `Annual` - 
    # * `Interim` - 
    # * `RegularPeriodic` - 
    accountstatementtypevalues AccountStatementType?;
    # Specifies the reasons for the status.
    common:text AccountStatementContentType?;
    # Period of time during which the status is valid.
    common:datetimeperiod AccountStatementPeriod?;
    # Specifies the reasons for the status.
    common:text AccountStatementContent?;
    # Date and time at which the status was assigned.
    common:datetime AccountStatementCreationDate?;
};

# Reference to the issued device submitted to authorize the transaction (e.g. card number)
// public type issueddevice record {
//     # >
//     # * `Issued` - 
//     # * `IssuedButNotActivated` - 
//     # * `Activated` - 
//     # * `Suspended` - 
//     # * `Retrieved` - 
//     common:Issueddevicestatustypevalues IssuedDeviceStatus?;
//     # Reference to the party to whom the device is issued
//     common:party IssuedDevicePartyReference?;
//     # Specifies the reasons for the status.
//     common:text IssuedDeviceConfiguration?;
//     # Reference to the device that is issued
//     common:Device IssuedDeviceReference?;
//     # Period of time during which the status is valid.
//     common:datetimeperiod IssuedDeviceValidityPeriod?;
//     # Specifies the reasons for the status.
//     common:text IssuedDeviceDeliveryMethod?;
//     # Date and time at which the status was assigned.
//     common:datetime DeviceIssueDate?;
//     # Bank branch associated with the merchant account for booking purposes ||
//     # |
//     common:branch IssuedDeviceCollectLocation?;
//     # The product or service to which the Issued Device will be attached
//     common:bankingproduct IssuedDeviceProductReference?;
//     # >
//     # * `CardDesign` - 
//     common:devicecustomizationtypevalues IssedDeviceCustomizationType?;
// };

# >
# * `AccountClosure` - 
# * `AccountOpening` - 
# * `Annual` - 
# * `Interim` - 
# * `RegularPeriodic` - 
public type accountstatementtypevalues "AccountClosure"|"AccountOpening"|"Annual"|"Interim"|"RegularPeriodic";

# Reference to the merchant facility product instance ||
# |
public type merchantagreement record {
    # An agreement between Acquiring Bank and Merchant for handling the Merchant Account and the specific terms and conditions for the merchant. 
    #
    # A written contract between a merchant and an acquirer to honor or accept credit cards, or to transmit or process for payment credit card payments, for the purchase of goods or services or a charitable contribution. (Law and Legal Definition)
    string MerchantAgreement?;
};

// # The product features/services available with a financical facility
// public type Chargeback record {
//     # Reference to the card transaction as recorded by issuer and/or acquirer
//     common:cardpaymenttransaction CardTransactionRecordReference?;
//     # Details the instruction received from Card Case to book chargeback for the transaction - could be partial chargeback - amount is detailed in instruction
//     chargebackinstruction ChargebackInstruction?;
//     # The account number associated with the card transaction
//     common:ProductAgreement CardTransactionProductInstanceReference?;
//     # The identity of the account holder submitting the transaction
//     cardholder CardHolderReference?;
//     # Reference to the issued device submitted to authorize the transaction (e.g. card number)
//     issueddevice CardTransactionIssuedDeviceReference?;
//     # Network used for handling the card payment transaction.
//     common:cardnetwork CardTransactionNetworkReference?;
//     # Reference to the legal entity (typically the customer) ||
//     # |
//     common:involvedparty CardTransactionIssuingBankReference?;
//     # Reference to the legal entity (typically the customer) ||
//     # |
//     common:involvedparty CardTransactionMerchantAcquiringBankReference?;
//     # >
//     # * `FinancialTransaction` - 
//     # * `BusinessTransaction` - 
//     # * `BankingTransaction` - 
//     # * `AccountingTransaction` - 
//     # * `BookingTransaction` - 
//     # * `AllocationTransaction` - 
//     # * `DeliveryTransaction` - 
//     # * `ProductionTransaction` - 
//     common:Transactiontypevalues CardTransactionType?;
//     # The billing currency for the merchant acquiring facility account CurrencyCode|CurrencyCode (https://www.iso20022.org/standardsrepository/type/CurrencyCode)|Standard|ISO20022 BM ()
//     common:currencycode CardTransactionCurrency?;
//     # >
//     # * `Principal` - 
//     # * `Actual` - Actual amount.
//     # * `Estimated` - Estimated amount (the final amount could be above or below).
//     # * `Maximum` - Maximum amount (the final amount must be less or equal).
//     # * `Default` - Default amount.
//     # * `Replacement` - Replacement amount.
//     # * `Incremental` - Incremental amount for reservation.
//     # * `Decremental` - Decremental amount for reservation.
//     # * `Reserved` - Reserved or updated reserved amount for reservation.
//     # * `Available` - 
//     # * `Used` - 
//     # * `DuePayable` - 
//     # * `Minimum` - 
//     # * `Open` - The amount is open.(ISO20022)
//     # * `Unknown` - The amount is unkown.(ISO20022)
//     # * `Fixed` - The amount represents a fixed value.(ISO20022)
//     common:amounttypevalues CardTransactionAmountType?;
//     # The monetary amount of the card transaction
//     common:amount CardTransactionAmount?;
//     # Reference to the legal entity (typically the customer) ||
//     # |
//     common:involvedparty CardTransactionMerchantReference?;
//     # Place where the merchant actually performed the transaction. (ISO20022)
//     common:location CardTransactionLocationReference?;
//     # The product or service to which the Issued Device will be attached
//     common:bankingproduct CardTransactionProductandServiceReference?;
//     # Date and time at which the status was assigned.
//     common:datetime CardTransactionDateandTime?;
//     # The applied currency conversion charge
//     common:feearrangement CardTransactionFXConversionCharge?;
//     # The applied currency conversion charge
//     common:feearrangement CardTransactionInterchargeFee?;
//     # Details the reference, amount, timestamp of the transaction authorization
//     common:authorization CardTransactionAuthorizationRecord?;
// };

# The product features/services available with a financical facility
public type MerchantAccount record {
    # Reference to the posting transaction against the merchant account
    'common:Transaction MerchantAccountPostingTransaction?;
    # Specifies the reasons for the status.
    common:text MerchantAcquiringAccountPostingPurpose?;
    # The monetary amount being posted to the merchant acquiring account
    common:amount MerchantAcquiringAccountPostingAmount?;
    # The value date for the posting
    common:Date MerchantAcquiringAccountPostingValueDate?;
    # Specifies the reasons for the status.
    common:text MerchantAcquiringAccountPostingResult?;
};

# The identity of the account holder submitting the transaction
public type cardholder record {
    # Identifier of the card holder. 
    string CardHolderIdentifier?;
};

# The actual cash flows associated with the fulfillment of the term
public type cash record {
    # Amount of card payment
    common:amount CashAmount?;
    # The currency information for the cash amount
    common:Accountcurrency CashCurrency?;
    # The particular date and time point in the progression of time
    common:text CashDenomination?;
};

# Reference to the agreement that is related to Merchant Relationship Agreement Agreement_x000D_
# |Agreement (https://www.iso20022.org/standardsrepository/type/Agreement)|Standard|ISO20022 BM ()
public type agreement record {
    # Date on which the agreement was signed by all parties. (ISO20022)
    common:Date AgreementSignedDate?;
    # A Classification value that distinguishes between the subject matters of Merchant Relationship Agreement ||
    # |
    agreementtypevalues AgreementType?;
    # The time period during which the agreement is valid
    common:datetimeperiod AgreementValidityPeriod?;
    # The particular date and time point in the progression of time
    common:text AgreementVersion?;
    # The status of Merchant Relationship Agreement ||
    # |
    agreementstatus AgreementStatus?;
    # The particular date and time point in the progression of time
    common:text AgreementSubjectMatter?;
    # The identifier of Condition
    common:identifier AgreementIdentification?;
    # The key dates and times associated with the agreement
    common:datetime AgreementDate?;
    # The particular date and time point in the progression of time
    common:text AgreementDescription?;
};

# Maintain the terms and conditions that apply to a commercial relationship within Merchant Relations.
public type MerchantRelationshipAgreement record {
    # A Classification value that distinguishes between Options defined within Merchant Relationship Agreement ||
    # |
    common:featuretypevalues MerchantRelationshipAgreementParameterType?;
    # A selected optional feature in a product, identified by Parameter Type ||
    # |
    common:feature MerchantRelationshipAgreementSelectedOption?;
    # A Classification value that distinguishes between the subject matters of Merchant Relationship Agreement ||
    # |
    agreementtypevalues MerchantRelationshipAgreementType?;
    # Reference to the agreement that is related to Merchant Relationship Agreement Agreement_x000D_
    # |Agreement (https://www.iso20022.org/standardsrepository/type/Agreement)|Standard|ISO20022 BM ()
    agreement MerchantRelationshipAgreementReference?;
    # Request to discharge Merchant Relationship Agreement ||
    # |
    instruction MerchantRelationshipAgreementDischargeRequest?;
    # Timetable to discharge Merchant Relationship Agreement ||
    # |
    common:schedule MerchantRelationshipAgreementDischargeSchedule?;
    # The status of Merchant Relationship Agreement ||
    # |
    agreementstatus MerchantRelationshipAgreementStatus?;
    # Reference to the customer who is involved in Merchant Relationship Agreement ||
    # |
    common:involvedparty MerchantRelationshipAgreementAssociatedParty?;
    # Reference to the customer who is involved in Merchant Relationship Agreement ||
    # |
    common:involvedparty MerchantRelationshipAgreementCustomerReference?;
    # Right to do something under the terms of Merchant Relationship Agreement Obligation|Obligation (https://www.iso20022.org/standardsrepository/type/Obligation)|Standard|ISO20022 BM ()
    common:Arrangement MerchantRelationshipAgreementObligation?;
    # Right to do something under the terms of Merchant Relationship Agreement Obligation|Obligation (https://www.iso20022.org/standardsrepository/type/Obligation)|Standard|ISO20022 BM ()
    common:Arrangement MerchantRelationshipAgreementEntitlement?;
    # Reference to the regulation which is defined in Merchant Relationship Agreement GovernanceRules|GovernanceRules (https://www.iso20022.org/standardsrepository/type/GovernanceRules)|Standard|ISO20022 BM ()
    common:RuleSet MerchantRelationshipAgreementRegulationReference?;
    # A Classification that distinguishes between the regularity domains of Merchant Relationship Agreement ||
    # |
    rulesettype MerchantRelationshipAgreementRegulationType?;
    # Reference to the jurisdiction that is assigned to Merchant Relationship Agreement in case of legal dispute. Jurisdiction|Jurisdiction (https://www.iso20022.org/standardsrepository/type/Jurisdiction)|Standard|ISO20022 BM ()
    jurisdiction MerchantRelationshipAgreementJurisdiction?;
    # Reference to the account which is linked to Merchant Relationship Agreement
    #
    # A characteristic of agreement which refers to its involved account to specify the account that will be used to register for the transactions in position keeping management. Account|Account  (https://www.iso20022.org/standardsrepository/type/Account)|Standard|ISO20022 BM ()
    common:Account MerchantRelationshipAgreementAccountReference?;
    # The subject matter of  Merchant Relationship Agreement ||
    # |
    common:Subject MerchantRelationshipAgreementSubjectMatter?;
    # Reference to the product which is linked to Merchant Relationship Agreement
    #
    # Comment: 
    # A characteristic of agreement which refers to its related products that are sold by agreement. Product_x000D_
    # |Product (https://www.iso20022.org/standardsrepository/type/Product)|Standard|ISO20022 BM ()
    common:bankingproduct MerchantRelationshipAgreementProductReference?;
    # The calendar of Merchant Relationship Agreement ||
    # |
    calendar MerchantRelationshipAgreementCalendarReference?;
    # Reference to the agreement that is related to Merchant Relationship Agreement Agreement_x000D_
    # |Agreement (https://www.iso20022.org/standardsrepository/type/Agreement)|Standard|ISO20022 BM ()
    agreement MerchantRelationshipAgreementAssociatedAgreementReference?;
};

# The status of Merchant Relationship Agreement ||
# |
public type agreementstatus record {
    # Refers to the lifecycle of a Condition
    common:status AgreementStatus?;
    # >
    # * `Offered` - 
    # * `Confirmed` - 
    # * `Completed` - 
    # * `Signed` - 
    # * `Terminated` - 
    # * `Rejected` - 
    agreementstatustypevalues AgreementStatusType?;
};

# >
# * `Offered` - 
# * `Confirmed` - 
# * `Completed` - 
# * `Signed` - 
# * `Terminated` - 
# * `Rejected` - 
public type agreementstatustypevalues "Offered"|"Confirmed"|"Completed"|"Signed"|"Terminated"|"Rejected";

# The applicable regulatory authority
public type regulatoryauthority record {
    # An organisation that is alowed to impose regulations
    string RegulatoryAuthority?;
};

# Covers the legal considerations of the agreement
public type OperationalTerm record {
    # The required status/situation for the terms to apply and or tasks that need to be completed prior to the initiation of the workstep
    common:condition Preconditions?;
    # Timetable to discharge Merchant Relationship Agreement ||
    # |
    common:schedule Schedule?;
    # The Legal Term specific Business Service
    common:businessservice BusinessService?;
    # Reference to the agreement that is related to Merchant Relationship Agreement Agreement_x000D_
    # |Agreement (https://www.iso20022.org/standardsrepository/type/Agreement)|Standard|ISO20022 BM ()
    agreement MerchantRelationshipAgreementReference?;
    # Right to do something under the terms of Merchant Relationship Agreement Obligation|Obligation (https://www.iso20022.org/standardsrepository/type/Obligation)|Standard|ISO20022 BM ()
    common:Arrangement OperationalTermReference?;
    # The particular date and time point in the progression of time
    common:text OperationalTermType?;
    # Right to do something under the terms of Merchant Relationship Agreement Obligation|Obligation (https://www.iso20022.org/standardsrepository/type/Obligation)|Standard|ISO20022 BM ()
    common:Arrangement OperationalTermDescription?;
    # A Classification value that distinguishes between Options defined within Merchant Relationship Agreement ||
    # |
    common:featuretypevalues OperationalTermParameterType?;
    # Right to do something under the terms of Merchant Relationship Agreement Obligation|Obligation (https://www.iso20022.org/standardsrepository/type/Obligation)|Standard|ISO20022 BM ()
    common:Arrangement OperationalTermParameterSetting?;
    # Details of cash flows associated with fulfillment instances of the term (can be charges made to the customer or compensating transfers to the base product profit center)
    common:cardpaymenttransaction OperationalTermTransactionRecord?;
    # >
    # * `FinancialTransaction` - 
    # * `BusinessTransaction` - 
    # * `BankingTransaction` - 
    # * `AccountingTransaction` - 
    # * `BookingTransaction` - 
    # * `AllocationTransaction` - 
    # * `DeliveryTransaction` - 
    # * `ProductionTransaction` - 
    common:Transactiontypevalues OperationalTermTransactionType?;
    # The particular date and time point in the progression of time
    common:text OperationalTermTransactionDescription?;
    # The actual cash flows associated with the fulfillment of the term
    cash OperationalTermAugmentedCashFlows?;
    # Details of cash flows associated with fulfillment instances of the term (can be charges made to the customer or compensating transfers to the base product profit center)
    common:cardpaymenttransaction PaymentInitiationTransactionInstanceReference?;
};

# A Classification value that distinguishes between the subject matters of Merchant Relationship Agreement ||
# |
public type agreementtypevalues "CustomerAgreement"|"SupplierAgreement"|"BrokerAgreement"|"SalesAgreement"|"PurchaseAgreement"|"MaintenanceAgreement"|"ProductAgreement"|"ProductSalesAgreement"|"ResourceAgreement";

# Reference to any legal requirements
public type law record {
    # The particular date and time point in the progression of time
    common:text LawType?;
    # The particular date and time point in the progression of time
    common:text LawDescription?;
    # The particular date and time point in the progression of time
    common:text LegalPenalty?;
    # The particular date and time point in the progression of time
    common:text LegalGuideline?;
};

public type OperationalTermOk record {|
    *http:Ok;
    OperationalTerm body;
|};

public type MerchantRelationshipAgreementOk record {|
    *http:Ok;
    MerchantRelationshipAgreement body;
|};
