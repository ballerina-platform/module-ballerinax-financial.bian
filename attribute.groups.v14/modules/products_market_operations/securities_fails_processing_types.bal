import financial.bian.attribute.groups.common as common;

import ballerina/http;

public type SecurityTradingFailsProcedureOk record {|
    *http:Ok;
    SecurityTradingFailsProcedure body;
|};

public type SecuritiesFailAnalysisOk record {|
    *http:Ok;
    SecuritiesFailAnalysis body;
|};

# A course of action for doing Securities Fail Analysis Workstep in the context of executing the Securities Fail Analysis Workstep
public type SecuritiesFailDetermination record {
    # The required status/situation and or tasks that need to be completed prior to the initiation of the workstep
    common:condition Preconditions?;
    # Reference to the customer who is involved in Security Trading Fails Procedure ||
    # |
    common:involvedparty BusinessUnitorEmployeeReference?;
    # The schedule according to which the service provider will process the Security Trading Fails Procedure ||
    # |
    common:schedule Schedule?;
    # The Securities Fail Analysis Workstep specific Business Service
    common:businessservice BusinessService?;
    # The required status/situation and or tasks that need to be completed prior to the initiation of the workstep
    common:condition Postconditions?;
    # An unique reference to an item or an occurrence of Security Trading Fails Procedure ||
    # |
    common:procedure SecurityTradingFailsProcedureReference?;
    # Reference to Securities Fail Analysis Workstep
    common:workstep SecuritiesFailDeterminationWorkstepReference?;
    # The particular date and time point in the progression of time
    common:text SecuritiesFailDeterminationWorkstepType?;
};

# Complete work tasks following a defined procedure in support of general office activities and product and service delivery within Securities Fails Processing. 
public type SecurityTradingFailsProcedure record {
    # A Classification value that distinguishes between Procedures according to the type of business services and/or type of concern defined within Security Trading Fails Procedure ||
    # |
    common:featuretypevalues SecurityTradingFailsProcedureParameterType?;
    # A selected optional business service as subject matter of Security Trading Fails Procedure ||
    # |
    common:feature SecurityTradingFailsProcedureSelectedOption?;
    # Request to process Security Trading Fails Procedure ||
    # |
    common:Instruction SecurityTradingFailsProcedureRequest?;
    # The schedule according to which the service provider will process the Security Trading Fails Procedure ||
    # |
    common:schedule SecurityTradingFailsProcedureSchedule?;
    # The status of Security Trading Fails Procedure Status |Status  (https://www.iso20022.org/standardsrepository/type/Status)|Standard|ISO20022 BM ()
    common:status SecurityTradingFailsProcedureStatus?;
    # Reference to the customer who is involved in Security Trading Fails Procedure ||
    # |
    common:involvedparty SecurityTradingFailsProcedureAssociatedPartyReference?;
    # Reference to the customer who is involved in Security Trading Fails Procedure ||
    # |
    common:involvedparty SecurityTradingFailsProcedureBusinessUnitReference?;
    # Reference to the customer who is involved in Security Trading Fails Procedure ||
    # |
    common:involvedparty SecurityTradingFailsProcedureServiceProviderReference?;
    # Reference to the Financial Facility related to Security Trading Fails Procedure ||
    # |
    common:FinancialFacility SecurityTradingFailsProcedureFinancialFacilityReference?;
    # Reference to the customer who is involved in Security Trading Fails Procedure ||
    # |
    common:involvedparty SecurityTradingFailsProcedureEmployeeReference?;
    # Reference to the customer who is involved in Security Trading Fails Procedure ||
    # |
    common:involvedparty SecurityTradingFailsProcedureCustomerReference?;
    # A Classification value that distinguishes between the type of process undertaken within Security Trading Fails Procedure ||
    # |
    common:proceduretype SecurityTradingFailsProcedureType?;
    # The schedule according to which the service provider will process the Security Trading Fails Procedure ||
    # |
    common:schedule SecurityTradingFailsProcedureServiceProviderSchedule?;
    # A Classification value that distinguishes between the type of services in Security Trading Fails Procedure ||
    # |
    common:servicetype SecurityTradingFailsProcedureServiceType?;
    # A Classification value that distinguishes between the type of products/services related to Security Trading Fails Procedure ||
    # |
    common:Bankingproducttype SecurityTradingFailsProcedureProductandServiceType?;
    # Reference to the product or service that is related to Security Trading Fails Procedure Product_x000D_
    # |Product (https://www.iso20022.org/standardsrepository/type/Product)|Standard|ISO20022 BM ()
    common:bankingproduct SecurityTradingFailsProcedureProductandServiceInstance?;
    # A Classification value that distinguishes between the type of transactions in Security Trading Fails Procedure ||
    # |
    common:transactiontype SecurityTradingFailsProcedureTransactionType?;
    # Reference to the transaction that is related to Security Trading Fails Procedure ObligationFulfilment|ObligationFulfilment (https://www.iso20022.org/standardsrepository/type/ObligationFulfilment)|Standard|ISO20022 BM ()
    'common:Transaction SecurityTradingFailsProcedureTransaction?;
    # Reference to the Financial Transaction Arrangement that is related to Security Trading Fails Procedure Obligation|Obligation (https://www.iso20022.org/standardsrepository/type/Obligation)|Standard|ISO20022 BM ()
    common:Arrangement SecurityTradingFailsProcedureFinancialTransactionArrangement?;
    # Reference to the Customer Agreement that is related to Security Trading Fails Procedure Agreement_x000D_
    # |Agreement (https://www.iso20022.org/standardsrepository/type/Agreement)|Standard|ISO20022 BM ()
    common:Agreement SecurityTradingFailsProcedureCustomerAgreementReference?;
    # An unique reference to an item or an occurrence of Security Trading Fails Procedure ||
    # |
    common:procedure SecurityTradingFailsProcedureReference?;
};

# A course of action for doing Securities Fail Analysis Workstep in the context of executing the Securities Fail Analysis Workstep
public type SecuritiesFailAnalysis record {
    # The required status/situation and or tasks that need to be completed prior to the initiation of the workstep
    common:condition Preconditions?;
    # Reference to the customer who is involved in Security Trading Fails Procedure ||
    # |
    common:involvedparty BusinessUnitorEmployeeReference?;
    # The schedule according to which the service provider will process the Security Trading Fails Procedure ||
    # |
    common:schedule Schedule?;
    # The Securities Fail Analysis Workstep specific Business Service
    common:businessservice BusinessService?;
    # The required status/situation and or tasks that need to be completed prior to the initiation of the workstep
    common:condition Postconditions?;
    # An unique reference to an item or an occurrence of Security Trading Fails Procedure ||
    # |
    common:procedure SecurityTradingFailsProcedureReference?;
    # Reference to Securities Fail Analysis Workstep
    common:workstep SecuritiesFailAnalysisWorkstepReference?;
    # The particular date and time point in the progression of time
    common:text SecuritiesFailAnalysisWorkstepType?;
};
