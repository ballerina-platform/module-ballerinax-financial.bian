import financial.bian.attribute.groups.common as common;

import ballerina/http;

public type AssetValuationOk record {|
    *http:Ok;
    AssetValuation body;
|};

# A course of action for doing Asset Valuation Workstep in the context of executing the Asset Valuation Workstep
public type AssetValuation record {
    # The required status/situation and or tasks that need to be completed prior to the initiation of the workstep
    common:condition Preconditions?;
    # Reference to the customer who is involved in Market Asset Valuation Procedure ||
    # |
    common:involvedparty BusinessUnitorEmployeeReference?;
    # The schedule according to which the service provider will process the Market Asset Valuation Procedure ||
    # |
    common:schedule Schedule?;
    # The Asset Valuation Workstep specific Business Service
    common:businessservice BusinessService?;
    # The required status/situation and or tasks that need to be completed prior to the initiation of the workstep
    common:condition Postconditions?;
    # An unique reference to an item or an occurrence of Market Asset Valuation Procedure ||
    # |
    common:procedure MarketAssetValuationProcedureReference?;
    # Reference to Asset Valuation Workstep
    common:workstep AssetValuationWorkstepReference?;
    # The particular date and time point in the progression of time
    common:text AssetValuationWorkstepType?;
};

# Complete work tasks following a defined procedure in support of general office activities and product and service delivery within Financial Instrument Valuation. 
public type MarketAssetValuationProcedure record {
    # A Classification value that distinguishes between Procedures according to the type of business services and/or type of concern defined within Market Asset Valuation Procedure ||
    # |
    common:featuretypevalues MarketAssetValuationProcedureParameterType?;
    # A selected optional business service as subject matter of Market Asset Valuation Procedure ||
    # |
    common:feature MarketAssetValuationProcedureSelectedOption?;
    # Request to process Market Asset Valuation Procedure ||
    # |
    common:Instruction MarketAssetValuationProcedureRequest?;
    # The schedule according to which the service provider will process the Market Asset Valuation Procedure ||
    # |
    common:schedule MarketAssetValuationProcedureSchedule?;
    # The status of Market Asset Valuation Procedure Status |Status  (https://www.iso20022.org/standardsrepository/type/Status)|Standard|ISO20022 BM ()
    common:status MarketAssetValuationProcedureStatus?;
    # Reference to the customer who is involved in Market Asset Valuation Procedure ||
    # |
    common:involvedparty MarketAssetValuationProcedureAssociatedPartyReference?;
    # Reference to the customer who is involved in Market Asset Valuation Procedure ||
    # |
    common:involvedparty MarketAssetValuationProcedureBusinessUnitReference?;
    # Reference to the customer who is involved in Market Asset Valuation Procedure ||
    # |
    common:involvedparty MarketAssetValuationProcedureServiceProviderReference?;
    # Reference to the Financial Facility related to Market Asset Valuation Procedure ||
    # |
    common:FinancialFacility MarketAssetValuationProcedureFinancialFacilityReference?;
    # Reference to the customer who is involved in Market Asset Valuation Procedure ||
    # |
    common:involvedparty MarketAssetValuationProcedureEmployeeReference?;
    # Reference to the customer who is involved in Market Asset Valuation Procedure ||
    # |
    common:involvedparty MarketAssetValuationProcedureCustomerReference?;
    # A Classification value that distinguishes between the type of process undertaken within Market Asset Valuation Procedure ||
    # |
    common:proceduretype MarketAssetValuationProcedureType?;
    # The schedule according to which the service provider will process the Market Asset Valuation Procedure ||
    # |
    common:schedule MarketAssetValuationProcedureServiceProviderSchedule?;
    # A Classification value that distinguishes between the type of services in Market Asset Valuation Procedure ||
    # |
    common:servicetype MarketAssetValuationProcedureServiceType?;
    # A Classification value that distinguishes between the type of products/services related to Market Asset Valuation Procedure ||
    # |
    common:Bankingproducttype MarketAssetValuationProcedureProductandServiceType?;
    # Reference to the product or service that is related to Market Asset Valuation Procedure Product_x000D_
    # |Product (https://www.iso20022.org/standardsrepository/type/Product)|Standard|ISO20022 BM ()
    common:bankingproduct MarketAssetValuationProcedureProductandServiceInstance?;
    # A Classification value that distinguishes between the type of transactions in Market Asset Valuation Procedure ||
    # |
    common:transactiontype MarketAssetValuationProcedureTransactionType?;
    # Reference to the transaction that is related to Market Asset Valuation Procedure ObligationFulfilment|ObligationFulfilment (https://www.iso20022.org/standardsrepository/type/ObligationFulfilment)|Standard|ISO20022 BM ()
    'common:Transaction MarketAssetValuationProcedureTransaction?;
    # Reference to the Financial Transaction Arrangement that is related to Market Asset Valuation Procedure Obligation|Obligation (https://www.iso20022.org/standardsrepository/type/Obligation)|Standard|ISO20022 BM ()
    common:Arrangement MarketAssetValuationProcedureFinancialTransactionArrangement?;
    # Reference to the Customer Agreement that is related to Market Asset Valuation Procedure Agreement_x000D_
    # |Agreement (https://www.iso20022.org/standardsrepository/type/Agreement)|Standard|ISO20022 BM ()
    common:Agreement MarketAssetValuationProcedureCustomerAgreementReference?;
    # An unique reference to an item or an occurrence of Market Asset Valuation Procedure ||
    # |
    common:procedure MarketAssetValuationProcedureReference?;
};

public type MarketAssetValuationProcedureOk record {|
    *http:Ok;
    MarketAssetValuationProcedure body;
|};
