import financial.bian.attribute.groups.common as common;

import ballerina/http;

# Indicates success or failure or required increased authentication level to be acquired for authorization
public type TransactionAuthorization record {
    # TransactionAuthorization
    string TransactionAuthorization?;
};

# To test or assess an entity, possibly against some formal qualification or certification requirement within Transaction Authorization. 
public type InteractiveTransactionAssessment record {
    # Reference to the customer requesting the transaction
    common:Involvedparty CustomerReference?;
    # The servicing resource for assisted customer exchanges
    common:Employee EmployeeReference?;
    # The type of product involved
    common:Product ProductReference?;
    # Reference to the specific product accessed by the proposed transaction
    common:ProductAgreement ProductInstanceReference?;
    # >
    # * `FinancialTransaction` - 
    # * `BusinessTransaction` - 
    # * `BankingTransaction` - 
    # * `AccountingTransaction` - 
    # * `BookingTransaction` - 
    # * `AllocationTransaction` - 
    # * `DeliveryTransaction` - 
    # * `ProductionTransaction` - 
    common:Transactiontypevalues ProposedTransactionType?;
    # Details key values in the transaction (e.g. amount for a payment, dates for reporting, counterparties)
    common:Amount ProposedTransactionValue?;
    # Reference to the contact record for the active contact where the transaction is sourced
    common:CustomerContact CustomerContactRecordReference?;
    # Reference to the contact record for the active contact where the transaction is sourced
    common:CustomerContact CustomerContactRecord?;
    # Reference to the customer requesting the transaction
    common:Involvedparty CustomerContactRecordCustomerReference?;
    # CustomerContactRecordContactDevice
    common:Device CustomerContactRecordContactDevice?;
    # The contact authentication level is determined by the authentication function and can be updated during the contact
    string CustomerContactRecordAuthenticationStatus\(asobtainedbySD\-ContactHandler\)?;
    # CustomerContactRecordRoutingSelectionStatus
    common:Status CustomerContactRecordRoutingSelectionStatus?;
    # The requested service from a menu option can be indicated by the customer when initiating or during contact
    string CustomerContactRecordMenuSelection?;
    # The customer may provide details of servicing resource request when initiating or during contact
    common:Instruction CustomerContactRecordServicingRequest?;
    # Contact Handler can reference recent servicing activity for routing, security and servicing purposes (obtained from Service Domain Channel Activity History)
    string CustomerContactRecordServicingEventHistory?;
    # Reference to the servicing position - can be where an inbound contact is routed, or the source of an outbound contact request
    common:Position CustomerContactRecordServicingPositionReference?;
    # Reference to the servicing resource - can be to handle an inbound contact or the source of an outbound contact request
    common:ServicingResource CustomerContactRecordServicingResourceReference?;
    # Records the actions performed during contact, including all dialogue sessions
    common:CustomerEventLog CustomerContactRecordActivityRecord?;
    # Reference to any contact session dialogue records created during the contact - there can be several
    common:Session CustomerSessionDialogueReference?;
    # Reference to any contact session dialogue records created during the contact - there can be several
    common:Session CustomerSessionDialogueRecord?;
    # The general type of customer exchange (e.g. verified customer, anonymous contact, topic - used to structure/script dialogue)
    string SessionDialogueType?;
    # Reference to any contact session dialogue records created during the contact - there can be several
    common:Session SessionDialogueScript?;
    # Reference to a dialogue log that is built up
    common:SessionDialogueLog SessionDialogueLogReference?;
    # Reference to a dialogue log that is built up
    common:SessionDialogueLog SessionDialogueLog?;
    # Reference to any contact session dialogue records created during the contact - there can be several
    common:Session SessionDialogueSessionMechanism?;
    # The date when the identifier became valid.
    common:Datetime SessionDialogueRecordSessionStartEndTime?;
    # The outcome of the dialogue (e.g. customer satisfied, on-ward routing, hang-up)
    string SessionDialogueResult?;
    # The time the session was active
    common:Duration CustomerContactRecordDuration?;
    # Description of all actions performed during the contact, including all sessions
    string CustomerContactActivityRecord?;
    # Reference to the contact record for the active contact where the transaction is sourced
    common:CustomerContact CustomerContactResult?;
    # Reference to a channel activity report extracted for the customer
    common:Report ChannelActivityHistoryReportReference?;
    # Period of time during which the status is valid.
    common:Datetimeperiod ChannelActivityHistoryReportFromto?;
    # Reference to a channel activity report extracted for the customer
    common:Report ChannelActivityHistoryReport?;
    # In case of failure, the guidance explains reason and details if additional information can be considered
    common:RuleSet TransactionAuthorizationGuidance?;
    # Indicates success or failure or required increased authentication level to be acquired for authorization
    TransactionAuthorization TransactionAuthorizationResult?;
};

public type InteractiveTransactionAssessmentOk record {|
    *http:Ok;
    # body
    InteractiveTransactionAssessment body;
|};
