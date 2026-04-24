import financial.bian.attribute.groups.common as common;

import ballerina/http;

# A Classification value that distinguishes between the type of transactions in Document Service Procedure
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

# >
# * `DueDate` - 
# * `ExecutionDate` - 
# * `FulfillmentDate` - 

public type DocumentServiceProcedureOk record {|
    *http:Ok;
    # body
    DocumentServiceProcedure body;
|};

# >
# * `PaymentInstruction` - 
# * `DeliveryOrder` - 
# * `InformationRequest` - 
# * `ExchangeInstruction` - 
# * `AllocationInstruction` - 
# * `MaintenanceInstruction` - 

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

public type DocumentInvolvement record {
    # >
    # * `DocumentCapturer` - Party that captures a document.
    # * `DocumentIssuer` - Party that issues a document. 
    # * `DocumentResponsibleParty` - Identification of the party who is responsible for the certificate. ISO20022
    # * `DocumentSignatory` - Person who binds himself or herself, or the entity he or she is authorized to represent, by his or her signature on the document. ISO20022
    # * `DocumentNotifyingParty` - Identifies the party that notifies the content of a document to a third party. ISO20022
    # * `DocumentCheckingParty` - Identification of the person who checked the document and/or the signature. ISO20022
    # * `DocumentValidatingParty` - Identification of the person who validated the signature. ISO20022
    Documentinvolvementtypevalues DocumentInvolvementType?;
    # Reference to the document that is managed by Document Service Procedure
    common:Document DocumentReference?;
    # An external agency used to perform a document service
    common:Party PartyReference?;
    string PartyRoleType?;
    common:Name PartyRoleName?;
    # Period of time during which the status is valid.
    common:Datetimeperiod PartyRoleValidityPeriod?;
    # >
    # * `AgreementInvolvement` - 
    # * `PartyInvolvement` - 
    # * `ArrangementInvolvement` - 
    # * `DesignSpecificationInvolvement` - 
    # * `RelationshipInvolvement` - 
    # * `LocationInvolvement` - 
    # * `BankGuaranteeInvolvement` - 
    common:Partyinvolvementtypevalues PartyInvolvementType?;
};

# Complete work tasks following a defined procedure in support of general office activities and product and service delivery within Document Services. 
public type DocumentServiceProcedure record {
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
    common:Featuretypevalues DocumentServiceProcedureParameterType?;
    # A selected optional business service as subject matter of Document Service Procedure
    common:Feature DocumentServiceProcedureSelectedOption?;
    # Request to process something (most refers to Asset Type)
    common:Instruction DocumentServiceProcedureRequest?;
    # Timetable to process something (most refers to the Asset Type)
    common:Schedule DocumentServiceProcedureSchedule?;
    # DocumentServiceProcedureStatus
    common:Status DocumentServiceProcedureStatus?;
    # Reference to an entity that assigns and manages the identification.
    # tReference to the organization or agency that issued the identifier (e.g., DMV, Passport Office).
    common:Involvedparty DocumentServiceProcedureAssociatedPartyReference?;
    # Reference to an entity that assigns and manages the identification.
    # tReference to the organization or agency that issued the identifier (e.g., DMV, Passport Office).
    common:Involvedparty DocumentServiceProcedureBusinessUnitReference?;
    # Reference to an entity that assigns and manages the identification.
    # tReference to the organization or agency that issued the identifier (e.g., DMV, Passport Office).
    common:Involvedparty DocumentServiceProcedureServiceProviderReference?;
    # Reference to the Financial Facility related to Document Service Procedure
    common:FinancialFacility DocumentServiceProcedureFinancialFacilityReference?;
    # Reference to an entity that assigns and manages the identification.
    # tReference to the organization or agency that issued the identifier (e.g., DMV, Passport Office).
    common:Involvedparty DocumentServiceProcedureEmployeeReference?;
    # Reference to an entity that assigns and manages the identification.
    # tReference to the organization or agency that issued the identifier (e.g., DMV, Passport Office).
    common:Involvedparty DocumentServiceProcedureCustomerReference?;
    # A Classification value that distinguishes between the type of process undertaken within Document Service Procedure
    Proceduretype DocumentServiceProcedureType?;
    # Timetable to process something (most refers to the Asset Type)
    common:Schedule DocumentServiceProcedureServiceProviderSchedule?;
    # A Classification value that distinguishes between the type of services in Document Service Procedure
    Servicetype DocumentServiceProcedureServiceType?;
    # A Classification value that distinguishes between the type of products/services related to Document Service Procedure
    common:Bankingproducttype DocumentServiceProcedureProductandServiceType?;
    # Reference to the product or service that is related to Document Service Procedure
    common:Product DocumentServiceProcedureProductandServiceInstance?;
    # A Classification value that distinguishes between the type of transactions in Document Service Procedure
    Transactiontype DocumentServiceProcedureTransactionType?;
    # Reference to the transaction that is related to Document Service Procedure
    common:Transaction DocumentServiceProcedureTransaction?;
    # Reference to the Financial Transaction Arrangement that is related to Document Service Procedure
    common:Arrangement DocumentServiceProcedureFinancialTransactionArrangement?;
    # Reference to the Customer Agreement that is related to Document Service Procedure
    common:Agreement DocumentServiceProcedureCustomerAgreementReference?;
    # DocumentServiceProcedureReference
    Procedure DocumentServiceProcedureReference?;
    # Reference to the document that is managed by Document Service Procedure
    common:Document DocumentServiceProcedureDocumentReference?;
    # Reference to the service offering Verification, Amendment, Update, Archiving of document.
    DocumentService DocumentServiceProcedureDocumentServiceReference?;
    # DocumentServiceProcedureDocumentInvolvedPartyReference
    DocumentInvolvement DocumentServiceProcedureDocumentInvolvedPartyReference?;
};

public type Proceduretypevalues record {
    # A Classification value that distinguishes between the type of process undertaken within Procedure
    string Proceduretypevalues?;
};

public type Documentinvolvementtypevalues "DocumentCapturer"|"DocumentIssuer"|"DocumentResponsibleParty"|"DocumentSignatory"|"DocumentNotifyingParty"|"DocumentCheckingParty"|"DocumentValidatingParty";

# A Classification value that distinguishes between the type of process undertaken within Document Service Procedure
public type Proceduretype record {
    # ProcedureTypeName
    common:Name ProcedureTypeName?;
    # A Classification value that distinguishes between the type of process undertaken within Procedure
    Proceduretypevalues ProcedureType?;
};

