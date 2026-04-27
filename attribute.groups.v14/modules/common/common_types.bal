
# >
# * `ContactHandlingSession` - 
# * `CustomerDialogueSession` - 
# * `ChannelOperatingSession` - 
# * `GatewayOperatingSession` - 
# * `SwitchOperatingSession` - 
# * `DeviceOperatingSession` - 
# * `InterbankTransactionOperatingSession` - 
# * `CorrespondenceOperatingSession` - 
# * `InteractiveHelpOperatingSession` - 
# * `ACHOperatingSession` - 
public type Sessiontypevalues "ContactHandlingSession"|"CustomerDialogueSession"|"ChannelOperatingSession"|"GatewayOperatingSession"|"SwitchOperatingSession"|"DeviceOperatingSession"|"InterbankTransactionOperatingSession"|"CorrespondenceOperatingSession"|"InteractiveHelpOperatingSession"|"ACHOperatingSession";

# >
# * `PaymentInstruction` - 
# * `DeliveryOrder` - 
# * `InformationRequest` - 
# * `ExchangeInstruction` - 
# * `AllocationInstruction` - 
# * `MaintenanceInstruction` - 
public type Instructiontypevalues "PaymentInstruction"|"DeliveryOrder"|"InformationRequest"|"ExchangeInstruction"|"AllocationInstruction"|"MaintenanceInstruction";

# >
# * `Short-TermGoal` - 
# * `Long-TermGoal` - 
# * `BusinessGoal` - 
# * `PerformanceGoal` - 
# * `FinancialGoal` - 
# * `OutcomeGoal` - 
# * `SMARTGoal` - 
public type Goaltypevalues "Short-TermGoal"|"Long-TermGoal"|"BusinessGoal"|"PerformanceGoal"|"FinancialGoal"|"OutcomeGoal"|"SMARTGoal";

# >
# * `PostalAddress` - 
# * `GeolocationAddress` - 
# * `LatitudeAddress` - 
# * `LongitudeAddress` - 
# * `ElectronicAddress` - 
public type Addresstypevalues "PostalAddress"|"GeolocationAddress"|"LatitudeAddress"|"LongitudeAddress"|"ElectronicAddress";

# >
# * `OrderNumber` - 
# * `InstructionNumber` - 
public type Instructionidentificationtypevalues "OrderNumber"|"InstructionNumber";

# >
# * `OrderNumber` - 
# * `InstructionNumber` - 
public type instructionidentificationtypevalues "OrderNumber"|"InstructionNumber";


# >
# * `Initiate` - 
# * `Execute` - 
# * `Create` - 
# * `Transfer` - 
# * `Pay` - 
# * `Deliver` - 
# * `Apply` - 
# * `Calculate` - 
public type Actiontypevalues "Initiate"|"Execute"|"Create"|"Transfer"|"Pay"|"Deliver"|"Apply"|"Calculate";

# >
# * `BBAN` - Basic Bank Account Number (BBAN) - identifier used nationally by financial institutions, ie, in individual countries, generally as part of a National Account Numbering Scheme(s), to uniquely identify the account of a customer. (ISO20022)
#
# .
# * `IBAN` - International Bank Account Number (IBAN) - identifier used internationally by financial institutions to uniquely identify the account of a customer. Further specifications of the format and content of the IBAN can be found in the standard ISO 13616 "Banking and related financial services - International Bank Account Number (IBAN)" version 1997-10-01, or later revisions. (ISO20022)
#
# An identifier used internationally by financial institutions to uniquely identify the account of a customer at a financial institution, as described in the latest edition of the international standard ISO 13616. "Banking and related financial services - International Bank Account Number (IBAN)". (OBExternalAccountIdentification4Code)
# * `UPIC` - Universal Payment Identification Code (UPIC) - identifier used by the New York Clearing House to mask confidential data, such as bank accounts and bank routing numbers. UPIC numbers remain with business customers, regardless of banking relationship changes. (ISO20022)
# * `AccountNumber` - String of characters (mainly numbers) used to identify an account.(ISO20022)
#
# * `PAN` - Primary Account Number - identifier scheme used to identify a card account. (OBExternalAccountIdentification4Code)
# * `Paym` - Paym Scheme to make payments via mobile (OBExternalAccountIdentification4Code)
# * `Wallet` - A primary and unique account identifier used to identify a wallet.
# An ASPSP must document on their developer portal, the payment methods that supports this account identifier.(OBExternalAccountIdentification4Code)
# * `SortCodeAndAccountNumber` - Sort Code and Account Number - identifier scheme used in the UK by financial institutions to identify the account of a customer. The identifier is the concatenation of the 6 digit UK sort code and 8 digit account number. (UK Open Banking)
# * `AIIN` - IssuerIdentificationNumber
# * `CUID` - CHIPSUniversalIdentifier
public type Accountidentificationtypevalues "BBAN"|"IBAN"|"UPIC"|"AccountNumber"|"PAN"|"Paym"|"Wallet"|"SortCodeAndAccountNumber"|"AIIN"|"CUID";

# >
# * `Defined` - Condition is authored or configured
# * `Pending` - Awaiting approval or validation
# * `Activated` - Live and ready for evaluation
# * `Evaluated` - Assessed in context of process or event
# * `Fulfilled` - Condition criteria met
# * `Violated` - Condition criteria not met
# * `Expired` - No longer valid due to time/version limits
# * `Archived` - Retired from use, retained for audit/history
public type Conditionstatustypevalues "Defined"|"Pending"|"Activated"|"Evaluated"|"Fulfilled"|"Violated"|"Expired"|"Archived";

# >
# * `DueDate` - 
# * `ExecutionDate` - 
# * `FulfillmentDate` - 
public type Instructiondatetimetypevalues "DueDate"|"ExecutionDate"|"FulfillmentDate";

# >
# * `FinancialReport` - 
# * `BusinessReport` - 
# * `ManagementReport` - 
# * `Statement` - 
# * `MaintenanceReport` - 
# * `RegulatoryReport` - 
# * `TaxReport` - 
# * `AnalysisReport` - 
public type Reporttypevalues "FinancialReport"|"BusinessReport"|"ManagementReport"|"Statement"|"MaintenanceReport"|"RegulatoryReport"|"TaxReport"|"AnalysisReport";

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
public type Analysistypevalues "PerformanceAnalysis"|"ActivityAnalysis"|"RevenueAnalysis"|"CostAnalysis"|"PredictiveAnalysis"|"BehavioralAnalysis"|"ProfitabilityAnalysis"|"CompetitiveAnalysis"|"CohortAnalysis"|"SegmentAnalysis"|"SWOTAnalysis"|"Benchmarking"|"PositioningAnalysis"|"ScenarioAnalysis"|"IntelligenceGathering"|"Profiling";

# >
# * `Requested` - 
# * `Proposed` - 
# * `Offered` - 
# * `Accepted` - 
# * `Cancelled` - 
# * `Fulfilled` - 
# * `Terminated` - 
public type Arrangementstatustypevalues "Requested"|"Proposed"|"Offered"|"Accepted"|"Cancelled"|"Fulfilled"|"Terminated";

# >
# * `CommissionTermAndCondition` - Commission terms for workforce/employee commission processing
# * `LegalTermAndCondition` - Covers the legal considerations of the agreement
# * `RegulatoryTermAndCondition` - Covers the regulatory considerations of the agreement
# * `PolicyTermAndCondition` - Covers the corporate policies and requirements considerations of the agreement
# * `RestrictionTermAndCondition` - Details channel access restrictions for products and services
# * `PreferenceTermAndCondition` - Customer channel/device usage preferences
# * `InvestmentTermAndCondition` - Terms making up the agreement that govern the management of the investment portfolio. Note that there may be many different types of terms and clauses making up the overall policy
# * `MandateTermAndCondition` - Reference to the terms in force for a specific customer for this service provider
# * `OperationalTermAndCondition` - 
# * `ProductTermAndCondition` - 
# * `AgreementTermAndCondition` - 
# * `RelationshipTermAndCondition` - 
# * `ConfidentialTermAndCondition` - 
public type Termandconditiontypevalues "CommissionTermAndCondition"|"LegalTermAndCondition"|"RegulatoryTermAndCondition"|"PolicyTermAndCondition"|"RestrictionTermAndCondition"|"PreferenceTermAndCondition"|"InvestmentTermAndCondition"|"MandateTermAndCondition"|"OperationalTermAndCondition"|"ProductTermAndCondition"|"AgreementTermAndCondition"|"RelationshipTermAndCondition"|"ConfidentialTermAndCondition";

# >
# * `Bilateral` - Balance calculated regarding one member in the system. (ISO20022)
# * `Multilateral` - Balance calculated regarding all members in the system. (ISO20022)
public type Balancecounterpartytypevalues "Bilateral"|"Multilateral";

# >
# * `Pendingprocessing` - Processing of the instruction is pending.
# * `Acknowledgedaccepted` - Instruction has been acknowledged and accepted and is validated for further processing.
# * `Rejected` - Instruction has been rejected.
# * `Accepted` - Instruction has been accepted and is validated for further processing.
# * `Completed` - Processing has been completed.
# * `Notreceived` - No instruction has been received (to be used in a reminder).
# * `Cancelled` - Instruction has been cancelled.
# * `Beingcancelled` - Cancel request is being processed.
# * `Receivedbyissuerorregistrar` - Instruction has been received by Issuer.
# * `Pending` - Instruction is pending.
# * `Standinginstruction` - Standing instruction is applied.
# * `Queued` - Instruction is queued.
# * `Cancelledbysubcustodian` - Instruction has been cancelled by the agent, for example, due to an event deadline extension.
# * `Forwarded` - Accepted and sent along the chain.
public type Instructionstatustypevalues "Pendingprocessing"|"Acknowledgedaccepted"|"Rejected"|"Accepted"|"Completed"|"Notreceived"|"Cancelled"|"Beingcancelled"|"Receivedbyissuerorregistrar"|"Pending"|"Standinginstruction"|"Queued"|"Cancelledbysubcustodian"|"Forwarded";

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
public type Accounttypevalues "DebitAccount"|"CreditAccount"|"VostroAcount"|"NostroAccount"|"PaymentAccount"|"SettlementAccount"|"SavingAccount"|"CurrentAccount"|"CashAccount"|"LoanAccount"|"IndividualAccount"|"JointAccount"|"LiquidationAccount"|"ProvisionAccount"|"PartnershipAccount"|"InvestmentAccount";

# >
# * `AdministrativePlan` - 
# * `ManagementPlan` - 
# * `StratgyPlan` - 
# * `FinancialPlan` - 
# * `DevelopmentPlan` - 
public type Plantypevalues "AdministrativePlan"|"ManagementPlan"|"StratgyPlan"|"FinancialPlan"|"DevelopmentPlan";

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
public type Agreementtypevalues "CustomerAgreement"|"SupplierAgreement"|"BrokerAgreement"|"SalesAgreement"|"PurchaseAgreement"|"MaintenanceAgreement"|"ProductAgreement"|"ResourceAgreement"|"PartnerAgreement"|"MasterAgreement"|"BilateralAgreement"|"RepurchaseAgreement";

# >
# * `OpeningDate` - Date on which the account and related basic services are effectively operational for the account owner. (ISO20022)
# * `ClosingDate` - Date on which the account and related services cease effectively to be operational for the account owner. (ISO20022)
# * `BlockingDate` - 
# * `MaturityDate` - Maturity date for the account.
# * `LiveDate` - 
# * `RenewalDate` - 
public type Accountdatetimetypevalues "OpeningDate"|"ClosingDate"|"BlockingDate"|"MaturityDate"|"LiveDate"|"RenewalDate";

# >
# * `FinancialTransaction` - 
# * `BusinessTransaction` - 
# * `BankingTransaction` - 
# * `AccountingTransaction` - 
# * `BookingTransaction` - 
# * `AllocationTransaction` - 
# * `DeliveryTransaction` - 
# * `ProductionTransaction` - 
public type Transactiontypevalues "FinancialTransaction"|"BusinessTransaction"|"BankingTransaction"|"AccountingTransaction"|"BookingTransaction"|"AllocationTransaction"|"DeliveryTransaction"|"ProductionTransaction";

# >
# * `ExecutedDate` - 
# * `FulfillmentDate` - 
# * `InitiatedDate` - 
# * `CancelledDate` - 
# * `ApprovedDate` - 
# * `ValueDate` - 
# * `BookingDate` - 
public type Transactiondatetimetypevalues "ExecutedDate"|"FulfillmentDate"|"InitiatedDate"|"CancelledDate"|"ApprovedDate"|"ValueDate"|"BookingDate";

# >
# * `OperatingBudget` - 
# * `FinancialBudget` - 
# * `ResourceBudget` - 
public type Budgettypevalues "OperatingBudget"|"FinancialBudget"|"ResourceBudget";

# >
# * `Principal` - 
# * `Actual` - Actual amount.
# * `Estimated` - Estimated amount (the final amount could be above or below).
# * `Maximum` - Maximum amount (the final amount must be less or equal).
# * `Default` - Default amount.
# * `Replacement` - Replacement amount.
# * `Incremental` - Incremental amount for reservation.
# * `Decremental` - Decremental amount for reservation.
# * `Reserved` - Reserved or updated reserved amount for reservation.
# * `Available` - 
# * `Used` - 
# * `DuePayable` - 
# * `Minimum` - 
# * `Open` - The amount is open.(ISO20022)
# * `Unknown` - The amount is unkown.(ISO20022)
# * `Fixed` - The amount represents a fixed value.(ISO20022)
public type Amounttypevalues "Principal"|"Actual"|"Estimated"|"Maximum"|"Default"|"Replacement"|"Incremental"|"Decremental"|"Reserved"|"Available"|"Used"|"DuePayable"|"Minimum"|"Open"|"Unknown"|"Fixed";

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
public type Transactionstatustypevalues "Initiated"|"Executed"|"Cancelled"|"Confirmed"|"Suspended"|"Pending"|"Completed"|"Notified"|"Booked"|"Rejected";

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
public type Arrangementtypevalues "SweepArrangement"|"WithdrawalArrangement"|"DepositArrangement"|"InterestArrangement"|"FeeArrangement"|"LienArrangement"|"InformationArrangement"|"PaymentArrangement"|"EntitlementArrangement"|"PeriodArrangement"|"CollateralArrangement"|"LimitArrangement"|"AccessArrangement"|"CardPaymentArrangement"|"StandingOrderArrangement"|"OverdraftArrangement"|"RepaymentArrangement"|"StatementArrangement"|"CreditTransferArrangement"|"ProductAndServiceArrangement"|"FactoringArrangement"|"RolloverArrangement"|"RestructuringArrangement"|"InsuranceArrangement"|"CollectionArrangement"|"UnderwritingArrangement"|"TerminationArrangement"|"MaturityArrangement"|"AdministrativeArrangement";

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
public type Datetimetypevalues "MaturityDate"|"InitiatedDate"|"RequestedDate"|"ExecutedDate"|"OpenDate"|"CloseDate"|"ExpiryDate"|"EffectiveDate"|"CreatingDate"|"ActivationDate"|"DeactivationDate"|"BlockingDate"|"SendingDate"|"ValidFromDate"|"ValidToDate"|"ReceivingDate"|"SigningDate"|"DueDate"|"ValueDate"|"FulfillmentDate"|"EntryDate";

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
public type Featuretypevalues "FeeFeature"|"InterestFeature"|"WithdrawalFeature"|"DepositFeature"|"SweepFeature"|"LienFeature"|"PaymentFeature"|"RepaymentFeature"|"LimitFeature"|"OverdraftFeature"|"StatementFeature"|"CurrencyExchangeFeature"|"PriceFeature";

# >
# * `Enabled` - Account can be used for its intended purpose.
# * `Disabled` - Account cannot be used for its intended purpose, either temporarily or permanently.
# * `Deleted` - Account cannot be used any longer.
# * `Proforma` - Account is temporary and can be partially used for its intended purpose. The account will be fully available for use when the account servicer has received all relevant documents.
# * `Pending` - Account change is pending approval.
public type Accountstatustypevalues "Enabled"|"Disabled"|"Deleted"|"Proforma"|"Pending";

# >
# * `ITService` - 
# * `AdministrativeService` - 
# * `SystemService` - 
# * `FinancialService` - 
# * `InformationService` - 
# * `BusinessService` - 
public type Servicetypevalues "ITService"|"AdministrativeService"|"SystemService"|"FinancialService"|"InformationService"|"BusinessService";

# >
# * `ITService` - 
# * `AdministrativeService` - 
# * `SystemService` - 
# * `FinancialService` - 
# * `InformationService` - 
# * `BusinessService` - 
public type servicetypevalues "ITService"|"AdministrativeService"|"SystemService"|"FinancialService"|"InformationService"|"BusinessService";

# >
# * `Offered` - 
# * `Confirmed` - 
# * `Completed` - 
# * `Signed` - 
# * `Terminated` - 
# * `Rejected` - 
public type Agreementstatustypevalues "Offered"|"Confirmed"|"Completed"|"Signed"|"Terminated"|"Rejected";

# >
# * `BaseCurrency` - Base currency of the account. (ISO20022)
#
# * `ReportingCurrency` - Currency used to calculate and report the balance and related entries of an account. (ISO20022)
#
# * `SecondaryCurrency` - 
# * `TransferCurrency` - Currency of the amount to be transferred which may be different from the currency of the debtor's account. (ISO20022)
# * `SettlementCurrency` - Specifies the currency used for settlement, if different from the account currency. 
public type Currencytypevalues "BaseCurrency"|"ReportingCurrency"|"SecondaryCurrency"|"TransferCurrency"|"SettlementCurrency";

# >
# * `Adjustment` - Balance to be held in the settlement account in order to comply with the average reserve due, in the event that the bank's balance is equal to the reserve due during the remaining days of the maintenance period.
# * `Basecurrency` - Balance representing the amount in the domestic or base accounting currency.
# * `Blocked` - Balance representing the regulatory reserve that a financial institution must have with the account servicing institution, eg, the minimum credit balance a financial institution is to keep with its Central Bank for mandatory reserve purposes. In some countries, a blocked balance is known as a 'reserve' balance.
# * `Blockedfunds` - Balance representing funds that cannot be touched by the account owner.
# * `Daylightoverdraft` - Balance representing the intra day overdraft granted by the Central Bank to financial institutions participating in a RTGS system. This balance may vary over time and shall be offset at the end of the day.
# * `Eligibleassets` - Balance representing the potential loan a Central Bank would make in cash if the collateral is pledged, eg, securities available and eligible as collateral with the Central Bank.
# * `Firmcollateralization` - Balance representing the forecast of the cash-equivalent resulting from evaluation of existing holdings at CSD that are qualified to serve as collateral.
# * `Amountsthathavebeenusedtoserveasfirmcollateral` - Balance representing the cash equivalent resulting from evaluation of existing holdings at CSD that are qualified to serve as collateral and have been used as collateral.
# * `Securitiesforecast` - Balance representing the total of all balance types representing the forecast of transactions to settle, blocked items, custody transactions and corporate actions cash disbursements.
# * `Netfunding` - Balance representing the net amount to be funded resulting from the difference between the total of all transactions with a cash impact and the existing cash coverage.
# * `Intermediate` - Balance representing an intermediate amount such as the opening or closing balance incrementally carried forward from one page to the next in a multi-page statement or report.
# * `Localcurrency` - Balance representing the amount in the local market currency for which the asset is held.
# * `Limitrelated` - Balance of a specific limit value, eg, a bilateral balance is calculated in relation to a given bilateral limit.
# * `Reservedliquidity` - Balance representing the amount that a financial institution has set aside for a specific reason and which is therefore not available. In the context of CSDs, reservation of liquidity made to meet settlement obligations.
# * `Securitiespending` - Balance of securities pending delivery, such as orders to sell securities have been executed but settlement of the open transactions has not been confirmed.
# * `Payinpayout` - Balance representing the fictive amount of automated direct debits or payment based on standing arrangements between the CSD and the user. Usage: Pay-Ins and Pay-Outs can be different based on individual payment instructions or available funds.
# * `Progressiveaverage` - Average of the daily balances on the account used to fulfil the reserve requirements calculated from the beginning of the maintenance period.
# * `Reserve` - Balance representing the regulatory reserve that a financial institution must have with the account servicing institution, eg, the minimum credit balance a financial institution is to keep with its Central Bank for mandatory reserve purposes.
# * `Selfcollateralization` - Balance representing the forecast of the cash-equivalent resulting from evaluation of the net incoming balance of securities qualified to serve as collateral for which settlement instructions are held at.
# * `Amountsthathavebeenusedtoserveasselfcollateral` - Balance representing the cash-equivalent resulting from evaluation of incoming securities, qualified to serve as collateral and actually used as collateral, which have been settled during the settlement process.
# * `Threshold` - Balance representing the amount that will be destined for investment. Difference between available balance and threshold for investment limit.
public type Balancesubtypevalues "Adjustment"|"Basecurrency"|"Blocked"|"Blockedfunds"|"Daylightoverdraft"|"Eligibleassets"|"Firmcollateralization"|"Amountsthathavebeenusedtoserveasfirmcollateral"|"Securitiesforecast"|"Netfunding"|"Intermediate"|"Localcurrency"|"Limitrelated"|"Reservedliquidity"|"Securitiespending"|"Payinpayout"|"Progressiveaverage"|"Reserve"|"Selfcollateralization"|"Amountsthathavebeenusedtoserveasselfcollateral"|"Threshold";

# >
# * `Setting` - 
# * `Planning` - 
# * `Execution` - 
# * `MonitoringAndEvaluation` - 
# * `CompletionOrAchievement` - 
# * `MaintenanceOrSustainment` - 
# * `ClosureOrRenewal` - 
public type Goalstatustypevalues "Setting"|"Planning"|"Execution"|"MonitoringAndEvaluation"|"CompletionOrAchievement"|"MaintenanceOrSustainment"|"ClosureOrRenewal";

# >
# * `OpeningBalance` - Book balance of the account at the beginning of the account servicer's business day. It always equals the closing book balance from the previous business day. Note: the available balance at the beginning of the account servicer's business day may be different from the closing book balance from the previous business day. (ISO20022)
# * `ClosingBalance` - Balance of the account at the end of the account servicer's business day. It is the sum of the opening balance at the beginning of the day and all entries booked to the account during the account servicer's business day. (ISO20022)
# * `CurrentBalance` - Balance of the account at a precise moment in time. (ISO20022)
# * `AvailableBalance` - Balance of money or securities that is at the disposal of the account owner on the date specified. (ISO20022)
# * `LedgerBalance` - Ledger balance refers to posted transactions (e.g. limit authorisation amount - posted transactions). (ISO20022)
# * `ReserveBalance` - 
# * `FreeBalance` - 
# * `PrincipalBalance` - 
# * `ClosingAvailable` - Closing balance of amount of money that is at the disposal of the account owner on the date specified.
# * `ClosingBooked` - Balance of the account at the end of the pre-agreed account reporting period. It is the sum of the opening booked balance at the beginning of the period and all entries booked to the account during the pre-agreed account reporting period.
# * `ForwardAvailable` - Forward available balance of money that is at the disposal of the account owner on the date specified.
# * `Information` - Balance for informational purposes.
# * `InterimAvailable` - Available balance calculated in the course of the account servicer's business day, at the time specified, and subject to further changes during the business day. The interim balance is calculated on the basis of booked credit and debit items during the calculation time/period specified.
# * `InterimBooked` - Balance calculated in the course of the account servicer's business day, at the time specified, and subject to further changes during the business day. The interim balance is calculated on the basis of booked credit and debit items during the calculation time/period specified.
# * `OpeningAvailable` - Opening balance of amount of money that is at the disposal of the account owner on the date specified.
# * `OpeningBooked` - Book balance of the account at the beginning of the account reporting period. It always equals the closing book balance from the previous report.
# * `PreviouslyClosedBooked` - Balance of the account at the previously closed account reporting period. The opening booked balance for the new period has to be equal to this balance.
# Usage: the previously booked closing balance should equal (inclusive date) the booked closing balance of the date it references and equal the actual booked opening balance of the current date.
# * `Expected` - Balance, composed of booked entries and pending items known at the time of calculation, which projects the end of day balance if everything is booked on the account and no other entry is posted.
public type Balancetypevalues "OpeningBalance"|"ClosingBalance"|"CurrentBalance"|"AvailableBalance"|"LedgerBalance"|"ReserveBalance"|"FreeBalance"|"PrincipalBalance"|"ClosingAvailable"|"ClosingBooked"|"ForwardAvailable"|"Information"|"InterimAvailable"|"InterimBooked"|"OpeningAvailable"|"OpeningBooked"|"PreviouslyClosedBooked"|"Expected";

# >
# * `Debit` - Transaction is a debt entry
# * `Credit` - Transaction is a credit entry
public type Debitcreditindicatortvalues "Debit"|"Credit";

# >
# * `Continent` - 
# * `Country` - 
# * `State` - 
# * `District` - 
# * `Province` - 
# * `Town` - 
# * `City` - 
# * `Region` - 
public type Geographicalareatypevalues "Continent"|"Country"|"State"|"District"|"Province"|"Town"|"City"|"Region";

# >
# * `SettingDate` - 
# * `PlanningDate` - 
# * `StartDate` - 
# * `ReviewDate` - 
# * `CompletionDate` - 
public type Goaldatetimetypevalues "SettingDate"|"PlanningDate"|"StartDate"|"ReviewDate"|"CompletionDate";

# >
# * `Document` - 
# * `WorkingPaper` - 
# * `ActivityLog` - 
# * `Form` - 
# * `File` - File of consolidated notes, evaluations and recommendations for the work task
# * `MeetingSchedule` - 
# * `MeetingMinute` - 
public type Workproducttypevalues "Document"|"WorkingPaper"|"ActivityLog"|"Form"|"File"|"MeetingSchedule"|"MeetingMinute";

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
public type Rulesettypevalues "Policy"|"Regulation"|"Law"|"Guideline"|"Criterion"|"Standard";

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
public type Testtypevalues "ProductEligibilityTest"|"NextBestProductTest"|"IssuedDeviceTest"|"CardHolderAuthenticationTest"|"CardFundsAvailableTest"|"CardTransactionFraudTest"|"CardStand-InAuthorizationTest"|"ExternalAccessRequestTest"|"SuitabilityTest"|"LegalComplianceTest"|"RegulatoryComplianceTest"|"SystemFunctionalTest"|"SystemProductionTest"|"SystemBusinessRiskTest"|"SystemOperationsTest"|"CreditPolicyComplianceTest"|"RuleSetAndDecisionTreeTest"|"ModelBasedTests"|"AssetAndLiabilityValuationTest"|"LiquidityAndCashFlowTest"|"RiskTest"|"SensitivityTest";

# >
# * `LegalEntity` - 
# * `Authority` - 
# * `OrganisationUnit` - 
# * `FinancialInstitution` - 
# * `Charity` - 
# * `GovernmentBody` - 
public type Organisationtypevalues "LegalEntity"|"Authority"|"OrganisationUnit"|"FinancialInstitution"|"Charity"|"GovernmentBody";

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
public type Assessmenttypevalues "Valuation"|"Matching"|"Authorization"|"Authentication"|"QualityAssurance"|"Audit"|"ComplianceCheck"|"FundingCheck"|"SuitabilityCheck"|"PerformanceCheck"|"ImpactAssessment"|"RiskAssessment"|"Rating"|"UnderwritingAssessment"|"Qualification"|"Verification"|"KYCAssessment"|"PEPAssessment"|"AMLAssessment"|"EligibilityCheck"|"ExternalAgencyCheck"|"EntitlementCheck";

# >
# * `Meteredserviceinvoice` - Document is an invoice claiming payment for the supply of metered services, for example gas or electricity supplied to a fixed meter.
# * `Creditnoterelatedtofinancialadjustment` - Document is a credit note for the final amount settled for a commercial transaction.
# * `Debitnoterelatedtofinancialadjustment` - Document is a debit note for the final amount settled for a commercial transaction.
# * `Commercialinvoice` - Document is an invoice.
# * `Creditnote` - Document is a credit note.
# * `Debitnote` - Document is a debit note.
# * `Hireinvoice` - Document is an invoice for the hiring of human resources or renting goods or equipment.
# * `Selfbilledinvoice` - Document is an invoice issued by the debtor.
# * `Remittanceadvicemessage` - Document is a remittance advice sent separately from the current transaction.
# * `Relatedpaymentinstruction` - Document is a linked payment instruction to which the current payment instruction is related, for example, in a cover scenario.
# * `Commercialcontract` - Document is an agreement between the parties, stipulating the terms and conditions of the delivery of goods or services.
# * `Foreignexchangedealreference` - Document is a pre-agreed or pre-arranged foreign exchange transaction to which the payment transaction refers.
# * `Statementofaccount` - Document is a statement of the transactions posted to the debtor's account at the supplier.
# * `Dispatchadvice` - Document is a dispatch advice.
# * `Purchaseorder` - Document is a purchase order.
# * `Structuredcommunicationreference` - Document is a structured communication reference provided by the creditor to identify the referred transaction.
# * `Billoflading` - Document is a shipping notice.
# * `Voucher` - Document is an electronic payment document.
# * `Accountreceivableopenitem` - Document is a payment that applies to a specific source document.
# * `Tradeservicesutilitytransaction` - Document is a transaction identifier as assigned by the Trade Services Utility.
# * `Cashierreceipt` - When the Sale system print the Cashier copy of the Payment receipt.
# * `Customerreceipt` - When the Sale System requires   the POI system to print the Customer receipt.
# * `Journal` - When the POI or the Sale System wants to store a message on the journal printer or electronic journal of the Sale Terminal (it is sometimes a Sale Logging/Journal Printer).
# * `Salereceipt` - When the Sale System requires the POI system to print the Sale receipt.
public type Financialdocumenttypevalues "Meteredserviceinvoice"|"Creditnoterelatedtofinancialadjustment"|"Debitnoterelatedtofinancialadjustment"|"Commercialinvoice"|"Creditnote"|"Debitnote"|"Hireinvoice"|"Selfbilledinvoice"|"Remittanceadvicemessage"|"Relatedpaymentinstruction"|"Commercialcontract"|"Foreignexchangedealreference"|"Statementofaccount"|"Dispatchadvice"|"Purchaseorder"|"Structuredcommunicationreference"|"Billoflading"|"Voucher"|"Accountreceivableopenitem"|"Tradeservicesutilitytransaction"|"Cashierreceipt"|"Customerreceipt"|"Journal"|"Salereceipt";

# >
# * `CreationDate` - 
# * `CapturingDate` - 
# * `VersionDate` - 
# * `ValueDate` - 
# * `IssueDate` - 
public type Documentdatetimetypevalues "CreationDate"|"CapturingDate"|"VersionDate"|"ValueDate"|"IssueDate";

# >
# * `OpenDate` - 
# * `RefreshDate` - 
public type Directoryentrydatetypevalues "OpenDate"|"RefreshDate";

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
public type partyidentificationtypevalues "Taxidentificationnumber"|"Nationalregistrationnumber"|"Registrationauthorityidentification"|"LEI(LegalEntityIdentifier)"|"Alienregistrationnumber"|"Passportnumber"|"Taxexemptidentificationnumber"|"Corporateidentification"|"Driverlicensenumber"|"Foreigninvestmentidentitynumber"|"Socialsecuritynumber"|"Identitycardnumber"|"Concat"|"Nationalregistrationidentificationnumber";

# >
# * `Individual` - 
# * `CommunityInterestCompany` - 
# * `CharitableIncorporatedOrganisation` - 
# * `Co-Operative` - 
# * `Charity` - 
# * `GeneralPartnership` - 
# * `LimitedLiabilityPartnership` - 
# * `ScottishLimitedPartnership` - 
# * `LimitedPartnership` - 
# * `PrivateLimitedCompany` - 
# * `PublicLimitedCompany` - 
# * `Sole(SoleTrader)` - 
public type partylegalstructuretypevalues "Individual"|"CommunityInterestCompany"|"CharitableIncorporatedOrganisation"|"Co-Operative"|"Charity"|"GeneralPartnership"|"LimitedLiabilityPartnership"|"ScottishLimitedPartnership"|"LimitedPartnership"|"PrivateLimitedCompany"|"PublicLimitedCompany"|"Sole(SoleTrader)";

# Key dates associated with the development of the deployment plan (e.g. planning start date, deployment plan approval, deployment plan sign-off) ||
# |
public type datetimetypevalues "MaturityDate"|"InitiatedDate"|"RequestedDate"|"ExecutedDate"|"OpenDate"|"CloseDate"|"ExpiryDate"|"EffectiveDate"|"CreatingDate"|"ActivationDate"|"DeactivationDate"|"BlockingDate"|"SendingDate"|"ValidFromDate"|"ValidToDate"|"ReceivingDate"|"SigningDate"|"DueDate"|"ValueDate"|"FulfillmentDate";

# >
# * `Agreementinvolvement` - 
# * `Partyinvolvement` - 
# * `Arrangementinvolvement` - 
# * `Designspecificationinvolvement` - 
# * `Relationshipinvolvement` - 
# * `Locationinvolvement` - 
# * `Bankguaranteeinvolvement` - 
public type partyinvolvementtypevalues "Agreementinvolvement"|"Partyinvolvement"|"Arrangementinvolvement"|"Designspecificationinvolvement"|"Relationshipinvolvement"|"Locationinvolvement"|"Bankguaranteeinvolvement";

# >
# * `Person` - Human entity, as distinguished from a corporate entity (which is sometimes referred to as an 'artificial person'). ISO20022
# * `Organisation` - Organised structure that is set up for a particular purpose. For example, a business, government body, department, charity, or financial institution. ISO20022
public type partytypevalues "Person"|"Organisation";

# >
# * `RegistrationDate` - Date and time at which a given organisation was officially registered. (ISO20022)
# * `EstablishmentDate` - Date when the organisation was established. ISO20022
# * `EntityExpirationDate` - The date the Legal Entity ceased operation or was merged. ISO20022
public type Organisationdatetimetypevalues "RegistrationDate"|"EstablishmentDate"|"EntityExpirationDate";

# >
# * `Corporation` - Legal structure is a corporation.
# * `Individual` - Legal structure is an individual.
# * `Supranational` - Legal structure is a supranational.
# * `Sovereign` - Legal structure is a sovereign.
# * `Municipal` - Legal structure is a municipal.
# * `Province` - Legal structure is a province.
# * `State` - Legal structure is a state.
# * `County` - Legal structure is a county.
# * `Partnership` - Legal structure is a partnership.
# * `Financialinstitution` - Legal structure is a financial institution.
# * `National` - Legal structure is a state.
public type Organisationlegalstructuretypevalues "Corporation"|"Individual"|"Supranational"|"Sovereign"|"Municipal"|"Province"|"State"|"County"|"Partnership"|"Financialinstitution"|"National";

# >
# * `Securecardreader` - Secure card reader attached to the customer device
# * `Nonsecurecardreader` - Non-secure card reader attached to the customer device.
# * `Mobile` - Mobile phone
# * `Tablet` - Tablet
# * `Personalcomputer` - Personal computer
# * `Othernational` - Other device defined at national level
# * `Otherprivate` - Other device defined in a private way.
# * `Wearable` - Wearable device.
# * `Vehicle` - Vehicle.
# * `Embedded` - Embedded in a device.
# * `Keyfob` - Key Fob
# * `Jewellery` - Jewellery
# * `Sticker` - Sticker
# * `Gamingdevice` - Gaming Device
# * `Watch` - Watch
# * `Unknown` - Device type unknown
# * `BiometricDevice` - A biometric device is a security identification and authentication device. Such devices use automated methods of verifying or recognising the identity of a living person based on a physiological or behavioral characteristic.
# https://en.wikipedia.org/wiki/Biometric_device
#
public type Devicetypevalues "Securecardreader"|"Nonsecurecardreader"|"Mobile"|"Tablet"|"Personalcomputer"|"Othernational"|"Otherprivate"|"Wearable"|"Vehicle"|"Embedded"|"Keyfob"|"Jewellery"|"Sticker"|"Gamingdevice"|"Watch"|"Unknown"|"BiometricDevice";

# >
# * `LEI` - Legal Entity Identifier is a code allocated to a party as described in ISO 17442 "Financial Services - Legal Entity Identifier (LEI)".
# * `ELF` - Entity Legal Forms is a code allocated to a party as described in ISO 20275 "Financial services  Entity legal forms (ELF)". 
# * `MIC` - Market Identifier Code. Identification of a financial market, as stipulated in the norm ISO 10383 "Codes for exchanges and market identifications".
# * `BICFI` - Code allocated to a financial institution by the ISO 9362 Registration Authority as described in ISO 9362 "Banking - Banking telecommunication messages - Business identifier code (BIC)".
# * `Bankpartyidentification` - Unique and unambiguous assignment made by a specific bank or similar financial institution to identify a relationship as defined between the bank and its client.
# * `Centralbankidentificationnumber` - A unique identification number assigned by a central bank to identify an organisation.
# * `Clearingidentificationnumber` - A unique identification number assigned by a clearing house to identify an organisation
# * `Certificateofincorporationnumber` - A unique identification number assigned by a designated authority to a certificate of incorporation and used to identify an organisation.
# * `Countryidentificationcode` - Country authority given organisation identification (e.g., corporate registration number)
# * `Customernumber` - Number assigned by an issuer to identify a customer.
# Number assigned by a party to identify a creditor or debtor relationship.
# * `Datauniversalnumberingsystem` - A unique identification number provided by Dun & Bradstreet to identify an organisation.
# * `Employeridentificationnumber` - Number assigned by a registration authority to an employer.
# * `Gs1glnidentifier` - Global Location Number. A non-significant reference number used to identify legal entities, functional entities, or physical entities according to GS1 numbering scheme rules.The number is used to retrieve detailed information that is linked to it.
# * `SIREN` - The SIREN number is a 9 digit code assigned by INSEE, the French National Institute for Statistics and Economic Studies, to identify an organisation in France.
# * `SIRET` - The SIRET number is a 14 digit code assigned by INSEE, the French National Institute for Statistics and Economic Studies, to identify an organisation unit in France. It consists of the SIREN number, followed by a five digit classification number, to identify the local geographical unit of that entity
# * `Taxidentificationnumber` - Number assigned by a tax authority to identify an organisation.
# * `EANGLN` - Global Location Number. A non-significant reference number used to identify legal entities, functional entities, or physical entities according to the European Association for Numbering (EAN) numbering scheme rules. The number is used to retrieve detailed information that is linked to it. (iso20022)
public type Organisationidentificationtypevalues "LEI"|"ELF"|"MIC"|"BICFI"|"Bankpartyidentification"|"Centralbankidentificationnumber"|"Clearingidentificationnumber"|"Certificateofincorporationnumber"|"Countryidentificationcode"|"Customernumber"|"Datauniversalnumberingsystem"|"Employeridentificationnumber"|"Gs1glnidentifier"|"SIREN"|"SIRET"|"Taxidentificationnumber"|"EANGLN";

# >
# * `Android` - Android operating system.
# * `Ios` - iOS operating system.
# * `Windows` - Windows operating system.
# * `Blackberry` - Blackberry operating system.
# * `Tizen` - Tizen operating system.
# * `Othernational` - Other nationally defined code.
# * `Otherprivate` - Other privately defined code.
public type Deviceoperatingsystemtypevalues "Android"|"Ios"|"Windows"|"Blackberry"|"Tizen"|"Othernational"|"Otherprivate";

# >
# * `IMEI` - International Mobile Equipment Identity.
# * `Serialnumber` - Device serial number.
# * `Secureelementidentification` - Secure element ID.
# * `Othernational` - Other nationally assigned code.
# * `Otherprivate` - Other privately assigned code.
public type Deviceidentificationtypevalues "IMEI"|"Serialnumber"|"Secureelementidentification"|"Othernational"|"Otherprivate";

# >
# * `ShortName` - 
# * `TradingName` - 
# * `LegalName` - 
public type Organisationnametypevalues "ShortName"|"TradingName"|"LegalName";

# >
# * `FirstPaymentDateTime` - The date on which the first payment for a Standing Order schedule will be made. (Open Banking)
# * `NextPaymentDateTime` - The date on which the next payment for a Standing Order schedule will be made. (Open Banking)
# * `LastPaymentDateTime` - The date on which the last (most recent) payment for a Standing Order schedule was made. (Open Banking)
# * `FinalPaymentDateTime` - The date on which the final payment for a Standing Order schedule will be made. (Open Banking)
public type Standingorderdatetimetypevalues "FirstPaymentDateTime"|"NextPaymentDateTime"|"LastPaymentDateTime"|"FinalPaymentDateTime";

# >
# * `StandardFeePlan` - 
# * `FinalFeePlan` - 
public type Feeplantypevalues "StandardFeePlan"|"FinalFeePlan";

# >
# * `Added` - Adjustment amount must be added to the total amount.
# * `Substracted` - Adjustment amount must be substracted from the total amount.
public type Adjustmentdirectiontypevalues "Added"|"Substracted";

# >
# * `RequestedExecutionDate` - Date at which the initiating party requests the clearing agent to process the payment. ISO20022
# Usage: This is the date on which the debtor's account is to be debited. If payment by cheque, the date when the cheque must be generated by the bank. 
# * `AcceptanceDate` - Date and time at which all processing conditions for execution of the payment are met and adequate financial cover is available at the account servicing agent. ISO20022
# * `CreationDate` - Date and time at which the payment execution was created by the instructing agent. ISO20022
# * `ValueDate` - Date on which a payment must be executed (ISO20022)
# * `DueDate` - Due date for the payment. (ISO20022)
#
# Latest date whereby the amount of money must be paid. (ISO20022)
# * `ExpiryDate` - 
# * `ExpectedDate` - Expected date whereby the amount must be paid.
# * `PoolingAdjustmentDate` - Date used for the correction of the value date of a cash pool movement that has been posted with a different value date. (ISO20022)
public type Paymentdatetimetypevalues "RequestedExecutionDate"|"AcceptanceDate"|"CreationDate"|"ValueDate"|"DueDate"|"ExpiryDate"|"ExpectedDate"|"PoolingAdjustmentDate";

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
public type Partylocationtypevalues "LocationIsResidentialAddressOfParty"|"LocationIsDomicileAddressOfParty"|"LocationIsPlaceOfBirthOfParty"|"LocationIsWorkAddressOfParty"|"LocationIsDeliveryPointAddressOfParty"|"PartyIsOwnerOfLocation"|"PartyIsOccupierOfLocation"|"PartyIsAlliancePartnerOfLocation"|"LocationIsContactPointAddressOfParty";

# >
# * `Fax` - Remittance advice information must be faxed.
# * `Electronicdatainterchange` - Remittance advice information must be sent through Electronic Data Interchange (EDI).
# * `Uniformresourceidentifier` - Remittance advice information needs to be sent to a Uniform Resource Identifier (URI). URI is a compact string of characters that uniquely identify an abstract or physical resource. URI's are the super-set of identifiers, such as URLs, email addresses, ftp sites, etc, and as such, provide the syntax for all of the identification schemes.
# * `Email` - Remittance advice information must be sent through e-mail.
# * `Post` - Remittance advice information must be sent through postal services.
# * `SMS` - Remittance advice information must be sent through by phone as a short message service (SMS).
public type Remittancedeliverymethodtypevalues "Fax"|"Electronicdatainterchange"|"Uniformresourceidentifier"|"Email"|"Post"|"SMS";

# >
# * `Individual` - 
# * `CommunityInterestCompany` - 
# * `CharitableIncorporatedOrganisation` - 
# * `Co-Operative` - 
# * `Charity` - 
# * `GeneralPartnership` - 
# * `LimitedLiabilityPartnership` - 
# * `ScottishLimitedPartnership` - 
# * `LimitedPartnership` - 
# * `PrivateLimitedCompany` - 
# * `PublicLimitedCompany` - 
# * `Sole(SoleTrader)` - 
public type Partylegalstructuretypevalues "Individual"|"CommunityInterestCompany"|"CharitableIncorporatedOrganisation"|"Co-Operative"|"Charity"|"GeneralPartnership"|"LimitedLiabilityPartnership"|"ScottishLimitedPartnership"|"LimitedPartnership"|"PrivateLimitedCompany"|"PublicLimitedCompany"|"Sole(SoleTrader)";

# >
# * `ElectronicAddress` - Address which is accessed by electronic means. ISO20022
# * `PostalAddress` - Information that locates and identifies a specific address. ISO20022
# * `PhoneNumber` - Collection of information that identifies a phone address. ISO20022
# * `Socialnetworkaddress` - A social network such as Facebook, Twitter, etc.
public type Contactpointtypevalues "ElectronicAddress"|"PostalAddress"|"PhoneNumber"|"Socialnetworkaddress";

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
public type Feetypevalues "Accountingfee"|"Adrfee"|"Advisoryfee"|"Airwaybillfee"|"Backendload"|"Brokeragefee"|"Clearanceandhandlingatdestination"|"Clearanceandhandlingatorigin"|"Collectfreight"|"Commission"|"Contingencydeferredsalescharge"|"Correspondentbankcharge"|"Custodyfee"|"Dangerousgoodsfee"|"Dilutionlevy"|"Discount"|"Equalisation"|"Frontendload"|"Initial"|"Insurancepremium"|"Issuancecancellationfee"|"Issuancefee"|"Managementfee"|"Matchingfees"|"Miscellaneousfee"|"Other"|"Packaging"|"Partacquis"|"Penalty"|"Pickup"|"Postagecharge"|"Premium"|"Publicationfee"|"Regulatoryfee"|"Securitycharge"|"Serviceprovisionfee"|"Shippingcharge"|"Signatureservice"|"Specialconcessions"|"Speciallyagreedfrontendload"|"Storageatdestination"|"Storageatorigin"|"Switch"|"Transferfee"|"Transportcharges"|"Ucitscommission"|"ChequeRelatedFee";

# >
# * `Annual` - Event takes place every year or once a year.
# * `Monthly` - Event takes place every month or once a month.
# * `Quarterly` - Event takes place every three months or four times a year.
# * `Semiannual` - Event takes place every six months or two times a year.
# * `Weekly` - Event takes place once a week.
# * `Daily` - Event takes place every day.
# * `Adhoc` - Event takes place on request or as necessary.
# * `Intraday` - Event takes place several times a day.
# * `Overnight` - Event takes place overnight.
# * `Tendays` - Event takes place every ten business days.
# * `Fortnightly` - Event takes place every two weeks.
# * `Triggeredbymovement` - Event takes place at the end of the day if there was a movement on the account, otherwise nothing is sent that day.
# * `Never` - Event does never take place.
# * `Rate` - Event takes place based on a change of a rate.
# * `Oncreditevent` - Event occurs due to a credit event occurring for an issuer.
# * `Upfront` - Event that takes place at the initiation of a trade or agreement.
# * `Onexpiry` - Event occurs on expiry of a financial contract.
# * `Hourly` - Event takes place every hours.
public type Frequencytypevalues "Annual"|"Monthly"|"Quarterly"|"Semiannual"|"Weekly"|"Daily"|"Adhoc"|"Intraday"|"Overnight"|"Tendays"|"Fortnightly"|"Triggeredbymovement"|"Never"|"Rate"|"Oncreditevent"|"Upfront"|"Onexpiry"|"Hourly";

# >
# * `Revolving` - 
# * `FixedAmount` - 
# * `Decreasing` - 
public type Creditfacilitytypevalues "Revolving"|"FixedAmount"|"Decreasing";

# >
# * `UserDefinedStandingOrder` - Liquidity transfer standing order type, that has been customised or defined to the specific need of the user.(ISO20022)
# * `PredefinedStandingOrder` - Liquidity transfer standing order type, as predefined in the system. (ISO20022)
public type Standingordertypevalues "UserDefinedStandingOrder"|"PredefinedStandingOrder";

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
public type Financialadvisoryservicearrangementtype "FeeArrangement"|"FinancialPlanningArrangement"|"TaxOptimizationArrangement"|"StrategicFundingArrangement"|"TacticalFundingArrangement"|"CapitalStructuringArrangement"|"ProductGuidanceArrangement";

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
public type Partyidentificationtypevalues "Taxidentificationnumber"|"Nationalregistrationnumber"|"Registrationauthorityidentification"|"LEI(LegalEntityIdentifier)"|"Alienregistrationnumber"|"Passportnumber"|"Taxexemptidentificationnumber"|"Corporateidentification"|"Driverlicensenumber"|"Foreigninvestmentidentitynumber"|"Socialsecuritynumber"|"Identitycardnumber"|"Concat"|"Nationalregistrationidentificationnumber";

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
public type Paymenttimevalues "Paymentondelivery"|"Endofmonthofdelivery"|"Endofperiodafterdelivery"|"Endofperiodafterendofdeliverymonth"|"Paymentonreceiptofinvoice"|"Endofperiodafterendofreceiptmonth"|"Endofperiodafterreceipt"|"Endofmonthofreceipt"|"Endofperiodaftermatch"|"Endofperiodaftershipmentdate"|"Endofperiodafterpurchaseorderdate"|"Endofperiodafterbaselineestablishment"|"Endofperiodafterinvoicedate";

# >
# * `Cheque` - Written order to a bank to pay a certain amount of money from one person to another person.
# * `Credittransfer` - Transfer of an amount of money in the books of the account servicer.
# * `Directdebit` - Collection of an amount of money from the debtor's bank account by the creditor. The amount of money and dates of collections may vary.
# * `Transferadvice` - Transfer of an amount of money in the books of the account servicer. An advice should be sent back to the account owner.
# * `Direct` - Direct method.
# * `Classical` - Classical method.
public type Paymentmethodtypevalues "Cheque"|"Credittransfer"|"Directdebit"|"Transferadvice"|"Direct"|"Classical";

# >
# * `Bornebydebtor` - All transaction charges are to be borne by the debtor.
# * `Bornebycreditor` - All transaction charges are to be borne by the creditor.
# * `Shared` - In a credit transfer context, means that transaction charges on the sender side are to be borne by the debtor, transaction charges on the receiver side are to be borne by the creditor. In a direct debit context, means that transaction charges on the sender side are to be borne by the creditor, transaction charges on the receiver side are to be borne by the debtor.
# * `Followingservicelevel` - Charges are to be applied following the rules agreed in the service level and/or scheme.
public type Chargebearertypevalues "Bornebydebtor"|"Bornebycreditor"|"Shared"|"Followingservicelevel";

# >
# * `Cash` - Payment is with cash.
# * `Unit` - Units are redeemed to cover payment.
public type Feepaymentmethodtypevalues "Cash"|"Unit";

# >
# * `Bankingservice` - A classification that distinguishes between instances of product features according to the core banking services, functionality and/or objectives of banking.
#
# e.g. deposit services, exchange services, etc.
#
# The primary reason for the contract with the client are the banking services. These services can be classified as follows:
# 1. Selling services
# 2. Financial Instruments Exchange
# 3. Financial Stock Management
# 4. Financial Transfers
# 5. Financial Risk Transfer
# 6. Business Operating
# 7. Advisory
# 8. Reporting
#
#
# * `Administrationservice` - A classification that distinguishes between instances of product features according to administrative tasks related to the Banking Product or Service.
# * `Accessservice` - A classification that distinguishes between product features according to way of the banking services can be accessed.
#
# The access to services becomes more and more important in the evolving markets. 
# We need to separate different parts:
# 1. The physical access to the infrastructure that allows access to the bank (where)
# 2. The authorization of different parties to use the services of the bank (who)
# 3. The agreed procedure to have access to different services (how)
# 4. The services that are available for the different parties (what)
#
# * `Pricefeature` - A classification that distinguishes between instances of product features according to the cost/profit that is related to Banking Products or Services.
#
# In all commercial offerings, there is an agreed cost for both parties (e.g. the interest arrangements are in both directions). The pricing structure of products or packages is a service that gives the possibility to the client to adapt his costs to his individual situation.
# We see different generic categories in the pricing structure of the different products.
# 1. Compensations
# 2. Prices
# 3. Fees
# 4. Discounts
public type Productfeaturetypevalues "Bankingservice"|"Administrationservice"|"Accessservice"|"Pricefeature";

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
public type Paymentpurposevalues "Salarypayment"|"Treasurypayment"|"Advancepayment"|"Agriculturaltransfer"|"Alimonypayment"|"Childbenefit"|"Unemploymentdisabilitybenefit"|"Bonuspayment."|"Cashmanagementtransfer"|"Capitalbuilding"|"Charitypayment"|"Collectionpayment"|"Commoditytransfer"|"Commercialpayment"|"Commission"|"Costs"|"Copyright"|"Dividend"|"Foreignexchange"|"Purchasesaleofgoods"|"Governmentpayment"|"Instalmenthirepurchaseagreement"|"Intracompanypayment"|"Insurancepremium"|"Interest"|"Licensefee"|"Loan"|"Loanrepayment"|"Netting"|"Payroll"|"Pensionpayment"|"Refund"|"Rent"|"Royalties"|"Purchasesaleofservices"|"Securities"|"Socialsecuritybenefit"|"Subscription"|"Taxpayment"|"Valueaddedtaxpayment"|"Consumerthirdpartyconsolidatedpayment"|"Debitcollectionpayment"|"Supplierpayment"|"Hedging"|"Multipleservicetypes"|"Nototherwisespecified"|"Cardpayment"|"Creditcardbill"|"Ferry"|"Air"|"Bus"|"Railway"|"Convalescentcarefacility"|"Dentalservices"|"Anesthesiaservices"|"Homehealthcare"|"Hospitalcare"|"Intermediatecarefacility"|"Longtermcarefacility"|"Medicalservices"|"Visioncare"|"Durablemedicaleequipment"|"Cabletvbill"|"Electricitybill"|"Gasbill"|"Telephonebill"|"Othertelecomrelatedbill"|"Waterbill"|"Study"|"Pricepayment"|"Installment"|"Recurringinstallmentpayment"|"Openingfee"|"Cancellationfee"|"Governmentinsurance"|"Insurancepremiumcar"|"Laborinsurance"|"Lifeinsurance"|"Propertyinsurance"|"Healthinsurance"|"Carloanprincipalrepayment"|"Housingloanrepayment"|"Companysocialloanpaymenttobank"|"Estatetax"|"Housingtax"|"Incometax"|"Netincometax"|"Businessexpenses"|"Trustfund"|"Networkcharge"|"Networkcommunication"|"Receiptpayment"|"Paymentterms"|"Other"|"Withholding";

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
public type Paymenttypevalues "Cashtransaction"|"Domesticpayment"|"Domestichighvaluepayment"|"Domesticprioritypayment"|"Crossborderpayment"|"Crossborderprioritypayment"|"Crossborderhighvaluepayment"|"Thirdcurrencypayment"|"Thirdcurrencyhighvaluepayment"|"Thirdcurrencyprioritypayment"|"Tradesettlementpayment"|"Foreignexchange"|"Equivalentamount"|"Loan"|"Loanrepayment"|"Securities"|"Lockbox"|"Dividend"|"Crossedcheque"|"Opencheque"|"Ordercheque"|"Circularcheque"|"Travellerscheques"|"Bankdraft"|"Documentarycredit"|"Billofexchange"|"Collection"|"Cashmanagementtransfer"|"Topaccount"|"Zerobalanceaccount"|"Standingfacilities"|"Standardservicelevelcredit"|"Liquiditytransfer"|"Advancepayment"|"Valuedateadjustment"|"Dvpgross"|"Dvpnet"|"Netting"|"Limitpayment"|"Backup"|"Expresspayment"|"Centralbankoperation"|"Clspayment"|"Eurodomesticpayment"|"Agriculturaltransfer"|"Alimonypayment"|"Balanceretail"|"Bonuspayment."|"Brokeragefee"|"Capitalbuilding"|"Charitypayment"|"Childbenefit"|"Commercialcredit"|"Commission"|"Commoditytransfer"|"Costs"|"Copyright"|"Governmentpayment"|"Instalmenthirepurchaseagreement"|"Insurancepremium"|"Intracompanypayment"|"Interest"|"Licensefee"|"Metals"|"Pensionpayment"|"Purchasesaleofgoods"|"Refund"|"Rent"|"Royalties"|"Purchasesaleofservices"|"Salarypayment"|"Socialsecuritybenefit"|"Standingorder"|"Subscription"|"Treasurystatepayment"|"Unemploymentdisabilitybenefit"|"Valueaddedtaxpayment"|"Taxpayment"|"Overnightdeposit"|"Marginallending"|"Other"|"Upfront"|"Unwind"|"Principalexchange";

# >
# * `Person` - Human entity, as distinguished from a corporate entity (which is sometimes referred to as an 'artificial person'). ISO20022
# * `Organisation` - Organised structure that is set up for a particular purpose. For example, a business, government body, department, charity, or financial institution. ISO20022
public type Partytypevalues "Person"|"Organisation";

# >
# * `AvailabilityCommission` - 
public type Creditfacilityratetypevalues "AvailabilityCommission";

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
public type Paymentservicetypevalues "CreditTransferService"|"StandingOrderService"|"DirectDebitService"|"CardPaymentService"|"WithdrawService"|"DepositService"|"OverdraftService"|"MoneyRemittanceService"|"StatementService";

# >
# * `Executionidentification` - Unique and unambiguous identifier for a payment execution, as assigned by the clearing agent or the initiating party. (ISO20022)
# * `Endtoendidentification` - Unique and unambiguous identifier for a payment as assigned by the originator. The payment transaction reference is used for reconciliation or to link tasks relating to the payment. (ISO20022)
# * `Instructionidentification` - Unique identification assigned by an instructing party for an instructed party to unambiguously identify the instruction. (ISO20022)
# * `Transactionidentification` - Unique identification assigned by the first instructing agent to unambiguously identify the transaction and passed on, unchanged, throughout the entire interbank chain. (ISO20022)
# * `Clearingsystemreference` - Unique and unambiguous identifier for a payment instruction, as assigned by the clearing system.(ISO20022)
# * `Creditorreference` - Unique and unambiguous reference assigned by the creditor to refer to the payment obligation. (ISO20022)
# * `UETR` - Universally unique identifier to provide an end-to-end reference of a payment transaction. (ISO20022)
# * `Counterpartyreference` - Unambiguous identification of the trade allocated by the counterparty.(ISO20022)
# * `Identification` - Reference assigned to the trade by the investor or the trading party. This reference will be used throughout the trade life cycle to access/update the trade details. (ISO20022)
# * `Commonidentification` - Unique reference agreed upon by the two trade counterparties to identify the trade. (ISO20022)
# * `Matchingreference` - Reference assigned by a matching system when the trade is matched.(ISO20022)
# * `Uniquetradeidentifier` - This field specifies the unique transaction identifier (UTI) to be created at the time a transaction is first executed, shared with all registered entities and counterparties involved in the transaction, and used to track that particular transaction over its life. This identifier can also be known as the Unique Swap Identifier (USI). (ISO20022)
# * `Clearingbrokeridentification` - Reference number assigned by the clearing broker. (ISO20022)
# * `PaymentOrderID` - Internal unique identifier for the payment instruction, used within the bank’s systems to track the order from initiation through to execution.
# * `ClientReference` - A reference provided by the customer (payer) to identify the payment (e.g., invoice number, transaction reference). Useful for reconciliation by the customer.
# * `End-To-EndID` - Identifier that stays the same across the entire payment chain (from ordering customer to beneficiary) to allow straight-through reconciliation. Common in ISO 20022 standards.
# * `ExternalReference` - Transaction identifier assigned by external schemes/networks (e.g., SWIFT MT/MX reference, SEPA End-to-End ID, clearing house reference).
# * `InstructionID` - Unique identifier for a specific instruction within a batch of payment orders.
# * `TransactionID(ExecutionID)` - Identifier created by the Payment Execution domain once the actual funds movement is initiated. Links execution to the originating order.
public type Paymentidentificationtypevalues "Executionidentification"|"Endtoendidentification"|"Instructionidentification"|"Transactionidentification"|"Clearingsystemreference"|"Creditorreference"|"UETR"|"Counterpartyreference"|"Identification"|"Commonidentification"|"Matchingreference"|"Uniquetradeidentifier"|"Clearingbrokeridentification"|"PaymentOrderID"|"ClientReference"|"End-To-EndID"|"ExternalReference"|"InstructionID"|"TransactionID(ExecutionID)";

# >
# * `InstructedAmountAndCurrency` - The amount the debtor asks their bank to transfer (e.g., “Send 100 EUR”).
# * `EquivalentAmountAndCurrency` - If the debtor’s account is in a different currency, this is the converted equivalent (e.g., 100 USD = 91 EUR).
# * `DebtorAccountAmountAndCurrency` - The actual amount debited from the debtor’s account (after currency conversion, possibly including charges).
# * `InterbankSettlementAmountAndCurrency` - The amount exchanged/settled between the banks (may be in a different settlement currency, e.g., USD).
# * `CreditorAccountAmountAndCurrency` - The amount credited to the creditor’s account in their account currency (e.g., GBP).
# * `Net/ReceivedAmountAndCurrency` - The final amount the creditor actually receives after any deductions (e.g., fees).
public type Paymentamountandcurrencytypevalues "InstructedAmountAndCurrency"|"EquivalentAmountAndCurrency"|"DebtorAccountAmountAndCurrency"|"InterbankSettlementAmountAndCurrency"|"CreditorAccountAmountAndCurrency"|"Net/ReceivedAmountAndCurrency";

# >
# * `FinancialMessage` - 
# * `NonFinancialMessage` - 
# * `InboundMessage` - 
# * `OutboundMessage` - 
public type Messagetypevalues "FinancialMessage"|"NonFinancialMessage"|"InboundMessage"|"OutboundMessage";

# >
# * `CurrentAccountAgreement` - 
# * `SavingsAccountAgreement` - 
# * `BrokeredProductAgreement` - 
# * `ConsumerLoanAgreement` - 
# * `MortgageLoanAgreement` - 
# * `DirectDebitServiceAgreement` - 
# * `TermDepositAgreement` - 
public type Productagreementtypevalues "CurrentAccountAgreement"|"SavingsAccountAgreement"|"BrokeredProductAgreement"|"ConsumerLoanAgreement"|"MortgageLoanAgreement"|"DirectDebitServiceAgreement"|"TermDepositAgreement";

# >
# * `CurrentAccountAgreement` - 
# * `SavingsAccountAgreement` - 
# * `BrokeredProductAgreement` - 
# * `ConsumerLoanAgreement` - 
# * `MortgageLoanAgreement` - 
# * `DirectDebitServiceAgreement` - 
# * `TermDepositAgreement` - 
public type productagreementtypevalues "CurrentAccountAgreement"|"SavingsAccountAgreement"|"BrokeredProductAgreement"|"ConsumerLoanAgreement"|"MortgageLoanAgreement"|"DirectDebitServiceAgreement"|"TermDepositAgreement";

# >
# * `ISINCode` - 
# * `PackageCode` - 
# * `Buyersitemnumber` - Product identifier assigned by the buyer.
# * `Commercialdescriptioncodename` - A code to identify a product based on applicable commercial conditions.
# * `EAN` - The unique EAN (European Article Number) code.
# * `Harmonizedtariffcodename` - Classification of goods as developed by the Customs Cooperation council.
# * `Manufacturersitemnumber` - Product identifier as assigned by the manufacturer.
# * `Modelnumber` - Reference number assigned by the manufacturer to differentiate variations in similar products in a class or group.
# * `Partnumber` - Reference assigned by the manufacturer to a product part.
# * `Quotacategory` - Product identifier used by the retail industry.
# * `Stylenumber` - Identification of the style of a product.
# * `Suppliersitemnumber` - Number assigned to an article by the supplier of that article.
# * `Universalproductcode` - Number assigned to a manufacturer's product by the Product Code Council.
public type Productidentificationtypevalues "ISINCode"|"PackageCode"|"Buyersitemnumber"|"Commercialdescriptioncodename"|"EAN"|"Harmonizedtariffcodename"|"Manufacturersitemnumber"|"Modelnumber"|"Partnumber"|"Quotacategory"|"Stylenumber"|"Suppliersitemnumber"|"Universalproductcode";

# >
# * `Initiated` - 
# * `Announced` - 
# * `Sold` - 
# * `Obsolete` - 
# * `Active` - 
public type Productstatustypevalues "Initiated"|"Announced"|"Sold"|"Obsolete"|"Active";

# >
# * `LoanProduct` - 
# * `CurrentAccountProduct` - 
# * `SavingAccountProduct` - 
# * `BrokeredProduct` - 
# * `TermDepositProduct` - 
public type Bankingproducttypevalues "LoanProduct"|"CurrentAccountProduct"|"SavingAccountProduct"|"BrokeredProduct"|"TermDepositProduct";

# >
# * `Loan` - 
# * `Bond` - 
# * `Deposit` - 
# * `Stock` - 
# * `Option` - 
# * `Share` - 
# * `Debt` - Financial instruments evidencing moneys owed by the issuer to the holder on terms as specified. (ISO20022)
#
# Any type of instrument primarily classified as debt can be considered a debt instrument. Debt instruments are tools an individual, government entity, or business entity can utilize for the purpose of obtaining capital. Debt instruments provide capital to an entity that promises to repay the capital over time. Credit cards, credit lines, loans, and bonds can all be types of debt instruments. (Investopedia)
# * `Letterofcredit` - Instrument issued by a bank substituting its name and credit standing for that of its customer. A letter of credit is a written undertaking of the bank, issued for the account of a customer (the applicant), to honour a demand for payment, upon the beneficiary's compliance with the terms and conditions set forth in the undertaking. (ISO20022)
# * `Security` - Financial instruments representing a sum of rights of the investor vis-a-vis the issuer. (ISO20022)
# * `Derivative` - 
public type Financialinstrumenttypevalues "Loan"|"Bond"|"Deposit"|"Stock"|"Option"|"Share"|"Debt"|"Letterofcredit"|"Security"|"Derivative";

# >
# * `NASDAQ` - 
# * `ISIN` - 
public type Financialinstrumentidentificationtypevalues "NASDAQ"|"ISIN";

# >
# * `CouponDate` - Next payment date of an interest bearing financial instrument.(ISO20022)
# * `ExpiryDate` - Date on which a privilege expires.(ISO20022)
# * `FloatingRateFixingDate` - Date at which the interest rate of an interest bearing security will be calculated and reset, according to the terms of the issue.(ISO20022)
# * `MaturityDate` - Planned final repayment date at the time of issuance.(ISO20022)
# * `IssueDate` - Date at which the security was made available.(ISO20022)
# * `NextCallableDate` - Next date at which the issuer has the right to pay the security prior to maturity.(ISO20022)
# * `PutableDate` - Date at which the holder has the right to ask for redemption of the security prior to final maturity.(ISO20022)
# * `DatedDate` - First date at which a security begins to accrue interest.(ISO20022)
# * `FirstPaymentDate` - Date at which the first interest payment is due to holders of the security.(ISO20022)
public type Financialinstrumentdatetimetypevalues "CouponDate"|"ExpiryDate"|"FloatingRateFixingDate"|"MaturityDate"|"IssueDate"|"NextCallableDate"|"PutableDate"|"DatedDate"|"FirstPaymentDate";

# >
# * `TangibleAsset` - It has a physical form and can be touched or seen.
# * `IntangibleAsset` - It doesn't have a physical form but hold value
# * `OperatingAsset` - Used in the day-to-day operations of the business.
# * `Non-OperatingAsset` - Not used in core business operations but still provide value
# * `CurrentAsset` - Expected to be converted into cash within one year.
# * `Non-Current(Fixed)Asset` - Provide value over the long term (more than one year).
# * `PersonalAsset` - Owned by individuals and not related to a business.
# * `BusinessAsset` - Owned by a business and used to generate revenue.
public type Assettypevalues "TangibleAsset"|"IntangibleAsset"|"OperatingAsset"|"Non-OperatingAsset"|"CurrentAsset"|"Non-Current(Fixed)Asset"|"PersonalAsset"|"BusinessAsset";

# >
# * `Subassetclass` - Sub-asset class.(ISO20022)
# * `Timetomaturitybucket` - Time to maturity bucket.(ISO20022)
# * `Optiontimetomaturitybucket` - Time to maturity bucket of the option.(ISO20022)
# * `Swaptimetomaturitybucket` - Time to maturity bucket of the swap.(ISO20022)
# * `Underlyinginstrumentidentification` - Underlying instrument identification, such as an ISIN code.(ISO20022)
# * `Underlyingbondissuer` - Issuer of the underlying bond.(ISO20022)
# * `Underlyinginterestrate` - Underlying interest rate.(ISO20022)
# * `Underlyingbondterm` - Term of the underlying bond.(ISO20022)
# * `Assetclass` - Asset class.(ISO20022)
# * `Underlyingindexidentification` - Underlying index identification such as an ISIN or an index name.(ISO20022)
# * `Interestratetermofcontract` - Interest rate term of contract.(ISO20022)
# * `Underlyingreferenceentity` - Underlying reference entity.(ISO20022)
# * `Sovereignandpublictypeissuer` - Issuer of sovereign and public type.(ISO20022)
# * `Irdnotionalcurrency1` - Interest rate derivative notional currency 1.(ISO20022)
# * `Fexnotionalcurrency1` - Foreign exchange derivative notional currency 1.(ISO20022)
# * `Cfdnotionalcurrency1` - Contract for difference notional currency 1.(ISO20022)
# * `Fexnotionalcurrency2` - Foreign exchange derivative notional currency 2.(ISO20022)
# * `Irdnotionalcurrency2` - Interest rate derivative notional currency 2.(ISO20022)
# * `Cfdnotionalcurrency2` - Contract for difference notional currency 2.(ISO20022)
# * `Swaptionnotionalcurrency` - Notional currency of the swaption.(ISO20022)
# * `Creditnotionalcurrency` - Credit derivative notional currency.(ISO20022)
# * `Commoditynotionalcurrency` - Commodity derivative notional currency.(ISO20022)
# * `Contracttype` - Contract type.(ISO20022)
# * `Baseproduct` - Base product.(ISO20022)
# * `Subproduct` - Sub product.(ISO20022)
# * `Furthersubproduct` - Further sub product.(ISO20022)
# * `Deliverycashlocation` - Delivery cash settlement location.(ISO20022)
# * `Deliverysettlementtype` - Delivery settlement type.(ISO20022)
# * `Sizespecificationrelatedtofreightsubtype` - Size specification related to freight subtype.(ISO20022)
# * `Specificroutetimecharteraverage` - Specific route time charter average.(ISO20022)
# * `Equityunderlyingtype` - Equity derivative underlying type.(ISO20022)
# * `Parameter` - Parameter.(ISO20022)
# * `Inflationindexcodename` - Inflation index code or name.(ISO20022)
# * `ISIN` - Instrument identification.(ISO20022)
# * `Underlyingindexcdssubclassidentification` - Sub class of the underlying index credit default swap (CDS).(ISO20022)
# * `Underlyingtype` - Underlying type.(ISSO20022)
public type Assetsubclassificationtypevalues "Subassetclass"|"Timetomaturitybucket"|"Optiontimetomaturitybucket"|"Swaptimetomaturitybucket"|"Underlyinginstrumentidentification"|"Underlyingbondissuer"|"Underlyinginterestrate"|"Underlyingbondterm"|"Assetclass"|"Underlyingindexidentification"|"Interestratetermofcontract"|"Underlyingreferenceentity"|"Sovereignandpublictypeissuer"|"Irdnotionalcurrency1"|"Fexnotionalcurrency1"|"Cfdnotionalcurrency1"|"Fexnotionalcurrency2"|"Irdnotionalcurrency2"|"Cfdnotionalcurrency2"|"Swaptionnotionalcurrency"|"Creditnotionalcurrency"|"Commoditynotionalcurrency"|"Contracttype"|"Baseproduct"|"Subproduct"|"Furthersubproduct"|"Deliverycashlocation"|"Deliverysettlementtype"|"Sizespecificationrelatedtofreightsubtype"|"Specificroutetimecharteraverage"|"Equityunderlyingtype"|"Parameter"|"Inflationindexcodename"|"ISIN"|"Underlyingindexcdssubclassidentification"|"Underlyingtype";

# >
# * `Onlinepin` - On-line PIN authentication (Personal Identification Number).
# * `Offlinepin` - Off-line PIN authentication (Personal Identification Number).
# * `Signaturecapture` - Electronic signature capture (handwritten signature).
# * `Password` - Authentication by a password.
# * `Biometry` - Biometric authentication of the cardholder.
# * `Cscverification` - Verification of Card Security Code.
# * `Cryptogramverification` - Verification of a cryptogram generated by a chip card or another device, for instance ARQC (Authorisation Request Cryptogram).
# * `Unknownmethod` - Authentication method is performed unknown.
# * `Bypass` - Authentication bypassed by the merchant.
# * `Papersignature` - Handwritten paper signature.
# * `Manualverification` - Manual verification, for example passport or drivers license.
# * `Merchantauthentication` - Merchant-related authentication.
# * `Securecertificate` - Electronic commerce transaction secured with the X.509 certificate of a customer.
# * `Securenocertificate` - Secure electronic transaction without cardholder certificate.
# * `Securedchannel` - Channel-encrypted transaction.
# * `Billingaddressverification` - Cardholder billing address verification.
# * `Cardholderidentificationdata` - Cardholder data provided for verification, for instance social security number, driver license number, passport number.
# * `Passiveauthentication` - Authentication based on statistical cardholder behaviour.
# * `Secureelectroniccommerce` - Authentication performed during a secure electronic commerce transaction.
# * `Shippingaddressverification` - Cardholder shipping address verification.
# * `Tokenauthentication` - Cryptogram generated by the token requestor or a customer device to validate the authorised use of a token.
# * `Paymenttoken` - Verification or authentication related to the use of a payment token, for instance the validation of the authorised use of a token.
# * `Authenticationtoken` - A token is used to verify an already performed authentication.
# * `Mobile` - Customer mobile device.
# * `Other` - Other customer authentication.
# * `Addressdigits` - Digits of the address.
# * `Alienregistrationnumber` - Number assigned by a government agency to identify foreign nationals.
# * `Arqcverification` - Verification of a cryptogram generated by a chip card, for instance an ARQC (Authorisation Request Cryptogram).
# * `Birthdate` - Date of birth of a person.
# * `Cardholdername` - Name of cardholder
# * `Cityofbirth` - City of birth to authenticate a person.
# * `Customeridentification` - Customer number used as a mechanism of authentication.
# * `Driveridentification` - Identification of a driver in a fleet of vehicles.
# * `Driverlicensenumber` - Number assigned by a driving license authority to a person driving a car.
# * `Email` - Electronic mail address
# * `Employeeidentificationnumber` - Number assigned to an employee by an employer.
# * `Employeridentificationnumber` - Number assigned to an employer by a registration authority.
# * `Identitycardnumber` - Number assigned by a national authority to an identity card.
# * `Onetimepassword` - Verification of a one-time password provided by the issuer.
# * `Othercardholderidentification` - Other cardholder data provided for identification.
# * `Othercryptogram` - Verification of a cryptogram generated by a non-card form factor.
# * `Passportnumber` - Number assigned by a passport authority to a passport.
# * `Postalcode` - Verification based on digits of the postal code.
# * `Shippingaddressfrom` - Shipping address from verification.
# * `Shippingaddressto` - Shipping address to verification
# * `Cardholderaddress` - Verification whether the address corresponds to the cardholder's one.
# * `Nonvisiblecsc` - Non visible Card Security Code.
# * `Othernational` - Other type of verification defined at national level.
# * `Otherprivate` - Other type of verification defined at private level
# * `Placeofbirth` - Place of birth of a person.
# * `Socialsecuritynumber` - Number assigned by a social security agency.
# * `Taxidentificationnumber` - Number assigned by a tax authority to an entity.
# * `Accountdigitalsignature` - Account-based digital signature authentication.
# * `Arpcverification` - Response Card Cryptogram (ARPC)  verification.
# * `ATC` - Application Transaction Counter
# * `Offlinebiographics` - Biographics authentication in an offline mode.
# * `Offlinebiometrics` - Biometrics authentication in an offline mode
# * `Offlinedataauthentication` - Authentication of data in an offline mode
# * `Offlinedigitisedsignatureanalysis` - Analysis of signature transmitted offline
# * `Offlinepinencrypted` - PIN generated offline and transmitted encrypted
# * `Offlinepininclear` - PIN generated offline and transmitted in clear
# * `Onlinebiographics` - Biographics authentication in an online mode.
# * `Phonehome` - Customer home phone number.
# * `Phonework` - Customer work phone number
# * `Pkisignature` - PKI (Public Key Infrastructure) based digital signature
# * `Qualifiedcertificate` - QualifiedCertificate
# * `Threeds` - Authentication performed during a secure electronic commerce transaction.
# * `Cardholdercertificateserialnumber` - Serial number of the cardholder's certificate.
# * `Acceptorcertificateserialnumber` - Serial number of the acceptor's certificate.
# * `Nationalidentifier` - Nationally assigned identifier.
public type Authenticationmethodtypevalues "Onlinepin"|"Offlinepin"|"Signaturecapture"|"Password"|"Biometry"|"Cscverification"|"Cryptogramverification"|"Unknownmethod"|"Bypass"|"Papersignature"|"Manualverification"|"Merchantauthentication"|"Securecertificate"|"Securenocertificate"|"Securedchannel"|"Billingaddressverification"|"Cardholderidentificationdata"|"Passiveauthentication"|"Secureelectroniccommerce"|"Shippingaddressverification"|"Tokenauthentication"|"Paymenttoken"|"Authenticationtoken"|"Mobile"|"Other"|"Addressdigits"|"Alienregistrationnumber"|"Arqcverification"|"Birthdate"|"Cardholdername"|"Cityofbirth"|"Customeridentification"|"Driveridentification"|"Driverlicensenumber"|"Email"|"Employeeidentificationnumber"|"Employeridentificationnumber"|"Identitycardnumber"|"Onetimepassword"|"Othercardholderidentification"|"Othercryptogram"|"Passportnumber"|"Postalcode"|"Shippingaddressfrom"|"Shippingaddressto"|"Cardholderaddress"|"Nonvisiblecsc"|"Othernational"|"Otherprivate"|"Placeofbirth"|"Socialsecuritynumber"|"Taxidentificationnumber"|"Accountdigitalsignature"|"Arpcverification"|"ATC"|"Offlinebiographics"|"Offlinebiometrics"|"Offlinedataauthentication"|"Offlinedigitisedsignatureanalysis"|"Offlinepinencrypted"|"Offlinepininclear"|"Onlinebiographics"|"Phonehome"|"Phonework"|"Pkisignature"|"Qualifiedcertificate"|"Threeds"|"Cardholdercertificateserialnumber"|"Acceptorcertificateserialnumber"|"Nationalidentifier";

# >
# * `CommunicationChannel` - 
# * `AuthenticationChannel` - 
public type Channeltypevalues "CommunicationChannel"|"AuthenticationChannel";

public type Undertakinginstructiontypevalues "PaymentInstruction"|"IssuingInstruction"|"BookingInstruction"|"CollateralAllocationInstruction"|"AmendmentInstruction"|"TerminationInstruction";

public type Priorityvaluetypes "Urgent"|"High"|"Normal"|"Low";

public type Financialinstructiontypevalues "DepositInstruction"|"WithdrawInstruction"|"MoneyTransferInstruction"|"StandingOrder/Instruction"|"SettlementInstruction"|"PaymentInstruction"|"RepaymentInstruction";

# >
# * `PostalAddress` - 
# * `GeolocationAddress` - 
# * `LatitudeAddress` - 
# * `LongitudeAddress` - 
# * `ElectronicAddress` - 
# >
# * `Paper` - Presentation is made on paper.
# * `Electronic` - Presentation is made electronically.
# * `Paperelectronic` - Presentation is made on paper and/or electronically.
# * `Biometric` - Biometric medium.
public type Correspondencemediumtypevalues "Paper"|"Electronic"|"Paperelectronic"|"Biometric";

# >
# * `ITService` - 
# * `AdministrativeService` - 
# * `SystemService` - 
# * `FinancialService` - 
# * `InformationService` - 
# * `BusinessService` - 
# Work documentation, forms and schedules produced and referenced during the analysis
# >
# * `LegalEntity` - 
# * `Authority` - 
# * `OrganisationUnit` - 
# * `FinancialInstitution` - 
# * `Charity` - 
# * `GovernmentBody` - 
# >
# * `Urgent` - Priority level is urgent (highest priority possible).
# * `High` - Priority level is high.
# * `Normal` - Priority level is normal.
# * `Low` - Priority level is low.
# >
# * `Fax` - Transmission by fax.
# * `Email` - Transmission by e-mail.
# * `Proprietary` - Transmission by proprietary method.
# * `Online` - Transmission on line, for example, in a web portal.
# * `Phone` - Transmission by telephone.
# * `Postalservice` - Transmission by postal service.
# * `File` - Transmission by file transfer.
public type Correspondencecommunicationmethodtypevalues "Fax"|"Email"|"Proprietary"|"Online"|"Phone"|"Postalservice"|"File";

# >
# * `UnsolicitedMessage` - 
# * `Complaint` - 
# * `EnumerationLiteral` - 
public type Correspondencetypevalues "UnsolicitedMessage"|"Complaint"|"EnumerationLiteral";

# >
# * `PricingTransaction` - 
# * `FeeTransaction` - 
# * `WithdrawalTransaction` - 
# * `DepositTransaction` - 
# * `PaymentTransaction` - 
# * `ClearingTransaction` - 
# * `SettlementTransaction` - 
# * `Reconciliationtransaction` - 
# * `Updatetransaction` - 
# * `Securitiestransaction` - 
# * `RepaymentTransaction` - 
public type Financialtransactiontypevalues "PricingTransaction"|"FeeTransaction"|"WithdrawalTransaction"|"DepositTransaction"|"PaymentTransaction"|"ClearingTransaction"|"SettlementTransaction"|"Reconciliationtransaction"|"Updatetransaction"|"Securitiestransaction"|"RepaymentTransaction";

# >
# * `PaymentTransaction` - 
# * `IssuingTransaction` - 
# * `BookingTransaction` - 
# * `CollateralAllocationTransaction` - 
# * `TerminationTransaction` - 
# * `AmendmentTransaction` - 
public type Undertakingtransactiontypevalues "PaymentTransaction"|"IssuingTransaction"|"BookingTransaction"|"CollateralAllocationTransaction"|"TerminationTransaction"|"AmendmentTransaction";

# >
# * `Equity` - Financial instrument that represents a title of ownership in a company. That is, the shareholder is entitled to a part of the company's profit - usually by payment of a dividend - and to voting rights, if any. Each company issues generally different classes of shares, for example, ordinary or common shares, which have no guaranteed amount of dividend but carry voting rights, or preferred shares, which receive dividends before ordinary shares but have no voting right. (ISO20022)
# * `Warrant` - Financial instrument that gives the holder the right to purchase shares or bonds at a given price within a specified time. (ISO20022)
# * `Entitlement` - Financial instrument providing the holder the privilege to subscribe to or to receive specific assets on terms specified. (ISO20022)
public type Securitytypevalues "Equity"|"Warrant"|"Entitlement";

# >
# * `CustomerCreditPosition` - 
# * `CounterpartyCreditPosition` - 
public type Creditpositiontypevalues "CustomerCreditPosition"|"CounterpartyCreditPosition";

# >
# * `DemographicModel` - Analyze customer behavior based on demographic factors such as age, gender, income, education, and occupation.
# Example: Segmenting customers by age group to tailor marketing strategies.
# * `PsychographicModel` - Focus on psychological attributes, including values, attitudes, interests, and lifestyles.
# Example: Creating buyer personas based on lifestyle choices and interests.
# * `GeographicModel` - Look at customer behavior based on geographic location, considering factors like regional preferences and climate.
# Example: Targeting advertisements based on location-specific needs.
# * `SocioeconomicModel` - Combine social and economic factors to understand consumer behavior
# Example: Analyzing how economic status influences buying decisions
# * `SituationalModel` - Consider the context or situation in which the consumer is making a decision, including time of day, season, and situational needs.
# Example: Promoting holiday-related products during festive seasons.
# * `CulturalModel` - Focus on the influence of culture, traditions, and social norms on consumer behavior.
# Example: Adapting marketing messages to align with cultural values and practices.
# * `Usage-BasedModel` - Segment customers based on how they use a product or service, including frequency and intensity of use.
# Example: Differentiating between heavy, moderate, and light users of a product.
# * `Benefit-SoughtModel` - Classify customers according to the benefits they seek from a product or service.
# Example: Marketing products based on specific benefits like convenience, cost-saving, or luxury.
# * `HybridModel` - Combine elements from various models to provide a comprehensive view of customer behavior.
# Example: Using demographic, psychographic, and behavioral data together for more precise targeting
public type Customerbehaviormodeltypevalues "DemographicModel"|"PsychographicModel"|"GeographicModel"|"SocioeconomicModel"|"SituationalModel"|"CulturalModel"|"Usage-BasedModel"|"Benefit-SoughtModel"|"HybridModel";

# >
# * `CustomerBehavioralInsight` - Understanding how customers interact with products, services, and brands.
# * `CustomerDemographicInsight` - Analyzing customer characteristics such as age, gender, income, education, and location.
# * `CustomerPsychographicInsight` - Exploring customers' lifestyles, values, interests, and attitudes.
# * `CustomerTransactionalInsight` - Examining purchase history, order frequency, average transaction value, and payment methods
# * `CustomerFeedbackAndSentimentInsight` - Gathering and analyzing customer feedback through surveys, reviews, social media, and customer support interactions
# * `CustomerJourneyInsight` - Mapping the entire customer journey from awareness to purchase and beyond
# * `CustomerRetentionAndChurnInsight` - Understanding the factors that influence customer retention and attrition
# * `CustomerFinancialInsight` - Customer financial insights refer to the analysis and understanding of the financial aspects related to customer interactions and behaviors. 
public type Customerinsighttypevalues "CustomerBehavioralInsight"|"CustomerDemographicInsight"|"CustomerPsychographicInsight"|"CustomerTransactionalInsight"|"CustomerFeedbackAndSentimentInsight"|"CustomerJourneyInsight"|"CustomerRetentionAndChurnInsight"|"CustomerFinancialInsight";

# >
# * `CustomerProfitabilityRating` - A value of Customer Rating Type whereby customer profitability is measured.
#
# A customer profitability rating (CPR) is an assessment used by businesses to evaluate the profitability of individual customers or customer segments. This rating helps companies understand which customers contribute the most to their bottom line and enables them to tailor their strategies to maximize overall profitability.
# * `CustomerCreditRating` - A value of Customer Rating Type whereby customer creditability is measured.
#
# A customer credit rating is a numerical score or rating that represents the creditworthiness of an individual or a business. It indicates the likelihood that the borrower will repay their debt obligations on time
# * `CustomerRiskRating` - A customer risk rating is an assessment of the potential risk associated with a customer, often used in the context of anti-money laundering (AML) and know your customer (KYC) regulations. It evaluates the likelihood of a customer engaging in activities that could pose a legal, financial, or reputational risk to the institution.
public type Customerratingtypevalues "CustomerProfitabilityRating"|"CustomerCreditRating"|"CustomerRiskRating";

# >
# * `AgreementInvolvement` - 
# * `PartyInvolvement` - 
# * `ArrangementInvolvement` - 
# * `DesignSpecificationInvolvement` - 
# * `RelationshipInvolvement` - 
# * `LocationInvolvement` - 
# * `BankGuaranteeInvolvement` - 
public type Partyinvolvementtypevalues "AgreementInvolvement"|"PartyInvolvement"|"ArrangementInvolvement"|"DesignSpecificationInvolvement"|"RelationshipInvolvement"|"LocationInvolvement"|"BankGuaranteeInvolvement";

# >
# * `ProductLaunchCampaign` - Introducing a new product or service to the market.
# Includes teasers, pre-launch promotions, and launch events.
# * `BrandAwarenessCampaign` - Aimed at increasing visibility and recognition of the brand.
# Uses a mix of media, including online ads, social media, and PR
# * `CustomerRetentionCampaign` - Focused on keeping existing customers engaged and loyal.
# Includes loyalty programs, personalized offers, and exclusive events.
# * `ReferralCampaign` - Encouraging existing customers to refer new customers.
# Often incentivized with discounts or rewards for both the referrer and the new customer.
# * `ReactivationCampaign` - Targeting inactive or lapsed customers to re-engage them.
# Includes special offers, updates, and personalized messages.
# * `Cross-SellingAndUpsellingCampaign` - Encouraging customers to purchase related or higher-end products.
# Uses personalized recommendations and special offers.
public type Customercampaigntypevalues "ProductLaunchCampaign"|"BrandAwarenessCampaign"|"CustomerRetentionCampaign"|"ReferralCampaign"|"ReactivationCampaign"|"Cross-SellingAndUpsellingCampaign";

# >
# * `Customerproductserviceeligibilityprofile` - 
# * `Customerproductserviceusageprofile` - 
# * `Customerproductservicecoverageprofile` - 
# * `Customerproductservicesaleprofile` - 
# * `Customerproductserviceconsentprofile` - 
public type Customerproductserviceprofiletypevalues "Customerproductserviceeligibilityprofile"|"Customerproductserviceusageprofile"|"Customerproductservicecoverageprofile"|"Customerproductservicesaleprofile"|"Customerproductserviceconsentprofile";

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
public type feetypevalues "Accountingfee"|"Adrfee"|"Advisoryfee"|"Airwaybillfee"|"Backendload"|"Brokeragefee"|"Clearanceandhandlingatdestination"|"Clearanceandhandlingatorigin"|"Collectfreight"|"Commission"|"Contingencydeferredsalescharge"|"Correspondentbankcharge"|"Custodyfee"|"Dangerousgoodsfee"|"Dilutionlevy"|"Discount"|"Equalisation"|"Frontendload"|"Initial"|"Insurancepremium"|"Issuancecancellationfee"|"Issuancefee"|"Managementfee"|"Matchingfees"|"Miscellaneousfee"|"Other"|"Packaging"|"Partacquis"|"Penalty"|"Pickup"|"Postagecharge"|"Premium"|"Publicationfee"|"Regulatoryfee"|"Securitycharge"|"Serviceprovisionfee"|"Shippingcharge"|"Signatureservice"|"Specialconcessions"|"Speciallyagreedfrontendload"|"Storageatdestination"|"Storageatorigin"|"Switch"|"Transferfee"|"Transportcharges"|"Ucitscommission"|"ChequeRelatedFee";

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
public type featuretypevalues "FeeFeature"|"InterestFeature"|"WithdrawalFeature"|"DepositFeature"|"SweepFeature"|"LienFeature"|"PaymentFeature"|"RepaymentFeature"|"LimitFeature"|"OverdraftFeature"|"StatementFeature"|"CurrencyExchangeFeature"|"PriceFeature";

# >
# * `AdministrativePlan` - 
# * `ManagementPlan` - 
# * `StratgyPlan` - 
# * `FinancialPlan` - 
# * `DevelopmentPlan` - 
public type plantypevalues "AdministrativePlan"|"ManagementPlan"|"StratgyPlan"|"FinancialPlan"|"DevelopmentPlan";

# >
# * `Continent` - 
# * `Country` - 
# * `State` - 
# * `District` - 
# * `Province` - 
# * `Town` - 
# * `City` - 
# * `Region` - 
public type geographicalareatypevalues "Continent"|"Country"|"State"|"District"|"Province"|"Town"|"City"|"Region";

# >
# * `Short-TermGoal` - 
# * `Long-TermGoal` - 
# * `BusinessGoal` - 
# * `PerformanceGoal` - 
# * `FinancialGoal` - 
# * `OutcomeGoal` - 
# * `SMARTGoal` - 
public type goaltypevalues "Short-TermGoal"|"Long-TermGoal"|"BusinessGoal"|"PerformanceGoal"|"FinancialGoal"|"OutcomeGoal"|"SMARTGoal";

# >
# * `Document` - 
# * `WorkingPaper` - 
# * `ActivityLog` - 
# * `Form` - 
# * `File` - File of consolidated notes, evaluations and recommendations for the work task
# * `MeetingSchedule` - 
# * `MeetingMinute` - 
public type workproducttypevalues "Document"|"WorkingPaper"|"ActivityLog"|"Form"|"File"|"MeetingSchedule"|"MeetingMinute";

# >
# * `Principal` - 
# * `Actual` - Actual amount.
# * `Estimated` - Estimated amount (the final amount could be above or below).
# * `Maximum` - Maximum amount (the final amount must be less or equal).
# * `Default` - Default amount.
# * `Replacement` - Replacement amount.
# * `Incremental` - Incremental amount for reservation.
# * `Decremental` - Decremental amount for reservation.
# * `Reserved` - Reserved or updated reserved amount for reservation.
# * `Available` - 
# * `Used` - 
# * `DuePayable` - 
# * `Minimum` - 
# * `Open` - The amount is open.(ISO20022)
# * `Unknown` - The amount is unkown.(ISO20022)
# * `Fixed` - The amount represents a fixed value.(ISO20022)
public type amounttypevalues "Principal"|"Actual"|"Estimated"|"Maximum"|"Default"|"Replacement"|"Incremental"|"Decremental"|"Reserved"|"Available"|"Used"|"DuePayable"|"Minimum"|"Open"|"Unknown"|"Fixed";

# >
# * `PostalAddress` - 
# * `GeolocationAddress` - 
# * `LatitudeAddress` - 
# * `LongitudeAddress` - 
# * `ElectronicAddress` - 
public type addresstypevalues "PostalAddress"|"GeolocationAddress"|"LatitudeAddress"|"LongitudeAddress"|"ElectronicAddress";

# >
# * `SettingDate` - 
# * `PlanningDate` - 
# * `StartDate` - 
# * `ReviewDate` - 
# * `CompletionDate` - 
public type goaldatetimetypevalues "SettingDate"|"PlanningDate"|"StartDate"|"ReviewDate"|"CompletionDate";

# >
# * `StandardFeePlan` - 
# * `FinalFeePlan` - 
public type feeplantypevalues "StandardFeePlan"|"FinalFeePlan";

# >
# * `Debit` - Transaction is a debt entry
# * `Credit` - Transaction is a credit entry
public type debitcreditindicatortvalues "Debit"|"Credit";

# >
# * `Bornebydebtor` - All transaction charges are to be borne by the debtor.
# * `Bornebycreditor` - All transaction charges are to be borne by the creditor.
# * `Shared` - In a credit transfer context, means that transaction charges on the sender side are to be borne by the debtor, transaction charges on the receiver side are to be borne by the creditor. In a direct debit context, means that transaction charges on the sender side are to be borne by the creditor, transaction charges on the receiver side are to be borne by the debtor.
# * `Followingservicelevel` - Charges are to be applied following the rules agreed in the service level and/or scheme.
public type chargebearertypevalues "Bornebydebtor"|"Bornebycreditor"|"Shared"|"Followingservicelevel";

# >
# * `OperatingBudget` - 
# * `FinancialBudget` - 
# * `ResourceBudget` - 
public type budgettypevalues "OperatingBudget"|"FinancialBudget"|"ResourceBudget";

# >
# * `Added` - Adjustment amount must be added to the total amount.
# * `Substracted` - Adjustment amount must be substracted from the total amount.
public type adjustmentdirectiontypevalues "Added"|"Substracted";

# >
# * `Setting` - 
# * `Planning` - 
# * `Execution` - 
# * `MonitoringAndEvaluation` - 
# * `CompletionOrAchievement` - 
# * `MaintenanceOrSustainment` - 
# * `ClosureOrRenewal` - 
public type goalstatustypevalues "Setting"|"Planning"|"Execution"|"MonitoringAndEvaluation"|"CompletionOrAchievement"|"MaintenanceOrSustainment"|"ClosureOrRenewal";

# >
# * `Initiated` - 
# * `Announced` - 
# * `Sold` - 
# * `Obsolete` - 
# * `Active` - 
public type productstatustypevalues "Initiated"|"Announced"|"Sold"|"Obsolete"|"Active";

# >
# * `ISINCode` - 
# * `PackageCode` - 
# * `Buyersitemnumber` - Product identifier assigned by the buyer.
# * `Commercialdescriptioncodename` - A code to identify a product based on applicable commercial conditions.
# * `EAN` - The unique EAN (European Article Number) code.
# * `Harmonizedtariffcodename` - Classification of goods as developed by the Customs Cooperation council.
# * `Manufacturersitemnumber` - Product identifier as assigned by the manufacturer.
# * `Modelnumber` - Reference number assigned by the manufacturer to differentiate variations in similar products in a class or group.
# * `Partnumber` - Reference assigned by the manufacturer to a product part.
# * `Quotacategory` - Product identifier used by the retail industry.
# * `Stylenumber` - Identification of the style of a product.
# * `Suppliersitemnumber` - Number assigned to an article by the supplier of that article.
# * `Universalproductcode` - Number assigned to a manufacturer's product by the Product Code Council.
public type productidentificationtypevalues "ISINCode"|"PackageCode"|"Buyersitemnumber"|"Commercialdescriptioncodename"|"EAN"|"Harmonizedtariffcodename"|"Manufacturersitemnumber"|"Modelnumber"|"Partnumber"|"Quotacategory"|"Stylenumber"|"Suppliersitemnumber"|"Universalproductcode";

# >
# * `LoanProduct` - 
# * `CurrentAccountProduct` - 
# * `SavingAccountProduct` - 
# * `BrokeredProduct` - 
# * `TermDepositProduct` - 
public type bankingproducttypevalues "LoanProduct"|"CurrentAccountProduct"|"SavingAccountProduct"|"BrokeredProduct"|"TermDepositProduct";

# >
# * `StandardRatePlan` - 
# * `AdjustmentRatePlan` - 
# * `FinalRatePlan` - 
public type Rateplantypevalues "StandardRatePlan"|"AdjustmentRatePlan"|"FinalRatePlan";

# >
# * `Letterofcredit` - Instrument issued by a bank substituting its name and credit standing for that of its customer. A letter of credit is a written undertaking of the bank, issued for the account of a customer (the applicant), to honour a demand for payment, upon the beneficiary's compliance with the terms and conditions set forth in the undertaking.
# * `Cash` - Collateral type is cash.
# * `Securities` - Collateral type is securities.
# * `Physicalentities` - Collateral type are physical entities, for example, airplanes for debt issued by the airline industry.
# * `Insurance` - Collateral type is an insurance contract.
# * `Stockcertificate` - Collateral type is stock certificates.
# * `Bond` - Collateral type is bonds.
# * `Bankguarantee` - Collateral type is a bank guarantee.
# * `Other` - Other assets that could be used as collateral.
# * `Commodity` - Collateral type is commodities.
# * `Automobile` - Collateral type is automobile.
# * `Industrialvehicle` - Collateral type is industrial vehicle.
# * `Commercialtruck` - Collateral type is commercial track.
# * `Railvehicle` - Collateral type is rail vehicle.
# * `Nauticalcommercialvehicle` - Collateral type is nautical commercial vehicle.
# * `Nauticalleisurevehicle` - Collateral type is nautical leisure vehicle.
# * `Aeroplane` - Collateral type is aeroplane.
# * `Machinetool` - Collateral type is machine.
# * `Industrialequipment` - Collateral type is industrial equipment.
# * `Officeequipment` - Collateral type is office equipment.
# * `Itequipment` - Collateral type is IT equipment.
# * `Medicalequipment` - Collateral type is medical equipment.
# * `Energyrelatedequipment` - Collateral type is energy related equipment.
# * `Commercialbuilding` - Collateral type is commercial building.
public type Collateraltypevalues "Letterofcredit"|"Cash"|"Securities"|"Physicalentities"|"Insurance"|"Stockcertificate"|"Bond"|"Bankguarantee"|"Other"|"Commodity"|"Automobile"|"Industrialvehicle"|"Commercialtruck"|"Railvehicle"|"Nauticalcommercialvehicle"|"Nauticalleisurevehicle"|"Aeroplane"|"Machinetool"|"Industrialequipment"|"Officeequipment"|"Itequipment"|"Medicalequipment"|"Energyrelatedequipment"|"Commercialbuilding";

# >
# * `Offered` - 
# * `UnderAssessment` - 
# * `Transferred` - 
# * `Allocated` - 
# * `FreeForAllocation` - 
# * `AllocatedToAnotherLoan` - 
# * `IssuedForExecution` - 
public type Collateralassetstatustypevalues "Offered"|"UnderAssessment"|"Transferred"|"Allocated"|"FreeForAllocation"|"AllocatedToAnotherLoan"|"IssuedForExecution";

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
public type Limittypevalues "Multilateral"|"Bilateral"|"Netbilateral"|"Indirectbilateral"|"Global"|"Mandatorybilateral"|"Discretionarybilateral"|"Directdebit"|"Singlecustomerdirectdebit"|"Singlefinancialinstitutiondirectdebit"|"Totaldailycustomerdirectdebit"|"Totaldailyfinancialinstitutiondirectdebit"|"Autocollateralisation"|"Unsecuredcredit"|"Externalguarantee";

# >
# * `Enabled` - Limit is currently in effect.
# * `Disabled` - Limit is not currently in effect.
# * `Deleted` - Limit has been deleted or suspended.
# * `Requested` - Limit has been asked for and is not yet enabled.
public type Limitstatustypevalues "Enabled"|"Disabled"|"Deleted"|"Requested";

# >
# * `DocumentProvisioning` - 
# * `DocumentVerification` - 
# * `DocumentAmendment` - 
# * `DocumentArchiving` - 
# * `DocumentImagingAndScanning` - 
public type Documentservicetypevalues "DocumentProvisioning"|"DocumentVerification"|"DocumentAmendment"|"DocumentArchiving"|"DocumentImagingAndScanning";

# >
# * `PremiumArrangement` - How much, how often, and how premiums are paid.
# * `CoverageArrangement` - Risks/events insured against and the scope/limits of protection.
# * `ExclusionArrangement` - Situations where the insurer will not pay.
# * `ClaimArrangement` - How claims are submitted, documents needed, and payout procedures.
# * `TerminationArrangement` - Conditions for ending the policy.
# * `RenewalArrangement` - Rules for extending or continuing the policy.
# * `BenefitArrangement` - How and to whom benefits are paid.
# * `Legal&RegulatoryArrangement` - Compliance with laws and dispute resolution mechanisms.
# * `PaymentArrangement` - Specifies how and when benefits are paid e.g., lump sum, scheduled installments, or direct payment to service providers.
# * `ServiceArrangement` - Covers non-monetary benefits such as the provision of funeral services, transport of remains, or repatriation, usually via contracted service providers.
public type Insurancearrangementtypevalues "PremiumArrangement"|"CoverageArrangement"|"ExclusionArrangement"|"ClaimArrangement"|"TerminationArrangement"|"RenewalArrangement"|"BenefitArrangement"|"Legal&RegulatoryArrangement"|"PaymentArrangement"|"ServiceArrangement";

# >
# * `CashDeposit` - Amount of money representing a value paid by a debtor to an agent bank. (ISO20022)
# * `SecurityDeposit` - 
# * `PawnDeposit` - 
# * `Call/NoticeDeposit` - 
# * `FixedTermDeposit` - 
# * `DemandDeposit` - A demand deposit account is essentially a checking account in which you can withdraw funds at any time. (Investopedia)
# https://www.investopedia.com/terms/d/demanddeposit.asp#:~:text=our%20editorial%20policies-,What%20Is%20a%20Demand%20Deposit%3F,are%20common%20types%20of%20DDAs.
# * `TimeDeposit` - Time deposits are those with a fixed time and usually pay a fixed interest rate (Investopedia)
# * `CardDeposit` - 
public type Deposittypevalues "CashDeposit"|"SecurityDeposit"|"PawnDeposit"|"Call/NoticeDeposit"|"FixedTermDeposit"|"DemandDeposit"|"TimeDeposit"|"CardDeposit";

# >
# * `Fixed` - Rate is fixed.
# * `Forfeit` - No specific repurchase rate applies to the transaction Repo, only a forfeit.
# * `Variable` - Rate is variable.
# * `Scheduled` - Rate of the scheduled payment.
# * `Unscheduled` - Rate of the unscheduled payment.
# * `Discount` - Interest rate type is Discount.
# * `Fixedrateunderlyingexposureforlife` - Interest rate type is Fixed rate underlying exposure (for life).
# * `Fixedrateunderlyingexposurewithcompulsoryfutureswitchtofloating` - Interest rate type is Fixed rate underlying exposure with compulsory future switch to floating.
# * `Fixedwithfutureperiodicresets` - Interest rate type is Fixed with future periodic resets.
# * `Floatinglinkedtoindex` - Interest rate type is Floating rate underlying exposure linked to one index that will revert to another index in the future.
# * `Floatingrateunderlyingexposureforlife` - Interest rate type is Floating rate underlying exposure (for life).
# * `Floatingrateunderlyingexposurewithcap` - Interest rate type is Floating rate underlying exposure with cap.
# * `Floatingrateunderlyingexposurewithfloor` - Interest rate type is Floating rate underlying exposure with floor.
# * `Floatingrateunderlyingexposurewithfloorandcap` - Interest rate type is Floating rate underlying exposure with both floor and cap.
# * `Modular` - Interest rate type is Modular.
# * `Obligorswapped` - Interest rate type is Obligor Swapped.
# * `Other` - Any other type of interest rate that can be applied.
# * `Swicthoptionality` - Interest rate type is Switch Optionality.
public type Interestratetypevalues "Fixed"|"Forfeit"|"Variable"|"Scheduled"|"Unscheduled"|"Discount"|"Fixedrateunderlyingexposureforlife"|"Fixedrateunderlyingexposurewithcompulsoryfutureswitchtofloating"|"Fixedwithfutureperiodicresets"|"Floatinglinkedtoindex"|"Floatingrateunderlyingexposureforlife"|"Floatingrateunderlyingexposurewithcap"|"Floatingrateunderlyingexposurewithfloor"|"Floatingrateunderlyingexposurewithfloorandcap"|"Modular"|"Obligorswapped"|"Other"|"Swicthoptionality";

public type Interesttypevalues "Fixed"|"Floatingratenote"|"Dualbasis"|"Index"|"Discounted"|"Zerocoupon"|"Exinterest"|"Cuminterest";

# >
# * `UKCalendar` - 
# * `ChineseCalendar` - 
public type Calendartypevalues "UKCalendar"|"ChineseCalendar";

# >
# * `RegulatoryComplianceCheck` - 
# * `LegalComplianceCheck` - 
# * `GuidelineComplianceCheck` - 
public type Compliancechecktypevalues "RegulatoryComplianceCheck"|"LegalComplianceCheck"|"GuidelineComplianceCheck";

# >
# * `Balance/Cashflow` - 
# * `CreditPosition` - 
# * `CollateralPosition` - 
# * `SecurityPosition` - 
public type Positiontypevalues "Balance/Cashflow"|"CreditPosition"|"CollateralPosition"|"SecurityPosition";

public type Ratetypevalues "Fixed"|"Forfeit"|"Variable"|"Open"|"Unknown"|"Nilpayment"|"Additionaltax"|"Charges"|"Cashinlieuofsecurities"|"Gross"|"Cashincentive"|"Net"|"Sollication"|"Stampduty"|"Stockexchangetax"|"Withholdingtax"|"Transfertax"|"Transactiontax"|"Taxdeferred"|"Taxfeeamount"|"Withholdingofforeigntax"|"Withholdingoflocaltax"|"Imputed"|"Precompte"|"Onetiertax"|"Localtax"|"Scheduled"|"Unscheduled"|"Anyandall";

# >
# * `Card` -
# * `Loan` -
# * `Fraud` -
# * `Payment` -
# * `Market` -
# * `Security` -
# * `Other` -
public type Casetypevalues "Card"|"Loan"|"Fraud"|"Payment"|"Market"|"Security"|"Other";

# >
# * `SecurityPolicy` - 
# * `AdministrativePolicy` - 
# * `SocialPolicy` - 
# * `RegulatoryPolicy` - 
public type Policytypevalues "SecurityPolicy"|"AdministrativePolicy"|"SocialPolicy"|"RegulatoryPolicy";

# >
# * `Issued` - 
# * `IssuedButNotActivated` - 
# * `Activated` - 
# * `Suspended` - 
# * `Retrieved` - 
public type Issueddevicestatustypevalues "Issued"|"IssuedButNotActivated"|"Activated"|"Suspended"|"Retrieved";

# >
# * `AllocationModality` -
# * `CalculationModality` -
# * `DerivationModality` -
# * `PaymentModality` -
# * `ProcessingModality` -
# * `ApplicationModality` -
# * `DeliveryModality` -
public type Modalitytypevalues "AllocationModality"|"CalculationModality"|"DerivationModality"|"PaymentModality"|"ProcessingModality"|"ApplicationModality"|"DeliveryModality";

public type casetypevalues "Card"|"Loan"|"Fraud"|"Payment"|"Market"|"Security"|"Other";

# >
# * `Cardsfundtransfer` - Transfer of funds to and/or from a card account.
# * `Originalcredit` - Original credit.
# * `Cardpayment` - Card payment.
# * `Cashback` - Card payment with cash-back.
# * `Cashadvance` - Cash advance or withdrawals on a POI (Point Of Interaction), or at a bank counter.
# * `Cashdeposit` - Cash deposit.
# * `Deferredpayment` - Deferred payment.
# * `Reservation` - Reservation (pre-authorisation).
# * `Loading` - Loading or reloading non-financial account.
# * `Refund` - Refund transaction.
# * `Quasicash` - Quasi-cash.
# * `Balance` - Balance enquiry.
# * `Cardactivation` - Card activation.
# * `Cardverification` - Card verification.
# * `Pinchange` - PIN (Personal Identification Number) change.
# * `Validitycheck` - Card validity check.
# * `Aggregation` - Aggregation of low payments.
# * `DCC` - Dynamic currency conversion (DCC).
# * `Gratuity` - Card payment with gratuity.
# * `Instalment` - Instalment payment.
# * `Loyalty` - Loyalty services.
# * `Noshow` - No show after reservation.
# * `Purchasecorporate` - Purchase and corporate data.
# * `Recurringpayment` - Recurring payment.
# * `Solicitedavailablefunds` - Solicited available funds.
# * `Unsolicitedavailablefunds` - Unsolicited available funds.
# * `Voiceauthorisation` - Voice authorisation.
# * `Initialreservation` - Initial reservation.
# * `Updatereservation` - Update reservation.
# * `Paymentreservation` - Payment after reservation.
# * `Additionalpayment` - Additional payment after reservation.
# * `Firstrecurring` - Initial recurring payment.
# * `Followingrecurring` - Repeat recurring payment.
# * `Persontobusiness` - Card payment transaction transfer from person to business.
# * `Persontoperson` - Card payment transaction transfer from person to person.
# * `Acceptorinstalment` - Instalment payment transaction performed by the acceptor or the acquirer.
# * `Issuerinstalment` - Instalment payment transaction performed by the card issuer.
# * `Unloading` - Unloading non-financial account.
# * `Cardsfundtransferpush` - Transfer of funds to a card or an account.
# * `Cardsfundtransferpull` - Transfer of funds from a card or an account.
# * `Cashwithdrawal` - Withdrawal of cash on an ATM.
# * `Pinunblock` - Unblock the cardholder PIN.
# * `Chosenwithdrawal` - Amount and notes values are chosen by the customer.
# * `Preauthorisedwithdrawal` - Withdrawal transaction was pre-authorised by another channel (amount could be absent).
# * `Profilewithdrawal` - Amount and Notes Values are pre-defined by the customer profile.
# * `Standardwithdrawal` - Customer pressed a button associated with a withdrawal of unique amount and notes mix.
# * `Transfercardbillpayment` - Transfer for payment of bills.
# * `Transferfromcash` - Transfer from cash deposit.
# * `Transferfromcheque` - Transfer from cheque deposit.
# * `Transferfundsdisbursementgeneral` - Transfer for general disbursement.
# * `Transfergovernmentdisbursement` - Transfer for government disbursement.
# * `Transfermerchantdisbursement` - Transfer for merchant disbursement.
# * `Transferpayrollpensiondisbursement` - Transfer for payroll pension disbursement.
# * `Nonrefundable` - Payment of goods or services which are not refundable, for instance low cost airline tickets.
# * `Instant` - Instant transaction.
# * `Creditadjustement` - Credit adjustment to a previous transaction.
# * `Debitadjustement` - Debit adjustment to a previous transaction.
# * `Createcertificate` - Creation of an X.509 certificate with the public key and the information of the owner of the asymmetric key provided by the requestor.
# * `Renewcerificate` - Renewal of an X.509 certificate, protected by the certificate to renew.
# * `Revokecertificate` - Revocation of an active X.509 certificate.
# * `Addwhitelist` - Add a POI in the white list of the terminal manager.
# * `Removewhitelist` - Remove a POI from the white list of the terminal manager.
# * `Cardinitiatingdirectdebit` - Direct Debit initiated by Card.
# * `Guaranteeofpayment` - Acceptor claims for guarantee of payment.
public type cardpaymenttransactionservicetypevalues "Cardsfundtransfer"|"Originalcredit"|"Cardpayment"|"Cashback"|"Cashadvance"|"Cashdeposit"|"Deferredpayment"|"Reservation"|"Loading"|"Refund"|"Quasicash"|"Balance"|"Cardactivation"|"Cardverification"|"Pinchange"|"Validitycheck"|"Aggregation"|"DCC"|"Gratuity"|"Instalment"|"Loyalty"|"Noshow"|"Purchasecorporate"|"Recurringpayment"|"Solicitedavailablefunds"|"Unsolicitedavailablefunds"|"Voiceauthorisation"|"Initialreservation"|"Updatereservation"|"Paymentreservation"|"Additionalpayment"|"Firstrecurring"|"Followingrecurring"|"Persontobusiness"|"Persontoperson"|"Acceptorinstalment"|"Issuerinstalment"|"Unloading"|"Cardsfundtransferpush"|"Cardsfundtransferpull"|"Cashwithdrawal"|"Pinunblock"|"Chosenwithdrawal"|"Preauthorisedwithdrawal"|"Profilewithdrawal"|"Standardwithdrawal"|"Transfercardbillpayment"|"Transferfromcash"|"Transferfromcheque"|"Transferfundsdisbursementgeneral"|"Transfergovernmentdisbursement"|"Transfermerchantdisbursement"|"Transferpayrollpensiondisbursement"|"Nonrefundable"|"Instant"|"Creditadjustement"|"Debitadjustement"|"Createcertificate"|"Renewcerificate"|"Revokecertificate"|"Addwhitelist"|"Removewhitelist"|"Cardinitiatingdirectdebit"|"Guaranteeofpayment";

# >
# * `Issuercitidentification` - Identification, given by the Issuer, of the transaction processed with the cardholder that legitimates this merchant initiated transaction. (ISO20022)
# * `Merchantcitidentification` - Identification, given by the merchant, of the transaction processed with the cardholder that legitimates this merchant initiated transaction. (ISO20022)
public type cardpaymenttransactionidentificationtypevalues "Issuercitidentification"|"Merchantcitidentification";

# >
# * `Cashback` - Cash-back amount.
# * `Gratuity` - Gratuity amount.
# * `Fees` - Fees.
# * `Rebates` - Global rebate of the transaction. This amount is counted as a negative amount.
# * `Valueaddedtax` - Value added tax amount.
# * `Actual` - Actual amount.
# * `Replacement` - Replacement amount.
# * `Maximum` - Maximum amount (the final amount must be less or equal).
# * `Default` - Default amount.
# * `Estimated` - Estimated amount (the final amount could be above or below).
# * `Original` - Original amount authorised during the real-time authorisation process.
# * `Surcharge` - Extra fee for a purchase or a withdrawal.
# * `Servicefee` - Service fee.
# * `Interchangefee` - Interchange fee.
# * `Discount` - Discount, rebate or voucher, related to loyalty programs. This amount is counted as a negative amount.
# * `Atmcommissionfee` - Commission that the issuer will charge to the cardholder, which should be shown and accepted by the cardholder before the money is disbursed.
# * `Authorisedamount` - Transaction amount that has been authorised.
# * `Cardremainingbalance` - Remaining allowed amount for this type of transaction with this card, after the transaction, until the end of the card limit period.
# * `Maximumallowedamount` - Maximum amount allowed for the transaction in the transaction amount currency if the transaction amount of the request was declined.
# * `Minimumallowedamount` - Minimum amount allowed in the TransactionAmount currency if the transaction amount of the request was declined.
# * `Requestedamount` - Transaction amount that has been requested to be authorised.
# * `Issuerfees` - Fees amount from the card issuer.
# * `Issuercommission` - Commission from the card issuer.
# * `Interchangefees` - Interchange fees.
# * `Processingfees` - Processing fees.
# * `Currencyconversionfees` - Currency conversion fees.
# * `Internationalserviceassessmentfees` - International service assessment fees.
# * `Commission` - Commission, for example for DCC (Dynamic Currency Conversion) transactions.
# * `Donation` - Donation amount.
# * `Tax` - Taxes applicable to the transaction.
# * `Incremental` - Incremental amount for reservation.
# * `Decremental` - Decremental amount for reservation.
# * `Reserved` - Reserved or updated reserved amount for reservation.
# * `Confirmedamount` - Actual amount that has been paid to the ultimate beneficiary, after all charges etc... have been deducted.
# * `Instructedamount` - Amount of money to be moved between the debtor (ordering customer) and creditor, before deduction of charges, expressed in the currency as ordered by the initiating party.
# * `Atmaccessfee` - Fee for giving access to an ATM.
# * `Cardholderbillingfee` - Fee related to a cardholder billing.
# * `Clearingfee` - Fee related to a clearing transaction.
# * `Credittransactionfee` - Fee related to a credit transaction.
# * `Cumulative` - Contains the total amount of all authorisations related to the same cardholder purchase activities. Example: total of all incremental or splitted shipment authorisations for the same purchase.
# * `Debittransactionfee` - Fee related to a debit transaction.
# * `Extra` - Extra charges (for example,  minibar, etc.)
# * `Foreignexchangefee` - Fee related to a foreign exchange transaction.
# * `Fundstransfer` - Fee related to a funds transfer transaction
# * `Instantpaymentfee` - Fee related to an instant payment.
# * `Instanttransferfee` - Fee related to an instant transfer transaction.
# * `Issuercardholderfee` - Fee applied by the card issuer to the cardholder.
# * `Limit` - Limit of amounts for the transaction.
# * `Othernational` - Other type of amount defined at national level.
# * `Otherprivate` - Other type of amount defined at private level.
# * `Reconciliationfee` - Fee related to a reconciliation transaction.
# * `Settlementfee` - Fee related to a settlement transaction.
# * `Transactionfee` - Fee related to a transaction.
# * `Anticipated` - Amount anticipated for the transaction
# * `Baggage` - Baggage related fees
# * `Chargedtocard` - Amount that has been charged to card account
# * `Clearingpriorityfee` - Fee related to a clearing transaction for a given priority.
# * `Dental` - Amount qualified for dental prescriptions
# * `Deposit` - Deposit amount.
# * `Fundstransferfee` - Fee related to a funds transfer.
# * `Otherqualifiedmedical` - Amount qualified for other medical expenses
# * `Prescription` - Amount for medical prescription
# * `Proxy` - Substitute for an amount to be authorised.
# * `Requestedcashback` - Requested cashback amount
# * `Settlementpriorityfee` - Fee related to a settlement transaction for a given priority.
# * `Totalhealthcare` - Total healthcare amount
# * `Transit` - Amount in transit
# * `Vision` - Amount qualified for medical vision expenses
# * `Connect` - Telephone connection-related charge
# * `Data` - Data communication related charges
# * `Exchangeticket` - Fee for exchanging a ticket (modifying an itinerary)
# * `Exchangeticketfee` - Fee for exchanging a ticket (modifying an itinerary)
# * `Fare` - Amount of fare
# * `Foodbeverage` - Amount of food and beverages
# * `Insurance` - Insurance charges
# * `Longdistance` - Charges related to a long distance call.
# * `Miscellaneous` - Miscellaneous charges not elsewhere defined
# * `Phone` - Phone charges
# * `Prepayment` - Amount of prepayment
# * `Total` - Total amount of charges
# * `Usage` - Telephone usage-related charge
# * `Predcc` - Local amount before DCC (Dynamic Currency Conversion) was applied.
# * `Upgrade` - Amount for an upgrade.
# * `Clubfee` - Amount for club fee.
# * `Cargo` - Cargo Amount.
# * `Dutyfree` - Duty free amount
# * `Ticketdelivery` - Ticket delivery amount.
# * `Petcarrier` - Pet carrier.
# * `Tourorder` - Tour order amount.
# * `Minimuminterchangefee` - Minimum interchange fee applicable.
# * `Maximuminterchangefee` - Maximum applicable interchange fee.
# * `Cashbackinterchangefee` - Interchange fee applicable to cash back amount.
public type amountqualifiertypevalues "Cashback"|"Gratuity"|"Fees"|"Rebates"|"Valueaddedtax"|"Actual"|"Replacement"|"Maximum"|"Default"|"Estimated"|"Original"|"Surcharge"|"Servicefee"|"Interchangefee"|"Discount"|"Atmcommissionfee"|"Authorisedamount"|"Cardremainingbalance"|"Maximumallowedamount"|"Minimumallowedamount"|"Requestedamount"|"Issuerfees"|"Issuercommission"|"Interchangefees"|"Processingfees"|"Currencyconversionfees"|"Internationalserviceassessmentfees"|"Commission"|"Donation"|"Tax"|"Incremental"|"Decremental"|"Reserved"|"Confirmedamount"|"Instructedamount"|"Atmaccessfee"|"Cardholderbillingfee"|"Clearingfee"|"Credittransactionfee"|"Cumulative"|"Debittransactionfee"|"Extra"|"Foreignexchangefee"|"Fundstransfer"|"Instantpaymentfee"|"Instanttransferfee"|"Issuercardholderfee"|"Limit"|"Othernational"|"Otherprivate"|"Reconciliationfee"|"Settlementfee"|"Transactionfee"|"Anticipated"|"Baggage"|"Chargedtocard"|"Clearingpriorityfee"|"Dental"|"Deposit"|"Fundstransferfee"|"Otherqualifiedmedical"|"Prescription"|"Proxy"|"Requestedcashback"|"Settlementpriorityfee"|"Totalhealthcare"|"Transit"|"Vision"|"Connect"|"Data"|"Exchangeticket"|"Exchangeticketfee"|"Fare"|"Foodbeverage"|"Insurance"|"Longdistance"|"Miscellaneous"|"Phone"|"Prepayment"|"Total"|"Usage"|"Predcc"|"Upgrade"|"Clubfee"|"Cargo"|"Dutyfree"|"Ticketdelivery"|"Petcarrier"|"Tourorder"|"Minimuminterchangefee"|"Maximuminterchangefee"|"Cashbackinterchangefee";

# >
# * `Merchant` - Merchant environment.
# * `Private` - Private environment.
# * `Public` - Public environment.
# * `Branch` - Bank environment.
# * `Other` - Other environments, for instance a mall or an airport.
public type transactionenvironmenttypevalues "Merchant"|"Private"|"Public"|"Branch"|"Other";

# >
# * `Mailorder` - Mail order.
# * `Telephoneorder` - Telephone order.
# * `Electroniccommerce` - Electronic commerce.
# * `Televisionpayment` - Payment on television.
# * `Officeorbranch` - Office or branch.
# * `Homebanking` - Home banking.
# * `Financialadvisor` - Financial advisor.
# * `Mobilepayment` - Payment performed through a cardholder mobile device.
# * `Securedelectroniccommerce` - Electronic commerce with cardholder authentication.
# * `Mobilepos` - Payment performed through a merchant mobile device.
public type transactionchanneltypevalues "Mailorder"|"Telephoneorder"|"Electroniccommerce"|"Televisionpayment"|"Officeorbranch"|"Homebanking"|"Financialadvisor"|"Mobilepayment"|"Securedelectroniccommerce"|"Mobilepos";

# >
# * `Cardholder` - A person to whom a payment card is issued and who is authorised to use that card. (a proposed definition for BIAN BOM adapted from ECB)
# 
# * `Cardissuer` - A financial institution that makes payment cards available to cardholders, authorises transactions at point-of-sale (POS) terminals or automated teller machines (ATMs) and guarantees payment to the acquirer for transactions that are in conformity with the rules of the relevant scheme. (a proposed definition for BIAN BOM adapted from ECB)
# * `Cardacceptor` - Entity accepting payment related cards. (ISO20022)
# 
# * `Cardacquirer` - Entity acquiring card payment transactions. (ISO20022)
# 
# * `Merchant` - Party performing the card payment transaction. (ISO20022)
# 
# * `Cardnetwork` - Network for handling the card-based transaction (e.g. Visa, MC, AMEX, Diners, etc.)
# 
# A card network are networks of issuing and acquiring banks through which payment cards of some certain brand are processed. two types of card networks can be pointed out, namely, credit card associations (Visa, MasterCard, Discover, Amex, etc.) and PINless debit card networks (NYCE, PULSE, Maestro, Interlink, Cirrus, etc.).
# 
# Card networks are financial services companies that enables, processes and settles payments between card issuing banks and merchant banks worldwide. Examples are Visa, MasterCard, Discover, RuPay etc.
# 
# A card network is a system of connecting merchants and card issuers.  A middle person that collects funds from card issuer and pays it to the merchant.  Visa and MasterCard are examples of card networks.
# 
# 
# 
# 
public type cardpaymentinvolvementtypevalues "Cardholder"|"Cardissuer"|"Cardacceptor"|"Cardacquirer"|"Merchant"|"Cardnetwork";

# >
# * `Customercancel` - Customer cancellation, for example removing the card before the end of the transaction.
# * `Malfunction` - Suspected malfunction.
# * `Partial` - Completed partially.
# * `Toolateresponse` - Response to the previous message was received too late.
# * `Unabletocomplete` - Unable to complete the transaction after the authorisation response.
# * `Unabletosend` - Unable to deliver the request message to the recipient party.
# * `Timeout` - Timeout while waiting for a response to a request message, or no response was received (for example connection release before receiving the response).
# * `Carddeclined` - Integrated circuit card declines the transaction before or after the authorisation.
# * `Onlinedeclined` - Online authorisation declined the transaction.
# * `Offlinedeclined` - Offline authorisation declined the transaction.
# * `Suspectedfraud` - Card payment transaction fails because the merchant suspect a fraud.
# * `Securityerror` - Security error has occurred in the authorisation response message sent by the acquirer.
# * `Cardcaptured` - ATM manager has requested to capture the card.
# * `Carderror` - Unable to complete transaction with the card.
# * `Customerdecline` - Customer has declined additional fees or a lower amount, transaction fails.
# * `Forgottencard` - Customer has left the card in the ATM or a motorised card reader.
# * `Fullfilmenterror` - Unable to fulfil, for instance dispensing the cash.
# * `Outofcustomerservice` - ATM manager has requested to the ATM to stop customer services.
# * `Unabletocapture` - Unable to capture the card as requested.
# * `Security` - General security error.
# * `Hardware` - Hardware error on the device.
# * `Compromised` - Key is compromised.
# * `Expired` - Key has expired.
# * `Invalidkcv` - Key check value is incorrect.
# * `Keyloaderror` - Error during the key download in the security device.
# * `Cardretained` - Card has been retained by the ATM or the terminal.
# * `Customertimeout` - Customer has not been performed in time an action.
public type failurereasontypevalues "Customercancel"|"Malfunction"|"Partial"|"Toolateresponse"|"Unabletocomplete"|"Unabletosend"|"Timeout"|"Carddeclined"|"Onlinedeclined"|"Offlinedeclined"|"Suspectedfraud"|"Securityerror"|"Cardcaptured"|"Carderror"|"Customerdecline"|"Forgottencard"|"Fullfilmenterror"|"Outofcustomerservice"|"Unabletocapture"|"Security"|"Hardware"|"Compromised"|"Expired"|"Invalidkcv"|"Keyloaderror"|"Cardretained"|"Customertimeout";

# >
# * `Cscmatch` - Card security code match.
# * `Cscnomatch` - No card security code match.
# * `Csctechnical` - Card security code not processed for technical reason.
# * `Cscnottechnical` - Card security code not processed for non-technical reason.
# * `Cscmissing` - Card security code missing in request.
# * `Cscnotused` - Card security code not used by issuer.
public type cscresulttypevalues "Cscmatch"|"Cscnomatch"|"Csctechnical"|"Cscnottechnical"|"Cscmissing"|"Cscnotused";

# >
# * `Addressmatch` - Address numeric match.
# * `Addressnotmatch` - Address numerics do not match.
# * `Addresstechnical` - Address numeric not processed for technical reason.
# * `Addressnottechnical` - Address numeric not processed for non-technical reason.
# * `Addressmissing` - Address numeric missing in request.
# * `Addressnotused` - Address numeric not used by issuer.
# * `Postalmatch` - Postal code matches.
# * `Postalnotmatch` - Postal code does not match.
# * `Postaltechnical` - Postal code not processed for technical reason.
# * `Postalnottechnical` - Postal code not processed for non-technical reason.
# * `Postalmissing` - Postal code missing in request.
# * `Postalnotused` - Postal code not used by issuer.
public type cardholderaddressverificationresulttypevalues "Addressmatch"|"Addressnotmatch"|"Addresstechnical"|"Addressnottechnical"|"Addressmissing"|"Addressnotused"|"Postalmatch"|"Postalnotmatch"|"Postaltechnical"|"Postalnottechnical"|"Postalmissing"|"Postalnotused";

# >
# * `1` - 
# * `0` - 
public type truefalseindicatorvalues "1"|"0";

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
public type arrangementtypevalues "SweepArrangement"|"WithdrawalArrangement"|"DepositArrangement"|"InterestArrangement"|"FeeArrangement"|"LienArrangement"|"InformationArrangement"|"PaymentArrangement"|"EntitlementArrangement"|"PeriodArrangement"|"CollateralArrangement"|"LimitArrangement"|"AccessArrangement"|"CardPaymentArrangement"|"StandingOrderArrangement"|"OverdraftArrangement"|"RepaymentArrangement"|"StatementArrangement"|"CreditTransferArrangement"|"ProductAndServiceArrangement"|"FactoringArrangement"|"RolloverArrangement"|"RestructuringArrangement"|"InsuranceArrangement"|"CollectionArrangement"|"UnderwritingArrangement"|"TerminationArrangement"|"MaturityArrangement";

# >
# * `AllocationModality` - 
# * `CalculationModality` - 
# * `DerivationModality` - 
# * `PaymentModality` - 
# * `ProcessingModality` - 
# * `ApplicationModality` - 
# * `DeliveryModality` - 
public type modalitytypevalues "AllocationModality"|"CalculationModality"|"DerivationModality"|"PaymentModality"|"ProcessingModality"|"ApplicationModality"|"DeliveryModality";

# >
# * `Active` - Status of the restriction is active.
# * `Inactive` - Status of the restriction is inactive.
public type accountrestrictionstatustypevalues "Active"|"Inactive";

# The type of association (e.g. guarantor, co-signer) AccountPartyRole |AccountPartyRole  (https://www.iso20022.org/standardsrepository/type/AccountPartyRole)|Standard|ISO20022 BM ()
public type accountinvolvementtypevalues "PartyIsOwnerOfAccount"|"PartyIsServicerOfAccount"|"PartyIsPayeeOnAccount"|"PartyIsPrimaryOwnerOfAccount"|"PartyIsCo-OwnerOfAccount"|"PartyIsJointOwnerOfAccount";

# The type and purpose for the link ||
# |
public type account_accountrelationshiptypevalues "AccountIsParentAccountForAccount"|"AccountIsSubAccountForAccount"|"AccountIsLinkedToAccount";

# The types of scheduled statement (e.g. balance/mini-statement/annual) ||
# |
public type statementtypevalues "FinancialStatement"|"AccountStatement"|"CustomerStatement";

# >
# * `Onlinepin` - On-line PIN authentication (Personal Identification Number).
# * `Offlinepin` - Off-line PIN authentication (Personal Identification Number).
# * `Signaturecapture` - Electronic signature capture (handwritten signature).
# * `Password` - Authentication by a password.
# * `Biometry` - Biometric authentication of the cardholder.
# * `Cscverification` - Verification of Card Security Code.
# * `Cryptogramverification` - Verification of a cryptogram generated by a chip card or another device, for instance ARQC (Authorisation Request Cryptogram).
# * `Unknownmethod` - Authentication method is performed unknown.
# * `Bypass` - Authentication bypassed by the merchant.
# * `Papersignature` - Handwritten paper signature.
# * `Manualverification` - Manual verification, for example passport or drivers license.
# * `Merchantauthentication` - Merchant-related authentication.
# * `Securecertificate` - Electronic commerce transaction secured with the X.509 certificate of a customer.
# * `Securenocertificate` - Secure electronic transaction without cardholder certificate.
# * `Securedchannel` - Channel-encrypted transaction.
# * `Billingaddressverification` - Cardholder billing address verification.
# * `Cardholderidentificationdata` - Cardholder data provided for verification, for instance social security number, driver license number, passport number.
# * `Passiveauthentication` - Authentication based on statistical cardholder behaviour.
# * `Secureelectroniccommerce` - Authentication performed during a secure electronic commerce transaction.
# * `Shippingaddressverification` - Cardholder shipping address verification.
# * `Tokenauthentication` - Cryptogram generated by the token requestor or a customer device to validate the authorised use of a token.
# * `Paymenttoken` - Verification or authentication related to the use of a payment token, for instance the validation of the authorised use of a token.
# * `Authenticationtoken` - A token is used to verify an already performed authentication.
# * `Mobile` - Customer mobile device.
# * `Other` - Other customer authentication.
# * `Addressdigits` - Digits of the address.
# * `Alienregistrationnumber` - Number assigned by a government agency to identify foreign nationals.
# * `Arqcverification` - Verification of a cryptogram generated by a chip card, for instance an ARQC (Authorisation Request Cryptogram).
# * `Birthdate` - Date of birth of a person.
# * `Cardholdername` - Name of cardholder
# * `Cityofbirth` - City of birth to authenticate a person.
# * `Customeridentification` - Customer number used as a mechanism of authentication.
# * `Driveridentification` - Identification of a driver in a fleet of vehicles.
# * `Driverlicensenumber` - Number assigned by a driving license authority to a person driving a car.
# * `Email` - Electronic mail address
# * `Employeeidentificationnumber` - Number assigned to an employee by an employer.
# * `Employeridentificationnumber` - Number assigned to an employer by a registration authority.
# * `Identitycardnumber` - Number assigned by a national authority to an identity card.
# * `Onetimepassword` - Verification of a one-time password provided by the issuer.
# * `Othercardholderidentification` - Other cardholder data provided for identification.
# * `Othercryptogram` - Verification of a cryptogram generated by a non-card form factor.
# * `Passportnumber` - Number assigned by a passport authority to a passport.
# * `Postalcode` - Verification based on digits of the postal code.
# * `Shippingaddressfrom` - Shipping address from verification.
# * `Shippingaddressto` - Shipping address to verification
# * `Cardholderaddress` - Verification whether the address corresponds to the cardholder's one.
# * `Nonvisiblecsc` - Non visible Card Security Code.
# * `Othernational` - Other type of verification defined at national level.
# * `Otherprivate` - Other type of verification defined at private level
# * `Placeofbirth` - Place of birth of a person.
# * `Socialsecuritynumber` - Number assigned by a social security agency.
# * `Taxidentificationnumber` - Number assigned by a tax authority to an entity.
# * `Accountdigitalsignature` - Account-based digital signature authentication.
# * `Arpcverification` - Response Card Cryptogram (ARPC)  verification.
# * `ATC` - Application Transaction Counter
# * `Offlinebiographics` - Biographics authentication in an offline mode.
# * `Offlinebiometrics` - Biometrics authentication in an offline mode
# * `Offlinedataauthentication` - Authentication of data in an offline mode
# * `Offlinedigitisedsignatureanalysis` - Analysis of signature transmitted offline
# * `Offlinepinencrypted` - PIN generated offline and transmitted encrypted
# * `Offlinepininclear` - PIN generated offline and transmitted in clear
# * `Onlinebiographics` - Biographics authentication in an online mode.
# * `Phonehome` - Customer home phone number.
# * `Phonework` - Customer work phone number
# * `Pkisignature` - PKI (Public Key Infrastructure) based digital signature
# * `Qualifiedcertificate` - QualifiedCertificate
# * `Threeds` - Authentication performed during a secure electronic commerce transaction.
# * `Cardholdercertificateserialnumber` - Serial number of the cardholder's certificate.
# * `Acceptorcertificateserialnumber` - Serial number of the acceptor's certificate.
# * `Nationalidentifier` - Nationally assigned identifier.
public type authenticationmethodtypevalues "Onlinepin"|"Offlinepin"|"Signaturecapture"|"Password"|"Biometry"|"Cscverification"|"Cryptogramverification"|"Unknownmethod"|"Bypass"|"Papersignature"|"Manualverification"|"Merchantauthentication"|"Securecertificate"|"Securenocertificate"|"Securedchannel"|"Billingaddressverification"|"Cardholderidentificationdata"|"Passiveauthentication"|"Secureelectroniccommerce"|"Shippingaddressverification"|"Tokenauthentication"|"Paymenttoken"|"Authenticationtoken"|"Mobile"|"Other"|"Addressdigits"|"Alienregistrationnumber"|"Arqcverification"|"Birthdate"|"Cardholdername"|"Cityofbirth"|"Customeridentification"|"Driveridentification"|"Driverlicensenumber"|"Email"|"Employeeidentificationnumber"|"Employeridentificationnumber"|"Identitycardnumber"|"Onetimepassword"|"Othercardholderidentification"|"Othercryptogram"|"Passportnumber"|"Postalcode"|"Shippingaddressfrom"|"Shippingaddressto"|"Cardholderaddress"|"Nonvisiblecsc"|"Othernational"|"Otherprivate"|"Placeofbirth"|"Socialsecuritynumber"|"Taxidentificationnumber"|"Accountdigitalsignature"|"Arpcverification"|"ATC"|"Offlinebiographics"|"Offlinebiometrics"|"Offlinedataauthentication"|"Offlinedigitisedsignatureanalysis"|"Offlinepinencrypted"|"Offlinepininclear"|"Onlinebiographics"|"Phonehome"|"Phonework"|"Pkisignature"|"Qualifiedcertificate"|"Threeds"|"Cardholdercertificateserialnumber"|"Acceptorcertificateserialnumber"|"Nationalidentifier";

# >
# * `ChannelAccess` - 
# * `ProductAndServiceAccess` - 
# * `DeviceAccess` - 
# * `APIAccess` - 
public type pointofaccesstypevalues "ChannelAccess"|"ProductAndServiceAccess"|"DeviceAccess"|"APIAccess";

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
public type accounttypevalues "DebitAccount"|"CreditAccount"|"VostroAcount"|"NostroAccount"|"PaymentAccount"|"SettlementAccount"|"SavingAccount"|"CurrentAccount"|"CashAccount"|"LoanAccount"|"IndividualAccount"|"JointAccount"|"LiquidationAccount"|"ProvisionAccount"|"PartnershipAccount"|"InvestmentAccount";

# Key dates associated with the account (e.g. opening date, closing date) Account/OpeningDate|Account/OpeningDate (https://www.iso20022.org/standardsrepository/type/Account)|Standard|ISO20022 BM ()
public type accountdatetimetypevalues "OpeningDate"|"ClosingDate"|"BlockingDate"|"MaturityDate"|"LiveDate"|"RenewalDate";

# >
# * `BBAN` - Basic Bank Account Number (BBAN) - identifier used nationally by financial institutions, ie, in individual countries, generally as part of a National Account Numbering Scheme(s), to uniquely identify the account of a customer. (ISO20022)
# 
# .
# * `IBAN` - International Bank Account Number (IBAN) - identifier used internationally by financial institutions to uniquely identify the account of a customer. Further specifications of the format and content of the IBAN can be found in the standard ISO 13616 "Banking and related financial services - International Bank Account Number (IBAN)" version 1997-10-01, or later revisions. (ISO20022)
# 
# An identifier used internationally by financial institutions to uniquely identify the account of a customer at a financial institution, as described in the latest edition of the international standard ISO 13616. "Banking and related financial services - International Bank Account Number (IBAN)". (OBExternalAccountIdentification4Code)
# * `UPIC` - Universal Payment Identification Code (UPIC) - identifier used by the New York Clearing House to mask confidential data, such as bank accounts and bank routing numbers. UPIC numbers remain with business customers, regardless of banking relationship changes. (ISO20022)
# * `AccountNumber` - String of characters (mainly numbers) used to identify an account.(ISO20022)
# 
# * `PAN` - Primary Account Number - identifier scheme used to identify a card account. (OBExternalAccountIdentification4Code)
# * `Paym` - Paym Scheme to make payments via mobile (OBExternalAccountIdentification4Code)
# * `Wallet` - A primary and unique account identifier used to identify a wallet.
# An ASPSP must document on their developer portal, the payment methods that supports this account identifier.(OBExternalAccountIdentification4Code)
# * `SortCodeAndAccountNumber` - Sort Code and Account Number - identifier scheme used in the UK by financial institutions to identify the account of a customer. The identifier is the concatenation of the 6 digit UK sort code and 8 digit account number. (UK Open Banking)
public type accountidentificationtypevalues "BBAN"|"IBAN"|"UPIC"|"AccountNumber"|"PAN"|"Paym"|"Wallet"|"SortCodeAndAccountNumber";

# >
# * `Enabled` - Account can be used for its intended purpose.
# * `Disabled` - Account cannot be used for its intended purpose, either temporarily or permanently.
# * `Deleted` - Account cannot be used any longer.
# * `Proforma` - Account is temporary and can be partially used for its intended purpose. The account will be fully available for use when the account servicer has received all relevant documents.
# * `Pending` - Account change is pending approval.
public type accountstatustypevalues "Enabled"|"Disabled"|"Deleted"|"Proforma"|"Pending";

# >
# * `OpeningBalance` - Book balance of the account at the beginning of the account servicer's business day. It always equals the closing book balance from the previous business day. Note: the available balance at the beginning of the account servicer's business day may be different from the closing book balance from the previous business day. (ISO20022)
# * `ClosingBalance` - Balance of the account at the end of the account servicer's business day. It is the sum of the opening balance at the beginning of the day and all entries booked to the account during the account servicer's business day. (ISO20022)
# * `CurrentBalance` - Balance of the account at a precise moment in time. (ISO20022)
# * `AvailableBalance` - Balance of money or securities that is at the disposal of the account owner on the date specified. (ISO20022)
# * `LedgerBalance` - Ledger balance refers to posted transactions (e.g. limit authorisation amount - posted transactions). (ISO20022)
# * `ReserveBalance` - 
# * `FreeBalance` - 
# * `PrincipalBalance` - 
# * `ClosingAvailable` - Closing balance of amount of money that is at the disposal of the account owner on the date specified.
# * `ClosingBooked` - Balance of the account at the end of the pre-agreed account reporting period. It is the sum of the opening booked balance at the beginning of the period and all entries booked to the account during the pre-agreed account reporting period.
# * `ForwardAvailable` - Forward available balance of money that is at the disposal of the account owner on the date specified.
# * `Information` - Balance for informational purposes.
# * `InterimAvailable` - Available balance calculated in the course of the account servicer's business day, at the time specified, and subject to further changes during the business day. The interim balance is calculated on the basis of booked credit and debit items during the calculation time/period specified.
# * `InterimBooked` - Balance calculated in the course of the account servicer's business day, at the time specified, and subject to further changes during the business day. The interim balance is calculated on the basis of booked credit and debit items during the calculation time/period specified.
# * `OpeningAvailable` - Opening balance of amount of money that is at the disposal of the account owner on the date specified.
# * `OpeningBooked` - Book balance of the account at the beginning of the account reporting period. It always equals the closing book balance from the previous report.
# * `PreviouslyClosedBooked` - Balance of the account at the previously closed account reporting period. The opening booked balance for the new period has to be equal to this balance.
# Usage: the previously booked closing balance should equal (inclusive date) the booked closing balance of the date it references and equal the actual booked opening balance of the current date.
# * `Expected` - Balance, composed of booked entries and pending items known at the time of calculation, which projects the end of day balance if everything is booked on the account and no other entry is posted.
public type balancetypevalues "OpeningBalance"|"ClosingBalance"|"CurrentBalance"|"AvailableBalance"|"LedgerBalance"|"ReserveBalance"|"FreeBalance"|"PrincipalBalance"|"ClosingAvailable"|"ClosingBooked"|"ForwardAvailable"|"Information"|"InterimAvailable"|"InterimBooked"|"OpeningAvailable"|"OpeningBooked"|"PreviouslyClosedBooked"|"Expected";

# >
# * `Bilateral` - Balance calculated regarding one member in the system. (ISO20022)
# * `Multilateral` - Balance calculated regarding all members in the system. (ISO20022)
public type balancecounterpartytypevalues "Bilateral"|"Multilateral";

# >
# * `Adjustment` - Balance to be held in the settlement account in order to comply with the average reserve due, in the event that the bank's balance is equal to the reserve due during the remaining days of the maintenance period.
# * `Basecurrency` - Balance representing the amount in the domestic or base accounting currency.
# * `Blocked` - Balance representing the regulatory reserve that a financial institution must have with the account servicing institution, eg, the minimum credit balance a financial institution is to keep with its Central Bank for mandatory reserve purposes. In some countries, a blocked balance is known as a 'reserve' balance.
# * `Blockedfunds` - Balance representing funds that cannot be touched by the account owner.
# * `Daylightoverdraft` - Balance representing the intra day overdraft granted by the Central Bank to financial institutions participating in a RTGS system. This balance may vary over time and shall be offset at the end of the day.
# * `Eligibleassets` - Balance representing the potential loan a Central Bank would make in cash if the collateral is pledged, eg, securities available and eligible as collateral with the Central Bank.
# * `Firmcollateralization` - Balance representing the forecast of the cash-equivalent resulting from evaluation of existing holdings at CSD that are qualified to serve as collateral.
# * `Amountsthathavebeenusedtoserveasfirmcollateral` - Balance representing the cash equivalent resulting from evaluation of existing holdings at CSD that are qualified to serve as collateral and have been used as collateral.
# * `Securitiesforecast` - Balance representing the total of all balance types representing the forecast of transactions to settle, blocked items, custody transactions and corporate actions cash disbursements.
# * `Netfunding` - Balance representing the net amount to be funded resulting from the difference between the total of all transactions with a cash impact and the existing cash coverage.
# * `Intermediate` - Balance representing an intermediate amount such as the opening or closing balance incrementally carried forward from one page to the next in a multi-page statement or report.
# * `Localcurrency` - Balance representing the amount in the local market currency for which the asset is held.
# * `Limitrelated` - Balance of a specific limit value, eg, a bilateral balance is calculated in relation to a given bilateral limit.
# * `Reservedliquidity` - Balance representing the amount that a financial institution has set aside for a specific reason and which is therefore not available. In the context of CSDs, reservation of liquidity made to meet settlement obligations.
# * `Securitiespending` - Balance of securities pending delivery, such as orders to sell securities have been executed but settlement of the open transactions has not been confirmed.
# * `Payinpayout` - Balance representing the fictive amount of automated direct debits or payment based on standing arrangements between the CSD and the user. Usage: Pay-Ins and Pay-Outs can be different based on individual payment instructions or available funds.
# * `Progressiveaverage` - Average of the daily balances on the account used to fulfil the reserve requirements calculated from the beginning of the maintenance period.
# * `Reserve` - Balance representing the regulatory reserve that a financial institution must have with the account servicing institution, eg, the minimum credit balance a financial institution is to keep with its Central Bank for mandatory reserve purposes.
# * `Selfcollateralization` - Balance representing the forecast of the cash-equivalent resulting from evaluation of the net incoming balance of securities qualified to serve as collateral for which settlement instructions are held at.
# * `Amountsthathavebeenusedtoserveasselfcollateral` - Balance representing the cash-equivalent resulting from evaluation of incoming securities, qualified to serve as collateral and actually used as collateral, which have been settled during the settlement process.
# * `Threshold` - Balance representing the amount that will be destined for investment. Difference between available balance and threshold for investment limit.
public type balancesubtypevalues "Adjustment"|"Basecurrency"|"Blocked"|"Blockedfunds"|"Daylightoverdraft"|"Eligibleassets"|"Firmcollateralization"|"Amountsthathavebeenusedtoserveasfirmcollateral"|"Securitiesforecast"|"Netfunding"|"Intermediate"|"Localcurrency"|"Limitrelated"|"Reservedliquidity"|"Securitiespending"|"Payinpayout"|"Progressiveaverage"|"Reserve"|"Selfcollateralization"|"Amountsthathavebeenusedtoserveasselfcollateral"|"Threshold";

# >
# * `BaseCurrency` - Base currency of the account. (ISO20022)
# 
# * `ReportingCurrency` - Currency used to calculate and report the balance and related entries of an account. (ISO20022)
# 
# * `SecondaryCurrency` - 
# * `TransferCurrency` - Currency of the amount to be transferred which may be different from the currency of the debtor's account. (ISO20022)
public type currencytypevalues "BaseCurrency"|"ReportingCurrency"|"SecondaryCurrency"|"TransferCurrency";

# >
# * `Fullyallocated` - 
# * `Partiallyallocated` - 
# * `Earmarked` - Not allocated, merely earmarked
public type allocationstatustypevalues "Fullyallocated"|"Partiallyallocated"|"Earmarked";

# >
# * `Acceptedtechnicalvalidation` - Authentication and syntactical and semantical validation are successful.
# * `Received` - Payment initiation has been received by the receiving agent.
# * `Partiallyaccepted` - A number of transactions have been accepted, whereas another number of transactions have not yet achieved 'accepted' status.
# * `Rejected` - Payment initiation or individual transaction included in the payment initiation has been rejected.
# * `Pending` - Payment initiation or individual transaction included in the payment initiation is pending.  Further checks and status update will be performed.
# * `Acceptedcustomerprofile` - Preceding check of technical validation was successful. Customer profile check was also successful.
# * `Acceptedsettlementinprocess` - All preceding checks such as technical validation and customer profile were successful and therefore the payment initiation has been accepted for execution.
# * `Acceptedsettlementcompleted` - Settlement on the debtor's account has been completed.
# * `Accepted` - Request is accepted.
# * `Acceptedcancellationrequest` - Cancellation is accepted.
# * `Rejectedcancellationrequest` - Cancellation request is rejected
# * `Acceptedwithchange` - Instruction is accepted but a change will be made, such as date or remittance not sent.
# * `Partiallyacceptedcancellationrequest` - Cancellation is partially accepted.
# * `Pendingcancellationrequest` - Cancellation request is pending.
# * `Acceptedcreditsettlementcompleted` - Settlement on the creditor's account has been completed.
# * `Paymentcancelled` - Payment is cancelled.
# * `Nocancellationprocess` - There is no cancellation process ongoing
public type paymenttransactionstatustypevalues "Acceptedtechnicalvalidation"|"Received"|"Partiallyaccepted"|"Rejected"|"Pending"|"Acceptedcustomerprofile"|"Acceptedsettlementinprocess"|"Acceptedsettlementcompleted"|"Accepted"|"Acceptedcancellationrequest"|"Rejectedcancellationrequest"|"Acceptedwithchange"|"Partiallyacceptedcancellationrequest"|"Pendingcancellationrequest"|"Acceptedcreditsettlementcompleted"|"Paymentcancelled"|"Nocancellationprocess";

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
public type paymentpurposevalues "Salarypayment"|"Treasurypayment"|"Advancepayment"|"Agriculturaltransfer"|"Alimonypayment"|"Childbenefit"|"Unemploymentdisabilitybenefit"|"Bonuspayment."|"Cashmanagementtransfer"|"Capitalbuilding"|"Charitypayment"|"Collectionpayment"|"Commoditytransfer"|"Commercialpayment"|"Commission"|"Costs"|"Copyright"|"Dividend"|"Foreignexchange"|"Purchasesaleofgoods"|"Governmentpayment"|"Instalmenthirepurchaseagreement"|"Intracompanypayment"|"Insurancepremium"|"Interest"|"Licensefee"|"Loan"|"Loanrepayment"|"Netting"|"Payroll"|"Pensionpayment"|"Refund"|"Rent"|"Royalties"|"Purchasesaleofservices"|"Securities"|"Socialsecuritybenefit"|"Subscription"|"Taxpayment"|"Valueaddedtaxpayment"|"Consumerthirdpartyconsolidatedpayment"|"Debitcollectionpayment"|"Supplierpayment"|"Hedging"|"Multipleservicetypes"|"Nototherwisespecified"|"Cardpayment"|"Creditcardbill"|"Ferry"|"Air"|"Bus"|"Railway"|"Convalescentcarefacility"|"Dentalservices"|"Anesthesiaservices"|"Homehealthcare"|"Hospitalcare"|"Intermediatecarefacility"|"Longtermcarefacility"|"Medicalservices"|"Visioncare"|"Durablemedicaleequipment"|"Cabletvbill"|"Electricitybill"|"Gasbill"|"Telephonebill"|"Othertelecomrelatedbill"|"Waterbill"|"Study"|"Pricepayment"|"Installment"|"Recurringinstallmentpayment"|"Openingfee"|"Cancellationfee"|"Governmentinsurance"|"Insurancepremiumcar"|"Laborinsurance"|"Lifeinsurance"|"Propertyinsurance"|"Healthinsurance"|"Carloanprincipalrepayment"|"Housingloanrepayment"|"Companysocialloanpaymenttobank"|"Estatetax"|"Housingtax"|"Incometax"|"Netincometax"|"Businessexpenses"|"Trustfund"|"Networkcharge"|"Networkcommunication"|"Receiptpayment"|"Paymentterms"|"Other"|"Withholding";

# >
# * `RequestedExecutionDate` - Date at which the initiating party requests the clearing agent to process the payment. ISO20022
# Usage: This is the date on which the debtor's account is to be debited. If payment by cheque, the date when the cheque must be generated by the bank. 
# * `AcceptanceDate` - Date and time at which all processing conditions for execution of the payment are met and adequate financial cover is available at the account servicing agent. ISO20022
# * `CreationDate` - Date and time at which the payment execution was created by the instructing agent. ISO20022
# * `ValueDate` - Date on which a payment must be executed (ISO20022)
# * `DueDate` - Due date for the payment. (ISO20022)
# * `ExpiryDate` - 
public type paymentdatetimetypevalues "RequestedExecutionDate"|"AcceptanceDate"|"CreationDate"|"ValueDate"|"DueDate"|"ExpiryDate";

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
# * `Cashletter` - Transaction is a cash letter. A cash letter is a payment instrument in the form of a covering letter, whereby a financial institution, ie, the remitting bank, requests credit for one or more financial documents under usual reserve, ie, subject to final payment.
# * `Documentarycredit` - Transaction is a documentary credit from one banker to another, authorising the payment of a specified sum of money to the person named in the document, based on specified conditions.
# * `Billofexchange` - Transaction is a written order from a drawer to a drawee to pay a specified sum of money upon demand, or on a specified date, to the drawer or to a third party specified by the drawer. A bill of exchange is also called a draft.
# * `Collection` - Transaction is a collection. A collection is the act of sending a cheque, bill of exchange or another financial instrument to the prospective financial institution for payment.
# * `Cashmanagementtransfer` - Transaction is a general cash management instruction.
# * `Sweepaccount` - Transaction relates to a cash management instruction, requesting a sweep of the account of the debtor.
# * `Topaccount` - Transaction is a cash management instruction, requesting to top the account of the debtor above a certain floor amount. The floor amount, if not pre-agreed by the parties involved, may be specified.
# * `Zerobalanceaccount` - Transaction is a cash management instruction, requesting to zero balance the account of the debtor.
# * `Standingfacilities` - Payment is linked to overnight deposits and the marginal lending facility.
# * `Swiftpayservicelevelcredit` - Transaction is a credit transfer to be processed according to the SWIFTPay Service Level.
# * `Priorityservicelevelcredit` - Transaction is a credit transfer to be processed according to the Priority Service Level.
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
# * `Withholdingtax` - Transaction is a payment of withholding tax.
# * `Taxpayment` - Transaction is a payment of taxes.
# * `Miscellaneous` - Transaction is for an unspecified reason. Miscellaneous is to be used only when no explicit code is available.
# * `Overnightdeposit` - Transaction is linked to an overnight deposit.
# * `Marginallending` - Transaction is linked to the marginal lending facility.
# * `Other` - Specifies that a proprietary code must be indicated.
# * `Upfront` - Transaction is an initial payment made by one of the counterparties  either to bring a transaction to fair value or for any other reason that may be the cause of an off-market transaction.
# * `Unwind` - Transaction is the final settlement payment made when a transaction is unwound prior to its end date or a payment that may result due to the full termination of derivative transaction(s).
# * `Principalexchange` - Transaction is an exchange of notional values for cross-currency swaps.
public type paymenttypevalues "Cashtransaction"|"Domesticpayment"|"Domestichighvaluepayment"|"Domesticprioritypayment"|"Crossborderpayment"|"Crossborderprioritypayment"|"Crossborderhighvaluepayment"|"Thirdcurrencypayment"|"Thirdcurrencyhighvaluepayment"|"Thirdcurrencyprioritypayment"|"Tradesettlementpayment"|"Foreignexchange"|"Equivalentamount"|"Loan"|"Loanrepayment"|"Securities"|"Lockbox"|"Dividend"|"Crossedcheque"|"Opencheque"|"Ordercheque"|"Circularcheque"|"Travellerscheques"|"Bankdraft"|"Cashletter"|"Documentarycredit"|"Billofexchange"|"Collection"|"Cashmanagementtransfer"|"Sweepaccount"|"Topaccount"|"Zerobalanceaccount"|"Standingfacilities"|"Swiftpayservicelevelcredit"|"Priorityservicelevelcredit"|"Standardservicelevelcredit"|"Liquiditytransfer"|"Advancepayment"|"Valuedateadjustment"|"Dvpgross"|"Dvpnet"|"Netting"|"Limitpayment"|"Backup"|"Expresspayment"|"Centralbankoperation"|"Clspayment"|"Eurodomesticpayment"|"Agriculturaltransfer"|"Alimonypayment"|"Balanceretail"|"Bonuspayment."|"Brokeragefee"|"Capitalbuilding"|"Charitypayment"|"Childbenefit"|"Commercialcredit"|"Commission"|"Commoditytransfer"|"Costs"|"Copyright"|"Governmentpayment"|"Instalmenthirepurchaseagreement"|"Insurancepremium"|"Intracompanypayment"|"Interest"|"Licensefee"|"Metals"|"Pensionpayment"|"Purchasesaleofgoods"|"Refund"|"Rent"|"Royalties"|"Purchasesaleofservices"|"Salarypayment"|"Socialsecuritybenefit"|"Standingorder"|"Subscription"|"Treasurystatepayment"|"Unemploymentdisabilitybenefit"|"Valueaddedtaxpayment"|"Withholdingtax"|"Taxpayment"|"Miscellaneous"|"Overnightdeposit"|"Marginallending"|"Other"|"Upfront"|"Unwind"|"Principalexchange";

# >
# * `Fax` - Remittance advice information must be faxed.
# * `Electronicdatainterchange` - Remittance advice information must be sent through Electronic Data Interchange (EDI).
# * `Uniformresourceidentifier` - Remittance advice information needs to be sent to a Uniform Resource Identifier (URI). URI is a compact string of characters that uniquely identify an abstract or physical resource. URI's are the super-set of identifiers, such as URLs, email addresses, ftp sites, etc, and as such, provide the syntax for all of the identification schemes.
# * `Email` - Remittance advice information must be sent through e-mail.
# * `Post` - Remittance advice information must be sent through postal services.
# * `SMS` - Remittance advice information must be sent through by phone as a short message service (SMS).
public type remittancedeliverymethodtypevalues "Fax"|"Electronicdatainterchange"|"Uniformresourceidentifier"|"Email"|"Post"|"SMS";

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
public type paymenttimevalues "Paymentondelivery"|"Endofmonthofdelivery"|"Endofperiodafterdelivery"|"Endofperiodafterendofdeliverymonth"|"Paymentonreceiptofinvoice"|"Endofperiodafterendofreceiptmonth"|"Endofperiodafterreceipt"|"Endofmonthofreceipt"|"Endofperiodaftermatch"|"Endofperiodaftershipmentdate"|"Endofperiodafterpurchaseorderdate"|"Endofperiodafterbaselineestablishment"|"Endofperiodafterinvoicedate";

# >
# * `Cheque` - Written order to a bank to pay a certain amount of money from one person to another person.
# * `Credittransfer` - Transfer of an amount of money in the books of the account servicer.
# * `Directdebit` - Collection of an amount of money from the debtor's bank account by the creditor. The amount of money and dates of collections may vary.
# * `Transferadvice` - Transfer of an amount of money in the books of the account servicer. An advice should be sent back to the account owner.
# * `Direct` - Direct method.
# * `Classical` - Classical method.
public type paymentmethodtypevalues "Cheque"|"Credittransfer"|"Directdebit"|"Transferadvice"|"Direct"|"Classical";

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
public type paymentservicetypevalues "CreditTransferService"|"StandingOrderService"|"DirectDebitService"|"CardPaymentService"|"WithdrawService"|"DepositService"|"OverdraftService"|"MoneyRemittanceService"|"StatementService";

# >
# * `Realtimegrosssettlementsystem` - Clearing channel is a real-time gross settlement system.
# * `Realtimenetsettlementsystem` - Clearing channel is a real-time net settlement system.
# * `Masspaymentnetsystem` - Clearing channel is a mass payment net settlement system.
# * `Booktransfer` - Payment through internal book transfer.
public type clearingchanneltypevalues "Realtimegrosssettlementsystem"|"Realtimenetsettlementsystem"|"Masspaymentnetsystem"|"Booktransfer";

# >
# * `Urgent` - Priority level is urgent (highest priority possible).
# * `High` - Priority level is high.
# * `Normal` - Priority level is normal.
# * `Low` - Priority level is low.
public type priorityvaluetypes "Urgent"|"High"|"Normal"|"Low";

# >
# * `Pendingprocessing` - Processing of the instruction is pending.
# * `Acknowledgedaccepted` - Instruction has been acknowledged and accepted and is validated for further processing.
# * `Rejected` - Instruction has been rejected.
# * `Accepted` - Instruction has been accepted and is validated for further processing.
# * `Completed` - Processing has been completed.
# * `Notreceived` - No instruction has been received (to be used in a reminder).
# * `Cancelled` - Instruction has been cancelled.
# * `Beingcancelled` - Cancel request is being processed.
# * `Receivedbyissuerorregistrar` - Instruction has been received by Issuer.
# * `Pending` - Instruction is pending.
# * `Standinginstruction` - Standing instruction is applied.
# * `Queued` - Instruction is queued.
# * `Cancelledbysubcustodian` - Instruction has been cancelled by the agent, for example, due to an event deadline extension.
# * `Forwarded` - Accepted and sent along the chain.
public type instructionstatustypevalues "Pendingprocessing"|"Acknowledgedaccepted"|"Rejected"|"Accepted"|"Completed"|"Notreceived"|"Cancelled"|"Beingcancelled"|"Receivedbyissuerorregistrar"|"Pending"|"Standinginstruction"|"Queued"|"Cancelledbysubcustodian"|"Forwarded";

# >
# * `ElectronicAddress` - Address which is accessed by electronic means. ISO20022
# * `PostalAddress` - Information that locates and identifies a specific address. ISO20022
# * `PhoneNumber` - Collection of information that identifies a phone address. ISO20022
# * `Socialnetworkaddress` - A social network such as Facebook, Twitter, etc.
public type contactpointtypevalues "ElectronicAddress"|"PostalAddress"|"PhoneNumber"|"Socialnetworkaddress";

# >
# * `Payer/Debtor` - Party who holds a payment account and allows a payment order from that payment account, or, where there is no payment account, a party who gives a payment order.
# * `PayeeBank/CreditorAgent` - Financial institution servicing an account for the payee.
# * `Payee/Creditor` - Party who is the intended recipient of funds which have been the subject of a payment transaction.
# * `PayerBank/DebtorAgent` - Financial institution servicing an account for the payer.
# * `Initiator` - Party initiating the payment to an agent.
# * `PSU` - PSU means a natural or legal person making use of a payment service in the capacity of payer or payee; (PSD)
# * `PSP` - PSP means a payment service provider falling under any of the categories referred to in Article 1(1) of Directive 2007/64/EC and the legal and natural persons referred to in Article 26 of Directive 2007/64/EC, but excludes the bodies listed in Article 2 of Directive 2006/48/EC of the European Parliament and of the Council of 14 June 2006 relating to the taking up and pursuit of the business of credit institutions ( 1 ) benefiting from a waiver under Article 2(3) of Directive 2007/64/EC; (PSD)
# * `UltimateDebtor` - Ultimate party that owes an amount of money to the (ultimate) creditor.
# * `UltimateCreditor` - Ultimate party to which an amount of money is due.
public type paymentinvolvementtypevalues "Payer/Debtor"|"PayeeBank/CreditorAgent"|"Payee/Creditor"|"PayerBank/DebtorAgent"|"Initiator"|"PSU"|"PSP"|"UltimateDebtor"|"UltimateCreditor";

# >
# * `InterestAllocationTransaction` - 
# * `InterestPaymentTransaction` - 
# * `InterestAdjustmentTransaction` - 
public type interesttransactiontypevalues "InterestAllocationTransaction"|"InterestPaymentTransaction"|"InterestAdjustmentTransaction";

# >
# * `Fixed` - Indicates that the type of interest is fixed.
# * `Floatingratenote` - Indicates that the type of interest is a floating rate note.
# * `Dualbasis` - Indicates that the type of interest is a dual basis.
# * `Index` - Indicates that the type of interest is index.
# * `Discounted` - Indicates that the type of interest is discounted.
# * `Zerocoupon` - Indicates that the type of interest is a zero coupon.
# * `Exinterest` - Indicates deal price excluding accrued interest.
# * `Cuminterest` - Indicates deal price including accrued interest.
public type interesttypevalues "Fixed"|"Floatingratenote"|"Dualbasis"|"Index"|"Discounted"|"Zerocoupon"|"Exinterest"|"Cuminterest";

# >
# * `Annual` - Event takes place every year or once a year.
# * `Monthly` - Event takes place every month or once a month.
# * `Quarterly` - Event takes place every three months or four times a year.
# * `Semiannual` - Event takes place every six months or two times a year.
# * `Weekly` - Event takes place once a week.
# * `Daily` - Event takes place every day.
# * `Adhoc` - Event takes place on request or as necessary.
# * `Intraday` - Event takes place several times a day.
# * `Overnight` - Event takes place overnight.
# * `Tendays` - Event takes place every ten business days.
# * `Fortnightly` - Event takes place every two weeks.
# * `Triggeredbymovement` - Event takes place at the end of the day if there was a movement on the account, otherwise nothing is sent that day.
# * `Never` - Event does never take place.
# * `Rate` - Event takes place based on a change of a rate.
# * `Oncreditevent` - Event occurs due to a credit event occurring for an issuer.
# * `Upfront` - Event that takes place at the initiation of a trade or agreement.
# * `Onexpiry` - Event occurs on expiry of a financial contract.
# * `Hourly` - Event takes place every hours.
public type frequencytypevalues "Annual"|"Monthly"|"Quarterly"|"Semiannual"|"Weekly"|"Daily"|"Adhoc"|"Intraday"|"Overnight"|"Tendays"|"Fortnightly"|"Triggeredbymovement"|"Never"|"Rate"|"Oncreditevent"|"Upfront"|"Onexpiry"|"Hourly";

# >
# * `Fixed` - Rate is fixed.
# * `Forfeit` - No specific repurchase rate applies to the transaction Repo, only a forfeit.
# * `Variable` - Rate is variable.
# * `Scheduled` - Rate of the scheduled payment.
# * `Unscheduled` - Rate of the unscheduled payment.
# * `Discount` - Interest rate type is Discount.
# * `Fixedrateunderlyingexposureforlife` - Interest rate type is Fixed rate underlying exposure (for life).
# * `Fixedrateunderlyingexposurewithcompulsoryfutureswitchtofloating` - Interest rate type is Fixed rate underlying exposure with compulsory future switch to floating.
# * `Fixedwithfutureperiodicresets` - Interest rate type is Fixed with future periodic resets.
# * `Floatinglinkedtoindex` - Interest rate type is Floating rate underlying exposure linked to one index that will revert to another index in the future.
# * `Floatingrateunderlyingexposureforlife` - Interest rate type is Floating rate underlying exposure (for life).
# * `Floatingrateunderlyingexposurewithcap` - Interest rate type is Floating rate underlying exposure with cap.
# * `Floatingrateunderlyingexposurewithfloor` - Interest rate type is Floating rate underlying exposure with floor.
# * `Floatingrateunderlyingexposurewithfloorandcap` - Interest rate type is Floating rate underlying exposure with both floor and cap.
# * `Modular` - Interest rate type is Modular.
# * `Obligorswapped` - Interest rate type is Obligor Swapped.
# * `Other` - Any other type of interest rate that can be applied.
# * `Swicthoptionality` - Interest rate type is Switch Optionality.
public type interestratetypevalues "Fixed"|"Forfeit"|"Variable"|"Scheduled"|"Unscheduled"|"Discount"|"Fixedrateunderlyingexposureforlife"|"Fixedrateunderlyingexposurewithcompulsoryfutureswitchtofloating"|"Fixedwithfutureperiodicresets"|"Floatinglinkedtoindex"|"Floatingrateunderlyingexposureforlife"|"Floatingrateunderlyingexposurewithcap"|"Floatingrateunderlyingexposurewithfloor"|"Floatingrateunderlyingexposurewithfloorandcap"|"Modular"|"Obligorswapped"|"Other"|"Swicthoptionality";

# >
# * `Simple` - Calculation method by which interest is calculated on the original principal only. Accumulated interest from prior periods is not used in calculations for the following periods. (ISO20022)
# 
# * `Compounding` - Calculation method by which interest is calculated each period on the original principal and all interest accumulated during past periods. (ISO20022)
public type interestcalculationmethodtypevalues "Simple"|"Compounding";

# >
# * `Offered` - 
# * `UnderAssessment` - 
# * `Transferred` - 
# * `Allocated` - 
# * `FreeForAllocation` - 
# * `AllocatedToAnotherLoan` - 
# * `IssuedForExecution` - 
public type collateralassetstatustypevalues "Offered"|"UnderAssessment"|"Transferred"|"Allocated"|"FreeForAllocation"|"AllocatedToAnotherLoan"|"IssuedForExecution";

# >
# * `Letterofcredit` - Instrument issued by a bank substituting its name and credit standing for that of its customer. A letter of credit is a written undertaking of the bank, issued for the account of a customer (the applicant), to honour a demand for payment, upon the beneficiary's compliance with the terms and conditions set forth in the undertaking.
# * `Cash` - Collateral type is cash.
# * `Securities` - Collateral type is securities.
# * `Physicalentities` - Collateral type are physical entities, for example, airplanes for debt issued by the airline industry.
# * `Insurance` - Collateral type is an insurance contract.
# * `Stockcertificate` - Collateral type is stock certificates.
# * `Bond` - Collateral type is bonds.
# * `Bankguarantee` - Collateral type is a bank guarantee.
# * `Other` - Other assets that could be used as collateral.
# * `Commodity` - Collateral type is commodities.
# * `Automobile` - Collateral type is automobile.
# * `Industrialvehicle` - Collateral type is industrial vehicle.
# * `Commercialtruck` - Collateral type is commercial track.
# * `Railvehicle` - Collateral type is rail vehicle.
# * `Nauticalcommercialvehicle` - Collateral type is nautical commercial vehicle.
# * `Nauticalleisurevehicle` - Collateral type is nautical leisure vehicle.
# * `Aeroplane` - Collateral type is aeroplane.
# * `Machinetool` - Collateral type is machine.
# * `Industrialequipment` - Collateral type is industrial equipment.
# * `Officeequipment` - Collateral type is office equipment.
# * `Itequipment` - Collateral type is IT equipment.
# * `Medicalequipment` - Collateral type is medical equipment.
# * `Energyrelatedequipment` - Collateral type is energy related equipment.
# * `Commercialbuilding` - Collateral type is commercial building.
public type collateraltypevalues "Letterofcredit"|"Cash"|"Securities"|"Physicalentities"|"Insurance"|"Stockcertificate"|"Bond"|"Bankguarantee"|"Other"|"Commodity"|"Automobile"|"Industrialvehicle"|"Commercialtruck"|"Railvehicle"|"Nauticalcommercialvehicle"|"Nauticalleisurevehicle"|"Aeroplane"|"Machinetool"|"Industrialequipment"|"Officeequipment"|"Itequipment"|"Medicalequipment"|"Energyrelatedequipment"|"Commercialbuilding";

# >
# * `CreationDate` - 
# * `CapturingDate` - 
# * `VersionDate` - 
# * `ValueDate` - 
# * `IssueDate` - 
public type documentdatetimetypevalues "CreationDate"|"CapturingDate"|"VersionDate"|"ValueDate"|"IssueDate";

# >
# * `Meteredserviceinvoice` - Document is an invoice claiming payment for the supply of metered services, for example gas or electricity supplied to a fixed meter.
# * `Creditnoterelatedtofinancialadjustment` - Document is a credit note for the final amount settled for a commercial transaction.
# * `Debitnoterelatedtofinancialadjustment` - Document is a debit note for the final amount settled for a commercial transaction.
# * `Commercialinvoice` - Document is an invoice.
# * `Creditnote` - Document is a credit note.
# * `Debitnote` - Document is a debit note.
# * `Hireinvoice` - Document is an invoice for the hiring of human resources or renting goods or equipment.
# * `Selfbilledinvoice` - Document is an invoice issued by the debtor.
# * `Remittanceadvicemessage` - Document is a remittance advice sent separately from the current transaction.
# * `Relatedpaymentinstruction` - Document is a linked payment instruction to which the current payment instruction is related, for example, in a cover scenario.
# * `Commercialcontract` - Document is an agreement between the parties, stipulating the terms and conditions of the delivery of goods or services.
# * `Foreignexchangedealreference` - Document is a pre-agreed or pre-arranged foreign exchange transaction to which the payment transaction refers.
# * `Statementofaccount` - Document is a statement of the transactions posted to the debtor's account at the supplier.
# * `Dispatchadvice` - Document is a dispatch advice.
# * `Purchaseorder` - Document is a purchase order.
# * `Structuredcommunicationreference` - Document is a structured communication reference provided by the creditor to identify the referred transaction.
# * `Billoflading` - Document is a shipping notice.
# * `Voucher` - Document is an electronic payment document.
# * `Accountreceivableopenitem` - Document is a payment that applies to a specific source document.
# * `Tradeservicesutilitytransaction` - Document is a transaction identifier as assigned by the Trade Services Utility.
# * `Cashierreceipt` - When the Sale system print the Cashier copy of the Payment receipt.
# * `Customerreceipt` - When the Sale System requires   the POI system to print the Customer receipt.
# * `Journal` - When the POI or the Sale System wants to store a message on the journal printer or electronic journal of the Sale Terminal (it is sometimes a Sale Logging/Journal Printer).
# * `Salereceipt` - When the Sale System requires the POI system to print the Sale receipt.
public type financialdocumenttypevalues "Meteredserviceinvoice"|"Creditnoterelatedtofinancialadjustment"|"Debitnoterelatedtofinancialadjustment"|"Commercialinvoice"|"Creditnote"|"Debitnote"|"Hireinvoice"|"Selfbilledinvoice"|"Remittanceadvicemessage"|"Relatedpaymentinstruction"|"Commercialcontract"|"Foreignexchangedealreference"|"Statementofaccount"|"Dispatchadvice"|"Purchaseorder"|"Structuredcommunicationreference"|"Billoflading"|"Voucher"|"Accountreceivableopenitem"|"Tradeservicesutilitytransaction"|"Cashierreceipt"|"Customerreceipt"|"Journal"|"Salereceipt";

# >
# * `StandardRatePlan` - 
# * `AdjustmentRatePlan` - 
# * `FinalRatePlan` - 
public type rateplantypevalues "StandardRatePlan"|"AdjustmentRatePlan"|"FinalRatePlan";

# >
# * `TaxIdentificationNumber` - 
# * `GlobalIntermediaryIdentificationNumber` - 
public type taxidentificationtypevalues "TaxIdentificationNumber"|"GlobalIntermediaryIdentificationNumber";

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
public type ratetypevalues "Fixed"|"Forfeit"|"Variable"|"Open"|"Unknown"|"Nilpayment"|"Additionaltax"|"Charges"|"Cashinlieuofsecurities"|"Gross"|"Cashincentive"|"Net"|"Sollication"|"Stampduty"|"Stockexchangetax"|"Withholdingtax"|"Transfertax"|"Transactiontax"|"Taxdeferred"|"Taxfeeamount"|"Withholdingofforeigntax"|"Withholdingoflocaltax"|"Imputed"|"Precompte"|"Onetiertax"|"Localtax"|"Scheduled"|"Unscheduled"|"Anyandall";

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
public type taxtypevalues "Valueaddedtaxofzerorate"|"Provincial"|"Nationaltax"|"Statetax"|"Withholdingtax"|"Capitalgaintax"|"Interimprofittax"|"Stampduty"|"Wealthtax"|"Inheritancetax"|"Solidaritysurcharge"|"Taxcredit"|"Equalisation"|"Gifttax"|"Consumptiontax"|"Alternativeminimumtax"|"Localtax"|"Nationalfederaltax"|"Paymentlevytax"|"Stockexchangetax"|"Transactiontax"|"Transfertax"|"Valueaddedtax"|"Localbrokercommission"|"Executingbrokercommission"|"Eutaxretention"|"Aktiengewinn1"|"Aktiengewinn2"|"Zwischengewinn"|"Customstax"|"Other"|"Mietgewinn"|"Germanlocaltax3"|"Germanlocaltax4"|"Germanlocaltax2"|"Withholdingofforeigntax"|"Withholdingoflocaltax"|"Capitallosscredit";

# >
# * `Annual` - Event takes place every year or once a year.
# * `Monthly` - Event takes place every month or once a month.
# * `Quarterly` - Event takes place every three months or four times a year.
# * `Weekly` - Event takes place once a week.
# * `Daily` - Event takes place every day.
# * `Adhoc` - Event takes place on request or as necessary.
# * `Fortnightly` - Event takes place every two weeks.
# * `Hourly` - Event takes place every hours.
# * `Half-Yearly` - 
public type directdebitfrequencyvalues "Annual"|"Monthly"|"Quarterly"|"Weekly"|"Daily"|"Adhoc"|"Fortnightly"|"Hourly"|"Half-Yearly";

# >
# * `FixedAmount` - Direct debit amount is fixed.
# * `VariableAmount` - Direct debit amount is variable.
# * `UsagebasedAmont` - Direct debit amount is based on usage.
# * `Paper` - This is a physical form that the customer fills out, signs, and returns to the organization
# * `Emandate` - It can be completed and signed electronically, often through online forms or secure digital platforms.
public type directdebittypevalues "FixedAmount"|"VariableAmount"|"UsagebasedAmont"|"Paper"|"Emandate";

# >
# * `Active` - The mandate is active.
# * `Inactive` - 
# * `Created` - 
# * `PendingApproval` - 
# * `Cancelled` - The mandate is cancelled.
# * `Expired` - The mandate has passed the end date.
# * `Rejected` - 
# * `Completed` - 
# * `Archived` - 
# * `Failed` - 
# * `Suspended` - The mandate is put on hold.
public type directdebitstatustypevalues "Active"|"Inactive"|"Created"|"PendingApproval"|"Cancelled"|"Expired"|"Rejected"|"Completed"|"Archived"|"Failed"|"Suspended";

# >
# * `First` - First collection of a series of direct debit instructions.
# * `Recurring` - Direct debit instruction where the debtor's authorisation is used for regular direct debit transactions initiated by the creditor.
# * `Final` - Final collection of a series of direct debit instructions.
# * `Oneoff` - Direct debit instruction where the debtor's authorisation is used to initiate one single direct debit transaction.
# * `Represented` - Collection used to re-present previously reversed or returned direct debit transactions.
public type paymentsequencetypevalues "First"|"Recurring"|"Final"|"Oneoff"|"Represented";

# >
# * `Bonuspayment` - Transaction is the payment of a bonus.
# * `Cashmanagementtransfer` - Transaction is a general cash management instruction.
# * `Cardbulkclearing` - A Service that is settling money for a bulk of card transactions, while referring to a specific transaction file or other information like terminal ID, card acceptor ID or other transaction details.
# * `Creditcardpayment` - Transaction is related to a payment of credit card.
# * `Tradesettlementpayment` - Transaction is related to settlement of a trade, eg a foreign exchange deal or a securities transaction.
# * `Debitcardpayment` - Transaction is related to a payment of debit card.
# * `Dividend` - Transaction is the payment of dividends.
# * `Deliveragainstpayment` - Code used to pre-advise the account servicer of a forthcoming deliver against payment instruction.
# * `Epayment` - Transaction is related to ePayment.
# * `Feecollection` - A Service that is settling card transaction related fees between two parties.
# * `Governmentpayment` - Transaction is a payment to or from a government department.
# * `Hedging` - Transaction is related to the payment of a hedging operation.
# * `Irrevocablecreditcardpayment` - Transaction is reimbursement of credit card payment.
# * `Irrevocabledebitcardpayment` - Transaction is reimbursement of debit card payment.
# * `Intracompanypayment` - Transaction is an intra-company payment, ie, a payment between two companies belonging to the same group.
# * `Interest` - Transaction is the payment of interest.
# * `Loan` - Transaction is related to the transfer of a loan to a borrower.
# * `Commercial` - Mobile P2B Payment
# * `Consumer` - Mobile P2P Payment
# * `Otherpayment` - Other payment purpose.
# * `Pensionpayment` - Transaction is the payment of pension.
# * `Represented` - Collection used to re-present previously reversed or returned direct debit transactions.
# * `Reimbursementreceivedcredittransfer` - Transaction is related to a reimbursement for commercial reasons of a correctly received credit transfer.
# * `Receiveagainstpayment` - Code used to pre-advise the account servicer of a forthcoming receive against payment instruction.
# * `Salarypayment` - Transaction is the payment of salaries.
# * `Securities` - Transaction is the payment of securities.
# * `Socialsecuritybenefit` - Transaction is a social security benefit, ie payment made by a government to support individuals.
# * `Supplierpayment` - Transaction is related to a payment to a supplier.
# * `Taxpayment` - Transaction is the payment of taxes.
# * `Trade` - Transaction is related to the payment of a trade finance transaction.
# * `Treasurypayment` - Transaction is related to treasury operations.  E.g. financial contract settlement.
# * `Valueaddedtaxpayment` - Transaction is the payment of value added tax.
# * `Withholding` - Transaction is the payment of withholding tax.
public type paymentcategorypurposetypevalues "Bonuspayment"|"Cashmanagementtransfer"|"Cardbulkclearing"|"Creditcardpayment"|"Tradesettlementpayment"|"Debitcardpayment"|"Dividend"|"Deliveragainstpayment"|"Epayment"|"Feecollection"|"Governmentpayment"|"Hedging"|"Irrevocablecreditcardpayment"|"Irrevocabledebitcardpayment"|"Intracompanypayment"|"Interest"|"Loan"|"Commercial"|"Consumer"|"Otherpayment"|"Pensionpayment"|"Represented"|"Reimbursementreceivedcredittransfer"|"Receiveagainstpayment"|"Salarypayment"|"Securities"|"Socialsecuritybenefit"|"Supplierpayment"|"Taxpayment"|"Trade"|"Treasurypayment"|"Valueaddedtaxpayment"|"Withholding";

# >
# * `Directdebitconfirmedelectronicmandate` - Transaction is related to a direct debit instruction authorized under a confirmed electronic mandate.
# * `Directdebitpapermandatewithpaperauthorization` - Transaction is related to a direct debit instruction authorized under a paper based mandate, supported by paper authorization signed by the debtor.
# * `Directdebitunconfirmedelectronicmandate` - Transaction is related to a direct debit instruction authorized under an unconfirmed electronic mandate requiring confirmation by the debtor.
# * `Batchpaymentsaruba` - Transaction is related to an Instant Credit Transfer under the rules of the Centrale Bank van Aruba, based on the EPC SCT Inst scheme, with a specific batch time-out delay.
# * `Instantpaymentsaruba` - Transaction is related to an Instant Credit Transfer under the rules of the Centrale Bank van Aruba, based on the EPC SCT Inst scheme.
# * `Credittransfers` - Transaction is related to credit transfers
# * `Nonpreauthoriseddirectdebitat` - Transaction is related to a direct debit that is not pre authorised (Einzugsermächtigung).
# * `Preauthoriseddirectdebitat` - Transaction is related to a direct debit that is pre authorised (Abbuchungsauftrag).
# * `Cashperpost` - Transaction is related to cash per post.
# Transaction to ultimate recipient having no bank account. Primary beneficiary is a postal service provider. Funds are paid out by cash. Additional necessary information for address and delivery options need to be attached.
# * `Returnedcredittransfers` - Transaction is related to returned credit transfers.
# * `Truncatedcredittransfers` - Transaction is related to truncated credit transfers.
# Conversion of physical instrument to electonric form for transmission to the paying bank and where the original paper document does not continue in the clearing process..The original instrument rules are retained throughout the life of the instrument.
# Transaction triggered by specific marked and populated paper slip.
# Reconciliation reference is secured by check digits supporting secure optical recognition. All other remittance information is truncated prior transmission.
# * `Directdebits` - Transaction is related to direct debits.
# * `Returneddirectdebits` - Transaction is related to returned direct debits.
# * `Truncatedchecks` - Transaction is related to truncated checks.
# Conversion of physical instrument to electonric form for transmission to the paying bank and where the original paper document does not continue in the clearing process..The original instrument rules are retained throughout the life of the instrument.
# * `Revokedcredittransfers` - Transaction is related to revoked credit transfers
# * `Revokeddirectdebits` - Transaction is related to revoked direct debits.
# * `Revokedreturnedcredittransfers` - Transaction is related to revoked returned credit transfers
# * `Revokedreturneddirectdebits` - Transaction is related to revoked returned direct debits.
# * `Revokedtruncatedchecks` - Transaction is related to revoked truncated checks.
# * `Revokedtruncatedcredittransfers` - Transaction is related to revoked truncated credit transfers.
# * `Cardclearing` - Transaction is related to card clearing.
# * `Nonpreauthoriseddirectdebitde` - Transaction is related to a direct debit that is not pre authorised (Einzugsermächtigung).
# * `Preauthoriseddirectdebitde` - Transaction is related to a direct debit that is pre authorised (Abbuchungsauftrag).
# * `Imagebasedchequecollection` - Transaction is related to the German Image-based Cheque Collection Procedure “Imagegestützter Scheckeinzug - ISE”
# * `Paperlesschequecollection` - Transaction is related to the German Paperless Cheque Collection procedure “Belegloser Scheckeinzug - BSE”
# * `Businesstobusinessdirectdebit` - Transaction is related to a business-to-business direct debit (CSB58).
# * `Businesstocustomerdirectdebit` - Transaction is related to a business-to-customer direct debit (CSB19).
# * `Ancillarysystemtransferinitiation` - Indicates that the payment is sent by an authorized third party on behalf of the participant.
# * `Backuppayment` - Indicates that the payment was initiated manually using a GUI (Graphical User Interface).
# * `Mandatedpayment` - Indicates that the payment is sent by responsible Central Bank on behalf of the participant in case of contingency.
# * `Settlementbanktransferinitiation` - Indicates that the payment is submitted to move  liquidity to the technical account - dedicated to real-time settlement in an external system (for example ancillary system) . The payment is processed in a separate payment queue besides the normal processing.
# * `Preauthoriseddirectdebitaccéléréacceleratedclearing2dayordinairenormalclearing4day` - Transaction is related to an urgent direct debit that is pre authorised (Avis de Prélèvement accéléré).
# * `Preauthoriseddirectdebitordinairenormalclearing4day` - Transaction is related to a direct debit that is pre authorised (Avis de Prélèvement).
# * `Preauthoriseddirectdebitvérifiéverifiedclearing` - Transaction is related to an urgent direct debit that is pre authorised (Avis de Prélèvement vérifié).
# * `Recoveredbillofexchangeorpromissorynote` - LCR - Lettre de Change Relevé (Recovered Bill of Exchange) and BOR - Billet à Orde Relevé (Promissory Note)
# * `Nonpreauthoriseddirectdebitriba` - Transaction is related to a non-pre authorised collection (RIBA).
# * `Preauthorisedrevocabledirectdebit` - Transaction is related to a direct debit that is pre authorised and revocable (RID Ordinario).
# * `Preauthorisedrevocableurgentdirectdebit` - Transaction is related to an urgent direct debit that is pre authorised and revocable (RID Veloce).
# * `Paymentsviainternetownedbycurrence` - Transaction is related to payments via internet owned by Currence.
# * `Instantcredittransfernottimecritical` - The transaction is related to a regular  Credit Transfer and will be instantly processed under the Dutch AOS on top of the EPC SCT scheme.
# * `Instantcredittransfertimecritical` - The transaction is related to an Instant Credit Transfer under the rules of the Dutch AOS on top of the EPC SCT Inst scheme.
# * `Paymentsviainternetownedbycurrenceusinginstantcredittransfer` - Transaction is related to payments via internet owned by Currence which uses an Instant Credit Transfer.
# * `Paymentsviainternetownedbycurrenceusinginstantcredittransfernottimecritical` - Transaction is related to payments via internet owned by Currence which uses a regular  Credit Transfer and will be instantly processed under the Dutch AOS on top of the EPC SCT scheme.
# * `Paymentsviainternetownedbycurrenceusinginstantcredittransfertimecritical` - Transaction is related to payments via internet owned by Currence which uses an Instant Credit Transfer under the rules of the Dutch AOS on top of the EPC SCT Inst scheme.
# * `Dutchdomesticbulkpayment` - Transaction is related to a Domestic payment initiated by PAIN.001
# * `Dutchurgentpayment` - Transaction is related to a Domestic payment initiated by PAIN.001
# * `Paymentviaacceptgiroownedbycurrence` - Transaction is related to payments via Acceptgiro owned by Currence.
# * `Paymentsviastandaarddigitalenota` - Transaction is related to payments via a ‘Standaard Digitale Nota’ InvoiceAcceptgiro payment.
# * `Incidentmanagementcorrection` - Transaction is related to an Incident Management Correction procedure based on the DD infrastructure.
# * `Directdebitinitiatedbythegovernmentwithspecialconditions` - Transaction is related to direct debit scheme owned by the NVB.
# * `Masspaymentbeneficiary` - Transaction is related to mass payment beneficiary.
# * `Masspaymentours` - Transaction is related to mass payment ours.
# * `Masspaymentshared` - Transaction is related to mass payment shared.
# * `Standingorder` - Transaction is related to standing order.
# * `Oneoffauthorisation` - Transaction is related to one-off authorisation.
# * `Oneoffauthorisationcharities` - Transaction is related to one-off authorisation charities.
# * `Oneoffauthorisationconstructionindustry` - Transaction is related to one-off authorisation construction industry.
# * `Oneoffauthorisationtuitionfees` - Transaction is related to one-off authorisation tuition fees.
# * `Standingauthorisationcompanies` - Transaction is related to standing authorisation companies.
# * `Standingauthorisationcompanieswithoutdebtorrevocationright` - Transaction is related to standing authorisation companies without debtor revocation right.
# * `Standingauthorisationgeneral` - Transaction is related to standing authorisation general.
# * `Standingauthorisationlotteries` - Transaction is related to standing authorisation lotteries.
# * `Convertedbankpayment` - Transaction is related to converted (bank) payment.
# Conversion of physical instrument to electonric form for transmission to the paying bank and where the original paper document does not continue in the clearing process.The instrument rules change upon conversion.
# * `Businesspayment` - Transaction is related to business payment
# * `Crossbordercustomercredittransfer` - Transaction is related to cross border customer credit transfer.
# * `Overnight` - Transaction is related to overnight clearing.
# * `Paymentwitheri` - Credit transfer contains Extended Remittance Information (ERI) as defined within the applicable scheme.
# * `Sameday` - Transaction is related to same day clearing.
# * `Corenorefund` - SEPA Core Direct Debit with ‘no refund’ option
# * `Directdebitfixedamount` - SEPA Fixed Amount Direct Debit
# * `Sepadirectdebitcore` - Transaction is related to SEPA direct debit -core.
# * `Sepab2bdirectdebitami` - SEPA B2B Direct Debit AMI based on a paper mandate
# * `Sepabusinesstobusinessdirectdebit` - Transaction is related to SEPA business to business direct debit.
# * `Sepacored1directdebitami` - Optional shorter time cycle (D-1) for SEPA Core Direct Debit AMI based on a paper mandate
# * `Sepacoredirectdebitami` - SEPA Core Direct Debit AMI based on a paper mandate
# * `Sepadirectdebit1daysettlement` - Optional shorter time cycle (D-1) for SEPA Core Direct Debit
# * `Sepafadirectdebitami` - SEPA Fixed Amount Direct Debit AMI based on a paper mandate
# * `Instantcredittransfer` - Transaction is related to an Instant Credit Transfer.
# Use case example: SEPA Instant Credit Transfer (SCT Inst)
# * `Authenticateddirectdebit` - Transaction is authenticated direct debit for domestic use.
# * `Unauthenticateddirectdebit` - Transaction is unauthenticated direct debit for domestic use.
# * `Cashconcentrationintragroup` - Transaction is related to an intra-group bank initiated cash management payment
# * `Banktransfer` - Transaction is related to a bank transfer.
# * `Checksamedaysettlementwire` - Transaction is related to check same day settlement wire.
# * `Customertransfer` - Transaction is related to customer transfer.
# * `Customertransferplus` - Transaction is related to a customer transfer, which may include information related to a cover payment or extended remittance information.
# * `Deposittosendersaccount` - Transaction is related to deposit to sender's account.
# * `Fedfundsreturned` - Transaction is related to Fed funds returned.
# * `Fedfundssold` - Transaction is related to Fed funds sold.
# * `Nonvalueservicemessage` - Transaction is related to non-value service message.
# * `Drawdownresponsevaluetohonoradrawdownrequest` - Transaction is related to drawdown response (value) to honor a drawdown request.
# * `Banktobankdrawdownrequestorresponsenonvalue` - Transaction is related to bank-to-bank drawdown request or response (non-value)
# * `Customerorcorporatedrawdownrequestorresponsenonvalue` - Transaction is related to customer or corporate drawdown request or response (non-value).
# * `Internationalach` - Transaction is related to international ACH.
# * `Cashconcentrationordisbursementcorporatecounterparty` - Transaction is related to cash concentration or disbursement corporate counterparty.
# * `Corporatetradeexchange` - Transaction is related to corporate trade exchange.
# * `Prearrangedpaymentordepositconsumercounterparty` - Transaction is related to prearranged payment or deposit consumer counterparty.
# * `Customerinitiatedentry` - A credit entry initiated by or on behalf of the holder of a consumer account
# * `Representedcheckentry` - Transaction is related to re-presented check entry.
# * `Accountsreceivablecheck` - Transaction is related to accounts receivable check.
# * `Internetinitiatedentry` - Transaction is related to internet initiated entry.
# * `Pointofpurchase` - Transaction is related to point-of-purchase.
# * `Pointofsale` - Transaction is related to point-of-sale.
# * `Telephoneinitiatedentry` - Transaction is related to telephone initiated entry.
public type paymentlocalinstumenttypevalues "Directdebitconfirmedelectronicmandate"|"Directdebitpapermandatewithpaperauthorization"|"Directdebitunconfirmedelectronicmandate"|"Batchpaymentsaruba"|"Instantpaymentsaruba"|"Credittransfers"|"Nonpreauthoriseddirectdebitat"|"Preauthoriseddirectdebitat"|"Cashperpost"|"Returnedcredittransfers"|"Truncatedcredittransfers"|"Directdebits"|"Returneddirectdebits"|"Truncatedchecks"|"Revokedcredittransfers"|"Revokeddirectdebits"|"Revokedreturnedcredittransfers"|"Revokedreturneddirectdebits"|"Revokedtruncatedchecks"|"Revokedtruncatedcredittransfers"|"Cardclearing"|"Nonpreauthoriseddirectdebitde"|"Preauthoriseddirectdebitde"|"Imagebasedchequecollection"|"Paperlesschequecollection"|"Businesstobusinessdirectdebit"|"Businesstocustomerdirectdebit"|"Ancillarysystemtransferinitiation"|"Backuppayment"|"Mandatedpayment"|"Settlementbanktransferinitiation"|"Preauthoriseddirectdebitaccéléréacceleratedclearing2dayordinairenormalclearing4day"|"Preauthoriseddirectdebitordinairenormalclearing4day"|"Preauthoriseddirectdebitvérifiéverifiedclearing"|"Recoveredbillofexchangeorpromissorynote"|"Nonpreauthoriseddirectdebitriba"|"Preauthorisedrevocabledirectdebit"|"Preauthorisedrevocableurgentdirectdebit"|"Paymentsviainternetownedbycurrence"|"Instantcredittransfernottimecritical"|"Instantcredittransfertimecritical"|"Paymentsviainternetownedbycurrenceusinginstantcredittransfer"|"Paymentsviainternetownedbycurrenceusinginstantcredittransfernottimecritical"|"Paymentsviainternetownedbycurrenceusinginstantcredittransfertimecritical"|"Dutchdomesticbulkpayment"|"Dutchurgentpayment"|"Paymentviaacceptgiroownedbycurrence"|"Paymentsviastandaarddigitalenota"|"Incidentmanagementcorrection"|"Directdebitinitiatedbythegovernmentwithspecialconditions"|"Masspaymentbeneficiary"|"Masspaymentours"|"Masspaymentshared"|"Standingorder"|"Oneoffauthorisation"|"Oneoffauthorisationcharities"|"Oneoffauthorisationconstructionindustry"|"Oneoffauthorisationtuitionfees"|"Standingauthorisationcompanies"|"Standingauthorisationcompanieswithoutdebtorrevocationright"|"Standingauthorisationgeneral"|"Standingauthorisationlotteries"|"Convertedbankpayment"|"Businesspayment"|"Crossbordercustomercredittransfer"|"Overnight"|"Paymentwitheri"|"Sameday"|"Corenorefund"|"Directdebitfixedamount"|"Sepadirectdebitcore"|"Sepab2bdirectdebitami"|"Sepabusinesstobusinessdirectdebit"|"Sepacored1directdebitami"|"Sepacoredirectdebitami"|"Sepadirectdebit1daysettlement"|"Sepafadirectdebitami"|"Instantcredittransfer"|"Authenticateddirectdebit"|"Unauthenticateddirectdebit"|"Cashconcentrationintragroup"|"Banktransfer"|"Checksamedaysettlementwire"|"Customertransfer"|"Customertransferplus"|"Deposittosendersaccount"|"Fedfundsreturned"|"Fedfundssold"|"Nonvalueservicemessage"|"Drawdownresponsevaluetohonoradrawdownrequest"|"Banktobankdrawdownrequestorresponsenonvalue"|"Customerorcorporatedrawdownrequestorresponsenonvalue"|"Internationalach"|"Cashconcentrationordisbursementcorporatecounterparty"|"Corporatetradeexchange"|"Prearrangedpaymentordepositconsumercounterparty"|"Customerinitiatedentry"|"Representedcheckentry"|"Accountsreceivablecheck"|"Internetinitiatedentry"|"Pointofpurchase"|"Pointofsale"|"Telephoneinitiatedentry";

# >
# * `Initiate` - 
# * `Execute` - 
# * `Create` - 
# * `Transfer` - 
# * `Pay` - 
# * `Deliver` - 
# * `Apply` - 
# * `Calculate` - 
public type actiontypevalues "Initiate"|"Execute"|"Create"|"Transfer"|"Pay"|"Deliver"|"Apply"|"Calculate";

# >
# * `Requested` - 
# * `Proposed` - 
# * `Offered` - 
# * `Accepted` - 
# * `Cancelled` - 
# * `Fulfilled` - 
# * `Terminated` - 
public type arrangementstatustypevalues "Requested"|"Proposed"|"Offered"|"Accepted"|"Cancelled"|"Fulfilled"|"Terminated";

# The specific type of loan (e.g. term, revolving, evergreen) ||
# |
public type loanproducttypevalues "ConsumerLoan"|"CorporateLoan"|"MerchandisingLoan"|"MortgageLoan"|"SyndicatedLoan";

public type transactiontypevalues "FinancialTransaction"|"BusinessTransaction"|"BankingTransaction"|"AccountingTransaction"|"BookingTransaction"|"AllocationTransaction"|"DeliveryTransaction"|"ProductionTransaction";

# >
# * `PaymentInstruction` - 
# * `DeliveryOrder` - 
# * `InformationRequest` - 
# * `ExchangeInstruction` - 
# * `AllocationInstruction` - 
# * `MaintenanceInstruction` - 
public type instructiontypevalues "PaymentInstruction"|"DeliveryOrder"|"InformationRequest"|"ExchangeInstruction"|"AllocationInstruction"|"MaintenanceInstruction";

# >
# * `DueDate` - 
# * `ExecutionDate` - 
# * `FulfillmentDate` - 
public type instructiondatetimetypevalues "DueDate"|"ExecutionDate"|"FulfillmentDate";
