import financial.bian.attribute.groups.common as common;

import ballerina/http;

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
