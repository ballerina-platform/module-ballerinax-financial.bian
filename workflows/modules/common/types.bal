import ballerina/http;

public type HTTPErrorBadRequest record {|
    *http:BadRequest;
    HTTPError body;
|};

public type HTTPErrorInternalServerError record {|
    *http:InternalServerError;
    HTTPError body;
|};

# Status Attributes
public type HTTPError record {
    # HTTP status code
    int statusCode?;
    # HTTP status text
    string status?;
    # Error message
    string message?;
};