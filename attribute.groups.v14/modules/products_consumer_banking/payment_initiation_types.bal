import financial.bian.attribute.groups.common as common;

import ballerina/http;

# The sub-tasks involved in the execution of the financial transaction
# Represents compliance checking and validation for payment transactions
public type Compliance record {
    # >
    # * `RegulatoryComplianceCheck` - 
    # * `LegalComplianceCheck` - 
    # * `GuidelineComplianceCheck` - 
    compliancechecktypevalues PaymentTransactionComplianceCheckType?;
    # The outcome of the compliance check
    compliancecheck PaymentTransactionComplianceCheckResult?;
    # Details of the payment order initiation task
    common:task PaymentTransactionComplianceTaskResult?;
};

# Reference to the payer ||
# |
public type payer record {
    # Identifier of the payer.
    string PayerIdentifier?;
};

# The target for the payment ||
# |
public type payee record {
    # Identifier of the payee.
    string PayeeIdentifier?;
};

public type PaymentInitiationTransactionOk record {|
    *http:Ok;
    PaymentInitiationTransaction body;
|};

# The outcome of the compliance check
public type compliancecheck record {
    # The type or category of the compliance check performed
    string ComplianceCheckType?;
};

# Reference to the payee's bank ||
# |
public type payeebank record {
    # Identifier of the payee bank.
    string PayeeBankIdentifier?;
};

# Execute a well-bounded financial transaction/task, typically involving largely automated/structured fulfillment processing within Payment Initiation.
# Represents the complete payment initiation transaction details including payer, payee, and processing information
public type PaymentInitiationTransaction record {
    # The type of payment transaction (e.g. over the counter-OTC, intra-account, overseas) ||
    # |
    common:Transactiontypevalues PaymentTransactionType?;
    # Reference used by the customer to identify a past payment transaction PaymentTerms|PaymentTerms (https://www.iso20022.org/standardsrepository/type/PaymentTerms)|Standard|ISO20022 BM ()
    common:paymentarrangement RecurringPaymentRecord?;
    # Reference to the customer initiating the payment transaction ||
    # |
    common:involvedparty RecurringPaymentCustomerReference?;
    # Reference used by the customer to identify a past payment transaction PaymentTerms|PaymentTerms (https://www.iso20022.org/standardsrepository/type/PaymentTerms)|Standard|ISO20022 BM ()
    common:paymentarrangement RecurringPaymentReference?;
    # Reference to the customer initiating the payment transaction ||
    # |
    common:involvedparty CustomerReference?;
    # The details of the payment transaction Payment|Payment (https://www.iso20022.org/standardsrepository/type/Payment)|Standard|ISO20022 BM ()
    common:paymenttransaction PaymentTransaction?;
    # Reference to the payer ||
    # |
    payer PayerReference?;
    # Reference to the payer's bank ||
    # |
    payerbank PayerBankReference?;
    # Reference to the payee's account (the target for the funds) ||
    # |
    common:ProductAgreement PayerProductInstanceReference?;
    # The target for the payment ||
    # |
    payee PayeeReference?;
    # Reference to the payee's bank ||
    # |
    payeebank PayeeBankReference?;
    # Reference to the payee's account (the target for the funds) ||
    # |
    common:ProductAgreement PayeeProductInstanceReference?;
    # Key amounts included in the transaction CurrencyAndAmount|CurrencyAndAmount (https://www.iso20022.org/standardsrepository/type/CurrencyAndAmount)|Standard|ISO20022  ()
    common:amount Amount?;
    # Currency for the amounts CurrencyCode|CurrencyCode (https://www.iso20022.org/standardsrepository/type/CurrencyCode)|Standard|ISO20022 BM ()
    common:currencycode Currency?;
    # Key dates associated with the transaction (e.g. order, booking, execution, value date, interest bearing) ||
    # |
    common:datetimetypevalues DateType?;
    # Value of the specific date ISODateTime|ISODateTime (https://www.iso20022.org/standardsrepository/type/ISODateTime)|Standard|ISO20022 BM ()
    common:datetime Date?;
    # Processing and exchange fees as appropriate Adjustment|Adjustment (https://www.iso20022.org/standardsrepository/type/Adjustment)|Standard|ISO20022 BM ()
    common:feearrangement PaymentFeesCharges?;
    # Selection of the preferred mechanism (e.g. SWIFT, ACH, Intra account) ||
    # |
    paymentmechanismtypevalues PaymentMechanism?;
    # The copy of the identification document used ||
    # |
    common:text PaymentPurpose?;
    # Payer identification document for OTC payment transactions ||
    # |
    common:documentdirectoryentry DocumentDirectoryEntryInstanceReference?;
    # The copy of the identification document used ||
    # |
    common:text DocumentContent?;
};

# >
# * `RegulatoryComplianceCheck` - 
# * `LegalComplianceCheck` - 
# * `GuidelineComplianceCheck` - 
public type compliancechecktypevalues "RegulatoryComplianceCheck"|"LegalComplianceCheck"|"GuidelineComplianceCheck";

# The sub-tasks involved in the execution of the financial transaction
# Represents the initiation of a payment order in the system
public type OrderInitiation record {
    # The reference to the payment order processing task
    common:identifier PaymentOrderProcedureInstanceReference?;
    # The returned status of the payment order processing
    common:status PaymentOrderProcedureInstanceStatus?;
    # Details of the payment order initiation task
    common:task OrderInitiationTaskResult?;
};

# The sub-tasks involved in the execution of the financial transaction
# Represents verification of available funds for payment processing
public type FundingCheck record {
    # The outcome of the funds available check
    fundingcheck PaymentTransactionFundingCheckResult?;
};

# The outcome of the funds available check
public type fundingcheck record {
    # An assessment to check the fund is available
    string FundingCheck?;
};

# Reference to the payer's bank ||
# |
public type payerbank record {
    # Identifier of the payer bank.
    string PayerBankIdentifier?;
};

# Selection of the preferred mechanism (e.g. SWIFT, ACH, Intra account) ||
# |
public type paymentmechanismtypevalues "ACH"|"SWIFT";
