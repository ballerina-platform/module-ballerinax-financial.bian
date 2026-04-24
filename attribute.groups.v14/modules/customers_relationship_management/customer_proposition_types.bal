import financial.bian.attribute.groups.common as common;

import ballerina/http;

// public type CustomerPropositionAgreementOk record {|
//     *http:Ok;
//     # body
//     CustomerPropositionAgreement body;
// |};

# The Bank Defined Product and Service Term reflects the application of a specific rule or regulation that is an aspect of the Bank Defined Product and Service Term
public type CustomerDefinedProductandServiceTerm record {
    # The required status/situation for the terms to apply and or tasks that need to be completed prior to the initiation of the workstep
    common:Condition Preconditions?;
    # Any timing/duration considerations applying to the Bank Defined Product and Service Term
    # Schedule
    common:Schedule Schedule?;
    # The Bank Defined Product and Service Term specific Business Service
    # BusinessService
    common:BusinessService BusinessService?;
    # Reference to Bank Defined Product and Service Term
    # CustomerPropositionAgreementReference
    common:Agreement CustomerPropositionAgreementReference?;
    # Reference to Bank Defined Product and Service Term
    # CustomerDefinedProductandServiceTermReference
    common:Arrangement CustomerDefinedProductandServiceTermReference?;
    # The type of Customer Defined Product and Service Term
    # CustomerDefinedProductandServiceTermType
    string CustomerDefinedProductandServiceTermType?;
};

# The Bank Defined Product and Service Term reflects the application of a specific rule or regulation that is an aspect of the Bank Defined Product and Service Term
public type BankDefinedProductandServiceTerm record {
    # The required status/situation for the terms to apply and or tasks that need to be completed prior to the initiation of the workstep
    common:Condition Preconditions?;
    # Any timing/duration considerations applying to the Bank Defined Product and Service Term
    # Schedule
    common:Schedule Schedule?;
    # The Bank Defined Product and Service Term specific Business Service
    # BusinessService
    common:BusinessService BusinessService?;
    # Reference to Bank Defined Product and Service Term
    # CustomerPropositionAgreementReference
    common:Agreement CustomerPropositionAgreementReference?;
    # Reference to Bank Defined Product and Service Term
    # BankDefinedProductandServiceTermReference
    common:Arrangement BankDefinedProductandServiceTermReference?;
    # The type of Bank Defined Product and Service Term
    # BankDefinedProductandServiceTermType
    string BankDefinedProductandServiceTermType?;
};

public type CustomerDefinedProductandServiceTermOk record {|
    *http:Ok;
    # body
    CustomerDefinedProductandServiceTerm body;
|};

# Maintain the terms and conditions that apply to a commercial relationship within Customer Proposition.
public type CustomerPropositionAgreement record {
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
    common:Featuretypevalues CustomerPropositionAgreementParameterType?;
    # A characteristic of service which refers 1) mainly to the function or condition of service. 2) to non-functional features like quality and security
    # CustomerPropositionAgreementSelectedOption
    common:Feature CustomerPropositionAgreementSelectedOption?;
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
    common:Agreementtypevalues CustomerPropositionAgreementType?;
    # Reference to Bank Defined Product and Service Term
    # CustomerPropositionAgreementReference
    common:Agreement CustomerPropositionAgreementReference?;
    # Request to discharge Customer Proposition Agreement
    # CustomerPropositionAgreementDischargeRequest
    common:Instruction CustomerPropositionAgreementDischargeRequest?;
    # Any timing/duration considerations applying to the Bank Defined Product and Service Term
    # CustomerPropositionAgreementDischargeSchedule
    common:Schedule CustomerPropositionAgreementDischargeSchedule?;
    # A characteristic of agreement which refers to the LifecycleStatus of agreement (e.g., potential, offered, confirmed, completed, signed, terminated).
    # CustomerPropositionAgreementStatus
    common:Agreementstatus CustomerPropositionAgreementStatus?;
    # Reference to an entity that assigns and manages the identification.
    # tReference to the organization or agency that issued the identifier (e.g., DMV, Passport Office).
    common:Involvedparty CustomerPropositionAgreementAssociatedParty?;
    # Reference to an entity that assigns and manages the identification.
    # tReference to the organization or agency that issued the identifier (e.g., DMV, Passport Office).
    common:Involvedparty CustomerPropositionAgreementCustomerReference?;
    # Reference to Bank Defined Product and Service Term
    # CustomerPropositionAgreementObligation
    common:Arrangement CustomerPropositionAgreementObligation?;
    # Reference to Bank Defined Product and Service Term
    # CustomerPropositionAgreementEntitlement
    common:Arrangement CustomerPropositionAgreementEntitlement?;
    # Reference to the regulation which is defined in Customer Proposition Agreement
    # CustomerPropositionAgreementRegulationReference
    common:RuleSet CustomerPropositionAgreementRegulationReference?;
    # A Classification that distinguishes between the regularity domains of Customer Proposition Agreement
    # CustomerPropositionAgreementRegulationType
    common:Rulesettype CustomerPropositionAgreementRegulationType?;
    # Reference to the jurisdiction that is assigned to Customer Proposition Agreement in case of legal dispute.
    # CustomerPropositionAgreementJurisdiction
    common:Jurisdiction CustomerPropositionAgreementJurisdiction?;
    # Reference to the account which is linked to Customer Proposition Agreement
    #
    # A characteristic of agreement which refers to its involved account to specify the account that will be used to register for the transactions in position keeping management.
    common:Account CustomerPropositionAgreementAccountReference?;
    # The subject matter of  Customer Proposition Agreement
    # CustomerPropositionAgreementSubjectMatter
    string CustomerPropositionAgreementSubjectMatter?;
    # Reference to the product which is linked to Customer Proposition Agreement
    #
    # Comment: 
    # A characteristic of agreement which refers to its related products that are sold by agreement.
    common:Product CustomerPropositionAgreementProductReference?;
    # The calendar of Customer Proposition Agreement
    # CustomerPropositionAgreementCalendarReference
    common:Calendar CustomerPropositionAgreementCalendarReference?;
    # Reference to Bank Defined Product and Service Term
    # CustomerPropositionAgreementAssociatedAgreementReference
    common:Agreement CustomerPropositionAgreementAssociatedAgreementReference?;
};

public type BankDefinedProductandServiceTermOk record {|
    *http:Ok;
    # body
    BankDefinedProductandServiceTerm body;
|};
