import financial.bian.attribute.groups.common as common;

import ballerina/http;

public type ChannelActivityLogOk record {|
    *http:Ok;
    # body
    ChannelActivityLog body;
|};

# Maintain a log of transactions or activity, typically a financial account/journal or a log of activity to support behavioral analysis within Channel Activity History. 
public type ChannelActivityLog record {
    # CustomerReference
    common:Involvedparty CustomerReference?;
    # Date
    common:Datetime Date?;
};
