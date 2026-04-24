import financial.bian.attribute.groups.common as common;

import ballerina/http;

# Operate equipment and/or a largely automated facility within Market Data Switch Operation. 
public type InformationFeedSwitchOperatingSession record {
    # This is the uploaded market information that is distributed over the switch - its content is updated dynamically during the operating session
    common:Service MarketInformationFeedServiceReference?;
    # Defines the range of internally published information services/pages
    common:Profile MarketInformationFeedServiceProfile?;
};

# The collection of operational serivces/functions offered by the operational facility
#
# Examples: messages, capture, routines
public type InternalPublication record {
    # This is the uploaded market information that is distributed over the switch - its content is updated dynamically during the operating session
    common:Service InternalInformationFeedServiceReference?;
    # Defines the range of internally published information services/pages
    common:Profile InternalInformationFeedServiceProfile?;
    # Reference to 'live' internal pages of information that is published
    string InternalInformationFeedServiceRecordReference?;
    # This is the uploaded market information that is distributed over the switch - its content is updated dynamically during the operating session
    common:Service InternalInformationFeedServiceRecord?;
};

public type InformationFeedSwitchOperatingSessionOk record {|
    *http:Ok;
    # body
    InformationFeedSwitchOperatingSession body;
|};

public type DistributionOk record {|
    *http:Ok;
    # body
    Distribution body;
|};

# The collection of operational serivces/functions offered by the operational facility
#
# Examples: messages, capture, routines
public type FeedUpload record {
    # Reference to packets of information/records provided, perhaps with real-time updates
    string MarketInformationFeedServiceRecordReference?;
    # This is the uploaded market information that is distributed over the switch - its content is updated dynamically during the operating session
    common:Service MarketInformationFeedServiceRecord?;
};

public type InternalPublicationOk record {|
    *http:Ok;
    # body
    InternalPublication body;
|};

# The collection of operational serivces/functions offered by the operational facility
#
# Examples: messages, capture, routines
public type Distribution record {
    # Reference to a user's switch service access rights
    string MarketDataSwitchUserAccessRightsRecordReference?;
    # The users are registered to access different services/information made available through the switch - it is used to control information distribution
    common:Arrangement MarketDataSwitchUserAccessRightsRecord?;
    # This tracks the switch service content that the user will receive for this session - reflecting their user access rights
    common:Session MarketDataSwitchServiceUserSessionRecord?;
};
