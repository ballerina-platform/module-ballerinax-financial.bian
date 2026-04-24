import financial.bian.attribute.groups.common as common;

import ballerina/http;

# Create and maintain a design for a procedure, product/service model or other such entity  within Credit Risk Models. 
# Example: Create and maintain product designs and analytical models.
public type CreditRiskModelSpecification record {
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
    common:Featuretypevalues CreditRiskModelSpecificationParameterType?;
    # A characteristic of service which refers 1) mainly to the function or condition of service. 2) to non-functional features like quality and security
    common:Feature CreditRiskModelSpecificationSelectedOption?;
    # Documentation of Credit Risk Model Specification
    string CreditRiskModelSpecificationDescription?;
    # The version of Credit Risk Model Specification
    string CreditRiskModelSpecificationVersion?;
    # Status of the credit risk model specification
    common:Status CreditRiskModelSpecificationStatus?;
    # Reference to the log of (usage) ativities/events of Credit Risk Model Specification
    common:Log CreditRiskModelSpecificationUsageLog?;
    # Information about reactions to a design which is used as a basis for improvement for the Credit Risk Model Specification.
    string CreditRiskModelSpecificationFeedback?;
    # Reference to an entity that assigns and manages the identification.
    # tReference to the organization or agency that issued the identifier (e.g., DMV, Passport Office).
    common:Involvedparty CreditRiskModelSpecificationServiceProviderReference?;
};

public type CreditRiskModelSpecificationOk record {|
    *http:Ok;
    # body
    CreditRiskModelSpecification body;
|};
