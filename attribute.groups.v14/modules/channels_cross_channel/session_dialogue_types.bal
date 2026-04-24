import financial.bian.attribute.groups.common as common;

import ballerina/http;

# The main worsteps to be followed in th eexecution of the procedure
#
# Examples: Invoice generation
public type Query record {
    # The type of question/answer addressed in the session - e.g. branch location/hours
    string QueryType?;
    # Details the response and any customer reaction
    common:Task QueryTaskResult?;
};

# The main worsteps to be followed in th eexecution of the procedure
#
# Examples: Invoice generation
public type Intelligence record {
    # An optional interaction within the session - to capture customer insights such as detected life events and or product and service preferences or concerns
    string IntelligenceRecord?;
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
    # The derived value of the specific insight for the customer and past values if appropriate
    common:CustomerInsight CustomerInsight?;
    # Details the response and any customer reaction
    common:Task InsightTaskResult?;
};

# The main worsteps to be followed in th eexecution of the procedure
#
# Examples: Invoice generation
public type ProductorService record {
    # Reference to a specific product instance provided by the customer
    common:ProductAgreement ProductInstanceReference?;
    # Details the response and any customer reaction
    common:Task ProductandServiceTaskResult?;
};

# The main worsteps to be followed in th eexecution of the procedure
#
# Examples: Invoice generation
public type Order record {
    # Reference to a specific type of customer order (e.g. consolidated balance, change of address, simple product/service guidance)
    string OrderType?;
    # Details the response and any customer reaction
    common:Task OrderTaskRecord?;
    # Forms and actions agreed and registered during the order
    common:Workproduct OrderTaskWorkProducts?;
    # The result of the order task (e.g. order completed, actions pending)
    string OrderTaskWorkResult?;
};

public type SalesOk record {|
    *http:Ok;
    # body
    Sales body;
|};

public type IntelligenceOk record {|
    *http:Ok;
    # body
    Intelligence body;
|};

// public type CaseOk record {|
//     *http:Ok;
//     # body
//     Case body;
// |};

# The main worsteps to be followed in th eexecution of the procedure
#
# Examples: Invoice generation
public type Offer record {
    # The selected product/service
    string ProductandServiceType?;
    # Details the response and any customer reaction
    common:Task OfferTaskResult?;
};

public type CustomerContactSessionProcedureOk record {|
    *http:Ok;
    # body
    CustomerContactSessionProcedure body;
|};

# Complete work tasks following a defined procedure in support of general office activities and product and service delivery within Session Dialogue. 
public type CustomerContactSessionProcedure record {
    # Reference to an entity that assigns and manages the identification.
    # tReference to the organization or agency that issued the identifier (e.g., DMV, Passport Office).
    common:Involvedparty CustomerReference?;
    # Reference to the servicing agent
    common:Employee EmployeeReference?;
    # Reference to the servicing location/desk for assisted customer exchanges
    common:Position ServicingPositionReference?;
    # The type of channel device involved in the session exchange (e.g. web, phone, chat, video, VOIP, face to face at a branch - note there can be concurrent sessions within a single customer contact)
    common:Session SessionMechanism?;
    # The date when the identifier became valid.
    common:Datetime SessionStartEndTime?;
    # The type of channel device involved in the session exchange (e.g. web, phone, chat, video, VOIP, face to face at a branch - note there can be concurrent sessions within a single customer contact)
    common:Session SessionDialogueRecord?;
    # The general type of customer exchange (e.g. verified customer, anonymous contact, topic - used to structure/script dialogue)
    string SessionDialogueType?;
    # In cases a prompt or script can provided to structure the interaction for self-service and assisted interactions
    string SessionDialogueScript?;
    # Reference to a dialogue log that is built up
    common:SessionDialogueLog SessionDialogueLogReference?;
    # Reference to a dialogue log that is built up
    common:SessionDialogueLog SessionDialogueLog?;
    # The type of channel device involved in the session exchange (e.g. web, phone, chat, video, VOIP, face to face at a branch - note there can be concurrent sessions within a single customer contact)
    common:Session SessionDialogueResult?;
};

# The main worsteps to be followed in th eexecution of the procedure
#
# Examples: Invoice generation
public type Sales record {
    # A description of the type of product of interest (e.g. lending or deposit products)
    string ProductandServiceType?;
    # A description of the selected product's features and options desired
    common:Feature ProductandServiceProperties?;
    # Details the response and any customer reaction
    common:Task SalesTaskResult?;
};

public type OfferOk record {|
    *http:Ok;
    # body
    Offer body;
|};

public type QueryOk record {|
    *http:Ok;
    # body
    Query body;
|};

public type ProductorServiceOk record {|
    *http:Ok;
    # body
    ProductorService body;
|};

public type OrderOk record {|
    *http:Ok;
    # body
    Order body;
|};
