import ballerina/http;

# Status Attributes
public type HTTPError record {
    # HTTP status code
    string status_code?;
    # HTTP status description
    string status?;
    # Error message
    string message?;
};

public type HTTPErrorBadRequest record {|
    *http:BadRequest;
    HTTPError body;
|};

public type HTTPErrorForbidden record {|
    *http:Forbidden;
    HTTPError body;
|};

public type HTTPErrorInternalServerError record {|
    *http:InternalServerError;
    HTTPError body;
|};

public type HTTPErrorNotFound record {|
    *http:NotFound;
    HTTPError body;
|};

public type HTTPErrorTooManyRequests record {|
    *http:TooManyRequests;
    HTTPError body;
|};

public type HTTPErrorUnauthorized record {|
    *http:Unauthorized;
    HTTPError body;
|};
