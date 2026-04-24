import financial.bian.attribute.groups.common as common;

import ballerina/http;

# Oversee the working of a business unit, assign work, manage against a plan and troubleshoot issues within Customer Relationship Management.
public type CustomerRelationshipManagementPlan record {
    # Reference to a Party who plays a  specific role in the context of assigning a status.
    common:Involvedparty CustomerReference?;
    # Reference to a Party who plays a  specific role in the context of assigning a status.
    # EmployeeBusinessUnitReference
    common:Involvedparty EmployeeBusinessUnitReference?;
    # >
    # * `CustomerProfitabilityRating` - A value of Customer Rating Type whereby customer profitability is measured.
    #
    # A customer profitability rating (CPR) is an assessment used by businesses to evaluate the profitability of individual customers or customer segments. This rating helps companies understand which customers contribute the most to their bottom line and enables them to tailor their strategies to maximize overall profitability.
    # * `CustomerCreditRating` - A value of Customer Rating Type whereby customer creditability is measured.
    #
    # A customer credit rating is a numerical score or rating that represents the creditworthiness of an individual or a business. It indicates the likelihood that the borrower will repay their debt obligations on time
    # * `CustomerRiskRating` - A customer risk rating is an assessment of the potential risk associated with a customer, often used in the context of anti-money laundering (AML) and know your customer (KYC) regulations. It evaluates the likelihood of a customer engaging in activities that could pose a legal, financial, or reputational risk to the institution.
    common:Customerratingtypevalues CustomerRelationshipRatingType?;
    # The rating value (and explanation)
    # CustomerRelationshipRating
    common:CustomerRating CustomerRelationshipRating?;
    # >
    # * `CustomerBehavioralInsight` - Understanding how customers interact with products, services, and brands.
    # * `CustomerDemographicInsight` - Analyzing customer characteristics such as age, gender, income, education, and location.
    # * `CustomerPsychographicInsight` - Exploring customers' lifestyles, values, interests, and attitudes.
    # * `CustomerTransactionalInsight` - Examining purchase history, order frequency, average transaction value, and payment methods
    # * `CustomerFeedbackAndSentimentInsight` - Gathering and analyzing customer feedback through surveys, reviews, social media, and customer support interactions
    # * `CustomerJourneyInsight` - Mapping the entire customer journey from awareness to purchase and beyond
    # * `CustomerRetentionAndChurnInsight` - Understanding the factors that influence customer retention and attrition
    # * `CustomerFinancialInsight` - Customer financial insights refer to the analysis and understanding of the financial aspects related to customer interactions and behaviors. 
    common:Customerinsighttypevalues CustomerInsightType?;
    # Description of the insight
    # CustomerInsightDescription
    string CustomerInsightDescription?;
    # The target and actual budget covering income and allowed expenses/discounts
    CustomerRelationshipBudget CustomerBudget?;
    # Covers current and near term target product/service coverage as per the judgment of the Relationship Manager
    CustomerProductCoverage CustomerProductCoverage?;
    # Extracted analysis from production activity used to detect trends and key events (product activity/turnover summaries)
    common:ProductUsage CustomerProductUsage?;
    # Obtained from the appropriate Service Domain, this provides an automated/rules based analysis of unsold/eligible products and associated terms that can be refined by the manager
    # CustomerProductEligibilityProfile
    CustomerProductEligibilityProfileClass CustomerProductEligibilityProfile?;
    # A plan outlining longer term relationship goals and performance/profitability both target and actual
    common:Plan CustomerSalesPlan?;
    # A maintained perspective of the profitability of the relationship to date and projected
    # CustomerProfitability
    CustomerProfitability CustomerProfitability?;
};

public type ContactOk record {|
    *http:Ok;
    # body
    Contact body;
|};

public type DevelopmentOk record {|
    *http:Ok;
    # body
    Development body;
|};

# A collection of one or more responsibilities or tasks under management
#
# Examples: Relationship development, Troubleshooting
public type Development record {
    # A specific task undertaken to develop the relationship
    common:Task RelationshipDevelopmentTask?;
    # >
    # * `CustomerEngagement` - Objective: Keep customers actively involved with the brand.
    # Activities: Regular communication through newsletters, social media interactions, loyalty programs, and personalized offers.
    #
    # Regular Interaction: Keep customers engaged through regular communication and interactions.
    # Value Delivery: Continuously deliver value through high-quality products, services, and content.
    # * `CustomerRetention` - Objective: Maintain long-term relationships and prevent customer churn.
    # Activities: Implementing loyalty programs, conducting satisfaction surveys, and providing consistent value through updates and enhancements.
    # Customer Satisfaction: Focus on maintaining high levels of customer satisfaction.
    # Problem Resolution: Quickly and effectively address any issues or concerns that arise
    # * `CustomerAdvocacy` - Objective: Turn satisfied customers into brand advocates who can help attract new customers.
    # Activities: Encouraging reviews and testimonials, creating referral programs, and engaging with customers on social media.
    #
    # Encourage Referrals: Motivate satisfied customers to refer others to your business.
    # Leverage Testimonials: Use positive customer testimonials and reviews to build credibility and attract new customers.
    # * `CustomerCross-SellingAndUpselling` - Customer Upselling
    # Definition: Upselling is a sales technique aimed at encouraging customers to purchase a higher-end product than the one they originally intended to buy, or to add features and services that increase the overall value of the purchase.
    #
    # Purpose: The primary goal of upselling is to increase the sales revenue from each transaction and to provide customers with enhanced value and satisfaction by offering better products or services.
    #
    #
    # Customer Cross-Selling
    # Definition: Cross-selling is a sales technique that involves encouraging customers to buy related or complementary products in addition to their initial purchase.
    #
    # Purpose: The main objective of cross-selling is to increase the average order value and to improve the overall customer experience by offering products that complement their original purchase.
    Customerrelationshipdevelopmenttypevalues CustomerDevelopmentTaskType?;
    # A description of the task, including any intelligence gathered and follow up actions agreed
    string CustomerDevelopmentTaskDescription?;
    # A plan outlining longer term relationship goals and performance/profitability both target and actual
    common:Plan CustomerRelationshipDevelopmentPlan?;
    # Reference to a Party who plays a  specific role in the context of assigning a status.
    # EmployeeBusinessUnitReference
    common:Involvedparty EmployeeBusinessUnitReference?;
    # Work documentation, forms and schedules produced and referenced during the task
    # CustomerDevelopmentWorkProduct
    common:Workproduct CustomerDevelopmentWorkProduct?;
    # A specific task undertaken to develop the relationship
    # CustomerDevelopmentTaskResult
    common:Task CustomerDevelopmentTaskResult?;
};

# >
# * `CustomerEngagement` - Objective: Keep customers actively involved with the brand.
# Activities: Regular communication through newsletters, social media interactions, loyalty programs, and personalized offers.
#
# Regular Interaction: Keep customers engaged through regular communication and interactions.
# Value Delivery: Continuously deliver value through high-quality products, services, and content.
# * `CustomerRetention` - Objective: Maintain long-term relationships and prevent customer churn.
# Activities: Implementing loyalty programs, conducting satisfaction surveys, and providing consistent value through updates and enhancements.
# Customer Satisfaction: Focus on maintaining high levels of customer satisfaction.
# Problem Resolution: Quickly and effectively address any issues or concerns that arise
# * `CustomerAdvocacy` - Objective: Turn satisfied customers into brand advocates who can help attract new customers.
# Activities: Encouraging reviews and testimonials, creating referral programs, and engaging with customers on social media.
#
# Encourage Referrals: Motivate satisfied customers to refer others to your business.
# Leverage Testimonials: Use positive customer testimonials and reviews to build credibility and attract new customers.
# * `CustomerCross-SellingAndUpselling` - Customer Upselling
# Definition: Upselling is a sales technique aimed at encouraging customers to purchase a higher-end product than the one they originally intended to buy, or to add features and services that increase the overall value of the purchase.
#
# Purpose: The primary goal of upselling is to increase the sales revenue from each transaction and to provide customers with enhanced value and satisfaction by offering better products or services.
#
#
# Customer Cross-Selling
# Definition: Cross-selling is a sales technique that involves encouraging customers to buy related or complementary products in addition to their initial purchase.
#
# Purpose: The main objective of cross-selling is to increase the average order value and to improve the overall customer experience by offering products that complement their original purchase.
public type Customerrelationshipdevelopmenttypevalues "CustomerEngagement"|"CustomerRetention"|"CustomerAdvocacy"|"CustomerCross-SellingAndUpselling";

public type Caseresolution record {
    # ResolutionSchedule
    common:Schedule ResolutionSchedule?;
    # The type of resolution (e.g. success, deferred, rejected)
    # ResolutionType
    string ResolutionType?;
    # Description of the resolution of the investigation case
    string Description?;
};

# Record of an incident
public type CustomerIncident record {
    # >
    # * `ProductIssues` - Defective or malfunctioning products.
    # Incorrect or damaged items received.
    # Issues with product performance or quality.
    # * `ServiceIssues` - Poor customer service interactions.
    # Delays in service delivery or support.
    # Incorrect or inadequate service provided.
    # * `BillingAndPaymentIssues` - Incorrect charges or billing errors.
    # Problems with refunds or returns.
    # Issues with payment processing.
    # * `TechnicalIssues` - Problems with software or applications.
    # Website outages or functionality issues.
    # Difficulty in accessing services or accounts.
    # * `LogisticsAndDeliveryIssues` - Delayed or lost shipments.
    # Incorrect delivery addresses.
    # Problems with delivery tracking.
    # * `PolicyAndProcedureIssues` - Disputes over company policies.
    # Miscommunication or lack of clarity about terms and conditions.
    # Issues with warranties or guarantees.
    # * `RelationshipIssues` - 
    Customerincidenttypevalues CustomerIncidentType?;
    # CustomerIncidentSource
    common:Event CustomerIncidentSource?;
    # CustomerIncidentDescription
    string CustomerIncidentDescription?;
    # CustomerIncidentResolution
    Caseresolution CustomerIncidentResolution?;
};

public type IncidentOk record {|
    *http:Ok;
    # body
    Incident body;
|};

# The target and actual budget covering income and allowed expenses/discounts
public type CustomerRelationshipBudget record {
    # The budget which is planned to spend for a specific customer relationship. 
    string CustomerRelationshipBudget?;
};

public type CustomerRelationshipManagementPlanOk record {|
    *http:Ok;
    # body
    CustomerRelationshipManagementPlan body;
|};

# A maintained perspective of the profitability of the relationship to date and projected
public type CustomerProfitability record {
    # The profitability for a specific customer relationship. 
    #
    # Profitability: The state or condition of yielding a financial profit or gain. (Business Dictionary)
    string CustomerProfitability?;
};

# Narrative of the resolution actions made or committed
public type CustomerCaseResolution record {
    # CustomerCaseResolution
    string CustomerCaseResolution?;
};

# Covers current and near term target product/service coverage as per the judgment of the Relationship Manager
public type CustomerProductCoverage record {
    # CustomerProductCoverage
    string CustomerProductCoverage?;
};

# A collection of one or more responsibilities or tasks under management
#
# Examples: Relationship development, Troubleshooting
public type Contact record {
    # Records the timing, purpose, details and impact of customer contacts
    common:CustomerContact CustomerRelationshipContactHistory?;
    # CustomerRelationshipContactSchedule
    common:Schedule CustomerRelationshipContactSchedule?;
    # CustomerRelationshipContactRecord
    common:CustomerContact CustomerRelationshipContactRecord?;
    # The date time and location of the contact
    # CustomerRelationshipContactDate
    common:Date CustomerRelationshipContactDate?;
    # Reference to a Party who plays a  specific role in the context of assigning a status.
    # EmployeeReference
    common:Involvedparty EmployeeReference?;
    # The reason and or purpose for the contact (e.g. review, issue, product sales, advice, customer enquiry)
    # CustomerRelationshipContactType
    string CustomerRelationshipContactType?;
    # The result of the contact, including follow up tasks
    string CustomerRelationshipContactResult?;
};

# >
# * `ProductIssues` - Defective or malfunctioning products.
# Incorrect or damaged items received.
# Issues with product performance or quality.
# * `ServiceIssues` - Poor customer service interactions.
# Delays in service delivery or support.
# Incorrect or inadequate service provided.
# * `BillingAndPaymentIssues` - Incorrect charges or billing errors.
# Problems with refunds or returns.
# Issues with payment processing.
# * `TechnicalIssues` - Problems with software or applications.
# Website outages or functionality issues.
# Difficulty in accessing services or accounts.
# * `LogisticsAndDeliveryIssues` - Delayed or lost shipments.
# Incorrect delivery addresses.
# Problems with delivery tracking.
# * `PolicyAndProcedureIssues` - Disputes over company policies.
# Miscommunication or lack of clarity about terms and conditions.
# Issues with warranties or guarantees.
# * `RelationshipIssues` - 
public type Customerincidenttypevalues "ProductIssues"|"ServiceIssues"|"BillingAndPaymentIssues"|"TechnicalIssues"|"LogisticsAndDeliveryIssues"|"PolicyAndProcedureIssues"|"RelationshipIssues";

# A collection of one or more responsibilities or tasks under management
#
# Examples: Relationship development, Troubleshooting
public type Incident record {
    # Record of an incident
    CustomerIncident RelationshipIncidentRecord?;
    # Reference to a Party who plays a  specific role in the context of assigning a status.
    common:Involvedparty EmployeeBusinessUnitReference?;
    # Production activity and transaction records relating to the incident
    # ProductandServiceActivityReference
    common:Transaction ProductandServiceActivityReference?;
    # >
    # * `CustomerBehavioralInsight` - Understanding how customers interact with products, services, and brands.
    # * `CustomerDemographicInsight` - Analyzing customer characteristics such as age, gender, income, education, and location.
    # * `CustomerPsychographicInsight` - Exploring customers' lifestyles, values, interests, and attitudes.
    # * `CustomerTransactionalInsight` - Examining purchase history, order frequency, average transaction value, and payment methods
    # * `CustomerFeedbackAndSentimentInsight` - Gathering and analyzing customer feedback through surveys, reviews, social media, and customer support interactions
    # * `CustomerJourneyInsight` - Mapping the entire customer journey from awareness to purchase and beyond
    # * `CustomerRetentionAndChurnInsight` - Understanding the factors that influence customer retention and attrition
    # * `CustomerFinancialInsight` - Customer financial insights refer to the analysis and understanding of the financial aspects related to customer interactions and behaviors. 
    common:Customerinsighttypevalues CustomerIncidentType?;
    # Description of the incident in whatever form appropriate
    # CustomerIncidentDescription
    string CustomerIncidentDescription?;
    # Narrative of the resolution actions made or committed
    CustomerCaseResolution CustomerIncidentResolution?;
};

# Applicable legal or regulatory requirements governing eligibility
public type CustomerProductEligibilityProfileClass record {
};
