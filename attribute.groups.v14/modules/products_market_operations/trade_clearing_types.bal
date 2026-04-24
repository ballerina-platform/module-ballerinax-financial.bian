import financial.bian.attribute.groups.common as common;

import ballerina/http;

# A course of action for doing Market Trade Settlement Initiation Workstep in the context of executing the Market Trade Settlement Initiation Workstep
public type MarketTradeConfirmation record {
    # The required status/situation and or tasks that need to be completed prior to the initiation of the workstep
    common:condition Preconditions?;
    # Reference to the customer who is involved in Trade Clearing Procedure ||
    # |
    common:involvedparty BusinessUnitorEmployeeReference?;
    # The schedule according to which the service provider will process the Trade Clearing Procedure ||
    # |
    common:schedule Schedule?;
    # The Market Trade Settlement Initiation Workstep specific Business Service
    common:businessservice BusinessService?;
    # The required status/situation and or tasks that need to be completed prior to the initiation of the workstep
    common:condition Postconditions?;
    # An unique reference to an item or an occurrence of Trade Clearing Procedure ||
    # |
    common:procedure TradeClearingProcedureReference?;
    # Reference to Market Trade Settlement Initiation Workstep
    common:workstep MarketTradeConfirmationWorkstepReference?;
    # The particular date and time point in the progression of time
    common:text MarketTradeConfirmationWorkstepType?;
};

public type MarketTradeMatchingOk record {|
    *http:Ok;
    MarketTradeMatching body;
|};

public type MarketTradeFundsandSecurityAvailabilityAssuranceOk record {|
    *http:Ok;
    MarketTradeFundsandSecurityAvailabilityAssurance body;
|};

# A course of action for doing Market Trade Settlement Initiation Workstep in the context of executing the Market Trade Settlement Initiation Workstep
public type MarketTradeMatching record {
    # The required status/situation and or tasks that need to be completed prior to the initiation of the workstep
    common:condition Preconditions?;
    # Reference to the customer who is involved in Trade Clearing Procedure ||
    # |
    common:involvedparty BusinessUnitorEmployeeReference?;
    # The schedule according to which the service provider will process the Trade Clearing Procedure ||
    # |
    common:schedule Schedule?;
    # The Market Trade Settlement Initiation Workstep specific Business Service
    common:businessservice BusinessService?;
    # The required status/situation and or tasks that need to be completed prior to the initiation of the workstep
    common:condition Postconditions?;
    # An unique reference to an item or an occurrence of Trade Clearing Procedure ||
    # |
    common:procedure TradeClearingProcedureReference?;
    # Reference to Market Trade Settlement Initiation Workstep
    common:workstep MarketTradeMatchingWorkstepReference?;
    # The particular date and time point in the progression of time
    common:text MarketTradeMatchingWorkstepType?;
};

# A course of action for doing Market Trade Settlement Initiation Workstep in the context of executing the Market Trade Settlement Initiation Workstep
public type MarketTradeSettlementInitiation record {
    # The required status/situation and or tasks that need to be completed prior to the initiation of the workstep
    common:condition Preconditions?;
    # Reference to the customer who is involved in Trade Clearing Procedure ||
    # |
    common:involvedparty BusinessUnitorEmployeeReference?;
    # The schedule according to which the service provider will process the Trade Clearing Procedure ||
    # |
    common:schedule Schedule?;
    # The Market Trade Settlement Initiation Workstep specific Business Service
    common:businessservice BusinessService?;
    # The required status/situation and or tasks that need to be completed prior to the initiation of the workstep
    common:condition Postconditions?;
    # An unique reference to an item or an occurrence of Trade Clearing Procedure ||
    # |
    common:procedure TradeClearingProcedureReference?;
    # Reference to Market Trade Settlement Initiation Workstep
    common:workstep MarketTradeSettlementInitiationWorkstepReference?;
    # The particular date and time point in the progression of time
    common:text MarketTradeSettlementInitiationWorkstepType?;
};

public type TradeClearingProcedureOk record {|
    *http:Ok;
    TradeClearingProcedure body;
|};

# Complete work tasks following a defined procedure in support of general office activities and product and service delivery within Trade Clearing. 
public type TradeClearingProcedure record {
    # A Classification value that distinguishes between Procedures according to the type of business services and/or type of concern defined within Trade Clearing Procedure ||
    # |
    common:featuretypevalues TradeClearingProcedureParameterType?;
    # A selected optional business service as subject matter of Trade Clearing Procedure ||
    # |
    common:feature TradeClearingProcedureSelectedOption?;
    # Request to process Trade Clearing Procedure ||
    # |
    common:Instruction TradeClearingProcedureRequest?;
    # The schedule according to which the service provider will process the Trade Clearing Procedure ||
    # |
    common:schedule TradeClearingProcedureSchedule?;
    # The status of Trade Clearing Procedure Status |Status  (https://www.iso20022.org/standardsrepository/type/Status)|Standard|ISO20022 BM ()
    common:status TradeClearingProcedureStatus?;
    # Reference to the customer who is involved in Trade Clearing Procedure ||
    # |
    common:involvedparty TradeClearingProcedureAssociatedPartyReference?;
    # Reference to the customer who is involved in Trade Clearing Procedure ||
    # |
    common:involvedparty TradeClearingProcedureBusinessUnitReference?;
    # Reference to the customer who is involved in Trade Clearing Procedure ||
    # |
    common:involvedparty TradeClearingProcedureServiceProviderReference?;
    # Reference to the Financial Facility related to Trade Clearing Procedure ||
    # |
    common:FinancialFacility TradeClearingProcedureFinancialFacilityReference?;
    # Reference to the customer who is involved in Trade Clearing Procedure ||
    # |
    common:involvedparty TradeClearingProcedureEmployeeReference?;
    # Reference to the customer who is involved in Trade Clearing Procedure ||
    # |
    common:involvedparty TradeClearingProcedureCustomerReference?;
    # A Classification value that distinguishes between the type of process undertaken within Trade Clearing Procedure ||
    # |
    common:proceduretype TradeClearingProcedureType?;
    # The schedule according to which the service provider will process the Trade Clearing Procedure ||
    # |
    common:schedule TradeClearingProcedureServiceProviderSchedule?;
    # A Classification value that distinguishes between the type of services in Trade Clearing Procedure ||
    # |
    common:servicetype TradeClearingProcedureServiceType?;
    # A Classification value that distinguishes between the type of products/services related to Trade Clearing Procedure ||
    # |
    common:Bankingproducttype TradeClearingProcedureProductandServiceType?;
    # Reference to the product or service that is related to Trade Clearing Procedure Product_x000D_
    # |Product (https://www.iso20022.org/standardsrepository/type/Product)|Standard|ISO20022 BM ()
    common:bankingproduct TradeClearingProcedureProductandServiceInstance?;
    # A Classification value that distinguishes between the type of transactions in Trade Clearing Procedure ||
    # |
    common:transactiontype TradeClearingProcedureTransactionType?;
    # Reference to the transaction that is related to Trade Clearing Procedure ObligationFulfilment|ObligationFulfilment (https://www.iso20022.org/standardsrepository/type/ObligationFulfilment)|Standard|ISO20022 BM ()
    'common:Transaction TradeClearingProcedureTransaction?;
    # Reference to the Financial Transaction Arrangement that is related to Trade Clearing Procedure Obligation|Obligation (https://www.iso20022.org/standardsrepository/type/Obligation)|Standard|ISO20022 BM ()
    common:Arrangement TradeClearingProcedureFinancialTransactionArrangement?;
    # Reference to the Customer Agreement that is related to Trade Clearing Procedure Agreement_x000D_
    # |Agreement (https://www.iso20022.org/standardsrepository/type/Agreement)|Standard|ISO20022 BM ()
    common:Agreement TradeClearingProcedureCustomerAgreementReference?;
    # An unique reference to an item or an occurrence of Trade Clearing Procedure ||
    # |
    common:procedure TradeClearingProcedureReference?;
};

public type MarketTradeOutTradeResolutionOk record {|
    *http:Ok;
    MarketTradeOutTradeResolution body;
|};

public type MarketTradeSettlementInitiationOk record {|
    *http:Ok;
    MarketTradeSettlementInitiation body;
|};

# A course of action for doing Market Trade Settlement Initiation Workstep in the context of executing the Market Trade Settlement Initiation Workstep
public type MarketTradeOutTradeResolution record {
    # The required status/situation and or tasks that need to be completed prior to the initiation of the workstep
    common:condition Preconditions?;
    # Reference to the customer who is involved in Trade Clearing Procedure ||
    # |
    common:involvedparty BusinessUnitorEmployeeReference?;
    # The schedule according to which the service provider will process the Trade Clearing Procedure ||
    # |
    common:schedule Schedule?;
    # The Market Trade Settlement Initiation Workstep specific Business Service
    common:businessservice BusinessService?;
    # The required status/situation and or tasks that need to be completed prior to the initiation of the workstep
    common:condition Postconditions?;
    # An unique reference to an item or an occurrence of Trade Clearing Procedure ||
    # |
    common:procedure TradeClearingProcedureReference?;
    # Reference to Market Trade Settlement Initiation Workstep
    common:workstep MarketTradeOutTradeResolutionWorkstepReference?;
    # The particular date and time point in the progression of time
    common:text MarketTradeOutTradeResolutionWorkstepType?;
};

# A course of action for doing Market Trade Settlement Initiation Workstep in the context of executing the Market Trade Settlement Initiation Workstep
public type MarketTradeFundsandSecurityAvailabilityAssurance record {
    # The required status/situation and or tasks that need to be completed prior to the initiation of the workstep
    common:condition Preconditions?;
    # Reference to the customer who is involved in Trade Clearing Procedure ||
    # |
    common:involvedparty BusinessUnitorEmployeeReference?;
    # The schedule according to which the service provider will process the Trade Clearing Procedure ||
    # |
    common:schedule Schedule?;
    # The Market Trade Settlement Initiation Workstep specific Business Service
    common:businessservice BusinessService?;
    # The required status/situation and or tasks that need to be completed prior to the initiation of the workstep
    common:condition Postconditions?;
    # An unique reference to an item or an occurrence of Trade Clearing Procedure ||
    # |
    common:procedure TradeClearingProcedureReference?;
    # Reference to Market Trade Settlement Initiation Workstep
    common:workstep MarketTradeFundsandSecurityAvailabilityAssuranceWorkstepReference?;
    # The particular date and time point in the progression of time
    common:text MarketTradeFundsandSecurityAvailabilityAssuranceWorkstepType?;
};

public type MarketTradeConfirmationOk record {|
    *http:Ok;
    MarketTradeConfirmation body;
|};
