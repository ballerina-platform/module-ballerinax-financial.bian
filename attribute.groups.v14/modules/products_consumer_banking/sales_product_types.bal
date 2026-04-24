import financial.bian.attribute.groups.common as common;

import ballerina/http;

# A collection of terms (within some jurisdiction) that can be selected and configured to define a contract/agreement
# Represents operational terms and conditions that govern the product or service
# Examples: Required disclosures, fees, interest rates, transaction limits
public type OperationalTerm record {
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
    common:Arrangementtypevalues OperationalTermType?;
    # Description of the term, including servicing and fulfillment details
    common:text OperationalTermDescription?;
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
    common:featuretypevalues OperationalTermParameterType?;
    # The value of the parameter for this instance
    productarrangement OperationalTermParameterSetting?;
    # Details of cash flows associated with fulfillment instances of the term (can be charges made to the customer or compensating transfers to the base product profit center)
    'transaction OperationalTermTransactionRecord?;
    # >
    # * `FinancialTransaction` - 
    # * `BusinessTransaction` - 
    # * `BankingTransaction` - 
    # * `AccountingTransaction` - 
    # * `BookingTransaction` - 
    # * `AllocationTransaction` - 
    # * `DeliveryTransaction` - 
    # * `ProductionTransaction` - 
    common:Transactiontypevalues OperationalTermTransactionType?;
    # Description of the term, including servicing and fulfillment details
    common:text OperationalTermTransactionDescription?;
    # Description of the term, including servicing and fulfillment details
    common:text OperationalTermAugmentedCashFlows?;
    # Reference to the underlying funds transfer transaction
    common:paymenttransaction PaymentInitiationTransactionInstanceReference?;
};

# Maintain the terms and conditions that apply to a commercial relationship within Sales Product.
# Represents the formal agreement defining the relationship between bank and customer for products and services
public type ProductandServiceAgreement record {
    # Reference to the underlying product instance - this is the fulfillment vehicle that has amended/augmented features to 'create' the sold product ||
    # |
    common:ProductAgreement ProductInstanceReference?;
    # Reference to the underlying product instance - this is the fulfillment vehicle that has amended/augmented features to 'create' the sold product ||
    # |
    common:ProductAgreement UnderlyingProductInstanceReference?;
    # Reference to the product primary party/owner ||
    # |
    customerrelationship CustomerReference?;
    # Bank branch associated with the product for booking purposes ||
    # |
    common:branch BankBranchLocationReference?;
    # Reference identifier linking the investment account to appropriate tax handling GenericIdentification|GenericIdentification (https://www.iso20022.org/standardsrepository/type/GenericIdentification)|Standard|ISO20022 BM ()
    common:identifier TaxReference?;
    # The setting for the entitlement option ||
    # |
    common:partyobligationorentitlement EntitlementOptionDefinition?;
    # The setting for the entitlement option ||
    # |
    common:partyobligationorentitlement EntitlementOptionSetting?;
    # The setting for the restriction option AccountRestriction_x000D_
    # |AccountRestriction (https://www.iso20022.org/standardsrepository/type/AccountRestriction)|Standard|ISO20022 BM  ()
    common:accountrestriction RestrictionOptionDefinition?;
    # The setting for the restriction option AccountRestriction_x000D_
    # |AccountRestriction (https://www.iso20022.org/standardsrepository/type/AccountRestriction)|Standard|ISO20022 BM  ()
    common:accountrestriction RestrictionOptionSetting?;
    # Details of the linked account Account|Account  (https://www.iso20022.org/standardsrepository/type/Account)|Standard|ISO20022 BM ()
    common:Account LinkedAccounts?;
    # The type and purpose for the link (e.g. guarantor, sweep) ||
    # |
    // common:account_accountrelationshiptypevalues LinkType?;
    # Details of the linked account Account|Account  (https://www.iso20022.org/standardsrepository/type/Account)|Standard|ISO20022 BM ()
    common:Account AccountDetails?;
    # Position limits that are maintained for the sales product as an aspect of the operational terms
    string PositionLimits?;
    # The type of position maintained for the sales product (e.g. transaction credit/debit, netting, position)
    string PositionLimitType?;
    # The position definition, associated limit settings and rules
    string PositionLimitSettings?;
    # The current calculated position
    string PositionLimitValue?;
    # Key dates associated with the sales product (e.g. opening date, closing date) Account/OpeningDate|Account/OpeningDate (https://www.iso20022.org/standardsrepository/type/Account)|Standard|ISO20022 BM ()
    common:Accountdatetimetypevalues DateType?;
    # Value of the date type ISODateTime|ISODateTime (https://www.iso20022.org/standardsrepository/type/ISODateTime)|Standard|ISO20022 BM ()
    common:datetime Date?;
};

# >
# * `Initiated` - 
# * `Executed` - 
# * `Cancelled` - 
# * `Confirmed` - 
# * `Suspended` - 
# * `Pending` - 
# * `Completed` - 
# * `Notified` - 
# * `Booked` - 
# * `Rejected` - 
public type transactionstatustypevalues "Initiated"|"Executed"|"Cancelled"|"Confirmed"|"Suspended"|"Pending"|"Completed"|"Notified"|"Booked"|"Rejected";

# The Date that the transaction has occurred or is planned to occur.
# A characteristic of transaction which refers to the LifecycleDate of transaction (e.g., initiated date, executed date, fulfillment date). 
public type transactiondatetime record {
    # Value of the date type ISODateTime|ISODateTime (https://www.iso20022.org/standardsrepository/type/ISODateTime)|Standard|ISO20022 BM ()
    common:datetime TransactionDate?;
    # >
    # * `ExecutedDate` - 
    # * `FulfillmentDate` - 
    # * `InitiatedDate` - 
    # * `CancelledDate` - 
    # * `ApprovedDate` - 
    # * `ValueDate` - 
    # * `BookingDate` - 
    transactiondatetimetypevalues TransactionDateType?;
};

# The value of the parameter for this instance
public type productarrangement record {
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
    common:Arrangementtypevalues ProductArrangementType?;
};

# Reference to the product primary party/owner ||
# |
public type customerrelationship record {
    # A specific relationship between a specific Bank (= party acting as a supplier of banking services) and one or more other involved parties acting as (potential) consumers of banking services as agreed in one or more banking product or service offerings and/or agreements. 
    string CustomerRelationship?;
};

# A characteristic of transaction which refers to the LifecycleStatus of transaction (e.g., initiated, executed, confirmed, cancelled, etc.) 
public type transactionstatus record {
    # The current lifecycle status of the transaction
    common:status TransactionStatus?;
    # >
    # * `Initiated` - 
    # * `Executed` - 
    # * `Cancelled` - 
    # * `Confirmed` - 
    # * `Suspended` - 
    # * `Pending` - 
    # * `Completed` - 
    # * `Notified` - 
    # * `Booked` - 
    # * `Rejected` - 
    transactionstatustypevalues TransactionStatusType?;
};

public type ProductandServiceAgreementOk record {|
    *http:Ok;
    ProductandServiceAgreement body;
|};

public type 'transaction record {
    common:identifier TransactionIdentification?;
    transactiondatetime TransactionDate?;
    common:Transactiontypevalues TransactionType?;
    common:text TransactionDescription?;
    transactionstatus TransactionStatus?;
    common:name TransactionName?;
};

public type OperationalTermOk record {|
    *http:Ok;
    OperationalTerm body;
|};

# >
# * `ExecutedDate` - 
# * `FulfillmentDate` - 
# * `InitiatedDate` - 
# * `CancelledDate` - 
# * `ApprovedDate` - 
# * `ValueDate` - 
# * `BookingDate` - 
public type transactiondatetimetypevalues "ExecutedDate"|"FulfillmentDate"|"InitiatedDate"|"CancelledDate"|"ApprovedDate"|"ValueDate"|"BookingDate";
