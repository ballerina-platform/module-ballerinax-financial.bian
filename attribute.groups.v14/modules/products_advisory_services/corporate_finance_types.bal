import financial.bian.attribute.groups.common as common;

import ballerina/http;

# A Classification value that distinguishes between the type of actions undertaken within Corporate Finance Services Advice ||
# |
public type actiontype record {
    # Name by which a party is known and which is usually used to identify that party. (ISO20022)
    common:name ActionTypeName?;
    # >
    # * `Initiate` - 
    # * `Execute` - 
    # * `Create` - 
    # * `Transfer` - 
    # * `Pay` - 
    # * `Deliver` - 
    # * `Apply` - 
    # * `Calculate` - 
    actiontypevalues ActionType?;
};

public type subject record {
    # A thing that is discussed or dealt whit in agreement/arrangement about doing or not doing (as action) something.
    string Subject?;
};

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
public type arrangementtypevalues "SweepArrangement"|"WithdrawalArrangement"|"DepositArrangement"|"InterestArrangement"|"FeeArrangement"|"LienArrangement"|"InformationArrangement"|"PaymentArrangement"|"EntitlementArrangement"|"PeriodArrangement"|"CollateralArrangement"|"LimitArrangement"|"AccessArrangement"|"CardPaymentArrangement"|"StandingOrderArrangement"|"OverdraftArrangement"|"RepaymentArrangement"|"StatementArrangement"|"CreditTransferArrangement"|"ProductAndServiceArrangement"|"FactoringArrangement"|"RolloverArrangement"|"RestructuringArrangement"|"InsuranceArrangement"|"CollectionArrangement"|"UnderwritingArrangement"|"TerminationArrangement"|"MaturityArrangement";

# Obligation|Obligation (https://www.iso20022.org/standardsrepository/type/Obligation)|Standard|ISO20022 BM ()
public type arrangement record {
    # The action associated with the arrangement
    action ArrangementAction?;
    # The start date of the arrangement
    common:datetime ArrangementStartDate?;
    # The end date of the arrangement
    common:datetime ArrangementEndDate?;
    # A characteristic of arrangement which refers to the LifecycleStatus of arrangement (e.g., requested, proposed, offered, accepted, cancelled, terminated, fulfilled, etc.)
    arrangementstatus ArrangementStatus?;
    # A thing that is discussed or dealt with in the arrangement
    subject ArrangementSubjectMatter?;
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
    arrangementtypevalues Arrangementtype?;
};

# >
# * `PaymentInstruction` - 
# * `DeliveryOrder` - 
# * `InformationRequest` - 
# * `ExchangeInstruction` - 
# * `AllocationInstruction` - 
# * `MaintenanceInstruction` - 
public type instructiontypevalues "PaymentInstruction"|"DeliveryOrder"|"InformationRequest"|"ExchangeInstruction"|"AllocationInstruction"|"MaintenanceInstruction";

# >
# * `Initiate` - 
# * `Execute` - 
# * `Create` - 
# * `Transfer` - 
# * `Pay` - 
# * `Deliver` - 
# * `Apply` - 
# * `Calculate` - 
public type actiontypevalues "Initiate"|"Execute"|"Create"|"Transfer"|"Pay"|"Deliver"|"Apply"|"Calculate";

public type action record {
    # >
    # * `Initiate` - 
    # * `Execute` - 
    # * `Create` - 
    # * `Transfer` - 
    # * `Pay` - 
    # * `Deliver` - 
    # * `Apply` - 
    # * `Calculate` - 
    actiontypevalues ActionType?;
};

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

# Provide specialist advice and/or support as an ongoing service or for a specific task/event within Corporate Finance
public type CorporateFinanceServicesAdvice record {
    # Information about reactions to an Advise which is used as a basis for improvement for the Corporate Finance Services Advice. ||
    # |
    common:text CorporateFinanceServicesAdviceSubjectAreaType?;
    # A Classification value that distinguishes between Options defined within Corporate Finance Services Advice ||
    # |
    common:featuretypevalues CorporateFinanceServicesAdviceParameterType?;
    # A selected option, identified by Parameter Type ||
    # |
    common:feature CorporateFinanceServicesAdviceSelectedOption?;
    # Request to advise ||
    # |
    instruction CorporateFinanceServicesAdviceRequest?;
    # Reference to the log of (usage) ativities/events of Corporate Finance Services Advice ||
    # |
    log CorporateFinanceServicesAdviceUsageLog?;
    # Information about reactions to an Advise which is used as a basis for improvement for the Corporate Finance Services Advice. ||
    # |
    common:text CorporateFinanceServicesAdviceFeedback?;
    # A Classification value that distinguishes between the type of actions undertaken within Corporate Finance Services Advice ||
    # |
    actiontype CorporateFinanceServicesAdviceType?;
    # An unique reference to an item or an occurrence of Corporate Finance Services Advice
    string CorporateFinanceServicesAdviceReference?;
    # Obligation|Obligation (https://www.iso20022.org/standardsrepository/type/Obligation)|Standard|ISO20022 BM ()
    arrangement CorporateFinanceServicesAdviceArrangementReference?;
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
# * `Requested` - 
# * `Proposed` - 
# * `Offered` - 
# * `Accepted` - 
# * `Cancelled` - 
# * `Fulfilled` - 
# * `Terminated` - 
public type arrangementstatustypevalues "Requested"|"Proposed"|"Offered"|"Accepted"|"Cancelled"|"Fulfilled"|"Terminated";

# >
# * `DueDate` - 
# * `ExecutionDate` - 
# * `FulfillmentDate` - 
public type instructiondatetimetypevalues "DueDate"|"ExecutionDate"|"FulfillmentDate";

public type StrategicFundingOk record {|
    *http:Ok;
    StrategicFunding body;
|};

# A characteristic of arrangement which refers to the LifecycleStatus of arrangement (e.g., requested, proposed, offered, accepted, cancelled, terminated, fulfilled, etc.)
public type arrangementstatus record {
    # Refers to the lifecycle of a Condition
    common:status ArrangementStatus?;
    # >
    # * `Requested` - 
    # * `Proposed` - 
    # * `Offered` - 
    # * `Accepted` - 
    # * `Cancelled` - 
    # * `Fulfilled` - 
    # * `Terminated` - 
    arrangementstatustypevalues ArrangementStatusType?;
};

# Reference to the log of (usage) ativities/events of Corporate Finance Services Advice ||
# |
public type log record {
    # Information about reactions to an Advise which is used as a basis for improvement for the Corporate Finance Services Advice. ||
    # |
    common:text LogType?;
    # The time period covered by the log
    common:datetimeperiod LogPeriod?;
    # The date and time when the log entry was created
    common:datetime LogDate?;
    # The unique identifier for the log entry
    common:identifier LogIdentification?;
};

public type CapitalStructuringOk record {|
    *http:Ok;
    CapitalStructuring body;
|};

# The Capital Structuring Topic advice is one specific topic that can be included in providing Capital Structuring Topic
public type TacticalFunding record {
    # Reference to Tactical Funding Topic
    string CorporateFinanceServicesAdviceReference?;
    # Reference to Tactical Funding Topic
    string TacticalFundingTopicReference?;
    # Information about reactions to an Advise which is used as a basis for improvement for the Corporate Finance Services Advice. ||
    # |
    common:text TacticalFundingTopicType?;
    # The Capital Structuring Topic specific Business Service
    common:businessservice BusinessService?;
    # The operating unit/employee responsible for providing the advice/recommendation
    common:involvedparty BusinessUnitorEmployeeReference?;
    # The completion status once the advice/recommendation has been provided
    common:condition Postconditions?;
    # The completion status once the advice/recommendation has been provided
    common:condition Preconditions?;
    # The timing and key actions/milestones involved in providing the advice/recommendation
    common:schedule Schedule?;
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

# An identifier that allows to uniquely refer to an instance of an Instruction.
public type instructionidentification record {
    # The identifier value for the instruction
    common:identifier InstructionIdentification?;
    # >
    # * `OrderNumber` - 
    # * `InstructionNumber` - 
    instructionidentificationtypevalues InstructionIdentificationType?;
};

public type CorporateFinanceServicesAdviceOk record {|
    *http:Ok;
    CorporateFinanceServicesAdvice body;
|};

# The Capital Structuring Topic advice is one specific topic that can be included in providing Capital Structuring Topic
public type CapitalStructuring record {
    # Reference to Capital Structuring Topic
    string CorporateFinanceServicesAdviceReference?;
    # Reference to Capital Structuring Topic
    string CapitalStructuringTopicReference?;
    # Information about reactions to an Advise which is used as a basis for improvement for the Corporate Finance Services Advice. ||
    # |
    common:text CapitalStructuringTopicType?;
    # The Capital Structuring Topic specific Business Service
    common:businessservice BusinessService?;
    # The operating unit/employee responsible for providing the advice/recommendation
    common:involvedparty BusinessUnitorEmployeeReference?;
    # The completion status once the advice/recommendation has been provided
    common:condition Postconditions?;
    # The completion status once the advice/recommendation has been provided
    common:condition Preconditions?;
    # The timing and key actions/milestones involved in providing the advice/recommendation
    common:schedule Schedule?;
};

public type TacticalFundingOk record {|
    *http:Ok;
    TacticalFunding body;
|};

# >
# * `OrderNumber` - 
# * `InstructionNumber` - 
public type instructionidentificationtypevalues "OrderNumber"|"InstructionNumber";

# Request to advise ||
# |
public type instruction record {
    # The date and time details of the instruction
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
    # Information about reactions to an Advise which is used as a basis for improvement for the Corporate Finance Services Advice. ||
    # |
    common:text InstructionResult?;
    # Information about reactions to an Advise which is used as a basis for improvement for the Corporate Finance Services Advice. ||
    # |
    common:text InstructionDescription?;
    # Reference to the log of (usage) ativities/events of Corporate Finance Services Advice ||
    # |
    log InstructionLog?;
    # Information about reactions to an Advise which is used as a basis for improvement for the Corporate Finance Services Advice. ||
    # |
    common:text InstructionPurpose?;
};

# The Capital Structuring Topic advice is one specific topic that can be included in providing Capital Structuring Topic
public type StrategicFunding record {
    # Reference to Strategic Funding Topic
    string CorporateFinanceServicesAdviceReference?;
    # Reference to Strategic Funding Topic
    string StrategicFundingTopicReference?;
    # Information about reactions to an Advise which is used as a basis for improvement for the Corporate Finance Services Advice. ||
    # |
    common:text StrategicFundingTopicType?;
    # The Capital Structuring Topic specific Business Service
    common:businessservice BusinessService?;
    # The operating unit/employee responsible for providing the advice/recommendation
    common:involvedparty BusinessUnitorEmployeeReference?;
    # The completion status once the advice/recommendation has been provided
    common:condition Postconditions?;
    # The completion status once the advice/recommendation has been provided
    common:condition Preconditions?;
    # The timing and key actions/milestones involved in providing the advice/recommendation
    common:schedule Schedule?;
};
