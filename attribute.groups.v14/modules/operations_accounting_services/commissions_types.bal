import financial.bian.attribute.groups.common as common;

import ballerina/http;

# Execute a well-bounded financial transaction/task, typically involving largely automated/structured fulfillment processing  within Commissions. 
# Example: Execute a payment transaction.
public type CommissionTransaction record {
    # CommissionTransactionParameterType
    common:Featuretypevalues CommissionTransactionParameterType?;
    # CommissionTransactionSelectedOption
    common:Feature CommissionTransactionSelectedOption?;
    # CommissionTransactionStatus
    common:Status CommissionTransactionStatus?;
    # CommissionTransactionType
    common:Transactiontypevalues CommissionTransactionType?;
    # CommissionTransactionTransactionType
    common:Transactiontypevalues CommissionTransactionTransactionType?;
    # CommissionTransactionTransaction
    common:Transaction CommissionTransactionTransaction?;
};

# The Check is a discrete action or task that is required in the execution of the Check
public type Calculation record {
    # Preconditions
    common:Condition Preconditions?;
    # Schedule
    common:Schedule Schedule?;
    # BusinessService
    common:BusinessService BusinessService?;
    # Postconditions
    common:Condition Postconditions?;
    # CommissionTransactionReference
    common:Transaction CommissionTransactionReference?;
    # CalculationReference
    common:Task CalculationReference?;
    # CalculationType
    string CalculationType?;
};

public type CommissionTransactionOk record {|
    *http:Ok;
    CommissionTransaction body;
|};

# The Check is a discrete action or task that is required in the execution of the Check
public type Confirmation record {
    # Preconditions
    common:Condition Preconditions?;
    # Schedule
    common:Schedule Schedule?;
    # BusinessService
    common:BusinessService BusinessService?;
    # Postconditions
    common:Condition Postconditions?;
    # CommissionTransactionReference
    common:Transaction CommissionTransactionReference?;
    # CheckReference
    common:Task CheckReference?;
    # CheckType
    string CheckType?;
};

public type ConfirmationOk record {|
    *http:Ok;
    Confirmation body;
|};
