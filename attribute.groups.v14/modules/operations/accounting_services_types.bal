import ballerina/http;
import financial.bian.attribute.groups.common as common;

# >
# * `Suspended` - System is suspended, that is, not operational.
# * `Active` - System is functioning normally, that is, operational.
# * `Closed` - System is closed (eg. normal closure of an RTGS).
# * `Closing` - System needs to wait for completion of intermediate internal activities before going to a status Closed.
# * `Reservemaintenanceperiodstart` - System is starting a new maintenance period.
public type Systemstatustypevalues "Suspended"|"Active"|"Closed"|"Closing"|"Reservemaintenanceperiodstart";

# A Classification value that distinguishes between the type of transactions in Account Reconciliation Procedure
public type Transactiontype record {
    # The name of Condition
    common:Name TransactionTypeName?;
    # >
    # * `FinancialTransaction` - 
    # * `BusinessTransaction` - 
    # * `BankingTransaction` - 
    # * `AccountingTransaction` - 
    # * `BookingTransaction` - 
    # * `AllocationTransaction` - 
    # * `DeliveryTransaction` - 
    # * `ProductionTransaction` - 
    common:Transactiontypevalues TransactionType?;
};

# Complete work tasks following a defined procedure in support of general office activities and product and service delivery within Account Reconciliation. 
public type AccountReconciliationProcedure record {
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
    common:Featuretypevalues AccountReconciliationProcedureParameterType?;
    # A characteristic of service which refers 1) mainly to the function or condition of service. 2) to non-functional features like quality and security
    common:Feature AccountReconciliationProcedureSelectedOption?;
    # Request to process something (most refers to Asset Type)
    common:Instruction AccountReconciliationProcedureRequest?;
    # The timing and key actions/milestones making up the workstep
    common:Schedule AccountReconciliationProcedureSchedule?;
    # AccountReconciliationProcedureStatus
    common:Status AccountReconciliationProcedureStatus?;
    # Reference to an entity that assigns and manages the identification.
    # tReference to the organization or agency that issued the identifier (e.g., DMV, Passport Office).
    common:Involvedparty AccountReconciliationProcedureAssociatedPartyReference?;
    # Reference to an entity that assigns and manages the identification.
    # tReference to the organization or agency that issued the identifier (e.g., DMV, Passport Office).
    common:Involvedparty AccountReconciliationProcedureBusinessUnitReference?;
    # Reference to an entity that assigns and manages the identification.
    # tReference to the organization or agency that issued the identifier (e.g., DMV, Passport Office).
    common:Involvedparty AccountReconciliationProcedureServiceProviderReference?;
    # Reference to the Financial Facility related to Account Reconciliation Procedure
    common:FinancialFacility AccountReconciliationProcedureFinancialFacilityReference?;
    # Reference to an entity that assigns and manages the identification.
    # tReference to the organization or agency that issued the identifier (e.g., DMV, Passport Office).
    common:Involvedparty AccountReconciliationProcedureEmployeeReference?;
    # Reference to an entity that assigns and manages the identification.
    # tReference to the organization or agency that issued the identifier (e.g., DMV, Passport Office).
    common:Involvedparty AccountReconciliationProcedureCustomerReference?;
    # A Classification value that distinguishes between the type of process undertaken within Account Reconciliation Procedure
    Proceduretype AccountReconciliationProcedureType?;
    # The timing and key actions/milestones making up the workstep
    common:Schedule AccountReconciliationProcedureServiceProviderSchedule?;
    # A Classification value that distinguishes between the type of services in Account Reconciliation Procedure
    Servicetype AccountReconciliationProcedureServiceType?;
    # A Classification value that distinguishes between the type of products/services related to Account Reconciliation Procedure
    common:Bankingproducttype AccountReconciliationProcedureProductandServiceType?;
    # Reference to the product or service that is related to Account Reconciliation Procedure
    common:Product AccountReconciliationProcedureProductandServiceInstance?;
    # A Classification value that distinguishes between the type of transactions in Account Reconciliation Procedure
    Transactiontype AccountReconciliationProcedureTransactionType?;
    # Reference to the transaction that is related to Account Reconciliation Procedure
    common:Transaction AccountReconciliationProcedureTransaction?;
    # Reference to the Financial Transaction Arrangement that is related to Account Reconciliation Procedure
    common:Arrangement AccountReconciliationProcedureFinancialTransactionArrangement?;
    # Reference to the Customer Agreement that is related to Account Reconciliation Procedure
    common:Agreement AccountReconciliationProcedureCustomerAgreementReference?;
    # Reference to Account Assessment Workstep
    Procedure AccountReconciliationProcedureReference?;
    # Reference to the Account for which a reconciliation procedure is performed.
    common:Account AccountReconciliationProcedureAccountReference?;
    # Reference to the Document submitted in a reconciliation process.
    common:Document AccountReconciliationProcedureDocumentReference?;
    # Reference to the Transaction which is the result of reconciliation
    ReconciliationTransaction ReconciliationTransactionReference?;
    # Reference to the arrangement committed to perform the reconciliation
    TransactionReconciliationArrangement ReconciliationArrangementReference?;
    # Reference to the Instruction which is a request to fulfill the Reconciliation Arrangement
    ReconciliationInstruction ReconciliationRequestReference?;
    # Reference to the System which provides the reconciliation process.
    System AccountReconciliationProcedureSystemReference?;
};

# A course of action for doing Account Assessment Workstep in the context of executing the Account Assessment Workstep
public type AccountAssessment record {
    # The required status/situation and or tasks that need to be completed prior to the initiation of the workstep
    common:Condition Preconditions?;
    # Reference to an entity that assigns and manages the identification.
    # tReference to the organization or agency that issued the identifier (e.g., DMV, Passport Office).
    common:Involvedparty BusinessUnitorEmployeeReference?;
    # The timing and key actions/milestones making up the workstep
    common:Schedule Schedule?;
    # The Account Assessment Workstep specific Business Service
    common:BusinessService BusinessService?;
    # The required status/situation and or tasks that need to be completed prior to the initiation of the workstep
    common:Condition Postconditions?;
    # Reference to Account Assessment Workstep
    Procedure AccountReconciliationProcedureReference?;
    # Reference to Account Assessment Workstep
    Workstep AccountAssessmentWorkstepReference?;
    # The type of Account Assessment Workstep
    string AccountAssessmentWorkstepType?;
};

# >
# * `Model` - Identification of a model for a given manufacturer.
# * `Serialnumber` - Serial number of a component.
# * `Approvalnumber` - Unique approval number for a component, delivered by a certification body.
# * `Systemversion` - Version of the system, eg, "4.0.1" to indicate version 4.0.1.
# * `Systemname` - Name by which a system is known.
# * `Identification` - Identification of a system.
public type Systemidentificationtypevalues "Model"|"Serialnumber"|"Approvalnumber"|"Systemversion"|"Systemname"|"Identification";

# A Classification value that distinguishes between the type of process undertaken within Procedure
public type Proceduretypevalues record {
    # A Classification value that distinguishes between the type of process undertaken within Procedure
    string Proceduretypevalues?;
};

# A course of action for doing Account Assessment Workstep in the context of executing the Account Assessment Workstep
public type AccountResolution record {
    # The required status/situation and or tasks that need to be completed prior to the initiation of the workstep
    common:Condition Preconditions?;
    # Reference to an entity that assigns and manages the identification.
    # tReference to the organization or agency that issued the identifier (e.g., DMV, Passport Office).
    common:Involvedparty BusinessUnitorEmployeeReference?;
    # The timing and key actions/milestones making up the workstep
    common:Schedule Schedule?;
    # The Account Assessment Workstep specific Business Service
    common:BusinessService BusinessService?;
    # The required status/situation and or tasks that need to be completed prior to the initiation of the workstep
    common:Condition Postconditions?;
    # Reference to Account Assessment Workstep
    Procedure AccountReconciliationProcedureReference?;
    # Reference to Account Assessment Workstep
    Workstep AccountResolutionWorkstepReference?;
    # The type of Account Resolution Workstep
    string AccountResolutionWorkstepType?;
};

# Reference to the Instruction which is a request to fulfill the Reconciliation Arrangement
public type ReconciliationInstruction record {
    # InstructionDate
    common:Instructiondatetime InstructionDate?;
    # A characteristic of instruction which refers to the LifecycleStatus of instruction (e.g., requested, executed, fulfilled, etc.); 
    common:Instructionstatus InstructionStatus?;
    # An identifier that allows to uniquely refer to an instance of an Instruction.
    common:Instructionidentification InstructionIdentification?;
    # >
    # * `PaymentInstruction` - 
    # * `DeliveryOrder` - 
    # * `InformationRequest` - 
    # * `ExchangeInstruction` - 
    # * `AllocationInstruction` - 
    # * `MaintenanceInstruction` - 
    common:Instructiontypevalues InstructionType?;
    # InstructionResult
    string InstructionResult?;
    # InstructionDescription
    string InstructionDescription?;
    # InstructionLog
    common:Log InstructionLog?;
    # InstructionPurpose
    string InstructionPurpose?;
};

public type AccountAssessmentOk record {|
    *http:Ok;
    AccountAssessment body;
|};

# Reference to the Transaction which is the result of reconciliation
public type ReconciliationTransaction record {
    # CumulativeAmount
    common:Amount CumulativeAmount?;
    # >
    # * `Debit` - Debit transactions on the cardholder account.
    # * `Debitreverse` - Reversal of debit transactions (cancellation).
    # * `Credit` - Credit transactions (refund, account, cash service, as defined in the transaction service type).
    # * `Creditreverse` - Reversal of credit transactions (cancellation).
    # * `Declined` - Declined transactions.
    # * `Failed` - Failed transactions.
    # * `Reservation` - Outstanding Reservation transactions.
    Transactiontotalstypevalues TransactionType?;
    # The identifier of Condition
    common:Identifier ReconciliationTransactionIdentification?;
    # Currency
    common:Currencycode Currency?;
    # The identifier of Condition
    common:Identifier TransactionIdentification?;
    # The Date that the transaction has occurred or is planned to occur.
    # A characteristic of transaction which refers to the LifecycleDate of transaction (e.g., initiated date, executed date, fulfillment date). 
    common:Transactiondatetime TransactionDate?;
    # A detailed explanation or commentary of transaction.
    string TransactionDescription?;
    # A characteristic of transaction which refers to the LifecycleStatus of transaction (e.g., initiated, executed, confirmed, cancelled, etc.) 
    common:Transactionstatus TransactionStatus?;
    # The name of Condition
    common:Name TransactionName?;
    # >
    # * `Initiate` - 
    # * `Execute` - 
    # * `Create` - 
    # * `Transfer` - 
    # * `Pay` - 
    # * `Deliver` - 
    # * `Apply` - 
    # * `Calculate` - 
    common:Actiontypevalues ActionType?;
    # EventType
    string EventType?;
    # The date when the identifier became valid.
    common:Datetime EventDateTime?;
    # EventDescription
    string EventDescription?;
    # EventSource
    string EventSource?;
    # EventLocation
    common:Location EventLocation?;
    # EventAction
    common:Action EventAction?;
    # EventStatus
    common:Status EventStatus?;
    # EventValue
    string EventValue?;
    # The validity period of Condition
    common:Datetimeperiod EventValidityPeriod?;
    # The identifier of Condition
    common:Identifier EventIdentification?;
};

# >
# * `Debit` - Debit transactions on the cardholder account.
# * `Debitreverse` - Reversal of debit transactions (cancellation).
# * `Credit` - Credit transactions (refund, account, cash service, as defined in the transaction service type).
# * `Creditreverse` - Reversal of credit transactions (cancellation).
# * `Declined` - Declined transactions.
# * `Failed` - Failed transactions.
# * `Reservation` - Outstanding Reservation transactions.
public type Transactiontotalstypevalues "Debit"|"Debitreverse"|"Credit"|"Creditreverse"|"Declined"|"Failed"|"Reservation";

# A Classification value that distinguishes between the type of process undertaken within Account Reconciliation Procedure
public type Proceduretype record {
    # The name of Condition
    common:Name ProcedureTypeName?;
    # A Classification value that distinguishes between the type of process undertaken within Procedure
    Proceduretypevalues ProcedureType?;
};

# Specifies the card payments which are part of the transaction reconciliation. (ISO20022)
public type Cardpaymentarrangement record {
    # The identifier of Condition
    common:Identifier PaymentCardArrangementIdentifier?;
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
    common:Arrangementtypevalues CardPaymentArrangementType?;
    # >
    # * `CreditTransferService` - A payment service allowing a payer to transfer fund to a beneficiary. (a proposed definition for BIAN BOM adapted from ECB)
    # * `StandingOrderService` - A credit transfer service to make regular transfers on given dates to a named beneﬁciary. (a proposed definition for BIAN BOM adapted from ISO20022)
    # * `DirectDebitService` - A payment service for debiting a payer's payment account, where a payment transaction is initiated by the payee on the basis of the payer's consent given to the payee, to the payee's payment service provider or to the payer's own payment service provider. (a proposed definition for BIAN BOM adapted from PSD)
    # * `CardPaymentService` - A payment service to execute payment transactions through a payment card, including online payments. (a proposed definition for BIAN BOM adapted from PSD)
    # * `WithdrawService` - A payment service to take fund out of an account. (a proposed definition for BIAN BOM)
    # * `DepositService` - A payment service to place funds into an account for safekeeping. (a proposed definition for BIAN BOM)
    # * `OverdraftService` - A payment service that allows fund transfer even if there is no provision on the account. (a proposed definition for BIAN BOM)
    # * `MoneyRemittanceService` - A payment service where funds are received from a payer, without any payment accounts being created in the name of the payer or the payee, for the sole purpose of transferring a corresponding amount to a payee or to another payment service provider acting on behalf of the payee, and/or where such funds are received on behalf of and made available to the payee. (a proposed definition for BIAN BOM adapted from PSD)
    # * `StatementService` - A reporting service on payment transactions registered on an account. (a proposed definition for BIAN BOM)
    common:Paymentservicetypevalues ServiceType?;
    # Key dates related to the payment. 
    common:Paymentdatetime PaymentDate?;
    # The validity period of Condition
    common:Datetimeperiod PaymentPeriod?;
    # >
    # * `Salarypayment` - Transaction is the payment of salaries.
    # * `Treasurypayment` - Transaction is related to treasury operations.
    # * `Advancepayment` - Transaction is an advance payment.
    # * `Agriculturaltransfer` - Transaction is related to the agricultural domain.
    # * `Alimonypayment` - Transaction is the payment of alimony.
    # * `Childbenefit` - Transaction is related to a payment made to assist parent/guardian to maintain child.
    # * `Unemploymentdisabilitybenefit` - Transaction is related to a payment to a person who is unemployed/disabled.
    # * `Bonuspayment.` - Transaction is related to payment of a bonus.
    # * `Cashmanagementtransfer` - Transaction is a general cash management instruction.
    # * `Capitalbuilding` - Transaction is related to capital building fringe fortune, ie capital building for retirement.
    # * `Charitypayment` - Transaction is a payment for charity reasons.
    # * `Collectionpayment` - Transaction is a collection of funds initiated via a credit transfer or direct debit.
    # * `Commoditytransfer` - Transaction is payment of commodities.
    # * `Commercialpayment` - Transaction is related to a payment of commercial credit or debit. (formerly CommercialCredit).
    # * `Commission` - Transaction is payment of commission.
    # * `Costs` - Transaction is related to payment of costs.
    # * `Copyright` - Transaction is payment of copyright.
    # * `Dividend` - Transaction is payment of dividends.
    # * `Foreignexchange` - Transaction is related to a foreign exchange operation.
    # * `Purchasesaleofgoods` - Transaction is related to purchase and sale of goods.
    # * `Governmentpayment` - Transaction is a payment to or from a government department.
    # * `Instalmenthirepurchaseagreement` - Transaction is payment for an installment/hire-purchase agreement.
    # * `Intracompanypayment` - Transaction is an intra-company payment, ie, a payment between two companies belonging to the same group.
    # * `Insurancepremium` - Transaction is payment of an insurance premium.
    # * `Interest` - Transaction is payment of interest.
    # * `Licensefee` - Transaction is payment of a license fee.
    # * `Loan` - Transaction is related to transfer of loan to borrower.
    # * `Loanrepayment` - Transaction is related to repayment of loan to lender.
    # * `Netting` - Transaction is related to a netting operation.
    # * `Payroll` - Transaction is related to the payment of payroll.
    # * `Pensionpayment` - Transaction is the payment of pension.
    # * `Refund` - Transaction is the payment of a refund.
    # * `Rent` - Transaction is the payment of rent.
    # * `Royalties` - Transaction is the payment of royalties.
    # * `Purchasesaleofservices` - Transaction is related to purchase and sale of services.
    # * `Securities` - Transaction is the payment of securities.
    # * `Socialsecuritybenefit` - Transaction is a social security benefit, ie payment made by a government to support individuals.
    # * `Subscription` - Transaction is related to a payment of information or entertainment services either in printed or electronic form.
    # * `Taxpayment` - Transaction is the payment of taxes.
    # * `Valueaddedtaxpayment` - Transaction is the payment of value added tax.
    # * `Consumerthirdpartyconsolidatedpayment` - Transaction is a payment used by a third party who can collect funds to pay on behalf of consumers, ie credit counseling or bill payment companies.
    # * `Debitcollectionpayment` - Collection of funds initiated via a debit transfer.
    # * `Supplierpayment` - Transaction is related to a payment to a supplier.
    # * `Hedging` - Transaction is related to a hedging operation.
    # * `Multipleservicetypes` - Transaction is related to a payment for multiple service types.
    # * `Nototherwisespecified` - Transaction is related to a payment for type of services not specified elsewhere.
    # * `Cardpayment` - Transaction is related to a payment of credit card account.
    # * `Creditcardbill` - Transaction is related to a payment of credit card bill.
    # * `Ferry` - Transaction is a payment for ferry related business.
    # * `Air` - Transaction is a payment for air transport related business.
    # * `Bus` - Transaction is a payment for bus transport related business.
    # * `Railway` - Transaction is a payment for railway transport related business.
    # * `Convalescentcarefacility` - Transaction is a payment for convalescence care facility services.
    # * `Dentalservices` - Transaction is a payment for dental services.
    # * `Anesthesiaservices` - Transaction is a payment for anesthesia services.
    # * `Homehealthcare` - Transaction is a payment for home health care services.
    # * `Hospitalcare` - Transaction is a payment for hospital care services.
    # * `Intermediatecarefacility` - Transaction is a payment for intermediate care facility services.
    # * `Longtermcarefacility` - Transaction is a payment for long-term care facility services.
    # * `Medicalservices` - Transaction is a payment for medical care services.
    # * `Visioncare` - Transaction is a payment for vision care services.
    # * `Durablemedicaleequipment` - Transaction is a payment is for use of durable medical equipment.
    # * `Cabletvbill` - Transaction is related to a payment of cable TV bill.
    # * `Electricitybill` - Transaction is related to a payment of electricity bill.
    # * `Gasbill` - Transaction is related to a payment of gas bill.
    # * `Telephonebill` - Transaction is related to a payment of telephone bill.
    # * `Othertelecomrelatedbill` - Transaction is related to a payment of other telecom related bill.
    # * `Waterbill` - Transaction is related to a payment of water bill.
    # * `Study` - Transaction is related to a payment of study/tuition costs.
    # * `Pricepayment` - Transaction is related to a payment of a price.
    # * `Installment` - Transaction is related to a payment of an installment.
    # * `Recurringinstallmentpayment` - Transaction is related to a payment of a recurring installment made at regular intervals.
    # * `Openingfee` - Transaction is related to a payment of opening fee.
    # * `Cancellationfee` - Transaction is related to a payment of cancellation fee.
    # * `Governmentinsurance` - Transaction is related to a payment of government insurance.
    # * `Insurancepremiumcar` - Transaction is a payment of car insurance premium.
    # * `Laborinsurance` - Transaction is a payment of labor insurance.
    # * `Lifeinsurance` - Transaction is a payment of life insurance.
    # * `Propertyinsurance` - Transaction is a payment of property insurance.
    # * `Healthinsurance` - Transaction is a payment of health insurance.
    # * `Carloanprincipalrepayment` - Transaction is a payment of car loan principal payment.
    # * `Housingloanrepayment` - Transaction is related to a payment of housing loan.
    # * `Companysocialloanpaymenttobank` - Transaction is a payment by a company to a bank for financing social loans to employees.
    # * `Estatetax` - Transaction is related to a payment of estate tax.
    # * `Housingtax` - Transaction is related to a payment of housing tax.
    # * `Incometax` - Transaction is related to a payment of income tax.
    # * `Netincometax` - Transaction is related to a payment of net income tax.
    # * `Businessexpenses` - Transaction is related to a payment of business expenses.
    # * `Trustfund` - Transaction is related to a payment of a trust fund.
    # * `Networkcharge` - Transaction is related to a payment of network charges.
    # * `Networkcommunication` - Transaction is related to a payment of network communication.
    # * `Receiptpayment` - Transaction is related to a payment of receipt.
    # * `Paymentterms` - Transaction is related to payment terms specifications.
    # * `Other` - Other payment purpose.
    # * `Withholding` - Transaction is related to a payment of withholding tax.
    common:Paymentpurposevalues PaymentPurpose?;
    # Amount of the payment (arranged to be paid)
    common:Paymentamountandcurrency PaymentAmountAndCurrency?;
    # >
    # * `Cheque` - Written order to a bank to pay a certain amount of money from one person to another person.
    # * `Credittransfer` - Transfer of an amount of money in the books of the account servicer.
    # * `Directdebit` - Collection of an amount of money from the debtor's bank account by the creditor. The amount of money and dates of collections may vary.
    # * `Transferadvice` - Transfer of an amount of money in the books of the account servicer. An advice should be sent back to the account owner.
    # * `Direct` - Direct method.
    # * `Classical` - Classical method.
    common:Paymentmethodtypevalues PaymentMethod?;
    # >
    # * `Cashtransaction` - Transaction is a withdrawal/deposit of cash.
    # * `Domesticpayment` - Payment has an origin and a destination in the same country, and is made in the currency of that country.
    # * `Domestichighvaluepayment` - Transaction is a high value payment that has an origin and a destination in the same country and is made in the currency of that country.
    # * `Domesticprioritypayment` - Transaction is a priority payment that has an origin and a destination in the same country and is made in the currency of that country.
    # * `Crossborderpayment` - Payment has an origin in one country, a destination in another, and is made in the currency of either the origin or destination country.
    # * `Crossborderprioritypayment` - Transaction is a priority payment that has an origin in one country and a destination in another and is made in the currency of either the origin or destination country.
    # * `Crossborderhighvaluepayment` - Transaction is a high value payment that has an origin in one country and a destination in another country and is made in the currency of either the origin or destination country.
    # * `Thirdcurrencypayment` - Transaction is a payment that is made in a third currency to the origin and destination countries. The origin and destination countries may be one and the same country.
    # * `Thirdcurrencyhighvaluepayment` - Transaction is a high value payment that is made in a third currency to the origin and destination countries. The origin and destination countries may be one and the same country.
    # * `Thirdcurrencyprioritypayment` - Payment is made in a third currency to the origin and destination countries. The origin and destination countries may be the same country.
    # * `Tradesettlementpayment` - Transaction is the settlement of a trade, eg, a securities transaction.
    # * `Foreignexchange` - Transaction isthe settlement of a foreign exchange deal.
    # * `Equivalentamount` - Transaction is an equivalent amount relative to a currency conversion.
    # * `Loan` - Transaction is the payment of a specific amount of money lent by a creditor/lender.
    # * `Loanrepayment` - Transaction is an amount of money transferred in repayment of loan.
    # * `Securities` - Transaction is a payment of securities.
    # * `Lockbox` - Transaction is a payment(s) resulting from a lock box service.
    # * `Dividend` - Transaction is a payment of dividends.
    # * `Crossedcheque` - Transaction is a crossed cheque. A crossed check has two parallel lines across its face, indicating that the cheque must be paid into an account and not cashed over the counter.
    # * `Opencheque` - Transaction is an uncrossed cheque that can be cashed at the bank of origin.
    # * `Ordercheque` - Transaction is a cheque made payable to a named recipient 'or order' enabling the creditor to either deposit it in an account or endorse it to a third party, ie, transfer the rights to the cheque by signing it on the reverse.
    # * `Circularcheque` - Transaction is an instruction from a bank to its correspondent bank to pay the creditor a stated sum of money on presentation of a means of identification.
    # * `Travellerscheques` - Transaction is a payment resulting from travellers cheques.
    # * `Bankdraft` - Transaction is a cheque drawn by a bank on itself or its agent. A person who owes money to another buys the draft from a bank for cash and hands it to the creditor who need have no fear that it might be dishonoured.
    # * `Documentarycredit` - Transaction is a documentary credit from one banker to another, authorising the payment of a specified sum of money to the person named in the document, based on specified conditions.
    # * `Billofexchange` - Transaction is a written order from a drawer to a drawee to pay a specified sum of money upon demand, or on a specified date, to the drawer or to a third party specified by the drawer. A bill of exchange is also called a draft.
    # * `Collection` - Transaction is a collection. A collection is the act of sending a cheque, bill of exchange or another financial instrument to the prospective financial institution for payment.
    # * `Cashmanagementtransfer` - Transaction is a general cash management instruction.
    # * `Topaccount` - Transaction is a cash management instruction, requesting to top the account of the debtor above a certain floor amount. The floor amount, if not pre-agreed by the parties involved, may be specified.
    # * `Zerobalanceaccount` - Transaction is a cash management instruction, requesting to zero balance the account of the debtor.
    # * `Standingfacilities` - Payment is linked to overnight deposits and the marginal lending facility.
    # * `Standardservicelevelcredit` - Transaction is a credit transfer to be processed according to the Standard Service Level.
    # * `Liquiditytransfer` - Payment is made to transfer liquidity to/from the settlement account of a member, to/from the current account held at the central institution or any other institution.
    # * `Advancepayment` - Transaction is a payment made in advance or as an advance.
    # * `Valuedateadjustment` - Transaction reverses a previously incorrectly value dated entry.
    # * `Dvpgross` - Gross cash payment offsetting the amount owed/due for a securities transaction settlement.
    # * `Dvpnet` - Net payment offsetting the cash balance due/owed for a series of securities transactions settlement.
    # * `Netting` - Transaction is a netting operation.
    # * `Limitpayment` - Transaction is a payment that is processed when the pool of liquidity exceeds the minimum value reserved for an express payment in the RTGSPlus system.
    # * `Backup` - Payment is made under the recovery procedure to move liquidity to/from the settlement account of a member according to the specifications of the system.
    # * `Expresspayment` - Transaction is a payment that is processed whenever liquidity is available on the settlement account of a member of the RTGSPlus system.
    # * `Centralbankoperation` - Payment is made to settle an operation made with the central bank.
    # * `Clspayment` - Payment is linked to CLS activities.
    # * `Eurodomesticpayment` - Transaction is a credit transfer in Euro with its country of origin and country of destination within the European Union. The origin and destination countries may be one and the same country.
    # * `Agriculturaltransfer` - Transaction is related to the agricultural domain.
    # * `Alimonypayment` - Transaction is a payment(s) made by one spouse to the other after a separation or divorce. An alimony payment may be applied to other family relationships.
    # * `Balanceretail` - Transaction is a payment offsetting the net cash balance owed/due in a retail payment system.
    # * `Bonuspayment.` - Net cash payment offsetting the balance due/owed in a retail payment system.
    # * `Brokeragefee` - Transaction is charges levied by a broker.
    # * `Capitalbuilding` - Transaction is payment into a personal pension scheme for retirement.
    # * `Charitypayment` - Transaction is a payment for charity reasons.
    # * `Childbenefit` - Transaction is a payment made to a parent/guardian to help maintain a child.
    # * `Commercialcredit` - Transaction is settlement of a commercial credit.
    # * `Commission` - Transaction is payment of a fee for executing a transaction.
    # * `Commoditytransfer` - Transaction is a payment of products traded on a commodity exchange.
    # * `Costs` - Transaction is apayment of costs.
    # * `Copyright` - Transaction is a payment of copyright.
    # * `Governmentpayment` - Transaction is apayment to or from a government department.
    # * `Instalmenthirepurchaseagreement` - Transaction is a payment of an instalment or to the settlement of a hire-purchase agreement.
    # * `Insurancepremium` - Transaction is a payment of an insurance premium.
    # * `Intracompanypayment` - Transaction is an intra-company payment, ie, a payment between two companies belonging to the same group.
    # * `Interest` - Transaction is a payment of interest.
    # * `Licensefee` - Transaction is a payment of a license fee.
    # * `Metals` - Transaction is a purchase or sale of metals.
    # * `Pensionpayment` - Transaction is a payment of a pension allowance.
    # * `Purchasesaleofgoods` - Transaction is a payment for the purchase and sale of goods.
    # * `Refund` - Transaction is a repayment of funds.
    # * `Rent` - Transaction is a payment of rent.
    # * `Royalties` - Transaction is a payment of royalties.
    # * `Purchasesaleofservices` - Transaction is a payment for the purchase and sale of services.
    # * `Salarypayment` - Transaction is a payment of salaries.
    # * `Socialsecuritybenefit` - Transaction is a social security benefit, a payment made by a government to support individuals.
    # * `Standingorder` - Transaction is a standing order. A standing order is an instruction given by a party having explicit authority on the account to debit, ie, either debit account owner or originating party, to a first agent to process cash transfers at specified intervals during an implicit or explicit period of time. It is given once, and is valid for an open or closed period of time.
    # * `Subscription` - Transaction is a payment of a subscription.
    # * `Treasurystatepayment` - Payment is linked to the Treasury State.
    # * `Unemploymentdisabilitybenefit` - Transaction is a payment made to an unemployed/disabled person.
    # * `Valueaddedtaxpayment` - Transaction is apayment of value added tax.
    # * `Taxpayment` - Transaction is a payment of taxes.
    # * `Overnightdeposit` - Transaction is linked to an overnight deposit.
    # * `Marginallending` - Transaction is linked to the marginal lending facility.
    # * `Other` - Specifies that a proprietary code must be indicated.
    # * `Upfront` - Transaction is an initial payment made by one of the counterparties  either to bring a transaction to fair value or for any other reason that may be the cause of an off-market transaction.
    # * `Unwind` - Transaction is the final settlement payment made when a transaction is unwound prior to its end date or a payment that may result due to the full termination of derivative transaction(s).
    # * `Principalexchange` - Transaction is an exchange of notional values for cross-currency swaps.
    common:Paymenttypevalues PaymentType?;
    # >
    # * `Paymentondelivery` - Code for payment on delivery.
    # * `Endofmonthofdelivery` - Code for payment at end of month of delivery.
    # * `Endofperiodafterdelivery` - Code for payment at end of period after delivery.
    # * `Endofperiodafterendofdeliverymonth` - Code for payment at end of period after end of month of delivery.
    # * `Paymentonreceiptofinvoice` - Code for payment on receipt of invoice.
    # * `Endofperiodafterendofreceiptmonth` - Code for payment at end of period after end of month of receipt of invoice.
    # * `Endofperiodafterreceipt` - Code for payment at end of period after receipt of invoice.
    # * `Endofmonthofreceipt` - Code for payment at end of month of receipt of invoice.
    # * `Endofperiodaftermatch` - Code for payment at end of period after match or mismatch acceptance.
    # * `Endofperiodaftershipmentdate` - Payment at end of period after shipment date.
    # * `Endofperiodafterpurchaseorderdate` - Payment at end of period after purchase order date.
    # * `Endofperiodafterbaselineestablishment` - Payment at end of period after baseline establishment date.
    # * `Endofperiodafterinvoicedate` - Payment at end of period after invoice date.
    common:Paymenttimevalues PaymentTime?;
    # >
    # * `Fax` - Remittance advice information must be faxed.
    # * `Electronicdatainterchange` - Remittance advice information must be sent through Electronic Data Interchange (EDI).
    # * `Uniformresourceidentifier` - Remittance advice information needs to be sent to a Uniform Resource Identifier (URI). URI is a compact string of characters that uniquely identify an abstract or physical resource. URI's are the super-set of identifiers, such as URLs, email addresses, ftp sites, etc, and as such, provide the syntax for all of the identification schemes.
    # * `Email` - Remittance advice information must be sent through e-mail.
    # * `Post` - Remittance advice information must be sent through postal services.
    # * `SMS` - Remittance advice information must be sent through by phone as a short message service (SMS).
    common:Remittancedeliverymethodtypevalues RemittanceDeliveryMethod?;
    # Address to which the first agent is to send the remittance information. (ISO20022)
    common:Contactpoint RemittanceLocation?;
    # PaymentIdentification
    common:Paymentidentification PaymentIdentification?;
    # The timing and key actions/milestones making up the workstep
    common:Schedule PaymentSchedule?;
    # PaymentFrequency
    common:Frequency PaymentFrequency?;
    # Payment reference (sometimes called remittance information or payment description) can appear at both debtor and creditor levels, but with slightly different roles:
    #
    # At the Debtor (Payer) Level 
    # The debtor provides the reference/narrative when initiating the payment. 
    # Purpose: to explain what the payment is for (e.g., Invoice 1234, August rent). 
    # This is usually optional, but very useful for reconciliation.
    #
    #
    # At the Creditor (Payee) Level 
    # The same reference is transmitted along with the payment message and shown to the creditor when funds are received. 
    # Purpose: allows the creditor to match the payment to the correct invoice, order, or account.
    string PaymentDescription?;
};

# Reference to Account Assessment Workstep
public type Workstep record {
    # WorkstepResult
    string WorkstepResult?;
    # A Classification value that distinguishes between the type of workstep undertaken within Procedure
    Worksteptypevalues WorkstepType?;
    # WorkstepDescription
    string WorkstepDescription?;
    # The date when the identifier became valid.
    common:Datetime WorkstepDateTime?;
    # WorkstepStatus
    common:Status WorkstepStatus?;
    # WorkstepWorkproduct
    common:Workproduct WorkstepWorkproduct?;
};

# Reference to the arrangement committed to perform the reconciliation
public type TransactionReconciliationArrangement record {
    # Total number of transactions during a reconciliation period (ISO20022)
    string TotalNumber?;
    # >
    # * `Debit` - Debit transactions on the cardholder account.
    # * `Debitreverse` - Reversal of debit transactions (cancellation).
    # * `Credit` - Credit transactions (refund, account, cash service, as defined in the transaction service type).
    # * `Creditreverse` - Reversal of credit transactions (cancellation).
    # * `Declined` - Declined transactions.
    # * `Failed` - Failed transactions.
    # * `Reservation` - Outstanding Reservation transactions.
    Transactiontotalstypevalues TransactionType?;
    # The identifier of Condition
    common:Identifier ReconciliationIdentification?;
    # Specifies the card payments which are part of the transaction reconciliation. (ISO20022)
    Cardpaymentarrangement CardPayment?;
    # Indicates if the transaction requires a closure of the reconciliation period. (ISO20022)
    string ClosePeriodIndicator?;
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
    # The identifier of Condition
    common:Identifier ArrangementIdentification?;
};

public type AccountReconciliationProcedureOk record {|
    *http:Ok;
    AccountReconciliationProcedure body;
|};

# Reference to Account Assessment Workstep
public type Procedure record {
    # A Classification value that distinguishes between the type of process undertaken within Procedure
    Proceduretypevalues ProcedureType?;
    # The date when the identifier became valid.
    common:Datetime ProcedureDateTime?;
    # Request to process something (most refers to Asset Type)
    common:Instruction ProcedureRequest?;
    # The timing and key actions/milestones making up the workstep
    common:Schedule ProcedureSchedule?;
    # ProcedureStatus
    common:Status ProcedureStatus?;
};

# A Classification value that distinguishes between the type of services in Account Reconciliation Procedure
public type Servicetype record {
    # The name of Condition
    common:Name ServiceTypeName?;
    # >
    # * `ITService` - 
    # * `AdministrativeService` - 
    # * `SystemService` - 
    # * `FinancialService` - 
    # * `InformationService` - 
    # * `BusinessService` - 
    common:Servicetypevalues ServiceType?;
};

# Reference to the System which provides the reconciliation process.
public type System record {
    # The timing and key actions/milestones making up the workstep
    common:Schedule SystemAccessSchedule?;
    # SystemType
    string SystemType?;
    # The identifier of Condition
    common:Identifier SystemIdentification?;
    # >
    # * `Model` - Identification of a model for a given manufacturer.
    # * `Serialnumber` - Serial number of a component.
    # * `Approvalnumber` - Unique approval number for a component, delivered by a certification body.
    # * `Systemversion` - Version of the system, eg, "4.0.1" to indicate version 4.0.1.
    # * `Systemname` - Name by which a system is known.
    # * `Identification` - Identification of a system.
    Systemidentificationtypevalues SystemIdentificationType?;
    # SystemStatus
    common:Status SystemStatus?;
    # >
    # * `Suspended` - System is suspended, that is, not operational.
    # * `Active` - System is functioning normally, that is, operational.
    # * `Closed` - System is closed (eg. normal closure of an RTGS).
    # * `Closing` - System needs to wait for completion of intermediate internal activities before going to a status Closed.
    # * `Reservemaintenanceperiodstart` - System is starting a new maintenance period.
    Systemstatustypevalues SystemStatusType?;
    # The date when the identifier became valid.
    common:Datetime SystemDateTime?;
    #
    # Specifies the language used by the system. (ISO20022)
    string SystemLanguage?;
};

public type AccountResolutionOk record {|
    *http:Ok;
    AccountResolution body;
|};

# A Classification value that distinguishes between the type of workstep undertaken within Procedure
public type Worksteptypevalues record {
    # A Classification value that distinguishes between the type of workstep undertaken within Procedure
    string Worksteptypevalues?;
};

# A course of action for doing Receivables Evaluation in the context of executing the Receivables Evaluation
public type ReceivablesEvaluation record {
    # The required status/situation and or tasks that need to be completed prior to the initiation of the workstep
    common:Condition Preconditions?;
    # Reference to an entity that assigns and manages the identification.
    # tReference to the organization or agency that issued the identifier (e.g., DMV, Passport Office).
    common:Involvedparty BusinessUnitEmployeeReference?;
    # The timing and key actions/milestones making up the workstep
    common:Schedule Schedule?;
    # The Receivables Evaluation specific Business Service
    common:BusinessService BusinessService?;
    # The required status/situation and or tasks that need to be completed prior to the initiation of the workstep
    common:Condition Postconditions?;
    # Reference to Receivables Evaluation
    Procedure AccountsReceivableProcedureReference?;
    # Reference to Receivables Evaluation
    Workstep ReceivablesEvaluationReference?;
    # The type of Receivables Evaluation
    string ReceivablesEvaluationType?;
};

public type AccountsReceivableProcedureOk record {|
    *http:Ok;
    AccountsReceivableProcedure body;
|};

# Reference to the party who is involved in Accounts Receivable Procedure
public type AccountsReceivableProcedure record {
    # A Classification value that distinguishes between the type of process undertaken within Procedure
    Proceduretypevalues ProcedureType?;
    # The date when the identifier became valid.
    common:Datetime ProcedureDateTime?;
    # Request to process something (most refers to Asset Type)
    common:Instruction ProcedureRequest?;
    # The timing and key actions/milestones making up the workstep
    common:Schedule ProcedureSchedule?;
    # ProcedureStatus
    common:Status ProcedureStatus?;
};

public type CustomerNegotiationOk record {|
    *http:Ok;
    CustomerNegotiation body;
|};

# A course of action for doing Receivables Evaluation in the context of executing the Receivables Evaluation
public type CustomerNegotiation record {
    # The required status/situation and or tasks that need to be completed prior to the initiation of the workstep
    common:Condition Preconditions?;
    # Reference to an entity that assigns and manages the identification.
    # tReference to the organization or agency that issued the identifier (e.g., DMV, Passport Office).
    common:Involvedparty BusinessUnitEmployeeReference?;
    # The timing and key actions/milestones making up the workstep
    common:Schedule Schedule?;
    # The Receivables Evaluation specific Business Service
    common:BusinessService BusinessService?;
    # The required status/situation and or tasks that need to be completed prior to the initiation of the workstep
    common:Condition Postconditions?;
    # Reference to Receivables Evaluation
    Procedure AccountsReceivableProcedureReference?;
    # Reference to Receivables Evaluation
    Workstep CustomerNegotiationReference?;
    # The type of Customer Negotiation
    string CustomerNegotiationType?;
};

public type PaymentOk record {|
    *http:Ok;
    Payment body;
|};

# A course of action for doing Receivables Evaluation in the context of executing the Receivables Evaluation
public type Payment record {
    # The required status/situation and or tasks that need to be completed prior to the initiation of the workstep
    common:Condition Preconditions?;
    # Reference to an entity that assigns and manages the identification.
    # tReference to the organization or agency that issued the identifier (e.g., DMV, Passport Office).
    common:Involvedparty BusinessUnitEmployeeReference?;
    # The timing and key actions/milestones making up the workstep
    common:Schedule Schedule?;
    # The Receivables Evaluation specific Business Service
    common:BusinessService BusinessService?;
    # The required status/situation and or tasks that need to be completed prior to the initiation of the workstep
    common:Condition Postconditions?;
    # Reference to Receivables Evaluation
    Procedure AccountsReceivableProcedureReference?;
    # Reference to Receivables Evaluation
    Workstep PaymentReference?;
    # The type of Payment
    string PaymentType?;
};

public type ReceivablesEvaluationOk record {|
    *http:Ok;
    ReceivablesEvaluation body;
|};

public type ResolutionOk record {|
    *http:Ok;
    Resolution body;
|};

# A course of action for doing Receivables Evaluation in the context of executing the Receivables Evaluation
public type Resolution record {
    # The required status/situation and or tasks that need to be completed prior to the initiation of the workstep
    common:Condition Preconditions?;
    # Reference to an entity that assigns and manages the identification.
    # tReference to the organization or agency that issued the identifier (e.g., DMV, Passport Office).
    common:Involvedparty BusinessUnitEmployeeReference?;
    # The timing and key actions/milestones making up the workstep
    common:Schedule Schedule?;
    # The Receivables Evaluation specific Business Service
    common:BusinessService BusinessService?;
    # The required status/situation and or tasks that need to be completed prior to the initiation of the workstep
    common:Condition Postconditions?;
    # Reference to Receivables Evaluation
    Procedure AccountsReceivableProcedureReference?;
    # Reference to Receivables Evaluation
    Workstep ResolutionReference?;
    # The type of Resolution
    string ResolutionType?;
};

# Execute a well-bounded financial transaction/task, typically involving largely automated/structured fulfillment processing  within Commissions. 
# Example: Execute a payment transaction.
public type CommissionTransaction record {
    # CommissionTransactionParameterType
    common:Featuretypevalues CommissionTransactionParameterType?;
    # CommissionTransactionSelectedOption
    common:Feature CommissionTransactionSelectedOption?;
    # CommissionTransactionStatus
    common:Status CommissionTransactionStatus?;
    # CommissionTransactionType
    common:Transactiontypevalues CommissionTransactionType?;
    # CommissionTransactionTransactionType
    common:Transactiontypevalues CommissionTransactionTransactionType?;
    # CommissionTransactionTransaction
    common:Transaction CommissionTransactionTransaction?;
};

# The Check is a discrete action or task that is required in the execution of the Check
public type Calculation record {
    # Preconditions
    common:Condition Preconditions?;
    # Schedule
    common:Schedule Schedule?;
    # BusinessService
    common:BusinessService BusinessService?;
    # Postconditions
    common:Condition Postconditions?;
    # CommissionTransactionReference
    common:Transaction CommissionTransactionReference?;
    # CalculationReference
    common:Task CalculationReference?;
    # CalculationType
    string CalculationType?;
};

public type CommissionTransactionOk record {|
    *http:Ok;
    CommissionTransaction body;
|};

# The Check is a discrete action or task that is required in the execution of the Check
public type Confirmation record {
    # Preconditions
    common:Condition Preconditions?;
    # Schedule
    common:Schedule Schedule?;
    # BusinessService
    common:BusinessService BusinessService?;
    # Postconditions
    common:Condition Postconditions?;
    # CommissionTransactionReference
    common:Transaction CommissionTransactionReference?;
    # CheckReference
    common:Task CheckReference?;
    # CheckType
    string CheckType?;
};

public type ConfirmationOk record {|
    *http:Ok;
    Confirmation body;
|};

# A collection of information feeds/measures that can be used to track the status of one or more items/entitites
#
# Examples: Composite position, Customer alert
public type CollateralAllocation record {
    # CustomerReference
    common:Involvedparty CustomerReference?;
    # CollateralAssetType
    common:Assettypevalues CollateralAssetType?;
    # CollateralAssetReference
    CollateralAsset CollateralAssetReference?;
    # CollateralAssetDescription
    string CollateralAssetDescription?;
    # CollateralAssetAdministrationInstanceReference
    CollateralAssetAdministrativePlan CollateralAssetAdministrationInstanceReference?;
    # CollateralAssetStatus
    common:Collateralassetstatustypevalues CollateralAssetStatus?;
    # CollateralAssetValuation
    AssetValuation CollateralAssetValuation?;
    # CollateralAssetAllocationProfile
    CollateralAssetAllocation CollateralAssetAllocationProfile?;
    # CollateralAssetValuationDate
    common:Datetime CollateralAssetValuationDate?;
    # CollateralAssetLoantoValueRatio
    string CollateralAssetLoantoValueRatio?;
    # CustomerCollateralPositionAnalysisRecord
    common:Analysis CustomerCollateralPositionAnalysisRecord?;
};

# Reference to the collateral item (e.g. address, account reference)
public type CollateralAsset record {
    # CollateralAssetIdentification
    common:Identifier CollateralAssetIdentification?;
    # CollateralAssetType
    common:Collateraltypevalues CollateralAssetType?;
    # CollateralAssetStatus
   common:Collateralassetstatustypevalues CollateralAssetStatus?;
    # AssetTitle
    string AssetTitle?;
    # AssetIdentification
    common:Identifier AssetIdentification?;
    # AssetType
    common:Assettypevalues AssetType?;
    # AssetDescription
    string AssetDescription?;
    # AssetStatus
    common:Status AssetStatus?;
    # AssetDate
    common:Datetime AssetDate?;
    # AssetClassification
    string AssetClassification?;
    # AssetClassificationType
    common:Assetclassificationtypevalues AssetClassificationType?;
    # AssetSubClassificationType
    common:Assetsubclassificationtypevalues AssetSubClassificationType?;
    # AssetSubClassification
    string AssetSubClassification?;
};

# The current and historical valuation of the asset
public type AssetValuation record {
    # AssetValue
    string AssetValue?;
    # AssetValueType
    string AssetValueType?;
    # AssetValuationType
    string AssetValuationType?;
    # AssetValuationDate
    common:Datetime AssetValuationDate?;
    # AssetValuationRate
    common:Rate AssetValuationRate?;
    # AssetValuationStatus
    common:Status AssetValuationStatus?;
    # AssetValuationValidityPeriod
    common:Datetimeperiod AssetValuationValidityPeriod?;
    # AsseValuationAmount
    common:Amount AsseValuationAmount?;
    # AssessmentType
    common:Assessmenttypevalues AssessmentType?;
    # AssessmentMethod
    string AssessmentMethod?;
    # AssessmentSchedule
    common:Schedule AssessmentSchedule?;
    # AssessmentDescription
    string AssessmentDescription?;
    # AssessmentModel
    common:Model AssessmentModel?;
    # AssessmentDateTime
    common:Datetime AssessmentDateTime?;
    # AssessmentResult
    string AssessmentResult?;
    # AssessmentSupportingDocument
    common:Document AssessmentSupportingDocument?;
    # AssessmentRepresentingDocument
    common:Document AssessmentRepresentingDocument?;
    # AssessmentRequiredAdjustment
    string AssessmentRequiredAdjustment?;
    # AssessmentRequirement
    common:Requirement AssessmentRequirement?;
    # AssessmentExpiryDate
    common:Date AssessmentExpiryDate?;
    # AssessmentStatus
    common:Status AssessmentStatus?;
    # AssessmentIdentification
    common:Identifier AssessmentIdentification?;
};

# Monitor and define the status/rating of some entity within Customer Position. 
public type CustomerPositionState record {
    # CustomerReference
    common:Involvedparty CustomerReference?;
    # CustomerPositioReference
    CustomerPosition CustomerPositioReference?;
    # AccountReference
    common:ProductAgreement AccountReference?;
    # CustomerPositionStateReference
    common:Identifier CustomerPositionStateReference?;
};

public type CashflowOk record {|
    *http:Ok;
    Cashflow body;
|};

# A collection of information feeds/measures that can be used to track the status of one or more items/entitites
#
# Examples: Composite position, Customer alert
public type Cashflow record {
    # ProductInstanceReference
    common:ProductAgreement ProductInstanceReference?;
    # ProductArrangementInstanceReportType
    common:Reporttypevalues ProductArrangementInstanceReportType?;
    # ProductArrangementInstanceReport
    common:Report ProductArrangementInstanceReport?;
    # ReportOptionsSelectionCriteria
    ReportingArrangement ReportOptionsSelectionCriteria?;
    # ReportPeriod
    common:Datetimeperiod ReportPeriod?;
    # ReportFormatTemplate
    string ReportFormatTemplate?;
    # Report
    common:Report Report?;
    # CustomerCashflowPositionAnalysisRecord
    common:Analysis CustomerCashflowPositionAnalysisRecord?;
    # CustomerProductType
    common:Productagreementtypevalues CustomerProductType?;
    # CustomerAccountBalance
    common:Accountbalance CustomerAccountBalance?;
};

# A collection of information feeds/measures that can be used to track the status of one or more items/entitites
#
# Examples: Composite position, Customer alert
public type Credit record {
    # CustomerCreditRatingAssessment
    CustomerCreditRatingAssessment CustomerCreditRatingAssessment?;
    # CustomerCreditRatingAssessmentType
    Creditratingassessmenttype CustomerCreditRatingAssessmentType?;
    # CustomerCreditRatingNarrative
    string CustomerCreditRatingNarrative?;
    # CustomerCreditPositionAnalysisRecord
    common:Analysis CustomerCreditPositionAnalysisRecord?;
};

# The internal bank credit rating/assessment
public type CustomerCreditRatingAssessment record {
    # CreditRatingAssessmentType
    string CreditRatingAssessmentType?;
    # AssessmentType
    common:Assessmenttypevalues AssessmentType?;
    # AssessmentMethod
    string AssessmentMethod?;
    # AssessmentSchedule
    common:Schedule AssessmentSchedule?;
    # AssessmentDescription
    string AssessmentDescription?;
    # AssessmentModel
    common:Model AssessmentModel?;
    # AssessmentDateTime
    common:Datetime AssessmentDateTime?;
    # AssessmentResult
    string AssessmentResult?;
    # AssessmentSupportingDocument
    common:Document AssessmentSupportingDocument?;
    # AssessmentRepresentingDocument
    common:Document AssessmentRepresentingDocument?;
    # AssessmentRequiredAdjustment
    string AssessmentRequiredAdjustment?;
    # AssessmentRequirement
    common:Requirement AssessmentRequirement?;
    # AssessmentExpiryDate
    common:Date AssessmentExpiryDate?;
    # AssessmentStatus
    common:Status AssessmentStatus?;
    # AssessmentIdentification
    common:Identifier AssessmentIdentification?;
};

public type CreditOk record {|
    *http:Ok;
    Credit body;
|};

public type CustomerPositionStateOk record {|
    *http:Ok;
    CustomerPositionState body;
|};

# Credit assessment type (e.g. consumer, small business, corporate)
public type Creditratingassessmenttype record {
    # Creditratingassessmenttype
    string Creditratingassessmenttype?;
};

# The consolidated position state that is tracked for the customer - combines analysis from all  measures
public type CustomerPosition record {
    # PositionType
    common:Positiontypevalues PositionType?;
    # EventReference
    string EventReference?;
};

# Defines content/transaction types to be included in the report extract
public type ReportingArrangement record {
    # ReportingChannel
    Channel ReportingChannel?;
    # ReportingFrequency
    common:Frequencytypevalues ReportingFrequency?;
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
    # Arrangementtype
    common:Arrangementtypevalues Arrangementtype?;
    # ArrangementIdentification
    common:Identifier ArrangementIdentification?;
};

# Specifies the channel through which the report must be made available to the  information recipient.
public type Channel record {
    # >
    # * `CommunicationChannel` - 
    # * `AuthenticationChannel` - 
    common:Channeltypevalues ChannelType?;
};

# >
# * `Fullyallocated` - 
# * `Partiallyallocated` - 
# * `Earmarked` - Not allocated, merely earmarked
public type Allocationstatustypevalues "Fullyallocated"|"Partiallyallocated"|"Earmarked";

# >
# * `1` - 
# * `0` - 
public type Truefalseindicatorvalues "1"|"0";

# >
# * `TaxIdentificationNumber` - 
# * `GlobalIntermediaryIdentificationNumber` - 
public type Taxidentificationtypevalues "TaxIdentificationNumber"|"GlobalIntermediaryIdentificationNumber";

# The product features/services available with a financical facility
public type Reporting record {
    # Reference to an entity that assigns and manages the identification.
    # tReference to the organization or agency that issued the identifier (e.g., DMV, Passport Office).
    common:Involvedparty CustomerTaxReportInstanceReference?;
    # >
    # * `FinancialReport` - 
    # * `BusinessReport` - 
    # * `ManagementReport` - 
    # * `Statement` - 
    # * `MaintenanceReport` - 
    # * `RegulatoryReport` - 
    # * `TaxReport` - 
    # * `AnalysisReport` - 
    common:Reporttypevalues CustomerTaxReportType?;
    # The reporting period, detailing from-to dates covered by the tax report
    common:Datetimeperiod CustomerTaxReportPeriod?;
    # The customer's consolidated product/service tax report
    common:Report CustomerTaxReport?;
    # Work documentation, forms and schedules produced and referenced to develop the customer tax position/statement that is used for reporting
    common:Workproduct CustomerTaxHandlingReportingWorkProducts?;
};

# The consolidated record of the customer tax reporting position - basis for generating tax reports
public type TaxHandlingArrangement record {
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
    common:Arrangementtypevalues ProductArrangementType?;
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
};

public type CustomerTaxObligationFacilityOk record {|
    *http:Ok;
    CustomerTaxObligationFacility body;
|};

# Fulfill any scheduled and ad-hoc obligations under a service arrangement, most typically for a financial product or facility within Customer Tax Handling. 
public type CustomerTaxObligationFacility record {
    # Reference to an entity that assigns and manages the identification.
    # tReference to the organization or agency that issued the identifier (e.g., DMV, Passport Office).
    common:Involvedparty CustomerReference?;
    # The consolidated record of the customer tax reporting position - basis for generating tax reports
    TaxHandlingArrangement CustomerTaxHandlingArrangementRecord?;
    # Reference to the applicable tax authority/jurisdiction that applies for the customer - can be multiple for the customer
    common:Jurisdiction TaxationJurisdictionReference?;
    # Tax handling and reporting regulation that is applied to this customer
    TaxArrangement ApplicableTaxationRuleReference?;
    # Covers all tax reporting guidelines, schedule and position reporting requirements for the customer
    string ApplicableTaxationRuleDefinition?;
    # A schedule which is specified the first payment, last payment, next payment, etc. for a standing orde.
    common:Schedule CustomerTaxReportingSchedule?;
};

# Tax handling and reporting regulation that is applied to this customer
public type TaxArrangement record {
    # >
    # * `Valueaddedtaxofzerorate` - Tax for which a zero rate applies.
    # * `Provincial` - Tax is a provincial tax.
    # * `Nationaltax` - Tax is a national tax.
    # * `Statetax` - Tax is a state tax.
    # * `Withholdingtax` - Tax is on income deducted at source, which the paying agent is legally obliged to deduct from its payments of interest on deposits and other proceeds of a financial instrument.
    # * `Capitalgaintax` - Tax is on a capital gain (realised and unrealised), that is, the profit that is gained from the sale of a financial instrument.
    # * `Interimprofittax` - Tax is on the sum of all earnings/revenues accrued since the last dividend distribution.
    # * `Stampduty` - Tax is on certain documents and transactions.
    # * `Wealthtax` - Tax is a special tax imposed, applicable only when the value of assets or categories of assets owned by an entity are above a given ceiling defined by the tax authority. Wealth tax is not linked to income.
    # * `Inheritancetax` - Tax that is payable at the time of death on any items (money or otherwise), where ownership changes either upon death or within a legally specified number of years before death.
    # * `Solidaritysurcharge` - Tax that is levied by legal authorities for solidarity purposes.
    # * `Taxcredit` - Direct reduction of an individual's tax liability.
    # * `Equalisation` - The part of an investor's subscription amount that is held by the fund in order to pay incentive / performance fees at the end of the fiscal year.
    # * `Gifttax` - Tax that is levied on assets given to individuals prior to the death of the donor. Gift tax is designed to ensure the integrity of the inheritance tax, preventing the pre-death transfer of wealth.
    # * `Consumptiontax` - Tax that is levied on goods and services purchased by customers, and is added to the retail price.
    # * `Alternativeminimumtax` - Tax is an alternative minimum tax.
    # * `Localtax` - Tax that is charged by a local settlement system or local jurisdiction.
    # * `Nationalfederaltax` - Tax is a country, national, or federal tax that is usually charged by the custodian.
    # * `Paymentlevytax` - Tax levied on a payment.
    # * `Stockexchangetax` - Tax collected by a stock exchange.
    # * `Transactiontax` - Tax levied on a transaction.
    # * `Transfertax` - Tax levied on a transfer.
    # * `Valueaddedtax` - Tax is a value added tax.
    # * `Localbrokercommission` - Local broker's commission amount.
    # * `Executingbrokercommission` - Executing broker's commission amount.
    # * `Eutaxretention` - Tax withheld at source in the framework of the European Directive on taxation of savings in the form of interest payments.
    # * `Aktiengewinn1` - Share-related profit. This is a tax specific to the German market. The share-related-profit gives the fund the opportunity to pass on to the institutional investor redeeming fund units certain tax-free income from equity. The calculation method is based on the old Investment Tax Act (Investmentsteuergesetz).
    # * `Aktiengewinn2` - Share-related profit. This is a tax specific to the German market. The share-related-profit gives the fund the opportunity to pass on to the institutional investor redeeming fund units certain tax-free income from equity. The calculation method is based on the new Investment Tax Act (Investmentsteuergesetz).
    # * `Zwischengewinn` - Zwischengewinn.
    # * `Customstax` - Tax is customs and excise.
    # * `Other` - Another type of tax.
    # * `Mietgewinn` - Earnings from renting.
    # * `Germanlocaltax3` - Local tax (Zinstopf) offset interest per unit against tax exempt amount (variation to offset interest per unit in relation to tax exempt amount).
    # * `Germanlocaltax4` - Local tax (Ertrag Besitzanteilig) yield liable for interest down payment tax.
    # * `Germanlocaltax2` - Local tax (ZAS pflichtige Zinsen) - interest liable for interest down payment tax (proportion of gross interest per unit/interim profits that is not covered by the credit in the interest pool).
    # * `Withholdingofforeigntax` - Rate at which the income will be withheld by the jurisdiction in which the income was originally paid, for which relief at source and/or reclaim may be possible.
    # * `Withholdingoflocaltax` - Rate at which the income will be withheld by the jurisdiction in which the account owner is located, for which relief at source and/or reclaim may be possible.
    # * `Capitallosscredit` - Tax recovery is due to capital loss.
    Taxtypevalues TaxType?;
    # Amount of tax
    common:Amount TaxAmount?;
    # Rate used for calculation of the tax.
    common:Rate TaxRate?;
    # >
    # * `Fixed` - Rate is fixed.
    # * `Forfeit` - No specific repurchase rate applies to the transaction Repo, only a forfeit.
    # * `Variable` - Rate is variable.
    # * `Open` - Rate has not been established.
    # * `Unknown` - Rate is unknown by the sender or has not been established.
    # * `Nilpayment` - Rate will not be paid.
    # * `Additionaltax` - Rate used for additional tax that cannot be categorised.
    # * `Charges` - Rate used to calculate the amount of the charges/fees that cannot be categorised.
    # * `Cashinlieuofsecurities` - Rate used to calculate the cash disbursement in lieu of a fractional quantity of, for example, equity.
    # * `Gross` - Cash dividend per equity before deductions or allowances have been made.
    # * `Cashincentive` - Rate of the cash premium made available if the securities holder consents or participates to an event, for example, consent fees.
    # * `Net` - Relates to the netting of settlement instructions.
    # * `Sollication` - Cash rate made available in an offer in order to encourage participation in the offer.
    # * `Stampduty` - Financial instrument has not been stamped and/or duly signed.
    # * `Stockexchangetax` - Rate of stock exchange tax.
    # * `Withholdingtax` - Relates to a tax refund from the authorities on the associated corporate action event.
    # * `Transfertax` - Transaction has been generated due to transformation following a corporate action.
    # * `Transactiontax` - Rate used to calculate the amount of transaction tax.
    # * `Taxdeferred` - Rate relating to the underlying security for which tax is deferred.
    # * `Taxfeeamount` - Rate relating to the underlying security which is not taxable.
    # * `Withholdingofforeigntax` - Rate at which the income will be withheld by the jurisdiction in which the income was originally paid, for which relief at source and/or reclaim may be possible.
    # * `Withholdingoflocaltax` - Rate at which the income will be withheld by the jurisdiction in which the account owner is located, for which relief at source and/or reclaim may be possible.
    # * `Imputed` - Imputed tax.
    # * `Precompte` - Rate is a precompte.
    # * `Onetiertax` - Rate is a one tier tax.
    # * `Localtax` - Interest liable for interest down payment tax (proportion of gross interest per unit/interim profits that is not covered by the credit in the interest pool).
    # * `Scheduled` - Rate of the scheduled payment.
    # * `Unscheduled` - Rate of the unscheduled payment.
    # * `Anyandall` - Any and all rate is sought.
    common:Ratetypevalues TaxRateType?;
    # PlaceOfTaxation
    common:Location PlaceOfTaxation?;
    # Reference to an entity that assigns and manages the identification.
    # tReference to the organization or agency that issued the identifier (e.g., DMV, Passport Office).
    common:Involvedparty TaxableParty?;
    # Account to be used for taxes
    common:Account TaxAccount?;
    # Specifies taxation conditions.
    common:Condition TaxationCondition?;
    # TaxCurrency
    common:Currencycode TaxCurrency?;
    # The date when the identifier became valid.
    common:Datetime TaxDueDate?;
    # The date when the identifier became valid.
    common:Datetime TaxCalculationDate?;
    # Reference to an entity that assigns and manages the identification.
    # tReference to the organization or agency that issued the identifier (e.g., DMV, Passport Office).
    common:Involvedparty TaxPayer?;
    # Reference to an entity that assigns and manages the identification.
    # tReference to the organization or agency that issued the identifier (e.g., DMV, Passport Office).
    common:Involvedparty TaxRecipient?;
    # TaxIdentification
    Taxidentification TaxIdentification?;
    # Specifies the adjustments subject to a tax.
    Feearrangement TaxCharge?;
    # Interest for which a tax is specified.
    common:Interestarrangement TaxInterest?;
    # Method used to indicate the underlying business or how the tax is paid.
    string TaxMethod?;
    # Product on which a tax is applied.
    common:Product TaxProduct?;
    # >
    # * `1` - 
    # * `0` - 
    Truefalseindicatorvalues TaxExemption?;
    # Reason for tax exemption.
    string TaxExemptionReason?;
    # The date when the identifier became valid.
    common:Datetime TaxDateAndTime?;
    # TaxCertification
    common:Document TaxCertification?;
    # The reporting period, detailing from-to dates covered by the tax report
    common:Datetimeperiod TaxPeriod?;
    # Reference to the applicable tax authority/jurisdiction that applies for the customer - can be multiple for the customer
    common:Jurisdiction TaxJurisdiction?;
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
};

# The product features/services available with a financical facility
public type Consolidation record {
    # Reference to the one of more products and services in use for which tax related activity is to be obtained
    common:ProductAgreement ProductInstanceReference?;
    # >
    # * `FinancialReport` - 
    # * `BusinessReport` - 
    # * `ManagementReport` - 
    # * `Statement` - 
    # * `MaintenanceReport` - 
    # * `RegulatoryReport` - 
    # * `TaxReport` - 
    # * `AnalysisReport` - 
    common:Reporttypevalues ProductArrangementInstanceReportType?;
    # The customer's consolidated product/service tax report
    common:Report ProductArrangementInstanceReport?;
    # Defines content/transaction types to be included in the report extract
    string ReportOptionsSelectionCriteria?;
    # The reporting period, detailing from-to dates covered by the tax report
    common:Datetimeperiod ReportPeriod?;
    # Defines presentation format
    string ReportFormatTemplate?;
    # The customer's consolidated product/service tax report
    common:Report Report?;
    # Work documentation, forms and schedules produced and referenced to develop the customer tax position/statement that is used for reporting
    common:Workproduct CustomerTaxHandlingConsolidationWorkProducts?;
};

public type Taxidentification record {
    common:Identifier TaxIdentification?;
    # >
    # * `TaxIdentificationNumber` - 
    # * `GlobalIntermediaryIdentificationNumber` - 
    Taxidentificationtypevalues TaxIdentificationType?;
};

# Specifies the adjustments subject to a tax.
public type Feearrangement record {
    # >
    # * `Accountingfee` - Fee paid for accounting services rendered.
    # * `Adrfee` - Charge linked to an ADR (American Depositary Receipt).
    # * `Advisoryfee` - Fee paid for advisory services rendered.
    # * `Airwaybillfee` - Charge is an airway bill fee.
    # * `Backendload` - Sales charge paid by the investor when redeeming an investment such as an investment fund.
    # * `Brokeragefee` - Fee paid to a broker for services provided.
    # * `Clearanceandhandlingatdestination` - Charge is for clearance and handling of goods at destination.
    # * `Clearanceandhandlingatorigin` - Charge is for clearance and handling of goods at origin.
    # * `Collectfreight` - Charge is for the collection of the freight.
    # * `Commission` - Fee paid for services provided.
    # * `Contingencydeferredsalescharge` - Deferred sales charge.
    # * `Correspondentbankcharge` - In investment funds, the charge of the correspondent bank for transferring money.
    # * `Custodyfee` - Fee paid to a custodian in respect of custodial services.
    # * `Dangerousgoodsfee` - Charge is for dangerous goods.
    # * `Dilutionlevy` - In investment funds, a charge payable by the investor covering bid-offer spreads and dealing charges for the underlying investments. The dilution levy is paid to the fund for the benefit of other unit holders.
    # * `Discount` - Charge that has been reduced from the standard initial charge levied by a fund, eg, during a launch period or as negotiated by a funds supermarket / discount broker.
    # * `Equalisation` - The part of an investor's subscription amount that is held by the fund in order to pay incentive or performance fees at the end of the fiscal year.
    # * `Frontendload` - Sales charge paid immediately by the investor when subscribing to an investment such as an investment fund.
    # * `Initial` - Charge paid at the time of the first subscription.
    # * `Insurancepremium` - Charge is a premium for insurance.
    # * `Issuancecancellationfee` - Fee linked to the cancellation of an issuance.
    # * `Issuancefee` - Charge linked to the issuance of security.
    # * `Managementfee` - Fee paid to an investment manager for services. The fee usually includes fund administration costs and investor relationship management. Typically, the amount paid is a percentage of the assets under management.
    # * `Matchingfees` - Fee charged for matching and/or confirmation.
    # * `Miscellaneousfee` - Miscellaneous fee.
    # * `Other` - Another type of charge.
    # * `Packaging` - Charge is for packaging of goods.
    # * `Partacquis` - Portion of charge that the fund is entitled to receive, that cannot be reduced by an intermediary.
    # * `Penalty` - Fee charged to the investor for early redemption of the fund.
    # * `Pickup` - Charge is for pick-up of goods.
    # * `Postagecharge` - Charge paid for the postage.
    # * `Premium` - In investment funds, pre-arranged addition to the trade amount based on the published net asset value.
    # * `Publicationfee` - Fee paid in respect of publications made.
    # * `Regulatoryfee` - Fee charged by a regulatory authority, eg, Securities and Exchange fees.
    # * `Securitycharge` - Charge is for security.
    # * `Serviceprovisionfee` - Fee paid for the provision of financial services.
    # * `Shippingcharge` - Charge for shipping, including the insurance of securities.
    # * `Signatureservice` - Charge is for signature services.
    # * `Specialconcessions` - Charges, drawdown, or other reduction from or in addition to the deal price.
    # * `Speciallyagreedfrontendload` - Specially agreed front-end load.
    # * `Storageatdestination` - Charge is for storage of goods at destination.
    # * `Storageatorigin` - Charge is for storage of goods at origin.
    # * `Switch` - In investment funds, charge related to a switch transaction.
    # * `Transferfee` - In investment funds, a fee charged for the transfer of ownership of an investment fund.
    # * `Transportcharges` - Charge is for transport.
    # * `Ucitscommission` - Charges paid by the investor to the Fund Company for subscription and redemption orders.
    # * `ChequeRelatedFee` - 
    common:Feetypevalues FeeType?;
    # Amount of tax
    common:Amount FeeAmount?;
    # Rate used for calculation of the tax.
    common:Rate FeeRate?;
    # The reporting period, detailing from-to dates covered by the tax report
    common:Datetimeperiod FeeEffectivePeriod?;
    # The date when the identifier became valid.
    common:Datetime FeeDueDate?;
    # An arranged FeeRatePlan
    common:Feeplan FeePlan?;
    # >
    # * `Debit` - Transaction is a debt entry
    # * `Credit` - Transaction is a credit entry
    common:Debitcreditindicatortvalues FeeCreditDebitIndicator?;
    # Reason for the amount adjustment (fee). 
    string FeeReason?;
    # >
    # * `Added` - Adjustment amount must be added to the total amount.
    # * `Substracted` - Adjustment amount must be substracted from the total amount.
    common:Adjustmentdirectiontypevalues FeeDirection?;
    # >
    # * `Bornebydebtor` - All transaction charges are to be borne by the debtor.
    # * `Bornebycreditor` - All transaction charges are to be borne by the creditor.
    # * `Shared` - In a credit transfer context, means that transaction charges on the sender side are to be borne by the debtor, transaction charges on the receiver side are to be borne by the creditor. In a direct debit context, means that transaction charges on the sender side are to be borne by the creditor, transaction charges on the receiver side are to be borne by the debtor.
    # * `Followingservicelevel` - Charges are to be applied following the rules agreed in the service level and/or scheme.
    common:Chargebearertypevalues FeeBearerType?;
    # Frequency at which the fee is charged
    common:Frequency FeeChargingFrequency?;
    # >
    # * `Cash` - Payment is with cash.
    # * `Unit` - Units are redeemed to cover payment.
    common:Feepaymentmethodtypevalues FeePaymentMethodType?;
    # Date on which the agreement was signed by all parties. (ISO20022)
    common:Date LoanOriginationDate?;
    # Date on which the agreement was signed by all parties. (ISO20022)
    common:Date LoanMaturityDate?;
    # Date on which the agreement was signed by all parties. (ISO20022)
    common:Date LoanEndDate?;
    # Amount of tax
    common:Amount LoanAmount?;
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
    common:Arrangementtypevalues LoanArrangementType?;
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
    # PaymentCardArrangementIdentifier
    common:Identifier PaymentCardArrangementIdentifier?;
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
    common:Arrangementtypevalues CardPaymentArrangementType?;
    # >
    # * `FeeArrangement` - An arrangement which specifies to charge fees when banking transactions did take place, accompanied by the modalities to calculate and charge the fees and the related terms and conditions. 
    # * `FinancialPlanningArrangement` - An arrangement that specifies obligations/rights engaged in the financial advisory service agreement to deliver the Financial Planning Advisory Service
    #
    # Financial Planning Advisory Service is a financial advisory service that provides basic financial advice for short and long term investment and financing options
    # * `TaxOptimizationArrangement` - An arrangement that specifies obligations/rights engaged in the financial advisory service agreement for providing a tax related advice like:
    # - Engaging a product tax specialist to liaise with the customer
    # -The service charge to be made to the customer for the specialist support
    #
    # Tax Optimization Advisory Service is a financial advisory service that provides tax (and compliance) related advice for product and service optimization
    # * `StrategicFundingArrangement` - 
    # * `TacticalFundingArrangement` - 
    # * `CapitalStructuringArrangement` - 
    # * `ProductGuidanceArrangement` - An arrangement that specifies obligations/rights engaged in the financial advisory service agreement to deliver the ProductGuidanceAdvisoryService
    #
    # Product Guidance Advisory Service is a financial advisory service that provides product and service specific guidance and insights
    common:Financialadvisoryservicearrangementtype FinancialAdvisoryServiceArrangementType?;
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
    common:Arrangementtypevalues SavingsAccountArrangementType?;
    # Reference to the product feature applied in this arrangement 
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
    common:Arrangementtypevalues CurrentAccountArrangementType?;
    # Reference to the product feature applied in this arrangement 
    common:Productfeaturetype CurrentAccountArrangementProductFeatureType?;
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
    common:Arrangementtypevalues ArrangementType?;
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
    common:Productfeaturetype TermDepositArrangementProductFeatureType?;
    # The date when the identifier became valid.
    common:Datetime TermDepositMaturityDate?;
    # The date when the identifier became valid.
    common:Datetime TermDepositOpenDate?;
    # Amount of tax
    common:Amount TermDepositAmount?;
    # TermDepositDuration
    common:Duration TermDepositDuration?;
    # The Period for which the TermDepositAmount needs ti stay deposited with the Bank
    string DepositTerm?;
    # VirtualAccountArrangementType
    string VirtualAccountArrangementType?;
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
    common:Arrangementtypevalues BankPlanArrangementType?;
    # The date when the identifier became valid.
    common:Datetime CreditFacilityDataTime?;
    # >
    # * `Revolving` - 
    # * `FixedAmount` - 
    # * `Decreasing` - 
    common:Creditfacilitytypevalues CreditFacilityType?;
    # >
    # * `AvailabilityCommission` - 
    common:Creditfacilityratetypevalues CreditFacilityRateType?;
    # CreditFacilityNumber
    common:Identifier CreditFacilityNumber?;
    # Amount of tax
    common:Amount CreditFacilityAmount?;
    # Frequency at which the fee is charged
    common:Frequency StandingOrderFrequency?;
    # The purpose of a standing order
    string StandingOrderPurpose?;
    # Amount of tax
    common:Amount StandingOrderAmount?;
    # StandingOrderCurrency
    common:Currencycode StandingOrderCurrency?;
    # Reference to an entity that assigns and manages the identification.
    # tReference to the organization or agency that issued the identifier (e.g., DMV, Passport Office).
    common:Involvedparty StandingOrderTargetAccountOwner?;
    # The identifier of account like Account Number.
    common:Accountidentification StandingOrderTargetAccountIdentification?;
    # Reference to an entity that assigns and manages the identification.
    # tReference to the organization or agency that issued the identifier (e.g., DMV, Passport Office).
    common:Involvedparty StandingOrderTargetAccountBank?;
    # Account to be used for taxes
    common:Account StandingOrderSourceAccount?;
    # The reporting period, detailing from-to dates covered by the tax report
    common:Datetimeperiod StandingOrderValidityPeriod?;
    # The date when the identifier became valid.
    common:Datetime StandingOrderDay?;
    # >
    # * `UserDefinedStandingOrder` - Liquidity transfer standing order type, that has been customised or defined to the specific need of the user.(ISO20022)
    # * `PredefinedStandingOrder` - Liquidity transfer standing order type, as predefined in the system. (ISO20022)
    common:Standingordertypevalues StandingOrderType?;
    # StandingOrderIdentification
    common:Identifier StandingOrderIdentification?;
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
    common:Arrangementtypevalues StandingOrderArrangementType?;
    # >
    # * `FirstPaymentDateTime` - The date on which the first payment for a Standing Order schedule will be made. (Open Banking)
    # * `NextPaymentDateTime` - The date on which the next payment for a Standing Order schedule will be made. (Open Banking)
    # * `LastPaymentDateTime` - The date on which the last (most recent) payment for a Standing Order schedule was made. (Open Banking)
    # * `FinalPaymentDateTime` - The date on which the final payment for a Standing Order schedule will be made. (Open Banking)
    common:Standingorderdatetimetypevalues StandingOrderDateType?;
    # Number of the payments that will be made in completing this frequency sequence including any executed since the sequence start date. (Open Banking)
    string StandingOrderNumberOfPayments?;
    # The date when the identifier became valid.
    common:Datetime StandingOrderDate?;
    # StandingOrderStatus
    common:Status StandingOrderStatus?;
    # A schedule which is specified the first payment, last payment, next payment, etc. for a standing orde.
    common:Schedule StandingOrderSchedule?;
    # >
    # * `CreditTransferService` - A payment service allowing a payer to transfer fund to a beneficiary. (a proposed definition for BIAN BOM adapted from ECB)
    # * `StandingOrderService` - A credit transfer service to make regular transfers on given dates to a named beneﬁciary. (a proposed definition for BIAN BOM adapted from ISO20022)
    # * `DirectDebitService` - A payment service for debiting a payer's payment account, where a payment transaction is initiated by the payee on the basis of the payer's consent given to the payee, to the payee's payment service provider or to the payer's own payment service provider. (a proposed definition for BIAN BOM adapted from PSD)
    # * `CardPaymentService` - A payment service to execute payment transactions through a payment card, including online payments. (a proposed definition for BIAN BOM adapted from PSD)
    # * `WithdrawService` - A payment service to take fund out of an account. (a proposed definition for BIAN BOM)
    # * `DepositService` - A payment service to place funds into an account for safekeeping. (a proposed definition for BIAN BOM)
    # * `OverdraftService` - A payment service that allows fund transfer even if there is no provision on the account. (a proposed definition for BIAN BOM)
    # * `MoneyRemittanceService` - A payment service where funds are received from a payer, without any payment accounts being created in the name of the payer or the payee, for the sole purpose of transferring a corresponding amount to a payee or to another payment service provider acting on behalf of the payee, and/or where such funds are received on behalf of and made available to the payee. (a proposed definition for BIAN BOM adapted from PSD)
    # * `StatementService` - A reporting service on payment transactions registered on an account. (a proposed definition for BIAN BOM)
    common:Paymentservicetypevalues ServiceType?;
    # Key dates related to the payment. 
    common:Paymentdatetime PaymentDate?;
    # The reporting period, detailing from-to dates covered by the tax report
    common:Datetimeperiod PaymentPeriod?;
    # >
    # * `Salarypayment` - Transaction is the payment of salaries.
    # * `Treasurypayment` - Transaction is related to treasury operations.
    # * `Advancepayment` - Transaction is an advance payment.
    # * `Agriculturaltransfer` - Transaction is related to the agricultural domain.
    # * `Alimonypayment` - Transaction is the payment of alimony.
    # * `Childbenefit` - Transaction is related to a payment made to assist parent/guardian to maintain child.
    # * `Unemploymentdisabilitybenefit` - Transaction is related to a payment to a person who is unemployed/disabled.
    # * `Bonuspayment.` - Transaction is related to payment of a bonus.
    # * `Cashmanagementtransfer` - Transaction is a general cash management instruction.
    # * `Capitalbuilding` - Transaction is related to capital building fringe fortune, ie capital building for retirement.
    # * `Charitypayment` - Transaction is a payment for charity reasons.
    # * `Collectionpayment` - Transaction is a collection of funds initiated via a credit transfer or direct debit.
    # * `Commoditytransfer` - Transaction is payment of commodities.
    # * `Commercialpayment` - Transaction is related to a payment of commercial credit or debit. (formerly CommercialCredit).
    # * `Commission` - Transaction is payment of commission.
    # * `Costs` - Transaction is related to payment of costs.
    # * `Copyright` - Transaction is payment of copyright.
    # * `Dividend` - Transaction is payment of dividends.
    # * `Foreignexchange` - Transaction is related to a foreign exchange operation.
    # * `Purchasesaleofgoods` - Transaction is related to purchase and sale of goods.
    # * `Governmentpayment` - Transaction is a payment to or from a government department.
    # * `Instalmenthirepurchaseagreement` - Transaction is payment for an installment/hire-purchase agreement.
    # * `Intracompanypayment` - Transaction is an intra-company payment, ie, a payment between two companies belonging to the same group.
    # * `Insurancepremium` - Transaction is payment of an insurance premium.
    # * `Interest` - Transaction is payment of interest.
    # * `Licensefee` - Transaction is payment of a license fee.
    # * `Loan` - Transaction is related to transfer of loan to borrower.
    # * `Loanrepayment` - Transaction is related to repayment of loan to lender.
    # * `Netting` - Transaction is related to a netting operation.
    # * `Payroll` - Transaction is related to the payment of payroll.
    # * `Pensionpayment` - Transaction is the payment of pension.
    # * `Refund` - Transaction is the payment of a refund.
    # * `Rent` - Transaction is the payment of rent.
    # * `Royalties` - Transaction is the payment of royalties.
    # * `Purchasesaleofservices` - Transaction is related to purchase and sale of services.
    # * `Securities` - Transaction is the payment of securities.
    # * `Socialsecuritybenefit` - Transaction is a social security benefit, ie payment made by a government to support individuals.
    # * `Subscription` - Transaction is related to a payment of information or entertainment services either in printed or electronic form.
    # * `Taxpayment` - Transaction is the payment of taxes.
    # * `Valueaddedtaxpayment` - Transaction is the payment of value added tax.
    # * `Consumerthirdpartyconsolidatedpayment` - Transaction is a payment used by a third party who can collect funds to pay on behalf of consumers, ie credit counseling or bill payment companies.
    # * `Debitcollectionpayment` - Collection of funds initiated via a debit transfer.
    # * `Supplierpayment` - Transaction is related to a payment to a supplier.
    # * `Hedging` - Transaction is related to a hedging operation.
    # * `Multipleservicetypes` - Transaction is related to a payment for multiple service types.
    # * `Nototherwisespecified` - Transaction is related to a payment for type of services not specified elsewhere.
    # * `Cardpayment` - Transaction is related to a payment of credit card account.
    # * `Creditcardbill` - Transaction is related to a payment of credit card bill.
    # * `Ferry` - Transaction is a payment for ferry related business.
    # * `Air` - Transaction is a payment for air transport related business.
    # * `Bus` - Transaction is a payment for bus transport related business.
    # * `Railway` - Transaction is a payment for railway transport related business.
    # * `Convalescentcarefacility` - Transaction is a payment for convalescence care facility services.
    # * `Dentalservices` - Transaction is a payment for dental services.
    # * `Anesthesiaservices` - Transaction is a payment for anesthesia services.
    # * `Homehealthcare` - Transaction is a payment for home health care services.
    # * `Hospitalcare` - Transaction is a payment for hospital care services.
    # * `Intermediatecarefacility` - Transaction is a payment for intermediate care facility services.
    # * `Longtermcarefacility` - Transaction is a payment for long-term care facility services.
    # * `Medicalservices` - Transaction is a payment for medical care services.
    # * `Visioncare` - Transaction is a payment for vision care services.
    # * `Durablemedicaleequipment` - Transaction is a payment is for use of durable medical equipment.
    # * `Cabletvbill` - Transaction is related to a payment of cable TV bill.
    # * `Electricitybill` - Transaction is related to a payment of electricity bill.
    # * `Gasbill` - Transaction is related to a payment of gas bill.
    # * `Telephonebill` - Transaction is related to a payment of telephone bill.
    # * `Othertelecomrelatedbill` - Transaction is related to a payment of other telecom related bill.
    # * `Waterbill` - Transaction is related to a payment of water bill.
    # * `Study` - Transaction is related to a payment of study/tuition costs.
    # * `Pricepayment` - Transaction is related to a payment of a price.
    # * `Installment` - Transaction is related to a payment of an installment.
    # * `Recurringinstallmentpayment` - Transaction is related to a payment of a recurring installment made at regular intervals.
    # * `Openingfee` - Transaction is related to a payment of opening fee.
    # * `Cancellationfee` - Transaction is related to a payment of cancellation fee.
    # * `Governmentinsurance` - Transaction is related to a payment of government insurance.
    # * `Insurancepremiumcar` - Transaction is a payment of car insurance premium.
    # * `Laborinsurance` - Transaction is a payment of labor insurance.
    # * `Lifeinsurance` - Transaction is a payment of life insurance.
    # * `Propertyinsurance` - Transaction is a payment of property insurance.
    # * `Healthinsurance` - Transaction is a payment of health insurance.
    # * `Carloanprincipalrepayment` - Transaction is a payment of car loan principal payment.
    # * `Housingloanrepayment` - Transaction is related to a payment of housing loan.
    # * `Companysocialloanpaymenttobank` - Transaction is a payment by a company to a bank for financing social loans to employees.
    # * `Estatetax` - Transaction is related to a payment of estate tax.
    # * `Housingtax` - Transaction is related to a payment of housing tax.
    # * `Incometax` - Transaction is related to a payment of income tax.
    # * `Netincometax` - Transaction is related to a payment of net income tax.
    # * `Businessexpenses` - Transaction is related to a payment of business expenses.
    # * `Trustfund` - Transaction is related to a payment of a trust fund.
    # * `Networkcharge` - Transaction is related to a payment of network charges.
    # * `Networkcommunication` - Transaction is related to a payment of network communication.
    # * `Receiptpayment` - Transaction is related to a payment of receipt.
    # * `Paymentterms` - Transaction is related to payment terms specifications.
    # * `Other` - Other payment purpose.
    # * `Withholding` - Transaction is related to a payment of withholding tax.
    common:Paymentpurposevalues PaymentPurpose?;
    # Amount of the payment (arranged to be paid)
    common:Paymentamountandcurrency PaymentAmountAndCurrency?;
    # >
    # * `Cheque` - Written order to a bank to pay a certain amount of money from one person to another person.
    # * `Credittransfer` - Transfer of an amount of money in the books of the account servicer.
    # * `Directdebit` - Collection of an amount of money from the debtor's bank account by the creditor. The amount of money and dates of collections may vary.
    # * `Transferadvice` - Transfer of an amount of money in the books of the account servicer. An advice should be sent back to the account owner.
    # * `Direct` - Direct method.
    # * `Classical` - Classical method.
    common:Paymentmethodtypevalues PaymentMethod?;
    # >
    # * `Cashtransaction` - Transaction is a withdrawal/deposit of cash.
    # * `Domesticpayment` - Payment has an origin and a destination in the same country, and is made in the currency of that country.
    # * `Domestichighvaluepayment` - Transaction is a high value payment that has an origin and a destination in the same country and is made in the currency of that country.
    # * `Domesticprioritypayment` - Transaction is a priority payment that has an origin and a destination in the same country and is made in the currency of that country.
    # * `Crossborderpayment` - Payment has an origin in one country, a destination in another, and is made in the currency of either the origin or destination country.
    # * `Crossborderprioritypayment` - Transaction is a priority payment that has an origin in one country and a destination in another and is made in the currency of either the origin or destination country.
    # * `Crossborderhighvaluepayment` - Transaction is a high value payment that has an origin in one country and a destination in another country and is made in the currency of either the origin or destination country.
    # * `Thirdcurrencypayment` - Transaction is a payment that is made in a third currency to the origin and destination countries. The origin and destination countries may be one and the same country.
    # * `Thirdcurrencyhighvaluepayment` - Transaction is a high value payment that is made in a third currency to the origin and destination countries. The origin and destination countries may be one and the same country.
    # * `Thirdcurrencyprioritypayment` - Payment is made in a third currency to the origin and destination countries. The origin and destination countries may be the same country.
    # * `Tradesettlementpayment` - Transaction is the settlement of a trade, eg, a securities transaction.
    # * `Foreignexchange` - Transaction isthe settlement of a foreign exchange deal.
    # * `Equivalentamount` - Transaction is an equivalent amount relative to a currency conversion.
    # * `Loan` - Transaction is the payment of a specific amount of money lent by a creditor/lender.
    # * `Loanrepayment` - Transaction is an amount of money transferred in repayment of loan.
    # * `Securities` - Transaction is a payment of securities.
    # * `Lockbox` - Transaction is a payment(s) resulting from a lock box service.
    # * `Dividend` - Transaction is a payment of dividends.
    # * `Crossedcheque` - Transaction is a crossed cheque. A crossed check has two parallel lines across its face, indicating that the cheque must be paid into an account and not cashed over the counter.
    # * `Opencheque` - Transaction is an uncrossed cheque that can be cashed at the bank of origin.
    # * `Ordercheque` - Transaction is a cheque made payable to a named recipient 'or order' enabling the creditor to either deposit it in an account or endorse it to a third party, ie, transfer the rights to the cheque by signing it on the reverse.
    # * `Circularcheque` - Transaction is an instruction from a bank to its correspondent bank to pay the creditor a stated sum of money on presentation of a means of identification.
    # * `Travellerscheques` - Transaction is a payment resulting from travellers cheques.
    # * `Bankdraft` - Transaction is a cheque drawn by a bank on itself or its agent. A person who owes money to another buys the draft from a bank for cash and hands it to the creditor who need have no fear that it might be dishonoured.
    # * `Documentarycredit` - Transaction is a documentary credit from one banker to another, authorising the payment of a specified sum of money to the person named in the document, based on specified conditions.
    # * `Billofexchange` - Transaction is a written order from a drawer to a drawee to pay a specified sum of money upon demand, or on a specified date, to the drawer or to a third party specified by the drawer. A bill of exchange is also called a draft.
    # * `Collection` - Transaction is a collection. A collection is the act of sending a cheque, bill of exchange or another financial instrument to the prospective financial institution for payment.
    # * `Cashmanagementtransfer` - Transaction is a general cash management instruction.
    # * `Topaccount` - Transaction is a cash management instruction, requesting to top the account of the debtor above a certain floor amount. The floor amount, if not pre-agreed by the parties involved, may be specified.
    # * `Zerobalanceaccount` - Transaction is a cash management instruction, requesting to zero balance the account of the debtor.
    # * `Standingfacilities` - Payment is linked to overnight deposits and the marginal lending facility.
    # * `Standardservicelevelcredit` - Transaction is a credit transfer to be processed according to the Standard Service Level.
    # * `Liquiditytransfer` - Payment is made to transfer liquidity to/from the settlement account of a member, to/from the current account held at the central institution or any other institution.
    # * `Advancepayment` - Transaction is a payment made in advance or as an advance.
    # * `Valuedateadjustment` - Transaction reverses a previously incorrectly value dated entry.
    # * `Dvpgross` - Gross cash payment offsetting the amount owed/due for a securities transaction settlement.
    # * `Dvpnet` - Net payment offsetting the cash balance due/owed for a series of securities transactions settlement.
    # * `Netting` - Transaction is a netting operation.
    # * `Limitpayment` - Transaction is a payment that is processed when the pool of liquidity exceeds the minimum value reserved for an express payment in the RTGSPlus system.
    # * `Backup` - Payment is made under the recovery procedure to move liquidity to/from the settlement account of a member according to the specifications of the system.
    # * `Expresspayment` - Transaction is a payment that is processed whenever liquidity is available on the settlement account of a member of the RTGSPlus system.
    # * `Centralbankoperation` - Payment is made to settle an operation made with the central bank.
    # * `Clspayment` - Payment is linked to CLS activities.
    # * `Eurodomesticpayment` - Transaction is a credit transfer in Euro with its country of origin and country of destination within the European Union. The origin and destination countries may be one and the same country.
    # * `Agriculturaltransfer` - Transaction is related to the agricultural domain.
    # * `Alimonypayment` - Transaction is a payment(s) made by one spouse to the other after a separation or divorce. An alimony payment may be applied to other family relationships.
    # * `Balanceretail` - Transaction is a payment offsetting the net cash balance owed/due in a retail payment system.
    # * `Bonuspayment.` - Net cash payment offsetting the balance due/owed in a retail payment system.
    # * `Brokeragefee` - Transaction is charges levied by a broker.
    # * `Capitalbuilding` - Transaction is payment into a personal pension scheme for retirement.
    # * `Charitypayment` - Transaction is a payment for charity reasons.
    # * `Childbenefit` - Transaction is a payment made to a parent/guardian to help maintain a child.
    # * `Commercialcredit` - Transaction is settlement of a commercial credit.
    # * `Commission` - Transaction is payment of a fee for executing a transaction.
    # * `Commoditytransfer` - Transaction is a payment of products traded on a commodity exchange.
    # * `Costs` - Transaction is apayment of costs.
    # * `Copyright` - Transaction is a payment of copyright.
    # * `Governmentpayment` - Transaction is apayment to or from a government department.
    # * `Instalmenthirepurchaseagreement` - Transaction is a payment of an instalment or to the settlement of a hire-purchase agreement.
    # * `Insurancepremium` - Transaction is a payment of an insurance premium.
    # * `Intracompanypayment` - Transaction is an intra-company payment, ie, a payment between two companies belonging to the same group.
    # * `Interest` - Transaction is a payment of interest.
    # * `Licensefee` - Transaction is a payment of a license fee.
    # * `Metals` - Transaction is a purchase or sale of metals.
    # * `Pensionpayment` - Transaction is a payment of a pension allowance.
    # * `Purchasesaleofgoods` - Transaction is a payment for the purchase and sale of goods.
    # * `Refund` - Transaction is a repayment of funds.
    # * `Rent` - Transaction is a payment of rent.
    # * `Royalties` - Transaction is a payment of royalties.
    # * `Purchasesaleofservices` - Transaction is a payment for the purchase and sale of services.
    # * `Salarypayment` - Transaction is a payment of salaries.
    # * `Socialsecuritybenefit` - Transaction is a social security benefit, a payment made by a government to support individuals.
    # * `Standingorder` - Transaction is a standing order. A standing order is an instruction given by a party having explicit authority on the account to debit, ie, either debit account owner or originating party, to a first agent to process cash transfers at specified intervals during an implicit or explicit period of time. It is given once, and is valid for an open or closed period of time.
    # * `Subscription` - Transaction is a payment of a subscription.
    # * `Treasurystatepayment` - Payment is linked to the Treasury State.
    # * `Unemploymentdisabilitybenefit` - Transaction is a payment made to an unemployed/disabled person.
    # * `Valueaddedtaxpayment` - Transaction is apayment of value added tax.
    # * `Taxpayment` - Transaction is a payment of taxes.
    # * `Overnightdeposit` - Transaction is linked to an overnight deposit.
    # * `Marginallending` - Transaction is linked to the marginal lending facility.
    # * `Other` - Specifies that a proprietary code must be indicated.
    # * `Upfront` - Transaction is an initial payment made by one of the counterparties  either to bring a transaction to fair value or for any other reason that may be the cause of an off-market transaction.
    # * `Unwind` - Transaction is the final settlement payment made when a transaction is unwound prior to its end date or a payment that may result due to the full termination of derivative transaction(s).
    # * `Principalexchange` - Transaction is an exchange of notional values for cross-currency swaps.
    common:Paymenttypevalues PaymentType?;
    # >
    # * `Paymentondelivery` - Code for payment on delivery.
    # * `Endofmonthofdelivery` - Code for payment at end of month of delivery.
    # * `Endofperiodafterdelivery` - Code for payment at end of period after delivery.
    # * `Endofperiodafterendofdeliverymonth` - Code for payment at end of period after end of month of delivery.
    # * `Paymentonreceiptofinvoice` - Code for payment on receipt of invoice.
    # * `Endofperiodafterendofreceiptmonth` - Code for payment at end of period after end of month of receipt of invoice.
    # * `Endofperiodafterreceipt` - Code for payment at end of period after receipt of invoice.
    # * `Endofmonthofreceipt` - Code for payment at end of month of receipt of invoice.
    # * `Endofperiodaftermatch` - Code for payment at end of period after match or mismatch acceptance.
    # * `Endofperiodaftershipmentdate` - Payment at end of period after shipment date.
    # * `Endofperiodafterpurchaseorderdate` - Payment at end of period after purchase order date.
    # * `Endofperiodafterbaselineestablishment` - Payment at end of period after baseline establishment date.
    # * `Endofperiodafterinvoicedate` - Payment at end of period after invoice date.
    common:Paymenttimevalues PaymentTime?;
    # >
    # * `Fax` - Remittance advice information must be faxed.
    # * `Electronicdatainterchange` - Remittance advice information must be sent through Electronic Data Interchange (EDI).
    # * `Uniformresourceidentifier` - Remittance advice information needs to be sent to a Uniform Resource Identifier (URI). URI is a compact string of characters that uniquely identify an abstract or physical resource. URI's are the super-set of identifiers, such as URLs, email addresses, ftp sites, etc, and as such, provide the syntax for all of the identification schemes.
    # * `Email` - Remittance advice information must be sent through e-mail.
    # * `Post` - Remittance advice information must be sent through postal services.
    # * `SMS` - Remittance advice information must be sent through by phone as a short message service (SMS).
    common:Remittancedeliverymethodtypevalues RemittanceDeliveryMethod?;
    # Address to which the first agent is to send the remittance information. (ISO20022)
    common:Contactpoint RemittanceLocation?;
    # PaymentIdentification
    common:Paymentidentification PaymentIdentification?;
    # A schedule which is specified the first payment, last payment, next payment, etc. for a standing orde.
    common:Schedule PaymentSchedule?;
    # Frequency at which the fee is charged
    common:Frequency PaymentFrequency?;
    # Payment reference (sometimes called remittance information or payment description) can appear at both debtor and creditor levels, but with slightly different roles:
    #
    # At the Debtor (Payer) Level 
    # The debtor provides the reference/narrative when initiating the payment. 
    # Purpose: to explain what the payment is for (e.g., Invoice 1234, August rent). 
    # This is usually optional, but very useful for reconciliation.
    #
    #
    # At the Creditor (Payee) Level 
    # The same reference is transmitted along with the payment message and shown to the creditor when funds are received. 
    # Purpose: allows the creditor to match the payment to the correct invoice, order, or account.
    string PaymentDescription?;
};

# >
# * `Valueaddedtaxofzerorate` - Tax for which a zero rate applies.
# * `Provincial` - Tax is a provincial tax.
# * `Nationaltax` - Tax is a national tax.
# * `Statetax` - Tax is a state tax.
# * `Withholdingtax` - Tax is on income deducted at source, which the paying agent is legally obliged to deduct from its payments of interest on deposits and other proceeds of a financial instrument.
# * `Capitalgaintax` - Tax is on a capital gain (realised and unrealised), that is, the profit that is gained from the sale of a financial instrument.
# * `Interimprofittax` - Tax is on the sum of all earnings/revenues accrued since the last dividend distribution.
# * `Stampduty` - Tax is on certain documents and transactions.
# * `Wealthtax` - Tax is a special tax imposed, applicable only when the value of assets or categories of assets owned by an entity are above a given ceiling defined by the tax authority. Wealth tax is not linked to income.
# * `Inheritancetax` - Tax that is payable at the time of death on any items (money or otherwise), where ownership changes either upon death or within a legally specified number of years before death.
# * `Solidaritysurcharge` - Tax that is levied by legal authorities for solidarity purposes.
# * `Taxcredit` - Direct reduction of an individual's tax liability.
# * `Equalisation` - The part of an investor's subscription amount that is held by the fund in order to pay incentive / performance fees at the end of the fiscal year.
# * `Gifttax` - Tax that is levied on assets given to individuals prior to the death of the donor. Gift tax is designed to ensure the integrity of the inheritance tax, preventing the pre-death transfer of wealth.
# * `Consumptiontax` - Tax that is levied on goods and services purchased by customers, and is added to the retail price.
# * `Alternativeminimumtax` - Tax is an alternative minimum tax.
# * `Localtax` - Tax that is charged by a local settlement system or local jurisdiction.
# * `Nationalfederaltax` - Tax is a country, national, or federal tax that is usually charged by the custodian.
# * `Paymentlevytax` - Tax levied on a payment.
# * `Stockexchangetax` - Tax collected by a stock exchange.
# * `Transactiontax` - Tax levied on a transaction.
# * `Transfertax` - Tax levied on a transfer.
# * `Valueaddedtax` - Tax is a value added tax.
# * `Localbrokercommission` - Local broker's commission amount.
# * `Executingbrokercommission` - Executing broker's commission amount.
# * `Eutaxretention` - Tax withheld at source in the framework of the European Directive on taxation of savings in the form of interest payments.
# * `Aktiengewinn1` - Share-related profit. This is a tax specific to the German market. The share-related-profit gives the fund the opportunity to pass on to the institutional investor redeeming fund units certain tax-free income from equity. The calculation method is based on the old Investment Tax Act (Investmentsteuergesetz).
# * `Aktiengewinn2` - Share-related profit. This is a tax specific to the German market. The share-related-profit gives the fund the opportunity to pass on to the institutional investor redeeming fund units certain tax-free income from equity. The calculation method is based on the new Investment Tax Act (Investmentsteuergesetz).
# * `Zwischengewinn` - Zwischengewinn.
# * `Customstax` - Tax is customs and excise.
# * `Other` - Another type of tax.
# * `Mietgewinn` - Earnings from renting.
# * `Germanlocaltax3` - Local tax (Zinstopf) offset interest per unit against tax exempt amount (variation to offset interest per unit in relation to tax exempt amount).
# * `Germanlocaltax4` - Local tax (Ertrag Besitzanteilig) yield liable for interest down payment tax.
# * `Germanlocaltax2` - Local tax (ZAS pflichtige Zinsen) - interest liable for interest down payment tax (proportion of gross interest per unit/interim profits that is not covered by the credit in the interest pool).
# * `Withholdingofforeigntax` - Rate at which the income will be withheld by the jurisdiction in which the income was originally paid, for which relief at source and/or reclaim may be possible.
# * `Withholdingoflocaltax` - Rate at which the income will be withheld by the jurisdiction in which the account owner is located, for which relief at source and/or reclaim may be possible.
# * `Capitallosscredit` - Tax recovery is due to capital loss.
public type Taxtypevalues "Valueaddedtaxofzerorate"|"Provincial"|"Nationaltax"|"Statetax"|"Withholdingtax"|"Capitalgaintax"|"Interimprofittax"|"Stampduty"|"Wealthtax"|"Inheritancetax"|"Solidaritysurcharge"|"Taxcredit"|"Equalisation"|"Gifttax"|"Consumptiontax"|"Alternativeminimumtax"|"Localtax"|"Nationalfederaltax"|"Paymentlevytax"|"Stockexchangetax"|"Transactiontax"|"Transfertax"|"Valueaddedtax"|"Localbrokercommission"|"Executingbrokercommission"|"Eutaxretention"|"Aktiengewinn1"|"Aktiengewinn2"|"Zwischengewinn"|"Customstax"|"Other"|"Mietgewinn"|"Germanlocaltax3"|"Germanlocaltax4"|"Germanlocaltax2"|"Withholdingofforeigntax"|"Withholdingoflocaltax"|"Capitallosscredit";

public type FinancialBookingLogOk record {|
    *http:Ok;
    FinancialBookingLog body;
|};

# Maintain a log of transactions or activity, typically a financial account/journal or a log of activity to support behavioral analysis within Financial Accounting. 
public type FinancialBookingLog record {
    # >
    # * `DebitAccount` - 
    # * `CreditAccount` - 
    # * `VostroAcount` - In correspondent banking, an account held by one bank on behalf of another bank (the customer bank); the customer bank regards this account as its nostro account. (ECB)
    # * `NostroAccount` - In correspondent banking, an account held by a customer bank on the books of another bank acting as a service provider. The other bank regards this account as a loro account. (ECB)
    # * `PaymentAccount` - 
    # * `SettlementAccount` - A specific purpose account used to post debit and credit entries as a result of the transaction. (ISO20022)
    #
    # Account which is used for settlement. (ISO20022)
    # * `SavingAccount` - 
    # * `CurrentAccount` - 
    # * `CashAccount` - 
    # * `LoanAccount` - 
    # * `IndividualAccount` - 
    # * `JointAccount` - 
    # * `LiquidationAccount` - 
    # * `ProvisionAccount` - 
    # * `PartnershipAccount` - 
    # * `InvestmentAccount` - 
    common:Accounttypevalues FinancialAccountType?;
    # Reference to the associated product or service for which this is the underlying accounting
    common:Product ProductandServiceReference?;
    # Reference to the owning business unit and associated business activity
    common:BusinessUnit BusinessUnitReference?;
    # Reference to applicable account booking rules
    common:RuleSet ChartofAccountBookingRules?;
    # BaseCurrency
    common:Currencycode BaseCurrency?;
    # Status
    common:Status Status?;
};

# A collection of the events/transactions recorded by the log
#
# Examples: Customer life event, Servicing event
public type LedgerPosting record {
    # Defines the posting location in the account ledger according to the chart of accounts (e.g. based on customer, transaction type)
    string PostingDirection?;
    # The posting amount as a credit-debit pair
    common:Amount PostingAmount\(creditdebitpair\)?;
    # The date and time of the posting
    common:Datetime PostingValueDate?;
    # Any confirmation notification
    string PostingResult?;
};

public type SensitivityTestOk record {|
    *http:Ok;
    SensitivityTest body;
|};

public type LiquidityandCashFlowTestOk record {|
    *http:Ok;
    LiquidityandCashFlowTest body;
|};

public type RiskTestOk record {|
    *http:Ok;
    RiskTest body;
|};

public type AssetandLiabilityValuationTestOk record {|
    *http:Ok;
    AssetandLiabilityValuationTest body;
|};

public type FinancialStatementAssessmentOk record {|
    *http:Ok;
    FinancialStatementAssessment body;
|};

# The Liquidity and Cash Flow Test test is one aspect that can be intergrated into the overall Liquidity and Cash Flow Test
public type SensitivityTest record {
    # The required status/situation before the test can be applied
    common:Condition Preconditions?;
    # The schedule and timing of the testing performed
    common:Schedule Schedule?;
    # The test version employed
    string VersionNumber?;
    # The Liquidity and Cash Flow Test specific Business Service
    common:BusinessService SensitivityTestService?;
    # Reference to Liquidity and Cash Flow Test
    common:Assessment FinancialStatementAssessmentReference?;
    # Reference to Liquidity and Cash Flow Test
    common:Test SensitivityTestReference?;
    # >
    # * `ProductEligibilityTest` - 
    # * `NextBestProductTest` - 
    # * `IssuedDeviceTest` - 
    # * `CardHolderAuthenticationTest` - 
    # * `CardFundsAvailableTest` - 
    # * `CardTransactionFraudTest` - 
    # * `CardStand-InAuthorizationTest` - 
    # * `ExternalAccessRequestTest` - 
    # * `SuitabilityTest` - 
    # * `LegalComplianceTest` - 
    # * `RegulatoryComplianceTest` - 
    # * `SystemFunctionalTest` - 
    # * `SystemProductionTest` - 
    # * `SystemBusinessRiskTest` - 
    # * `SystemOperationsTest` - 
    # * `CreditPolicyComplianceTest` - 
    # * `RuleSetAndDecisionTreeTest` - 
    # * `ModelBasedTests` - 
    # * `AssetAndLiabilityValuationTest` - 
    # * `LiquidityAndCashFlowTest` - 
    # * `RiskTest` - 
    # * `SensitivityTest` - 
    common:Testtypevalues SensitivityTestType?;
};

# The Liquidity and Cash Flow Test test is one aspect that can be intergrated into the overall Liquidity and Cash Flow Test
public type LiquidityandCashFlowTest record {
    # The required status/situation before the test can be applied
    common:Condition Preconditions?;
    # The schedule and timing of the testing performed
    common:Schedule Schedule?;
    # The test version employed
    string VersionNumber?;
    # The Liquidity and Cash Flow Test specific Business Service
    common:BusinessService LiquidityandCashFlowTestService?;
    # Reference to Liquidity and Cash Flow Test
    common:Assessment FinancialStatementAssessmentReference?;
    # Reference to Liquidity and Cash Flow Test
    common:Test LiquidityandCashFlowTestReference?;
    # >
    # * `ProductEligibilityTest` - 
    # * `NextBestProductTest` - 
    # * `IssuedDeviceTest` - 
    # * `CardHolderAuthenticationTest` - 
    # * `CardFundsAvailableTest` - 
    # * `CardTransactionFraudTest` - 
    # * `CardStand-InAuthorizationTest` - 
    # * `ExternalAccessRequestTest` - 
    # * `SuitabilityTest` - 
    # * `LegalComplianceTest` - 
    # * `RegulatoryComplianceTest` - 
    # * `SystemFunctionalTest` - 
    # * `SystemProductionTest` - 
    # * `SystemBusinessRiskTest` - 
    # * `SystemOperationsTest` - 
    # * `CreditPolicyComplianceTest` - 
    # * `RuleSetAndDecisionTreeTest` - 
    # * `ModelBasedTests` - 
    # * `AssetAndLiabilityValuationTest` - 
    # * `LiquidityAndCashFlowTest` - 
    # * `RiskTest` - 
    # * `SensitivityTest` - 
    common:Testtypevalues LiquidityandCashFlowTestType?;
};

# The Liquidity and Cash Flow Test test is one aspect that can be intergrated into the overall Liquidity and Cash Flow Test
public type AssetandLiabilityValuationTest record {
    # The required status/situation before the test can be applied
    common:Condition Preconditions?;
    # The schedule and timing of the testing performed
    common:Schedule Schedule?;
    # The test version employed
    string VersionNumber?;
    # The Liquidity and Cash Flow Test specific Business Service
    common:BusinessService AssetandLiabilityValuationTestService?;
    # Reference to Liquidity and Cash Flow Test
    common:Assessment FinancialStatementAssessmentReference?;
    # Reference to Liquidity and Cash Flow Test
    common:Test AssetandLiabilityValuationTestReference?;
    # >
    # * `ProductEligibilityTest` - 
    # * `NextBestProductTest` - 
    # * `IssuedDeviceTest` - 
    # * `CardHolderAuthenticationTest` - 
    # * `CardFundsAvailableTest` - 
    # * `CardTransactionFraudTest` - 
    # * `CardStand-InAuthorizationTest` - 
    # * `ExternalAccessRequestTest` - 
    # * `SuitabilityTest` - 
    # * `LegalComplianceTest` - 
    # * `RegulatoryComplianceTest` - 
    # * `SystemFunctionalTest` - 
    # * `SystemProductionTest` - 
    # * `SystemBusinessRiskTest` - 
    # * `SystemOperationsTest` - 
    # * `CreditPolicyComplianceTest` - 
    # * `RuleSetAndDecisionTreeTest` - 
    # * `ModelBasedTests` - 
    # * `AssetAndLiabilityValuationTest` - 
    # * `LiquidityAndCashFlowTest` - 
    # * `RiskTest` - 
    # * `SensitivityTest` - 
    common:Testtypevalues AssetandLiabilityValuationTestType?;
};

# The Liquidity and Cash Flow Test test is one aspect that can be intergrated into the overall Liquidity and Cash Flow Test
public type RiskTest record {
    # The required status/situation before the test can be applied
    common:Condition Preconditions?;
    # The schedule and timing of the testing performed
    common:Schedule Schedule?;
    # The test version employed
    string VersionNumber?;
    # The Liquidity and Cash Flow Test specific Business Service
    common:BusinessService RiskTestService?;
    # Reference to Liquidity and Cash Flow Test
    common:Assessment FinancialStatementAssessmentReference?;
    # Reference to Liquidity and Cash Flow Test
    common:Test RiskTestReference?;
    # >
    # * `ProductEligibilityTest` - 
    # * `NextBestProductTest` - 
    # * `IssuedDeviceTest` - 
    # * `CardHolderAuthenticationTest` - 
    # * `CardFundsAvailableTest` - 
    # * `CardTransactionFraudTest` - 
    # * `CardStand-InAuthorizationTest` - 
    # * `ExternalAccessRequestTest` - 
    # * `SuitabilityTest` - 
    # * `LegalComplianceTest` - 
    # * `RegulatoryComplianceTest` - 
    # * `SystemFunctionalTest` - 
    # * `SystemProductionTest` - 
    # * `SystemBusinessRiskTest` - 
    # * `SystemOperationsTest` - 
    # * `CreditPolicyComplianceTest` - 
    # * `RuleSetAndDecisionTreeTest` - 
    # * `ModelBasedTests` - 
    # * `AssetAndLiabilityValuationTest` - 
    # * `LiquidityAndCashFlowTest` - 
    # * `RiskTest` - 
    # * `SensitivityTest` - 
    common:Testtypevalues RiskTestType?;
};

# To test or assess an entity, possibly against some formal qualification or certification requirement within Financial Statement Assessment. 
public type FinancialStatementAssessment record {
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
    common:Featuretypevalues FinancialStatementAssessmentParameterType?;
    # A selected optional business service as subject matter of Financial Statement Assessment
    common:Service FinancialStatementAssessmentSelectedOption?;
    # >
    # * `Valuation` - 
    # * `Matching` - 
    # * `Authorization` - An evaluation whether a party or system is allowed to do something.
    #
    # The consent given by a participant (or a third party acting on behalf of that participant) in order to transfer funds or securities. (ECB)
    #
    # Authorization is a mechanism by which a computer system determines whether to allow or deny specific action to a user. Authorization is often controlled by rather complex rules and algorithms, usually specified as part of an access control model. Authorization often follows (and required) authentication, however, authentication and authorization are two separate mechanisms. In rare cases, "authorization" is understood as a process of allowing access, granting permissions or giving approval. Such as "authorization" of a request to join a group. (ISO/IEC 24760-1:2019 - IT Security and Privacy)
    # * `Authentication` - An evaluation whether a party or system is what it claims to be.
    #
    # A security mechanism for verifying: 1) the identity of an individual or other entity (including verification by means of a computer or computer application); and 2) the level of authority of that person or entity (i.e. the ability of that person or entity to perform specific tasks or activities). (ECB)
    #
    # Authentication is a mechanism by which a computer system checks that the user is really the one she or he claims to be. Authentication can be implemented by a broad variety of mechanisms broadly divided into three categories: something you know, something you have, something you are. Traditionally, authentication is done by the means of by username and password. Authentication is often followed by authorization, however, authentication and authorization are two separate mechanisms. (ISO/IEC 24760-1:2019 - IT Security and Privacy)
    # * `QualityAssurance` - 
    # * `Audit` - 
    # * `ComplianceCheck` - 
    # * `FundingCheck` - 
    # * `SuitabilityCheck` - 
    # * `PerformanceCheck` - 
    # * `ImpactAssessment` - 
    # * `RiskAssessment` - 
    # * `Rating` - 
    # * `UnderwritingAssessment` - 
    # * `Qualification` - 
    # * `Verification` - A process establishing that a particular information is correct, while the meaning of "information" and "correct" varies from context to context. When dealing with identity information, this usually means formal verification of identity attributes, checking the schema, identifier uniqueness and referential integrity. However, verification may mean deeper verification, such as checking that the information is true and up-to-date.  (ISO/IEC 24760-1:2019 - IT Security and Privacy)
    #
    # * `KYCAssessment` - An assessment conducted by businesses and financial institutions to verify and confirm the identity of their customers or clients. The primary purpose of a KYC check is to prevent illegal activities, such as money laundering, terrorist financing, and fraud, by ensuring that customers are who they claim to be.
    # * `PEPAssessment` - A PEP check, or "Politically Exposed Person" check, is an assessment conducted by used by businesses, financial institutions, and government agencies to identify individuals who hold prominent public positions or have significant political influence. The purpose of a PEP check is to assess and manage the potential risks associated with doing business with these individuals, as they may be more susceptible to corruption, money laundering, or other illicit activities.
    # * `AMLAssessment` - An AML (Anti-Money Laundering) check is an assessment conducted by businesses, financial institutions, and other organizations to prevent and detect money laundering and the financing of criminal activities. The main purpose of an AML check is to ensure that financial transactions and business relationships are not being used to disguise the illegal origins of funds.
    # * `EligibilityCheck` - Determines whether a person or case meets the criteria or preconditions to qualify for a benefit, service, or action.
    # * `ExternalAgencyCheck` - 
    # * `EntitlementCheck` - Determines what benefit, amount, or service the person is actually entitled to receive once eligibility is confirmed.
    common:Assessmenttypevalues FinancialStatementAssessmentType?;
    # Reference to Liquidity and Cash Flow Test
    common:Assessment FinancialStatementAssessmentReference?;
    # Request to assess
    common:Instruction FinancialStatementAssessmentRequest?;
    # The schedule and timing of the testing performed
    common:Schedule FinancialStatementAssessmentSchedule?;
    # FinancialStatementAssessmentStatus
    common:Status FinancialStatementAssessmentStatus?;
    # FinancialStatementAssessmentUsageLog
    common:Log FinancialStatementAssessmentUsageLog?;
    # Reference to an entity that assigns and manages the identification.
    # tReference to the organization or agency that issued the identifier (e.g., DMV, Passport Office).
    common:Involvedparty FinancialStatementAssessmentRequesterReference?;
    # Reference to an entity that assigns and manages the identification.
    # tReference to the organization or agency that issued the identifier (e.g., DMV, Passport Office).
    common:Involvedparty FinancialStatementAssessmentAssociatedParty?;
    # Reference to an entity that assigns and manages the identification.
    # tReference to the organization or agency that issued the identifier (e.g., DMV, Passport Office).
    common:Involvedparty FinancialStatementAssessmentServiceProviderReference?;
};

# A collection of models/calculations/algoritms that can be applied to a subject or activity
#
# Examples: Average balance calculation, Propensity to buy
public type EconomicModel record {
    # The result of the economic model, including the recommended response
    EconomicModelAnalysis EconomicModelAnalysisResult?;
    # Work documentation, forms and schedules produced and referenced during the analysis (for future reference)
    common:Workproduct EconomicModelWorkProduct?;
};

# A collection of models/calculations/algoritms that can be applied to a subject or activity
#
# Examples: Average balance calculation, Propensity to buy
public type CustomerBehavior record {
    # The result of the economic model, including the recommended response
    common:Analysis CustomerBehaviorAnalysisResult?;
    # Work documentation, forms and schedules produced and referenced during the analysis (for future reference)
    common:Workproduct CustomerBehaviorAnalysisWorkProduct?;
};

public type FraudDiagnosisAnalysisOk record {|
    *http:Ok;
    FraudDiagnosisAnalysis body;
|};

# A collection of models/calculations/algoritms that can be applied to a subject or activity
#
# Examples: Average balance calculation, Propensity to buy
public type AnalystReview record {
    # Reference to an entity that assigns and manages the identification.
    # tReference to the organization or agency that issued the identifier (e.g., DMV, Passport Office).
    common:Involvedparty CustomerReference?;
    # Reference to an outbound contact established with the customer
    string OutboundContactReference?;
    # The result of the economic model, including the recommended response
    common:Analysis AnalystReviewAnalysisResult?;
    # Work documentation, forms and schedules produced and referenced during the analysis (for future reference)
    common:Workproduct AnalystReviewWorkProduct?;
    # The recommended action resulting from the analysts review
    common:Action AnalystReviewRecommendedAction?;
};

# The result of the economic model, including the recommended response
public type EconomicModelAnalysis record {
    # >
    # * `PerformanceAnalysis` - 
    # * `ActivityAnalysis` - 
    # * `RevenueAnalysis` - 
    # * `CostAnalysis` - 
    # * `PredictiveAnalysis` - 
    # * `BehavioralAnalysis` - 
    # * `ProfitabilityAnalysis` - 
    # * `CompetitiveAnalysis` - 
    # * `CohortAnalysis` - 
    # * `SegmentAnalysis` - 
    # * `SWOTAnalysis` - 
    # * `Benchmarking` - 
    # * `PositioningAnalysis` - 
    # * `ScenarioAnalysis` - 
    # * `IntelligenceGathering` - 
    # * `Profiling` - 
    common:Analysistypevalues AnalysisType?;
    # AnalysisResult
    string AnalysisResult?;
    # The period covered by the analysis (from to date time)
    common:Datetimeperiod AnalysisPeriod?;
    # Date and time at which the range starts. (ISO20022)
    common:Datetime AnalysisDateTime?;
    # AnalysisSpecification
    string AnalysisSpecification?;
    # The schedule and timing of the analysis performed using the algorithm
    common:Schedule AnalysisSchedule?;
};

# Analyze the performance or behavior of some on-going activity or entity  within Fraud Diagnosis. 
# Examples: Provide behavioral insights and analysis into customer behavior and analyze financial market activity in order to identify opportunities, define pricing and evaluate risks.
#
# Analyze the performance or behavior of some on-going activity or entity. Examples: Provide behavioral insights and analysis into customer behavior and analyze financial market activity in order to identify opportunities, define pricing and evaluate risks.
public type FraudDiagnosisAnalysis record {
    # Reference to the product fulfillment production session for which fraud diagnosis is performed
    common:Session ProductProductionSessionReference?;
    # Details the types of fraud diagnosis algorithms and tests are applied
    common:Profile FraudDiagnosisEvaluationProfile?;
    # The production transaction details that are submitted for fraud diagnosis
    string FraudDiagnosisTransactionConsolidationRecord?;
    # Details of detected out of pattern production activity that could be fraud highlighted by Fraud Evaluation
    string FraudEvaluationProductionAnomalyRecord?;
    # Reference to the one or more production transactions isolated by the fraud evaluation tests identified by Fraud Evaluation
    common:ProductionTransaction FraudEvaluationProductionAnomalyProductionTransactionReference?;
    # Details the conclusion of the analysis and determination (e.g. diagnosis of likely fraud)
    string FraudDiagnosisDetermination?;
    # Details the recommended action in response to the analysis (e.g. accept or reject the transaction, flag account for fraud)
    string FraudDiagnosisRecommendation?;
};

# To test or assess an entity, possibly against some formal qualification or certification requirement within Fraud Evaluation. 
public type FraudEvaluationAssessment record {
    # Reference to the product fulfillment production session for which on-line fraud evaluation is performed
    common:Session ProductProductionSessionReference?;
    # Details the types of fraud evaluation tests applied
    common:Profile FraudEvaluationTestProfile?;
    # The type of technique use to combine results of the different tests used to detect out of pattern behavior
    string FraudEvaluationEnsembleTechniqueType?;
    # The definition of how the constituent rule set/decision tree and model test are combined to compete the assessment
    string FraudEvaluationEnsembleTechniqueDefinition?;
    # The production transaction details that are submitted for fraud evaluation - note this will typically be a real-time dataset
    string FraudEvaluationTransactionConsolidationRecord?;
    # Details of detected out of pattern production activity that could be fraud
    string FraudEvaluationProductionAnomalyRecord?;
    # Reference to the one or more production transactions isolated by the fraud evaluation tests
    common:ProductionTransaction FraudEvaluationProductionAnomalyProductionTransactionReference?;
};

public type FraudEvaluationAssessmentOk record {|
    *http:Ok;
    FraudEvaluationAssessment body;
|};

# All kind of verifications 
#
# Examples: Password verification
public type RuleSetsandDecisionTrees record {
    # The production transaction assessment test results, including reference to any potential fraud transactions - note this can be a real-time dataset
    common:Test RuleSetsAndDecisionTreesTestResult?;
    # Work documentation, forms and schedules produced and referenced during the assessment task
    common:Workproduct RuleSetsAndDecisionTreesTestWorkProduct?;
};

# All kind of verifications 
#
# Examples: Password verification
public type Models record {
    # The production transaction assessment test results, including reference to any potential fraud transactions - note this can be a real-time dataset
    common:Test ModelsTestResult?;
    # Work documentation, forms and schedules produced and referenced during the assessment task
    common:Workproduct ModelsTestWorkProduct?;
};

# A collection of the events/transactions recorded by the log
public type FinancialTransactionCapture record {
    # The description of purpose of the financial transaction
    string PostingDescription?;
    # The logged financial transaction
    common:Transaction PostingTransaction?;
    # The date of the transaction
    common:Date PostingValueDate?;
};

# Interest transaction type values
public type Interesttransactiontypevalues "InterestAllocationTransaction"|"InterestPaymentTransaction"|"InterestAdjustmentTransaction";

# The record of applied interest if interest calculations are supported
public type InterestArrangement record {
    # An arranged InterestRate
    common:Rate InterestRate?;
    # InterestDefinition
    string InterestDefinition?;
    # Period of time during which the status is valid.
    common:Datetimeperiod InterestPeriod?;
    # An arranged InterestRatePlan
    common:Rateplan InterestRatePlan?;
    # An interest schedule is an arranged/planned set of dates at which interest will be claimed.
    common:Schedule InterestSchedule?;
    # The date of the transaction
    common:Date LoanOriginationDate?;
    # The date of the transaction
    common:Date LoanMaturityDate?;
    # The date of the transaction
    common:Date LoanEndDate?;
    # LoanAmount
    common:Amount LoanAmount?;
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
    # An identifier that allows to uniquely refer to an instance of a transaction.
    common:Identifier ArrangementIdentification?;
    # An identifier that allows to uniquely refer to an instance of a transaction.
    common:Identifier PaymentCardArrangementIdentifier?;
    # SavingsAccountArrangementProductFeatureType
    common:Productfeaturetype SavingsAccountArrangementProductFeatureType?;
    # CurrentAccountArrangementProductFeatureType
    common:Productfeaturetype CurrentAccountArrangementProductFeatureType?;
    # ProductArrangementProductFeatureType
    common:Productfeaturetype ProductArrangementProductFeatureType?;
    # TermDepositArrangementProductFeatureType
    common:Productfeaturetype TermDepositArrangementProductFeatureType?;
    # The date when the identifier became valid.
    common:Datetime TermDepositMaturityDate?;
    # The date when the identifier became valid.
    common:Datetime TermDepositOpenDate?;
    # TermDepositAmount
    common:Amount TermDepositAmount?;
    # TermDepositDuration
    common:Duration TermDepositDuration?;
    # The Period for which the TermDepositAmount needs ti stay deposited with the Bank
    string DepositTerm?;
    # VirtualAccountArrangementType
    string VirtualAccountArrangementType?;
    # The date when the identifier became valid.
    common:Datetime CreditFacilityDataTime?;
    # An identifier that allows to uniquely refer to an instance of a transaction.
    common:Identifier CreditFacilityNumber?;
    # CreditFacilityAmount
    common:Amount CreditFacilityAmount?;
};

# Position Keeping response type
public type FinancialPositionLogOk record {|
    *http:Ok;
    # body
    FinancialPositionLog body;
|};

# Maintain a log of transactions or activity, typically a financial account/journal or a log of activity to support behavioral analysis within Position Keeping.
public type FinancialPositionLog record {
    # The product/service for which this is a financial transaction log
    common:ProductAgreement ProductInstanceReference?;
    # Reference to an entity that assigns and manages the identification.
    common:Involvedparty CustomerReference?;
    # Reference to an entity that assigns and manages the identification.
    common:Involvedparty CounterpartyReference?;
    # The currency for the logged  transactions
    common:Currencycode BaseCurrency?;
    # The record of applied interest if interest calculations are supported
    InterestArrangement InterestApplicationRecord?;
    # A record of applied interest
    InterestTransaction InterestTransaction?;
    # General description of the interest transaction
    string TransactionDescription?;
    # TransactionInterestCharge
    common:Amount TransactionInterestCharge?;
    # Basic position limits that are maintained as an aspect of the log
    common:LimitArrangement ManagedPositionLimits?;
    # Basic position limits that are maintained as an aspect of the log
    common:LimitArrangement PositionLimitSettings?;
    # The current calculated position
    string PositionLimitValue?;
    # AmountBlock
    common:Amount AmountBlock?;
    # Amount
    common:Amount Amount?;
    # Value of the specific date type
    common:Datetime Date?;
    # The date of the transaction
    common:Date InitiationDate?;
    # Status
    common:Status Status?;
};

# A record of applied interest
public type InterestTransaction record {
    # InterestTransactionAmount
    common:Amount InterestTransactionAmount?;
    # Description of InterestTransaction
    string InterestTransactionDescription?;
    # An arranged InterestRate
    common:Rate AppliedInterestRate?;
    # An identifier that allows to uniquely refer to an instance of a transaction.
    common:Identifier TransactionIdentification?;
    # The Date that the transaction has occurred or is planned to occur.
    common:Transactiondatetime TransactionDate?;
    # A detailed explanation or commentary of transaction.
    string TransactionDescription?;
    # A characteristic of transaction which refers to the LifecycleStatus of transaction (e.g., initiated, executed, confirmed, cancelled, etc.) 
    common:Transactionstatus TransactionStatus?;
    # The name of transaction.
    common:Name TransactionName?;
};

# The Capture is one of the specific types of events that is recorded in the Capture
public type Capture record {
    # The required status/situation before the event is captured
    common:Condition Preconditions?;
    # The timing and key actions/milestones involved in capturing the event
    common:Schedule Schedule?;
    # The Capture specific Business Service
    common:BusinessService BusinessService?;
    # The required status/situation before the event is captured
    common:Condition Postconditions?;
    # Reference to Capture
    common:Log RewardPointsLogReference?;
    # Reference to Capture
    common:Event CaptureReference?;
    # The type of Capture
    string CaptureType?;
};

# Maintain a log of transactions or activity, typically a financial account/journal or a log of activity to support behavioral analysis  within Reward Points Account. 
# Examples: Maintain a financial journal of transactions processed for a product or service and maintain a log of customer events and activity for subsequent analysis.
public type RewardPointsLog record {
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
    common:Featuretypevalues RewardPointsLogParameterType?;
    # A characteristic of service which refers 1) mainly to the function or condition of service. 2) to non-functional features like quality and security
    common:Feature RewardPointsLogSelectedOption?;
    # The type of Reward Points Log
    string RewardPointsLogType?;
    # The timing and key actions/milestones involved in capturing the event
    common:Schedule RewardPointsLogSchedule?;
    # Reference to Capture
    common:Log RewardPointsLogUsageLog?;
    # Reference to the log of (update) ativities/events of Reward Points Log
    string RewardPointsLogUpdateLog?;
    # Reference to Capture
    common:Log RewardPointsLogReference?;
    # Reference to the business unit which is involved in Reward Points Log
    common:BusinessUnit RewardPointsLogBusinessUnitReference?;
    # Reference to an entity that assigns and manages the identification.
    # tReference to the organization or agency that issued the identifier (e.g., DMV, Passport Office).
    common:Involvedparty RewardPointsLogCustomerReference?;
    # The configuration of Reward Points Log
    common:Arrangement RewardPointsLogServiceConfiguration?;
    # The position of Reward Points Log
    common:Position RewardPointsLogPosition?;
    # >
    # * `Balance/Cashflow` - 
    # * `CreditPosition` - 
    # * `CollateralPosition` - 
    # * `SecurityPosition` - 
    common:Positiontypevalues RewardPointsLogPositionType?;
    # The date when the identifier became valid.
    common:Datetime RewardPointsLogPositionLimitTime?;
};

public type RewardPointsLogOk record {|
    *http:Ok;
    RewardPointsLog body;
|};

# The Capture is one of the specific types of events that is recorded in the Capture
public type Expiration record {
    # The required status/situation before the event is captured
    common:Condition Preconditions?;
    # The timing and key actions/milestones involved in capturing the event
    common:Schedule Schedule?;
    # The Capture specific Business Service
    common:BusinessService BusinessService?;
    # The required status/situation before the event is captured
    common:Condition Postconditions?;
    # Reference to Capture
    common:Log RewardPointsLogReference?;
    # Reference to Capture
    common:Event ExpirationReference?;
    # The type of Expiration
    string ExpirationType?;
};

public type CaptureOk record {|
    *http:Ok;
    Capture body;
|};

public type ExpirationOk record {|
    *http:Ok;
    Expiration body;
|};

# A collection of the events/transactions recorded by the log
#
# Examples: Customer life event, Servicing event
public type SecuritiesTransactionCapture record {
    # The type of securities transaction (e.g. bought amount, sold amount, dividend payment)
    string SecuritiesPostingType?;
    # The logged securities transaction. Note the log can handle a range of transactions covering bought and sold amounts and securities instrument related transactions such as dividend payments
    common:Transaction SecuritiesPostingTransaction?;
    # The date when the identifier became valid.
    common:Datetime SecuritiesPostingValueDate?;
};

# Maintain a log of transactions or activity, typically a financial account/journal or a log of activity to support behavioral analysis within Securities Position Keeping. 
public type SecuritiesPositionLog record {
    # The type of securities transaction log (e.g. equities, derivatives, all)
    string SecuritiesTransactionLogType?;
    # The product/service investment account for which this is the securities transaction log
    common:ProductAgreement ProductInstanceReference?;
    # Reference to an entity that assigns and manages the identification.
    # tReference to the organization or agency that issued the identifier (e.g., DMV, Passport Office).
    common:Involvedparty CustomerReference?;
    # Reference to a counterparty for the log if appropriate (e.g. merchant reference, corporate reference)
    string CounterpartyReference?;
    # Details the range of instruments that are tracked by the log (each instrument has its own transaction record/holding position
    string SecuritiesPositionLogInstrumentProfile?;
    # Details for an individual tracked instrument type - (the log track transactions for multiple securities/instruments)
    string SecuritiesPositionLogInstrumentRecord?;
    # Reference to the type of investment instrument being tracked (e.g. equity, commodity, FX/MM, derivative)
    string SecuritiesInstrumentType?;
    # The specific instrument trading identifier (e.g. NASDAQ Id)
    string SecuritiesInstrumentReference?;
    # Basic position limits that are maintained as an aspect of the log (these can include securities holdings and related instrument properties such as associated dividends entitlements)
    string SecuritiesPositionLimits?;
    # >
    # * `Multilateral` - Limit is a maximum amount value applied to, or by, a participant to a set of counterparties. The multilateral limit is taken into account by the transaction administrator to contain the risk in the system. With the help of the multilateral limit, the direct participant restricts the use of liquidity when clearing payments with all other direct participants for which no bilateral limit is set.
    # * `Bilateral` - Limit is applied by one party to a specific counterparty, and corresponds to the maximum amount of traffic party setting the limit can send to that counterparty. The limit can be expressed as a debit or a credit limit. With the help of a bilateral limit, the direct participant restricts the use of liquidity when clearing payments with another direct participant.
    # * `Netbilateral` - Limit is applied by one party to a specific counterparty, and corresponds to the maximum net balance acceptable by the party that is setting the limit. The limit is calculated as an arithmetic sum in value of the bilateral flows exchanged between the two parties. The net bilateral limit can be expressed as a debit or a credit balance.
    # * `Indirectbilateral` - Limit is a maximum value set by a direct participant with respect to its indirect participant. The limit represents the maximum amount the indirect participant can use to settle its operations.
    # * `Global` - Maximum value set by either the transaction administrator or by a member for the participation of a member in the system. The global limit may be expressed as a credit or debit maximum value and is taken into account by the transaction administrator when processing transaction inside the system. With the help of the global limit, the direct participant may limit the use of liquidity when clearing specific type of payments.
    # * `Mandatorybilateral` - Mandatory part of the bilateral limit applied by one party to a specific counterparty, and corresponds to the maximum amount of traffic party setting the limit can send to that counterparty. The limit can be expressed as a debit or a credit limit. With the help of a bilateral limit, the direct participant restricts the use of liquidity when clearing payments with another direct participant.
    # * `Discretionarybilateral` - Discretionary part of the bilateral limit applied by one party to a specific counterparty, and corresponds to the maximum amount of traffic party setting the limit can send to that counterparty. The limit can be expressed as a debit or a credit limit. With the help of a bilateral limit, the direct participant restricts the use of liquidity when clearing payments with another direct participant.
    # * `Directdebit` - Limit not to be exceeded for direct debit operations.
    # * `Singlecustomerdirectdebit` - Single direct debit payment limit not to be exceeded by any single direct debit transaction by a customer.
    # * `Singlefinancialinstitutiondirectdebit` - Single direct debit payment limit not to be exceeded by any single direct debit transaction initiated by a financial institution.
    # * `Totaldailycustomerdirectdebit` - Total daily payments limit for customer direct debits not to be exceeded by the total of all direct debit transactions initiated by customers.
    # * `Totaldailyfinancialinstitutiondirectdebit` - Total daily payments limit for financial institutions direct debits not to be exceeded by the total of all direct debit transactions initiated by financial institutions.
    # * `Autocollateralisation` - Limit is related to a credit operation that is or can be triggered when a buyer does not have a sufficient amount of money to settle a securities transaction in order to improve its cash position for the next settlement cycle. The credit provided can be secured using securities already held by the buyer (“collateral stocks”) or the securities that are being purchased (“collateral flows”).
    # * `Unsecuredcredit` - Limit is related to a cap amount granted by a national central bank or a settlement bank, but generally unsecured outside of the market infrastructure.
    # * `Externalguarantee` - Limit is related to a cap amount granted by a national central bank or a settlement bank.
    common:Limittypevalues SecuritiesPositionLimitType?;
    # The position definition, associated limit settings and rules
    string SecuritiesPositionLimitSettings?;
    # The current calculated position
    common:Amount SecuritiesPositionLimitValue?;
    # Support for recording blocks on the log position (handling is by the associated investment account fulfillment service domain)
    string SecuritiesAmountBlock?;
    # The type of block applied to the tracked securities position (e.g. pending, final)
    string SecuritiesAmountBlockType?;
    # Priority classification for the block
    string Priority?;
    # The current calculated position
    common:Amount Amount?;
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
    common:Datetimetypevalues DateType?;
    # The date when the identifier became valid.
    common:Datetime Date?;
    # The date when the identifier became valid.
    common:Datetime InitiationDate?;
    # Status
    common:Status Status?;
};

public type SecuritiesPositionLogOk record {|
    *http:Ok;
    SecuritiesPositionLog body;
|};
