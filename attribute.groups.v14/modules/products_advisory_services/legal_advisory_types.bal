import financial.bian.attribute.groups.common as common;

import ballerina/http;

# >
# * `BaseCurrency` - Base currency of the account. (ISO20022)
#
# * `ReportingCurrency` - Currency used to calculate and report the balance and related entries of an account. (ISO20022)
#
# * `SecondaryCurrency` - 
# * `TransferCurrency` - Currency of the amount to be transferred which may be different from the currency of the debtor's account. (ISO20022)
public type currencytypevalues "BaseCurrency"|"ReportingCurrency"|"SecondaryCurrency"|"TransferCurrency";

public type LegalAdviceFacilityOk record {|
    *http:Ok;
    LegalAdviceFacility body;
|};

# Specifies the periodicity linked to a limit for example the periodicity can indicate that the limit can be reached daily or monthly. (ISO20022)
public type frequency record {
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
    frequencytypevalues FrequencyCode?;
    # Name by which a party is known and which is usually used to identify that party. (ISO20022)
    common:name FrequencyName?;
    # The particular date and time point in the progression of time
    common:text FrequencyDefinition?;
};

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
public type rulesettypevalues "Policy"|"Regulation"|"Law"|"Guideline"|"Criterion"|"Standard";

# A characteristic of account which refers to the LifecycleStatus of account like opened, closed, blocked, etc.
#
# Specifies the current state of an account. (ISO20022)
public type accountstatus record {
    # The status of Legal Advice Facility. Status |Status  (https://www.iso20022.org/standardsrepository/type/Status)|Standard|ISO20022 BM ()
    common:status AccountStatus?;
    # >
    # * `Enabled` - Account can be used for its intended purpose.
    # * `Disabled` - Account cannot be used for its intended purpose, either temporarily or permanently.
    # * `Deleted` - Account cannot be used any longer.
    # * `Proforma` - Account is temporary and can be partially used for its intended purpose. The account will be fully available for use when the account servicer has received all relevant documents.
    # * `Pending` - Account change is pending approval.
    accountstatustypevalues AccountStatusType?;
};

# An unique reference to an item or an occurrence of Legal Advice Facility. ||
# |
public type financialfacility record {
    # A production or operational capacity to perform a business function for delivering a banking product or service
    #
    # A functional classification of banking product that provides ongoing capacity to deliver financial services (e.g. loan service, payment service)
    string FinancialFacility?;
};

# Reference to the limitation related to the position of Legal Advice Facility. Limit|Limit (https://www.iso20022.org/standardsrepository/type/Limit)|Standard|ISO20022 (https://www.iso20022.org/)
public type limitarrangement record {
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
    limittypevalues LimitType?;
    # The curreny which is arranged in Legal Advice Facility. CurrencyCode|CurrencyCode (https://www.iso20022.org/standardsrepository/type/CurrencyCode)|Standard|ISO20022 BM ()
    common:currencycode LimitCurrency?;
    # The time period during which the limit is valid
    common:datetimeperiod LimitValidityPeriod?;
    # Amount of fee to be applied if a fixed amount
    common:amount LimitAmount?;
    # Current status of the limit.
    limitstatus LimitStatus?;
    # Rate of fee (percentage) to be applied 
    common:rate LimitRate?;
    # Specifies the periodicity linked to a limit for example the periodicity can indicate that the limit can be reached daily or monthly. (ISO20022)
    frequency LimitFrequency?;
    # The identifier of Condition
    common:identifier LimitIdentification?;
    # The start date and time when the limit becomes effective
    common:datetime LimitStartDatetime?;
    # >
    # * `Debit` - Transaction is a debt entry
    # * `Credit` - Transaction is a credit entry
    common:debitcreditindicatortvalues LimitCreditDebitIndicator?;
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
    common:amounttypevalues LimitAmountType?;
};

public type LegalAdvisoryArrangementOk record {|
    *http:Ok;
    LegalAdvisoryArrangement body;
|};

# Reference to the regulation which is defined in Legal Advice Facility. GovernanceRules|GovernanceRules (https://www.iso20022.org/standardsrepository/type/GovernanceRules)|Standard|ISO20022 BM ()
public type ruleset record {
    # The particular date and time point in the progression of time
    common:text RuleSetDefinition?;
    # The particular date and time point in the progression of time
    common:text RuleSetInterpretation?;
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
    rulesettypevalues RuleSetType?;
    # Name by which a party is known and which is usually used to identify that party. (ISO20022)
    common:name RuleSetName?;
    # The identifier of Condition
    common:identifier RuleSetIdentification?;
    # The status of Legal Advice Facility. Status |Status  (https://www.iso20022.org/standardsrepository/type/Status)|Standard|ISO20022 BM ()
    common:status RuleSetLifecycleStatus?;
};

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

# Fulfill any scheduled and ad-hoc obligations under a service arrangement, most typically for a financial product or facility within Legal Advisory. 
public type LegalAdviceFacility record {
    # A Classification value that distinguishes between arrangements according to the type of business services within Legal Advice Facility. ||
    # |
    common:featuretypevalues LegalAdviceFacilityParameterType?;
    # A selected optional product feature as subject matter of Legal Advice Facility. ||
    # |
    common:feature LegalAdviceFacilitySelectedOption?;
    # The type of Legal Advice Facility. ||
    # |
    bankingproducttype LegalAdviceFacilityType?;
    # Reference to the calendar used to fulfill Legal Advice Facility. ||
    # |
    calendar LegalAdviceFacilityCalendarReference?;
    # The status of Legal Advice Facility. Status |Status  (https://www.iso20022.org/standardsrepository/type/Status)|Standard|ISO20022 BM ()
    common:status LegalAdviceFacilityStatus?;
    # Reference to the customer who is involved in Legal Advice Facility. ||
    # |
    common:involvedparty LegalAdviceFacilityAssociatedParty?;
    # The curreny which is arranged in Legal Advice Facility. CurrencyCode|CurrencyCode (https://www.iso20022.org/standardsrepository/type/CurrencyCode)|Standard|ISO20022 BM ()
    common:currencycode LegalAdviceFacilityCurrency?;
    # Reference to the regulation which is defined in Legal Advice Facility. GovernanceRules|GovernanceRules (https://www.iso20022.org/standardsrepository/type/GovernanceRules)|Standard|ISO20022 BM ()
    ruleset LegalAdviceFacilityRegulationReference?;
    # A Classification that distinguishes between the regularity domains of Legal Advice Facility. ||
    # |
    rulesettype LegalAdviceFacilityRegulationType?;
    # Reference to the jurisdiction that is assigned to Legal Advice Facility in case of legal dispute. Jurisdiction|Jurisdiction (https://www.iso20022.org/standardsrepository/type/Jurisdiction)|Standard|ISO20022 BM ()
    jurisdiction LegalAdviceFacilityJurisdiction?;
    # The financial accounting unit into which the financial events, with regard to the origination and fulfillment of the agreement in the context of Legal Advice Facility, are entered. ||
    # |
    businessunit LegalAdviceFacilityBookingLocation?;
    # The type of account which is linked to Legal Advice Facility. OBExternalAccountSubType1Code| ()|Standard|UK Open Banking ()
    accounttypevalues LegalAdviceFacilityAccountType?;
    # Reference to the account which is linked to Legal Advice Facility. Account|Account  (https://www.iso20022.org/standardsrepository/type/Account)|Standard|ISO20022 BM ()
    account LegalAdviceFacilityAccountReference?;
    # Reference to the customer who is involved in Legal Advice Facility. ||
    # |
    common:involvedparty LegalAdviceFacilityCustomerReference?;
    # The position of Legal Advice Facility. Position |Position  (https://www.iso20022.org/standardsrepository/type/Position)|Standard|ISO20022 BM ()
    position LegalAdviceFacilityPosition?;
    # Reference to the product which is linked to Legal Advice Facility. Product_x000D_
    # |Product (https://www.iso20022.org/standardsrepository/type/Product)|Standard|ISO20022 BM ()
    common:bankingproduct LegalAdviceFacilityProductReference?;
    # Reference to the limitation related to the position of Legal Advice Facility. Limit|Limit (https://www.iso20022.org/standardsrepository/type/Limit)|Standard|ISO20022 (https://www.iso20022.org/)
    limitarrangement LegalAdviceFacilityPositionLimit?;
    # An unique reference to an item or an occurrence of Legal Advice Facility. ||
    # |
    financialfacility LegalAdviceFacilityReference?;
};

# >
# * `OpeningDate` - Date on which the account and related basic services are effectively operational for the account owner. (ISO20022)
# * `ClosingDate` - Date on which the account and related services cease effectively to be operational for the account owner. (ISO20022)
# * `BlockingDate` - 
# * `MaturityDate` - Maturity date for the account.
# * `LiveDate` - 
# * `RenewalDate` - 
public type accountdatetimetypevalues "OpeningDate"|"ClosingDate"|"BlockingDate"|"MaturityDate"|"LiveDate"|"RenewalDate";

# The financial accounting unit into which the financial events, with regard to the origination and fulfillment of the agreement in the context of Legal Advice Facility, are entered. ||
# |
public type businessunit record {
    # The business function associated with the business unit
    string BusinessFunction?;
    # The goal or objective of the business unit
    string Goal?;
};

# A characteristic of account which refers to LifecycleDate of account (e.g., ClosingDate, OpeningDate, LiveDate, etc.) 
public type accountdatetime record {
    # >
    # * `OpeningDate` - Date on which the account and related basic services are effectively operational for the account owner. (ISO20022)
    # * `ClosingDate` - Date on which the account and related services cease effectively to be operational for the account owner. (ISO20022)
    # * `BlockingDate` - 
    # * `MaturityDate` - Maturity date for the account.
    # * `LiveDate` - 
    # * `RenewalDate` - 
    accountdatetimetypevalues AccountDateType?;
    # The date and time associated with the account lifecycle event
    common:datetime AccountDate?;
};

# The identifier of account like Account Number.
public type accountidentification record {
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
    accountidentificationtypevalues AccountIdentificationType?;
    # The identifier of Condition
    common:identifier AccountIdentification?;
};

# The configuration and execution of Legal Advisory Arrangement arrangement within the Legal Advisory Arrangement
public type LegalAdvisoryArrangement record {
    # The required status/situation prior to the implementation of the feature
    common:condition Preconditions?;
    # The timing and key actions/milestones involved in completing the fulfillment feature instance
    common:schedule Schedule?;
    # The Legal Advisory Arrangement specific Business Service
    common:businessservice BusinessService?;
    # The required status/situation prior to the implementation of the feature
    common:condition Postconditions?;
    # The identifier of Condition
    common:identifier LegalAdviceFacilityReference?;
    # The identifier of Condition
    common:identifier LegalAdvisoryArrangementReference?;
    # The particular date and time point in the progression of time
    common:text LegalAdvisoryArrangementType?;
};

# The position of Legal Advice Facility. Position |Position  (https://www.iso20022.org/standardsrepository/type/Position)|Standard|ISO20022 BM ()
public type position record {
    # The value associated with the position
    common:value PositionValue?;
    # The quantity associated with the position
    string PositionQuantity?;
    # The date and time associated with the position
    common:datetime PositionDate?;
    # Amount of fee to be applied if a fixed amount
    common:amount PositionAmount?;
};

# The type of Legal Advice Facility. ||
# |
public type bankingproducttype record {
    # Definition or description of the product type
    string ProductTypeDefinition?;
    # >
    # * `LoanProduct` - 
    # * `CurrentAccountProduct` - 
    # * `SavingAccountProduct` - 
    # * `BrokeredProduct` - 
    # * `TermDepositProduct` - 
    common:bankingproducttypevalues ProductType?;
    # The authority responsible for issuing the product classification
    string ProductClassificationIssuingAuthority?;
};

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
# * `Bilateral` - Balance calculated regarding one member in the system. (ISO20022)
# * `Multilateral` - Balance calculated regarding all members in the system. (ISO20022)
public type balancecounterpartytypevalues "Bilateral"|"Multilateral";

public type accountcurrency record {
    # >
    # * `BaseCurrency` - Base currency of the account. (ISO20022)
    #
    # * `ReportingCurrency` - Currency used to calculate and report the balance and related entries of an account. (ISO20022)
    #
    # * `SecondaryCurrency` - 
    # * `TransferCurrency` - Currency of the amount to be transferred which may be different from the currency of the debtor's account. (ISO20022)
    currencytypevalues AccountCurrencyType?;
    # The curreny which is arranged in Legal Advice Facility. CurrencyCode|CurrencyCode (https://www.iso20022.org/standardsrepository/type/CurrencyCode)|Standard|ISO20022 BM ()
    common:currencycode AccountCurrency?;
};

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

# Reference to the jurisdiction that is assigned to Legal Advice Facility in case of legal dispute. Jurisdiction|Jurisdiction (https://www.iso20022.org/standardsrepository/type/Jurisdiction)|Standard|ISO20022 BM ()
public type jurisdiction record {
    # Jurisdiction that will be assigned in case of legal dispute.
    string Jurisdiction?;
};

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

# The type of account which is linked to Legal Advice Facility. OBExternalAccountSubType1Code| ()|Standard|UK Open Banking ()
public type accounttypevalues "DebitAccount"|"CreditAccount"|"VostroAcount"|"NostroAccount"|"PaymentAccount"|"SettlementAccount"|"SavingAccount"|"CurrentAccount"|"CashAccount"|"LoanAccount"|"IndividualAccount"|"JointAccount"|"LiquidationAccount"|"ProvisionAccount"|"PartnershipAccount"|"InvestmentAccount";

# The state of the obligations managed on the account, the result of all entries on the account.
#
# Numerical representation of the net increases and decreases in an account at a specific point in time. (ISO20022)
#
# Banking: Amount available in an account for withdrawal or use.
# Read more: http://www.businessdictionary.com/definition/balance.html
#
# Bookkeeping: Difference between the debit and credit sides of an account.
# Read more: http://www.businessdictionary.com/definition/balance.html
public type accountbalance record {
    # Amount of fee to be applied if a fixed amount
    common:amount BalanceAmount?;
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
    balancetypevalues BalanceType?;
    # The date and time when the balance is valued or becomes effective
    common:datetime BalanceValueDate?;
    # >
    # * `Debit` - Transaction is a debt entry
    # * `Credit` - Transaction is a credit entry
    common:debitcreditindicatortvalues BalanceIndicator?;
    # >
    # * `Bilateral` - Balance calculated regarding one member in the system. (ISO20022)
    # * `Multilateral` - Balance calculated regarding all members in the system. (ISO20022)
    balancecounterpartytypevalues BalanceCounterpartyType?;
    # The date and time when the balance is calculated
    common:datetime BalanceCalculationDate?;
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
    balancesubtypevalues BalanceSubType?;
};

# Current status of the limit.
public type limitstatus record {
    # The status of Legal Advice Facility. Status |Status  (https://www.iso20022.org/standardsrepository/type/Status)|Standard|ISO20022 BM ()
    common:status LimitStatus?;
    # >
    # * `Enabled` - Limit is currently in effect.
    # * `Disabled` - Limit is not currently in effect.
    # * `Deleted` - Limit has been deleted or suspended.
    # * `Requested` - Limit has been asked for and is not yet enabled.
    limitstatustypevalues LimitStatusType?;
};

# A Classification that distinguishes between the regularity domains of Legal Advice Facility. ||
# |
public type rulesettype record {
    # Name by which a party is known and which is usually used to identify that party. (ISO20022)
    common:name RuleSetTypeName?;
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
    rulesettypevalues RuleSetType?;
};

# Reference to the calendar used to fulfill Legal Advice Facility. ||
# |
public type calendar record {
    # >
    # * `UKCalendar` - 
    # * `ChineseCalendar` - 
    calendartypevalues CalendarType?;
    # Name by which a party is known and which is usually used to identify that party. (ISO20022)
    common:name CalendarName?;
};

# >
# * `Enabled` - Limit is currently in effect.
# * `Disabled` - Limit is not currently in effect.
# * `Deleted` - Limit has been deleted or suspended.
# * `Requested` - Limit has been asked for and is not yet enabled.
public type limitstatustypevalues "Enabled"|"Disabled"|"Deleted"|"Requested";

# >
# * `Cash` - Payment is with cash.
# * `Unit` - Units are redeemed to cover payment.
public type feepaymentmethodtypevalues "Cash"|"Unit";

# >
# * `UKCalendar` - 
# * `ChineseCalendar` - 
public type calendartypevalues "UKCalendar"|"ChineseCalendar";

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
public type limittypevalues "Multilateral"|"Bilateral"|"Netbilateral"|"Indirectbilateral"|"Global"|"Mandatorybilateral"|"Discretionarybilateral"|"Directdebit"|"Singlecustomerdirectdebit"|"Singlefinancialinstitutiondirectdebit"|"Totaldailycustomerdirectdebit"|"Totaldailyfinancialinstitutiondirectdebit"|"Autocollateralisation"|"Unsecuredcredit"|"Externalguarantee";

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
# * `Enabled` - Account can be used for its intended purpose.
# * `Disabled` - Account cannot be used for its intended purpose, either temporarily or permanently.
# * `Deleted` - Account cannot be used any longer.
# * `Proforma` - Account is temporary and can be partially used for its intended purpose. The account will be fully available for use when the account servicer has received all relevant documents.
# * `Pending` - Account change is pending approval.
public type accountstatustypevalues "Enabled"|"Disabled"|"Deleted"|"Proforma"|"Pending";

# Reference to the account which is linked to Legal Advice Facility. Account|Account  (https://www.iso20022.org/standardsrepository/type/Account)|Standard|ISO20022 BM ()
public type account record {
    # A characteristic of account which refers to the LifecycleStatus of account like opened, closed, blocked, etc.
    #
    # Specifies the current state of an account. (ISO20022)
    accountstatus AccountStatus?;
    # The identifier of account like Account Number.
    accountidentification AccountIdentification?;
    # A characteristic of account which refers to LifecycleDate of account (e.g., ClosingDate, OpeningDate, LiveDate, etc.) 
    accountdatetime AccountDate?;
    # The type of account which is linked to Legal Advice Facility. OBExternalAccountSubType1Code| ()|Standard|UK Open Banking ()
    accounttypevalues AccountType?;
    # The particular date and time point in the progression of time
    common:text AccountPurpose?;
    # The state of the obligations managed on the account, the result of all entries on the account.
    #
    # Numerical representation of the net increases and decreases in an account at a specific point in time. (ISO20022)
    #
    # Banking: Amount available in an account for withdrawal or use.
    # Read more: http://www.businessdictionary.com/definition/balance.html
    #
    # Bookkeeping: Difference between the debit and credit sides of an account.
    # Read more: http://www.businessdictionary.com/definition/balance.html
    accountbalance AccountBalance?;
    # The currency associated with the account
    accountcurrency AccountCurrency?;
    # The particular date and time point in the progression of time
    common:text AccountDescription?;
    # Name by which a party is known and which is usually used to identify that party. (ISO20022)
    common:name AccountName?;
};
