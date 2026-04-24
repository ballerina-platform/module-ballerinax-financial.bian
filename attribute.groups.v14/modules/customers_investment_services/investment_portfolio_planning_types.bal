import financial.bian.attribute.groups.common as common;

import ballerina/http;

# A collection of terms (within some jurisdiction) that can be selected and configured to define a contract /agreement
#
# Examples: Required disclosures
public type InvestmentTerms record {
    # The type of term (e.g. risk appetite, forbidden securities/sectors)
    string InvestmentPortfolioAgreementTermType?;
    # Description of the term defining how it is to be interpreted, applicable for behavioral controls (e.g. limit of exposure to a segment property or level of risk)
    string InvestmentPortfolioAgreementTermDescription?;
    # One or more specific constraint parameters that calibrate the term, applicable for position constraints (e.g. the specific percentage limit of holdings by value that can be applied to a type of security)
    common:Condition InvestmentPortfolioAgreementTermConstraints?;
};

public type InvestmentTermsOk record {|
    *http:Ok;
    # body
    InvestmentTerms body;
|};

# Maintain the terms and conditions that apply to a commercial relationship within Investment Portfolio Planning.
public type ManagedInvestmentPortfolioAgreement record {
    # Reference to an entity that assigns and manages the identification.
    # tReference to the organization or agency that issued the identifier (e.g., DMV, Passport Office).
    common:Involvedparty CustomerReference?;
    # Reference to the legal entity that is the subject of the agreement
    # LegalEntityReference
    common:Organisation LegalEntityReference?;
    # The identifier of Condition
    # InvestmentPortfolioInstanceReference
    common:Identifier InvestmentPortfolioInstanceReference?;
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
    common:Agreementtypevalues InvestmentPortfolioAgreementType?;
    # The contractual jurisdiction or coverage of the investment portfolio agreement (e.g. "governed by State")
    # InvestmentPortfolioAgreementJurisdiction
    common:Jurisdiction InvestmentPortfolioAgreementJurisdiction?;
    # The date when the identifier became valid.
    # InvestmentPortfolioAgreementValidFromToDate
    common:Datetime InvestmentPortfolioAgreementValidFromToDate?;
    # Reference to signatories
    # InvestmentPortfolioAgreementSignatoriesResponsibleParties
    string InvestmentPortfolioAgreementSignatoriesResponsibleParties?;
    # Reference to any associated documents, (e.g. signed agreement document, disclosures)
    common:DocumentDirectoryEntry DocumentDirectoryEntryInstanceReference?;
    # The identifier of Condition
    # CustomerAgreementInstanceReference
    common:Identifier CustomerAgreementInstanceReference?;
    # The identifier of Condition
    # PartyRelationshipProcedureInstanceReference
    common:Identifier PartyRelationshipProcedureInstanceReference?;
    # The consolidated view of all of the constituent investment policy terms and conditions in any suitable format
    # ManagedInvestmentPortfolioAgreement
    common:Agreement ManagedInvestmentPortfolioAgreement?;
};

public type ManagedInvestmentPortfolioAgreementOk record {|
    *http:Ok;
    # body
    ManagedInvestmentPortfolioAgreement body;
|};
