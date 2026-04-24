import financial.bian.attribute.groups.common as common;

import ballerina/http;

# The Syndicate Eligibility Clauses defines a particular clause or consideration that is applied to determine eligibility for Syndicate Eligibility Clauses
public type SyndicateEligibilityClauses record {
    # Reference to Syndicate Eligibility Clauses
    string SyndicateMembershipReference?;
    # Reference to Syndicate Eligibility Clauses
    string SyndicateEligibilityClausesReference?;
    # The type of Syndicate Eligibility Clauses
    string SyndicateEligibilityClausesType?;
    # The Syndicate Eligibility Clauses specific Business Service
    common:BusinessService BusinessService?;
    # Reference to an entity that assigns and manages the identification.
    # tReference to the organization or agency that issued the identifier (e.g., DMV, Passport Office).
    common:Involvedparty BusinessUnitorEmployeeReference?;
    # The completion status once Syndicate Eligibility Clauses has been governed by applying the Syndicate Eligibility Clauses clause
    common:Condition Postconditions?;
    # The completion status once Syndicate Eligibility Clauses has been governed by applying the Syndicate Eligibility Clauses clause
    common:Condition Preconditions?;
    # The timing and key actions/milestones involved in governing Syndicate Eligibility Clauses by applying the Syndicate Eligibility Clauses clause
    common:Schedule Schedule?;
};

public type SyndicateMembershipOk record {|
    *http:Ok;
    SyndicateMembership body;
|};

# Maintain a membership for some group or related collection of parties within Syndicate Management. 
public type SyndicateMembership record {
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
    common:Featuretypevalues SyndicateMembershipParameterType?;
    # A selected optional business service as subject matter of Syndicate Membership
    common:Service SyndicateMembershipSelectedOption?;
    # Request to enroll Syndicate Membership
    common:Instruction SyndicateMembershipRequest?;
    # Reference to  Syndicate Membership Plan
    common:Plan SyndicateMembershipPlan?;
    # Liability or duty to do something under the terms of Syndicate Membership
    SyndicateArrangement SyndicateMembershipObligation?;
    # Liability or duty to do something under the terms of Syndicate Membership
    SyndicateArrangement SyndicateMembershipEntitlement?;
    # An unique reference to an item or an occurrence of Syndicate Membership
    string SyndicateMembershipReference?;
};

# Liability or duty to do something under the terms of Syndicate Membership
public type SyndicateArrangement record {
    # An agreed commitment to perform actions that meet obligations under an agreement
    string SyndicateArrangement?;
};

# The Syndicate Eligibility Clauses defines a particular clause or consideration that is applied to determine eligibility for Syndicate Eligibility Clauses
public type SyndicateComplianceClauses record {
    # Reference to Syndicate Compliance Clauses
    string SyndicateMembershipReference?;
    # Reference to Syndicate Compliance Clauses
    string SyndicateComplianceClausesReference?;
    # The type of Syndicate Compliance Clauses
    string SyndicateComplianceClausesType?;
    # The Syndicate Eligibility Clauses specific Business Service
    common:BusinessService BusinessService?;
    # Reference to an entity that assigns and manages the identification.
    # tReference to the organization or agency that issued the identifier (e.g., DMV, Passport Office).
    common:Involvedparty BusinessUnitorEmployeeReference?;
    # The completion status once Syndicate Eligibility Clauses has been governed by applying the Syndicate Eligibility Clauses clause
    common:Condition Postconditions?;
    # The completion status once Syndicate Eligibility Clauses has been governed by applying the Syndicate Eligibility Clauses clause
    common:Condition Preconditions?;
    # The timing and key actions/milestones involved in governing Syndicate Eligibility Clauses by applying the Syndicate Eligibility Clauses clause
    common:Schedule Schedule?;
};

