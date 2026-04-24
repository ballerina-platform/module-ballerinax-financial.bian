import financial.bian.attribute.groups.common as common;

import ballerina/http;

public type MarketTradeCashSettlementOk record {|
    *http:Ok;
    MarketTradeCashSettlement body;
|};

public type TradeSettlementProcedureOk record {|
    *http:Ok;
    TradeSettlementProcedure body;
|};

# A course of action for doing Market Trade Securities Settlement Workstep in the context of executing the Market Trade Securities Settlement Workstep
public type MarketTradeSecuritiesSettlement record {
    # The required status/situation and or tasks that need to be completed prior to the initiation of the workstep
    common:condition Preconditions?;
    # Reference to the customer who is involved in Trade Settlement Procedure ||
    # |
    common:involvedparty BusinessUnitorEmployeeReference?;
    # The schedule according to which the service provider will process the Trade Settlement Procedure ||
    # |
    common:schedule Schedule?;
    # The Market Trade Securities Settlement Workstep specific Business Service
    common:businessservice BusinessService?;
    # The required status/situation and or tasks that need to be completed prior to the initiation of the workstep
    common:condition Postconditions?;
    # An unique reference to an item or an occurrence of Trade Settlement Procedure ||
    # |
    common:procedure TradeSettlementProcedureReference?;
    # Reference to Market Trade Securities Settlement Workstep
    common:workstep MarketTradeSecuritiesSettlementWorkstepReference?;
    # The particular date and time point in the progression of time
    common:text MarketTradeSecuritiesSettlementWorkstepType?;
};

# A course of action for doing Market Trade Securities Settlement Workstep in the context of executing the Market Trade Securities Settlement Workstep
public type MarketTradeSettlementConfirmation record {
    # The required status/situation and or tasks that need to be completed prior to the initiation of the workstep
    common:condition Preconditions?;
    # Reference to the customer who is involved in Trade Settlement Procedure ||
    # |
    common:involvedparty BusinessUnitorEmployeeReference?;
    # The schedule according to which the service provider will process the Trade Settlement Procedure ||
    # |
    common:schedule Schedule?;
    # The Market Trade Securities Settlement Workstep specific Business Service
    common:businessservice BusinessService?;
    # The required status/situation and or tasks that need to be completed prior to the initiation of the workstep
    common:condition Postconditions?;
    # An unique reference to an item or an occurrence of Trade Settlement Procedure ||
    # |
    common:procedure TradeSettlementProcedureReference?;
    # Reference to Market Trade Securities Settlement Workstep
    common:workstep MarketTradeSettlementConfirmationWorkstepReference?;
    # The particular date and time point in the progression of time
    common:text MarketTradeSettlementConfirmationWorkstepType?;
};

# Complete work tasks following a defined procedure in support of general office activities and product and service delivery within Trade Settlement. 
public type TradeSettlementProcedure record {
    # A Classification value that distinguishes between Procedures according to the type of business services and/or type of concern defined within Trade Settlement Procedure ||
    # |
    common:featuretypevalues TradeSettlementProcedureParameterType?;
    # A selected optional business service as subject matter of Trade Settlement Procedure ||
    # |
    common:feature TradeSettlementProcedureSelectedOption?;
    # Request to process Trade Settlement Procedure ||
    # |
    common:Instruction TradeSettlementProcedureRequest?;
    # The schedule according to which the service provider will process the Trade Settlement Procedure ||
    # |
    common:schedule TradeSettlementProcedureSchedule?;
    # The status of Trade Settlement Procedure Status |Status  (https://www.iso20022.org/standardsrepository/type/Status)|Standard|ISO20022 BM ()
    common:status TradeSettlementProcedureStatus?;
    # Reference to the customer who is involved in Trade Settlement Procedure ||
    # |
    common:involvedparty TradeSettlementProcedureAssociatedPartyReference?;
    # Reference to the customer who is involved in Trade Settlement Procedure ||
    # |
    common:involvedparty TradeSettlementProcedureBusinessUnitReference?;
    # Reference to the customer who is involved in Trade Settlement Procedure ||
    # |
    common:involvedparty TradeSettlementProcedureServiceProviderReference?;
    # Reference to the Financial Facility related to Trade Settlement Procedure ||
    # |
    common:FinancialFacility TradeSettlementProcedureFinancialFacilityReference?;
    # Reference to the customer who is involved in Trade Settlement Procedure ||
    # |
    common:involvedparty TradeSettlementProcedureEmployeeReference?;
    # Reference to the customer who is involved in Trade Settlement Procedure ||
    # |
    common:involvedparty TradeSettlementProcedureCustomerReference?;
    # A Classification value that distinguishes between the type of process undertaken within Trade Settlement Procedure ||
    # |
    common:proceduretype TradeSettlementProcedureType?;
    # The schedule according to which the service provider will process the Trade Settlement Procedure ||
    # |
    common:schedule TradeSettlementProcedureServiceProviderSchedule?;
    # A Classification value that distinguishes between the type of services in Trade Settlement Procedure ||
    # |
    common:servicetype TradeSettlementProcedureServiceType?;
    # A Classification value that distinguishes between the type of products/services related to Trade Settlement Procedure ||
    # |
    common:Bankingproducttype TradeSettlementProcedureProductandServiceType?;
    # Reference to the product or service that is related to Trade Settlement Procedure Product_x000D_
    # |Product (https://www.iso20022.org/standardsrepository/type/Product)|Standard|ISO20022 BM ()
    common:bankingproduct TradeSettlementProcedureProductandServiceInstance?;
    # A Classification value that distinguishes between the type of transactions in Trade Settlement Procedure ||
    # |
    common:transactiontype TradeSettlementProcedureTransactionType?;
    # Reference to the transaction that is related to Trade Settlement Procedure ObligationFulfilment|ObligationFulfilment (https://www.iso20022.org/standardsrepository/type/ObligationFulfilment)|Standard|ISO20022 BM ()
    'common:Transaction TradeSettlementProcedureTransaction?;
    # Reference to the Financial Transaction Arrangement that is related to Trade Settlement Procedure Obligation|Obligation (https://www.iso20022.org/standardsrepository/type/Obligation)|Standard|ISO20022 BM ()
    common:Arrangement TradeSettlementProcedureFinancialTransactionArrangement?;
    # Reference to the Customer Agreement that is related to Trade Settlement Procedure Agreement_x000D_
    # |Agreement (https://www.iso20022.org/standardsrepository/type/Agreement)|Standard|ISO20022 BM ()
    common:Agreement TradeSettlementProcedureCustomerAgreementReference?;
    # An unique reference to an item or an occurrence of Trade Settlement Procedure ||
    # |
    common:procedure TradeSettlementProcedureReference?;
};

public type MarketTradeSettlementConfirmationOk record {|
    *http:Ok;
    MarketTradeSettlementConfirmation body;
|};

public type MarketTradeSecuritiesSettlementOk record {|
    *http:Ok;
    MarketTradeSecuritiesSettlement body;
|};

# A course of action for doing Market Trade Securities Settlement Workstep in the context of executing the Market Trade Securities Settlement Workstep
public type MarketTradeCashSettlement record {
    # The required status/situation and or tasks that need to be completed prior to the initiation of the workstep
    common:condition Preconditions?;
    # Reference to the customer who is involved in Trade Settlement Procedure ||
    # |
    common:involvedparty BusinessUnitorEmployeeReference?;
    # The schedule according to which the service provider will process the Trade Settlement Procedure ||
    # |
    common:schedule Schedule?;
    # The Market Trade Securities Settlement Workstep specific Business Service
    common:businessservice BusinessService?;
    # The required status/situation and or tasks that need to be completed prior to the initiation of the workstep
    common:condition Postconditions?;
    # An unique reference to an item or an occurrence of Trade Settlement Procedure ||
    # |
    common:procedure TradeSettlementProcedureReference?;
    # Reference to Market Trade Securities Settlement Workstep
    common:workstep MarketTradeCashSettlementWorkstepReference?;
    # The particular date and time point in the progression of time
    common:text MarketTradeCashSettlementWorkstepType?;
};
