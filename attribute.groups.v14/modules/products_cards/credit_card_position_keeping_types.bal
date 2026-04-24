import financial.bian.attribute.groups.common as common;

import ballerina/http;

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

# Reference to the business unit which is involved in Credit Card Position Log ||
# |
public type businessunit record {
    # The business function performed by the unit
    string BusinessFunction?;
    # The goal or objective of the business unit
    string Goal?;
};

# The position of Credit Card Position Log Position |Position  (https://www.iso20022.org/standardsrepository/type/Position)|Standard|ISO20022 BM ()
public type position record {
    # The value of the position
    common:value PositionValue?;
    # The quantity associated with the position
    string PositionQuantity?;
    # The date and time of the position
    common:datetime PositionDate?;
    # The monetary amount of the position
    common:amount PositionAmount?;
};

public type 'service record {
    common:name ServiceName?;
    common:text ServiceDescription?;
    common:Servicetypevalues ServiceType?;
    common:identifier ServiceIdentification?;
    common:status ServiceLifecycleStatus?;
    common:feature ServiceFeature?;
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
