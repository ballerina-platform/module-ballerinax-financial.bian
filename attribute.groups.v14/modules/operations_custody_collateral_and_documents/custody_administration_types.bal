import financial.bian.attribute.groups.common as common;

import ballerina/http;

public type Dividend record {
    # The required status/situation prior to the implementation of the feature
    common:Condition Preconditions?;
    # The timing and key actions/milestones involved in completing the fulfillment feature instance
    common:Schedule Schedule?;
    # The Dividendsand Interest specific Business Service
    common:BusinessService BusinessService?;
    # The required status/situation prior to the implementation of the feature
    common:Condition Postconditions?;
    # The identifier of Condition
    common:Identifier CustodyFacilityReference?;
    # The identifier of Condition
    common:Identifier DividendReference?;
    # The type of Dividendsand Interest
    string DividendType?;
};

public type SettlementOk record {|
    *http:Ok;
    Settlement body;
|};

public type CustodyFacility record {
    # A Classification value that distinguishes between arrangements according to the type of business services within Custody Arrangement
    string CustodyFacilityParameterType?;
    # A selected optional business service as subject matter of Custody Arrangement
    common:Arrangement CustodyFacilitySelectedOption?;
    # The type of Custody Arrangement
    string CustodyFacilityType?;
    common:FinancialFacility CustodyFacilityReference?;
    # The timing and key actions/milestones involved in completing the fulfillment feature instance
    common:Schedule CustodyFacilitySchedule?;
    common:Status CustodyFacilityStatus?;
    # The curreny which is arranged in Custody Arrangement
    common:Currencycode CustodyFacilityCurrency?;
    # Reference to the regulation which is defined in Custody Arrangement
    common:Regulation CustodyFacilityRegulationReference?;
    # >
    # * `Policy` - Rule that governs business execution.
    #
    # The set of basic principles and associated guidelines, formulated and enforced by the governing body of an organization, to direct and limit its actions in pursuit of long-term goals. (Business Dictionary)
    #
    # * `Regulation` - A rule used to carry out a law (FIBO)
    #
    # Business Dictionary: a rule (with or without the coercive power of law) employed in controlling, directing, or managing an activity, organization, or system. 
    #
    # The set of rules and legislation governing certain actions. 
    # https://financial-dictionary.thefreedictionary.com/Regulatory
    # * `Law` - A binding rule that the courts will enforce.
    # A system of rules and guidelines which are enforced through social institutions to govern behavior. (FIBO)
    #
    # * `Guideline` - A recommended practice (adapted from Business Dictionary)
    # A general rule, principle, or piece of advice.
    # * `Criterion` - A principle or standard by which something may be judged or decided.
    #
    # Read more: http://www.businessdictionary.com/definition/criterion.html
    # * `Standard` - A rule considered by an authority or by general consent as a basis of comparison
    common:Rulesettypevalues CustodyFacilityRegulationType?;
    # Reference to the jurisdiction that is assigned to Custody Arrangement in case of legal dispute.
    common:Jurisdiction CustodyFacilityJurisdiction?;
    common:Location CustodyFacilityBookingLocation?;
    # >
    # * `DebitAccount` - 
    # * `CreditAccount` - 
    # * `VostroAcount` - In correspondent banking, an account held by one bank on behalf of another bank (the customer bank); the customer bank regards this account as its nostro account. (ECB)
    # * `NostroAccount` - In correspondent banking, an account held by a customer bank on the books of another bank acting as a service provider. The other bank regards this account as a loro account. (ECB)
    # * `PaymentAccount` - 
    # * `SettlementAccount` - A specific purpose account used to post debit and credit entries as a result of the transaction. (ISO20022)
    #
    # Account which is used for settlement. (ISO20022)
    # * `SavingAccount` - 
    # * `CurrentAccount` - 
    # * `CashAccount` - 
    # * `LoanAccount` - 
    # * `IndividualAccount` - 
    # * `JointAccount` - 
    # * `LiquidationAccount` - 
    # * `ProvisionAccount` - 
    # * `PartnershipAccount` - 
    # * `InvestmentAccount` - 
    common:Accounttypevalues CustodyFacilityAccountType?;
    # Reference to the account which is linked to Custody Arrangement
    common:Account CustodyFacilityAccountReference?;
};

# Business information about applying interest (a pricing element expressed in a percentage)  to a principal amount.
public type RegulatorySubmission record {
    # The required status/situation prior to the implementation of the feature
    common:Condition Preconditions?;
    # The timing and key actions/milestones involved in completing the fulfillment feature instance
    common:Schedule Schedule?;
    # The Dividendsand Interest specific Business Service
    common:BusinessService BusinessService?;
    # The required status/situation prior to the implementation of the feature
    common:Condition Postconditions?;
    # The identifier of Condition
    common:Identifier CustodyFacilityReference?;
    # The identifier of Condition
    common:Identifier RegulatorySubmissionReference?;
    # The type of Securities Reporting
    string RegulatorySubmissionType?;
};

public type RegulatorySubmissionOk record {|
    *http:Ok;
    RegulatorySubmission body;
|};

public type Settlement record {
    # The required status/situation prior to the implementation of the feature
    common:Condition Preconditions?;
    # The timing and key actions/milestones involved in completing the fulfillment feature instance
    common:Schedule Schedule?;
    # The Dividendsand Interest specific Business Service
    common:BusinessService BusinessService?;
    # The required status/situation prior to the implementation of the feature
    common:Condition Postconditions?;
    # The identifier of Condition
    common:Identifier CustodyFacilityReference?;
    # The identifier of Condition
    common:Identifier SettlementReference?;
    # The type of Settlement
    string SettlementType?;
};

# Business information about applying interest (a pricing element expressed in a percentage)  to a principal amount.
public type SafeKeeping record {
    # The required status/situation prior to the implementation of the feature
    common:Condition Preconditions?;
    # The timing and key actions/milestones involved in completing the fulfillment feature instance
    common:Schedule Schedule?;
    # The Dividendsand Interest specific Business Service
    common:BusinessService BusinessService?;
    # The required status/situation prior to the implementation of the feature
    common:Condition Postconditions?;
    # The identifier of Condition
    common:Identifier CustodyFacilityReference?;
    # The identifier of Condition
    common:Identifier SafeKeepingReference?;
    # The type of Safe Keeping
    string SafeKeepingType?;
};

public type DividendOk record {|
    *http:Ok;
    Dividend body;
|};

public type CustodyFacilityOk record {|
    *http:Ok;
    CustodyFacility body;
|};

