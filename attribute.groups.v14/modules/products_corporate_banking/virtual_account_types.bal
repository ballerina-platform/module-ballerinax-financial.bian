import financial.bian.attribute.groups.common as common;

import ballerina/http;

# ||
# |
public type virtualaccountarrangementtypevalues "InterestArrangement"|"StandingOrderArrangement"|"CreditTransferArrangement"|"DirectDebitArrangement"|"AccountStatementArrangement"|"AccountMaintenanceArrangement"|"AccountConfigurationArrangement"|"FeeArrangement";

# ||
# |
public type virtualaccountagreement record {
    # An agreement between bank and customer to open Virtual Account
    string VirtualAccountAgreement?;
};

public type VirtualAccountFacilityOk record {|
    *http:Ok;
    VirtualAccountFacility body;
|};

public type InterestOk record {|
    *http:Ok;
    common:Interest body;
|};

# The configuration and execution of Virtual Account Configuration Fulfillment arrangement within the Virtual Account Configuration Fulfillment
public type Statement record {
    # The required status/situation prior to the implementation of the feature
    common:condition Preconditions?;
    # ||
    # |
    common:schedule Schedule?;
    # The Virtual Account Configuration Fulfillment specific Business Service
    common:businessservice BusinessService?;
    # The required status/situation prior to the implementation of the feature
    common:condition Postconditions?;
    # The identifier of Condition
    common:identifier VirtualAccountFacilityReference?;
    # The identifier of Condition
    common:identifier StatementReference?;
    # The particular date and time point in the progression of time
    common:text StatementType?;
};

# The configuration and execution of Virtual Account Configuration Fulfillment arrangement within the Virtual Account Configuration Fulfillment
public type DirectDebit record {
    # The required status/situation prior to the implementation of the feature
    common:condition Preconditions?;
    # ||
    # |
    common:schedule Schedule?;
    # The Virtual Account Configuration Fulfillment specific Business Service
    common:businessservice BusinessService?;
    # The required status/situation prior to the implementation of the feature
    common:condition Postconditions?;
    # The identifier of Condition
    common:identifier VirtualAccountFacilityReference?;
    # The identifier of Condition
    common:identifier DirectDebitReference?;
    # The particular date and time point in the progression of time
    common:text DirectDebitType?;
};

public type StatementOk record {|
    *http:Ok;
    Statement body;
|};

# >
# * `UserDefinedStandingOrder` - Liquidity transfer standing order type, that has been customised or defined to the specific need of the user.(ISO20022)
# * `PredefinedStandingOrder` - Liquidity transfer standing order type, as predefined in the system. (ISO20022)
public type standingordertypevalues "UserDefinedStandingOrder"|"PredefinedStandingOrder";

public type DirectDebitOk record {|
    *http:Ok;
    DirectDebit body;
|};

# The configuration and execution of Virtual Account Configuration Fulfillment arrangement within the Virtual Account Configuration Fulfillment
public type AccountStatement record {
    # The required status/situation prior to the implementation of the feature
    common:condition Preconditions?;
    # ||
    # |
    common:schedule Schedule?;
    # The Virtual Account Configuration Fulfillment specific Business Service
    common:businessservice BusinessService?;
    # The required status/situation prior to the implementation of the feature
    common:condition Postconditions?;
    # The identifier of Condition
    common:identifier VirtualAccountFacilityReference?;
    # The identifier of Condition
    common:identifier AccountStatementReference?;
    # The particular date and time point in the progression of time
    common:text AccountStatementType?;
};

# ||
# |
public type virtualaccount record {
    # A Virtual Account is a bank account that is defined on an underlying real account .
    #
    # Comment: 
    # - Virtual accounts are temporary accounts that are used to transact on behalf of a real physical account. 
    string VirtualAccount?;
};

# The configuration and execution of Virtual Account Configuration Fulfillment arrangement within the Virtual Account Configuration Fulfillment
public type StandingOrder record {
    # The amount of the standing order
    common:amount StandingOrderAmount?;
    # Entity that assigns and manages the identification.
    common:involvedparty StandingOrderCreditorAgent?;
    # The identifier of Condition
    common:identifier StandingOrderIdentification?;
    # The validity period for the standing order
    common:datetimeperiod StandingOrderValidityPeriod?;
    # Entity that assigns and manages the identification.
    common:involvedparty StandingOrderCreditor?;
    # Reference to the account on which the amount is booked
    common:Account StandingOrderDebtorAccount?;
    # ||
    # |
    common:schedule StandingOrderSchedule?;
    # >
    # * `UserDefinedStandingOrder` - Liquidity transfer standing order type, that has been customised or defined to the specific need of the user.(ISO20022)
    # * `PredefinedStandingOrder` - Liquidity transfer standing order type, as predefined in the system. (ISO20022)
    standingordertypevalues StandingOrderType?;
    # Number of the payments that will be made in completing this frequency sequence including any executed since the sequence start date.
    string NumberofPayments?;
    # Reference to the account on which the amount is booked
    common:Account StandingOrderCreditorAccount?;
    # Periodicity with which the standing order will be executed, e.g. yearly, quarterly, monthly, weekly, every XX days,…….
    #
    # Regularity with which payment instructions are to be created and processed as a result of the standing order, such as daily, weekly, or monthly. (ISO20022)
    common:Frequency StandingOrderFrequency?;
    # Entity that assigns and manages the identification.
    common:involvedparty StandingOrderDebtor?;
    # Reference to the product which is linked to Standing Order Arrangement
    common:bankingproduct StandingOrderProductReference?;
    # Status |Status  (https://www.iso20022.org/standardsrepository/type/Status)|Standard|ISO20022 BM ()
    common:status StandingOrderStatus?;
    # CurrencyCode|CurrencyCode (https://www.iso20022.org/standardsrepository/type/CurrencyCode)|Standard|ISO20022 BM ()
    common:currencycode StandingOrderAmountCurrency?;
};

public type StandingOrderOk record {|
    *http:Ok;
    StandingOrder body;
|};

# ||
# |
public type regulation record {
    # The particular date and time point in the progression of time
    common:text RegulationDefinition?;
};

# Fulfill any scheduled and ad-hoc obligations under a service arrangement, most typically for a financial product or facility within Virtual Account. 
public type VirtualAccountFacility record {
    # ||
    # |
    common:featuretypevalues VirtualAccountFacilityParameterType?;
    # ||
    # |
    common:feature VirtualAccountFacilitySelectedOption?;
    # ||
    # |
    virtualaccountarrangementtypevalues VirtualAccountFacilityType?;
    # ||
    # |
    virtualaccountagreement VirtualAccountFacilityReference?;
    # ||
    # |
    common:schedule VirtualAccountFacilitySchedule?;
    # Status |Status  (https://www.iso20022.org/standardsrepository/type/Status)|Standard|ISO20022 BM ()
    common:status VirtualAccountFacilityStatus?;
    # CurrencyCode|CurrencyCode (https://www.iso20022.org/standardsrepository/type/CurrencyCode)|Standard|ISO20022 BM ()
    common:currencycode VirtualAccountFacilityCurrency?;
    # ||
    # |
    regulation VirtualAccountFacilityRegulationReference?;
    # ||
    # |
    common:Rulesettypevalues VirtualAccountFacilityRegulationType?;
    # Jurisdiction|Jurisdiction (https://www.iso20022.org/standardsrepository/type/Jurisdiction)|Standard|ISO20022 BM ()
    common:Jurisdiction VirtualAccountFacilityJurisdiction?;
    # Location|Location (https://www.iso20022.org/standardsrepository/type/Location)|Standard|ISO20022 BM  ()
    common:location VirtualAccountFacilityBookingLocation?;
    # OBExternalAccountSubType1Code| ()|Standard|UK Open Banking ()
    common:Accounttypevalues VirtualAccountFacilityAccountType?;
    # ||
    # |
    virtualaccount VirtualAccountFacilityAccountReference?;
};
