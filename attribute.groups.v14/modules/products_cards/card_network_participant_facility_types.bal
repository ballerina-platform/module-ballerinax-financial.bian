import financial.bian.attribute.groups.common as common;

import ballerina/http;

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
