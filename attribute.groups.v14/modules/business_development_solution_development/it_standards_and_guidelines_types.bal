import financial.bian.attribute.groups.common as common;

import ballerina/http;

public type ProductionEnvironmentandSupportServicesOk record {|
    *http:Ok;
    # body
    ProductionEnvironmentandSupportServices body;
|};

public type ProductTestingandDeploymentMechanismsOk record {|
    *http:Ok;
    # body
    ProductTestingandDeploymentMechanisms body;
|};


public type ProductionPlatformsandInfrastructureOk record {|
    *http:Ok;
    # body
    ProductionPlatformsandInfrastructure body;
|};

# The main design elements/views making up the overall specification
#
# Examples: Business Requirements
public type ITPoliciesandGuidelines record {
    # The required status/situation before the specification aspect can be defined
    common:Condition Preconditions?;
    # The schedule and timing of the definition and update/revisions of the specification aspect
    common:Schedule SpecificationSchedule?;
    # The current version, and version history as appropriate for the specification aspect
    string VersionNumber?;
    # The IT Policies and Guidelines specific  Business Service
    common:BusinessService BusinessService?;
};

# The main design elements/views making up the overall specification
#
# Examples: Business Requirements
public type DevelopmentToolingandEnvironment record {
    # The required status/situation before the specification aspect can be defined
    common:Condition Preconditions?;
    # The schedule and timing of the definition and update/revisions of the specification aspect
    common:Schedule SpecificationSchedule?;
    # The current version, and version history as appropriate for the specification aspect
    string VersionNumber?;
    # The IT Policies and Guidelines specific  Business Service
    common:BusinessService BusinessService?;
};

# The main design elements/views making up the overall specification
#
# Examples: Business Requirements
public type ProductionEnvironmentandSupportServices record {
    # The required status/situation before the specification aspect can be defined
    common:Condition Preconditions?;
    # The schedule and timing of the definition and update/revisions of the specification aspect
    common:Schedule SpecificationSchedule?;
    # The current version, and version history as appropriate for the specification aspect
    string VersionNumber?;
    # The IT Policies and Guidelines specific  Business Service
    common:BusinessService BusinessService?;
};

public type DevelopmentToolingandEnvironmentOk record {|
    *http:Ok;
    # body
    DevelopmentToolingandEnvironment body;
|};

# The main design elements/views making up the overall specification
#
# Examples: Business Requirements
public type ProductionPlatformsandInfrastructure record {
    # The required status/situation before the specification aspect can be defined
    common:Condition Preconditions?;
    # The schedule and timing of the definition and update/revisions of the specification aspect
    common:Schedule SpecificationSchedule?;
    # The current version, and version history as appropriate for the specification aspect
    string VersionNumber?;
    # The IT Policies and Guidelines specific  Business Service
    common:BusinessService BusinessService?;
};

# Create and maintain a design for a procedure, product/service model or other such entity  within IT Standards & Guidelines. 
# Example: Create and maintain product designs and analytical models.
public type TechnologyStandardsSpecification record {
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
    common:Featuretypevalues TechnologyStandardsSpecificationParameterType?;
    # A characteristic of service which refers 1) mainly to the function or condition of service. 2) to non-functional features like quality and security
    common:Feature TechnologyStandardsSpecificationSelectedOption?;
    # Documentation of Technology Standards Specification
    string TechnologyStandardsSpecificationDescription?;
    # The version of Technology Standards Specification
    string TechnologyStandardsSpecificationVersion?;
    # Reference to the log of (usage) ativities/events of Technology Standards Specification
    common:Log TechnologyStandardsSpecificationUsageLog?;
    # Information about reactions to a design which is used as a basis for improvement for the Technology Standards Specification.
    string TechnologyStandardsSpecificationFeedback?;
    # The current status of the Technology Standards Specification
    common:Status TechnologyStandardsSpecificationStatus?;
    # Reference to an entity that assigns and manages the identification.
    # tReference to the organization or agency that issued the identifier (e.g., DMV, Passport Office).
    common:Involvedparty TechnologyStandardsSpecificationServiceProviderReference?;
};

public type ITPoliciesandGuidelinesOk record {|
    *http:Ok;
    # body
    ITPoliciesandGuidelines body;
|};

# The main design elements/views making up the overall specification
#
# Examples: Business Requirements
public type ProductTestingandDeploymentMechanisms record {
    # The required status/situation before the specification aspect can be defined
    common:Condition Preconditions?;
    # The schedule and timing of the definition and update/revisions of the specification aspect
    common:Schedule SpecificationSchedule?;
    # The current version, and version history as appropriate for the specification aspect
    string VersionNumber?;
    # The IT Policies and Guidelines specific  Business Service
    common:BusinessService BusinessService?;
};

public type TechnologyStandardsSpecificationOk record {|
    *http:Ok;
    # body
    TechnologyStandardsSpecification body;
|};
