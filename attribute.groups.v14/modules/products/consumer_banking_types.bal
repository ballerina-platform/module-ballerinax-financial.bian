import ballerina/http;
import financial.bian.attribute.groups.common as common;

# >
# * `RefreshToken` - 
# * `AccessToken` - 
# * `SecurityToken` - 
# * `AuthenticationToken` - 
public type tokentypevalues "RefreshToken"|"AccessToken"|"SecurityToken"|"AuthenticationToken";

# >
# * `Software` - Software protection method.
# * `Trustedexectutionenvironment` - Trusted execution environment method.
# * `Secureelement` - Secure element method.
# * `Secureenclave` - Secure enclave method.
# * `Otherprivate` - Other privately assigned code.
# * `Othernational` - Other code assigned by national organisation.
# * `Trustedplatformmodule` - Trusted Platform Module (TPM).
# * `Virtualtrustedexecutionenvironment` - Virtual trusted execution environment
public type tokenprotectionmethodtypevalues "Software"|"Trustedexectutionenvironment"|"Secureelement"|"Secureenclave"|"Otherprivate"|"Othernational"|"Trustedplatformmodule"|"Virtualtrustedexecutionenvironment";

# >
# * `AssertedAuthentication` - 
# * `RiskBasedNoninteractiveAuthentication` - 
# * `InteractiveAuthentication` - 
public type tokenidentificationandverificationmethodtypevalues "AssertedAuthentication"|"RiskBasedNoninteractiveAuthentication"|"InteractiveAuthentication";

# Represents service access details for a brokered product
public type ServiceAccess record {
    # An unique reference to an item or an occurrence of Service Access
    # GenericIdentification|GenericIdentification (https://www.iso20022.org/standardsrepository/type/GenericIdentification)|Standard|ISO20022 BM ()
    common:identifier ServiceAccessIdentifier?;
    # The type of service access being provided
    common:text ServiceAccessType?;
};

# Oversee the working of a business unit, assign work, manage against a plan and troubleshoot issues within Brokered Product.
public type BrokeredProductFacility record {
    # Reference to the Customer's account ||
    # |
    accountaccessconsent ConsentReference?;
    # ||
    # |
    token ActiveAccessTokenReference?;
    # An unique reference to an item or an occurrence of <CR>
    # GenericIdentification|GenericIdentification (https://www.iso20022.org/standardsrepository/type/GenericIdentification)|Standard|ISO20022 BM ()
    common:identifier BrokeredProductFacilityReference?;
    # ||
    # |
    common:involvedparty ServiceProviderReference?;
    # ||
    # |
    common:involvedparty ServiceUserReference?;
    # ||
    # |
    common:involvedparty ThirdPartyProviderReference?;
};

# Represents a request for a token
public type tokenrequest record {
    # An unique reference to identify the token request
    # GenericIdentification|GenericIdentification (https://www.iso20022.org/standardsrepository/type/GenericIdentification)|Standard|ISO20022 BM ()
    common:identifier TokenRequestIdentification?;
    # The reason for the token request
    common:text TokenRequestReason?;
};

# >
# * `Active` - 
# * `Expired` - 
# * `Cancelled` - 
# * `Generated` - 
# * `Stored` - 
# * `Mapped` - 
# * `Routed` - 
# * `Suspension` - 
# * `Updated` - 
public type tokenstatustypevalues "Active"|"Expired"|"Cancelled"|"Generated"|"Stored"|"Mapped"|"Routed"|"Suspension"|"Updated";

# Represents a security token used for authentication and authorization
# ||
# |
public type token record {
    # An unique reference to an item or an occurrence of <CR>
    # GenericIdentification|GenericIdentification (https://www.iso20022.org/standardsrepository/type/GenericIdentification)|Standard|ISO20022 BM ()
    common:identifier TokenIdentification?;
    # >
    # * `Active` - 
    # * `Expired` - 
    # * `Cancelled` - 
    # * `Generated` - 
    # * `Stored` - 
    # * `Mapped` - 
    # * `Routed` - 
    # * `Suspension` - 
    # * `Updated` - 
    tokenstatustypevalues TokenStatus?;
    # >
    # * `AssertedAuthentication` - 
    # * `RiskBasedNoninteractiveAuthentication` - 
    # * `InteractiveAuthentication` - 
    tokenidentificationandverificationmethodtypevalues TokenIdentificationAndVerificationMethod?;
    # The date when the token status was last updated
    common:datetime TokenStatusDate?;
    # Reference to the device associated with this token
    common:Device TokenDeviceReference?;
    # Reference to the token request that initiated this token
    tokenrequest TokenRequestReference?;
    # >
    # * `Software` - Software protection method.
    # * `Trustedexectutionenvironment` - Trusted execution environment method.
    # * `Secureelement` - Secure element method.
    # * `Secureenclave` - Secure enclave method.
    # * `Otherprivate` - Other privately assigned code.
    # * `Othernational` - Other code assigned by national organisation.
    # * `Trustedplatformmodule` - Trusted Platform Module (TPM).
    # * `Virtualtrustedexecutionenvironment` - Virtual trusted execution environment
    tokenprotectionmethodtypevalues TokenProtectionMethod?;
    # >
    # * `Device` - Stored in device.
    # * `Onfile` - Storage is on file.
    # * `Cardacceptorwallet` - Storage is in wallet managed by card acceptor.
    # * `Issuerwallet` - Storage is in wallet managed by Issuer.
    # * `Thirdpartywallet` - Storage location is in wallet managed by a third party.
    # * `Otherprivate` - Code defined by private agreement.
    # * `Othernational` - Code defined by national standards organisation.
    tokenstoragelocationtypevalues TokenStorageLocation?;
    # >
    # * `RefreshToken` - 
    # * `AccessToken` - 
    # * `SecurityToken` - 
    # * `AuthenticationToken` - 
    tokentypevalues TokenType?;
};

# >
# * `Device` - Stored in device.
# * `Onfile` - Storage is on file.
# * `Cardacceptorwallet` - Storage is in wallet managed by card acceptor.
# * `Issuerwallet` - Storage is in wallet managed by Issuer.
# * `Thirdpartywallet` - Storage location is in wallet managed by a third party.
# * `Otherprivate` - Code defined by private agreement.
# * `Othernational` - Code defined by national standards organisation.
public type tokenstoragelocationtypevalues "Device"|"Onfile"|"Cardacceptorwallet"|"Issuerwallet"|"Thirdpartywallet"|"Otherprivate"|"Othernational";

# Reference to the Customer's account access consent
# Represents the consent provided by the customer for account access
public type accountaccessconsent record {
    # An unique reference to an item or an occurrence of <CR>
    # GenericIdentification|GenericIdentification (https://www.iso20022.org/standardsrepository/type/GenericIdentification)|Standard|ISO20022 BM ()
    common:identifier Identification?;
    # >
    # * `Authorised` - 
    # * `AwaitingAuthorization` - 
    # * `Rejected` - 
    # * `Revoked` - 
    consentstatustypevalues Status?;
    # The date and time when the consent expires
    common:datetime ExpirationDateTime?;
    # The date and time when the consent was created
    common:datetime CreationDateTime?;
    # Reference to the account covered by this consent
    common:ProductAgreement ConsentAccount?;
};

# >
# * `Authorised` - 
# * `AwaitingAuthorization` - 
# * `Rejected` - 
# * `Revoked` - 
public type consentstatustypevalues "Authorised"|"AwaitingAuthorization"|"Rejected"|"Revoked";

public type BrokeredProductFacilityOk record {|
    *http:Ok;
    BrokeredProductFacility body;
|};

public type InitiateCurrencyExchangeTransactionResponseOk record {|
    *http:Ok;
    InitiateCurrencyExchangeTransactionResponse body;
|};

# Output: InCR Instantiate a new Currency Exchange Transaction
# Response containing details of the newly created currency exchange transaction
public type InitiateCurrencyExchangeTransactionResponse record {
    # The currency exchange transaction details with status and parameters
    ControlCurrencyExchangeTransactionResponse_CurrencyExchangeTransaction CurrencyExchangeTransaction?;
};

# Output: EcCR Accept, verify, etc. aspects of Currency Exchange Transaction processing
# Response containing exchange verification details
public type ExchangeCurrencyExchangeTransactionResponse record {
    # The verified currency exchange transaction details with updated status
    ControlCurrencyExchangeTransactionResponse_CurrencyExchangeTransaction CurrencyExchangeTransaction?;
};

# Input: CoCR Control the processing of Currency Exchange Transaction
# Request to control currency exchange transaction processing
public type ControlCurrencyExchangeTransactionRequest record {
    # Currency exchange transaction control parameters including type and options
    ControlCurrencyExchangeTransactionRequest_CurrencyExchangeTransaction CurrencyExchangeTransaction?;
};

# Output: UpCR Update details relating to Currency Exchange Transaction
public type UpdateCurrencyExchangeTransactionResponse record {
    # The updated currency exchange transaction details
    ControlCurrencyExchangeTransactionResponse_CurrencyExchangeTransaction CurrencyExchangeTransaction?;
};

# Output: ReCR Retrieve details about any aspect of Currency Exchange Transaction
public type RetrieveCurrencyExchangeTransactionResponse record {
    # The retrieved currency exchange transaction details
    ControlCurrencyExchangeTransactionRequest_CurrencyExchangeTransaction CurrencyExchangeTransaction?;
};

public type ControlCurrencyExchangeTransactionRequest_CurrencyExchangeTransaction record {
    # A Classification value that distinguishes between business service transaction within Currency Exchange Transaction ||
    # |
    common:featuretypevalues CurrencyExchangeTransactionParameterType?;
    # A selected optional business service as subject matter of Currency Exchange Transaction ||
    # |
    common:feature CurrencyExchangeTransactionSelectedOption?;
    # The status of Currency Exchange Transaction Status |Status  (https://www.iso20022.org/standardsrepository/type/Status)|Standard|ISO20022 BM ()
    common:status CurrencyExchangeTransactionStatus?;
    # A Classification value that specifies type of transaction for this  Currency Exchange Transaction ||
    # |
    common:Transactiontypevalues CurrencyExchangeTransactionType?;
    # A Classification value that specifies type of transaction for this  Currency Exchange Transaction ||
    # |
    common:Transactiontypevalues CurrencyExchangeTransactionTransactionType?;
};

# Input: EcCR Accept, verify, etc. aspects of Currency Exchange Transaction processing
public type ExchangeCurrencyExchangeTransactionRequest record {
    # Currency exchange transaction details for verification
    ControlCurrencyExchangeTransactionRequest_CurrencyExchangeTransaction CurrencyExchangeTransaction?;
};

# Input: RqCR Request manual intervention or a decision with respect to Currency Exchange Transaction
public type RequestCurrencyExchangeTransactionRequest record {
    # Currency exchange transaction details requiring manual intervention
    ControlCurrencyExchangeTransactionRequest_CurrencyExchangeTransaction CurrencyExchangeTransaction?;
};

# Input: UpCR Update details relating to Currency Exchange Transaction
public type UpdateCurrencyExchangeTransactionRequest record {
    # Currency exchange transaction details to be updated
    ControlCurrencyExchangeTransactionRequest_CurrencyExchangeTransaction CurrencyExchangeTransaction?;
};

public type ControlCurrencyExchangeTransactionResponse_CurrencyExchangeTransaction record {
    # A Classification value that distinguishes between business service transaction within Currency Exchange Transaction ||
    # |
    common:featuretypevalues CurrencyExchangeTransactionParameterType?;
    # A selected optional business service as subject matter of Currency Exchange Transaction ||
    # |
    common:feature CurrencyExchangeTransactionSelectedOption?;
    # The status of Currency Exchange Transaction Status |Status  (https://www.iso20022.org/standardsrepository/type/Status)|Standard|ISO20022 BM ()
    common:status CurrencyExchangeTransactionStatus?;
};

# Output: CoCR Control the processing of Currency Exchange Transaction
public type ControlCurrencyExchangeTransactionResponse record {
    # The controlled currency exchange transaction response details
    ControlCurrencyExchangeTransactionResponse_CurrencyExchangeTransaction CurrencyExchangeTransaction?;
};

# Input: InCR Instantiate a new Currency Exchange Transaction
public type InitiateCurrencyExchangeTransactionRequest record {
    # Currency exchange transaction initiation details
    ControlCurrencyExchangeTransactionRequest_CurrencyExchangeTransaction CurrencyExchangeTransaction?;
};

# Input: ExCR Execute an available automated action for Currency Exchange Transaction
public type ExecuteCurrencyExchangeTransactionRequest record {
    # Currency exchange transaction execution details
    ControlCurrencyExchangeTransactionRequest_CurrencyExchangeTransaction CurrencyExchangeTransaction?;
};

# Output: RqCR Request manual intervention or a decision with respect to Currency Exchange Transaction
public type RequestCurrencyExchangeTransactionResponse record {
    # The response for the manual intervention request
    ControlCurrencyExchangeTransactionResponse_CurrencyExchangeTransaction CurrencyExchangeTransaction?;
};

# Output: ExCR Execute an available automated action for Currency Exchange Transaction
public type ExecuteCurrencyExchangeTransactionResponse record {
    # The execution result for the currency exchange transaction
    ControlCurrencyExchangeTransactionResponse_CurrencyExchangeTransaction CurrencyExchangeTransaction?;
};

# The product features/services available with a financial facility
# Represents automated transfer of funds between accounts based on predefined criteria
public type Sweep record {
    # Specifies the reasons for the status.
    common:text SweepType?;
    # Specifies the reasons for the status.
    common:text SweepDefinition?;
    # Processing schedule for repeating payments for standing orders (e.g. start date, end, period, number/cycles). Note this triggers an internal execution call as necessary
    common:schedule SweepApplicationSchedule?;
    # The set-up of the sweep facility
    sweeparrangement SweepConfiguration?;
    # The facility that the sweep is made to/from
    common:FinancialFacility TargetAccount?;
    # Permission to define a sweep arrangement to the target account.  
    mandate SweepMandate?;
    # Processing schedule for repeating payments for standing orders (e.g. start date, end, period, number/cycles). Note this triggers an internal execution call as necessary
    common:schedule SweepProcessingSchedule?;
    # The transaction record for an applied sweep
    sweeptransaction SweepApplicationRecord?;
    # The facility that the sweep is made to/from
    common:FinancialFacility SweepTargetAccount?;
    # The amount to be swept when the sweep is triggered
    common:amount SweepAmount?;
    # Key dates associated with the account ISODateTime|ISODateTime (https://www.iso20022.org/standardsrepository/type/ISODateTime)|Standard|ISO20022 BM ()
    common:datetime SweepExecutionDate?;
};

public type PaymentOk record {|
    *http:Ok;
    Payment body;
|};

# >
# * `Urgent` - Priority level is urgent (highest priority possible).
# * `High` - Priority level is high.
# * `Normal` - Priority level is normal.
# * `Low` - Priority level is low.
public type priorityvaluetypes "Urgent"|"High"|"Normal"|"Low";

# Represents a document associated with a financial transaction or account
public type document record {
    # Unique identifier for the document GenericIdentification|GenericIdentification (https://www.iso20022.org/standardsrepository/type/GenericIdentification)|Standard|ISO20022 BM ()
    common:identifier DocumentIdentification?;
    # Version number of the document
    string DocumentVersion?;
    # >
    # * `Meteredserviceinvoice` - Document is an invoice claiming payment for the supply of metered services, for example gas or electricity supplied to a fixed meter.
    # * `Creditnoterelatedtofinancialadjustment` - Document is a credit note for the final amount settled for a commercial transaction.
    # * `Debitnoterelatedtofinancialadjustment` - Document is a debit note for the final amount settled for a commercial transaction.
    # * `Commercialinvoice` - Document is an invoice.
    # * `Creditnote` - Document is a credit note.
    # * `Debitnote` - Document is a debit note.
    # * `Hireinvoice` - Document is an invoice for the hiring of human resources or renting goods or equipment.
    # * `Selfbilledinvoice` - Document is an invoice issued by the debtor.
    # * `Remittanceadvicemessage` - Document is a remittance advice sent separately from the current transaction.
    # * `Relatedpaymentinstruction` - Document is a linked payment instruction to which the current payment instruction is related, for example, in a cover scenario.
    # * `Commercialcontract` - Document is an agreement between the parties, stipulating the terms and conditions of the delivery of goods or services.
    # * `Foreignexchangedealreference` - Document is a pre-agreed or pre-arranged foreign exchange transaction to which the payment transaction refers.
    # * `Statementofaccount` - Document is a statement of the transactions posted to the debtor's account at the supplier.
    # * `Dispatchadvice` - Document is a dispatch advice.
    # * `Purchaseorder` - Document is a purchase order.
    # * `Structuredcommunicationreference` - Document is a structured communication reference provided by the creditor to identify the referred transaction.
    # * `Billoflading` - Document is a shipping notice.
    # * `Voucher` - Document is an electronic payment document.
    # * `Accountreceivableopenitem` - Document is a payment that applies to a specific source document.
    # * `Tradeservicesutilitytransaction` - Document is a transaction identifier as assigned by the Trade Services Utility.
    # * `Cashierreceipt` - When the Sale system print the Cashier copy of the Payment receipt.
    # * `Customerreceipt` - When the Sale System requires   the POI system to print the Customer receipt.
    # * `Journal` - When the POI or the Sale System wants to store a message on the journal printer or electronic journal of the Sale Terminal (it is sometimes a Sale Logging/Journal Printer).
    # * `Salereceipt` - When the Sale System requires the POI system to print the Sale receipt.
    financialdocumenttypevalues DocumentType?;
    # The current lifecycle status of the document
    common:status DocumentStatus?;
    # Key dates associated with the account ISODateTime|ISODateTime (https://www.iso20022.org/standardsrepository/type/ISODateTime)|Standard|ISO20022 BM ()
    common:datetime DocumentDateTime?;
    # Name by which a party is known and which is usually used to identify that party. (ISO20022)
    common:name DocumentName?;
    # >
    # * `CreationDate` - 
    # * `CapturingDate` - 
    # * `VersionDate` - 
    # * `ValueDate` - 
    # * `IssueDate` - 
    documentdatetimetypevalues DocumentDateTimeType?;
    # Specifies the reasons for the status.
    common:text DocumentPurpose?;
    # Specifies the reasons for the status.
    common:text DocumentFormat?;
    # Specifies the reasons for the status.
    common:text DocumentSubject?;
    # Specifies the reasons for the status.
    common:text DocumentDescription?;
    # Period of time during which the status is valid.
    common:datetimeperiod DocumentValidityPeriod?;
};

public type DepositOk record {|
    *http:Ok;
    Deposit body;
|};

# >
# * `Meteredserviceinvoice` - Document is an invoice claiming payment for the supply of metered services, for example gas or electricity supplied to a fixed meter.
# * `Creditnoterelatedtofinancialadjustment` - Document is a credit note for the final amount settled for a commercial transaction.
# * `Debitnoterelatedtofinancialadjustment` - Document is a debit note for the final amount settled for a commercial transaction.
# * `Commercialinvoice` - Document is an invoice.
# * `Creditnote` - Document is a credit note.
# * `Debitnote` - Document is a debit note.
# * `Hireinvoice` - Document is an invoice for the hiring of human resources or renting goods or equipment.
# * `Selfbilledinvoice` - Document is an invoice issued by the debtor.
# * `Remittanceadvicemessage` - Document is a remittance advice sent separately from the current transaction.
# * `Relatedpaymentinstruction` - Document is a linked payment instruction to which the current payment instruction is related, for example, in a cover scenario.
# * `Commercialcontract` - Document is an agreement between the parties, stipulating the terms and conditions of the delivery of goods or services.
# * `Foreignexchangedealreference` - Document is a pre-agreed or pre-arranged foreign exchange transaction to which the payment transaction refers.
# * `Statementofaccount` - Document is a statement of the transactions posted to the debtor's account at the supplier.
# * `Dispatchadvice` - Document is a dispatch advice.
# * `Purchaseorder` - Document is a purchase order.
# * `Structuredcommunicationreference` - Document is a structured communication reference provided by the creditor to identify the referred transaction.
# * `Billoflading` - Document is a shipping notice.
# * `Voucher` - Document is an electronic payment document.
# * `Accountreceivableopenitem` - Document is a payment that applies to a specific source document.
# * `Tradeservicesutilitytransaction` - Document is a transaction identifier as assigned by the Trade Services Utility.
# * `Cashierreceipt` - When the Sale system print the Cashier copy of the Payment receipt.
# * `Customerreceipt` - When the Sale System requires   the POI system to print the Customer receipt.
# * `Journal` - When the POI or the Sale System wants to store a message on the journal printer or electronic journal of the Sale Terminal (it is sometimes a Sale Logging/Journal Printer).
# * `Salereceipt` - When the Sale System requires the POI system to print the Sale receipt.
public type financialdocumenttypevalues "Meteredserviceinvoice"|"Creditnoterelatedtofinancialadjustment"|"Debitnoterelatedtofinancialadjustment"|"Commercialinvoice"|"Creditnote"|"Debitnote"|"Hireinvoice"|"Selfbilledinvoice"|"Remittanceadvicemessage"|"Relatedpaymentinstruction"|"Commercialcontract"|"Foreignexchangedealreference"|"Statementofaccount"|"Dispatchadvice"|"Purchaseorder"|"Structuredcommunicationreference"|"Billoflading"|"Voucher"|"Accountreceivableopenitem"|"Tradeservicesutilitytransaction"|"Cashierreceipt"|"Customerreceipt"|"Journal"|"Salereceipt";

public type CurrentAccountFacilityOk record {|
    *http:Ok;
    CurrentAccountFacility body;
|};

# The set-up of the sweep facility
# Configuration for automated fund transfers between accounts
public type sweeparrangement record {
    # Specifies the reasons for the status.
    common:text SweepType?;
    # Description of the fee calculation method for this fee type
    common:servicemodality SweepModalitites?;
    # Details of the linked account Account|Account  (https://www.iso20022.org/standardsrepository/type/Account)|Standard|ISO20022 BM ()
    common:Account SweepCounterAccountReference?;
    # Processing schedule for repeating payments for standing orders (e.g. start date, end, period, number/cycles). Note this triggers an internal execution call as necessary
    common:schedule SweepSchedule?;
    # Permission to define a sweep arrangement to the target account.  
    mandate SweepMandate?;
    # Specifies the reasons for the status.
    common:text SweepDirection?;
};

public type SweepOk record {|
    *http:Ok;
    Sweep body;
|};

# Key dates related to the payment. 
public type paymentdatetime record {
    # Key dates associated with the account ISODateTime|ISODateTime (https://www.iso20022.org/standardsrepository/type/ISODateTime)|Standard|ISO20022 BM ()
    common:datetime PaymentDate?;
    # >
    # * `RequestedExecutionDate` - Date at which the initiating party requests the clearing agent to process the payment. ISO20022
    # Usage: This is the date on which the debtor's account is to be debited. If payment by cheque, the date when the cheque must be generated by the bank. 
    # * `AcceptanceDate` - Date and time at which all processing conditions for execution of the payment are met and adequate financial cover is available at the account servicing agent. ISO20022
    # * `CreationDate` - Date and time at which the payment execution was created by the instructing agent. ISO20022
    # * `ValueDate` - Date on which a payment must be executed (ISO20022)
    # * `DueDate` - Due date for the payment. (ISO20022)
    # * `ExpiryDate` - 
    common:Paymentdatetimetypevalues PaymentDateType?;
};

# >
# * `CashWithdrawal` - 
# * `SecurityWithdrawal` - 
public type withdrawaltypevalues "CashWithdrawal"|"SecurityWithdrawal";

# >
# * `Accepted` - 
# * `Rejected` - 
public type mandatestatustypevalues "Accepted"|"Rejected";

# >
# * `First` - First collection of a series of direct debit instructions.
# * `Recurring` - Direct debit instruction where the debtor's authorisation is used for regular direct debit transactions initiated by the creditor.
# * `Final` - Final collection of a series of direct debit instructions.
# * `Oneoff` - Direct debit instruction where the debtor's authorisation is used to initiate one single direct debit transaction.
# * `Represented` - Collection used to re-present previously reversed or returned direct debit transactions.
public type paymentsequencetypevalues "First"|"Recurring"|"Final"|"Oneoff"|"Represented";

# >
# * `Consent` - Permission or Agreement obtained from someone or something having authority or power
#
# Permission for something to happen or agreement to do something.
# * `PowerOfAttorney` - A written authorization that transfers specific rights from a party to another party.
#
# Document that transfers specific rights from a party to another party. ISO20022
# * `DirectDebitMandate` - An agreement between a debtor and a creditor allowing the creditor to instruct the bank to debit the debtors account
#
# Authorization in favour of the creditor given by the debtor to debit its own account. (ISO20022)
# * `ServicingMandate` - An agreement between the customer and a service provider to authorise the service provider to access Products and Services on behalf of the customer. 
public type mandatetypevalues "Consent"|"PowerOfAttorney"|"DirectDebitMandate"|"ServicingMandate";

# Fulfill any scheduled and ad-hoc obligations under a service arrangement, most typically for a financial product or facility within Current Account. 
public type CurrentAccountFacility record {
    # Reference to the current account product instance ||
    # |
    currentaccountagreement ProductInstanceReference?;
    # The associated account number in any suitable format (e.g. IBAN) AccountIdentification |AccountIdentification  (https://www.iso20022.org/standardsrepository/type/AccountIdentification)|Standard|ISO20022 BM ()
    common:Accountidentification CurrentAccountNumber?;
    # Reference to the account primary party/owner ||
    # |
    common:involvedparty CustomerReference?;
    # Bank branch associated with the account for booking purposes ||
    # |
    common:branch BankBranchLocationReference?;
    # The type of current account (e.g. checking, student, small business) ||
    # |
    currentaccountproducttypevalues AccountType?;
    # The primary account currency CurrencyCode|CurrencyCode (https://www.iso20022.org/standardsrepository/type/CurrencyCode)|Standard|ISO20022 BM ()
    common:Accountcurrency AccountCurrency?;
    # Reference identifier linking the account to appropriate tax handling GenericIdentification|GenericIdentification (https://www.iso20022.org/standardsrepository/type/GenericIdentification)|Standard|ISO20022 BM ()
    common:identifier TaxReference?;
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
    # Definition of the associations to the account Account Party Role_x000D_
    # |Account Party Role (https://www.iso20022.org/standardsrepository/type/AccountPartyRole)|Standard|ISO20022 BM ()
    common:accountinvolvement Associations?;
    # The type of association (e.g. guarantor, co-signer) AccountPartyRole |AccountPartyRole  (https://www.iso20022.org/standardsrepository/type/AccountPartyRole)|Standard|ISO20022 BM ()
    common:accountinvolvementtypevalues AssociationType?;
    # Description of the role, obligations or entitlements of the associated party ||
    # |
    common:partyobligationorentitlement AssociationObligationorEntitlement?;
    # Reference to the associated party Party|Party (https://www.iso20022.org/standardsrepository/type/Party)|Standard|ISO20022BM ()
    common:party AssociationReference?;
    # Details of the linked account Account|Account  (https://www.iso20022.org/standardsrepository/type/Account)|Standard|ISO20022 BM ()
    common:Account LinkedAccounts?;
    # The type and purpose for the link ||
    # |
    // common:account_accountrelationshiptypevalues LinkType?;
    # Details of the linked account Account|Account  (https://www.iso20022.org/standardsrepository/type/Account)|Standard|ISO20022 BM ()
    common:Account AccountDetails?;
    # The type of limit  LimitTypeCode|LimitTypeCode (https://www.iso20022.org/standardsrepository/type/LimitTypeCode)|Standard|ISO20022 BM ()
    common:Limittypevalues LimitType?;
    # The associated limit settings and rules Limit|Limit (https://www.iso20022.org/standardsrepository/type/Limit)|Standard|ISO20022 (https://www.iso20022.org/)
    common:Limitarrangement LimitSettings?;
    # The current calculated limit ||
    # |
    common:value LimitValue?;
    # Type of key dates associated with the account (e.g. opening date, closing date) Account/OpeningDate|Account/OpeningDate (https://www.iso20022.org/standardsrepository/type/Account)|Standard|ISO20022 BM ()
    common:Accountdatetimetypevalues AccountDateType?;
    # Key dates associated with the account ISODateTime|ISODateTime (https://www.iso20022.org/standardsrepository/type/ISODateTime)|Standard|ISO20022 BM ()
    common:datetime AccountDate?;
    # Balance|Balance (https://www.iso20022.org/standardsrepository/type/Balance)|Standard|ISO20022 BM ()
    common:Accountbalance AccountBalance?;
    # OBAccountStatus1Code| ()|Standard|UK Open Banking ()
    common:Accountstatustypevalues AccountStatus?;
};

# Reference to the entry in Position Keeping of the booking to be authorised
# Represents an individual transaction entry in an account ledger
public type accountentry record {
    # The monetary value of the account entry
    common:amount AccountEntryAmount?;
    # The primary account currency CurrencyCode|CurrencyCode (https://www.iso20022.org/standardsrepository/type/CurrencyCode)|Standard|ISO20022 BM ()
    common:Accountcurrency AccountEntryCurrency?;
    # Specifies the reasons for the status.
    common:text AccountEntryPurpose?;
    # Key dates associated with the account ISODateTime|ISODateTime (https://www.iso20022.org/standardsrepository/type/ISODateTime)|Standard|ISO20022 BM ()
    common:datetime AccountEntryDate?;
    # The current status of the account entry
    common:status AccountEntryStatus?;
    # >
    # * `EntryDate` - 
    # * `ValueDate` - 
    entrydatetypevalues AccountEntryDateType?;
    # The type classification of the account entry
    entrytypevalues AccountEntryType?;
};

# Specifies whether a mandate is accepted or rejected. (ISO20022)
public type mandatestatus record {
    # The current status of the mandate
    common:status MandateStatus?;
    # >
    # * `Accepted` - 
    # * `Rejected` - 
    mandatestatustypevalues MandateStatusType?;
};

# >
# * `Realtimegrosssettlementsystem` - Clearing channel is a real-time gross settlement system.
# * `Realtimenetsettlementsystem` - Clearing channel is a real-time net settlement system.
# * `Masspaymentnetsystem` - Clearing channel is a mass payment net settlement system.
# * `Booktransfer` - Payment through internal book transfer.
public type clearingchanneltypevalues "Realtimegrosssettlementsystem"|"Realtimenetsettlementsystem"|"Masspaymentnetsystem"|"Booktransfer";

# The product features/services available with a financial facility
# Represents a hold or block placed on a specific amount in an account
public type AmountBlock record {
    # Reference identifier linking the account to appropriate tax handling GenericIdentification|GenericIdentification (https://www.iso20022.org/standardsrepository/type/GenericIdentification)|Standard|ISO20022 BM ()
    common:identifier AmountBlockReference?;
    # Specifies the reasons for the status.
    common:text AmountBlockType?;
    # Number that indicates the priority of the amount block whne used fo authorisattion of transactions
    string AmountBlockPriorityNumber?;
    # Processing instructions for this amount block as far as these deviate from the standard amount block processing
    instruction AmountBlockProcessingInstructions?;
    # Specifies the reasons for the status.
    common:text AmountBlockReason?;
    # Reference to the account primary party/owner ||
    # |
    common:involvedparty AmountBlockOriginatorReference?;
    # The monetary amount that is blocked
    common:amount AmountBlockAmount?;
    # Key dates associated with the account ISODateTime|ISODateTime (https://www.iso20022.org/standardsrepository/type/ISODateTime)|Standard|ISO20022 BM ()
    common:datetime AmountBlockStartDate?;
    # Key dates associated with the account ISODateTime|ISODateTime (https://www.iso20022.org/standardsrepository/type/ISODateTime)|Standard|ISO20022 BM ()
    common:datetime AmountBlockExpiryDate?;
    # The current status of the amount block
    common:status AmountBlockStatus?;
};

# The transaction record for an applied sweep
public type sweeptransaction record {
    # An transaction which is the result of fulfilling a sweep arrangement
    string SweepTransaction?;
};

# The product features/services available with a financial facility
# Represents withdrawal transaction details and processing
public type Withdrawal record {
    # >
    # * `CashWithdrawal` - 
    # * `SecurityWithdrawal` - 
    withdrawaltypevalues WithdrawalType?;
    # The general payment transaction with all major attributes - some optional depending on type
    common:paymenttransaction WithdrawalTransaction?;
    # Identifies the target for the withdrawal
    string WithdrawalTransactionSourceReference?;
    # >
    # * `CashWithdrawal` - 
    # * `SecurityWithdrawal` - 
    withdrawaltypevalues WithdrawalTransactionWithdrawalType?;
    # Specifies the reasons for the status.
    common:text WithdrawalTransactionDescription?;
    # The monetary amount of the withdrawal transaction
    common:amount WihdrawalTransactionAmount?;
    # The date and time the deposit was initiated
    date WithdrawalTransactionDate?;
};

public type WithdrawalOk record {|
    *http:Ok;
    Withdrawal body;
|};

# The date and time the deposit was initiated
public type date record {
    # Specifies the reasons for the status.
    common:text DateContent?;
};

public type entrytypevalues record {
    string Entrytypevalues?;
};

# >
# * `Active` - The mandate is active.
# * `Inactive` - 
# * `Created` - 
# * `PendingApproval` - 
# * `Cancelled` - The mandate is cancelled.
# * `Expired` - The mandate has passed the end date.
# * `Rejected` - 
# * `Completed` - 
# * `Archived` - 
# * `Failed` - 
# * `Suspended` - The mandate is put on hold.
public type directdebitstatustypevalues "Active"|"Inactive"|"Created"|"PendingApproval"|"Cancelled"|"Expired"|"Rejected"|"Completed"|"Archived"|"Failed"|"Suspended";

# >
# * `EntryDate` - 
# * `ValueDate` - 
public type entrydatetypevalues "EntryDate"|"ValueDate";

# The product features/services available with a financial facility
# Represents deposit transaction details and processing
public type Deposit record {
    # >
    # * `CashDeposit` - Amount of money representing a value paid by a debtor to an agent bank. (ISO20022)
    # * `SecurityDeposit` - 
    # * `PawnDeposit` - 
    # * `Call/NoticeDeposit` - 
    # * `FixedTermDeposit` - 
    # * `DemandDeposit` - A demand deposit account is essentially a checking account in which you can withdraw funds at any time. (Investopedia)
    # https://www.investopedia.com/terms/d/demanddeposit.asp#:~:text=our%20editorial%20policies-,What%20Is%20a%20Demand%20Deposit%3F,are%20common%20types%20of%20DDAs.
    # * `TimeDeposit` - Time deposits are those with a fixed time and usually pay a fixed interest rate (Investopedia)
    # * `CardDeposit` - 
    deposittypevalues DepositType?;
    # Details of the deposit transaction
    deposittransaction DepositTransaction?;
    # Identifies the source of the deposit
    string DepositTransactionSourceReference?;
    # >
    # * `CashDeposit` - Amount of money representing a value paid by a debtor to an agent bank. (ISO20022)
    # * `SecurityDeposit` - 
    # * `PawnDeposit` - 
    # * `Call/NoticeDeposit` - 
    # * `FixedTermDeposit` - 
    # * `DemandDeposit` - A demand deposit account is essentially a checking account in which you can withdraw funds at any time. (Investopedia)
    # https://www.investopedia.com/terms/d/demanddeposit.asp#:~:text=our%20editorial%20policies-,What%20Is%20a%20Demand%20Deposit%3F,are%20common%20types%20of%20DDAs.
    # * `TimeDeposit` - Time deposits are those with a fixed time and usually pay a fixed interest rate (Investopedia)
    # * `CardDeposit` - 
    deposittypevalues DepositTransactionDepositType?;
    # Specifies the reasons for the status.
    common:text DepositTransactionDescription?;
    # The monetary amount of the deposit transaction
    common:amount DepositTransactionAmount?;
    # The date and time the deposit was initiated
    date DepositTransactionDate?;
};

# The product features/services available with a financial facility
# Represents payment transaction details and processing
public type Payment record {
    # >
    # * `Cashtransaction` - Transaction is a withdrawal/deposit of cash.
    # * `Domesticpayment` - Payment has an origin and a destination in the same country, and is made in the currency of that country.
    # * `Domestichighvaluepayment` - Transaction is a high value payment that has an origin and a destination in the same country and is made in the currency of that country.
    # * `Domesticprioritypayment` - Transaction is a priority payment that has an origin and a destination in the same country and is made in the currency of that country.
    # * `Crossborderpayment` - Payment has an origin in one country, a destination in another, and is made in the currency of either the origin or destination country.
    # * `Crossborderprioritypayment` - Transaction is a priority payment that has an origin in one country and a destination in another and is made in the currency of either the origin or destination country.
    # * `Crossborderhighvaluepayment` - Transaction is a high value payment that has an origin in one country and a destination in another country and is made in the currency of either the origin or destination country.
    # * `Thirdcurrencypayment` - Transaction is a payment that is made in a third currency to the origin and destination countries. The origin and destination countries may be one and the same country.
    # * `Thirdcurrencyhighvaluepayment` - Transaction is a high value payment that is made in a third currency to the origin and destination countries. The origin and destination countries may be one and the same country.
    # * `Thirdcurrencyprioritypayment` - Payment is made in a third currency to the origin and destination countries. The origin and destination countries may be the same country.
    # * `Tradesettlementpayment` - Transaction is the settlement of a trade, eg, a securities transaction.
    # * `Foreignexchange` - Transaction isthe settlement of a foreign exchange deal.
    # * `Equivalentamount` - Transaction is an equivalent amount relative to a currency conversion.
    # * `Loan` - Transaction is the payment of a specific amount of money lent by a creditor/lender.
    # * `Loanrepayment` - Transaction is an amount of money transferred in repayment of loan.
    # * `Securities` - Transaction is a payment of securities.
    # * `Lockbox` - Transaction is a payment(s) resulting from a lock box service.
    # * `Dividend` - Transaction is a payment of dividends.
    # * `Crossedcheque` - Transaction is a crossed cheque. A crossed check has two parallel lines across its face, indicating that the cheque must be paid into an account and not cashed over the counter.
    # * `Opencheque` - Transaction is an uncrossed cheque that can be cashed at the bank of origin.
    # * `Ordercheque` - Transaction is a cheque made payable to a named recipient 'or order' enabling the creditor to either deposit it in an account or endorse it to a third party, ie, transfer the rights to the cheque by signing it on the reverse.
    # * `Circularcheque` - Transaction is an instruction from a bank to its correspondent bank to pay the creditor a stated sum of money on presentation of a means of identification.
    # * `Travellerscheques` - Transaction is a payment resulting from travellers cheques.
    # * `Bankdraft` - Transaction is a cheque drawn by a bank on itself or its agent. A person who owes money to another buys the draft from a bank for cash and hands it to the creditor who need have no fear that it might be dishonoured.
    # * `Cashletter` - Transaction is a cash letter. A cash letter is a payment instrument in the form of a covering letter, whereby a financial institution, ie, the remitting bank, requests credit for one or more financial documents under usual reserve, ie, subject to final payment.
    # * `Documentarycredit` - Transaction is a documentary credit from one banker to another, authorising the payment of a specified sum of money to the person named in the document, based on specified conditions.
    # * `Billofexchange` - Transaction is a written order from a drawer to a drawee to pay a specified sum of money upon demand, or on a specified date, to the drawer or to a third party specified by the drawer. A bill of exchange is also called a draft.
    # * `Collection` - Transaction is a collection. A collection is the act of sending a cheque, bill of exchange or another financial instrument to the prospective financial institution for payment.
    # * `Cashmanagementtransfer` - Transaction is a general cash management instruction.
    # * `Sweepaccount` - Transaction relates to a cash management instruction, requesting a sweep of the account of the debtor.
    # * `Topaccount` - Transaction is a cash management instruction, requesting to top the account of the debtor above a certain floor amount. The floor amount, if not pre-agreed by the parties involved, may be specified.
    # * `Zerobalanceaccount` - Transaction is a cash management instruction, requesting to zero balance the account of the debtor.
    # * `Standingfacilities` - Payment is linked to overnight deposits and the marginal lending facility.
    # * `Swiftpayservicelevelcredit` - Transaction is a credit transfer to be processed according to the SWIFTPay Service Level.
    # * `Priorityservicelevelcredit` - Transaction is a credit transfer to be processed according to the Priority Service Level.
    # * `Standardservicelevelcredit` - Transaction is a credit transfer to be processed according to the Standard Service Level.
    # * `Liquiditytransfer` - Payment is made to transfer liquidity to/from the settlement account of a member, to/from the current account held at the central institution or any other institution.
    # * `Advancepayment` - Transaction is a payment made in advance or as an advance.
    # * `Valuedateadjustment` - Transaction reverses a previously incorrectly value dated entry.
    # * `Dvpgross` - Gross cash payment offsetting the amount owed/due for a securities transaction settlement.
    # * `Dvpnet` - Net payment offsetting the cash balance due/owed for a series of securities transactions settlement.
    # * `Netting` - Transaction is a netting operation.
    # * `Limitpayment` - Transaction is a payment that is processed when the pool of liquidity exceeds the minimum value reserved for an express payment in the RTGSPlus system.
    # * `Backup` - Payment is made under the recovery procedure to move liquidity to/from the settlement account of a member according to the specifications of the system.
    # * `Expresspayment` - Transaction is a payment that is processed whenever liquidity is available on the settlement account of a member of the RTGSPlus system.
    # * `Centralbankoperation` - Payment is made to settle an operation made with the central bank.
    # * `Clspayment` - Payment is linked to CLS activities.
    # * `Eurodomesticpayment` - Transaction is a credit transfer in Euro with its country of origin and country of destination within the European Union. The origin and destination countries may be one and the same country.
    # * `Agriculturaltransfer` - Transaction is related to the agricultural domain.
    # * `Alimonypayment` - Transaction is a payment(s) made by one spouse to the other after a separation or divorce. An alimony payment may be applied to other family relationships.
    # * `Balanceretail` - Transaction is a payment offsetting the net cash balance owed/due in a retail payment system.
    # * `Bonuspayment.` - Net cash payment offsetting the balance due/owed in a retail payment system.
    # * `Brokeragefee` - Transaction is charges levied by a broker.
    # * `Capitalbuilding` - Transaction is payment into a personal pension scheme for retirement.
    # * `Charitypayment` - Transaction is a payment for charity reasons.
    # * `Childbenefit` - Transaction is a payment made to a parent/guardian to help maintain a child.
    # * `Commercialcredit` - Transaction is settlement of a commercial credit.
    # * `Commission` - Transaction is payment of a fee for executing a transaction.
    # * `Commoditytransfer` - Transaction is a payment of products traded on a commodity exchange.
    # * `Costs` - Transaction is apayment of costs.
    # * `Copyright` - Transaction is a payment of copyright.
    # * `Governmentpayment` - Transaction is apayment to or from a government department.
    # * `Instalmenthirepurchaseagreement` - Transaction is a payment of an instalment or to the settlement of a hire-purchase agreement.
    # * `Insurancepremium` - Transaction is a payment of an insurance premium.
    # * `Intracompanypayment` - Transaction is an intra-company payment, ie, a payment between two companies belonging to the same group.
    # * `Interest` - Transaction is a payment of interest.
    # * `Licensefee` - Transaction is a payment of a license fee.
    # * `Metals` - Transaction is a purchase or sale of metals.
    # * `Pensionpayment` - Transaction is a payment of a pension allowance.
    # * `Purchasesaleofgoods` - Transaction is a payment for the purchase and sale of goods.
    # * `Refund` - Transaction is a repayment of funds.
    # * `Rent` - Transaction is a payment of rent.
    # * `Royalties` - Transaction is a payment of royalties.
    # * `Purchasesaleofservices` - Transaction is a payment for the purchase and sale of services.
    # * `Salarypayment` - Transaction is a payment of salaries.
    # * `Socialsecuritybenefit` - Transaction is a social security benefit, a payment made by a government to support individuals.
    # * `Standingorder` - Transaction is a standing order. A standing order is an instruction given by a party having explicit authority on the account to debit, ie, either debit account owner or originating party, to a first agent to process cash transfers at specified intervals during an implicit or explicit period of time. It is given once, and is valid for an open or closed period of time.
    # * `Subscription` - Transaction is a payment of a subscription.
    # * `Treasurystatepayment` - Payment is linked to the Treasury State.
    # * `Unemploymentdisabilitybenefit` - Transaction is a payment made to an unemployed/disabled person.
    # * `Valueaddedtaxpayment` - Transaction is apayment of value added tax.
    # * `Withholdingtax` - Transaction is a payment of withholding tax.
    # * `Taxpayment` - Transaction is a payment of taxes.
    # * `Miscellaneous` - Transaction is for an unspecified reason. Miscellaneous is to be used only when no explicit code is available.
    # * `Overnightdeposit` - Transaction is linked to an overnight deposit.
    # * `Marginallending` - Transaction is linked to the marginal lending facility.
    # * `Other` - Specifies that a proprietary code must be indicated.
    # * `Upfront` - Transaction is an initial payment made by one of the counterparties  either to bring a transaction to fair value or for any other reason that may be the cause of an off-market transaction.
    # * `Unwind` - Transaction is the final settlement payment made when a transaction is unwound prior to its end date or a payment that may result due to the full termination of derivative transaction(s).
    # * `Principalexchange` - Transaction is an exchange of notional values for cross-currency swaps.
    common:Paymenttypevalues PaymentType?;
    # Specifies the reasons for the status.
    common:text PaymentDefinition?;
    # Definition of the processing option and impact (e.g. frequency and cumulative amount constraints)
    common:paymentprocessingarrangementmodality PaymentProcessinngOptionDefinition?;
    # Definition of the processing option and impact (e.g. frequency and cumulative amount constraints)
    common:paymentprocessingarrangementmodality PaymentProcessingOptionSetting?;
    # Configuration setting for various payment transaction types
    common:paymentarrangement PaymentConfiguration?;
    # Processing schedule for repeating payments for standing orders (e.g. start date, end, period, number/cycles). Note this triggers an internal execution call as necessary
    common:schedule PaymentSchedule?;
    # Reference to the applicable mandate for direct debits
    common:directdebitmandate DirectDebitMandateReference?;
    # Processing settings governing direct debits
    common:directdebitmandatearrangement DirectDebitMandateSettings?;
    # Reference to the applicable mandate for bill pay transactions
    common:billpaymandate BillPayMandateReference?;
    # Processing settings governing bill pay transactions
    common:billpaymandatefacilityarrangement BilPayMandateSettings?;
    # The general payment transaction with all major attributes - some optional depending on type
    common:paymenttransaction PaymentTransaction?;
    # >
    # * `Cashtransaction` - Transaction is a withdrawal/deposit of cash.
    # * `Domesticpayment` - Payment has an origin and a destination in the same country, and is made in the currency of that country.
    # * `Domestichighvaluepayment` - Transaction is a high value payment that has an origin and a destination in the same country and is made in the currency of that country.
    # * `Domesticprioritypayment` - Transaction is a priority payment that has an origin and a destination in the same country and is made in the currency of that country.
    # * `Crossborderpayment` - Payment has an origin in one country, a destination in another, and is made in the currency of either the origin or destination country.
    # * `Crossborderprioritypayment` - Transaction is a priority payment that has an origin in one country and a destination in another and is made in the currency of either the origin or destination country.
    # * `Crossborderhighvaluepayment` - Transaction is a high value payment that has an origin in one country and a destination in another country and is made in the currency of either the origin or destination country.
    # * `Thirdcurrencypayment` - Transaction is a payment that is made in a third currency to the origin and destination countries. The origin and destination countries may be one and the same country.
    # * `Thirdcurrencyhighvaluepayment` - Transaction is a high value payment that is made in a third currency to the origin and destination countries. The origin and destination countries may be one and the same country.
    # * `Thirdcurrencyprioritypayment` - Payment is made in a third currency to the origin and destination countries. The origin and destination countries may be the same country.
    # * `Tradesettlementpayment` - Transaction is the settlement of a trade, eg, a securities transaction.
    # * `Foreignexchange` - Transaction isthe settlement of a foreign exchange deal.
    # * `Equivalentamount` - Transaction is an equivalent amount relative to a currency conversion.
    # * `Loan` - Transaction is the payment of a specific amount of money lent by a creditor/lender.
    # * `Loanrepayment` - Transaction is an amount of money transferred in repayment of loan.
    # * `Securities` - Transaction is a payment of securities.
    # * `Lockbox` - Transaction is a payment(s) resulting from a lock box service.
    # * `Dividend` - Transaction is a payment of dividends.
    # * `Crossedcheque` - Transaction is a crossed cheque. A crossed check has two parallel lines across its face, indicating that the cheque must be paid into an account and not cashed over the counter.
    # * `Opencheque` - Transaction is an uncrossed cheque that can be cashed at the bank of origin.
    # * `Ordercheque` - Transaction is a cheque made payable to a named recipient 'or order' enabling the creditor to either deposit it in an account or endorse it to a third party, ie, transfer the rights to the cheque by signing it on the reverse.
    # * `Circularcheque` - Transaction is an instruction from a bank to its correspondent bank to pay the creditor a stated sum of money on presentation of a means of identification.
    # * `Travellerscheques` - Transaction is a payment resulting from travellers cheques.
    # * `Bankdraft` - Transaction is a cheque drawn by a bank on itself or its agent. A person who owes money to another buys the draft from a bank for cash and hands it to the creditor who need have no fear that it might be dishonoured.
    # * `Cashletter` - Transaction is a cash letter. A cash letter is a payment instrument in the form of a covering letter, whereby a financial institution, ie, the remitting bank, requests credit for one or more financial documents under usual reserve, ie, subject to final payment.
    # * `Documentarycredit` - Transaction is a documentary credit from one banker to another, authorising the payment of a specified sum of money to the person named in the document, based on specified conditions.
    # * `Billofexchange` - Transaction is a written order from a drawer to a drawee to pay a specified sum of money upon demand, or on a specified date, to the drawer or to a third party specified by the drawer. A bill of exchange is also called a draft.
    # * `Collection` - Transaction is a collection. A collection is the act of sending a cheque, bill of exchange or another financial instrument to the prospective financial institution for payment.
    # * `Cashmanagementtransfer` - Transaction is a general cash management instruction.
    # * `Sweepaccount` - Transaction relates to a cash management instruction, requesting a sweep of the account of the debtor.
    # * `Topaccount` - Transaction is a cash management instruction, requesting to top the account of the debtor above a certain floor amount. The floor amount, if not pre-agreed by the parties involved, may be specified.
    # * `Zerobalanceaccount` - Transaction is a cash management instruction, requesting to zero balance the account of the debtor.
    # * `Standingfacilities` - Payment is linked to overnight deposits and the marginal lending facility.
    # * `Swiftpayservicelevelcredit` - Transaction is a credit transfer to be processed according to the SWIFTPay Service Level.
    # * `Priorityservicelevelcredit` - Transaction is a credit transfer to be processed according to the Priority Service Level.
    # * `Standardservicelevelcredit` - Transaction is a credit transfer to be processed according to the Standard Service Level.
    # * `Liquiditytransfer` - Payment is made to transfer liquidity to/from the settlement account of a member, to/from the current account held at the central institution or any other institution.
    # * `Advancepayment` - Transaction is a payment made in advance or as an advance.
    # * `Valuedateadjustment` - Transaction reverses a previously incorrectly value dated entry.
    # * `Dvpgross` - Gross cash payment offsetting the amount owed/due for a securities transaction settlement.
    # * `Dvpnet` - Net payment offsetting the cash balance due/owed for a series of securities transactions settlement.
    # * `Netting` - Transaction is a netting operation.
    # * `Limitpayment` - Transaction is a payment that is processed when the pool of liquidity exceeds the minimum value reserved for an express payment in the RTGSPlus system.
    # * `Backup` - Payment is made under the recovery procedure to move liquidity to/from the settlement account of a member according to the specifications of the system.
    # * `Expresspayment` - Transaction is a payment that is processed whenever liquidity is available on the settlement account of a member of the RTGSPlus system.
    # * `Centralbankoperation` - Payment is made to settle an operation made with the central bank.
    # * `Clspayment` - Payment is linked to CLS activities.
    # * `Eurodomesticpayment` - Transaction is a credit transfer in Euro with its country of origin and country of destination within the European Union. The origin and destination countries may be one and the same country.
    # * `Agriculturaltransfer` - Transaction is related to the agricultural domain.
    # * `Alimonypayment` - Transaction is a payment(s) made by one spouse to the other after a separation or divorce. An alimony payment may be applied to other family relationships.
    # * `Balanceretail` - Transaction is a payment offsetting the net cash balance owed/due in a retail payment system.
    # * `Bonuspayment.` - Net cash payment offsetting the balance due/owed in a retail payment system.
    # * `Brokeragefee` - Transaction is charges levied by a broker.
    # * `Capitalbuilding` - Transaction is payment into a personal pension scheme for retirement.
    # * `Charitypayment` - Transaction is a payment for charity reasons.
    # * `Childbenefit` - Transaction is a payment made to a parent/guardian to help maintain a child.
    # * `Commercialcredit` - Transaction is settlement of a commercial credit.
    # * `Commission` - Transaction is payment of a fee for executing a transaction.
    # * `Commoditytransfer` - Transaction is a payment of products traded on a commodity exchange.
    # * `Costs` - Transaction is apayment of costs.
    # * `Copyright` - Transaction is a payment of copyright.
    # * `Governmentpayment` - Transaction is apayment to or from a government department.
    # * `Instalmenthirepurchaseagreement` - Transaction is a payment of an instalment or to the settlement of a hire-purchase agreement.
    # * `Insurancepremium` - Transaction is a payment of an insurance premium.
    # * `Intracompanypayment` - Transaction is an intra-company payment, ie, a payment between two companies belonging to the same group.
    # * `Interest` - Transaction is a payment of interest.
    # * `Licensefee` - Transaction is a payment of a license fee.
    # * `Metals` - Transaction is a purchase or sale of metals.
    # * `Pensionpayment` - Transaction is a payment of a pension allowance.
    # * `Purchasesaleofgoods` - Transaction is a payment for the purchase and sale of goods.
    # * `Refund` - Transaction is a repayment of funds.
    # * `Rent` - Transaction is a payment of rent.
    # * `Royalties` - Transaction is a payment of royalties.
    # * `Purchasesaleofservices` - Transaction is a payment for the purchase and sale of services.
    # * `Salarypayment` - Transaction is a payment of salaries.
    # * `Socialsecuritybenefit` - Transaction is a social security benefit, a payment made by a government to support individuals.
    # * `Standingorder` - Transaction is a standing order. A standing order is an instruction given by a party having explicit authority on the account to debit, ie, either debit account owner or originating party, to a first agent to process cash transfers at specified intervals during an implicit or explicit period of time. It is given once, and is valid for an open or closed period of time.
    # * `Subscription` - Transaction is a payment of a subscription.
    # * `Treasurystatepayment` - Payment is linked to the Treasury State.
    # * `Unemploymentdisabilitybenefit` - Transaction is a payment made to an unemployed/disabled person.
    # * `Valueaddedtaxpayment` - Transaction is apayment of value added tax.
    # * `Withholdingtax` - Transaction is a payment of withholding tax.
    # * `Taxpayment` - Transaction is a payment of taxes.
    # * `Miscellaneous` - Transaction is for an unspecified reason. Miscellaneous is to be used only when no explicit code is available.
    # * `Overnightdeposit` - Transaction is linked to an overnight deposit.
    # * `Marginallending` - Transaction is linked to the marginal lending facility.
    # * `Other` - Specifies that a proprietary code must be indicated.
    # * `Upfront` - Transaction is an initial payment made by one of the counterparties  either to bring a transaction to fair value or for any other reason that may be the cause of an off-market transaction.
    # * `Unwind` - Transaction is the final settlement payment made when a transaction is unwound prior to its end date or a payment that may result due to the full termination of derivative transaction(s).
    # * `Principalexchange` - Transaction is an exchange of notional values for cross-currency swaps.
    common:Paymenttypevalues PaymentTransactionType?;
    # Reference to the account primary party/owner ||
    # |
    common:involvedparty PaymentTransactionPayeeReference?;
    # Details of the linked account Account|Account  (https://www.iso20022.org/standardsrepository/type/Account)|Standard|ISO20022 BM ()
    common:Account PaymentTransactionPayeeAccountReference?;
    # Reference to the account primary party/owner ||
    # |
    common:involvedparty PaymentTransactionPayeeBankReference?;
    # The monetary amount of the payment transaction
    common:amount PaymentTransactionAmount?;
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
    common:feetypevalues PaymentTransactionFeeType?;
    # The monetary amount of the fee charged for the payment transaction
    common:amount PaymentTransactionFeeCharge?;
    # Key dates associated with the account ISODateTime|ISODateTime (https://www.iso20022.org/standardsrepository/type/ISODateTime)|Standard|ISO20022 BM ()
    common:datetime PaymentTransactionDate?;
    # Specifies the reasons for the status.
    common:text PaymentTransactionPaymentMechanism?;
    # >
    # * `Salarypayment` - Transaction is the payment of salaries.
    # * `Treasurypayment` - Transaction is related to treasury operations.
    # * `Advancepayment` - Transaction is an advance payment.
    # * `Agriculturaltransfer` - Transaction is related to the agricultural domain.
    # * `Alimonypayment` - Transaction is the payment of alimony.
    # * `Childbenefit` - Transaction is related to a payment made to assist parent/guardian to maintain child.
    # * `Unemploymentdisabilitybenefit` - Transaction is related to a payment to a person who is unemployed/disabled.
    # * `Bonuspayment.` - Transaction is related to payment of a bonus.
    # * `Cashmanagementtransfer` - Transaction is a general cash management instruction.
    # * `Capitalbuilding` - Transaction is related to capital building fringe fortune, ie capital building for retirement.
    # * `Charitypayment` - Transaction is a payment for charity reasons.
    # * `Collectionpayment` - Transaction is a collection of funds initiated via a credit transfer or direct debit.
    # * `Commoditytransfer` - Transaction is payment of commodities.
    # * `Commercialpayment` - Transaction is related to a payment of commercial credit or debit. (formerly CommercialCredit).
    # * `Commission` - Transaction is payment of commission.
    # * `Costs` - Transaction is related to payment of costs.
    # * `Copyright` - Transaction is payment of copyright.
    # * `Dividend` - Transaction is payment of dividends.
    # * `Foreignexchange` - Transaction is related to a foreign exchange operation.
    # * `Purchasesaleofgoods` - Transaction is related to purchase and sale of goods.
    # * `Governmentpayment` - Transaction is a payment to or from a government department.
    # * `Instalmenthirepurchaseagreement` - Transaction is payment for an installment/hire-purchase agreement.
    # * `Intracompanypayment` - Transaction is an intra-company payment, ie, a payment between two companies belonging to the same group.
    # * `Insurancepremium` - Transaction is payment of an insurance premium.
    # * `Interest` - Transaction is payment of interest.
    # * `Licensefee` - Transaction is payment of a license fee.
    # * `Loan` - Transaction is related to transfer of loan to borrower.
    # * `Loanrepayment` - Transaction is related to repayment of loan to lender.
    # * `Netting` - Transaction is related to a netting operation.
    # * `Payroll` - Transaction is related to the payment of payroll.
    # * `Pensionpayment` - Transaction is the payment of pension.
    # * `Refund` - Transaction is the payment of a refund.
    # * `Rent` - Transaction is the payment of rent.
    # * `Royalties` - Transaction is the payment of royalties.
    # * `Purchasesaleofservices` - Transaction is related to purchase and sale of services.
    # * `Securities` - Transaction is the payment of securities.
    # * `Socialsecuritybenefit` - Transaction is a social security benefit, ie payment made by a government to support individuals.
    # * `Subscription` - Transaction is related to a payment of information or entertainment services either in printed or electronic form.
    # * `Taxpayment` - Transaction is the payment of taxes.
    # * `Valueaddedtaxpayment` - Transaction is the payment of value added tax.
    # * `Consumerthirdpartyconsolidatedpayment` - Transaction is a payment used by a third party who can collect funds to pay on behalf of consumers, ie credit counseling or bill payment companies.
    # * `Debitcollectionpayment` - Collection of funds initiated via a debit transfer.
    # * `Supplierpayment` - Transaction is related to a payment to a supplier.
    # * `Hedging` - Transaction is related to a hedging operation.
    # * `Multipleservicetypes` - Transaction is related to a payment for multiple service types.
    # * `Nototherwisespecified` - Transaction is related to a payment for type of services not specified elsewhere.
    # * `Cardpayment` - Transaction is related to a payment of credit card account.
    # * `Creditcardbill` - Transaction is related to a payment of credit card bill.
    # * `Ferry` - Transaction is a payment for ferry related business.
    # * `Air` - Transaction is a payment for air transport related business.
    # * `Bus` - Transaction is a payment for bus transport related business.
    # * `Railway` - Transaction is a payment for railway transport related business.
    # * `Convalescentcarefacility` - Transaction is a payment for convalescence care facility services.
    # * `Dentalservices` - Transaction is a payment for dental services.
    # * `Anesthesiaservices` - Transaction is a payment for anesthesia services.
    # * `Homehealthcare` - Transaction is a payment for home health care services.
    # * `Hospitalcare` - Transaction is a payment for hospital care services.
    # * `Intermediatecarefacility` - Transaction is a payment for intermediate care facility services.
    # * `Longtermcarefacility` - Transaction is a payment for long-term care facility services.
    # * `Medicalservices` - Transaction is a payment for medical care services.
    # * `Visioncare` - Transaction is a payment for vision care services.
    # * `Durablemedicaleequipment` - Transaction is a payment is for use of durable medical equipment.
    # * `Cabletvbill` - Transaction is related to a payment of cable TV bill.
    # * `Electricitybill` - Transaction is related to a payment of electricity bill.
    # * `Gasbill` - Transaction is related to a payment of gas bill.
    # * `Telephonebill` - Transaction is related to a payment of telephone bill.
    # * `Othertelecomrelatedbill` - Transaction is related to a payment of other telecom related bill.
    # * `Waterbill` - Transaction is related to a payment of water bill.
    # * `Study` - Transaction is related to a payment of study/tuition costs.
    # * `Pricepayment` - Transaction is related to a payment of a price.
    # * `Installment` - Transaction is related to a payment of an installment.
    # * `Recurringinstallmentpayment` - Transaction is related to a payment of a recurring installment made at regular intervals.
    # * `Openingfee` - Transaction is related to a payment of opening fee.
    # * `Cancellationfee` - Transaction is related to a payment of cancellation fee.
    # * `Governmentinsurance` - Transaction is related to a payment of government insurance.
    # * `Insurancepremiumcar` - Transaction is a payment of car insurance premium.
    # * `Laborinsurance` - Transaction is a payment of labor insurance.
    # * `Lifeinsurance` - Transaction is a payment of life insurance.
    # * `Propertyinsurance` - Transaction is a payment of property insurance.
    # * `Healthinsurance` - Transaction is a payment of health insurance.
    # * `Carloanprincipalrepayment` - Transaction is a payment of car loan principal payment.
    # * `Housingloanrepayment` - Transaction is related to a payment of housing loan.
    # * `Companysocialloanpaymenttobank` - Transaction is a payment by a company to a bank for financing social loans to employees.
    # * `Estatetax` - Transaction is related to a payment of estate tax.
    # * `Housingtax` - Transaction is related to a payment of housing tax.
    # * `Incometax` - Transaction is related to a payment of income tax.
    # * `Netincometax` - Transaction is related to a payment of net income tax.
    # * `Businessexpenses` - Transaction is related to a payment of business expenses.
    # * `Trustfund` - Transaction is related to a payment of a trust fund.
    # * `Networkcharge` - Transaction is related to a payment of network charges.
    # * `Networkcommunication` - Transaction is related to a payment of network communication.
    # * `Receiptpayment` - Transaction is related to a payment of receipt.
    # * `Paymentterms` - Transaction is related to payment terms specifications.
    # * `Other` - Other payment purpose.
    # * `Withholding` - Transaction is related to a payment of withholding tax.
    common:Paymentpurposevalues PaymentTransactionPaymentPurpose?;
    # Reference to the bank branch location for the payment transaction
    common:location PaymentTransactionBankBranchLocationReference?;
    # Specifies the status of a payment transaction at a specified time.
    # Elements
    common:paymenttransactionstatus PaymentTransactionStatus?;
    # >
    # * `RequestedExecutionDate` - Date at which the initiating party requests the clearing agent to process the payment. ISO20022
    # Usage: This is the date on which the debtor's account is to be debited. If payment by cheque, the date when the cheque must be generated by the bank. 
    # * `AcceptanceDate` - Date and time at which all processing conditions for execution of the payment are met and adequate financial cover is available at the account servicing agent. ISO20022
    # * `CreationDate` - Date and time at which the payment execution was created by the instructing agent. ISO20022
    # * `ValueDate` - Date on which a payment must be executed (ISO20022)
    # * `DueDate` - Due date for the payment. (ISO20022)
    # * `ExpiryDate` - 
    common:Paymentdatetimetypevalues PaymentTransactionDateType?;
    # Reference to the associated party Party|Party (https://www.iso20022.org/standardsrepository/type/Party)|Standard|ISO20022BM ()
    common:party PaymentInvolvedPartyReference?;
    # >
    # * `Payer/Debtor` - Party who holds a payment account and allows a payment order from that payment account, or, where there is no payment account, a party who gives a payment order.
    # * `PayeeBank/CreditorAgent` - Financial institution servicing an account for the payee.
    # * `Payee/Creditor` - Party who is the intended recipient of funds which have been the subject of a payment transaction.
    # * `PayerBank/DebtorAgent` - Financial institution servicing an account for the payer.
    # * `Initiator` - Party initiating the payment to an agent.
    # * `PSU` - PSU means a natural or legal person making use of a payment service in the capacity of payer or payee; (PSD)
    # * `PSP` - PSP means a payment service provider falling under any of the categories referred to in Article 1(1) of Directive 2007/64/EC and the legal and natural persons referred to in Article 26 of Directive 2007/64/EC, but excludes the bodies listed in Article 2 of Directive 2006/48/EC of the European Parliament and of the Council of 14 June 2006 relating to the taking up and pursuit of the business of credit institutions ( 1 ) benefiting from a waiver under Article 2(3) of Directive 2007/64/EC; (PSD)
    # * `UltimateDebtor` - Ultimate party that owes an amount of money to the (ultimate) creditor.
    # * `UltimateCreditor` - Ultimate party to which an amount of money is due.
    common:paymentinvolvementtypevalues PaymentInvolvementType?;
};

public type AmountBlockOk record {|
    *http:Ok;
    AmountBlock body;
|};

# >
# * `CashDeposit` - Amount of money representing a value paid by a debtor to an agent bank. (ISO20022)
# * `SecurityDeposit` - 
# * `PawnDeposit` - 
# * `Call/NoticeDeposit` - 
# * `FixedTermDeposit` - 
# * `DemandDeposit` - A demand deposit account is essentially a checking account in which you can withdraw funds at any time. (Investopedia)
# https://www.investopedia.com/terms/d/demanddeposit.asp#:~:text=our%20editorial%20policies-,What%20Is%20a%20Demand%20Deposit%3F,are%20common%20types%20of%20DDAs.
# * `TimeDeposit` - Time deposits are those with a fixed time and usually pay a fixed interest rate (Investopedia)
# * `CardDeposit` - 
public type deposittypevalues "CashDeposit"|"SecurityDeposit"|"PawnDeposit"|"Call/NoticeDeposit"|"FixedTermDeposit"|"DemandDeposit"|"TimeDeposit"|"CardDeposit";

# >
# * `Directdebitconfirmedelectronicmandate` - Transaction is related to a direct debit instruction authorized under a confirmed electronic mandate.
# * `Directdebitpapermandatewithpaperauthorization` - Transaction is related to a direct debit instruction authorized under a paper based mandate, supported by paper authorization signed by the debtor.
# * `Directdebitunconfirmedelectronicmandate` - Transaction is related to a direct debit instruction authorized under an unconfirmed electronic mandate requiring confirmation by the debtor.
# * `Batchpaymentsaruba` - Transaction is related to an Instant Credit Transfer under the rules of the Centrale Bank van Aruba, based on the EPC SCT Inst scheme, with a specific batch time-out delay.
# * `Instantpaymentsaruba` - Transaction is related to an Instant Credit Transfer under the rules of the Centrale Bank van Aruba, based on the EPC SCT Inst scheme.
# * `Credittransfers` - Transaction is related to credit transfers
# * `Nonpreauthoriseddirectdebitat` - Transaction is related to a direct debit that is not pre authorised (Einzugsermächtigung).
# * `Preauthoriseddirectdebitat` - Transaction is related to a direct debit that is pre authorised (Abbuchungsauftrag).
# * `Cashperpost` - Transaction is related to cash per post.
# Transaction to ultimate recipient having no bank account. Primary beneficiary is a postal service provider. Funds are paid out by cash. Additional necessary information for address and delivery options need to be attached.
# * `Returnedcredittransfers` - Transaction is related to returned credit transfers.
# * `Truncatedcredittransfers` - Transaction is related to truncated credit transfers.
# Conversion of physical instrument to electonric form for transmission to the paying bank and where the original paper document does not continue in the clearing process..The original instrument rules are retained throughout the life of the instrument.
# Transaction triggered by specific marked and populated paper slip.
# Reconciliation reference is secured by check digits supporting secure optical recognition. All other remittance information is truncated prior transmission.
# * `Directdebits` - Transaction is related to direct debits.
# * `Returneddirectdebits` - Transaction is related to returned direct debits.
# * `Truncatedchecks` - Transaction is related to truncated checks.
# Conversion of physical instrument to electonric form for transmission to the paying bank and where the original paper document does not continue in the clearing process..The original instrument rules are retained throughout the life of the instrument.
# * `Revokedcredittransfers` - Transaction is related to revoked credit transfers
# * `Revokeddirectdebits` - Transaction is related to revoked direct debits.
# * `Revokedreturnedcredittransfers` - Transaction is related to revoked returned credit transfers
# * `Revokedreturneddirectdebits` - Transaction is related to revoked returned direct debits.
# * `Revokedtruncatedchecks` - Transaction is related to revoked truncated checks.
# * `Revokedtruncatedcredittransfers` - Transaction is related to revoked truncated credit transfers.
# * `Cardclearing` - Transaction is related to card clearing.
# * `Nonpreauthoriseddirectdebitde` - Transaction is related to a direct debit that is not pre authorised (Einzugsermächtigung).
# * `Preauthoriseddirectdebitde` - Transaction is related to a direct debit that is pre authorised (Abbuchungsauftrag).
# * `Imagebasedchequecollection` - Transaction is related to the German Image-based Cheque Collection Procedure “Imagegestützter Scheckeinzug - ISE”
# * `Paperlesschequecollection` - Transaction is related to the German Paperless Cheque Collection procedure “Belegloser Scheckeinzug - BSE”
# * `Businesstobusinessdirectdebit` - Transaction is related to a business-to-business direct debit (CSB58).
# * `Businesstocustomerdirectdebit` - Transaction is related to a business-to-customer direct debit (CSB19).
# * `Ancillarysystemtransferinitiation` - Indicates that the payment is sent by an authorized third party on behalf of the participant.
# * `Backuppayment` - Indicates that the payment was initiated manually using a GUI (Graphical User Interface).
# * `Mandatedpayment` - Indicates that the payment is sent by responsible Central Bank on behalf of the participant in case of contingency.
# * `Settlementbanktransferinitiation` - Indicates that the payment is submitted to move  liquidity to the technical account - dedicated to real-time settlement in an external system (for example ancillary system) . The payment is processed in a separate payment queue besides the normal processing.
# * `Preauthoriseddirectdebitaccéléréacceleratedclearing2dayordinairenormalclearing4day` - Transaction is related to an urgent direct debit that is pre authorised (Avis de Prélèvement accéléré).
# * `Preauthoriseddirectdebitordinairenormalclearing4day` - Transaction is related to a direct debit that is pre authorised (Avis de Prélèvement).
# * `Preauthoriseddirectdebitvérifiéverifiedclearing` - Transaction is related to an urgent direct debit that is pre authorised (Avis de Prélèvement vérifié).
# * `Recoveredbillofexchangeorpromissorynote` - LCR - Lettre de Change Relevé (Recovered Bill of Exchange) and BOR - Billet à Orde Relevé (Promissory Note)
# * `Nonpreauthoriseddirectdebitriba` - Transaction is related to a non-pre authorised collection (RIBA).
# * `Preauthorisedrevocabledirectdebit` - Transaction is related to a direct debit that is pre authorised and revocable (RID Ordinario).
# * `Preauthorisedrevocableurgentdirectdebit` - Transaction is related to an urgent direct debit that is pre authorised and revocable (RID Veloce).
# * `Paymentsviainternetownedbycurrence` - Transaction is related to payments via internet owned by Currence.
# * `Instantcredittransfernottimecritical` - The transaction is related to a regular  Credit Transfer and will be instantly processed under the Dutch AOS on top of the EPC SCT scheme.
# * `Instantcredittransfertimecritical` - The transaction is related to an Instant Credit Transfer under the rules of the Dutch AOS on top of the EPC SCT Inst scheme.
# * `Paymentsviainternetownedbycurrenceusinginstantcredittransfer` - Transaction is related to payments via internet owned by Currence which uses an Instant Credit Transfer.
# * `Paymentsviainternetownedbycurrenceusinginstantcredittransfernottimecritical` - Transaction is related to payments via internet owned by Currence which uses a regular  Credit Transfer and will be instantly processed under the Dutch AOS on top of the EPC SCT scheme.
# * `Paymentsviainternetownedbycurrenceusinginstantcredittransfertimecritical` - Transaction is related to payments via internet owned by Currence which uses an Instant Credit Transfer under the rules of the Dutch AOS on top of the EPC SCT Inst scheme.
# * `Dutchdomesticbulkpayment` - Transaction is related to a Domestic payment initiated by PAIN.001
# * `Dutchurgentpayment` - Transaction is related to a Domestic payment initiated by PAIN.001
# * `Paymentviaacceptgiroownedbycurrence` - Transaction is related to payments via Acceptgiro owned by Currence.
# * `Paymentsviastandaarddigitalenota` - Transaction is related to payments via a ‘Standaard Digitale Nota’ InvoiceAcceptgiro payment.
# * `Incidentmanagementcorrection` - Transaction is related to an Incident Management Correction procedure based on the DD infrastructure.
# * `Directdebitinitiatedbythegovernmentwithspecialconditions` - Transaction is related to direct debit scheme owned by the NVB.
# * `Masspaymentbeneficiary` - Transaction is related to mass payment beneficiary.
# * `Masspaymentours` - Transaction is related to mass payment ours.
# * `Masspaymentshared` - Transaction is related to mass payment shared.
# * `Standingorder` - Transaction is related to standing order.
# * `Oneoffauthorisation` - Transaction is related to one-off authorisation.
# * `Oneoffauthorisationcharities` - Transaction is related to one-off authorisation charities.
# * `Oneoffauthorisationconstructionindustry` - Transaction is related to one-off authorisation construction industry.
# * `Oneoffauthorisationtuitionfees` - Transaction is related to one-off authorisation tuition fees.
# * `Standingauthorisationcompanies` - Transaction is related to standing authorisation companies.
# * `Standingauthorisationcompanieswithoutdebtorrevocationright` - Transaction is related to standing authorisation companies without debtor revocation right.
# * `Standingauthorisationgeneral` - Transaction is related to standing authorisation general.
# * `Standingauthorisationlotteries` - Transaction is related to standing authorisation lotteries.
# * `Convertedbankpayment` - Transaction is related to converted (bank) payment.
# Conversion of physical instrument to electonric form for transmission to the paying bank and where the original paper document does not continue in the clearing process.The instrument rules change upon conversion.
# * `Businesspayment` - Transaction is related to business payment
# * `Crossbordercustomercredittransfer` - Transaction is related to cross border customer credit transfer.
# * `Overnight` - Transaction is related to overnight clearing.
# * `Paymentwitheri` - Credit transfer contains Extended Remittance Information (ERI) as defined within the applicable scheme.
# * `Sameday` - Transaction is related to same day clearing.
# * `Corenorefund` - SEPA Core Direct Debit with ‘no refund’ option
# * `Directdebitfixedamount` - SEPA Fixed Amount Direct Debit
# * `Sepadirectdebitcore` - Transaction is related to SEPA direct debit -core.
# * `Sepab2bdirectdebitami` - SEPA B2B Direct Debit AMI based on a paper mandate
# * `Sepabusinesstobusinessdirectdebit` - Transaction is related to SEPA business to business direct debit.
# * `Sepacored1directdebitami` - Optional shorter time cycle (D-1) for SEPA Core Direct Debit AMI based on a paper mandate
# * `Sepacoredirectdebitami` - SEPA Core Direct Debit AMI based on a paper mandate
# * `Sepadirectdebit1daysettlement` - Optional shorter time cycle (D-1) for SEPA Core Direct Debit
# * `Sepafadirectdebitami` - SEPA Fixed Amount Direct Debit AMI based on a paper mandate
# * `Instantcredittransfer` - Transaction is related to an Instant Credit Transfer.
# Use case example: SEPA Instant Credit Transfer (SCT Inst)
# * `Authenticateddirectdebit` - Transaction is authenticated direct debit for domestic use.
# * `Unauthenticateddirectdebit` - Transaction is unauthenticated direct debit for domestic use.
# * `Cashconcentrationintragroup` - Transaction is related to an intra-group bank initiated cash management payment
# * `Banktransfer` - Transaction is related to a bank transfer.
# * `Checksamedaysettlementwire` - Transaction is related to check same day settlement wire.
# * `Customertransfer` - Transaction is related to customer transfer.
# * `Customertransferplus` - Transaction is related to a customer transfer, which may include information related to a cover payment or extended remittance information.
# * `Deposittosendersaccount` - Transaction is related to deposit to sender's account.
# * `Fedfundsreturned` - Transaction is related to Fed funds returned.
# * `Fedfundssold` - Transaction is related to Fed funds sold.
# * `Nonvalueservicemessage` - Transaction is related to non-value service message.
# * `Drawdownresponsevaluetohonoradrawdownrequest` - Transaction is related to drawdown response (value) to honor a drawdown request.
# * `Banktobankdrawdownrequestorresponsenonvalue` - Transaction is related to bank-to-bank drawdown request or response (non-value)
# * `Customerorcorporatedrawdownrequestorresponsenonvalue` - Transaction is related to customer or corporate drawdown request or response (non-value).
# * `Internationalach` - Transaction is related to international ACH.
# * `Cashconcentrationordisbursementcorporatecounterparty` - Transaction is related to cash concentration or disbursement corporate counterparty.
# * `Corporatetradeexchange` - Transaction is related to corporate trade exchange.
# * `Prearrangedpaymentordepositconsumercounterparty` - Transaction is related to prearranged payment or deposit consumer counterparty.
# * `Customerinitiatedentry` - A credit entry initiated by or on behalf of the holder of a consumer account
# * `Representedcheckentry` - Transaction is related to re-presented check entry.
# * `Accountsreceivablecheck` - Transaction is related to accounts receivable check.
# * `Internetinitiatedentry` - Transaction is related to internet initiated entry.
# * `Pointofpurchase` - Transaction is related to point-of-purchase.
# * `Pointofsale` - Transaction is related to point-of-sale.
# * `Telephoneinitiatedentry` - Transaction is related to telephone initiated entry.
public type paymentlocalinstumenttypevalues "Directdebitconfirmedelectronicmandate"|"Directdebitpapermandatewithpaperauthorization"|"Directdebitunconfirmedelectronicmandate"|"Batchpaymentsaruba"|"Instantpaymentsaruba"|"Credittransfers"|"Nonpreauthoriseddirectdebitat"|"Preauthoriseddirectdebitat"|"Cashperpost"|"Returnedcredittransfers"|"Truncatedcredittransfers"|"Directdebits"|"Returneddirectdebits"|"Truncatedchecks"|"Revokedcredittransfers"|"Revokeddirectdebits"|"Revokedreturnedcredittransfers"|"Revokedreturneddirectdebits"|"Revokedtruncatedchecks"|"Revokedtruncatedcredittransfers"|"Cardclearing"|"Nonpreauthoriseddirectdebitde"|"Preauthoriseddirectdebitde"|"Imagebasedchequecollection"|"Paperlesschequecollection"|"Businesstobusinessdirectdebit"|"Businesstocustomerdirectdebit"|"Ancillarysystemtransferinitiation"|"Backuppayment"|"Mandatedpayment"|"Settlementbanktransferinitiation"|"Preauthoriseddirectdebitaccéléréacceleratedclearing2dayordinairenormalclearing4day"|"Preauthoriseddirectdebitordinairenormalclearing4day"|"Preauthoriseddirectdebitvérifiéverifiedclearing"|"Recoveredbillofexchangeorpromissorynote"|"Nonpreauthoriseddirectdebitriba"|"Preauthorisedrevocabledirectdebit"|"Preauthorisedrevocableurgentdirectdebit"|"Paymentsviainternetownedbycurrence"|"Instantcredittransfernottimecritical"|"Instantcredittransfertimecritical"|"Paymentsviainternetownedbycurrenceusinginstantcredittransfer"|"Paymentsviainternetownedbycurrenceusinginstantcredittransfernottimecritical"|"Paymentsviainternetownedbycurrenceusinginstantcredittransfertimecritical"|"Dutchdomesticbulkpayment"|"Dutchurgentpayment"|"Paymentviaacceptgiroownedbycurrence"|"Paymentsviastandaarddigitalenota"|"Incidentmanagementcorrection"|"Directdebitinitiatedbythegovernmentwithspecialconditions"|"Masspaymentbeneficiary"|"Masspaymentours"|"Masspaymentshared"|"Standingorder"|"Oneoffauthorisation"|"Oneoffauthorisationcharities"|"Oneoffauthorisationconstructionindustry"|"Oneoffauthorisationtuitionfees"|"Standingauthorisationcompanies"|"Standingauthorisationcompanieswithoutdebtorrevocationright"|"Standingauthorisationgeneral"|"Standingauthorisationlotteries"|"Convertedbankpayment"|"Businesspayment"|"Crossbordercustomercredittransfer"|"Overnight"|"Paymentwitheri"|"Sameday"|"Corenorefund"|"Directdebitfixedamount"|"Sepadirectdebitcore"|"Sepab2bdirectdebitami"|"Sepabusinesstobusinessdirectdebit"|"Sepacored1directdebitami"|"Sepacoredirectdebitami"|"Sepadirectdebit1daysettlement"|"Sepafadirectdebitami"|"Instantcredittransfer"|"Authenticateddirectdebit"|"Unauthenticateddirectdebit"|"Cashconcentrationintragroup"|"Banktransfer"|"Checksamedaysettlementwire"|"Customertransfer"|"Customertransferplus"|"Deposittosendersaccount"|"Fedfundsreturned"|"Fedfundssold"|"Nonvalueservicemessage"|"Drawdownresponsevaluetohonoradrawdownrequest"|"Banktobankdrawdownrequestorresponsenonvalue"|"Customerorcorporatedrawdownrequestorresponsenonvalue"|"Internationalach"|"Cashconcentrationordisbursementcorporatecounterparty"|"Corporatetradeexchange"|"Prearrangedpaymentordepositconsumercounterparty"|"Customerinitiatedentry"|"Representedcheckentry"|"Accountsreceivablecheck"|"Internetinitiatedentry"|"Pointofpurchase"|"Pointofsale"|"Telephoneinitiatedentry";

# Permission to define a sweep arrangement to the target account.  
public type mandate record {
    # Specifies whether a mandate is accepted or rejected. (ISO20022)
    mandatestatus Status?;
    # Specifies the number of days the mandate must be tracked. (ISO20022)
    string TrackingDays?;
    # Reference identifier linking the account to appropriate tax handling GenericIdentification|GenericIdentification (https://www.iso20022.org/standardsrepository/type/GenericIdentification)|Standard|ISO20022 BM ()
    common:identifier Identification?;
    # >
    # * `Consent` - Permission or Agreement obtained from someone or something having authority or power
    #
    # Permission for something to happen or agreement to do something.
    # * `PowerOfAttorney` - A written authorization that transfers specific rights from a party to another party.
    #
    # Document that transfers specific rights from a party to another party. ISO20022
    # * `DirectDebitMandate` - An agreement between a debtor and a creditor allowing the creditor to instruct the bank to debit the debtors account
    #
    # Authorization in favour of the creditor given by the debtor to debit its own account. (ISO20022)
    # * `ServicingMandate` - An agreement between the customer and a service provider to authorise the service provider to access Products and Services on behalf of the customer. 
    mandatetypevalues Type?;
    # Period of time during which the status is valid.
    common:datetimeperiod Duration?;
    # Indicates wether a pre-notification must be sent by the creditor to the debtor before a direct debit occurs (ISO20022)
    yesnoindicator TrackingIndicator?;
};

# >
# * `Bonuspayment` - Transaction is the payment of a bonus.
# * `Cashmanagementtransfer` - Transaction is a general cash management instruction.
# * `Cardbulkclearing` - A Service that is settling money for a bulk of card transactions, while referring to a specific transaction file or other information like terminal ID, card acceptor ID or other transaction details.
# * `Creditcardpayment` - Transaction is related to a payment of credit card.
# * `Tradesettlementpayment` - Transaction is related to settlement of a trade, eg a foreign exchange deal or a securities transaction.
# * `Debitcardpayment` - Transaction is related to a payment of debit card.
# * `Dividend` - Transaction is the payment of dividends.
# * `Deliveragainstpayment` - Code used to pre-advise the account servicer of a forthcoming deliver against payment instruction.
# * `Epayment` - Transaction is related to ePayment.
# * `Feecollection` - A Service that is settling card transaction related fees between two parties.
# * `Governmentpayment` - Transaction is a payment to or from a government department.
# * `Hedging` - Transaction is related to the payment of a hedging operation.
# * `Irrevocablecreditcardpayment` - Transaction is reimbursement of credit card payment.
# * `Irrevocabledebitcardpayment` - Transaction is reimbursement of debit card payment.
# * `Intracompanypayment` - Transaction is an intra-company payment, ie, a payment between two companies belonging to the same group.
# * `Interest` - Transaction is the payment of interest.
# * `Loan` - Transaction is related to the transfer of a loan to a borrower.
# * `Commercial` - Mobile P2B Payment
# * `Consumer` - Mobile P2P Payment
# * `Otherpayment` - Other payment purpose.
# * `Pensionpayment` - Transaction is the payment of pension.
# * `Represented` - Collection used to re-present previously reversed or returned direct debit transactions.
# * `Reimbursementreceivedcredittransfer` - Transaction is related to a reimbursement for commercial reasons of a correctly received credit transfer.
# * `Receiveagainstpayment` - Code used to pre-advise the account servicer of a forthcoming receive against payment instruction.
# * `Salarypayment` - Transaction is the payment of salaries.
# * `Securities` - Transaction is the payment of securities.
# * `Socialsecuritybenefit` - Transaction is a social security benefit, ie payment made by a government to support individuals.
# * `Supplierpayment` - Transaction is related to a payment to a supplier.
# * `Taxpayment` - Transaction is the payment of taxes.
# * `Trade` - Transaction is related to the payment of a trade finance transaction.
# * `Treasurypayment` - Transaction is related to treasury operations.  E.g. financial contract settlement.
# * `Valueaddedtaxpayment` - Transaction is the payment of value added tax.
# * `Withholding` - Transaction is the payment of withholding tax.
public type paymentcategorypurposetypevalues "Bonuspayment"|"Cashmanagementtransfer"|"Cardbulkclearing"|"Creditcardpayment"|"Tradesettlementpayment"|"Debitcardpayment"|"Dividend"|"Deliveragainstpayment"|"Epayment"|"Feecollection"|"Governmentpayment"|"Hedging"|"Irrevocablecreditcardpayment"|"Irrevocabledebitcardpayment"|"Intracompanypayment"|"Interest"|"Loan"|"Commercial"|"Consumer"|"Otherpayment"|"Pensionpayment"|"Represented"|"Reimbursementreceivedcredittransfer"|"Receiveagainstpayment"|"Salarypayment"|"Securities"|"Socialsecuritybenefit"|"Supplierpayment"|"Taxpayment"|"Trade"|"Treasurypayment"|"Valueaddedtaxpayment"|"Withholding";

# Indicates wether a pre-notification must be sent by the creditor to the debtor before a direct debit occurs (ISO20022)
public type yesnoindicator record {
    # Indicates a "Yes" or "No" type of answer for an element. (ISO20022)
    # true: Yes
    # false: No
    string Yesnoindicator?;
};

# >
# * `CreationDate` - 
# * `CapturingDate` - 
# * `VersionDate` - 
# * `ValueDate` - 
# * `IssueDate` - 
public type documentdatetimetypevalues "CreationDate"|"CapturingDate"|"VersionDate"|"ValueDate"|"IssueDate";

# Details of the deposit transaction
public type deposittransaction record {
    # The monetary amount of the deposit
    common:amount DepositAmount?;
};

# The type of current account (e.g. checking, student, small business) ||
# |
public type currentaccountproducttypevalues "BusinessCurrentAccount"|"PersonalCurrentAccount";

# The product features/services available with a financical facility
public type BookingAuthorization record {
    # Priority number of the payment transaction for use in determining the available balance
    string TransactionPriorityNumber?;
    # Key dates associated with the account ISODateTime|ISODateTime (https://www.iso20022.org/standardsrepository/type/ISODateTime)|Standard|ISO20022 BM ()
    common:datetime ValueDate?;
    # Specifies the reasons for the status.
    common:text AuthorizationResult?;
    # Reference to the entry in Position Keeping of the booking to be authorised
    accountentry PositionKeepingReference?;
    # The monetary amount to be authorized for booking
    common:amount BookingAmount?;
    # Specifies the reasons for the status.
    common:text AuthorizationRejectionReason?;
    # Details of the linked account Account|Account  (https://www.iso20022.org/standardsrepository/type/Account)|Standard|ISO20022 BM ()
    common:Account AccountReference?;
    # Key dates associated with the account ISODateTime|ISODateTime (https://www.iso20022.org/standardsrepository/type/ISODateTime)|Standard|ISO20022 BM ()
    common:datetime BookingDate?;
};

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

# Maintain the terms and conditions that apply to a commercial relationship within Sales Product.
# Represents the formal agreement defining the relationship between bank and customer for products and services
public type ProductandServiceAgreement record {
    # Reference to the underlying product instance - this is the fulfillment vehicle that has amended/augmented features to 'create' the sold product ||
    # |
    common:ProductAgreement ProductInstanceReference?;
    # Reference to the underlying product instance - this is the fulfillment vehicle that has amended/augmented features to 'create' the sold product ||
    # |
    common:ProductAgreement UnderlyingProductInstanceReference?;
    # Reference to the product primary party/owner ||
    # |
    customerrelationship CustomerReference?;
    # Bank branch associated with the product for booking purposes ||
    # |
    common:branch BankBranchLocationReference?;
    # Reference identifier linking the investment account to appropriate tax handling GenericIdentification|GenericIdentification (https://www.iso20022.org/standardsrepository/type/GenericIdentification)|Standard|ISO20022 BM ()
    common:identifier TaxReference?;
    # The setting for the entitlement option ||
    # |
    common:partyobligationorentitlement EntitlementOptionDefinition?;
    # The setting for the entitlement option ||
    # |
    common:partyobligationorentitlement EntitlementOptionSetting?;
    # The setting for the restriction option AccountRestriction_x000D_
    # |AccountRestriction (https://www.iso20022.org/standardsrepository/type/AccountRestriction)|Standard|ISO20022 BM  ()
    common:accountrestriction RestrictionOptionDefinition?;
    # The setting for the restriction option AccountRestriction_x000D_
    # |AccountRestriction (https://www.iso20022.org/standardsrepository/type/AccountRestriction)|Standard|ISO20022 BM  ()
    common:accountrestriction RestrictionOptionSetting?;
    # Details of the linked account Account|Account  (https://www.iso20022.org/standardsrepository/type/Account)|Standard|ISO20022 BM ()
    common:Account LinkedAccounts?;
    # The type and purpose for the link (e.g. guarantor, sweep) ||
    # |
    // common:account_accountrelationshiptypevalues LinkType?;
    # Details of the linked account Account|Account  (https://www.iso20022.org/standardsrepository/type/Account)|Standard|ISO20022 BM ()
    common:Account AccountDetails?;
    # Position limits that are maintained for the sales product as an aspect of the operational terms
    string PositionLimits?;
    # The type of position maintained for the sales product (e.g. transaction credit/debit, netting, position)
    string PositionLimitType?;
    # The position definition, associated limit settings and rules
    string PositionLimitSettings?;
    # The current calculated position
    string PositionLimitValue?;
    # Key dates associated with the sales product (e.g. opening date, closing date) Account/OpeningDate|Account/OpeningDate (https://www.iso20022.org/standardsrepository/type/Account)|Standard|ISO20022 BM ()
    common:Accountdatetimetypevalues DateType?;
    # Value of the date type ISODateTime|ISODateTime (https://www.iso20022.org/standardsrepository/type/ISODateTime)|Standard|ISO20022 BM ()
    common:datetime Date?;
};

# >
# * `Initiated` - 
# * `Executed` - 
# * `Cancelled` - 
# * `Confirmed` - 
# * `Suspended` - 
# * `Pending` - 
# * `Completed` - 
# * `Notified` - 
# * `Booked` - 
# * `Rejected` - 
public type transactionstatustypevalues "Initiated"|"Executed"|"Cancelled"|"Confirmed"|"Suspended"|"Pending"|"Completed"|"Notified"|"Booked"|"Rejected";

# The Date that the transaction has occurred or is planned to occur.
# A characteristic of transaction which refers to the LifecycleDate of transaction (e.g., initiated date, executed date, fulfillment date). 
public type transactiondatetime record {
    # Value of the date type ISODateTime|ISODateTime (https://www.iso20022.org/standardsrepository/type/ISODateTime)|Standard|ISO20022 BM ()
    common:datetime TransactionDate?;
    # >
    # * `ExecutedDate` - 
    # * `FulfillmentDate` - 
    # * `InitiatedDate` - 
    # * `CancelledDate` - 
    # * `ApprovedDate` - 
    # * `ValueDate` - 
    # * `BookingDate` - 
    transactiondatetimetypevalues TransactionDateType?;
};

# The value of the parameter for this instance
public type productarrangement record {
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
    common:Arrangementtypevalues ProductArrangementType?;
};

# Reference to the product primary party/owner ||
# |
public type customerrelationship record {
    # A specific relationship between a specific Bank (= party acting as a supplier of banking services) and one or more other involved parties acting as (potential) consumers of banking services as agreed in one or more banking product or service offerings and/or agreements. 
    string CustomerRelationship?;
};

# A characteristic of transaction which refers to the LifecycleStatus of transaction (e.g., initiated, executed, confirmed, cancelled, etc.) 
public type transactionstatus record {
    # The current lifecycle status of the transaction
    common:status TransactionStatus?;
    # >
    # * `Initiated` - 
    # * `Executed` - 
    # * `Cancelled` - 
    # * `Confirmed` - 
    # * `Suspended` - 
    # * `Pending` - 
    # * `Completed` - 
    # * `Notified` - 
    # * `Booked` - 
    # * `Rejected` - 
    transactionstatustypevalues TransactionStatusType?;
};

public type ProductandServiceAgreementOk record {|
    *http:Ok;
    ProductandServiceAgreement body;
|};

public type 'transaction record {
    common:identifier TransactionIdentification?;
    transactiondatetime TransactionDate?;
    common:Transactiontypevalues TransactionType?;
    common:text TransactionDescription?;
    transactionstatus TransactionStatus?;
    common:name TransactionName?;
};

# >
# * `ExecutedDate` - 
# * `FulfillmentDate` - 
# * `InitiatedDate` - 
# * `CancelledDate` - 
# * `ApprovedDate` - 
# * `ValueDate` - 
# * `BookingDate` - 
public type transactiondatetimetypevalues "ExecutedDate"|"FulfillmentDate"|"InitiatedDate"|"CancelledDate"|"ApprovedDate"|"ValueDate"|"BookingDate";

# Fulfill any scheduled and ad-hoc obligations under a service arrangement, most typically for a financial product or facility within Trust Services.
# Represents the facility for managing corporate trust services including estate management, tax administration, and loan agency
public type CorporateTrustServicesFacility record {
    # A Classification value that distinguishes between arrangements according to the type of business services within Corporate Trust Services Facility ||
    # |
    common:featuretypevalues CorporateTrustServicesFacilityParameterType?;
    # A selected optional product feature as subject matter of Corporate Trust Services Facility ||
    # |
    common:feature CorporateTrustServicesFacilitySelectedOption?;
    # The type of Corporate Trust Services Facility ||
    # |
    bankingproducttype CorporateTrustServicesFacilityType?;
    # Reference to the calendar used to fulfill Corporate Trust Services Facility ||
    # |
    calendar CorporateTrustServicesFacilityCalendarReference?;
    # The status of Corporate Trust Services Facility Status |Status  (https://www.iso20022.org/standardsrepository/type/Status)|Standard|ISO20022 BM ()
    common:status CorporateTrustServicesFacilityStatus?;
    # Reference to the customer who is involved in Corporate Trust Services Facility ||
    # |
    common:involvedparty CorporateTrustServicesFacilityAssociatedParty?;
    # The curreny which is arranged in Corporate Trust Services Facility CurrencyCode|CurrencyCode (https://www.iso20022.org/standardsrepository/type/CurrencyCode)|Standard|ISO20022 BM ()
    common:currencycode CorporateTrustServicesFacilityCurrency?;
    # Reference to the regulation which is defined in Corporate Trust Services Facility GovernanceRules|GovernanceRules (https://www.iso20022.org/standardsrepository/type/GovernanceRules)|Standard|ISO20022 BM ()
    common:RuleSet CorporateTrustServicesFacilityRegulationReference?;
    # A Classification that distinguishes between the regularity domains of Corporate Trust Services Facility ||
    # |
    rulesettype CorporateTrustServicesFacilityRegulationType?;
    # Reference to the jurisdiction that is assigned to Corporate Trust Services Facility in case of legal dispute. Jurisdiction|Jurisdiction (https://www.iso20022.org/standardsrepository/type/Jurisdiction)|Standard|ISO20022 BM ()
    jurisdiction CorporateTrustServicesFacilityJurisdiction?;
    # The financial accounting unit into which the financial events, with regard to the origination and fulfillment of the agreement in the context of Corporate Trust Services Facility, are entered. ||
    # |
    businessunit CorporateTrustServicesFacilityBookingLocation?;
    # The type of account which is linked to Corporate Trust Services Facility OBExternalAccountSubType1Code| ()|Standard|UK Open Banking ()
    common:Accounttypevalues CorporateTrustServicesFacilityAccountType?;
    # Reference to the account which is linked to Corporate Trust Services Facility Account|Account  (https://www.iso20022.org/standardsrepository/type/Account)|Standard|ISO20022 BM ()
    common:Account CorporateTrustServicesFacilityAccountReference?;
    # Reference to the customer who is involved in Corporate Trust Services Facility ||
    # |
    common:involvedparty CorporateTrustServicesFacilityCustomerReference?;
    # The position of Corporate Trust Services Facility Position |Position  (https://www.iso20022.org/standardsrepository/type/Position)|Standard|ISO20022 BM ()
    position CorporateTrustServicesFacilityPosition?;
    # Reference to the product which is linked to Corporate Trust Services Facility Product_x000D_
    # |Product (https://www.iso20022.org/standardsrepository/type/Product)|Standard|ISO20022 BM ()
    common:bankingproduct CorporateTrustServicesFacilityProductReference?;
    # Reference to the limitation related to the position of Corporate Trust Services Facility Limit|Limit (https://www.iso20022.org/standardsrepository/type/Limit)|Standard|ISO20022 (https://www.iso20022.org/)
    common:Limitarrangement CorporateTrustServicesFacilityPositionLimit?;
    # An unique reference to an item or an occurrence of Corporate Trust Services Facility ||
    # |
    common:FinancialFacility CorporateTrustServicesFacilityReference?;
};

# The configuration and execution of Trust Tax and Expense Fulfillment arrangement within the Trust Tax and Expense Fulfillment
# Represents tax and expense management for trust accounts
public type TrustTaxandExpense record {
    # The required status/situation prior to the implementation of the feature
    common:condition Preconditions?;
    # The timing and key actions/milestones involved in completing the fulfillment feature instance
    common:schedule Schedule?;
    # The Trust Tax and Expense Fulfillment specific Business Service
    common:businessservice BusinessService?;
    # The required status/situation prior to the implementation of the feature
    common:condition Postconditions?;
    # An unique reference to an item or an occurrence of Corporate Trust Services Facility ||
    # |
    common:FinancialFacility CorporateTrustServicesFacilityReference?;
    # Reference to Trust Tax and Expense Fulfillment
    common:Arrangement TrustTaxandExpenseFulfillmentReference?;
    # The particular date and time point in the progression of time
    common:text TrustTaxandExpenseFulfillmentType?;
};

public type TrustTaxandExpenseOk record {|
    *http:Ok;
    TrustTaxandExpense body;
|};

public type CorporateTrustServicesFacilityOk record {|
    *http:Ok;
    CorporateTrustServicesFacility body;
|};

public type TrustEstateInheritanceandIncomeTaxOk record {|
    *http:Ok;
    TrustEstate_InheritanceandIncomeTax body;
|};

# The configuration and execution of Trust Tax and Expense Fulfillment arrangement within the Trust Tax and Expense Fulfillment
# Represents loan agency and administrative services for trust facilities
public type LoanAgencyandAdministration record {
    # The required status/situation prior to the implementation of the feature
    common:condition Preconditions?;
    # The timing and key actions/milestones involved in completing the fulfillment feature instance
    common:schedule Schedule?;
    # The Trust Tax and Expense Fulfillment specific Business Service
    common:businessservice BusinessService?;
    # The required status/situation prior to the implementation of the feature
    common:condition Postconditions?;
    # An unique reference to an item or an occurrence of Corporate Trust Services Facility ||
    # |
    common:FinancialFacility CorporateTrustServicesFacilityReference?;
    # Reference to Trust Tax and Expense Fulfillment
    common:Arrangement TrustAssetMaintenanceandManagementFulfillmentReference?;
    # The particular date and time point in the progression of time
    common:text TrustAssetMaintenanceandManagementFulfillmentType?;
};

# The configuration and execution of Trust Tax and Expense Fulfillment arrangement within the Trust Tax and Expense Fulfillment
# Represents estate, inheritance, and income tax management for trust services
public type TrustEstate_InheritanceandIncomeTax record {
    # The required status/situation prior to the implementation of the feature
    common:condition Preconditions?;
    # The timing and key actions/milestones involved in completing the fulfillment feature instance
    common:schedule Schedule?;
    # The Trust Tax and Expense Fulfillment specific Business Service
    common:businessservice BusinessService?;
    # The required status/situation prior to the implementation of the feature
    common:condition Postconditions?;
    # An unique reference to an item or an occurrence of Corporate Trust Services Facility ||
    # |
    common:FinancialFacility CorporateTrustServicesFacilityReference?;
    # Reference to Trust Tax and Expense Fulfillment
    common:Arrangement TrustEstate_InheritanceandIncomeTaxFulfillmentReference?;
    # The particular date and time point in the progression of time
    common:text TrustEstate_InheritanceandIncomeTaxFulfillmentType?;
};

public type LoanAgencyandAdministrationOk record {|
    *http:Ok;
    LoanAgencyandAdministration body;
|};
