import financial.bian.attribute.groups.common as common;

import ballerina/http;

public type SubCustodianAgreementOk record {|
    *http:Ok;
    SubCustodianAgreement body;
|};

# Covers the legal considerations of the agreement
public type SubCustodianPolicyTerm record {
    # The required status/situation for the terms to apply and or tasks that need to be completed prior to the initiation of the workstep
    common:Condition Preconditions?;
    # Any timing/duration considerations applying to the Legal Term
    common:Schedule Schedule?;
    # The Legal Term specific Business Service
    common:BusinessService BusinessService?;
    # Reference to Legal Term
    common:Agreement SubCustodianAgreementReference?;
    # Reference to Legal Term
    SubCustodianArrangement PolicyTermReference?;
    # The type of Policy Term
    string PolicyTermType?;
    # The type of bank policy referenced (e.g. staff certification)
    string BankPolicy\-RuleType?;
    # Reference to the bank's policies or rules
    string ApplicableBankPolicy\-RuleReference?;
    # Explanation or interpretation of the policy or rule as applied
    string ApplicableBankPolicy\-RuleInterpretation?;
};

# Covers the legal considerations of the agreement
public type SubCustodianRegulatoryTerm record {
    # The required status/situation for the terms to apply and or tasks that need to be completed prior to the initiation of the workstep
    common:Condition Preconditions?;
    # Any timing/duration considerations applying to the Legal Term
    common:Schedule Schedule?;
    # The Legal Term specific Business Service
    common:BusinessService BusinessService?;
    # Reference to Legal Term
    common:Agreement SubCustodianAgreementReference?;
    # Reference to Legal Term
    SubCustodianArrangement RegulatoryTermReference?;
    # The type of Regulatory Term
    string RegulatoryTermType?;
    # The applicable regulatory authority
    string RegulatoryAuthority?;
    # Reference to any regulatory requirements
    string ApplicableRegulationReference?;
    # Explanation or interpretation of the regulation as applied
    string ApplicableRegulationInterpretation?;
};

# Covers the legal considerations of the agreement
public type SubCustodianLegalTerm record {
    # The required status/situation for the terms to apply and or tasks that need to be completed prior to the initiation of the workstep
    common:Condition Preconditions?;
    # Any timing/duration considerations applying to the Legal Term
    common:Schedule Schedule?;
    # The Legal Term specific Business Service
    common:BusinessService BusinessService?;
    # Reference to Legal Term
    common:Agreement SubCustodianAgreementReference?;
    # Reference to Legal Term
    SubCustodianArrangement LegalTermReference?;
    # The type of Legal Term
    string LegalTermType?;
    # The legal jurisdiction
    string Jurisdiction?;
    # Reference to any legal requirements
    string ApplicableLawReference?;
    # Explanation or interpretation of the law as applied
    string ApplicableLawInterpretation?;
};

# Reference to Legal Term
public type SubCustodianArrangement record {
    # ArrangementAction
    common:Action ArrangementAction?;
    # The date when the identifier became valid.
    common:Datetime ArrangementStartDate?;
    # The date when the identifier became valid.
    common:Datetime ArrangementEndDate?;
    # A characteristic of arrangement which refers to the LifecycleStatus of arrangement (e.g., requested, proposed, offered, accepted, cancelled, terminated, fulfilled, etc.)
    common:Arrangementstatus ArrangementStatus?;
    # ArrangementSubjectMatter
    common:Subject ArrangementSubjectMatter?;
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
    # * `RolloverArrangement` - SubCustodianArrangement stipulating the modalities for an automatic renewal of the agreement
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
    # The identifier of Condition
    common:Identifier ArrangementIdentification?;
};

# Maintain the terms and conditions that apply to a commercial relationship within Sub Custodian Agreement.
public type SubCustodianAgreement record {
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
    common:Featuretypevalues SubCustodianAgreementParameterType?;
    # A characteristic of service which refers 1) mainly to the function or condition of service. 2) to non-functional features like quality and security
    common:Feature SubCustodianAgreementSelectedOption?;
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
    common:Agreementtypevalues SubCustodianAgreementType?;
    # Reference to Legal Term
    common:Agreement SubCustodianAgreementReference?;
    # Request to discharge Sub Custodian Agreement
    common:Instruction SubCustodianAgreementDischargeRequest?;
    # Any timing/duration considerations applying to the Legal Term
    common:Schedule SubCustodianAgreementDischargeSchedule?;
    # A characteristic of agreement which refers to the LifecycleStatus of agreement (e.g., potential, offered, confirmed, completed, signed, terminated).
    common:Agreementstatus SubCustodianAgreementStatus?;
    # Reference to an entity that assigns and manages the identification.
    # tReference to the organization or agency that issued the identifier (e.g., DMV, Passport Office).
    common:Involvedparty SubCustodianAgreementAssociatedParty?;
    # Reference to an entity that assigns and manages the identification.
    # tReference to the organization or agency that issued the identifier (e.g., DMV, Passport Office).
    common:Involvedparty SubCustodianAgreementCustomerReference?;
    # Reference to Legal Term
    SubCustodianArrangement SubCustodianAgreementObligation?;
    # Reference to Legal Term
    SubCustodianArrangement SubCustodianAgreementEntitlement?;
    # Reference to the regulation which is defined in Sub Custodian Agreement
    common:RuleSet SubCustodianAgreementRegulationReference?;
    # A Classification that distinguishes between the regularity domains of Sub Custodian Agreement
    common:Rulesettype SubCustodianAgreementRegulationType?;
    # Reference to the jurisdiction that is assigned to Sub Custodian Agreement in case of legal dispute.
    common:Jurisdiction SubCustodianAgreementJurisdiction?;
    # Reference to the account which is linked to Sub Custodian Agreement
    #
    # A characteristic of agreement which refers to its involved account to specify the account that will be used to register for the transactions in position keeping management.
    common:Account SubCustodianAgreementAccountReference?;
    # The subject matter of  Sub Custodian Agreement
    string SubCustodianAgreementSubjectMatter?;
    # Reference to the product which is linked to Sub Custodian Agreement
    #
    # Comment: 
    # A characteristic of agreement which refers to its related products that are sold by agreement.
    common:Product SubCustodianAgreementProductReference?;
    # The calendar of Sub Custodian Agreement
    common:Calendar SubCustodianAgreementCalendarReference?;
    # Reference to Legal Term
    common:Agreement SubCustodianAgreementAssociatedAgreementReference?;
};

public type SubCustodianLegalTermOk record {|
    *http:Ok;
    SubCustodianLegalTerm body;
|};

public type SubCustodianPolicyTermOk record {|
    *http:Ok;
    SubCustodianPolicyTerm body;
|};

public type SubCustodianRegulatoryTermOk record {|
    *http:Ok;
    SubCustodianRegulatoryTerm body;
|};

