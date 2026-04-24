import financial.bian.attribute.groups.common as common;

import ballerina/http;

# Reference to the bank's policies or rules
public type Policy record {
    # >
    # * `SecurityPolicy` - 
    # * `AdministrativePolicy` - 
    # * `SocialPolicy` - 
    # * `RegulatoryPolicy` - 
    common:Policytypevalues PolicyType?;
    # RuleSetDefinition
    string RuleSetDefinition?;
    # RuleSetInterpretation
    string RuleSetInterpretation?;
    # >
    # * `Policy` - Rule that governs business execution.
    #
    # The set of basic principles and associated guidelines, formulated and enforced by the governing body of an organization, to direct and limit its actions in pursuit of long-term goals. (Business Dictionary)
    #
    # * `Regulation` - A rule used to carry out a law (FIBO)
    #
    # Business Dictionary: a rule (with or without the coercive power of law) employed in controlling, directing, or managing an activity, organization, or system. 
    #
    # The set of rules and legislation governing certain actions. 
    # https://financial-dictionary.thefreedictionary.com/Regulatory
    # * `Law` - A binding rule that the courts will enforce.
    # A system of rules and guidelines which are enforced through social institutions to govern behavior. (FIBO)
    #
    # * `Guideline` - A recommended practice (adapted from Business Dictionary)
    # A general rule, principle, or piece of advice.
    # * `Criterion` - A principle or standard by which something may be judged or decided.
    #
    # Read more: http://www.businessdictionary.com/definition/criterion.html
    # * `Standard` - A rule considered by an authority or by general consent as a basis of comparison
    common:Rulesettypevalues RuleSetType?;
    # RuleSetName
    common:Name RuleSetName?;
    # RuleSetIdentification
    common:Identifier RuleSetIdentification?;
    # RuleSetLifecycleStatus
    common:Status RuleSetLifecycleStatus?;
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

public type Productagreement record {
    # An agreement with the subject matter of the product between Customer and Provider. 
    # An agreement between a Financial Service Provider and its customer for a sold product. 
    string ProductAgreement?;
};

# Maintain the terms and conditions that apply to a commercial relationship within Sales Product Agreement.
public type SalesProductAgreement record {
    # Reference to an entity that assigns and manages the identification.
    # tReference to the organization or agency that issued the identifier (e.g., DMV, Passport Office).
    common:Involvedparty CustomerReference?;
    # Reference to an entity that assigns and manages the identification.
    # tReference to the organization or agency that issued the identifier (e.g., DMV, Passport Office).
    common:Involvedparty LegalEntityReference?;
    # Reference to the specific product instance covered by the sales product agreement
    # ProductInstanceReference
    common:ProductAgreement ProductInstanceReference?;
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
    # The legal jurisdiction
    # AgreementJurisdiction
    common:Jurisdiction AgreementJurisdiction?;
    # Period of time during which the status is valid.
    # AgreementValidFromToDate
    common:Datetimeperiod AgreementValidFromToDate?;
    # Reference to signatories
    # AgreementSignatoriesResponsibleParties
    ProductAgreementInvolvement AgreementSignatoriesResponsibleParties?;
    # Reference to any associated documents
    common:DocumentDirectoryEntry DocumentDirectoryEntryInstanceReference?;
    # Reference to the customer master agreement that governs the product agreement
    # CustomerAgreementReference
    common:CustomerAgreement CustomerAgreementReference?;
    # Reference to KYC/Regulatory assessments maintained elsewhere for the customer
    # PartyLife\-cycleManagementReference
    common:PartyRelationshipLifecyclePhase PartyLife\-cycleManagementReference?;
    # Reference to the banking product (e.g., its features, terms and conditions)
    # BankingProductReference
    common:Product BankingProductReference?;
};

public type SalesProductAgreementOk record {|
    *http:Ok;
    # body
    SalesProductAgreement body;
|};

# Reference to signatories
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
