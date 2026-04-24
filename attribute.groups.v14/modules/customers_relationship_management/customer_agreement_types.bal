import financial.bian.attribute.groups.common as common;

import ballerina/http;

public type CustomerAgreementOk record {|
    *http:Ok;
    # body
    common:CustomerAgreement body;
|};
