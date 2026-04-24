import financial.bian.attribute.groups.common as common;

import ballerina/http;

public type CustomerProductAndServiceDirectoryEntryOk record {|
    *http:Ok;
    # body
    common:CustomerProductAndServiceDirectoryEntry body;
|};

public type ProductOk record {|
    *http:Ok;
    # body
    common:Product body;
|};

public type ServiceOk record {|
    *http:Ok;
    # body
    common:Service body;
|};

public type ServiceAgreement record {
    # Type
    string Type?;
    # The In-force Product property properties that represent a discrete aspect of the In-force Product property
    common:Service ServiceReference?;
    # AgreementReference
    common:Agreement AgreementReference?;
    # AgreementSignedDate
    common:Date AgreementSignedDate?;
    # * `CustomerAgreement` - 
    # * `SupplierAgreement` - 
    # * `BrokerAgreement` - 
    # * `SalesAgreement` - 
    # * `PurchaseAgreement` - 
    # * `MaintenanceAgreement` - 
    # * `ProductAgreement` - 
    # * `ResourceAgreement` - 
    # * `PartnerAgreement` - 
    # * `MasterAgreement` - 
    # * `BilateralAgreement` - 
    # * `RepurchaseAgreement` - 
    common:Agreementtypevalues AgreementType?;
    # Period of time during which the status is valid.
    # AgreementValidityPeriod
    common:Datetimeperiod AgreementValidityPeriod?;
    # AgreementVersion
    string AgreementVersion?;
    # A characteristic of agreement which refers to the LifecycleStatus of agreement (e.g., potential, offered, confirmed, completed, signed, terminated).
    common:Agreementstatus AgreementStatus?;
    # AgreementSubjectMatter
    string AgreementSubjectMatter?;
    # An unique reference to an item or an occurrence of  Product BQ
    common:Identifier AgreementIdentification?;
    # The date when the identifier became valid.
    # AgreementDate
    common:Datetime AgreementDate?;
    # AgreementDescription
    string AgreementDescription?;
};

