import financial.bian.attribute.groups.common as common;

import ballerina/http;

# Analyze the performance or behavior of some on-going activity or entity  within Case Root Cause Analysis. 
# Examples: Provide behavioral insights and analysis into customer behavior and analyze financial market activity in order to identify opportunities, define pricing and evaluate risks.
#
# Analyze the performance or behavior of some on-going activity or entity. Examples: Provide behavioral insights and analysis into customer behavior and analyze financial market activity in order to identify opportunities, define pricing and evaluate risks.
public type CustomerCaseRootCauseAnalysis record {
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
    common:Featuretypevalues CustomerCaseRootCauseAnalysisParameterType?;
    # A characteristic of service which refers 1) mainly to the function or condition of service. 2) to non-functional features like quality and security
    common:Feature CustomerCaseRootCauseAnalysisSelectedOption?;
    # Request to perform Customer Case Root Cause Analysis
    common:Instruction CustomerCaseRootCauseAnalysisRequest?;
    # The schedule and timing of the analysis performed using the algorithm
    common:Schedule CustomerCaseRootCauseAnalysisSchedule?;
    # Status of the customer case root cause analysis
    common:Status CustomerCaseRootCauseAnalysisStatus?;
    # Usage log of the customer case root cause analysis
    common:Log CustomerCaseRootCauseAnalysisUsageLog?;
    # Reference to an entity that assigns and manages the identification.
    # tReference to the organization or agency that issued the identifier (e.g., DMV, Passport Office).
    common:Involvedparty CustomerCaseRootCauseAnalysisRequesterReference?;
};

public type ProductandServiceIssueAnalysisOk record {|
    *http:Ok;
    # body
    ProductandServiceIssueAnalysis body;
|};

public type OperationsandServicingIssueAnalysisOk record {|
    *http:Ok;
    # body
    OperationsandServicingIssueAnalysis body;
|};

# A collection of models/calculations/algoritms that can be applied to a subject or activity
#
# Examples: Average balance calculation, Propensity to buy
public type CreditandFraudRelatedIssueAnalysis record {
    # The required status/situation before the algorithm can be applied
    common:Condition Preconditions?;
    # The schedule and timing of the analysis performed using the algorithm
    common:Schedule AnalysisSchedule?;
    # The algorithm version employed in the analysis
    string VersionNumber?;
    # The Credit and Fraud Related Issue Analysis specific  Business Service
    common:BusinessService BusinessService?;
};

public type CreditandFraudRelatedIssueAnalysisOk record {|
    *http:Ok;
    # body
    CreditandFraudRelatedIssueAnalysis body;
|};

# A collection of models/calculations/algoritms that can be applied to a subject or activity
#
# Examples: Average balance calculation, Propensity to buy
public type OperationsandServicingIssueAnalysis record {
    # The required status/situation before the algorithm can be applied
    common:Condition Preconditions?;
    # The schedule and timing of the analysis performed using the algorithm
    common:Schedule AnalysisSchedule?;
    # The algorithm version employed in the analysis
    string VersionNumber?;
    # The Credit and Fraud Related Issue Analysis specific  Business Service
    common:BusinessService BusinessService?;
};

# A collection of models/calculations/algoritms that can be applied to a subject or activity
#
# Examples: Average balance calculation, Propensity to buy
public type ProductandServiceIssueAnalysis record {
    # The required status/situation before the algorithm can be applied
    common:Condition Preconditions?;
    # The schedule and timing of the analysis performed using the algorithm
    common:Schedule AnalysisSchedule?;
    # The algorithm version employed in the analysis
    string VersionNumber?;
    # The Credit and Fraud Related Issue Analysis specific  Business Service
    common:BusinessService BusinessService?;
};

public type CustomerCaseRootCauseAnalysisOk record {|
    *http:Ok;
    # body
    CustomerCaseRootCauseAnalysis body;
|};
