import ballerina/http;
import financial.bian.attribute.groups.common as common;

# A collection of one or more clerical routines that are to be followed to administer the operational unit/function
#
# Examples: Time-sheet recording
public type PeakLoad record {
    # Tracked activity and performance statistics used to manage the contact center resource assignments and menu configuration
    string ContactCenterServiceStatistics?;
    # The type of activity that is tracked and analyze (e.g. wait time, average handle time, dropped call ratio, resolution rate)
    string ContactCenterServiceStatisticType?;
    # The task undertaken to address a detected peak load condition
    common:Task PeakLoadResponseTask?;
    # The type of response (e.g. staff reassignment)
    string PeakLoadResponseTaskType?;
    # Description of the action taken and impact to service performance
    string PeakLoadResponseDescription?;
};

public type AssignmentOk record {|
    *http:Ok;
    # body
    common:Assignment body;
|};

# Handle and assign the day to day activities, capture time, costs and income for an operational unit within Contact Center Operations. 
public type ContactCenterAdministrativePlan record {
    # The default contact center operational configuration as defined by Contact Center Management (Note this can include some latitude for position assignment changes to be made during day to day operations by this service domain)
    common:Arrangement ContactCenterServiceOperatingConfiguration?;
    # Planned and actual servicing activity at the position during the session (records inbound contact details and allows for pre-assigned servicing actions e.g. outbound customer contacts for issue resolution/sales)
    common:Schedule CustomerServicingRepresentativeAllocationSchedule?;
    # Reference to the servicing representative
    common:Involvedparty CustomerServicingRepresentativeReference?;
    # Reference to the servicing representative
    common:Involvedparty CustomerServicingRepresentativeRecord?;
    # Details any specific properties for the assigned servicing position (e.g. type of product/service covered, required qualifications/certifications/experience)
    common:Profile CustomerServicingRepresentativeQualificationProfile?;
    # Reference to the locations the customer servicing representative can work from (can include remote working arrangements and time zone availability)
    common:Address CustomerServicingRepresentativeLocation?;
    # Planned and actual servicing activity at the position during the session (records inbound contact details and allows for pre-assigned servicing actions e.g. outbound customer contacts for issue resolution/sales)
    common:Schedule CustomerServicingRepresentativeAvailabilitySchedule?;
    # The tracked status (e.g. under construction or repair, inhabited, vacant).
    common:Status CustomerServicingRepresentativeStatus?;
    # A collection of one or more clerical routines that are to be followed to administer the operational unit/function
    #
    # Examples: Time-sheet recording
    common:Assignment CustomerServicingRepresentativeAssignmentRecord?;
};

public type ContactCenterAdministrativePlanOk record {|
    *http:Ok;
    # body
    ContactCenterAdministrativePlan body;
|};

# The collection of operational serivces/functions offered by the operational facility
#
# Examples: messages, capture, routines
public type Automated record {
    # The business unit responsible for the automated service
    common:BusinessUnit BusinessUnitReference?;
};

# The collection of operational serivces/functions offered by the operational facility
#
# Examples: messages, capture, routines
public type Interaction record {
    # Reference to a customer contact session interaction log for the customer contacts handled at the position
    string CustomerSessionDialogueReference?;
};

# Operate equipment and/or a largely automated facility within Point of Service. 
public type PointofServiceOperatingSession record {
    # Defines how the servicing position is set-up in terms of supporting functions and application connections
    common:Arrangement ServicingPositionConfigurationSet\-up?;
    # Reference to the servicing position, used to route customer contacts
    common:Position ServicingPositionReference?;
    # >
    # * `Balance/Cashflow` - 
    # * `CreditPosition` - 
    # * `CollateralPosition` - 
    # * `SecurityPosition` - 
    common:Positiontypevalues ServicingPositionType?;
    # The physical address/location of the position, branch reference etc.
    common:Address ServicingPositionLocation?;
    # The type of function supported at the POS  (e.g. customer servicing, FX, teller services, commissions)
    string ServicingPositionFacilityType?;
    # Reference to the facilities and applications available/supporting the POS  (e.g. customer servicing, FX, teller services, commissions)
    common:FinancialFacility ServicingPositionFacilityReference?;
    # The schedule of past and planned customer contacts
    common:Schedule ServicingPositionSchedule?;
    # Log of the activities during the session
    common:Report ServicingPositionActivityReport?;
    # Service activity statistics that are maintained during the session  (e.g. average contact time, wait time, service utilization, facility usage)
    string ServicingPositionOperatingSessionStatistics?;
    # >
    # * `FinancialReport` - 
    # * `BusinessReport` - 
    # * `ManagementReport` - 
    # * `Statement` - 
    # * `MaintenanceReport` - 
    # * `RegulatoryReport` - 
    # * `TaxReport` - 
    # * `AnalysisReport` - 
    common:Reporttypevalues ServicingPositionOperatingSessionReportType?;
    # Log of the activities during the session
    common:Report ServicingPositionOperatingSessionReport?;
};

public type AssistedOk record {|
    *http:Ok;
    # body
    Assisted body;
|};

# The collection of operational serivces/functions offered by the operational facility
#
# Examples: messages, capture, routines
public type Assisted record {
    # Reference to an entity that assigns and manages the identification.
    # tReference to the organization or agency that issued the identifier (e.g., DMV, Passport Office).
    common:Involvedparty EmployeeorBusinessUnitReference?;
    # Reference to the contact record reference for the serviced customer
    common:CustomerContact CustomerContactReference?;
};

# The collection of operational serivces/functions offered by the operational facility
#
# Examples: messages, capture, routines
public type Inventory record {
    # The type of non-cash inventory (e.g. documents/forms, brochures)
    string ServicingInventoryType?;
    # Used to track inventory holdings at the position
    string ServicingPositionInventoryRecord?;
    # Details of the transfer of inventory (e.g. documents issued)
    common:Transaction ServicingInventoryTransactionRecord?;
};

# The collection of operational serivces/functions offered by the operational facility
#
# Examples: messages, capture, routines
public type CashPosition record {
    # The currency being tracked
    common:Currencycode ServicingCurrency?;
    # The current holding by currency/instrument
    string ServicingCashHoldingRecord?;
    # Details of the transfer of inventory (e.g. documents issued)
    common:Transaction ServicingCashTransactionReference?;
    # Details of the transfer of inventory (e.g. documents issued)
    common:Transaction ServicingCashTransactionRecord?;
    # The link to the account product instance used to effect payments from the position
    common:ProductAgreement ProductInstanceReference?;
};

public type PointofServiceOperatingSessionOk record {|
    *http:Ok;
    # body
    PointofServiceOperatingSession body;
|};

public type AutomatedOk record {|
    *http:Ok;
    # body
    Automated body;
|};

# Capture and maintain reference information about some type of entitity within Service Directory.
public type ServiceDirectoryEntry record {
    # Documentation of Service Directory Entry
    string ServiceDirectoryEntryDescription?;
    # The schedule and timing for which the property value is valid
    common:Schedule ServiceDirectoryEntrySchedule?;
    # The version of Service Directory Entry
    string ServiceDirectoryEntryVersion?;
    # ServiceDirectoryEntryStatus
    common:Status ServiceDirectoryEntryStatus?;
    # Reference to the log of (usage) ativities/events  of Service Directory Entry
    common:Log ServiceDirectoryEntryUsageLog?;
    # Reference to the log of (usage) ativities/events  of Service Directory Entry
    common:Log ServiceDirectoryEntryUpdateLog?;
    # The configuration of Service Directory Entry
    string ServiceDirectoryEntryServiceConfiguration?;
    # ServiceDirectoryEntryReference
    DirectoryEntry ServiceDirectoryEntryReference?;
    # Reference to an entity that assigns and manages the identification.
    # tReference to the organization or agency that issued the identifier (e.g., DMV, Passport Office).
    common:Involvedparty CustomerReference?;
    # Reference to a Service
    common:Service ServiceReference?;
};

public type RelationshipServicingOk record {|
    *http:Ok;
    # body
    RelationshipServicing body;
|};

public type ProductAccessServicingOk record {|
    *http:Ok;
    # body
    ProductAccessServicing body;
|};

# The Access Control Servicing Properties properties that represent a discrete aspect of the Access Control Servicing Properties
public type ServiceDeliveryServicing record {
    # The required status/situation before the property is valid/meaningful
    common:Condition Preconditions?;
    # The schedule and timing for which the property value is valid
    common:Schedule Schedule?;
    # The version reference for the property value
    string VersionNumber?;
    # The Access Control Servicing Properties specific  Business Service
    common:BusinessService BusinessService?;
    # The identifier of Condition
    common:Identifier ServiceDirectoryEntryReference?;
    # The identifier of Condition
    common:Identifier ServiceDeliveryServicingReference?;
    # The type of Service Delivery Servicing Properties
    string ServiceDeliveryServicingType?;
};

public type SalesServicingOk record {|
    *http:Ok;
    # body
    SalesServicing body;
|};

public type ArrangementServicingOk record {|
    *http:Ok;
    # body
    ArrangementServicing body;
|};

# The Access Control Servicing Properties properties that represent a discrete aspect of the Access Control Servicing Properties
public type ArrangementServicing record {
    # The required status/situation before the property is valid/meaningful
    common:Condition Preconditions?;
    # The schedule and timing for which the property value is valid
    common:Schedule Schedule?;
    # The version reference for the property value
    string VersionNumber?;
    # The Access Control Servicing Properties specific  Business Service
    common:BusinessService BusinessService?;
    # The identifier of Condition
    common:Identifier ServiceDirectoryEntryReference?;
    # The identifier of Condition
    common:Identifier ArrangementServicingReference?;
    # The type of Arrangement Servicing Properties
    string ArrangementServicingType?;
};

# The Access Control Servicing Properties properties that represent a discrete aspect of the Access Control Servicing Properties
public type AccessControlServicing record {
    # The required status/situation before the property is valid/meaningful
    common:Condition Preconditions?;
    # The schedule and timing for which the property value is valid
    common:Schedule Schedule?;
    # The version reference for the property value
    string VersionNumber?;
    # The Access Control Servicing Properties specific  Business Service
    common:BusinessService BusinessService?;
    # The identifier of Condition
    common:Identifier ServiceDirectoryEntryReference?;
    # The identifier of Condition
    common:Identifier AccessControlServicingReference?;
    # The type of Access Control Servicing Properties
    string AccessControlServicingPropertiesType?;
};

public type AccessControlServicingOk record {|
    *http:Ok;
    # body
    AccessControlServicing body;
|};

# The Access Control Servicing Properties properties that represent a discrete aspect of the Access Control Servicing Properties
public type RelationshipServicing record {
    # The required status/situation before the property is valid/meaningful
    common:Condition Preconditions?;
    # The schedule and timing for which the property value is valid
    common:Schedule Schedule?;
    # The version reference for the property value
    string VersionNumber?;
    # The Access Control Servicing Properties specific  Business Service
    common:BusinessService BusinessService?;
    # The identifier of Condition
    common:Identifier ServiceDirectoryEntryReference?;
    # The identifier of Condition
    common:Identifier RelationshipServicingReference?;
    # The type of Relationship Servicing Properties
    string RelationshipServicingType?;
};

public type DirectoryEntry record {
    # >
    # * `OpenDate` - 
    # * `RefreshDate` - 
    common:Directoryentrydatetypevalues DirectoryEntryDateType?;
    # DirectoryEntryDate
    common:Date DirectoryEntryDate?;
    # DirectoryEntryStatus
    common:Status DirectoryEntryStatus?;
};

public type ServiceDeliveryServicingOk record {|
    *http:Ok;
    # body
    ServiceDeliveryServicing body;
|};

# The Access Control Servicing Properties properties that represent a discrete aspect of the Access Control Servicing Properties
public type SalesServicing record {
    # The required status/situation before the property is valid/meaningful
    common:Condition Preconditions?;
    # The schedule and timing for which the property value is valid
    common:Schedule Schedule?;
    # The version reference for the property value
    string VersionNumber?;
    # The Access Control Servicing Properties specific  Business Service
    common:BusinessService BusinessService?;
    # The identifier of Condition
    common:Identifier ServiceDirectoryEntryReference?;
    # The identifier of Condition
    common:Identifier SalesServicingReference?;
    # The type of Sales Servicing Properties
    string SalesServicingPropertiesType?;
};

# The Access Control Servicing Properties properties that represent a discrete aspect of the Access Control Servicing Properties
public type ProductAccessServicing record {
    # The required status/situation before the property is valid/meaningful
    common:Condition Preconditions?;
    # The schedule and timing for which the property value is valid
    common:Schedule Schedule?;
    # The version reference for the property value
    string VersionNumber?;
    # The Access Control Servicing Properties specific  Business Service
    common:BusinessService BusinessService?;
    # The identifier of Condition
    common:Identifier ServiceDirectoryEntryReference?;
    # The identifier of Condition
    common:Identifier ProductAccessServicingReference?;
    # The type of Product Access Servicing Properties
    string ProductAccessServicingType?;
};

public type ServiceDirectoryEntryOk record {|
    *http:Ok;
    # body
    ServiceDirectoryEntry body;
|};

# A collection of the events/transactions recorded by the log
#
# Examples: Customer life event, Servicing event
public type Issue record {
    # Reference to the service position where issue arises
    common:Position ServicingPositionReference?;
    # The type of channel device involved in the session exchange (e.g. web, phone, chat, video, VOIP, face to face at a branch - note there can be concurrent sessions within a single customer contact)
    common:Session ServicingPositionSessionReference?;
    # Reference to an entity that assigns and manages the identification.
    # tReference to the organization or agency that issued the identifier (e.g., DMV, Passport Office).
    common:Involvedparty EmployeeorBusinessUnitReference?;
    # Defines the type of event/error being recorded (e.g. support facility failure)
    string ProductionIssueType?;
    # Description of the issue and involved functions, parties
    string ProductionIssueDescription?;
    # An evaluation of the event cause and impact
    common:Assessment ProductionIssueDiagnosis?;
    # Description of corrective actions and assigned parties
    common:Task ProductionIssueResolutionTask?;
};

# A collection of the events/transactions recorded by the log
#
# Examples: Customer life event, Servicing event
public type ServicingFacility record {
    # The type of service support facility engaged (e.g. commission tracking, on-line help, action logging)
    string ServicingFacilityType?;
    # Reference to any record generated from he use of the facility
    common:Identifier ServicingFacilityInstanceReference?;
};

public type ServicingEventLogOk record {|
    *http:Ok;
    # body
    ServicingEventLog body;
|};

# A collection of the events/transactions recorded by the log
#
# Examples: Customer life event, Servicing event
public type ServicingAssignment record {
    # Key dates and times associated with the assignment (e.g. start, end, break duration, available/idle time)
    string DateTimeLocation?;
    # Log of servicing activity at that position during the session (e.g. contacts, sales, issues, breaks)
    common:Report ServicingPositionActivityReport?;
    # Accumulated statistics during the session (e.g. average contact time, wait time, service utilization, facility usage)
    string ServicingPositionActivityStatistics?;
};

# Maintain a log of transactions or activity, typically a financial account/journal or a log of activity to support behavioral analysis within Servicing Event History. 
public type ServicingEventLog record {
    # Reference to the service position where issue arises
    common:Position ServicingPositionReference?;
    # Reference to an entity that assigns and manages the identification.
    # tReference to the organization or agency that issued the identifier (e.g., DMV, Passport Office).
    common:Involvedparty EmployeeorBusinessUnitReference?;
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

