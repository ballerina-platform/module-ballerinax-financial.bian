import financial.bian.attribute.groups.common as common;

import ballerina/http;

# A collection of information feeds/measures that can be used to track the status of one or more items/entitites
#
# Examples: Composite position, Customer alert
public type Rating record {
    # Defines the type of rating (e.g. credit rating)
    string CustomerRelationshipRatingType?;
    # The maintained rating value (historical values may be retained as appropriate)
    string CustomerRelationshipRating?;
    # Explanation/description for given rating value if necessary
    string CustomerRelationshipRatingNarrative?;
    # Indication when the rate value is updated and time until given value applies/is relevant as appropriate
    common:Datetime CustomerRelationshipRatingValidFromToDate?;
};

# The maintained alert value (historical values may be retained as appropriate)
public type CustomerRelationshipAlert record {
    # EventType
    string EventType?;
    # Indication when the rate value is updated and time until given value applies/is relevant as appropriate
    common:Datetime EventDateTime?;
    # EventDescription
    string EventDescription?;
    # EventSource
    string EventSource?;
    # EventLocation
    common:Location EventLocation?;
    # EventAction
    common:Action EventAction?;
    # The tracked status (e.g. under construction or repair, inhabited, vacant).
    common:Status EventStatus?;
    # EventValue
    string EventValue?;
    # Period of time during which the status is valid.
    common:Datetimeperiod EventValidityPeriod?;
    # EventIdentification
    common:Identifier EventIdentification?;
};

public type PartyStateOk record {|
    *http:Ok;
    # body
    PartyState body;
|};

# Monitor and define the status/rating of some entity within Customer Profile.
public type PartyState record {
    # Reference to a Party who plays a  specific role in the context of assigning a status.
    common:Involvedparty CustomerReference?;
};

# A collection of information feeds/measures that can be used to track the status of one or more items/entitites
#
# Examples: Composite position, Customer alert
public type Alert record {
    # Defines the type of alert (e.g. detected potential fraud)
    string CustomerRelationshipAlertType?;
    # The maintained alert value (historical values may be retained as appropriate)
    CustomerRelationshipAlert CustomerRelationshipAlert?;
    # Explanation/description for given alert value if necessary
    string CustomerRelationshipAlertNarrative?;
    # Indication when the rate value is updated and time until given value applies/is relevant as appropriate
    common:Datetime CustomerRelationshipAlertValidFromToDate?;
};

public type StatusOk record {|
    *http:Ok;
    # body
    common:Status body;
|};
