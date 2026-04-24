import financial.bian.attribute.groups.common as common;

import ballerina/http;

# The Capture is one of the specific types of events that is recorded in the Capture
public type Capture record {
    # The required status/situation before the event is captured
    common:Condition Preconditions?;
    # The timing and key actions/milestones involved in capturing the event
    common:Schedule Schedule?;
    # The Capture specific Business Service
    common:BusinessService BusinessService?;
    # The required status/situation before the event is captured
    common:Condition Postconditions?;
    # Reference to Capture
    common:Log RewardPointsLogReference?;
    # Reference to Capture
    common:Event CaptureReference?;
    # The type of Capture
    string CaptureType?;
};

# Maintain a log of transactions or activity, typically a financial account/journal or a log of activity to support behavioral analysis  within Reward Points Account. 
# Examples: Maintain a financial journal of transactions processed for a product or service and maintain a log of customer events and activity for subsequent analysis.
public type RewardPointsLog record {
    # >
    # * `FeeFeature` - This refers to the functionality in a system or platform that manages, calculates, or displays fees associated with specific transactions or services.
    # * `InterestFeature` - This feature calculates and tracks interest earnings or charges on accounts, loans, or investments over time.
    # * `WithdrawalFeature` - The withdraw feature typically refers to an option or functionality that allows users to retrieve or remove something from a system or platform.
    # * `DepositFeature` - This refers to a functionality that allows users to add funds to an account or system, often by transferring money from another source.
    # * `SweepFeature` - 
    # * `LienFeature` - 
    # * `PaymentFeature` - This refers to the functionality that facilitates or tracks the transfer of funds for a purchase or settlement of dues.
    # * `RepaymentFeature` - This feature facilitates or manages the process of paying back borrowed funds, such as loans, credit card balances, or advances.
    # * `LimitFeature` - This feature sets, monitors, or enforces restrictions on the maximum amount that can be accessed, spent, or transacted within a system.
    # * `OverdraftFeature` - This functionality allows users to withdraw more money than what is available in their account balance, often up to a predefined limit.
    # * `StatementFeature` - The statement feature refers to a functionality in banking, finance, or digital platforms that provides users with a detailed record of their transactions or activities over a specific period.
    # * `CurrencyExchangeFeature` - This feature enables users to convert funds from one currency to another at prevailing exchange rates, often within financial or payment platforms.
    # * `PriceFeature` - This feature involves displaying or managing the price of goods, services, or financial instruments within a platform.
    common:Featuretypevalues RewardPointsLogParameterType?;
    # A characteristic of service which refers 1) mainly to the function or condition of service. 2) to non-functional features like quality and security
    common:Feature RewardPointsLogSelectedOption?;
    # The type of Reward Points Log
    string RewardPointsLogType?;
    # The timing and key actions/milestones involved in capturing the event
    common:Schedule RewardPointsLogSchedule?;
    # Reference to Capture
    common:Log RewardPointsLogUsageLog?;
    # Reference to the log of (update) ativities/events of Reward Points Log
    string RewardPointsLogUpdateLog?;
    # Reference to Capture
    common:Log RewardPointsLogReference?;
    # Reference to the business unit which is involved in Reward Points Log
    common:BusinessUnit RewardPointsLogBusinessUnitReference?;
    # Reference to an entity that assigns and manages the identification.
    # tReference to the organization or agency that issued the identifier (e.g., DMV, Passport Office).
    common:Involvedparty RewardPointsLogCustomerReference?;
    # The configuration of Reward Points Log
    common:Arrangement RewardPointsLogServiceConfiguration?;
    # The position of Reward Points Log
    common:Position RewardPointsLogPosition?;
    # >
    # * `Balance/Cashflow` - 
    # * `CreditPosition` - 
    # * `CollateralPosition` - 
    # * `SecurityPosition` - 
    common:Positiontypevalues RewardPointsLogPositionType?;
    # The date when the identifier became valid.
    common:Datetime RewardPointsLogPositionLimitTime?;
};

public type RewardPointsLogOk record {|
    *http:Ok;
    RewardPointsLog body;
|};

# The Capture is one of the specific types of events that is recorded in the Capture
public type Expiration record {
    # The required status/situation before the event is captured
    common:Condition Preconditions?;
    # The timing and key actions/milestones involved in capturing the event
    common:Schedule Schedule?;
    # The Capture specific Business Service
    common:BusinessService BusinessService?;
    # The required status/situation before the event is captured
    common:Condition Postconditions?;
    # Reference to Capture
    common:Log RewardPointsLogReference?;
    # Reference to Capture
    common:Event ExpirationReference?;
    # The type of Expiration
    string ExpirationType?;
};

public type CaptureOk record {|
    *http:Ok;
    Capture body;
|};

public type ExpirationOk record {|
    *http:Ok;
    Expiration body;
|};
