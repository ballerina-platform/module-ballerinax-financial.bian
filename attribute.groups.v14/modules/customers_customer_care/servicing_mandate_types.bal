import financial.bian.attribute.groups.common as common;

import ballerina/http;

# >
# * `PartyWhoGivesThePermissionToParty` - 
# * `PartyWhoTakesThePermissionFromParty` - 
# * `PartyWhoAuthorisesThePermissionOfParty` - 
public type Servicingmandateinvolvementtypevalues "PartyWhoGivesThePermissionToParty"|"PartyWhoTakesThePermissionFromParty"|"PartyWhoAuthorisesThePermissionOfParty";

# >
# * `MaturityDate` - 
# * `InitiatedDate` - 
# * `RequestedDate` - 
# * `ExecutedDate` - 
# * `OpenDate` - 
# * `CloseDate` - 
# * `ExpiryDate` - 
# * `EffectiveDate` - 
# * `CreatingDate` - 
# * `ActivationDate` - 
# * `DeactivationDate` - 
# * `BlockingDate` - 
# * `SendingDate` - 
# * `ValidFromDate` - 
# * `ValidToDate` - 
# * `ReceivingDate` - 
# * `SigningDate` - 
# * `DueDate` - 
# * `ValueDate` - 
# * `FulfillmentDate` - 
# * `EntryDate` - 
# >
# * `AccountAccessPermission` - 
# * `DeviceAccessPermission` - 
# * `ChannelAccessPermission` - 
public type Permissiontypevalues "AccountAccessPermission"|"DeviceAccessPermission"|"ChannelAccessPermission";

# >
# * `Readaccountsbasic` - Ability to read basic account information
# * `Readaccountsdetail` - Ability to read account identification details
# * `Readbalances` - Ability to read all balance information
# * `Readbeneficiariesbasic` - Ability to read basic beneficiary details
# * `Readbeneficiariesdetail` - Ability to read account identification details for the beneficiary
# * `Readdirectdebits` - Ability to read all direct debit information
# * `Readoffers` - Ability to read all offer information
# * `Readpan` - Request to access PAN in the clear across the available endpoints.
# * `Readparty` - Ability to read party information on the account owner.
# * `Readpartypsu` - Ability to read party information on the PSU logged in.
# * `Readproducts` - Ability to read all product information relating to the account
# * `Readscheduledpaymentsbasic` - Ability to read basic statement details
# * `Readscheduledpaymentsdetail` - 
# * `Readstandingordersbasic` - 
# * `Readstandingordersdetail` - 
# * `Readstatementsbasic` - Ability to read basic statement details
# * `Readstatementsdetail` - Ability to read statement data elements which may leak other information about the account
# * `Readtransactionsbasic` - Ability to read basic transaction information
# * `Readtransactionscredits` - 
# * `Readtransactionsdebits` - Ability to read only debit transactions
# * `Readtransactionsdetail` - Ability to read transaction data elements which may hold silent party details
public type Obaccountaccesspermissiontypevalues "Readaccountsbasic"|"Readaccountsdetail"|"Readbalances"|"Readbeneficiariesbasic"|"Readbeneficiariesdetail"|"Readdirectdebits"|"Readoffers"|"Readpan"|"Readparty"|"Readpartypsu"|"Readproducts"|"Readscheduledpaymentsbasic"|"Readscheduledpaymentsdetail"|"Readstandingordersbasic"|"Readstandingordersdetail"|"Readstatementsbasic"|"Readstatementsdetail"|"Readtransactionsbasic"|"Readtransactionscredits"|"Readtransactionsdebits"|"Readtransactionsdetail";

public type Servicingmandate record {
    # Specifies whether a mandate is accepted or rejected. (ISO20022)
    Mandatestatus Status?;
    # Specifies the number of days the mandate must be tracked. (ISO20022)
    string TrackingDays?;
    # Identification
    common:Identifier Identification?;
    # >
    # * `Consent` - Permission or Agreement obtained from someone or something having authority or power
    #
    # Permission for something to happen or agreement to do something.
    # * `PowerOfAttorney` - A written authorization that transfers specific rights from a party to another party.
    #
    # Document that transfers specific rights from a party to another party. ISO20022
    # * `DirectDebitMandate` - An agreement between a debtor and a creditor allowing the creditor to instruct the bank to debit the debtors account
    #
    # Authorization in favour of the creditor given by the debtor to debit its own account. (ISO20022)
    # * `ServicingMandate` - An agreement between the customer and a service provider to authorise the service provider to access Products and Services on behalf of the customer. 
    Mandatetypevalues Type?;
    # Duration
    common:Datetimeperiod Duration?;
    # Specifies whether the direct debit instructions should be automatically re-submitted periodically when bilaterally agreed (ISO20022)
    # TrackingIndicator
    common:Yesnoindicator TrackingIndicator?;
    # Date on which the agreement was signed by all parties. (ISO20022)
    # AgreementSignedDate
    common:Date AgreementSignedDate?;
    # >
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
    # AgreementValidityPeriod
    common:Datetimeperiod AgreementValidityPeriod?;
    # AgreementVersion
    string AgreementVersion?;
    # A characteristic of agreement which refers to the LifecycleStatus of agreement (e.g., potential, offered, confirmed, completed, signed, terminated).
    common:Agreementstatus AgreementStatus?;
    # AgreementSubjectMatter
    string AgreementSubjectMatter?;
    # AgreementIdentification
    common:Identifier AgreementIdentification?;
    # Date and time at which the range starts. (ISO20022)
    # AgreementDate
    common:Datetime AgreementDate?;
    # AgreementDescription
    string AgreementDescription?;
};

# The type of third party mandates (e.g. PSD2)
public type Servicingmandatetypevalues record {
    # Servicingmandatetypevalues
    string Servicingmandatetypevalues?;
};

# >
# * `Taxidentificationnumber` - Number assigned by a tax authority to an entity.
# * `Nationalregistrationnumber` - Number assigned by a national registration authority to an entity. In Singapore this is known as the NRIC. (ISO20022)
# * `Registrationauthorityidentification` - An identifier for the Legal Entity in a business registry in the jurisdiction of legal registration, or in the appropriate registration authority. (ISO20022)
# * `LEI(LegalEntityIdentifier)` - 
# * `Alienregistrationnumber` - Number assigned by a government agency to identify foreign nationals.
# * `Passportnumber` - Number assigned by a passport authority.
# * `Taxexemptidentificationnumber` - Number assigned to a tax exempt entity.
# * `Corporateidentification` - Number assigned to a corporate entity.
# * `Driverlicensenumber` - Number assigned to a driver's license.
# * `Foreigninvestmentidentitynumber` - Number assigned to a foreign investor (other than the alien number).
# * `Socialsecuritynumber` - Number assigned by a social security agency.
# * `Identitycardnumber` - Number assigned by a national authority to an identity card.
# * `Concat` - Number assigned by an issuer to identify a customer via the concatenation of the birthdate and characters of the first name and surname.
# * `Nationalregistrationidentificationnumber` - National registration identification number. In Singapore this is known as the NRIC.
# Specifies whether a mandate is accepted or rejected. (ISO20022)
public type Mandatestatus record {
    # MandateStatus
    common:Status MandateStatus?;
    # >
    # * `Accepted` - 
    # * `Rejected` - 
    Mandatestatustypevalues MandateStatusType?;
};

# A characteristic of agreement which refers to the LifecycleStatus of agreement (e.g., potential, offered, confirmed, completed, signed, terminated).
# >
# * `Authorised` - 
# * `AwaitingAuthorization` - 
# * `Rejected` - 
# * `Revoked` - 
public type Consentstatustypevalues "Authorised"|"AwaitingAuthorization"|"Rejected"|"Revoked";

# >
# * `Offered` - 
# * `Confirmed` - 
# * `Completed` - 
# * `Signed` - 
# * `Terminated` - 
# * `Rejected` - 
public type CustomerMandateOk record {|
    *http:Ok;
    # body
    CustomerMandate body;
|};

# >
# * `Consent` - Permission or Agreement obtained from someone or something having authority or power
#
# Permission for something to happen or agreement to do something.
# * `PowerOfAttorney` - A written authorization that transfers specific rights from a party to another party.
#
# Document that transfers specific rights from a party to another party. ISO20022
# * `DirectDebitMandate` - An agreement between a debtor and a creditor allowing the creditor to instruct the bank to debit the debtors account
#
# Authorization in favour of the creditor given by the debtor to debit its own account. (ISO20022)
# * `ServicingMandate` - An agreement between the customer and a service provider to authorise the service provider to access Products and Services on behalf of the customer. 
public type Mandatetypevalues "Consent"|"PowerOfAttorney"|"DirectDebitMandate"|"ServicingMandate";

# A type of product or service covered by the mandate
# Reference to any involved authorities and interested parties
public type ServicingMandateInvolvement record {
    # >
    # * `PartyWhoGivesThePermissionToParty` - 
    # * `PartyWhoTakesThePermissionFromParty` - 
    # * `PartyWhoAuthorisesThePermissionOfParty` - 
    Servicingmandateinvolvementtypevalues ServicingMandateInvolvementType?;
    # PartyReference
    common:Party PartyReference?;
    # ServicingMandateReference
    Servicingmandate ServicingMandateReference?;
};

# Status Attributes
# Defines if and under what terms a product/service can be accessed for this customer under the mandate
public type ServicingMandateArrangement record {
    # >
    # * `Readaccountsbasic` - Ability to read basic account information
    # * `Readaccountsdetail` - Ability to read account identification details
    # * `Readbalances` - Ability to read all balance information
    # * `Readbeneficiariesbasic` - Ability to read basic beneficiary details
    # * `Readbeneficiariesdetail` - Ability to read account identification details for the beneficiary
    # * `Readdirectdebits` - Ability to read all direct debit information
    # * `Readoffers` - Ability to read all offer information
    # * `Readpan` - Request to access PAN in the clear across the available endpoints.
    # * `Readparty` - Ability to read party information on the account owner.
    # * `Readpartypsu` - Ability to read party information on the PSU logged in.
    # * `Readproducts` - Ability to read all product information relating to the account
    # * `Readscheduledpaymentsbasic` - Ability to read basic statement details
    # * `Readscheduledpaymentsdetail` - 
    # * `Readstandingordersbasic` - 
    # * `Readstandingordersdetail` - 
    # * `Readstatementsbasic` - Ability to read basic statement details
    # * `Readstatementsdetail` - Ability to read statement data elements which may leak other information about the account
    # * `Readtransactionsbasic` - Ability to read basic transaction information
    # * `Readtransactionscredits` - 
    # * `Readtransactionsdebits` - Ability to read only debit transactions
    # * `Readtransactionsdetail` - Ability to read transaction data elements which may hold silent party details
    Obaccountaccesspermissiontypevalues AccessPermissionType?;
    # Date and time at which the range starts. (ISO20022)
    common:Datetime AccessPermissionExpirationDate?;
    # >
    # * `Authorised` - 
    # * `AwaitingAuthorization` - 
    # * `Rejected` - 
    # * `Revoked` - 
    Consentstatustypevalues AccessPermissionStatus?;
    # >
    # * `AccountAccessPermission` - 
    # * `DeviceAccessPermission` - 
    # * `ChannelAccessPermission` - 
    Permissiontypevalues PermissionType?;
    # Date and time at which the range starts. (ISO20022)
    common:Datetime PermissionExpirationDate?;
    # >
    # * `Authorised` - 
    # * `AwaitingAuthorization` - 
    # * `Rejected` - 
    # * `Revoked` - 
    Consentstatustypevalues PermissionStatus?;
};

# Maintain the terms and conditions that apply to a commercial relationship within Servicing Mandate.
public type ServicingMandateAgreement record {
    # Reference to the individual customer be accessed through the servicing order
    common:Involvedparty CustomerReference?;
    # The type of third party mandates (e.g. PSD2)
    # ServicingMandateAgreementType
    Servicingmandatetypevalues ServicingMandateAgreementType?;
    # The defines any limitation on the geographic coverage/scope of the mandate
    common:Jurisdiction ServicingMandateAgreementJurisdiction?;
    # ServicingMandateAgreementValidFromToDate
    common:Datetimeperiod ServicingMandateAgreementValidFromToDate?;
    # ServicingMandateAgreementResponsibleParties
    ServicingMandateInvolvement ServicingMandateAgreementResponsibleParties?;
    # Reference to any supporting documents
    common:DocumentDirectoryEntry DocumentDirectoryEntryInstanceReference?;
    # Details the specific customer access allowed under the mandate
    # ServicingMandateAgreementProductandServiceProfileReference
    common:CustomerProductAndServiceProfile ServicingMandateAgreementProductandServiceProfileReference?;
    # Details the specific customer access allowed under the mandate
    # ServicingMandateAgreementProductandServiceProfile
    common:CustomerProductAndServiceProfile ServicingMandateAgreementProductandServiceProfile?;
    # A type of product or service covered by the mandate
    # ProductandServiceType
    common:Productfeaturetype ProductandServiceType?;
    # Defines if and under what terms a product/service can be accessed for this customer under the mandate
    # ServicingMandateAgreementProductandServiceTypeEligibility
    ServicingMandateArrangement ServicingMandateAgreementProductandServiceTypeEligibility?;
    # Reference to the Servicing Mandate.
    ServicingMandate ServicingMandateAgreementReference?;
};

# Economical activity of Party (ISO20022)
public type ServicingMandateAgreementOk record {|
    *http:Ok;
    # body
    ServicingMandateAgreement body;
|};

# Reference to the Servicing Mandate.
public type ServicingMandate record {
    # Specifies whether a mandate is accepted or rejected. (ISO20022)
    Mandatestatus Status?;
    # Specifies the number of days the mandate must be tracked. (ISO20022)
    string TrackingDays?;
    # Identification
    common:Identifier Identification?;
    # >
    # * `Consent` - Permission or Agreement obtained from someone or something having authority or power
    #
    # Permission for something to happen or agreement to do something.
    # * `PowerOfAttorney` - A written authorization that transfers specific rights from a party to another party.
    #
    # Document that transfers specific rights from a party to another party. ISO20022
    # * `DirectDebitMandate` - An agreement between a debtor and a creditor allowing the creditor to instruct the bank to debit the debtors account
    #
    # Authorization in favour of the creditor given by the debtor to debit its own account. (ISO20022)
    # * `ServicingMandate` - An agreement between the customer and a service provider to authorise the service provider to access Products and Services on behalf of the customer. 
    Mandatetypevalues Type?;
    # Duration
    common:Datetimeperiod Duration?;
    # Specifies whether the direct debit instructions should be automatically re-submitted periodically when bilaterally agreed (ISO20022)
    # TrackingIndicator
    common:Yesnoindicator TrackingIndicator?;
    # Date on which the agreement was signed by all parties. (ISO20022)
    # AgreementSignedDate
    common:Date AgreementSignedDate?;
    # >
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
    # AgreementValidityPeriod
    common:Datetimeperiod AgreementValidityPeriod?;
    # AgreementVersion
    string AgreementVersion?;
    # A characteristic of agreement which refers to the LifecycleStatus of agreement (e.g., potential, offered, confirmed, completed, signed, terminated).
    common:Agreementstatus AgreementStatus?;
    # AgreementSubjectMatter
    string AgreementSubjectMatter?;
    # AgreementIdentification
    common:Identifier AgreementIdentification?;
    # Date and time at which the range starts. (ISO20022)
    # AgreementDate
    common:Datetime AgreementDate?;
    # AgreementDescription
    string AgreementDescription?;
};

# >
# * `Accepted` - 
# * `Rejected` - 
public type Mandatestatustypevalues "Accepted"|"Rejected";

# Reference to the terms in force for a specific customer for this service provider
public type CustomerMandate record {
    # Reference to the individual customer be accessed through the servicing order
    common:Involvedparty CustomerReference?;
    # Details the specific customer access allowed under the mandate
    # ServicingMandateAgreementCustomerProductandServiceProfile
    common:CustomerProductAndServiceProfile ServicingMandateAgreementCustomerProductandServiceProfile?;
    # A type of product or service covered by the mandate
    # ProductandServiceType
    common:Productfeaturetype ProductandServiceType?;
    # Defines if and under what terms a product/service can be accessed for this customer under the mandate
    # ServicingMandateAgreementCustomerProductandServiceTypeAccess
    ServicingMandateArrangement ServicingMandateAgreementCustomerProductandServiceTypeAccess?;
    # Defines if and under what terms a product/service can be accessed for this customer under the mandate
    ServicingMandateArrangement ServicingMandateAgreementCustomerProductandServiceTypeUsage?;
};

