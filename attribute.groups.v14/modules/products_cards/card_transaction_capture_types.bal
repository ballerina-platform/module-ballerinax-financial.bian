import financial.bian.attribute.groups.common as common;

import ballerina/http;

public type InitiateCardFinancialCaptureTransactionResponseOk record {|
    *http:Ok;
    InitiateCardFinancialCaptureTransactionResponse body;
|};

# Output: ExCR Execute an available automated action for Credit Charge Card Financial Capture Transaction
public type ExecuteCardFinancialCaptureTransactionResponse record {
    # The card financial capture transaction details
    ControlCardFinancialCaptureTransactionResponse_CardFinancialCaptureTransaction CardFinancialCaptureTransaction?;
};

# Input: EcCR Accept, verify, etc. aspects of Credit Charge Card Financial Capture Transaction processing
public type ExchangeCardFinancialCaptureTransactionRequest record {
    # The card financial capture transaction details
    ControlCardFinancialCaptureTransactionRequest_CardFinancialCaptureTransaction CardFinancialCaptureTransaction?;
};

# Input: ExCR Execute an available automated action for Credit Charge Card Financial Capture Transaction
public type ExecuteCardFinancialCaptureTransactionRequest record {
    # The card financial capture transaction details
    ControlCardFinancialCaptureTransactionRequest_CardFinancialCaptureTransaction CardFinancialCaptureTransaction?;
};

# Output: CoCR Control the processing of Credit Charge Card Financial Capture Transaction
public type ControlCardFinancialCaptureTransactionResponse record {
    # The card financial capture transaction details
    ControlCardFinancialCaptureTransactionResponse_CardFinancialCaptureTransaction CardFinancialCaptureTransaction?;
};

# Input: UpCR Update details relating to Credit Charge Card Financial Capture Transaction
public type UpdateCardFinancialCaptureTransactionRequest record {
    # The card financial capture transaction details
    ControlCardFinancialCaptureTransactionRequest_CardFinancialCaptureTransaction CardFinancialCaptureTransaction?;
};

# The card financial capture transaction request details
public type ControlCardFinancialCaptureTransactionRequest_CardFinancialCaptureTransaction record {
    # A Classification value that distinguishes between business service transaction within Credit/Charge Card Financial Capture Transaction ||
    # |
    common:featuretypevalues CardFinancialCaptureTransactionParameterType?;
    # A selected optional business service as subject matter of Credit/Charge Card Financial Capture Transaction ||
    # |
    common:feature CardFinancialCaptureTransactionSelectedOption?;
    # The status of Credit/Charge Card Financial Capture Transaction Status |Status  (https://www.iso20022.org/standardsrepository/type/Status)|Standard|ISO20022 BM ()
    common:status CardFinancialCaptureTransactionStatus?;
    # A Classification value that specifies type of transaction for this  Credit/Charge Card Financial Capture Transaction ||
    # |
    common:Transactiontypevalues CardFinancialCaptureTransactionType?;
    # A Classification value that specifies type of transaction for this  Credit/Charge Card Financial Capture Transaction ||
    # |
    common:Transactiontypevalues CardFinancialCaptureTransactionTransactionType?;
};

# Output: InCR Instantiate a new Credit Charge Card Financial Capture Transaction
public type InitiateCardFinancialCaptureTransactionResponse record {
    # The card financial capture transaction details
    ControlCardFinancialCaptureTransactionResponse_CardFinancialCaptureTransaction CardFinancialCaptureTransaction?;
};

# Output: ReCR Retrieve details about any aspect of Credit Charge Card Financial Capture Transaction
public type RetrieveCardFinancialCaptureTransactionResponse record {
    # The card financial capture transaction details
    ControlCardFinancialCaptureTransactionRequest_CardFinancialCaptureTransaction CardFinancialCaptureTransaction?;
};

public type ControlCardFinancialCaptureTransactionResponse_CardFinancialCaptureTransaction record {
    # A Classification value that distinguishes between business service transaction within Credit/Charge Card Financial Capture Transaction ||
    # |
    common:featuretypevalues CardFinancialCaptureTransactionParameterType?;
    # A selected optional business service as subject matter of Credit/Charge Card Financial Capture Transaction ||
    # |
    common:feature CardFinancialCaptureTransactionSelectedOption?;
    # The status of Credit/Charge Card Financial Capture Transaction Status |Status  (https://www.iso20022.org/standardsrepository/type/Status)|Standard|ISO20022 BM ()
    common:status CardFinancialCaptureTransactionStatus?;
};

# Input: CoCR Control the processing of Credit Charge Card Financial Capture Transaction
public type ControlCardFinancialCaptureTransactionRequest record {
    # The card financial capture transaction details
    ControlCardFinancialCaptureTransactionRequest_CardFinancialCaptureTransaction CardFinancialCaptureTransaction?;
};

# Output: UpCR Update details relating to Credit Charge Card Financial Capture Transaction
public type UpdateCardFinancialCaptureTransactionResponse record {
    # The card financial capture transaction details
    ControlCardFinancialCaptureTransactionResponse_CardFinancialCaptureTransaction CardFinancialCaptureTransaction?;
};

# Output: EcCR Accept, verify, etc. aspects of Credit Charge Card Financial Capture Transaction processing
public type ExchangeCardFinancialCaptureTransactionResponse record {
    # The card financial capture transaction details
    ControlCardFinancialCaptureTransactionResponse_CardFinancialCaptureTransaction CardFinancialCaptureTransaction?;
};

# Input: InCR Instantiate a new Credit Charge Card Financial Capture Transaction
public type InitiateCardFinancialCaptureTransactionRequest record {
    # The card financial capture transaction details
    ControlCardFinancialCaptureTransactionRequest_CardFinancialCaptureTransaction CardFinancialCaptureTransaction?;
};

# Output: RqCR Request manual intervention or a decision with respect to Credit Charge Card Financial Capture Transaction
public type RequestCardFinancialCaptureTransactionResponse record {
    # The card financial capture transaction details
    ControlCardFinancialCaptureTransactionResponse_CardFinancialCaptureTransaction CardFinancialCaptureTransaction?;
};

# Input: RqCR Request manual intervention or a decision with respect to Credit Charge Card Financial Capture Transaction
public type RequestCardFinancialCaptureTransactionRequest record {
    # The card financial capture transaction details
    ControlCardFinancialCaptureTransactionRequest_CardFinancialCaptureTransaction CardFinancialCaptureTransaction?;
};
