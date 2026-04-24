import financial.bian.attribute.groups.common as common;

import ballerina/http;

# Reference to Production Issue Resolution Workstep
public type Workstep record {
    # WorkstepResult
    string WorkstepResult?;
    # A Classification value that distinguishes between the type of workstep undertaken within Procedure
    Worksteptypevalues WorkstepType?;
    # WorkstepDescription
    string WorkstepDescription?;
    # The date when the identifier became valid.
    common:Datetime WorkstepDateTime?;
    # WorkstepStatus
    common:Status WorkstepStatus?;
    # WorkstepWorkproduct
    common:Workproduct WorkstepWorkproduct?;
};

# A Classification value that distinguishes between the type of transactions in Servicing Issue Procedure
public type Transactiontype record {
    # The name of Condition
    common:Name TransactionTypeName?;
    # >
    # * `FinancialTransaction` - 
    # * `BusinessTransaction` - 
    # * `BankingTransaction` - 
    # * `AccountingTransaction` - 
    # * `BookingTransaction` - 
    # * `AllocationTransaction` - 
    # * `DeliveryTransaction` - 
    # * `ProductionTransaction` - 
    common:Transactiontypevalues TransactionType?;
};

# Reference to Production Issue Resolution Workstep
public type Procedure record {
    # A Classification value that distinguishes between the type of process undertaken within Procedure
    Proceduretypevalues ProcedureType?;
    # The date when the identifier became valid.
    common:Datetime ProcedureDateTime?;
    # Request to process something (most refers to Asset Type)
    common:Instruction ProcedureRequest?;
    # The timing and key actions/milestones making up the workstep
    common:Schedule ProcedureSchedule?;
    # ProcedureStatus
    common:Status ProcedureStatus?;
};

public type ProductionIssueResolutionOk record {|
    *http:Ok;
    # body
    ProductionIssueResolution body;
|};

# A course of action for doing Production Issue Resolution Workstep in the context of executing the Production Issue Resolution Workstep
public type ProductionIssueResolution record {
    # The required status/situation and or tasks that need to be completed prior to the initiation of the workstep
    common:Condition Preconditions?;
    # Reference to an entity that assigns and manages the identification.
    # tReference to the organization or agency that issued the identifier (e.g., DMV, Passport Office).
    common:Involvedparty BusinessUnitorEmployeeReference?;
    # The timing and key actions/milestones making up the workstep
    common:Schedule Schedule?;
    # The Production Issue Resolution Workstep specific Business Service
    common:BusinessService BusinessService?;
    # The required status/situation and or tasks that need to be completed prior to the initiation of the workstep
    common:Condition Postconditions?;
    # Reference to Production Issue Resolution Workstep
    Procedure ServicingIssueProcedureReference?;
    # Reference to Production Issue Resolution Workstep
    Workstep ProductionIssueResolutionWorkstepReference?;
    # The type of Production Issue Resolution Workstep
    string ProductionIssueResolutionWorkstepType?;
};

# Complete work tasks following a defined procedure in support of general office activities and product and service delivery within Servicing Issue. 
public type ServicingIssueProcedure record {
    # >
    # * `FeeFeature` - This refers to the functionality in a system or platform that manages, calculates, or displays fees associated with specific transactions or services.
    # * `InterestFeature` - This feature calculates and tracks interest earnings or charges on accounts, loans, or investments over time.
    # * `WithdrawalFeature` - The withdraw feature typically refers to an option or functionality that allows users to retrieve or remove something from a system or platform.
    # * `DepositFeature` - This refers to a functionality that allows users to add funds to an account or system, often by transferring money from another source.
    # * `SweepFeature` - 
    # * `LienFeature` - 
    # * `PaymentFeature` - This refers to the functionality that facilitates or tracks the transfer of funds for a purchase or settlement of dues.
    # * `RepaymentFeature` - This feature facilitates or manages the process of paying back borrowed funds, such as loans, credit card balances, or advances.
    # * `LimitFeature` - This feature sets, monitors, or enforces restrictions on the maximum amount that can be accessed, spent, or transacted within a system.
    # * `OverdraftFeature` - This functionality allows users to withdraw more money than what is available in their account balance, often up to a predefined limit.
    # * `StatementFeature` - The statement feature refers to a functionality in banking, finance, or digital platforms that provides users with a detailed record of their transactions or activities over a specific period.
    # * `CurrencyExchangeFeature` - This feature enables users to convert funds from one currency to another at prevailing exchange rates, often within financial or payment platforms.
    # * `PriceFeature` - This feature involves displaying or managing the price of goods, services, or financial instruments within a platform.
    common:Featuretypevalues ServicingIssueProcedureParameterType?;
    # A characteristic of service which refers 1) mainly to the function or condition of service. 2) to non-functional features like quality and security
    common:Feature ServicingIssueProcedureSelectedOption?;
    # Request to process something (most refers to Asset Type)
    common:Instruction ServicingIssueProcedureRequest?;
    # The timing and key actions/milestones making up the workstep
    common:Schedule ServicingIssueProcedureSchedule?;
    # ServicingIssueProcedureStatus
    common:Status ServicingIssueProcedureStatus?;
    # Reference to an entity that assigns and manages the identification.
    # tReference to the organization or agency that issued the identifier (e.g., DMV, Passport Office).
    common:Involvedparty ServicingIssueProcedureAssociatedPartyReference?;
    # Reference to an entity that assigns and manages the identification.
    # tReference to the organization or agency that issued the identifier (e.g., DMV, Passport Office).
    common:Involvedparty ServicingIssueProcedureBusinessUnitReference?;
    # Reference to an entity that assigns and manages the identification.
    # tReference to the organization or agency that issued the identifier (e.g., DMV, Passport Office).
    common:Involvedparty ServicingIssueProcedureServiceProviderReference?;
    # Reference to the Financial Facility related to Servicing Issue Procedure
    common:FinancialFacility ServicingIssueProcedureFinancialFacilityReference?;
    # Reference to an entity that assigns and manages the identification.
    # tReference to the organization or agency that issued the identifier (e.g., DMV, Passport Office).
    common:Involvedparty ServicingIssueProcedureEmployeeReference?;
    # Reference to an entity that assigns and manages the identification.
    # tReference to the organization or agency that issued the identifier (e.g., DMV, Passport Office).
    common:Involvedparty ServicingIssueProcedureCustomerReference?;
    # A Classification value that distinguishes between the type of process undertaken within Servicing Issue Procedure
    Proceduretype ServicingIssueProcedureType?;
    # The timing and key actions/milestones making up the workstep
    common:Schedule ServicingIssueProcedureServiceProviderSchedule?;
    # A Classification value that distinguishes between the type of services in Servicing Issue Procedure
    Servicetype ServicingIssueProcedureServiceType?;
    # A Classification value that distinguishes between the type of products/services related to Servicing Issue Procedure
    common:Bankingproducttype ServicingIssueProcedureProductandServiceType?;
    # Reference to the product or service that is related to Servicing Issue Procedure
    common:Product ServicingIssueProcedureProductandServiceInstance?;
    # A Classification value that distinguishes between the type of transactions in Servicing Issue Procedure
    Transactiontype ServicingIssueProcedureTransactionType?;
    # Reference to the transaction that is related to Servicing Issue Procedure
    common:Transaction ServicingIssueProcedureTransaction?;
    # Reference to the Financial Transaction Arrangement that is related to Servicing Issue Procedure
    common:Arrangement ServicingIssueProcedureFinancialTransactionArrangement?;
    # Reference to the Customer Agreement that is related to Servicing Issue Procedure
    common:Agreement ServicingIssueProcedureCustomerAgreementReference?;
    # Reference to Production Issue Resolution Workstep
    Procedure ServicingIssueProcedureReference?;
};

# A course of action for doing Production Issue Resolution Workstep in the context of executing the Production Issue Resolution Workstep
public type ProductionIssueAnalysis record {
    # The required status/situation and or tasks that need to be completed prior to the initiation of the workstep
    common:Condition Preconditions?;
    # Reference to an entity that assigns and manages the identification.
    # tReference to the organization or agency that issued the identifier (e.g., DMV, Passport Office).
    common:Involvedparty BusinessUnitorEmployeeReference?;
    # The timing and key actions/milestones making up the workstep
    common:Schedule Schedule?;
    # The Production Issue Resolution Workstep specific Business Service
    common:BusinessService BusinessService?;
    # The required status/situation and or tasks that need to be completed prior to the initiation of the workstep
    common:Condition Postconditions?;
    # Reference to Production Issue Resolution Workstep
    Procedure ServicingIssueProcedureReference?;
    # Reference to Production Issue Resolution Workstep
    Workstep ProductionIssueAnalysisWorkstepReference?;
    # The type of Production Issue Analysis Workstep
    string ProductionIssueAnalysisWorkstepType?;
};

# A course of action for doing Production Issue Resolution Workstep in the context of executing the Production Issue Resolution Workstep
public type ProductionIssueDetermination record {
    # The required status/situation and or tasks that need to be completed prior to the initiation of the workstep
    common:Condition Preconditions?;
    # Reference to an entity that assigns and manages the identification.
    # tReference to the organization or agency that issued the identifier (e.g., DMV, Passport Office).
    common:Involvedparty BusinessUnitorEmployeeReference?;
    # The timing and key actions/milestones making up the workstep
    common:Schedule Schedule?;
    # The Production Issue Resolution Workstep specific Business Service
    common:BusinessService BusinessService?;
    # The required status/situation and or tasks that need to be completed prior to the initiation of the workstep
    common:Condition Postconditions?;
    # Reference to Production Issue Resolution Workstep
    Procedure ServicingIssueProcedureReference?;
    # Reference to Production Issue Resolution Workstep
    Workstep ProductionIssueDeterminationWorkstepReference?;
    # The type of Production Issue Determination Workstep
    string ProductionIssueDeterminationWorkstepType?;
};

public type ServicingIssueProcedureOk record {|
    *http:Ok;
    # body
    ServicingIssueProcedure body;
|};

public type ProductionIssueAnalysisOk record {|
    *http:Ok;
    # body
    ProductionIssueAnalysis body;
|};

public type ProductionIssueDeterminationOk record {|
    *http:Ok;
    # body
    ProductionIssueDetermination body;
|};

# A Classification value that distinguishes between the type of process undertaken within Procedure
public type Proceduretypevalues record {
    # A Classification value that distinguishes between the type of process undertaken within Procedure
    string Proceduretypevalues?;
};

# A Classification value that distinguishes between the type of services in Servicing Issue Procedure
public type Servicetype record {
    # The name of Condition
    common:Name ServiceTypeName?;
    # >
    # * `ITService` - 
    # * `AdministrativeService` - 
    # * `SystemService` - 
    # * `FinancialService` - 
    # * `InformationService` - 
    # * `BusinessService` - 
    common:Servicetypevalues ServiceType?;
};

# A Classification value that distinguishes between the type of workstep undertaken within Procedure
public type Worksteptypevalues record {
    # A Classification value that distinguishes between the type of workstep undertaken within Procedure
    string Worksteptypevalues?;
};

# A Classification value that distinguishes between the type of process undertaken within Servicing Issue Procedure
public type Proceduretype record {
    # The name of Condition
    common:Name ProcedureTypeName?;
    # A Classification value that distinguishes between the type of process undertaken within Procedure
    Proceduretypevalues ProcedureType?;
};
