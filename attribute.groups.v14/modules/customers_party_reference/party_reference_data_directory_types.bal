import financial.bian.attribute.groups.common as common;

import ballerina/http;

# Identifies a nation with its own government (ISO 3166).
public type Countrycode record {
    # Code to identify a country, a dependency, or another area of particular geopolitical interest, on the basis of country names obtained from the United Nations (ISO 3166, Alpha-2 code).
    string Countrycode?;
};

# >
# * `Principal` - 
# * `SecondaryOwner` - 
# * `Beneficiary` - 
# * `PowerOfAttorney` - 
# * `LegalGuardian` - 
# * `CustodianForMinor` - 
# * `SuccessorOnDeath` - 
# * `Administrator` - 
# * `OtherParty` - 
# * `Granter` - 
# * `Settlor` - 
# * `SeniorManagingOfficial` - 
# * `Protector` - 
# * `RegisteredShareholderName` - 
public type Productserviceagreementinvolvementtypevalues "Principal"|"SecondaryOwner"|"Beneficiary"|"PowerOfAttorney"|"LegalGuardian"|"CustodianForMinor"|"SuccessorOnDeath"|"Administrator"|"OtherParty"|"Granter"|"Settlor"|"SeniorManagingOfficial"|"Protector"|"RegisteredShareholderName";

# >
# * `WorkDocument` - 
# * `CertificationDocument` - 
# * `PersonalDocument` - 
public type Partydocumenttypevalues "WorkDocument"|"CertificationDocument"|"PersonalDocument";

# >
# * `PartyIsParentOfParty` - 
# * `PartyIsSubsidiaryOfParty` - 
# * `PartyIsCertifiedByParty` - 
# * `PartyIsMarriedToParty` - 
# * `PartyActsOnBehalfOfParty` - 
# * `PartyIsContactPointForParty` - 
# * `PartyIsTrustedByParty` - 
# * `PartyIsThePowerOfAttorneyForParty` - 
# * `PartyReceivesBenefitsFromAParty` - 
public type Party_Partyrelationshiptypevalues "PartyIsParentOfParty"|"PartyIsSubsidiaryOfParty"|"PartyIsCertifiedByParty"|"PartyIsMarriedToParty"|"PartyActsOnBehalfOfParty"|"PartyIsContactPointForParty"|"PartyIsTrustedByParty"|"PartyIsThePowerOfAttorneyForParty"|"PartyReceivesBenefitsFromAParty";

public type AssociationsOk record {|
    *http:Ok;
    # body
    common:Associations body;
|};

# Reference to individuals with specific representation rights (e.g. a lawyer with power of attorney)
public type Party_PartyRelationship record {
    # >
    # * `PartyIsParentOfParty` - 
    # * `PartyIsSubsidiaryOfParty` - 
    # * `PartyIsCertifiedByParty` - 
    # * `PartyIsMarriedToParty` - 
    # * `PartyActsOnBehalfOfParty` - 
    # * `PartyIsContactPointForParty` - 
    # * `PartyIsTrustedByParty` - 
    # * `PartyIsThePowerOfAttorneyForParty` - 
    # * `PartyReceivesBenefitsFromAParty` - 
    Party_Partyrelationshiptypevalues RelationshipType?;
    # FromParty
    common:Party FromParty?;
    # ToParty
    common:Party ToParty?;
};

# The specific role played by the identified officer/employee
public type PartyRole record {
    # PartyRoleType
    string PartyRoleType?;
    # Name (label) of the location. (ISO20022)
    common:Name PartyRoleName?;
    # Period of time during which the status is valid.
    # PartyRoleValidityPeriod
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

# Description of the rights or obligations granted to the associate
public type PartyObligationOrEntitlement record {
    # ObligationOrEntitlementSubject
    common:Subject ObligationOrEntitlementSubject?;
    # >
    # * `SweepArrangement` - An arrangement into which is promised for the set-up and execution of structured sweeps to and from the facility to a linked account.
    # * `WithdrawalArrangement` - An arrangement into which is promised to deliver Withdraw Service  to take fund out of an account. 
    # * `DepositArrangement` - An arrangement into which is promised to deliver Deposit Service  to place funds into an account for safekeeping. 
    # * `InterestArrangement` - An arrangement into which is promised to apply a pricing element expressed in a percentage  to a principal amount.
    # * `FeeArrangement` - An arrangement into which is promised to apply a charge for services rendered. 
    # * `LienArrangement` - An arrangement into which is promised for placing a lien or block on the account for a specified purpose, amount, and period. 
    # * `InformationArrangement` - An arrangement concerning the information the bank will provide about the agreement/account
    # * `PaymentArrangement` - An arrangement into which is promised to deliver a specific payment service including regular payments, standing orders, direct debits and bill pay instructions. 
    # * `EntitlementArrangement` - Right or obligation linked to the involvement of a party in an agreement
    # * `PeriodArrangement` - 
    # * `CollateralArrangement` - An arrangement into which is promised for handling the oversight of the allocation, valuation and administration of collateral associated with the facility. 
    # * `LimitArrangement` - An arrangement to limit something
    # e.g., the number of transaction per week, the amount of money allowed to withdraw per week/day and etc. 
    # * `AccessArrangement` - An arrangement that allows or restricts the access to a service or product, channel or device through a specific access point
    # * `CardPaymentArrangement` - An arrangement into which is promised to deliver Card payment Service to execute payment transactions through a payment card, including online payments. 
    # * `StandingOrderArrangement` - An arrangement into which is promised to deliver Standing Order Service to make regular transfers on given dates to a named beneﬁciary. 
    # * `OverdraftArrangement` - An arrangement into which is promised to deliver Overdraft Service  that allows fund transfer even if there is no provision on the account. 
    # * `RepaymentArrangement` - An arrangement into which is promised for paying back money previously borrowed from a lender. 
    # * `StatementArrangement` - An arrangement into which is promised to deliver a reporting service on payment transactions registered on an account. 
    # * `CreditTransferArrangement` - An arrangement into which is promised to allow a payer to transfer fund to a beneficiary. 
    # * `ProductAndServiceArrangement` - 
    # * `FactoringArrangement` - 
    # * `RolloverArrangement` - Arrangement stipulating the modalities for an automatic renewal of the agreement
    #
    # i.e. the replacement of the agreement with a new one without renewed negociation and witout explicit agreement of the customer 
    # * `RestructuringArrangement` - 
    # * `InsuranceArrangement` - 
    # * `CollectionArrangement` - An arrangement into which is promised to collect past-due debts from borrowers
    # * `UnderwritingArrangement` - A contractual agreement between parties that commits the underwriter to assuming risk.
    # * `TerminationArrangement` - 
    # * `MaturityArrangement` - 
    # * `AdministrativeArrangement` - 
    common:Arrangementtypevalues ObligationOrEntitlementType?;
    # ObligationOrEntitlementModality
    Servicearrangementmodality ObligationOrEntitlementModality?;
    # ObligationOrEntitlementDefinition
    string ObligationOrEntitlementDefinition?;
    # ArrangementAction
    common:Action ArrangementAction?;
    # ArrangementStartDate
    common:Datetime ArrangementStartDate?;
    # ArrangementEndDate
    common:Datetime ArrangementEndDate?;
    # ArrangementStatus
    common:Arrangementstatus ArrangementStatus?;
    # ArrangementSubjectMatter
    common:Subject ArrangementSubjectMatter?;
    # * `SweepArrangement` - An arrangement into which is promised for the set-up and execution of structured sweeps to and from the facility to a linked account.
    # * `WithdrawalArrangement` - An arrangement into which is promised to deliver Withdraw Service  to take fund out of an account. 
    # * `DepositArrangement` - An arrangement into which is promised to deliver Deposit Service  to place funds into an account for safekeeping. 
    # * `InterestArrangement` - An arrangement into which is promised to apply a pricing element expressed in a percentage  to a principal amount.
    # * `FeeArrangement` - An arrangement into which is promised to apply a charge for services rendered. 
    # * `LienArrangement` - An arrangement into which is promised for placing a lien or block on the account for a specified purpose, amount, and period. 
    # * `InformationArrangement` - An arrangement concerning the information the bank will provide about the agreement/account
    # * `PaymentArrangement` - An arrangement into which is promised to deliver a specific payment service including regular payments, standing orders, direct debits and bill pay instructions. 
    # * `EntitlementArrangement` - Right or obligation linked to the involvement of a party in an agreement
    # * `PeriodArrangement` - 
    # * `CollateralArrangement` - An arrangement into which is promised for handling the oversight of the allocation, valuation and administration of collateral associated with the facility. 
    # * `LimitArrangement` - An arrangement to limit something
    # e.g., the number of transaction per week, the amount of money allowed to withdraw per week/day and etc. 
    # * `AccessArrangement` - An arrangement that allows or restricts the access to a service or product, channel or device through a specific access point
    # * `CardPaymentArrangement` - An arrangement into which is promised to deliver Card payment Service to execute payment transactions through a payment card, including online payments. 
    # * `StandingOrderArrangement` - An arrangement into which is promised to deliver Standing Order Service to make regular transfers on given dates to a named beneﬁciary. 
    # * `OverdraftArrangement` - An arrangement into which is promised to deliver Overdraft Service  that allows fund transfer even if there is no provision on the account. 
    # * `RepaymentArrangement` - An arrangement into which is promised for paying back money previously borrowed from a lender. 
    # * `StatementArrangement` - An arrangement into which is promised to deliver a reporting service on payment transactions registered on an account. 
    # * `CreditTransferArrangement` - An arrangement into which is promised to allow a payer to transfer fund to a beneficiary. 
    # * `ProductAndServiceArrangement` - 
    # * `FactoringArrangement` - 
    # * `RolloverArrangement` - Arrangement stipulating the modalities for an automatic renewal of the agreement
    #
    # i.e. the replacement of the agreement with a new one without renewed negociation and witout explicit agreement of the customer 
    # * `RestructuringArrangement` - 
    # * `InsuranceArrangement` - 
    # * `CollectionArrangement` - An arrangement into which is promised to collect past-due debts from borrowers
    # * `UnderwritingArrangement` - A contractual agreement between parties that commits the underwriter to assuming risk.
    # * `TerminationArrangement` - 
    # * `MaturityArrangement` - 
    # * `AdministrativeArrangement` - 
    common:Arrangementtypevalues Arrangementtype?;
    # ArrangementIdentification
    common:Identifier ArrangementIdentification?;
    # * `SweepArrangement` - An arrangement into which is promised for the set-up and execution of structured sweeps to and from the facility to a linked account.
    # * `WithdrawalArrangement` - An arrangement into which is promised to deliver Withdraw Service  to take fund out of an account. 
    # * `DepositArrangement` - An arrangement into which is promised to deliver Deposit Service  to place funds into an account for safekeeping. 
    # * `InterestArrangement` - An arrangement into which is promised to apply a pricing element expressed in a percentage  to a principal amount.
    # * `FeeArrangement` - An arrangement into which is promised to apply a charge for services rendered. 
    # * `LienArrangement` - An arrangement into which is promised for placing a lien or block on the account for a specified purpose, amount, and period. 
    # * `InformationArrangement` - An arrangement concerning the information the bank will provide about the agreement/account
    # * `PaymentArrangement` - An arrangement into which is promised to deliver a specific payment service including regular payments, standing orders, direct debits and bill pay instructions. 
    # * `EntitlementArrangement` - Right or obligation linked to the involvement of a party in an agreement
    # * `PeriodArrangement` - 
    # * `CollateralArrangement` - An arrangement into which is promised for handling the oversight of the allocation, valuation and administration of collateral associated with the facility. 
    # * `LimitArrangement` - An arrangement to limit something
    # e.g., the number of transaction per week, the amount of money allowed to withdraw per week/day and etc. 
    # * `AccessArrangement` - An arrangement that allows or restricts the access to a service or product, channel or device through a specific access point
    # * `CardPaymentArrangement` - An arrangement into which is promised to deliver Card payment Service to execute payment transactions through a payment card, including online payments. 
    # * `StandingOrderArrangement` - An arrangement into which is promised to deliver Standing Order Service to make regular transfers on given dates to a named beneﬁciary. 
    # * `OverdraftArrangement` - An arrangement into which is promised to deliver Overdraft Service  that allows fund transfer even if there is no provision on the account. 
    # * `RepaymentArrangement` - An arrangement into which is promised for paying back money previously borrowed from a lender. 
    # * `StatementArrangement` - An arrangement into which is promised to deliver a reporting service on payment transactions registered on an account. 
    # * `CreditTransferArrangement` - An arrangement into which is promised to allow a payer to transfer fund to a beneficiary. 
    # * `ProductAndServiceArrangement` - 
    # * `FactoringArrangement` - 
    # * `RolloverArrangement` - Arrangement stipulating the modalities for an automatic renewal of the agreement
    #
    # i.e. the replacement of the agreement with a new one without renewed negociation and witout explicit agreement of the customer 
    # * `RestructuringArrangement` - 
    # * `InsuranceArrangement` - 
    # * `CollectionArrangement` - An arrangement into which is promised to collect past-due debts from borrowers
    # * `UnderwritingArrangement` - A contractual agreement between parties that commits the underwriter to assuming risk.
    # * `TerminationArrangement` - 
    # * `MaturityArrangement` - 
    # * `AdministrativeArrangement` - 
    common:Arrangementtypevalues SavingsAccountArrangementType?;
    # Reference to the product feature applied in this arrangement 
    # SavingsAccountArrangementProductFeatureType
    common:Productfeaturetype SavingsAccountArrangementProductFeatureType?;
    # >
    # * `SweepArrangement` - An arrangement into which is promised for the set-up and execution of structured sweeps to and from the facility to a linked account.
    # * `WithdrawalArrangement` - An arrangement into which is promised to deliver Withdraw Service  to take fund out of an account. 
    # * `DepositArrangement` - An arrangement into which is promised to deliver Deposit Service  to place funds into an account for safekeeping. 
    # * `InterestArrangement` - An arrangement into which is promised to apply a pricing element expressed in a percentage  to a principal amount.
    # * `FeeArrangement` - An arrangement into which is promised to apply a charge for services rendered. 
    # * `LienArrangement` - An arrangement into which is promised for placing a lien or block on the account for a specified purpose, amount, and period. 
    # * `InformationArrangement` - An arrangement concerning the information the bank will provide about the agreement/account
    # * `PaymentArrangement` - An arrangement into which is promised to deliver a specific payment service including regular payments, standing orders, direct debits and bill pay instructions. 
    # * `EntitlementArrangement` - Right or obligation linked to the involvement of a party in an agreement
    # * `PeriodArrangement` - 
    # * `CollateralArrangement` - An arrangement into which is promised for handling the oversight of the allocation, valuation and administration of collateral associated with the facility. 
    # * `LimitArrangement` - An arrangement to limit something
    # e.g., the number of transaction per week, the amount of money allowed to withdraw per week/day and etc. 
    # * `AccessArrangement` - An arrangement that allows or restricts the access to a service or product, channel or device through a specific access point
    # * `CardPaymentArrangement` - An arrangement into which is promised to deliver Card payment Service to execute payment transactions through a payment card, including online payments. 
    # * `StandingOrderArrangement` - An arrangement into which is promised to deliver Standing Order Service to make regular transfers on given dates to a named beneﬁciary. 
    # * `OverdraftArrangement` - An arrangement into which is promised to deliver Overdraft Service  that allows fund transfer even if there is no provision on the account. 
    # * `RepaymentArrangement` - An arrangement into which is promised for paying back money previously borrowed from a lender. 
    # * `StatementArrangement` - An arrangement into which is promised to deliver a reporting service on payment transactions registered on an account. 
    # * `CreditTransferArrangement` - An arrangement into which is promised to allow a payer to transfer fund to a beneficiary. 
    # * `ProductAndServiceArrangement` - 
    # * `FactoringArrangement` - 
    # * `RolloverArrangement` - Arrangement stipulating the modalities for an automatic renewal of the agreement
    #
    # i.e. the replacement of the agreement with a new one without renewed negociation and witout explicit agreement of the customer 
    # * `RestructuringArrangement` - 
    # * `InsuranceArrangement` - 
    # * `CollectionArrangement` - An arrangement into which is promised to collect past-due debts from borrowers
    # * `UnderwritingArrangement` - A contractual agreement between parties that commits the underwriter to assuming risk.
    # * `TerminationArrangement` - 
    # * `MaturityArrangement` - 
    # * `AdministrativeArrangement` - 
    common:Arrangementtypevalues TermDepositArrangementType?;
    # Reference to the product feature applied in this arrangement 
    # TermDepositArrangementProductFeatureType
    common:Productfeaturetype TermDepositArrangementProductFeatureType?;
    # TermDepositMaturityDate
    common:Datetime TermDepositMaturityDate?;
    # TermDepositOpenDate
    common:Datetime TermDepositOpenDate?;
    # TermDepositAmount
    common:Amount TermDepositAmount?;
    # TermDepositDuration
    common:Duration TermDepositDuration?;
    # DepositTerm
    string DepositTerm?;
};

public type PartyReferenceDataDirectoryEntryOk record {|
    *http:Ok;
    # body
    PartyReferenceDataDirectoryEntry body;
|};

public type Productagreement record {
    # >
    # * `CurrentAccountAgreement` - 
    # * `SavingsAccountAgreement` - 
    # * `BrokeredProductAgreement` - 
    # * `ConsumerLoanAgreement` - 
    # * `MortgageLoanAgreement` - 
    # * `DirectDebitServiceAgreement` - 
    # * `TermDepositAgreement` - 
    common:Productagreementtypevalues ProductAgreementType?;
    # ProductAgreementIdentification
    common:Identifier ProductAgreementIdentification?;
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
    # Period of time during which the status is valid.
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
    # AgreementDate
    common:Datetime AgreementDate?;
    # AgreementDescription
    string AgreementDescription?;
};

# Their given residential address
public type PostalAddress record {
    # >
    # * `Business` - 
    # * `Correspondence` - 
    # * `Deliveryto` - 
    # * `Mailto` - 
    # * `Pobox` - 
    # * `Postal` - 
    # * `Residential` - 
    # * `Statement` - 
    Postaladdresstypevalues AddressType?;
    # Information that locates and identifies a specific address, as defined by postal services, that is presented in free format text.
    string AddressLine?;
    # Name (label) of the location. (ISO20022)
    common:Name StreetName?;
    # Number that identifies the position of a building on a street.
    # BuildingNumber
    string BuildingNumber?;
    # PostCode
    common:Identifier PostCode?;
    # Name (label) of the location. (ISO20022)
    # TownName
    common:Name TownName?;
    # >
    # * `Continent` - 
    # * `Country` - 
    # * `State` - 
    # * `District` - 
    # * `Province` - 
    # * `Town` - 
    # * `City` - 
    # * `Region` - 
    common:Geographicalareatypevalues CountrySubDivision?;
    # The customer nationality and history as appropriate
    # Country
    Country Country?;
    # Identification of a division of a large organisation or building. (ISO20022)
    string Department?;
    # Identification of a sub-division of a large organisation or building. (ISO20022)
    string SubDepartment?;
    # AddressDescription
    string AddressDescription?;
};

public type PartyRelationship record {
    # RelationshipType
    string RelationshipType?;
    # Period of time during which the status is valid.
    common:Datetimeperiod RelationshipValidityPeriod?;
    # RelationshipStartDate
    common:Datetime RelationshipStartDate?;
    # RelationshipEndDate
    common:Datetime RelationshipEndDate?;
    # RelationshipLifecycleStatus
    common:Status RelationshipLifecycleStatus?;
    # RelationshipIdentification
    common:Identifier RelationshipIdentification?;
};

# The customer nationality and history as appropriate
public type Country record {
    # Reference to the customer's employer (company name)
    common:Involvedparty NationalRegulatoryAuthority?;
    # Name (label) of the location. (ISO20022)
    # CountryName
    common:Name CountryName?;
    # Identifies a nation with its own government (ISO 3166).
    # CountryCode
    Countrycode CountryCode?;
};

# >
# * `Business` - 
# * `Correspondence` - 
# * `Deliveryto` - 
# * `Mailto` - 
# * `Pobox` - 
# * `Postal` - 
# * `Residential` - 
# * `Statement` - 
public type Postaladdresstypevalues "Business"|"Correspondence"|"Deliveryto"|"Mailto"|"Pobox"|"Postal"|"Residential"|"Statement";

# The given email address
public type ContactPoint record {
    # >
    # * `ElectronicAddress` - Address which is accessed by electronic means. ISO20022
    # * `PostalAddress` - Information that locates and identifies a specific address. ISO20022
    # * `PhoneNumber` - Collection of information that identifies a phone address. ISO20022
    # * `Socialnetworkaddress` - A social network such as Facebook, Twitter, etc.
    common:Contactpointtypevalues ContactPointType?;
    # >
    # * `LocationIsResidentialAddressOfParty` - Location from which the affairs of a company are directed or location in which a person resides (the place of a person's home). ISO20022
    # * `LocationIsDomicileAddressOfParty` - Location in which a person is permanently domiciled (the place of a person's permanent home). ISO20022
    # * `LocationIsPlaceOfBirthOfParty` - 
    # * `LocationIsWorkAddressOfParty` - 
    # * `LocationIsDeliveryPointAddressOfParty` - 
    # * `PartyIsOwnerOfLocation` - Registered owner or title holder(s) of the property.
    # * `PartyIsOccupierOfLocation` - 
    # * `PartyIsAlliancePartnerOfLocation` - Reference to the bank alliance partner with some kind of link association to the location (used for location based marketing).
    # * `LocationIsContactPointAddressOfParty` - 
    common:Partylocationtypevalues PartyLocationType?;
    # LocationReference
    common:Location LocationReference?;
    # PartyReference
    common:Party PartyReference?;
};

# "An assertion or statement with regard to a concept, a characteristic.
#
# Examples: Product pricing rules, Customer reference details
#
# A descriptor can be atomic or composed."
# Prospect Management
public type Demographics record {
    # A bank defined classification of the socio-economic rating and prospect
    string Socio\-EconomicClassification?;
    # Where needed to ensure the bank's handling of the relationship follows legal and regulatory requirements
    string EthnicityReligion?;
    # Reference to the customer's employer (company name)
    common:Involvedparty Employment?;
    # Details of the customer's employment history (e.g. employer, dates, job position, salary)
    # EmploymentHistory
    string EmploymentHistory?;
    # Customer's education (e.g. academic institutions attended, duration, qualifications and certifications)
    string EducationHistory?;
    # Description of any known constraints on servicing the customer (sight, hearing, religious considerations)
    string ServicingConstraints?;
};

public type ProductAgreementInvolvement record {
    # >
    # * `Principal` - 
    # * `SecondaryOwner` - 
    # * `Beneficiary` - 
    # * `PowerOfAttorney` - 
    # * `LegalGuardian` - 
    # * `CustodianForMinor` - 
    # * `SuccessorOnDeath` - 
    # * `Administrator` - 
    # * `OtherParty` - 
    # * `Granter` - 
    # * `Settlor` - 
    # * `SeniorManagingOfficial` - 
    # * `Protector` - 
    # * `RegisteredShareholderName` - 
    Productserviceagreementinvolvementtypevalues InvolvementType?;
    # PartyReference
    common:Party PartyReference?;
    # AgreementReference
    Productagreement AgreementReference?;
};

public type Servicearrangementmodality record {
    # >
    # * `AllocationModality` - 
    # * `CalculationModality` - 
    # * `DerivationModality` - 
    # * `PaymentModality` - 
    # * `ProcessingModality` - 
    # * `ApplicationModality` - 
    # * `DeliveryModality` - 
    Modalitytypevalues ServiceArrangementModalityType?;
};

# Capture and maintain reference information about some type of entitity within Party Reference Data Directory.
public type PartyReferenceDataDirectoryEntry record {
    # PartyReference
    common:Party PartyReference?;
    # >
    # * `OpenDate` - 
    # * `RefreshDate` - 
    common:Directoryentrydatetypevalues DirectoryEntryDateType?;
    # DirectoryEntryDate
    common:Datetime DirectoryEntryDate?;
    # * `Person` - Human entity, as distinguished from a corporate entity (which is sometimes referred to as an 'artificial person'). ISO20022
    # * `Organisation` - Organised structure that is set up for a particular purpose. For example, a business, government body, department, charity, or financial institution. ISO20022
    common:Partytypevalues PartyType?;
};

# >
# * `Politicalexposureforeign` - 
# * `Politicalexposuredomestic` - 
# * `Nopoliticalexposure` - 
public type Politicalexposuretypevalues "Politicalexposureforeign"|"Politicalexposuredomestic"|"Nopoliticalexposure";

# "An assertion or statement with regard to a concept, a characteristic.
#
# Examples: Product pricing rules, Customer reference details
#
# A descriptor can be atomic or composed."
# Prospect Management
public type BankRelations record {
    # The type of relationship (e.g. relationship manager)
    string BankRelationType?;
    # Reference to the customer's employer (company name)
    common:Involvedparty BusinessUnitEmployeeReference?;
    # BankRelationReference
    PartyRelationship BankRelationReference?;
};

# Details about and extracted from government issued documents (e.g. driving license/passport details)
public type PartyDocument record {
    # PartyReference
    common:Party PartyReference?;
    # DocumentReference
    common:Document DocumentReference?;
    # * `WorkDocument` - 
    # * `CertificationDocument` - 
    # * `PersonalDocument` - 
    Partydocumenttypevalues PartyDocumentType?;
};

# >
# * `AllocationModality` - 
# * `CalculationModality` - 
# * `DerivationModality` - 
# * `PaymentModality` - 
# * `ProcessingModality` - 
# * `ApplicationModality` - 
# * `DeliveryModality` - 
public type Modalitytypevalues "AllocationModality"|"CalculationModality"|"DerivationModality"|"PaymentModality"|"ProcessingModality"|"ApplicationModality"|"DeliveryModality";

