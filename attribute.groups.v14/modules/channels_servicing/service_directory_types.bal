import financial.bian.attribute.groups.common as common;

import ballerina/http;

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
