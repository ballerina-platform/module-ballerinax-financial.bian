import financial.bian.attribute.groups.common as common;

import ballerina/http;

# A characteristic of instruction which refers to the LifecycleStatus of instruction (e.g., requested, executed, fulfilled, etc.); 
public type instructionstatus record {
    # >
    # * `Pendingprocessing` - Processing of the instruction is pending.
    # * `Acknowledgedaccepted` - Instruction has been acknowledged and accepted and is validated for further processing.
    # * `Rejected` - Instruction has been rejected.
    # * `Accepted` - Instruction has been accepted and is validated for further processing.
    # * `Completed` - Processing has been completed.
    # * `Notreceived` - No instruction has been received (to be used in a reminder).
    # * `Cancelled` - Instruction has been cancelled.
    # * `Beingcancelled` - Cancel request is being processed.
    # * `Receivedbyissuerorregistrar` - Instruction has been received by Issuer.
    # * `Pending` - Instruction is pending.
    # * `Standinginstruction` - Standing instruction is applied.
    # * `Queued` - Instruction is queued.
    # * `Cancelledbysubcustodian` - Instruction has been cancelled by the agent, for example, due to an event deadline extension.
    # * `Forwarded` - Accepted and sent along the chain.
    instructionstatustypevalues InstructionStatusType?;
    # Refers to the lifecycle of a Condition
    common:status InstructionStatus?;
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

public type instructiondatetime record {
    common:datetime InstructionDate?;
    # >
    # * `DueDate` - 
    # * `ExecutionDate` - 
    # * `FulfillmentDate` - 
    instructiondatetimetypevalues InstructionDateType?;
};

# >
# * `DueDate` - 
# * `ExecutionDate` - 
# * `FulfillmentDate` - 
public type instructiondatetimetypevalues "DueDate"|"ExecutionDate"|"FulfillmentDate";

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

# Reference to the jurisdiction that is assigned to Merchant Relationship Agreement in case of legal dispute. Jurisdiction|Jurisdiction (https://www.iso20022.org/standardsrepository/type/Jurisdiction)|Standard|ISO20022 BM ()
public type jurisdiction record {
    # Jurisdiction that will be assigned in case of legal dispute.
    string Jurisdiction?;
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

# A Classification that distinguishes between the regularity domains of Merchant Relationship Agreement ||
# |
public type rulesettype record {
    # Name by which a party is known and which is usually used to identify that party. (ISO20022)
    common:name RuleSetTypeName?;
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
};

# The calendar of Merchant Relationship Agreement ||
# |
public type calendar record {
    # >
    # * `UKCalendar` - 
    # * `ChineseCalendar` - 
    calendartypevalues CalendarType?;
    # Name by which a party is known and which is usually used to identify that party. (ISO20022)
    common:name CalendarName?;
};

# An identifier that allows to uniquely refer to an instance of an Instruction.
public type instructionidentification record {
    # The identifier of Condition
    common:identifier InstructionIdentification?;
    # >
    # * `OrderNumber` - 
    # * `InstructionNumber` - 
    instructionidentificationtypevalues InstructionIdentificationType?;
};

# >
# * `OrderNumber` - 
# * `InstructionNumber` - 
public type instructionidentificationtypevalues "OrderNumber"|"InstructionNumber";

# Request to discharge Merchant Relationship Agreement ||
# |
public type instruction record {
    # The date and time information for the instruction
    instructiondatetime InstructionDate?;
    # A characteristic of instruction which refers to the LifecycleStatus of instruction (e.g., requested, executed, fulfilled, etc.); 
    instructionstatus InstructionStatus?;
    # An identifier that allows to uniquely refer to an instance of an Instruction.
    instructionidentification InstructionIdentifier?;
    # >
    # * `PaymentInstruction` - 
    # * `DeliveryOrder` - 
    # * `InformationRequest` - 
    # * `ExchangeInstruction` - 
    # * `AllocationInstruction` - 
    # * `MaintenanceInstruction` - 
    instructiontypevalues InstructionType?;
    # The particular date and time point in the progression of time
    common:text InstructionResult?;
    # The particular date and time point in the progression of time
    common:text InstructionDescription?;
    # The log or audit trail of the instruction
    common:Log InstructionLog?;
    # The particular date and time point in the progression of time
    common:text InstructionPurpose?;
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

# >
# * `PaymentInstruction` - 
# * `DeliveryOrder` - 
# * `InformationRequest` - 
# * `ExchangeInstruction` - 
# * `AllocationInstruction` - 
# * `MaintenanceInstruction` - 
public type instructiontypevalues "PaymentInstruction"|"DeliveryOrder"|"InformationRequest"|"ExchangeInstruction"|"AllocationInstruction"|"MaintenanceInstruction";

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

# >
# * `Pendingprocessing` - Processing of the instruction is pending.
# * `Acknowledgedaccepted` - Instruction has been acknowledged and accepted and is validated for further processing.
# * `Rejected` - Instruction has been rejected.
# * `Accepted` - Instruction has been accepted and is validated for further processing.
# * `Completed` - Processing has been completed.
# * `Notreceived` - No instruction has been received (to be used in a reminder).
# * `Cancelled` - Instruction has been cancelled.
# * `Beingcancelled` - Cancel request is being processed.
# * `Receivedbyissuerorregistrar` - Instruction has been received by Issuer.
# * `Pending` - Instruction is pending.
# * `Standinginstruction` - Standing instruction is applied.
# * `Queued` - Instruction is queued.
# * `Cancelledbysubcustodian` - Instruction has been cancelled by the agent, for example, due to an event deadline extension.
# * `Forwarded` - Accepted and sent along the chain.
public type instructionstatustypevalues "Pendingprocessing"|"Acknowledgedaccepted"|"Rejected"|"Accepted"|"Completed"|"Notreceived"|"Cancelled"|"Beingcancelled"|"Receivedbyissuerorregistrar"|"Pending"|"Standinginstruction"|"Queued"|"Cancelledbysubcustodian"|"Forwarded";

public type OperationalTermOk record {|
    *http:Ok;
    OperationalTerm body;
|};

# Reference to any regulatory requirements
public type regulation record {
    # The particular date and time point in the progression of time
    common:text RegulationDefinition?;
};

public type MerchantRelationshipAgreementOk record {|
    *http:Ok;
    MerchantRelationshipAgreement body;
|};

# >
# * `UKCalendar` - 
# * `ChineseCalendar` - 
public type calendartypevalues "UKCalendar"|"ChineseCalendar";
