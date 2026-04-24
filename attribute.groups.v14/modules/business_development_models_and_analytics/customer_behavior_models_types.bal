import financial.bian.attribute.groups.common as common;

import ballerina/http;

# Create and maintain a design for a procedure, product/service model or other such entity  within Customer Behavior Models. 
# Example: Create and maintain product designs and analytical models.
public type CustomerBehaviorModelSpecification record {
    # >
    # * `DemographicModel` - Analyze customer behavior based on demographic factors such as age, gender, income, education, and occupation.
    # Example: Segmenting customers by age group to tailor marketing strategies.
    # * `PsychographicModel` - Focus on psychological attributes, including values, attitudes, interests, and lifestyles.
    # Example: Creating buyer personas based on lifestyle choices and interests.
    # * `GeographicModel` - Look at customer behavior based on geographic location, considering factors like regional preferences and climate.
    # Example: Targeting advertisements based on location-specific needs.
    # * `SocioeconomicModel` - Combine social and economic factors to understand consumer behavior
    # Example: Analyzing how economic status influences buying decisions
    # * `SituationalModel` - Consider the context or situation in which the consumer is making a decision, including time of day, season, and situational needs.
    # Example: Promoting holiday-related products during festive seasons.
    # * `CulturalModel` - Focus on the influence of culture, traditions, and social norms on consumer behavior.
    # Example: Adapting marketing messages to align with cultural values and practices.
    # * `Usage-BasedModel` - Segment customers based on how they use a product or service, including frequency and intensity of use.
    # Example: Differentiating between heavy, moderate, and light users of a product.
    # * `Benefit-SoughtModel` - Classify customers according to the benefits they seek from a product or service.
    # Example: Marketing products based on specific benefits like convenience, cost-saving, or luxury.
    # * `HybridModel` - Combine elements from various models to provide a comprehensive view of customer behavior.
    # Example: Using demographic, psychographic, and behavioral data together for more precise targeting
    common:Customerbehaviormodeltypevalues CustomerBehaviorModelType?;
    # A description of the model that clarifies the intended analysis/insights provided
    string CustomerBehaviorModelPurpose?;
    # Maintains the current deployment configuration of the model
    common:Arrangement CustomerBehaviorModelDeployment?;
    # Reference to an entity that assigns and manages the identification.
    # tReference to the organization or agency that issued the identifier (e.g., DMV, Passport Office).
    common:Involvedparty EmployeeorBusinessUnitReference?;
    # Details of the deployment for reference
    ModelDeploymentConfiguration CustomerBehaviorModelDeploymentConfiguration?;
    # Reference to a type of functional requirements specification activity
    common:Task CustomerBehaviorModelDeploymentTaskReference?;
    # Recorded details of a deployment task
    string CustomerBehaviorModelDeploymentTaskRecord?;
    # Defines rules and suitability for model usage
    common:ModelUsage CustomerBehaviorModelUsage?;
    # Status of the customer behavior model
    common:Status CustomerBehaviorModelStatus?;
    # Track reporting of the impact/accuracy of the model's insights
    ModelImpact CustomerBehaviorModelImpact?;
    # Release version of available model plus version history as appropriate
    string CustomerBehaviorModelVersion?;
    # The deployable model in any appropriate form (including historical versions as appropriate)
    common:CustomerBehaviorModel CustomerBehaviorModel?;
};

# Provides guidance on the use of the model
public type ModelUsageRuleSet record {
    # Definition of the rule set
    string RuleSetDefinition?;
    # Interpretation of the rule set
    string RuleSetInterpretation?;
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
    common:Rulesettypevalues RuleSetType?;
    # Name of the rule set
    common:Name RuleSetName?;
    # Identification of the rule set
    common:Identifier RuleSetIdentification?;
    # Lifecycle status of the rule set
    common:Status RuleSetLifecycleStatus?;
};


public type CustomerBehaviorModelSpecificationOk record {|
    *http:Ok;
    # body
    CustomerBehaviorModelSpecification body;
|};

# Details of the deployment for reference
public type ModelDeploymentConfiguration record {
    # Arrangement action for deployment
    common:Action ArrangementAction?;
    # The date when the identifier became valid.
    common:Datetime ArrangementStartDate?;
    # The date when the identifier became valid.
    common:Datetime ArrangementEndDate?;
    # A characteristic of arrangement which refers to the LifecycleStatus of arrangement (e.g., requested, proposed, offered, accepted, cancelled, terminated, fulfilled, etc.)
    common:Arrangementstatus ArrangementStatus?;
    # Subject matter of the arrangement
    common:Subject ArrangementSubjectMatter?;
    # >
    # * `SweepArrangement` - An arrangement into which is promised for the set-up and execution of structured sweeps to and from the facility to a linked account.
    # * `WithdrawalArrangement` - An arrangement into which is promised to deliver Withdraw Service  to take fund out of an account. 
    # * `DepositArrangement` - An arrangement into which is promised to deliver Deposit Service  to place funds into an account for safekeeping. 
    # * `InterestArrangement` - An arrangement into which is promised to apply a pricing element expressed in a percentage  to a principal amount.
    # * `FeeArrangement` - An arrangement into which is promised to apply a charge for services rendered. 
    # * `LienArrangement` - An arrangement into which is promised for placing a lien or block on the account for a specified purpose, amount, and period. 
    # * `InformationArrangement` - An arrangement concerning the information the bank will provide about the agreement/account
    # * `PaymentArrangement` - An arrangement into which is promised to deliver a specific payment service including regular payments, standing orders, direct debits and bill pay instructions. 
    # * `EntitlementArrangement` - Right or obligation linked to the involvement of a party in an agreement
    # * `PeriodArrangement` - 
    # * `CollateralArrangement` - An arrangement into which is promised for handling the oversight of the allocation, valuation and administration of collateral associated with the facility. 
    # * `LimitArrangement` - An arrangement to limit something
    # e.g., the number of transaction per week, the amount of money allowed to withdraw per week/day and etc. 
    # * `AccessArrangement` - An arrangement that allows or restricts the access to a service or product, channel or device through a specific access point
    # * `CardPaymentArrangement` - An arrangement into which is promised to deliver Card payment Service to execute payment transactions through a payment card, including online payments. 
    # * `StandingOrderArrangement` - An arrangement into which is promised to deliver Standing Order Service to make regular transfers on given dates to a named beneﬁciary. 
    # * `OverdraftArrangement` - An arrangement into which is promised to deliver Overdraft Service  that allows fund transfer even if there is no provision on the account. 
    # * `RepaymentArrangement` - An arrangement into which is promised for paying back money previously borrowed from a lender. 
    # * `StatementArrangement` - An arrangement into which is promised to deliver a reporting service on payment transactions registered on an account. 
    # * `CreditTransferArrangement` - An arrangement into which is promised to allow a payer to transfer fund to a beneficiary. 
    # * `ProductAndServiceArrangement` - 
    # * `FactoringArrangement` - 
    # * `RolloverArrangement` - Arrangement stipulating the modalities for an automatic renewal of the agreement
    #
    # i.e. the replacement of the agreement with a new one without renewed negociation and witout explicit agreement of the customer 
    # * `RestructuringArrangement` - 
    # * `InsuranceArrangement` - 
    # * `CollectionArrangement` - An arrangement into which is promised to collect past-due debts from borrowers
    # * `UnderwritingArrangement` - A contractual agreement between parties that commits the underwriter to assuming risk.
    # * `TerminationArrangement` - 
    # * `MaturityArrangement` - 
    # * `AdministrativeArrangement` - 
    common:Arrangementtypevalues Arrangementtype?;
    # Identification of the arrangement
    common:Identifier ArrangementIdentification?;
};

# Reference to compliance conformance check for the specification
public type ComplianceCheck record {
    # Type of compliance check
    string ComplianceCheckType?;
};

# Track reporting of the impact/accuracy of the model's insights
public type ModelImpact record {
    # The impact/accuracy of the model's insights.
    string ModelImpact?;
};
