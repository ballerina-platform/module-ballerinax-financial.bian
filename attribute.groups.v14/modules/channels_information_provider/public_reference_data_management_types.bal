import financial.bian.attribute.groups.common as common;

import ballerina/http;

public type GlobalStandardSpecificationOk record {|
    *http:Ok;
    # body
    GlobalStandardSpecification body;
|};

public type GlobalReferenceDataOk record {|
    *http:Ok;
    # body
    GlobalReferenceData body;
|};

# The main design elements/views making up the overall specification
#
# Examples: Business Requirements
public type GlobalReferenceData record {
    # The required status/situation before the specification aspect can be defined
    string Preconditions?;
    # The schedule and timing of the definition and update/revisions of the specification aspect
    string SpecificationSchedule?;
    # The current version, and version history as appropriate for the specification aspect
    string VersionNumber?;
    # The Global Reference Data specific  Business Service
    common:BusinessService BusinessService?;
};

# Create and maintain a design for a procedure, product/service model or other such entity  within Public Reference Data Management. 
# Example: Create and maintain product designs and analytical models.
public type GlobalStandardSpecification record {
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
    common:Featuretypevalues GlobalStandardSpecificationParameterType?;
    # A characteristic of service which refers 1) mainly to the function or condition of service. 2) to non-functional features like quality and security
    common:Feature GlobalStandardSpecificationSelectedOption?;
    # Documentation of Global Standard Specification
    string GlobalStandardSpecificationDescription?;
    # The version of Global Standard Specification
    string GlobalStandardSpecificationVersion?;
    # A characteristic of service which refers to the lifecycle of service (e.g., initiated, active, de-active, etc.) 
    common:Status GlobalStandardSpecificationStatus?;
    # Reference to the log of (usage) ativities/events of Global Standard Specification
    common:Log GlobalStandardSpecificationUsageLog?;
    # Information about reactions to a design which is used as a basis for improvement for the Global Standard Specification.
    string GlobalStandardSpecificationFeedback?;
    # Reference to an entity that assigns and manages the identification.
    # tReference to the organization or agency that issued the identifier (e.g., DMV, Passport Office).
    common:Involvedparty GlobalStandardSpecificationServiceProviderReference?;
};
