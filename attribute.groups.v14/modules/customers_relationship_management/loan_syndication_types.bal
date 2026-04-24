import financial.bian.attribute.groups.common as common;

import ballerina/http;

public type SyndicatedLoanApplicationProcedureOk record {|
    *http:Ok;
    # body
    SyndicatedLoanApplicationProcedure body;
|};

# A Classification value that distinguishes between the type of transactions in Syndicated Loan Application Procedure.
public type Transactiontype record {
    # TransactionTypeName
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

# An unique reference to an item or an occurrence of Syndicated Loan Application Procedure.
public type Procedure record {
    # ProcedureType
    Proceduretypevalues ProcedureType?;
    # The date when the identifier became valid.
    common:Datetime ProcedureDateTime?;
    # Request to process Syndicated Loan Application Procedure.
    # ProcedureRequest
    common:Instruction ProcedureRequest?;
    # Timetable to process Syndicated Loan Application Procedure.
    # ProcedureSchedule
    common:Schedule ProcedureSchedule?;
    # ProcedureStatus
    common:Status ProcedureStatus?;
};

public type Proceduretypevalues record {
    # A Classification value that distinguishes between the type of process undertaken within Procedure
    string Proceduretypevalues?;
};

# A Classification value that distinguishes between the type of services in Syndicated Loan Application Procedure.
public type Servicetype record {
    # ServiceTypeName
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

# A Classification value that distinguishes between the type of process undertaken within Syndicated Loan Application Procedure.
public type Proceduretype record {
    # ProcedureTypeName
    common:Name ProcedureTypeName?;
    # ProcedureType
    Proceduretypevalues ProcedureType?;
};

# Complete work tasks following a defined procedure in support of general office activities and product and service delivery within Loan Syndication. 
public type SyndicatedLoanApplicationProcedure record {
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
    common:Featuretypevalues SyndicatedLoanApplicationProcedureParameterType?;
    # A selected optional business service as subject matter of Syndicated Loan Application Procedure.
    # SyndicatedLoanApplicationProcedureSelectedOption
    common:Feature SyndicatedLoanApplicationProcedureSelectedOption?;
    # Request to process Syndicated Loan Application Procedure.
    # SyndicatedLoanApplicationProcedureRequest
    common:Instruction SyndicatedLoanApplicationProcedureRequest?;
    # Timetable to process Syndicated Loan Application Procedure.
    # SyndicatedLoanApplicationProcedureSchedule
    common:Schedule SyndicatedLoanApplicationProcedureSchedule?;
    # SyndicatedLoanApplicationProcedureStatus
    common:Status SyndicatedLoanApplicationProcedureStatus?;
    # tReference to the organization or agency that issued the identifier (e.g., DMV, Passport Office).
    common:Involvedparty SyndicatedLoanApplicationProcedureAssociatedPartyReference?;
    # Reference to an entity that assigns and manages the identification.
    # tReference to the organization or agency that issued the identifier (e.g., DMV, Passport Office).
    common:Involvedparty SyndicatedLoanApplicationProcedureBusinessUnitReference?;
    # Reference to an entity that assigns and manages the identification.
    # tReference to the organization or agency that issued the identifier (e.g., DMV, Passport Office).
    common:Involvedparty SyndicatedLoanApplicationProcedureServiceProviderReference?;
    # Reference to the Financial Facility related to Syndicated Loan Application Procedure.
    # SyndicatedLoanApplicationProcedureFinancialFacilityReference
    common:FinancialFacility SyndicatedLoanApplicationProcedureFinancialFacilityReference?;
    # Reference to an entity that assigns and manages the identification.
    # tReference to the organization or agency that issued the identifier (e.g., DMV, Passport Office).
    common:Involvedparty SyndicatedLoanApplicationProcedureEmployeeReference?;
    # Reference to an entity that assigns and manages the identification.
    # tReference to the organization or agency that issued the identifier (e.g., DMV, Passport Office).
    common:Involvedparty SyndicatedLoanApplicationProcedureCustomerReference?;
    # A Classification value that distinguishes between the type of process undertaken within Syndicated Loan Application Procedure.
    # SyndicatedLoanApplicationProcedureType
    Proceduretype SyndicatedLoanApplicationProcedureType?;
    # Timetable to process Syndicated Loan Application Procedure.
    common:Schedule SyndicatedLoanApplicationProcedureServiceProviderSchedule?;
    # A Classification value that distinguishes between the type of services in Syndicated Loan Application Procedure.
    # SyndicatedLoanApplicationProcedureServiceType
    Servicetype SyndicatedLoanApplicationProcedureServiceType?;
    # A Classification value that distinguishes between the type of products/services related to Syndicated Loan Application Procedure.
    common:Bankingproducttype SyndicatedLoanApplicationProcedureProductandServiceType?;
    # Reference to the product or service that is related to Syndicated Loan Application Procedure.
    # SyndicatedLoanApplicationProcedureProductandServiceInstance
    common:Product SyndicatedLoanApplicationProcedureProductandServiceInstance?;
    # A Classification value that distinguishes between the type of transactions in Syndicated Loan Application Procedure.
    # SyndicatedLoanApplicationProcedureTransactionType
    Transactiontype SyndicatedLoanApplicationProcedureTransactionType?;
    # Reference to the transaction that is related to Syndicated Loan Application Procedure.
    common:Transaction SyndicatedLoanApplicationProcedureTransaction?;
    # Reference to the Financial Transaction Arrangement that is related to Syndicated Loan Application Procedure.
    # SyndicatedLoanApplicationProcedureFinancialTransactionArrangement
    common:Arrangement SyndicatedLoanApplicationProcedureFinancialTransactionArrangement?;
    # Reference to the Customer Agreement that is related to Syndicated Loan Application Procedure.
    # SyndicatedLoanApplicationProcedureCustomerAgreementReference
    common:Agreement SyndicatedLoanApplicationProcedureCustomerAgreementReference?;
    # An unique reference to an item or an occurrence of Syndicated Loan Application Procedure.
    # SyndicatedLoanApplicationProcedureReference
    Procedure SyndicatedLoanApplicationProcedureReference?;
};
