import financial.bian.attribute.groups.common as common;

import ballerina/http;

public type InitiateCurrencyExchangeTransactionResponseOk record {|
    *http:Ok;
    InitiateCurrencyExchangeTransactionResponse body;
|};

# Output: InCR Instantiate a new Currency Exchange Transaction
# Response containing details of the newly created currency exchange transaction
public type InitiateCurrencyExchangeTransactionResponse record {
    # The currency exchange transaction details with status and parameters
    ControlCurrencyExchangeTransactionResponse_CurrencyExchangeTransaction CurrencyExchangeTransaction?;
};

# Output: EcCR Accept, verify, etc. aspects of Currency Exchange Transaction processing
# Response containing exchange verification details
public type ExchangeCurrencyExchangeTransactionResponse record {
    # The verified currency exchange transaction details with updated status
    ControlCurrencyExchangeTransactionResponse_CurrencyExchangeTransaction CurrencyExchangeTransaction?;
};

# Input: CoCR Control the processing of Currency Exchange Transaction
# Request to control currency exchange transaction processing
public type ControlCurrencyExchangeTransactionRequest record {
    # Currency exchange transaction control parameters including type and options
    ControlCurrencyExchangeTransactionRequest_CurrencyExchangeTransaction CurrencyExchangeTransaction?;
};

# Output: UpCR Update details relating to Currency Exchange Transaction
public type UpdateCurrencyExchangeTransactionResponse record {
    # The updated currency exchange transaction details
    ControlCurrencyExchangeTransactionResponse_CurrencyExchangeTransaction CurrencyExchangeTransaction?;
};

# Output: ReCR Retrieve details about any aspect of Currency Exchange Transaction
public type RetrieveCurrencyExchangeTransactionResponse record {
    # The retrieved currency exchange transaction details
    ControlCurrencyExchangeTransactionRequest_CurrencyExchangeTransaction CurrencyExchangeTransaction?;
};

public type ControlCurrencyExchangeTransactionRequest_CurrencyExchangeTransaction record {
    # A Classification value that distinguishes between business service transaction within Currency Exchange Transaction ||
    # |
    common:featuretypevalues CurrencyExchangeTransactionParameterType?;
    # A selected optional business service as subject matter of Currency Exchange Transaction ||
    # |
    common:feature CurrencyExchangeTransactionSelectedOption?;
    # The status of Currency Exchange Transaction Status |Status  (https://www.iso20022.org/standardsrepository/type/Status)|Standard|ISO20022 BM ()
    common:status CurrencyExchangeTransactionStatus?;
    # A Classification value that specifies type of transaction for this  Currency Exchange Transaction ||
    # |
    common:Transactiontypevalues CurrencyExchangeTransactionType?;
    # A Classification value that specifies type of transaction for this  Currency Exchange Transaction ||
    # |
    common:Transactiontypevalues CurrencyExchangeTransactionTransactionType?;
};

# Input: EcCR Accept, verify, etc. aspects of Currency Exchange Transaction processing
public type ExchangeCurrencyExchangeTransactionRequest record {
    # Currency exchange transaction details for verification
    ControlCurrencyExchangeTransactionRequest_CurrencyExchangeTransaction CurrencyExchangeTransaction?;
};

# Input: RqCR Request manual intervention or a decision with respect to Currency Exchange Transaction
public type RequestCurrencyExchangeTransactionRequest record {
    # Currency exchange transaction details requiring manual intervention
    ControlCurrencyExchangeTransactionRequest_CurrencyExchangeTransaction CurrencyExchangeTransaction?;
};

# Input: UpCR Update details relating to Currency Exchange Transaction
public type UpdateCurrencyExchangeTransactionRequest record {
    # Currency exchange transaction details to be updated
    ControlCurrencyExchangeTransactionRequest_CurrencyExchangeTransaction CurrencyExchangeTransaction?;
};

public type ControlCurrencyExchangeTransactionResponse_CurrencyExchangeTransaction record {
    # A Classification value that distinguishes between business service transaction within Currency Exchange Transaction ||
    # |
    common:featuretypevalues CurrencyExchangeTransactionParameterType?;
    # A selected optional business service as subject matter of Currency Exchange Transaction ||
    # |
    common:feature CurrencyExchangeTransactionSelectedOption?;
    # The status of Currency Exchange Transaction Status |Status  (https://www.iso20022.org/standardsrepository/type/Status)|Standard|ISO20022 BM ()
    common:status CurrencyExchangeTransactionStatus?;
};

# Output: CoCR Control the processing of Currency Exchange Transaction
public type ControlCurrencyExchangeTransactionResponse record {
    # The controlled currency exchange transaction response details
    ControlCurrencyExchangeTransactionResponse_CurrencyExchangeTransaction CurrencyExchangeTransaction?;
};

# Input: InCR Instantiate a new Currency Exchange Transaction
public type InitiateCurrencyExchangeTransactionRequest record {
    # Currency exchange transaction initiation details
    ControlCurrencyExchangeTransactionRequest_CurrencyExchangeTransaction CurrencyExchangeTransaction?;
};

# Input: ExCR Execute an available automated action for Currency Exchange Transaction
public type ExecuteCurrencyExchangeTransactionRequest record {
    # Currency exchange transaction execution details
    ControlCurrencyExchangeTransactionRequest_CurrencyExchangeTransaction CurrencyExchangeTransaction?;
};

# Output: RqCR Request manual intervention or a decision with respect to Currency Exchange Transaction
public type RequestCurrencyExchangeTransactionResponse record {
    # The response for the manual intervention request
    ControlCurrencyExchangeTransactionResponse_CurrencyExchangeTransaction CurrencyExchangeTransaction?;
};

# Output: ExCR Execute an available automated action for Currency Exchange Transaction
public type ExecuteCurrencyExchangeTransactionResponse record {
    # The execution result for the currency exchange transaction
    ControlCurrencyExchangeTransactionResponse_CurrencyExchangeTransaction CurrencyExchangeTransaction?;
};
