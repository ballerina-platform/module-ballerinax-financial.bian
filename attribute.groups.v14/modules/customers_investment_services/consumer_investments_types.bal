import financial.bian.attribute.groups.common as common;

import ballerina/http;

# The sub-tasks involved in the execution of the financial transaction
public type Compliance record {
    # >
    # * `RegulatoryComplianceCheck` - 
    # * `LegalComplianceCheck` - 
    # * `GuidelineComplianceCheck` - 
    common:Compliancechecktypevalues ConsumerSecuritiesOrderTransactionComplianceCheckType?;
    # The outcome of the compliance check
    ComplianceCheck ConsumerSecuritiesOrderTransactionComplianceCheckResult?;
    # Details of the overall compliance checking process
    common:Task ConsumerSecuritiesOrderTransactionComplianceTaskResult?;
};

public type ConsumerSecuritiesOrderTransactionOk record {|
    *http:Ok;
    # body
    ConsumerSecuritiesOrderTransaction body;
|};

# The outcome of the compliance check
public type ComplianceCheck record {
    # ComplianceCheckType
    string ComplianceCheckType?;
};

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
