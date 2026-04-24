import financial.bian.attribute.groups.common as common;

import ballerina/http;

# Reference to the advisory service session
public type productagreement record {
    # The type of product agreement
    productagreementtypevalues ProductAgreementType?;
};

# >
# * `CurrentAccountAgreement` - 
# * `SavingsAccountAgreement` - 
# * `BrokeredProductAgreement` - 
# * `ConsumerLoanAgreement` - 
# * `MortgageLoanAgreement` - 
# * `DirectDebitServiceAgreement` - 
# * `TermDepositAgreement` - 
public type productagreementtypevalues "CurrentAccountAgreement"|"SavingsAccountAgreement"|"BrokeredProductAgreement"|"ConsumerLoanAgreement"|"MortgageLoanAgreement"|"DirectDebitServiceAgreement"|"TermDepositAgreement";

public type servicearrangementmodality record {
    common:Modalitytypevalues ServiceArrangementModalityType?;
};

# >
# * `Initiated` - 
# * `Executed` - 
# * `Cancelled` - 
# * `Confirmed` - 
# * `Suspended` - 
# * `Pending` - 
# * `Completed` - 
# * `Notified` - 
# * `Booked` - 
# * `Rejected` - 
public type transactionstatustypevalues "Initiated"|"Executed"|"Cancelled"|"Confirmed"|"Suspended"|"Pending"|"Completed"|"Notified"|"Booked"|"Rejected";

# The Date that the transaction has occurred or is planned to occur.
# A characteristic of transaction which refers to the LifecycleDate of transaction (e.g., initiated date, executed date, fulfillment date).
public type transactiondatetime record {
    # The date and time of the transaction
    common:datetime TransactionDate?;
    # The type of transaction date
    transactiondatetimetypevalues TransactionDateType?;
};

# >
# * `ExecutedDate` - 
# * `FulfillmentDate` - 
# * `InitiatedDate` - 
# * `CancelledDate` - 
# * `ApprovedDate` - 
# * `ValueDate` - 
# * `BookingDate` - 
public type transactiondatetimetypevalues "ExecutedDate"|"FulfillmentDate"|"InitiatedDate"|"CancelledDate"|"ApprovedDate"|"ValueDate"|"BookingDate";

# >
# * `FinancialTransaction` - 
# * `BusinessTransaction` - 
# * `BankingTransaction` - 
# * `AccountingTransaction` - 
# * `BookingTransaction` - 
# * `AllocationTransaction` - 
# * `DeliveryTransaction` - 
# * `ProductionTransaction` - 
public type transactiontypevalues "FinancialTransaction"|"BusinessTransaction"|"BankingTransaction"|"AccountingTransaction"|"BookingTransaction"|"AllocationTransaction"|"DeliveryTransaction"|"ProductionTransaction";

# A characteristic of transaction which refers to the LifecycleStatus of transaction (e.g., initiated, executed, confirmed, cancelled, etc.)
public type transactionstatus record {
    # The status of the transaction
    common:status TransactionStatus?;
    # The type of transaction status
    transactionstatustypevalues TransactionStatusType?;
};

# The developed prospectus for the ECM/DCM instrument, including agreed pricing strategy
public type prospect record {
    # The prospectus details
    string Prospect?;
};

# The product features/services available with a financical facility
public type Prospectus record {
    # Reference to the employee business unit
    common:BusinessUnit EmployeeBusinessUnitReference?;
    # Record of the prospectus work task
    common:text ProspectusWorkTaskRecord?;
    # Type of the prospectus work task
    common:text ProspectusWorkTaskType?;
    # Description of the prospectus work task
    common:text ProspectusWorkTaskDescription?;
    # Work products of the prospectus work task
    common:workproduct ProspectusWorkTaskWorkProducts?;
    # Reference to the document directory entry instance
    common:documentdirectoryentry DocumentDirectoryEntryInstanceReference?;
    # The prospectus information
    prospect Prospectus?;
};

# The product features/services available with a financical facility
public type Placement record {
    # Reference to the employee business unit
    common:BusinessUnit EmployeeBusinessUnitReference?;
    # List of prospects
    common:text ProspectList?;
    # Schedule for the placement roadshow
    common:schedule PlacementRoadshowSchedule?;
    # Record of the placement work task
    common:text PlacementWorkTaskRecord?;
    # Type of the placement work task
    common:text PlacementWorkTaskType?;
    # Description of the placement work task
    common:text PlacementWorkTaskDescription?;
    # Work products of the placement work task
    common:workproduct PlacementWorkTaskWorkProducts?;
    # Reference to the document directory entry instance
    common:documentdirectoryentry DocumentDirectoryEntryInstanceReference?;
    # The placement transaction
    'transaction PlacementTransaction?;
};

public type 'transaction record {
    common:identifier TransactionIdentification?;
    transactiondatetime TransactionDate?;
    transactiontypevalues TransactionType?;
    common:text TransactionDescription?;
    transactionstatus TransactionStatus?;
    common:name TransactionName?;
};

# The product features/services available with a financical facility
public type InstrumentDefinition record {
    # Reference to the employee business unit
    common:BusinessUnit EmployeeBusinessUnitReference?;
    # Record of the instrument definition work task
    common:text InstrumentDefinitionWorkTaskRecord?;
    # Type of the instrument definition work task
    common:text InstrumentDefinitionWorkTaskType?;
    # Description of the instrument definition work task
    common:text InstrumentDefinitionWorkTaskDescription?;
    # Work products of the instrument definition work task
    common:workproduct InstrumentDefinitionWorkTaskWorkProducts?;
    # Reference to the document directory entry instance
    common:documentdirectoryentry DocumentDirectoryEntryInstanceReference?;
    # The instrument definition specification
    common:text InstrumentDefinitionSpecification?;
};

# Fulfill any scheduled and ad-hoc obligations under a service arrangement, most typically for a financial product or facility within ECM And DCM.
public type ECMAndDCMFacility record {
    # Reference to the product instance
    productagreement ProductInstanceReference?;
    # Reference to the customer
    common:involvedparty CustomerReference?;
    # Reference to the bank branch location
    common:branchlocation BankBranchLocationReference?;
    # Reference to the business unit
    common:BusinessUnit BusinessUnitReference?;
    # Reference to the document directory entry instance
    common:documentdirectoryentry DocumentDirectoryEntryInstanceReference?;
    # Associations related to the facility
    common:involvedparty Associations?;
    # Type of the association
    string AssociationType?;
    # Obligation or entitlement of the association
    common:partyobligationorentitlement AssociationObligationEntitlement?;
    # Reference to the association
    common:involvedparty AssociationReference?;
    # Fulfillment schedule for ECM and DCM
    common:schedule ECMAndDCMFulfillmentSchedule?;
    # Type of the date
    common:datetimetypevalues DateType?;
    # The date
    common:datetime Date?;
    # Record of the ECM and DCM instrument
    common:text ECMAndDCMInstrumentRecord?;
};

public type ECMAndDCMFacilityOk record {|
    *http:Ok;
    ECMAndDCMFacility body;
|};
