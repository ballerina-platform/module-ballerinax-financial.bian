import ballerina/http;
import financial.bian.attribute.groups.common as common;

# Reference to the entry in Position Keeping of the booking to be authorised
public type AccountEntry record {
    # EntryAmount
    common:Amount EntryAmount?;
    # EntryCurrency
    common:Accountcurrency EntryCurrency?;
    # EntryPurpose
    string EntryPurpose?;
    # EntryDate
    Accountentrydatetime EntryDate?;
    # EntryStatus
    Accountentrystatus EntryStatus?;
    # >
    # * `Trial` - Trial pay-in schedule.
    # * `Official` - Official pay-in schedule.
    # * `Requested` - Pay-in schedule on request.
    Accountentrytypevalues EntryType?;
    # JournalPostingReference
    Journalentry JournalPostingReference?;
    # Link to financial accounting transaction.
    Financialaccountingtransaction FinancialAccountingTransactionReference?;
    # >
    # * `Debit` - Transaction is a debt entry
    # * `Credit` - Transaction is a credit entry
    common:Debitcreditindicatortvalues EntryDebitCreditIndicatior?;
    # Link to Document (invoice, receipt, voucher, etc.).
    common:Document FinancialDocumentReference?;
    # EntryIdentification
    common:Identifier EntryIdentification?;
    # LogEntryDescription
    string LogEntryDescription?;
    # Date and time at which the status was assigned.
    common:Datetime LogEntryValueDate?;
    # LogEntryIdentification
    common:Identifier LogEntryIdentification?;
    # PostedEventIdentification
    common:Identifier PostedEventIdentification?;
    # LogEntryStatus
    common:Status LogEntryStatus?;
};

# >
# * `GAAP` - 
# * `IFRS` - 
# * `LocalStatutoryAccounting` - 
# * `CashBasisAccounting` - 
# * `TaxBasisAccounting` - 
public type Ledgeraccountingbasistypevalues "GAAP"|"IFRS"|"LocalStatutoryAccounting"|"CashBasisAccounting"|"TaxBasisAccounting";

# Maintain a log of transactions or activity, typically a financial account/journal or a log of activity to support behavioral analysis within Internal Bank Account. 
public type InternalBankAccountFacility record {
    # >
    # * `Enabled` - Account can be used for its intended purpose.
    # * `Disabled` - Account cannot be used for its intended purpose, either temporarily or permanently.
    # * `Deleted` - Account cannot be used any longer.
    # * `Proforma` - Account is temporary and can be partially used for its intended purpose. The account will be fully available for use when the account servicer has received all relevant documents.
    # * `Pending` - Account change is pending approval.
    common:Accountstatustypevalues InternalBankAccountStatus?;
    # InternalBankAccountCalendarReference
    common:Calendar InternalBankAccountCalendarReference?;
    # Reference to the account on which the amount is booked
    common:Account InternalBankAccountReference?;
    # InternalBankAccountCurrency
    common:Currencycode InternalBankAccountCurrency?;
    # Reference to a Party who plays a  specific role in the context of assigning a status.
    common:Involvedparty InternalBankAccountAssociatedParty?;
    # A selected optional product feature as subject matter of Internal Bank Account Facility
    common:Feature InternalBankAccountSelectedOption?;
    # The position of Internal Bank Account
    common:Position InternalBankAccountPosition?;
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
    common:Featuretypevalues InternalBankAccountParameterType?;
    # >
    # * `HoldingAccount` - 
    # * `MirrorAccount` - 
    # * `WorkingAccount` - 
    Internalbankaccounttypevalues InternalBankAccountType?;
    # A Classification that distinguishes between the regularity domains of Internal Bank Account Facility
    common:Rulesettype InternalBankAccountRegulationType?;
    # Reference to a Party who plays a  specific role in the context of assigning a status.
    common:Involvedparty InternalBankAccountCustomerReference?;
    # The financial accounting unit into which the financial events, with regard to the origination and fulfillment of the agreement in the context of Internal Bank Account Facility, are entered.
    common:BusinessUnit InternalBankAccountBookingLocation?;
    # Reference to the regulation which is defined in Internal Bank Account Facility
    common:RuleSet InternalBankAccountRegulationReference?;
    # Reference to the jurisdiction that is assigned to Internal Bank Account Facility in case of legal dispute.
    common:Jurisdiction InternalBankAccountJurisdiction?;
    # Reference to the limitation related to the position of Internal Bank Account Facility
    common:Limitarrangement InternalBankAccountPositionLimit?;
    # Reference to the product which is linked to Internal Bank Account Facility
    common:ProductAgreement InternalBankAccountProductReference?;
    # InternalBankAccountFacilityReference
    common:Identifier InternalBankAccountFacilityReference?;
};

public type Accountentrydatetime record {
    # Date and time at which the status was assigned.
    common:Datetime AccountEntryDate?;
    # >
    # * `EntryDate` - Date and time at which an entry is posted to an account on the account servicer's books.
    # * `ValueDate` - Date and time assets become available to the account owner (in a credit entry), or cease to be available to the account owner (in a debit entry).
    # * `PostingDate` - 
    Accountentrydatetimetypevalues AccountEntryDateType?;
};

# Reference to the booking schema used to generate this transaction.
public type Bookingscheme record {
    # BookingSchemaIdentification
    common:Identifier BookingSchemaIdentification?;
    # The name of account
    #
    # The account name is the name or names of the account owner(s) represented at an account level, as displayed by the ASPSP's online channels. Note, the account name is not the product name or the nickname of the account. (Open Banking)
    common:Name BookingSchemaName?;
    # Explanation of the schema’s purpose or business process.
    string BookingSchemaDescription?;
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
    common:Financialtransactiontypevalues BookingSchemaTransactionType?;
    # Ledger to which most entries are posted (optional).
    Ledger LedgerReference?;
    # Links the entry to a Journal container.
    Journal JournalReference?;
    # Reference to the account on which the amount is booked
    common:Account AccountReference?;
    # Rules governing amounts, rounding, accruals, or multi-currency conversion.
    Ruleset BookingSchemaPostingRule?;
};

# >
# * `Primary` - The main accounting ledger used for official financial reporting under the required accounting framework (e.g., US GAAP). All core postings flow here.
# * `Secondary` - A parallel ledger used to maintain alternate accounting treatments (e.g., IFRS vs GAAP), or additional adjustments not stored in the primary ledger.
# * `Statutory` - Ledger required by local laws or national regulations, often different from corporate GAAP (e.g., country-specific accounting rules).
# * `Management` - Ledger used for internal management reporting, operational accounting, and performance analysis; not used for external financial reporting.
# * `Budget` - Ledger that stores budget, forecast, or planning figures; used to compare against actuals but does not hold real accounting transactions.
# * `Tax` - Ledger for tax-specific accounting entries (e.g., tax-basis depreciation, taxable income calculations) separate from GAAP/IFRS books.
# * `Consolidation` - Ledger that holds elimination entries, intercompany adjustments, and consolidated-level postings for group reporting.
# * `Adjustment` - Ledger for audit adjustments, closing adjustments, top-side entries, or correcting postings that should not appear in operational ledgers.
public type Ledgertypevalues "Primary"|"Secondary"|"Statutory"|"Management"|"Budget"|"Tax"|"Consolidation"|"Adjustment";

public type Journalentry record {
    common:Identifier JournalEntryIdentification?;
    # Links the entry to a Journal container.
    Journal JournalReference?;
    # Ledger to which most entries are posted (optional).
    Ledger LedgerReference?;
    # Date and time at which the status was assigned.
    common:Datetime JournalEntryDate?;
    # Date and time at which the status was assigned.
    common:Datetime JournalPostingDate?;
    # Summary or explanation of the entry.
    string JournalEntryDescription?;
    # Link to Document (invoice, receipt, voucher, etc.).
    common:Document FinancialDocumentReference?;
    common:Status JournalEntryStatus?;
    # Reference to a Party who plays a  specific role in the context of assigning a status.
    common:Involvedparty JournalEntryCreatedBy?;
    # Link to financial transaction.
    Financialtransaction FinancialTransactionReference?;
    string LogEntryDescription?;
    # Date and time at which the status was assigned.
    common:Datetime LogEntryValueDate?;
    common:Identifier LogEntryIdentification?;
    common:Identifier PostedEventIdentification?;
    common:Status LogEntryStatus?;
};

public type Booking record {
    # Reference to the account on which the amount is booked
    common:Account AccountReference?;
    # Priority number of the payment transaction for use in determining the available balance
    string TransactionPriorityNumber?;
    # Date and time at which the status was assigned.
    common:Datetime BookingDate?;
    # Outcome of the execution of the authorization. Can be Accepted or Rejected
    string AuthorizationResult?;
    # Reason of the rejection. Values would be Available balance is insufficient, Account is not active, Account is blocked
    string AuthorizationRejectionReason?;
    # Date and time at which the status was assigned.
    common:Datetime ValueDate?;
    # Reference to the entry in Position Keeping of the booking to be authorised
    AccountEntry PositionKeepingReference?;
    common:Amount BookingAmount?;
};

# Link to financial transaction.
public type Financialtransaction record {
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
    common:Financialtransactiontypevalues FinancialTransactionType?;
    # FinancialTransactionCurrency
    common:Currencycode FinancialTransactionCurrency?;
    # FinancialTransactionAmount
    common:Amount FinancialTransactionAmount?;
    # Reference to the account on which the amount is booked
    common:Account FinancialTransactionFromAccount?;
    # Reference to the account on which the amount is booked
    common:Account FinancialTransactionTargetAccount?;
    # Date and time at which the status was assigned.
    common:Datetime FinancialTransactionDateTime?;
    # TransactionIdentification
    common:Identifier TransactionIdentification?;
    # The Date that the transaction has occurred or is planned to occur.
    # A characteristic of transaction which refers to the LifecycleDate of transaction (e.g., initiated date, executed date, fulfillment date). 
    common:Transactiondatetime TransactionDate?;
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
    # A detailed explanation or commentary of transaction.
    string TransactionDescription?;
    # A characteristic of transaction which refers to the LifecycleStatus of transaction (e.g., initiated, executed, confirmed, cancelled, etc.) 
    common:Transactionstatus TransactionStatus?;
    # The name of account
    #
    # The account name is the name or names of the account owner(s) represented at an account level, as displayed by the ASPSP's online channels. Note, the account name is not the product name or the nickname of the account. (Open Banking)
    common:Name TransactionName?;
    # EventType
    string EventType?;
    # Date and time at which the status was assigned.
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
    # Period of time during which the status is valid.
    common:Datetimeperiod EventValidityPeriod?;
    # EventIdentification
    common:Identifier EventIdentification?;
};

# Rules governing amounts, rounding, accruals, or multi-currency conversion.
public type Ruleset record {
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
    # The name of account
    #
    # The account name is the name or names of the account owner(s) represented at an account level, as displayed by the ASPSP's online channels. Note, the account name is not the product name or the nickname of the account. (Open Banking)
    common:Name RuleSetName?;
    # RuleSetIdentification
    common:Identifier RuleSetIdentification?;
    # RuleSetLifecycleStatus
    common:Status RuleSetLifecycleStatus?;
};

# >
# * `USGAAP` - Generally Accepted Accounting Principles used in the United States. Established by the FASB. Provides rules-based guidance for recognition, measurement, presentation, and disclosure of financial transactions.
# * `IFRS` - International Financial Reporting Standards issued by the IASB. Used globally in 140+ countries. Principles-based framework emphasizing economic substance over rules.
# * `LocalGAAP` - Country-specific Generally Accepted Accounting Principles (e.g., UK GAAP, German HGB, Japanese GAAP). Often required for statutory/local tax reporting.
# * `StatutoryAccounting` - Accounting basis required by law or government agencies. Typically tailored for regulatory purposes (e.g., insurance statutory accounting, banking regulatory reporting, government budgetary accounting).
# * `InternalAccountingStandard` - Organization-specific accounting rules or adjustments used for management reporting, performance measurement, or internal control. Not required by external regulators. Examples: management GAAP, segment reporting standards, KPI-based costing rules.
# * `TaxBasis` - Accounting methods defined by tax authorities (e.g., IRS tax accounting rules). Used for tax returns, depreciation schedules, and taxable income calculations.
public type Accountingstandardtypevalues "USGAAP"|"IFRS"|"LocalGAAP"|"StatutoryAccounting"|"InternalAccountingStandard"|"TaxBasis";

# >
# * `HoldingAccount` - 
# * `MirrorAccount` - 
# * `WorkingAccount` - 
public type Internalbankaccounttypevalues "HoldingAccount"|"MirrorAccount"|"WorkingAccount";

# >
# * `Booked` - Booked means that the transfer of money has been completed between account servicer and account owner.
# Usage: Status Booked does not necessarily imply finality of money as this depends on other factors such as the payment system used, the completion of the end-to-end transaction and the terms agreed between account servicer and owner.
# Status Booked is the only status that can be reversed.
# * `Future` - Entry is on the books of the account servicer and value will be applied to the account owner at a future date and time.
# * `Information` - Entry is only provided for information, and no booking on the account owner's account in the account servicer's ledger has been performed.
# * `Pending` - Booking on the account owner's account in the account servicer's ledger has not been completed.
# Usage: this can be used for expected items, or for items for which some conditions still need to be fulfilled before they can be booked. If booking takes place, the entry will be included with status Booked in subsequent account report or statement. Status Pending cannot be reversed.
public type Accountentrystatustypevalues "Booked"|"Future"|"Information"|"Pending";

# Link to financial accounting transaction.
public type Financialaccountingtransaction record {
    # FinancialAccountingTransactionIdentification
    common:Identifier FinancialAccountingTransactionIdentification?;
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
    common:Financialtransactiontypevalues FinancialAccountingTransactionType?;
    # Ledger to which most entries are posted (optional).
    Ledger LedgerReference?;
    # Date and time at which the status was assigned.
    common:Datetime FinancialAccountingTransactionPostingDate?;
    # Date and time at which the status was assigned.
    common:Datetime FinancialAccountingTransactionDate?;
    # FinancialAccountingTransactionAmountAndCurrency
    common:Amount FinancialAccountingTransactionAmountAndCurrency?;
    # LedgerAmountAndCurrency
    common:Amount LedgerAmountAndCurrency?;
    # Reference to the account on which the amount is booked
    common:Account AccountReference?;
    # Reference to the booking schema used to generate this transaction.
    Bookingscheme BookingSchemaReference?;
    # A characteristic of transaction which refers to the LifecycleStatus of transaction (e.g., initiated, executed, confirmed, cancelled, etc.) 
    common:Transactionstatus FinancialAccountingTransactionStatus?;
    # Link to financial transaction.
    Financialtransaction FinancialTransactionReference?;
    # Textual explanation of the transaction for audit and reporting purposes.
    string FinancialAccountingTransactionDescription?;
    # Link to Document (invoice, receipt, voucher, etc.).
    common:Document FinancialDocumentReference?;
    # TransactionIdentification
    common:Identifier TransactionIdentification?;
    # The Date that the transaction has occurred or is planned to occur.
    # A characteristic of transaction which refers to the LifecycleDate of transaction (e.g., initiated date, executed date, fulfillment date). 
    common:Transactiondatetime TransactionDate?;
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
    # A detailed explanation or commentary of transaction.
    string TransactionDescription?;
    # A characteristic of transaction which refers to the LifecycleStatus of transaction (e.g., initiated, executed, confirmed, cancelled, etc.) 
    common:Transactionstatus TransactionStatus?;
    # The name of account
    #
    # The account name is the name or names of the account owner(s) represented at an account level, as displayed by the ASPSP's online channels. Note, the account name is not the product name or the nickname of the account. (Open Banking)
    common:Name TransactionName?;
};

# The structure of the account codes used in the ledger.
public type Chartofaccounts record {
    # COAIdentification
    common:Identifier COAIdentification?;
    # The name of account
    #
    # The account name is the name or names of the account owner(s) represented at an account level, as displayed by the ASPSP's online channels. Note, the account name is not the product name or the nickname of the account. (Open Banking)
    common:Name COAName?;
    # Purpose/usage of the COA.
    string COADescription?;
    # >
    # * `USGAAP` - Generally Accepted Accounting Principles used in the United States. Established by the FASB. Provides rules-based guidance for recognition, measurement, presentation, and disclosure of financial transactions.
    # * `IFRS` - International Financial Reporting Standards issued by the IASB. Used globally in 140+ countries. Principles-based framework emphasizing economic substance over rules.
    # * `LocalGAAP` - Country-specific Generally Accepted Accounting Principles (e.g., UK GAAP, German HGB, Japanese GAAP). Often required for statutory/local tax reporting.
    # * `StatutoryAccounting` - Accounting basis required by law or government agencies. Typically tailored for regulatory purposes (e.g., insurance statutory accounting, banking regulatory reporting, government budgetary accounting).
    # * `InternalAccountingStandard` - Organization-specific accounting rules or adjustments used for management reporting, performance measurement, or internal control. Not required by external regulators. Examples: management GAAP, segment reporting standards, KPI-based costing rules.
    # * `TaxBasis` - Accounting methods defined by tax authorities (e.g., IRS tax accounting rules). Used for tax returns, depreciation schedules, and taxable income calculations.
    Accountingstandardtypevalues AccountingStandard?;
    # Period of time during which the status is valid.
    common:Datetimeperiod COAValidityPeriod?;
    # COAStatus
    common:Status COAStatus?;
    # Allows for versioned changes (common in large organizations).
    string COAVersion?;
    # Definition of segments and hierarchy (e.g., “Account + Cost Center + Product”).
    string COAStructureDefinition?;
};

# >
# * `GeneralJournal` - Used for non-routine or manual entries: accruals, adjustments, corrections, reclassifications.
# * `RecurringJournal` - Templates that repeat periodically (monthly rent, amortization, depreciation top-side postings).
# * `AccrualJournal` - Used for period-end accruals and deferrals (expenses, revenues). Often reverses automatically.
# * `AdjustmentJournal` - Audit adjustments, top-side entries, year-end true-ups. Usually restricted access.
# * `ReversingJournal` - Entries created with reversal logic for the next period.
# * `SubledgerJournal` - Auto-generated entries from sub-ledgers (AP, AR, FA, Inventory, Payroll).
# * `SalesJournal` - Contains high-volume repetitive sales-related transactions.
# * `PurchasesJournal` - Contains high-volume repetitive purchase-related transactions.
# * `CashReceiptsJournal` - Records cash inflows (customer payments).
# * `CashDisbursementsJournal` - Records cash outflows (supplier payments).
# * `PayrollJournal` - Records payroll expenses, taxation, benefits, and liabilities.
# * `IntercompanyJournal` - Used for intercompany transactions and eliminations.
# * `ConsolidationJournal` - Used during group consolidation for eliminations and adjustments.
# * `TaxJournal` - Tax-specific postings separate from GAAP/IFRS books.
# * `BudgetJournal` - Stores budget or forecast values (not actual transactions).
public type Journaltypevalues "GeneralJournal"|"RecurringJournal"|"AccrualJournal"|"AdjustmentJournal"|"ReversingJournal"|"SubledgerJournal"|"SalesJournal"|"PurchasesJournal"|"CashReceiptsJournal"|"CashDisbursementsJournal"|"PayrollJournal"|"IntercompanyJournal"|"ConsolidationJournal"|"TaxJournal"|"BudgetJournal";

# >
# * `Trial` - Trial pay-in schedule.
# * `Official` - Official pay-in schedule.
# * `Requested` - Pay-in schedule on request.
public type Accountentrytypevalues "Trial"|"Official"|"Requested";

# Links the entry to a Journal container.
public type Journal record {
    # JournalIdentification
    common:Identifier JournalIdentification?;
    # The name of account
    #
    # The account name is the name or names of the account owner(s) represented at an account level, as displayed by the ASPSP's online channels. Note, the account name is not the product name or the nickname of the account. (Open Banking)
    common:Name JournalName?;
    # >
    # * `GeneralJournal` - Used for non-routine or manual entries: accruals, adjustments, corrections, reclassifications.
    # * `RecurringJournal` - Templates that repeat periodically (monthly rent, amortization, depreciation top-side postings).
    # * `AccrualJournal` - Used for period-end accruals and deferrals (expenses, revenues). Often reverses automatically.
    # * `AdjustmentJournal` - Audit adjustments, top-side entries, year-end true-ups. Usually restricted access.
    # * `ReversingJournal` - Entries created with reversal logic for the next period.
    # * `SubledgerJournal` - Auto-generated entries from sub-ledgers (AP, AR, FA, Inventory, Payroll).
    # * `SalesJournal` - Contains high-volume repetitive sales-related transactions.
    # * `PurchasesJournal` - Contains high-volume repetitive purchase-related transactions.
    # * `CashReceiptsJournal` - Records cash inflows (customer payments).
    # * `CashDisbursementsJournal` - Records cash outflows (supplier payments).
    # * `PayrollJournal` - Records payroll expenses, taxation, benefits, and liabilities.
    # * `IntercompanyJournal` - Used for intercompany transactions and eliminations.
    # * `ConsolidationJournal` - Used during group consolidation for eliminations and adjustments.
    # * `TaxJournal` - Tax-specific postings separate from GAAP/IFRS books.
    # * `BudgetJournal` - Stores budget or forecast values (not actual transactions).
    Journaltypevalues JournalType?;
    # General description of the journal's purpose.
    string JournalDescription?;
    # >
    # * `DraftOrInProgress` - The journal is being created. Lines may be added or modified. Not yet submitted for approval.
    # * `SubmittedOrPendingApproval` - The journal has been completed by the preparer and is awaiting review and approval. No further editing allowed unless returned.
    # * `RejectedOrReturned` - Approver rejected the journal; it must be corrected and resubmitted. Editing is allowed.
    # * `Approved` - Journal has passed approval workflow and is ready for posting. Locked for content changes.
    # * `Scheduled` - Journal is approved and set for a future posting date (common for recurring/reversing journals).
    # * `Posted` - Journal has been successfully posted to the general ledger and impacts financial balances. Cannot be edited; may only be reversed or adjusted.
    # * `PartiallyPosted` - System posted some lines but not all due to errors—rare but possible in multi-ledger or multi-entity postings. Requires correction.
    # * `Reversed` - A reversal journal has been created and posted, negating the original entry.
    # * `VoidedOrCanceled` - Journal is canceled before posting. No impact on ledger.
    # * `ArchivedOrClosed` - Journal is locked after period close. Retained only for record and audit purposes.
    Journalstatustypevalues JournalStatus?;
    # Ledger to which most entries are posted (optional).
    Ledger LedgerReference?;
    # LogType
    string LogType?;
    # Period of time during which the status is valid.
    common:Datetimeperiod LogPeriod?;
    # Date and time at which the status was assigned.
    common:Datetime LogDate?;
    # LogIdentification
    common:Identifier LogIdentification?;
};

public type Accountentrystatus record {
    common:Status AccountEntryStatus?;
    # >
    # * `Booked` - Booked means that the transfer of money has been completed between account servicer and account owner.
    # Usage: Status Booked does not necessarily imply finality of money as this depends on other factors such as the payment system used, the completion of the end-to-end transaction and the terms agreed between account servicer and owner.
    # Status Booked is the only status that can be reversed.
    # * `Future` - Entry is on the books of the account servicer and value will be applied to the account owner at a future date and time.
    # * `Information` - Entry is only provided for information, and no booking on the account owner's account in the account servicer's ledger has been performed.
    # * `Pending` - Booking on the account owner's account in the account servicer's ledger has not been completed.
    # Usage: this can be used for expected items, or for items for which some conditions still need to be fulfilled before they can be booked. If booking takes place, the entry will be included with status Booked in subsequent account report or statement. Status Pending cannot be reversed.
    Accountentrystatustypevalues AccountEntryStatusType?;
};

public type InternalBankAccountFacilityOk record {|
    *http:Ok;
    InternalBankAccountFacility body;
|};

# >
# * `EntryDate` - Date and time at which an entry is posted to an account on the account servicer's books.
# * `ValueDate` - Date and time assets become available to the account owner (in a credit entry), or cease to be available to the account owner (in a debit entry).
# * `PostingDate` - 
public type Accountentrydatetimetypevalues "EntryDate"|"ValueDate"|"PostingDate";

# Ledger to which most entries are posted (optional).
public type Ledger record {
    # LedgerIdentification
    common:Identifier LedgerIdentification?;
    # LedgerCurrency
    common:Currencycode LedgerCurrency?;
    # >
    # * `Primary` - The main accounting ledger used for official financial reporting under the required accounting framework (e.g., US GAAP). All core postings flow here.
    # * `Secondary` - A parallel ledger used to maintain alternate accounting treatments (e.g., IFRS vs GAAP), or additional adjustments not stored in the primary ledger.
    # * `Statutory` - Ledger required by local laws or national regulations, often different from corporate GAAP (e.g., country-specific accounting rules).
    # * `Management` - Ledger used for internal management reporting, operational accounting, and performance analysis; not used for external financial reporting.
    # * `Budget` - Ledger that stores budget, forecast, or planning figures; used to compare against actuals but does not hold real accounting transactions.
    # * `Tax` - Ledger for tax-specific accounting entries (e.g., tax-basis depreciation, taxable income calculations) separate from GAAP/IFRS books.
    # * `Consolidation` - Ledger that holds elimination entries, intercompany adjustments, and consolidated-level postings for group reporting.
    # * `Adjustment` - Ledger for audit adjustments, closing adjustments, top-side entries, or correcting postings that should not appear in operational ledgers.
    Ledgertypevalues LedgerType?;
    # LedgerFiscalCalendar
    common:Calendar LedgerFiscalCalendar?;
    # Period of time during which the status is valid.
    common:Datetimeperiod LedgerFiscalPeriod?;
    # The structure of the account codes used in the ledger.
    Chartofaccounts ChartOfAccountReference?;
    # >
    # * `GAAP` - 
    # * `IFRS` - 
    # * `LocalStatutoryAccounting` - 
    # * `CashBasisAccounting` - 
    # * `TaxBasisAccounting` - 
    Ledgeraccountingbasistypevalues LedgerAccountingMethodOrBasis?;
    # The logic, conditions, and authorized users for creating, approving, and managing ledger entries to ensure proper, compliant, and auditable postings.
    common:condition LedgerPostingRuleAndPermission?;
    # A ledger is attached to one or more legal entities that produce accounting records.
    common:Organisation LedgerLegalEntityOrBusinessUnitReference?;
};

# >
# * `DraftOrInProgress` - The journal is being created. Lines may be added or modified. Not yet submitted for approval.
# * `SubmittedOrPendingApproval` - The journal has been completed by the preparer and is awaiting review and approval. No further editing allowed unless returned.
# * `RejectedOrReturned` - Approver rejected the journal; it must be corrected and resubmitted. Editing is allowed.
# * `Approved` - Journal has passed approval workflow and is ready for posting. Locked for content changes.
# * `Scheduled` - Journal is approved and set for a future posting date (common for recurring/reversing journals).
# * `Posted` - Journal has been successfully posted to the general ledger and impacts financial balances. Cannot be edited; may only be reversed or adjusted.
# * `PartiallyPosted` - System posted some lines but not all due to errors—rare but possible in multi-ledger or multi-entity postings. Requires correction.
# * `Reversed` - A reversal journal has been created and posted, negating the original entry.
# * `VoidedOrCanceled` - Journal is canceled before posting. No impact on ledger.
# * `ArchivedOrClosed` - Journal is locked after period close. Retained only for record and audit purposes.
public type Journalstatustypevalues "DraftOrInProgress"|"SubmittedOrPendingApproval"|"RejectedOrReturned"|"Approved"|"Scheduled"|"Posted"|"PartiallyPosted"|"Reversed"|"VoidedOrCanceled"|"ArchivedOrClosed";

public type QuestionAssignmentOk record {|
    *http:Ok;
    QuestionAssignment body;
|};

public type PaymentCard record {
    # >
    # * `Creditcard` - 
    # * `Debitcard` - 
    Paymentcardtypevalues CardType?;
    # Number embossed on a card that links the card to the account owner and account servicer (sometimes called personal account number or PAN). (ISO20022)
    string CardNumber?;
    # The date when the identifier became valid.
    common:Datetime CardStartDate?;
    # The date when the identifier became valid.
    common:Datetime CardExpiryDate?;
    # Security code written on the card, sometimes called card security code (CSC). (ISO20022)
    string CardSecurityCode?;
    string CardVerificationValue?;
    common:Identifier BankIdentificationNumber?;
    # Identifies a card inside a set of cards with the same number (or PAN). (ISO20022)
    string CardSequenceNumber?;
    # Brand name of the card. (ISO20022)
    string CardBrand?;
    common:Currencycode CardCurrencyCode?;
    # Country code attached to the card by the card issuer. (ISO20022)
    Country CardCountryCode?;
    # Defines a category of cards related to the acceptance processing rules defined by the acquirer. (ISO20022)
    string CardProductProfile?;
    common:Deviceidentification DeviceIdentification?;
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
    common:Devicetypevalues DeviceType?;
    # Property of a device relevant for its use.
    #
    # A device has the characteristics of the device type it belongs to,possibly specified
    # e.g. . a device of the type "cheque book" will have cheques. The device specifies how many and what the number range is.
    # e.g. an electronic banking app consists of software modules, the device specifies what version 
    string DeviceProperty?;
    # An element of the device that can be used independently and is individually identified
    #
    # e.g. a cheque in a chequebook
    string DeviceElement?;
    common:Status DeviceStatus?;
    string DeviceVersion?;
    # The date when the identifier became valid.
    common:Datetime DeviceDateTime?;
    string DeviceDescription?;
    # The name of account
    #
    # The account name is the name or names of the account owner(s) represented at an account level, as displayed by the ASPSP's online channels. Note, the account name is not the product name or the nickname of the account. (Open Banking)
    common:Name DeviceName?;
    # Preferred language set on the device
    string DeviceLanguage?;
    # Phone number associated with the device.
    string DevicePhoneNumber?;
    # Reference to Geographical Location of the device.
    string DeviceLocationReference?;
    # Manufacturer of the device.
    string DeviceManufacturer?;
    # Reference to Country of the location.
    string DeviceCountryReference?;
    # Reference to the address associated with the device like Internet Protocol address, email Address
    string DeviceAddressReference?;
    # >
    # * `Android` - Android operating system.
    # * `Ios` - iOS operating system.
    # * `Windows` - Windows operating system.
    # * `Blackberry` - Blackberry operating system.
    # * `Tizen` - Tizen operating system.
    # * `Othernational` - Other nationally defined code.
    # * `Otherprivate` - Other privately defined code.
    common:Deviceoperatingsystemtypevalues DeviceOperatingSystem?;
};

public type PasswordAssignment record {
    # The required format or minimum requirements for the password (e.g. 8 chars)
    string FormatRules?;
    # Recent values maintained to eliminate repeated values
    string RecentValues?;
    # The stored value possibly in suitably encrypted form
    string PasswordValue?;
    common:Log UsageLog?;
};

# Identifies a nation with its own government (ISO 3166).
public type Countrycode record {
    # Code to identify a country, a dependency, or another area of particular geopolitical interest, on the basis of country names obtained from the United Nations (ISO 3166, Alpha-2 code).
    string Countrycode?;
};

public type TokenRequest record {
    common:Identifier TokenRequestIdentification?;
    string TokenRequestReason?;
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
    string InstructionResult?;
    string InstructionDescription?;
    common:Log InstructionLog?;
    string InstructionPurpose?;
};

# Maintain an inventory or holding of some resource and make assignments/allocations as requested  within Issued Device Administration. 
# Example: Track the inventory and administer the distribution of central cash holdings throughout the branch & ATM network.
public type IssuedDeviceAllocation record {
    # Reference to an entity that assigns and manages the identification.
    # tReference to the organization or agency that issued the identifier (e.g., DMV, Passport Office).
    common:Involvedparty CustomerReference?;
    # Linked products and services, there can be many
    common:ProductAgreement ProductInstanceReference?;
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
    common:Devicetypevalues IssuedDeviceType?;
    # Access/usage entitlements, can be by product instance (e.g. value, location, frequency and duration access constraints)
    DeviceAccessArrangement AssociatedPermissions?;
    # The date when the identifier became valid.
    common:Datetime IssueDate?;
    # Period of time during which the status is valid.
    common:Datetimeperiod ValidFrom\-ToDate?;
};

public type QuestionAssignment record {
    # Defines the minimum requirements for answers
    string FormatRules?;
    # Recent values maintained to eliminate repeated values
    string RecentValues?;
    # Used to select secret questions and access prompts
    string RequestText?;
    # The stored response value possibly in suitably encrypted form
    string ResponseText?;
    common:Log UsageLog?;
};

public type TokenAssignmentOk record {|
    *http:Ok;
    TokenAssignment body;
|};

public type BiometricAssignmentOk record {|
    *http:Ok;
    BiometricAssignment body;
|};

# >
# * `CardDesign` - 
public type Devicecustomizationtypevalues "CardDesign";

# Country code attached to the card by the card issuer. (ISO20022)
public type Country record {
    # Reference to an entity that assigns and manages the identification.
    # tReference to the organization or agency that issued the identifier (e.g., DMV, Passport Office).
    common:Involvedparty NationalRegulatoryAuthority?;
    # The name of account
    #
    # The account name is the name or names of the account owner(s) represented at an account level, as displayed by the ASPSP's online channels. Note, the account name is not the product name or the nickname of the account. (Open Banking)
    common:Name CountryName?;
    # Identifies a nation with its own government (ISO 3166).
    Countrycode CountryCode?;
};

public type BiometricAssignment record {
    # Type of biometric record being used (e.g. face, fingerprint, signature)
    string BiometricType?;
    # The stored biometric value possibly in suitably encrypted form
    string BiometricRegisteredDetail?;
};

public type TokenAssignment record {
    common:Identifier TokenIdentificationCode?;
    # Reference to an entity that assigns and manages the identification.
    # tReference to the organization or agency that issued the identifier (e.g., DMV, Passport Office).
    common:Involvedparty TokenServiceProviderReference?;
    # Reference to an entity that assigns and manages the identification.
    # tReference to the organization or agency that issued the identifier (e.g., DMV, Passport Office).
    common:Involvedparty RequestorReference?;
    TokenRequest RequestReference?;
    string RequestReasonDescription?;
    common:Account PaymentAccountReference?;
    PaymentCard CardReference?;
    # >
    # * `AssertedAuthentication` - 
    # * `RiskBasedNoninteractiveAuthentication` - 
    # * `InteractiveAuthentication` - 
    Tokenidentificationandverificationmethodtypevalues IdentificationandVerificationMethodType?;
    # >
    # * `Active` - 
    # * `Expired` - 
    # * `Cancelled` - 
    # * `Generated` - 
    # * `Stored` - 
    # * `Mapped` - 
    # * `Routed` - 
    # * `Suspension` - 
    # * `Updated` - 
    Tokenstatustypevalues TokenStatus?;
    # The date when the identifier became valid.
    common:Datetime TokenStatusDate?;
    common:Device TokenDeviceReference?;
};

# >
# * `Creditcard` - 
# * `Debitcard` - 
public type Paymentcardtypevalues "Creditcard"|"Debitcard";

public type DeviceAssignment record {
    # >
    # * `IMEI` - International Mobile Equipment Identity.
    # * `Serialnumber` - Device serial number.
    # * `Secureelementidentification` - Secure element ID.
    # * `Othernational` - Other nationally assigned code.
    # * `Otherprivate` - Other privately assigned code.
    common:Deviceidentificationtypevalues IssuedDeviceSerialNumber?;
    # Operating system version for smart devices
    string VersionNumber?;
    # >
    # * `CardDesign` - 
    Devicecustomizationtypevalues CustomerCustomizationReference?;
    # Details how device and replacements are distributed (e.g. mail, courier, collect at branch, kiosk)
    string Deliverymethod?;
    # The delivery address or tracked location if appropriate
    string IssueLocation?;
    # Device stored values such as mag strip/chip settings
    common:Feature IssuedDeviceConfiguration?;
    common:Log UsageLog?;
};

public type ChequesAssignment record {
    # Cheque template (e.g. customer account/branch reference, print image/personalization)
    string IssuedDeviceTemplateValues?;
    # The delivery address for distribution
    common:Location IssueLocation?;
    common:Identifier SequenceNumber?;
};

# >
# * `Active` - 
# * `Expired` - 
# * `Cancelled` - 
# * `Generated` - 
# * `Stored` - 
# * `Mapped` - 
# * `Routed` - 
# * `Suspension` - 
# * `Updated` - 
public type Tokenstatustypevalues "Active"|"Expired"|"Cancelled"|"Generated"|"Stored"|"Mapped"|"Routed"|"Suspension"|"Updated";

# >
# * `AssertedAuthentication` - 
# * `RiskBasedNoninteractiveAuthentication` - 
# * `InteractiveAuthentication` - 
public type Tokenidentificationandverificationmethodtypevalues "AssertedAuthentication"|"RiskBasedNoninteractiveAuthentication"|"InteractiveAuthentication";

# Access/usage entitlements, can be by product instance (e.g. value, location, frequency and duration access constraints)
public type DeviceAccessArrangement record {
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
    # >
    # * `ChannelAccess` - 
    # * `ProductAndServiceAccess` - 
    # * `DeviceAccess` - 
    # * `APIAccess` - 
    Pointofaccesstypevalues PointOfAccessType?;
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
    common:Authenticationmethodtypevalues AccessCredentialMethod?;
};

public type PasswordAssignmentOk record {|
    *http:Ok;
    PasswordAssignment body;
|};

public type ChequesAssignmentOk record {|
    *http:Ok;
    ChequesAssignment body;
|};

public type IssuedDeviceAllocationOk record {|
    *http:Ok;
    IssuedDeviceAllocation body;
|};

public type ReaderAssignment record {
    common:Identifier IssuedReaderDeviceSerialNumber?;
    # Operating system version for smart devices
    string VersionNumber?;
    # The delivery address for distribution
    common:Location IssueLocation?;
    # Device stored values such as mag strip/chip settings
    common:Feature IssuedDeviceConfiguration?;
    common:Log UsageLog?;
};
