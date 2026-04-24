import financial.bian.attribute.groups.common as common;

import ballerina/http;

# A Classification value that specifies type of transaction for this  Bearer Document Transaction ||
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
    common:Actiontypevalues ActionType?;
};

public type BankGuaranteedPaymentRemittanceOk record {|
    *http:Ok;
    BankGuaranteedPaymentRemittance body;
|};

public type BankGuaranteedPaymentSpecificationOk record {|
    *http:Ok;
    BankGuaranteedPaymentSpecification body;
|};

# The Bank Guaranteed Payment Specification Task is a discrete action or task that is required in the execution of the Bank Guaranteed Payment Specification Task
public type BankGuaranteedPaymentRemittance record {
    # The required status/situation prior to the execution of the task
    common:condition Preconditions?;
    # The timing and key actions/milestones involved in completing the transaction task
    common:schedule Schedule?;
    # The Bank Guaranteed Payment Specification Task specific Business Service
    common:businessservice BusinessService?;
    # The required status/situation prior to the execution of the task
    common:condition Postconditions?;
    # An unique reference to an item or an occurrence of Bearer Document Transaction ObligationFulfilment|ObligationFulfilment (https://www.iso20022.org/standardsrepository/type/ObligationFulfilment)|Standard|ISO20022 BM ()
    'common:Transaction BearerDocumentTransactionReference?;
    # Reference to Bank Guaranteed Payment Specification Task
    common:task BankGuaranteedPaymentRemittanceTaskReference?;
    # The particular date and time point in the progression of time
    common:text BankGuaranteedPaymentRemittanceTaskType?;
};

# The Bank Guaranteed Payment Specification Task is a discrete action or task that is required in the execution of the Bank Guaranteed Payment Specification Task
public type BankGuaranteedPaymentSpecification record {
    # The required status/situation prior to the execution of the task
    common:condition Preconditions?;
    # The timing and key actions/milestones involved in completing the transaction task
    common:schedule Schedule?;
    # The Bank Guaranteed Payment Specification Task specific Business Service
    common:businessservice BusinessService?;
    # The required status/situation prior to the execution of the task
    common:condition Postconditions?;
    # An unique reference to an item or an occurrence of Bearer Document Transaction ObligationFulfilment|ObligationFulfilment (https://www.iso20022.org/standardsrepository/type/ObligationFulfilment)|Standard|ISO20022 BM ()
    'common:Transaction BearerDocumentTransactionReference?;
    # Reference to Bank Guaranteed Payment Specification Task
    common:task BankGuaranteedPaymentSpecificationTaskReference?;
    # The particular date and time point in the progression of time
    common:text BankGuaranteedPaymentSpecificationTaskType?;
};

public type BearerDocumentTransactionOk record {|
    *http:Ok;
    BearerDocumentTransaction body;
|};

public type BearerDocumentCreationandRegistrationOk record {|
    *http:Ok;
    BearerDocumentCreationandRegistration body;
|};

# Execute a well-bounded financial transaction/task, typically involving largely automated/structured fulfillment processing within Bank Drafts. 
public type BearerDocumentTransaction record {
    # A Classification value that distinguishes between business service transaction within Bearer Document Transaction ||
    # |
    common:featuretypevalues BearerDocumentTransactionParameterType?;
    # A selected optional business service as subject matter of Bearer Document Transaction ||
    # |
    'common:Service BearerDocumentTransactionSelectedOption?;
    # The status of Bearer Document Transaction ||
    # |
    common:Transactionstatus BearerDocumentTransactionStatus?;
    # A Classification value that specifies type of transaction for this  Bearer Document Transaction ||
    # |
    actiontype BearerDocumentTransactionType?;
    # An unique reference to an item or an occurrence of Bearer Document Transaction ObligationFulfilment|ObligationFulfilment (https://www.iso20022.org/standardsrepository/type/ObligationFulfilment)|Standard|ISO20022 BM ()
    'common:Transaction BearerDocumentTransactionReference?;
    # Document _x000D_
    # |Document (https://www.iso20022.org/standardsrepository/type/Document)|Standard|ISO20022 BM ()
    common:Document BearerDocumentReference?;
    # Payment|Payment (https://www.iso20022.org/standardsrepository/type/Payment)|Standard|ISO20022 BM ()
    common:paymentinstruction BearerDocumentInstructionReference?;
    # ||
    # |
    common:involvedparty BearerDocumentInvolvedPartyReference?;
};

# The Bank Guaranteed Payment Specification Task is a discrete action or task that is required in the execution of the Bank Guaranteed Payment Specification Task
public type BearerDocumentCreationandRegistration record {
    # The required status/situation prior to the execution of the task
    common:condition Preconditions?;
    # The timing and key actions/milestones involved in completing the transaction task
    common:schedule Schedule?;
    # The Bank Guaranteed Payment Specification Task specific Business Service
    common:businessservice BusinessService?;
    # The required status/situation prior to the execution of the task
    common:condition Postconditions?;
    # An unique reference to an item or an occurrence of Bearer Document Transaction ObligationFulfilment|ObligationFulfilment (https://www.iso20022.org/standardsrepository/type/ObligationFulfilment)|Standard|ISO20022 BM ()
    'common:Transaction BearerDocumentTransactionReference?;
    # Reference to Bank Guaranteed Payment Specification Task
    common:task BearerDocumentCreationandRegistrationTaskReference?;
    # The particular date and time point in the progression of time
    common:text BearerDocumentCreationandRegistrationTaskType?;
};
