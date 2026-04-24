import financial.bian.attribute.groups.common as common;

import ballerina/http;

# >
# * `Incorrectaccountnumber` - Format of the account number specified is not correct
# * `Closedaccountnumber` - Account number specified has been closed on the Receiver's books
# * `Blockedaccount` - Account specified is blocked, prohibiting posting of transactions against it.
# * `Transactionforbidden` - Transaction forbidden on this type of account (formerly NoAgreement)
# * `Invalidbankoperationcode` - Bank Operation code specified in the message is not valid for receiver
# * `Notallowedamount` - Specific transaction/message amount is greater than allowed maximum
# * `Notallowedcurrency` - Specified message amount is a non processable currency outside of existing agreement
# * `Duplication` - Duplication
# * `Inconsistenwithendcustomer` - Identification of end customer is not consistent with associated account number. (formerly CreditorConsistency).
# * `Missingcreditoraddress` - Specification of creditor's address, which is required for payment, is missing/not correct (formerly IncorrectCreditorAddress).
# * `Unrecognisedinitiatingparty` - Party who initiated the message is not recognised by the end customer
# * `Unknownendcustomer` - End customer specified is not known at associated Sort/National Bank Code or does no longer exist in the books
# * `Missingdebtoraddress` - Specification of debtor's address, which is required for payment, is missing/not correct.
# * `Invaliddate` - Invalid date (eg, wrong settlement date)
# * `Invalidfileformat` - File format incomplete or invalid
# * `Nomandate` - No Mandate
# * `Missingmandatoryinformationinmandate` - Mandate related information data required by the scheme is missing.
# * `Endcustomerdeceased` - End customer is deceased.
# * `Nomandateservicebyagent` - Receiving agent does not offer specified Mandate services
# * `Nomandateserviceoncustomer` - Account is not open to specified Mandates services
# * `Nomandateserviceforspecified` - Account is not open to specified Mandates services for this particular creditor
# * `Unrecognisedagent` - Agent to whom the message needs to be forwarded cannot be located
# * `Notuniquemandatereference` - Mandate identification is not unique to the creditor
# * `Incorrectcustomerauthentication` - There is a problem with the customer authentication
# * `Incorrectagent` - Agent in the payment workflow is incorrect
# * `Incorrectcurrency` - Currency of the transaction is incorrect
# * `Requestedbycustomer` - Cancellation/amendment requested by the debtor
# * `Requestedbyinitiatingparty` - Cancellation/amendment requested by the creditor
# * `Requestedbyinitiatingpartyandcustomer` - Cancellation/amendment requested by the creditor and the debtor
# * `Mandatecancelledduetoearlysettlement` - Mandate cancellation following early reimbursement of the debit by the debtor
# * `Mandateexpired` - Mandate cancellation following validity expiration
# * `Mandatecancelledduetofraud` - Mandate cancellation due to suspected fraud
# * `Mandateinitiationcancelled` - Mandate cancellation following mandate initiation cancellation
# * `Mandateamendmentcancelled` - Mandate cancellation following mandate amendment cancellation
# * `Notspecifiedreasoncustomergenerated` - Reason has not been specified by end customer
# * `Notspecifiedreasonagentgenerated` - Reason has not been specified by agent.
# * `Narrative` - Reason is provided as narrative information in the additional reason information.
# * `Bankidentifierincorrect` - Bank Identifier code specified in the message has an incorrect format (formerly IncorrectFormatForRoutingCode).
# * `Notuniquetransactionreference` - Transaction reference is not unique within the message.
# * `Missingdebtoraccountoridentification` - Specification of the debtor’s account or unique identification needed for reasons of regulatory requirements is insufficient or missing
# * `Missingdebtornameoraddress` - Specification of the debtor’s name and/or address needed for regulatory requirements is insufficient or missing.
# * `Missingcreditornameoraddress` - Specification of the creditor’s name and/or address needed for regulatory requirements is insufficient or missing.
# * `Regulatoryreason` - Regulatory Reason
# * `Specificserviceofferedbydebtoragent` - Due to specific service offered by the Debtor Agent
# * `Creditornotonwhitelistofdebtor` - Whitelisting service offered by the Debtor Agent; Debtor has not included the Creditor on its “Whitelist” (yet). In the Whitelist the Debtor may list all allowed Creditors to debit Debtor bank account.
# * `Creditoronblacklistofdebtor` - Blacklisting service offered by the Debtor Agent; Debtor included the Creditor on his “Blacklist”. In the Blacklist the Debtor may list all Creditors not allowed to debit Debtor bank account.
# * `Maximumnumberofdirectdebittransactionsexceeded` - Due to Maximum allowed Direct Debit Transactions per period service offered by the Debtor Agent.
# * `Maximumdirectdebittransactionamountexceeded` - Due to Maximum allowed Direct Debit Transaction amount service offered by the Debtor Agent.
public type mandatereasonvalues "Incorrectaccountnumber"|"Closedaccountnumber"|"Blockedaccount"|"Transactionforbidden"|"Invalidbankoperationcode"|"Notallowedamount"|"Notallowedcurrency"|"Duplication"|"Inconsistenwithendcustomer"|"Missingcreditoraddress"|"Unrecognisedinitiatingparty"|"Unknownendcustomer"|"Missingdebtoraddress"|"Invaliddate"|"Invalidfileformat"|"Nomandate"|"Missingmandatoryinformationinmandate"|"Endcustomerdeceased"|"Nomandateservicebyagent"|"Nomandateserviceoncustomer"|"Nomandateserviceforspecified"|"Unrecognisedagent"|"Notuniquemandatereference"|"Incorrectcustomerauthentication"|"Incorrectagent"|"Incorrectcurrency"|"Requestedbycustomer"|"Requestedbyinitiatingparty"|"Requestedbyinitiatingpartyandcustomer"|"Mandatecancelledduetoearlysettlement"|"Mandateexpired"|"Mandatecancelledduetofraud"|"Mandateinitiationcancelled"|"Mandateamendmentcancelled"|"Notspecifiedreasoncustomergenerated"|"Notspecifiedreasonagentgenerated"|"Narrative"|"Bankidentifierincorrect"|"Notuniquetransactionreference"|"Missingdebtoraccountoridentification"|"Missingdebtornameoraddress"|"Missingcreditornameoraddress"|"Regulatoryreason"|"Specificserviceofferedbydebtoragent"|"Creditornotonwhitelistofdebtor"|"Creditoronblacklistofdebtor"|"Maximumnumberofdirectdebittransactionsexceeded"|"Maximumdirectdebittransactionamountexceeded";

# Capture and maintain reference information about some type of entitity within Direct Debit Mandate.
public type DirectDebitMandateDirectoryEntry record {
    # Party that signs the mandate and to whom an amount of money is due. (ISO20022) ||
    # |
    common:involvedparty MandatedCustomerReference?;
    # Description of the purpose for this collection of customer mandates ||
    # |
    common:text MandateDescription?;
    # The date and time the mandate collection is valid from to (allows for duration limits) DateTimePeriod|DateTimePeriod (https://www.iso20022.org/standardsrepository/type/DateTimePeriod)|Standard|ISO20022 BM ()
    common:datetimeperiod MandateCollectionValidPeriod?;
    # DirectDebitMandate|DirectDebitMandate (https://www.iso20022.org/standardsrepository/type/DirectDebitMandate)|Standard|ISO20022 BM ()
    common:directdebitmandate DirectDebitMandateReference?;
    # A unique reference refers to an instance of CR GenericIdentification|GenericIdentification (https://www.iso20022.org/standardsrepository/type/GenericIdentification)|Standard|ISO20022 BM ()
    common:identifier DirectDebitMandateDirectoryEntryReference?;
    # ||
    # |
    common:ProductAgreement CustomerProductInstanceReference?;
    # Party that signs the mandate and to whom an amount of money is due. (ISO20022) ||
    # |
    common:involvedparty DirectDebitMandatePayeeReference?;
};

# A reference to the mandate request, as assigned by the initiating party.
public type directdebitinstruction record {
    # >
    # * `FixedAmount` - Direct debit amount is fixed.
    # * `VariableAmount` - Direct debit amount is variable.
    # * `UsagebasedAmont` - Direct debit amount is based on usage.
    # * `Paper` - This is a physical form that the customer fills out, signs, and returns to the organization
    # * `Emandate` - It can be completed and signed electronically, often through online forms or secure digital platforms.
    // common:directdebittypevalues DirectDebitType?;
    # The date and time when the prenotification was sent
    common:datetime PrenotificationDate?;
};

public type DirectDebitMandateDirectoryEntryOk record {|
    *http:Ok;
    DirectDebitMandateDirectoryEntry body;
|};

# "An assertion or statement with regard to a concept, a characteristic.
#
# Examples: Product pricing rules, Customer reference details
#
# A descriptor can be atomic or composed."
# Prospect Management
public type MandateRegistration record {
    # Party that signs the mandate and to whom an amount of money is due. (ISO20022) ||
    # |
    common:involvedparty DirectDebitMandateCustomerReference?;
    # Party that signs the mandate and to whom an amount of money is due. (ISO20022) ||
    # |
    common:involvedparty DirectDebitMandateCustomerPseudonym?;
    # Party that signs the mandate and to whom an amount of money is due. (ISO20022) ||
    # |
    common:involvedparty DirectDebitMandatePayerBankReference?;
    # Reference to the payer's account
    #
    #
    # Unambiguous identification of the account of the debtor, to which a debit entry will be made as a result of the transaction. (ISO20022)
    common:Account DirectDebitMandatePayerAccountReference?;
    # The date and time the mandate collection is valid from to (allows for duration limits) DateTimePeriod|DateTimePeriod (https://www.iso20022.org/standardsrepository/type/DateTimePeriod)|Standard|ISO20022 BM ()
    common:datetimeperiod DirectDebitMandateValidDates?;
    # Description of allowed usage details and restrictions that apply to use of the mandate (e.g. maximum amount and frequency)
    common:directdebitmandatearrangement DirectDebitMandateTerms?;
    # Reference to the correspondence generated and received with the maintenance of the mandate
    common:Correspondence CorrespondenceInstanceReference?;
    # Description of the purpose for this collection of customer mandates ||
    # |
    common:text CorrespondenceContent?;
    # The document reference for associated documents
    common:documentdirectoryentry DocumentDirectoryEntryInstanceReference?;
    # Description of the purpose for this collection of customer mandates ||
    # |
    common:text DocumentContent?;
    # Party that signs the mandate and to whom an amount of money is due. (ISO20022) ||
    # |
    common:involvedparty DirectDebitMandatePayeeBankReference?;
    # Reference to the payer's account
    #
    #
    # Unambiguous identification of the account of the debtor, to which a debit entry will be made as a result of the transaction. (ISO20022)
    common:Account DirectDebitMandatePayeeAccountReference?;
    # A unique reference refers to an instance of CR GenericIdentification|GenericIdentification (https://www.iso20022.org/standardsrepository/type/GenericIdentification)|Standard|ISO20022 BM ()
    common:identifier DirectDebitMandateIdentification?;
    # A reference to the mandate request, as assigned by the initiating party.
    directdebitinstruction DirectDebitMandateRequestReference?;
    # >
    # * `FixedAmount` - Direct debit amount is fixed.
    # * `VariableAmount` - Direct debit amount is variable.
    # * `UsagebasedAmont` - Direct debit amount is based on usage.
    # * `Paper` - This is a physical form that the customer fills out, signs, and returns to the organization
    # * `Emandate` - It can be completed and signed electronically, often through online forms or secure digital platforms.
    // common:directdebittypevalues DirectDebitMandateType?;
    # The amount specified in the direct debit mandate
    common:amount DirectDebitMandateAmount?;
    # Specifies the fee applied to the collection amount of a direct debit instruction.
    common:feearrangement DirectDebitMandateCharges?;
    # >
    # * `Incorrectaccountnumber` - Format of the account number specified is not correct
    # * `Closedaccountnumber` - Account number specified has been closed on the Receiver's books
    # * `Blockedaccount` - Account specified is blocked, prohibiting posting of transactions against it.
    # * `Transactionforbidden` - Transaction forbidden on this type of account (formerly NoAgreement)
    # * `Invalidbankoperationcode` - Bank Operation code specified in the message is not valid for receiver
    # * `Notallowedamount` - Specific transaction/message amount is greater than allowed maximum
    # * `Notallowedcurrency` - Specified message amount is a non processable currency outside of existing agreement
    # * `Duplication` - Duplication
    # * `Inconsistenwithendcustomer` - Identification of end customer is not consistent with associated account number. (formerly CreditorConsistency).
    # * `Missingcreditoraddress` - Specification of creditor's address, which is required for payment, is missing/not correct (formerly IncorrectCreditorAddress).
    # * `Unrecognisedinitiatingparty` - Party who initiated the message is not recognised by the end customer
    # * `Unknownendcustomer` - End customer specified is not known at associated Sort/National Bank Code or does no longer exist in the books
    # * `Missingdebtoraddress` - Specification of debtor's address, which is required for payment, is missing/not correct.
    # * `Invaliddate` - Invalid date (eg, wrong settlement date)
    # * `Invalidfileformat` - File format incomplete or invalid
    # * `Nomandate` - No Mandate
    # * `Missingmandatoryinformationinmandate` - Mandate related information data required by the scheme is missing.
    # * `Endcustomerdeceased` - End customer is deceased.
    # * `Nomandateservicebyagent` - Receiving agent does not offer specified Mandate services
    # * `Nomandateserviceoncustomer` - Account is not open to specified Mandates services
    # * `Nomandateserviceforspecified` - Account is not open to specified Mandates services for this particular creditor
    # * `Unrecognisedagent` - Agent to whom the message needs to be forwarded cannot be located
    # * `Notuniquemandatereference` - Mandate identification is not unique to the creditor
    # * `Incorrectcustomerauthentication` - There is a problem with the customer authentication
    # * `Incorrectagent` - Agent in the payment workflow is incorrect
    # * `Incorrectcurrency` - Currency of the transaction is incorrect
    # * `Requestedbycustomer` - Cancellation/amendment requested by the debtor
    # * `Requestedbyinitiatingparty` - Cancellation/amendment requested by the creditor
    # * `Requestedbyinitiatingpartyandcustomer` - Cancellation/amendment requested by the creditor and the debtor
    # * `Mandatecancelledduetoearlysettlement` - Mandate cancellation following early reimbursement of the debit by the debtor
    # * `Mandateexpired` - Mandate cancellation following validity expiration
    # * `Mandatecancelledduetofraud` - Mandate cancellation due to suspected fraud
    # * `Mandateinitiationcancelled` - Mandate cancellation following mandate initiation cancellation
    # * `Mandateamendmentcancelled` - Mandate cancellation following mandate amendment cancellation
    # * `Notspecifiedreasoncustomergenerated` - Reason has not been specified by end customer
    # * `Notspecifiedreasonagentgenerated` - Reason has not been specified by agent.
    # * `Narrative` - Reason is provided as narrative information in the additional reason information.
    # * `Bankidentifierincorrect` - Bank Identifier code specified in the message has an incorrect format (formerly IncorrectFormatForRoutingCode).
    # * `Notuniquetransactionreference` - Transaction reference is not unique within the message.
    # * `Missingdebtoraccountoridentification` - Specification of the debtor’s account or unique identification needed for reasons of regulatory requirements is insufficient or missing
    # * `Missingdebtornameoraddress` - Specification of the debtor’s name and/or address needed for regulatory requirements is insufficient or missing.
    # * `Missingcreditornameoraddress` - Specification of the creditor’s name and/or address needed for regulatory requirements is insufficient or missing.
    # * `Regulatoryreason` - Regulatory Reason
    # * `Specificserviceofferedbydebtoragent` - Due to specific service offered by the Debtor Agent
    # * `Creditornotonwhitelistofdebtor` - Whitelisting service offered by the Debtor Agent; Debtor has not included the Creditor on its “Whitelist” (yet). In the Whitelist the Debtor may list all allowed Creditors to debit Debtor bank account.
    # * `Creditoronblacklistofdebtor` - Blacklisting service offered by the Debtor Agent; Debtor included the Creditor on his “Blacklist”. In the Blacklist the Debtor may list all Creditors not allowed to debit Debtor bank account.
    # * `Maximumnumberofdirectdebittransactionsexceeded` - Due to Maximum allowed Direct Debit Transactions per period service offered by the Debtor Agent.
    # * `Maximumdirectdebittransactionamountexceeded` - Due to Maximum allowed Direct Debit Transaction amount service offered by the Debtor Agent.
    mandatereasonvalues DirectDebitMandateReason?;
};

public type MandateRegistrationOk record {|
    *http:Ok;
    MandateRegistration body;
|};
