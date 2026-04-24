import financial.bian.attribute.groups.common as common;

import ballerina/http;

# A record of a clearing transaction
public type clearingtransaction record {
    # Transaction that is the result of fulfilling a clearing arrangement
    string ClearingTransaction?;
};

# Fulfill any scheduled and ad-hoc obligations under a service arrangement, most typically for a financial product or facility within Cheque Lock Box. 
public type LockBoxFacility record {
    # A Classification value that distinguishes between arrangements according to the type of business services within Lock Box Facility ||
    # |
    common:featuretypevalues LockBoxFacilityParameterType?;
    # A selected optional product feature as subject matter of Lock Box Facility ||
    # |
    common:feature LockBoxFacilitySelectedOption?;
    # The type of Lock Box Facility ||
    # |
    common:Bankingproducttype LockBoxFacilityType?;
    # Reference to the calendar used to fulfill Lock Box Facility ||
    # |
    common:Calendar LockBoxFacilityCalendarReference?;
    # The status of Lock Box Facility Status |Status  (https://www.iso20022.org/standardsrepository/type/Status)|Standard|ISO20022 BM ()
    common:status LockBoxFacilityStatus?;
    # Reference to the customer who is involved in Lock Box Facility ||
    # |
    common:involvedparty LockBoxFacilityAssociatedParty?;
    # The curreny which is arranged in Lock Box Facility CurrencyCode|CurrencyCode (https://www.iso20022.org/standardsrepository/type/CurrencyCode)|Standard|ISO20022 BM ()
    common:currencycode LockBoxFacilityCurrency?;
    # Reference to the regulation which is defined in Lock Box Facility GovernanceRules|GovernanceRules (https://www.iso20022.org/standardsrepository/type/GovernanceRules)|Standard|ISO20022 BM ()
    common:RuleSet LockBoxFacilityRegulationReference?;
    # A Classification that distinguishes between the regularity domains of Lock Box Facility ||
    # |
    common:Rulesettype LockBoxFacilityRegulationType?;
    # Reference to the jurisdiction that is assigned to Lock Box Facility in case of legal dispute. Jurisdiction|Jurisdiction (https://www.iso20022.org/standardsrepository/type/Jurisdiction)|Standard|ISO20022 BM ()
    common:Jurisdiction LockBoxFacilityJurisdiction?;
    # The financial accounting unit into which the financial events, with regard to the origination and fulfillment of the agreement in the context of Lock Box Facility, are entered. ||
    # |
    common:BusinessUnit LockBoxFacilityBookingLocation?;
    # The type of account which is linked to Lock Box Facility OBExternalAccountSubType1Code| ()|Standard|UK Open Banking ()
    common:Accounttypevalues LockBoxFacilityAccountType?;
    # Reference to the account which is linked to Lock Box Facility Account|Account  (https://www.iso20022.org/standardsrepository/type/Account)|Standard|ISO20022 BM ()
    common:Account LockBoxFacilityAccountReference?;
    # Reference to the customer who is involved in Lock Box Facility ||
    # |
    common:involvedparty LockBoxFacilityCustomerReference?;
    # The position of Lock Box Facility Position |Position  (https://www.iso20022.org/standardsrepository/type/Position)|Standard|ISO20022 BM ()
    common:Position LockBoxFacilityPosition?;
    # Reference to the product which is linked to Lock Box Facility Product_x000D_
    # |Product (https://www.iso20022.org/standardsrepository/type/Product)|Standard|ISO20022 BM ()
    common:bankingproduct LockBoxFacilityProductReference?;
    # Reference to the limitation related to the position of Lock Box Facility Limit|Limit (https://www.iso20022.org/standardsrepository/type/Limit)|Standard|ISO20022 (https://www.iso20022.org/)
    common:Limitarrangement LockBoxFacilityPositionLimit?;
    # An unique reference to an item or an occurrence of Lock Box Facility ||
    # |
    common:FinancialFacility LockBoxFacilityReference?;
};

public type TransactionBatchOk record {|
    *http:Ok;
    TransactionBatch body;
|};

# Reference to Transaction Batch
public type transactionbatch record {
    # The date and time of the batch transaction
    string BatchTransactionDateTime?;
};

# The configuration and execution of Paper Check Processing Fulfillment arrangement within the Paper Check Processing Fulfillment
public type TransactionBatch record {
    # The required status/situation prior to the implementation of the feature
    common:condition Preconditions?;
    # The timing and key actions/milestones involved in completing the fulfillment feature instance
    common:schedule Schedule?;
    # The specific Business Service
    common:businessservice BusinessService?;
    # The required status/situation prior to the implementation of the feature
    common:condition Postconditions?;
    # An unique reference to an item or an occurrence of Lock Box Facility ||
    # |
    common:FinancialFacility LockBoxFacilityReference?;
    # Reference to Transaction Batch
    transactionbatch TransactionBatchReference?;
    # The particular date and time point in the progression of time
    common:text TransactionBatchType?;
    # The identifier of Condition
    common:identifier TransactionBatchInstanceReference?;
    # Reference to the account which is linked to Lock Box Facility Account|Account  (https://www.iso20022.org/standardsrepository/type/Account)|Standard|ISO20022 BM ()
    common:Account MirrorNostroAccountReference?;
    # A record of a clearing transaction
    clearingtransaction ClearingTransaction?;
    # A record of a settlement transaction
    settlementtransaction SettlementTransaction?;
};

public type LockBoxFacilityOk record {|
    *http:Ok;
    LockBoxFacility body;
|};

# A record of a settlement transaction
public type settlementtransaction record {
    # Transaction that is the result of fulfilling a settlement arrangement
    string SettlementTransaction?;
};
