import ballerinax/financial.bian.attribute.groups.common as common_attributes;

public function constructErrorResponse(common_attributes:HTTPErrorBadRequest|common_attributes:HTTPErrorUnauthorized|common_attributes:HTTPErrorForbidden|
common_attributes:HTTPErrorNotFound|common_attributes:HTTPErrorTooManyRequests|common_attributes:HTTPErrorInternalServerError errorResponse) returns common_attributes:HTTPError {

    if (errorResponse is common_attributes:HTTPErrorBadRequest) {
        string errorStatus = errorResponse?.body?.status ?: "";
        string errorMsg = errorResponse?.body?.message ?: "";
        return constructBadRequestError(errorStatus, errorMsg);
    }

    return <common_attributes:HTTPError>{};
}

public isolated function constructInternalServerError(string status, string message) returns common_attributes:HTTPErrorInternalServerError {
    common_attributes:HTTPError httpError = {
        status_code : "500",
        status: status,
        message : message
    };
    common_attributes:HTTPErrorInternalServerError errorResponse = {
        body : httpError
    };
    return errorResponse;
}

public function constructBadRequestError(string status, string message) returns common_attributes:HTTPError {
    common_attributes:HTTPError httpError = {
        status_code : "400",
        status: status,
        message : message
    };
    return httpError;
}