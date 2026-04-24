import financial.bian.attribute.groups.common as common;

import ballerina/http;

# A Classification value that distinguishes between the type of transactions in Processing Order Procedure.
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

public type Procedure record {
    # A Classification value that distinguishes between the type of process undertaken within Procedure
    Proceduretypevalues ProcedureType?;
    # The date when the identifier became valid.
    common:Datetime ProcedureDateTime?;
    # Request to process something (most refers to Asset Type)
    common:Instruction ProcedureRequest?;
    # Timetable to process something (most refers to the Asset Type)
    common:Schedule ProcedureSchedule?;
    # ProcedureStatus
    common:Status ProcedureStatus?;
};

public type ProcessingOrderProcedureOk record {|
    *http:Ok;
    # body
    ProcessingOrderProcedure body;
|};

# Complete work tasks following a defined procedure in support of general office activities and product and service delivery within Processing Order.
public type ProcessingOrderProcedure record {
    # A Classification value that distinguishes between Procedures according to the type of business services and/or type of concern defined within Processing Order Procedure.
    string ProcessingOrderProcedureParameterType?;
    # A selected optional business service as subject matter of Processing Order Procedure.
    common:Feature ProcessingOrderProcedureSelectedOption?;
    # Request to process something (most refers to Asset Type)
    common:Instruction ProcessingOrderProcedureRequest?;
    # Timetable to process something (most refers to the Asset Type)
    common:Schedule ProcessingOrderProcedureSchedule?;
    # ProcessingOrderProcedureStatus
    common:Status ProcessingOrderProcedureStatus?;
    # Reference to an entity that assigns and manages the identification.
    # tReference to the organization or agency that issued the identifier (e.g., DMV, Passport Office).
    common:Involvedparty ProcessingOrderProcedureAssociatedPartyReference?;
    # Reference to an entity that assigns and manages the identification.
    # tReference to the organization or agency that issued the identifier (e.g., DMV, Passport Office).
    common:Involvedparty ProcessingOrderProcedureBusinessUnitReference?;
    # Reference to an entity that assigns and manages the identification.
    # tReference to the organization or agency that issued the identifier (e.g., DMV, Passport Office).
    common:Involvedparty ProcessingOrderProcedureServiceProviderReference?;
    # Reference to the Financial Facility related to Processing Order Procedure.
    common:FinancialFacility ProcessingOrderProcedureFinancialFacilityReference?;
    # Reference to an entity that assigns and manages the identification.
    # tReference to the organization or agency that issued the identifier (e.g., DMV, Passport Office).
    common:Involvedparty ProcessingOrderProcedureEmployeeReference?;
    # Reference to an entity that assigns and manages the identification.
    # tReference to the organization or agency that issued the identifier (e.g., DMV, Passport Office).
    common:Involvedparty ProcessingOrderProcedureCustomerReference?;
    # A Classification value that distinguishes between the type of process undertaken within Processing Order Procedure.
    Proceduretype ProcessingOrderProcedureType?;
    # Timetable to process something (most refers to the Asset Type)
    common:Schedule ProcessingOrderProcedureServiceProviderSchedule?;
    # A Classification value that distinguishes between the type of services in Processing Order Procedure.
    Servicetype ProcessingOrderProcedureServiceType?;
    # A Classification value that distinguishes between the type of products/services related to Processing Order Procedure.
    common:Bankingproducttype ProcessingOrderProcedureProductandServiceType?;
    # Reference to the product or service that is related to Processing Order Procedure.
    common:Product ProcessingOrderProcedureProductandServiceInstance?;
    # A Classification value that distinguishes between the type of transactions in Processing Order Procedure.
    Transactiontype ProcessingOrderProcedureTransactionType?;
    # Reference to the transaction that is related to Processing Order Procedure.
    common:Transaction ProcessingOrderProcedureTransaction?;
    # Reference to the Financial Transaction Arrangement that is related to Processing Order Procedure.
    common:Arrangement ProcessingOrderProcedureFinancialTransactionArrangement?;
    # Reference to the Customer Agreement that is related to Processing Order Procedure.
    common:Agreement ProcessingOrderProcedureCustomerAgreementReference?;
    # ProcessingOrderProcedureReference
    Procedure ProcessingOrderProcedureReference?;
};

# A Classification value that distinguishes between the type of process undertaken within Account Reconciliation Procedure
public type Proceduretype record {
    # The name of Condition
    common:Name ProcedureTypeName?;
    # A Classification value that distinguishes between the type of process undertaken within Procedure
    Proceduretypevalues ProcedureType?;
};

# A Classification value that distinguishes between the type of process undertaken within Procedure
public type Proceduretypevalues record {
    # A Classification value that distinguishes between the type of process undertaken within Procedure
    string Proceduretypevalues?;
};

# A Classification value that distinguishes between the type of services in Processing Order Procedure.
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
