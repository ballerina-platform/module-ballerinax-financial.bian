import financial.bian.attribute.groups.common as common;

import ballerina/http;

# ||
# |
public type repurchaseagreement record {
    # >
    # * `SpecificCollateral` - Repurchase agreement where a single, pre-defined, financial instrument is sold and repurchased. (IS020022)
    # * `GeneralCollateral` - Repurchase agreement where the agreement allows for the sale and repurchase of any of a selection of assets from a pool of eligible assets. (ISO20022)
    repurchaseagreementtypevalues RepurchaseAgreementType?;
};

# An unique reference to an item or an occurrence of Repo Transaction ||
# |
public type repotransaction record {
    # A Transaction that is the result of fulfillment of Repo Arrangement
    string RepoTransaction?;
};

public type RepoTransactionOk record {|
    *http:Ok;
    RepoTransaction body;
|};

# A Classification value that specifies type of transaction for this  Repo Transaction ||
# |
public type repurchasetypevalues "Swap"|"Repurchasecall"|"Pairoff"|"Reporate"|"Rollover"|"Topup"|"Withdrawal"|"Principalexposureadjustment";

# The Repo Transaction Security Transfer Task is a discrete action or task that is required in the execution of the Repo Transaction Security Transfer Task
public type RepoTransactionInitiation record {
    # The required status/situation prior to the execution of the task
    common:condition Preconditions?;
    # The timing and key actions/milestones involved in completing the transaction task
    common:schedule Schedule?;
    # The Repo Transaction Security Transfer Task specific Business Service
    common:businessservice BusinessService?;
    # The required status/situation prior to the execution of the task
    common:condition Postconditions?;
    # Reference to Repo Transaction Security Transfer Task
    'transaction RepoTransactionReference?;
    # Reference to Repo Transaction Security Transfer Task
    common:task RepoTransactionInitiationTaskReference?;
    # The particular date and time point in the progression of time
    common:text RepoTransactionInitiationTaskType?;
};

# The Repo Transaction Security Transfer Task is a discrete action or task that is required in the execution of the Repo Transaction Security Transfer Task
public type RepoTransactionSecurityTransfer record {
    # The required status/situation prior to the execution of the task
    common:condition Preconditions?;
    # The timing and key actions/milestones involved in completing the transaction task
    common:schedule Schedule?;
    # The Repo Transaction Security Transfer Task specific Business Service
    common:businessservice BusinessService?;
    # The required status/situation prior to the execution of the task
    common:condition Postconditions?;
    # Reference to Repo Transaction Security Transfer Task
    'transaction RepoTransactionReference?;
    # Reference to Repo Transaction Security Transfer Task
    common:task RepoTransactionSecurityTransferTaskReference?;
    # The particular date and time point in the progression of time
    common:text RepoTransactionSecurityTransferTaskType?;
};

public type RepoTransactionInitiationOk record {|
    *http:Ok;
    RepoTransactionInitiation body;
|};

public type 'service record {
    common:name ServiceName?;
    common:text ServiceDescription?;
    common:Servicetypevalues ServiceType?;
    common:identifier ServiceIdentification?;
    common:status ServiceLifecycleStatus?;
    common:feature ServiceFeature?;
};

# Execute a well-bounded financial transaction/task, typically involving largely automated/structured fulfillment processing within Stock Lending and Repos. 
public type RepoTransaction record {
    # A Classification value that distinguishes between business service transaction within Repo Transaction ||
    # |
    common:featuretypevalues RepoTransactionParameterType?;
    # A selected optional business service as subject matter of Repo Transaction ||
    # |
    'service RepoTransactionSelectedOption?;
    # The status of Repo Transaction ||
    # |
    common:Transactionstatus RepoTransactionStatus?;
    # A Classification value that specifies type of transaction for this  Repo Transaction ||
    # |
    repurchasetypevalues RepoTransactionType?;
    # An unique reference to an item or an occurrence of Repo Transaction ||
    # |
    repotransaction RepoTransactionReference?;
    # ||
    # |
    repurchaseagreement RepurchaseAgreementReference?;
    # ||
    # |
    common:involvedparty RepurchaseAgreementInvolvedPartyReference?;
    # ||
    # |
    repurchaseagreementinvolvementtypevalues RepurchaseAgreementInvolvementType?;
    # ||
    # |
    repoarrangement RepurchaseArrangementReference?;
};

# The Repo Transaction Security Transfer Task is a discrete action or task that is required in the execution of the Repo Transaction Security Transfer Task
public type RepoTransactionCashTransfer record {
    # The required status/situation prior to the execution of the task
    common:condition Preconditions?;
    # The timing and key actions/milestones involved in completing the transaction task
    common:schedule Schedule?;
    # The Repo Transaction Security Transfer Task specific Business Service
    common:businessservice BusinessService?;
    # The required status/situation prior to the execution of the task
    common:condition Postconditions?;
    # Reference to Repo Transaction Security Transfer Task
    'transaction RepoTransactionReference?;
    # Reference to Repo Transaction Security Transfer Task
    common:task RepoTransactionCashTransferTaskReference?;
    # The particular date and time point in the progression of time
    common:text RepoTransactionCashTransferTaskType?;
};

public type RepoTransactionCashTransferOk record {|
    *http:Ok;
    RepoTransactionCashTransfer body;
|};

# ||
# |
public type repoarrangement record {
    # The actual interest rate used for the payment of the interest for the specified interest period. (ISO20022)
    common:rate RepurchaseRate?;
    # The date and time when the repo arrangement terminates.
    common:datetime TerminationDateTime?;
    # Total fee charged 
    common:amount RepurchaseAmount?;
    # A Classification value that specifies type of transaction for this  Repo Transaction ||
    # |
    repurchasetypevalues RepurchaseType?;
};

public type RepoTransactionSecurityTransferOk record {|
    *http:Ok;
    RepoTransactionSecurityTransfer body;
|};

# >
# * `SpecificCollateral` - Repurchase agreement where a single, pre-defined, financial instrument is sold and repurchased. (IS020022)
# * `GeneralCollateral` - Repurchase agreement where the agreement allows for the sale and repurchase of any of a selection of assets from a pool of eligible assets. (ISO20022)
public type repurchaseagreementtypevalues "SpecificCollateral"|"GeneralCollateral";

# ||
# |
public type repurchaseagreementinvolvementtypevalues "Investor/Lender"|"Borrower"|"Dealer"|"Tri-PartyAgent";
