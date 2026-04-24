import financial.bian.attribute.groups.common as common;

import ballerina/http;

# >
# * `Onclosing` - This fee is triggered on closing of a product
# * `Onopening` - This fee is triggered on opening of a product
# * `Chargingperiod` - This fee is triggered at the end of each charging period
# * `Daily` - This fee is triggered every day
# * `Peritem` - This fee is triggered by the processing of an item on the product
# * `Monthly` - This fee is triggered monthly
# * `Onanniversary` - This fee is triggered on the anniversary of opening the product
# * `Other` - Other Fee Frequency
# * `Perhundredpounds` - This fee is triggered for every hundred pounds withdrawn
# * `Perhour` - This fee is triggered every hour
# * `Peroccurrence` - This fee is triggered per occurrence of the transaction or service. This differs from PerItem, in that if a batch of items is processed at the same time, a PerOccurrence fee would incur a single charge, whereas a PerItem fee would be charged for each item within the batch.
# * `Persheet` - This fee is levied on every statement sheet
# * `Pertransaction` - The fee is charged for each transaction
# * `Pertransactionamount` - The amount stated is levied for each transaction processed
# * `Pertransactionpercentage` - The fee amount is the given percentage of the transaction processed and is levied for each transaction
# * `Quarterly` - This fee is triggered at the end of every quarter
# * `Sixmonthly` - This fee is triggered at the end of every 6 month period
# * `Statementmonthly` - This fee is triggered based on a monthly statement period
# * `Weekly` - The fee is triggered weekly
# * `Yearly` - This fee is triggered yearly
public type Feeapplicationfrequencyvalues "Onclosing"|"Onopening"|"Chargingperiod"|"Daily"|"Peritem"|"Monthly"|"Onanniversary"|"Other"|"Perhundredpounds"|"Perhour"|"Peroccurrence"|"Persheet"|"Pertransaction"|"Pertransactionamount"|"Pertransactionpercentage"|"Quarterly"|"Sixmonthly"|"Statementmonthly"|"Weekly"|"Yearly";

public type DateTime record {
    # Expression of the point in time
    #
    # is expressed according to "TimeIndicationType"
    # e.g. period, day, more detailed indication
    string TimeIndication?;
    string TimeIndicationType?;
};

public type Markettypevalues "FinancialMarket"|"GeneralMarket";

# Details of the deposit transaction
public type DepositTransaction record {
    # The deposited amount
    common:Amount DepositAmount?;
    # An identifier that allows to uniquely refer to an instance of a transaction.
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
    # The name of transaction.
    common:Name TransactionName?;
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
    # The deposited amount
    common:Amount FinancialTransactionAmount?;
    # FinancialTransactionFromAccount
    common:Account FinancialTransactionFromAccount?;
    # FinancialTransactionTargetAccount
    common:Account FinancialTransactionTargetAccount?;
    # The date when the identifier became valid.
    common:Datetime FinancialTransactionDateTime?;
};

public type UK\.OB\.Producttypevalues "Businesscurrentaccount"|"Commercialcreditcard"|"Other"|"Personalcurrentaccount"|"Smeloan";

public type EventInvolvement record {
    string PartyRoleType?;
    # The name of transaction.
    common:Name PartyRoleName?;
    # Period of time during which the status is valid.
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

# Fulfill any scheduled and ad-hoc obligations under a service arrangement, most typically for a financial product or facility within Investment Account. 
public type InvestmentAccountFacility record {
    # Reference to the investment account product instance
    InvestmentAccountAgreement ProductInstanceReference?;
    # The identifier of account like Account Number.
    common:Accountidentification InvestmentAccountNumber?;
    # Reference to an entity that assigns and manages the identification.
    # tReference to the organization or agency that issued the identifier (e.g., DMV, Passport Office).
    common:Involvedparty CustomerReference?;
    # Bank branch associated with the account for booking purposes
    common:Branch BankBranchLocationReference?;
    # LinkedCashAccount
    common:Account LinkedCashAccount?;
    # >
    # * `AccountIsParentAccountForAccount` - 
    # * `AccountIsSubAccountForAccount` - 
    # * `AccountIsLinkedToAccount` - 
    Account_Accountrelationshiptypevalues LinkType?;
    # AccountDetails
    common:Account AccountDetails?;
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
    common:Accounttypevalues InvestmentAccountType?;
    # Details the range of instruments that are tracked by the facility (each instrument has its own transaction record/holding position
    common:Profile InvestmentAccountInstrumentProfile?;
    # Details for an individual tracked instrument type - the investment account can track the holdings for multiple securities
    string InvestmentAccountInstrumentRecord?;
    # Reference to the type of investment instrument being tracked (e.g. equity, commodity, FX/MM, derivative)
    Instrumenttype InstrumentType?;
    # Reference to the type of investment instrument being tracked (e.g. equity, commodity, FX/MM, derivative)
    Instrumenttype InstrumentReference?;
    # Reference to the market where the instrument is quoted/traded (e.g. ISE Equities Marketplace)
    Market TradingMarketplaceReference?;
    # The processing schedule for applying the type of corporate action to the investment account
    common:Schedule InstrumentProcessingSchedule?;
    # The type of event impacting the state of the instrument (e.g. corporate actions)
    EventInvolvement InstrumentEventType?;
    # Details of the event associated actions or impact
    string InstrumentEventDescription?;
    # The date and time the deposit was initiated
    common:Date InstrumentEventDate?;
    # An identifier that allows to uniquely refer to an instance of a transaction.
    common:Identifier TaxReference?;
    # The definition of an applicable entitlement option
    PartyObligationOrEntitlement EntitlementOptionDefinition?;
    # The definition of an applicable entitlement option
    PartyObligationOrEntitlement EntitlementOptionSetting?;
    # The definition of an applicable restriction option
    string RestrictionOptionDefinition?;
    # The setting for the restriction option
    string RestrictionOptionSetting?;
    # LinkedAccounts
    common:Account LinkedAccounts?;
    # >
    # * `OpeningDate` - Date on which the account and related basic services are effectively operational for the account owner. (ISO20022)
    # * `ClosingDate` - Date on which the account and related services cease effectively to be operational for the account owner. (ISO20022)
    # * `BlockingDate` - 
    # * `MaturityDate` - Maturity date for the account.
    # * `LiveDate` - 
    # * `RenewalDate` - 
    common:Accountdatetimetypevalues DateType?;
    # Value of the date type
    DateTime Date?;
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
    common:Productidentificationtypevalues InvestmentAccountSecondaryProductID?;
    # An identifier that allows to uniquely refer to an instance of a transaction.
    common:Identifier InvestmentAccountProductID?;
    # >
    # * `Businesscurrentaccount` - 
    # * `Commercialcreditcard` - 
    # * `Other` - 
    # * `Personalcurrentaccount` - 
    # * `Smeloan` - 
    UK\.OB\.Producttypevalues InvestmentAccountProductType?;
    # The name of transaction.
    common:Name InvestmentAccountProductName?;
    # An identifier that allows to uniquely refer to an instance of a transaction.
    common:Identifier InvestmentAccountProductMarketingStateID?;
    # The associated limit settings and rules
    common:LimitArrangement LimitSettings?;
    # The current calculated limit
    string LimitValue?;
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
    common:Limittypevalues LimitType?;
};

public type Withdrawaltypevalues "CashWithdrawal"|"SecurityWithdrawal";

# Reference to the type of investment instrument being tracked (e.g. equity, commodity, FX/MM, derivative)
public type Instrumenttype record {
    # Type of physical item that can be issued as part of a product
    string Instrumenttype?;
};

# Country in which a market operates. (ISO20022)
public type Country record {
    # Reference to an entity that assigns and manages the identification.
    # tReference to the organization or agency that issued the identifier (e.g., DMV, Passport Office).
    common:Involvedparty NationalRegulatoryAuthority?;
    # The name of transaction.
    common:Name CountryName?;
    # Identifies a nation with its own government (ISO 3166).
    Countrycode CountryCode?;
};

# Identifies a nation with its own government (ISO 3166).
public type Countrycode record {
    # Code to identify a country, a dependency, or another area of particular geopolitical interest, on the basis of country names obtained from the United Nations (ISO 3166, Alpha-2 code).
    string Countrycode?;
};

public type CorporateAction record {
    # >
    # * `Active` - The CA event is active. (ISO20022)
    # * `Deactivated` - The CA event is deactivated. The clients cannot send instruction anymore. (ISO20022)
    # * `Expired` - The CA event is expired, no more processing, claims, transformations take place. (ISO20022)
    # * `Cancelled` - The CA event is cancelled. (ISO20022)
    # * `Withdrawn` - The CA event is withrawn, ie, cancelled by the market. (ISO20022)
    # * `Inactive` - Option is not active and can no longer be responded to. Any responses already processed against this option will remain valid, eg, expired option. (ISO20022)
    Corporateactionstatustypevalues CorporateActionStatus?;
    # >
    # * `Dividendreinvestment` - Dividend payment where holders can keep cash or have the cash reinvested in the market by the issuer into additional shares in the issuing company. To be distinguished from DVOP as the company invests the dividend in the market rather than creating new share capital in exchange for the dividend.
    # * `Accumulation` - Funds related event in which the income (for example accumulation units) that accrues during an accounting period is retained within the fund instead of being paid away to investors. The retained income is nonetheless deemed to have been distributed to investors for tax purposes.
    # * `Activetradingstatus` - Trading in the security has commenced or security has been re-activated after a suspension in trading.
    # * `Annualgeneralmeeting` - Meeting Annual general meeting.
    # * `Attachment` - Combination of different security types to create a unit. Units are usually comprised of warrants and bonds or warrants and equities. Securities may be combined at the request of the security holder or based on market convention.
    # * `Bankruptcy` - Legal status of a company unable to pay creditors. Bankruptcy usually involves a formal court ruling. Securities may become valueless.
    # * `Bonddefault` - Failure by the company to perform obligations defined as default events under the bond agreement and that have not been remedied.
    # * `Bonusissue` - Bonus or capitalisation issue. Security holders receive additional assets free of payment from the issuer, in proportion to their holding.
    # * `Callonintermediatesecurities` - Call or exercise on nil paid securities or intermediate securities resulting from an intermediate securities distribution (RHDI). This code is used for the second event, when an intermediate securities' issue (rights/coupons) is composed of two events, the first event being the distribution of intermediate securities.
    # * `Capitaldistribution` - Corporate event pays shareholders an amount in cash issued from the capital account. There is no reduction to the face value of a single share (or the share has no par value). The number of circulating shares remains unchanged.
    # * `Capitalgainsdistribution` - Event is the distribution of profits resulting from the sale of securities. Shareholders of mutual funds, unit trusts, or SICAVs are recipients of capital gains distributions and are often reinvested in additional shares of the fund.
    # * `Capitalisation` - Increase of the current principal of a debt instrument without increasing the nominal value. It normally arises from the incorporation of due but unpaid interest into the principal. This is commonly done by increasing the pool factor value, for example, capitalisation, and negative amortisation.
    # * `Cashdistributionfromnoneligiblesecuritiessales` - Distribution to shareholders of cash resulting from the selling of non-eligible securities, for example, in the frame of a depositary receipt program.
    # * `Cashdividend` - Distribution of cash to shareholders, in proportion to their equity holding. Ordinary dividends are recurring and regular. Shareholder must take cash and may be offered a choice of currency.
    # * `Change` - Information regarding a change further described in the corporate action details.
    # * `Classactionproposedsettlement` - Situation where interested parties seek restitution for financial loss. The security holder may be offered the opportunity to join a class action proceeding and would need to respond with an instruction.
    # * `Companyoption` - Company option may be granted by the company, allowing the holder to take up shares at some future date(s) at a pre arranged price in the company. A company may not grant options which enable the holder to take up unissued shares at a time which is five or more years from the date of the grant. Option holders are not members of a company. They are contingent creditors of a company and hence may, in some instances, be entitled to vote on and be bound by a scheme of arrangement between the creditors and the company. As many options have multiple exercise periods a company option will either lapse or carry on to the next expiry date.
    # * `Consent` - Procedure that aims to obtain consent of holder to a proposal by the issuer or a third party without convening a meeting. For example, consent to change the terms of a bond.
    # * `Conversion` - Conversion of securities (generally convertible bonds or preferred shares) into another form of securities (usually common shares) at a pre-stated price/ratio.
    # * `Couponstripping` - Coupon stripping is the process whereby interest coupons for future payment dates are separated from the security corpus that entitles the holder to the principal repayment.
    # * `Courtmeeting` - Announcement of a meeting at a Court.
    # * `Creditevent` - Occurrence of credit derivative for which the issuer of one or several underlying securities is unable to fulfill its financial obligations (as defined in terms and conditions).
    # * `Decreaseinvalue` - Reduction of face value of a single share or the value of fund assets. The number of circulating shares/units remains unchanged. This event may include a cash payout to holders.
    # * `Detachment` - Separation of components that comprise a security, for example, usually units comprised of warrants and bond or warrants and equity. Units may be broken up at the request of the security holder or based on market convention.
    # * `Disclosure` - Requirement for holders or beneficial owners to disclose their name, location and holdings of any issue to the issuer.
    # * `Dividendoption` - Distribution of a dividend to shareholders with a choice of benefit to receive. Shareholders may choose to receive shares or cash. To be distinguished from DRIP as the company creates new share capital in exchange for the dividend rather than investing the dividend in the market.
    # * `Drawing` - Securities are redeemed in part before the scheduled final maturity date. It is done without any pool factor reduction. The redemption is reflected in a debit of the face amount (FAMT). Drawing is distinct from partial call since drawn bonds are chosen by lottery. Therefore, not every holder is affected in the same way.
    # * `Dutchauction` - Action by a party wishing to acquire a security. Holders of the security are invited to make an offer to sell, within a specific price range. The acquiring party will buy from the holder with lowest offer.
    # * `Earlyredemption` - This includes drawing, partial and full call, put.
    # * `Exchange` - Exchange of holdings for other securities and/or cash. The exchange can be either mandatory or voluntary involving the exchange of outstanding securities for different securities and/or cash. For example "exchange offer", "capital reorganisation" or "funds separation".
    # * `Exchangeoption` - Event is an option for the shareholders to exchange their securities for other securities and/or cash. Exchange options are mentioned in the terms and conditions of a security and are valid during the whole lifetime of a security.
    # * `Extraordinarygeneralmeeting` - Extraordinary or Special General Meeting. Extraordinary or special general meeting.
    # * `Finalmaturity` - Redemption of an entire issue outstanding of securities, for example, bonds, preferred equity, funds, by the issuer or its agent, for example, asset manager, at final maturity.
    # * `Fullcall` - Redemption of an entire issue outstanding of securities, for example, bonds, preferred equity, funds, by the issuer or its agent, for example, asset manager, before final maturity.
    # * `Increaseinvalue` - Increase in the face value of a single security. The number of circulating securities remains unchanged.
    # * `Information` - Information provided by the issuer having no accounting/financial impact on the holder.
    # * `Instalmentcall` - Instalment towards the purchase of equity capital, subject to an agreement between an issuer and a purchaser.
    # * `Interestpayment` - Interest payment distributed to holders of an interest bearing asset.
    # * `Interestpaymentwithprincipal` - Event which consists of two components, the decrease of the amortized value of a pool factor security and an interest payment.
    # * `Intermediatesecuritiesdistribution` - Distribution of intermediate securities that gives the holder the right to take part in a future event.
    # * `Liquidationdividend` - Distribution of cash, assets or both. Debt may be paid in order of priority based on preferred claims to assets specified by the security.
    # * `Maturityextension` - As stipulated in the security's Terms and Conditions, the issuer or the holder may prolong the maturity date of a security. After extension, the security details may differ from the original issue. An issuer initiated extension may be subject to holder's approval.
    # * `Merger` - Exchange of outstanding securities, initiated by the issuer which may include options, as the result of two or more companies combining assets, that is, an external, third party company. Cash payments may accompany share exchange.
    # * `Namechange` - Event is a name change. The issuing company changes its name. The event shows the change from old name to new name and may involve surrendering physical shares with the old name to the registrar.
    # * `Nonofficialoffer` - Offers that are not supervised or regulated by an official entity and being offered by a party, for example a broker, usually at a discount price, for example broker offer, mini-tender, mini odd lot offer or third party offer.
    # * `Nonustefradcertification` - Non-US beneficial owner certification requirement for exchange of temporary to permanent notes.
    # * `Oddlotsalepurchase` - Sale or purchase of odd-lots to/from the issuing company, initiated either by the holder of the security or through an offer made by the issuer.
    # * `Ordinarygeneralmeeting` - Ordinary general meeting.
    # * `Otherevent` - Other event, use only when no other event type applies, for example, a new event type.
    # * `Paripassu` - Occurs when securities with different characteristics, for example, shares with different entitlements to dividend or voting rights, become identical in all respects, for example, pari-passu or assimilation. May be scheduled in advance, for example, shares resulting from a bonus may become fungible after a pre-set period of time, or may result from outside events, for example, merger, reorganisation, issue of supplementary tranches.
    # * `Partialredemptionwithoutpoolfactorreduction` - Securities are redeemed in part before their scheduled final maturity date. It is done without any pool factor reduction. The redemption is reflected in a debit of the face amount (FAMT).
    # * `Partialredemptionwithpoolfactorreduction` - Securities are redeemed in part before their scheduled final maturity date. The redemption is reflected in a pool factor reduction. No movement of securities occurs.
    # * `Payinkind` - Interest payment, in any kind except cash, distributed to holders of an interest bearing asset.
    # * `Placeofincorporation` - Changes in the state of incorporation for US companies and changes in the place of incorporation for foreign companies. Where shares need to be registered following the incorporation change, the holder(s) may have to elect the registrar.
    # * `Prefunding` - Also called partial defeasance. Issuer has money set aside to redeem a portion of an issue and the indenture states that the securities could be called earlier than the stated maturity.
    # * `Priorityissue` - Form of open or public offer where, due to a limited amount of securities available, priority is given to existing shareholders.
    # * `Putredemption` - Early redemption of a security at the election of the holder subject to the terms and condition of the issue with no reduction in nominal value.
    # * `Redenomination` - Event by which the unit (currency and/or nominal) of a security is restated, for example, nominal/par value of security in a national currency is restated in another currency.
    # * `Remarketing` - Purchase and sale of remarketed preferred equities/bonds through the negotiation of interest rate between the issuers and the holders.
    # * `Remarketingagreement` - Purchase and sale of remarketed preferred equities/bonds through the negotiation of interest rate between the issuers and the holders.
    # * `Repurchaseoffer` - Repurchase offer / issuer bid / reverse rights. Offer to existing holders by the issuing company to repurchase its own securities. The objective of the offer is to reduce the number of outstanding securities.
    # * `Reversestocksplit` - Decrease in a company's number of outstanding equities without any change in the shareholder's equity or the aggregate market value at the time of the split. Equity price and nominal value are increased accordingly.
    # * `Rightsissue` - Offer to holders of a security to subscribe for additional securities via the distribution of an intermediate security. Both processes are included in the same event.
    # * `Scripdividend` - Dividend or interest paid in the form of scrip.
    # * `Securitiesholdersmeeting` - Ordinary or annual or extraordinary or special general meeting.
    # * `Sharespremiumdividend` - Corporate event pays shareholders an amount in cash issued from the shares premium reserve. It is similar to a dividend but with different tax implications.
    # * `Smallestnegotiableunit` - Modification of the smallest negotiable unit of shares in order to obtain a new negotiable unit.
    # * `Spinoff` - Distribution of securities issued by another company. The distributed securities may either be of a newly created or of an existing company. For example, spin-off, demerger, unbundling, divestment.
    # * `Stockdividend` - Dividend paid to shareholders in the form of equities of the issuing corporation.
    # * `Stocksplit` - Increase in a corporation's number of outstanding equities without any change in the shareholder's equity or the aggregate market value at the time of the split. Equity price and nominal value are reduced accordingly.
    # * `Subscription` - Ability for security holders to purchase (additional or new) securities at a certain price, in proportion to their holding.
    # * `Taxonnondistributedproceeds` - Taxable component on non-distributed proceeds, for example, Australian deemed income or US 871m income regulation.
    # * `Taxreclaim` - Event related to tax reclaim activities.
    # * `Tender` - Offer made to holders by a third party, requesting them to sell (tender) or exchange their securities.
    # * `Tradingstatusdelisted` - Security is no longer able to comply with the listing requirements of a stock exchange and is removed from official board quotation.
    # * `Tradingstatussuspended` - Trading in the security has been suspended.
    # * `Warrantexercise` - Option offered to holders to buy (call warrant) or to sell (put warrant) a specific amount of stock, cash, or commodity, at a predetermined price, during a predetermined period of time (which usually corresponds to the life of the issue).
    # * `Withholdingtaxreliefcertification` - Certification process for withholding tax reduction or exemption based on the tax status of the holder.
    # * `Worthless` - Booking out of valueless securities.
    Corporateactiontypevalues CorporateActionType?;
    # >
    # * `TradingDate` - Date/time at which the deal (rights) was agreed. (ISO20022)
    # * `PariPassuDate` - Date on which security will assimilate, become fungible, or have the same rights to dividends as the parent issue. (ISO20022)
    # * `AnnouncementDate` - Date/time at which the issuer announced that a corporate action event will occur such as the issue of securities or an official meeting. (ISO20022)
    # * `EffectiveDate` - Date/time at which an event is officially effective from the issuer's perspective. (ISO20022)
    # * `LapsedDate` - Date/time at which an event/offer is terminated or lapsed. (ISO20022)
    # * `MarginFixingDate` - Date/time at which the margin rate will be determined . (ISO20022)
    Corporateactiondatetimetypevalues CorporateActionDateTime?;
    # An identifier that allows to uniquely refer to an instance of a transaction.
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
    # The name of transaction.
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
    string EventType?;
    # The date when the identifier became valid.
    common:Datetime EventDateTime?;
    string EventDescription?;
    string EventSource?;
    common:Location EventLocation?;
    common:Action EventAction?;
    common:Status EventStatus?;
    string EventValue?;
    # Period of time during which the status is valid.
    common:Datetimeperiod EventValidityPeriod?;
    # An identifier that allows to uniquely refer to an instance of a transaction.
    common:Identifier EventIdentification?;
};

public type Paymenttransactionstatus record {
    common:Status PaymentTransactionStatus?;
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
    Paymenttransactionstatustypevalues PaymentTransactionStatusType?;
};

public type DepositOk record {|
    *http:Ok;
    Deposit body;
|};

# >
# * `Dividendreinvestment` - Dividend payment where holders can keep cash or have the cash reinvested in the market by the issuer into additional shares in the issuing company. To be distinguished from DVOP as the company invests the dividend in the market rather than creating new share capital in exchange for the dividend.
# * `Accumulation` - Funds related event in which the income (for example accumulation units) that accrues during an accounting period is retained within the fund instead of being paid away to investors. The retained income is nonetheless deemed to have been distributed to investors for tax purposes.
# * `Activetradingstatus` - Trading in the security has commenced or security has been re-activated after a suspension in trading.
# * `Annualgeneralmeeting` - Meeting Annual general meeting.
# * `Attachment` - Combination of different security types to create a unit. Units are usually comprised of warrants and bonds or warrants and equities. Securities may be combined at the request of the security holder or based on market convention.
# * `Bankruptcy` - Legal status of a company unable to pay creditors. Bankruptcy usually involves a formal court ruling. Securities may become valueless.
# * `Bonddefault` - Failure by the company to perform obligations defined as default events under the bond agreement and that have not been remedied.
# * `Bonusissue` - Bonus or capitalisation issue. Security holders receive additional assets free of payment from the issuer, in proportion to their holding.
# * `Callonintermediatesecurities` - Call or exercise on nil paid securities or intermediate securities resulting from an intermediate securities distribution (RHDI). This code is used for the second event, when an intermediate securities' issue (rights/coupons) is composed of two events, the first event being the distribution of intermediate securities.
# * `Capitaldistribution` - Corporate event pays shareholders an amount in cash issued from the capital account. There is no reduction to the face value of a single share (or the share has no par value). The number of circulating shares remains unchanged.
# * `Capitalgainsdistribution` - Event is the distribution of profits resulting from the sale of securities. Shareholders of mutual funds, unit trusts, or SICAVs are recipients of capital gains distributions and are often reinvested in additional shares of the fund.
# * `Capitalisation` - Increase of the current principal of a debt instrument without increasing the nominal value. It normally arises from the incorporation of due but unpaid interest into the principal. This is commonly done by increasing the pool factor value, for example, capitalisation, and negative amortisation.
# * `Cashdistributionfromnoneligiblesecuritiessales` - Distribution to shareholders of cash resulting from the selling of non-eligible securities, for example, in the frame of a depositary receipt program.
# * `Cashdividend` - Distribution of cash to shareholders, in proportion to their equity holding. Ordinary dividends are recurring and regular. Shareholder must take cash and may be offered a choice of currency.
# * `Change` - Information regarding a change further described in the corporate action details.
# * `Classactionproposedsettlement` - Situation where interested parties seek restitution for financial loss. The security holder may be offered the opportunity to join a class action proceeding and would need to respond with an instruction.
# * `Companyoption` - Company option may be granted by the company, allowing the holder to take up shares at some future date(s) at a pre arranged price in the company. A company may not grant options which enable the holder to take up unissued shares at a time which is five or more years from the date of the grant. Option holders are not members of a company. They are contingent creditors of a company and hence may, in some instances, be entitled to vote on and be bound by a scheme of arrangement between the creditors and the company. As many options have multiple exercise periods a company option will either lapse or carry on to the next expiry date.
# * `Consent` - Procedure that aims to obtain consent of holder to a proposal by the issuer or a third party without convening a meeting. For example, consent to change the terms of a bond.
# * `Conversion` - Conversion of securities (generally convertible bonds or preferred shares) into another form of securities (usually common shares) at a pre-stated price/ratio.
# * `Couponstripping` - Coupon stripping is the process whereby interest coupons for future payment dates are separated from the security corpus that entitles the holder to the principal repayment.
# * `Courtmeeting` - Announcement of a meeting at a Court.
# * `Creditevent` - Occurrence of credit derivative for which the issuer of one or several underlying securities is unable to fulfill its financial obligations (as defined in terms and conditions).
# * `Decreaseinvalue` - Reduction of face value of a single share or the value of fund assets. The number of circulating shares/units remains unchanged. This event may include a cash payout to holders.
# * `Detachment` - Separation of components that comprise a security, for example, usually units comprised of warrants and bond or warrants and equity. Units may be broken up at the request of the security holder or based on market convention.
# * `Disclosure` - Requirement for holders or beneficial owners to disclose their name, location and holdings of any issue to the issuer.
# * `Dividendoption` - Distribution of a dividend to shareholders with a choice of benefit to receive. Shareholders may choose to receive shares or cash. To be distinguished from DRIP as the company creates new share capital in exchange for the dividend rather than investing the dividend in the market.
# * `Drawing` - Securities are redeemed in part before the scheduled final maturity date. It is done without any pool factor reduction. The redemption is reflected in a debit of the face amount (FAMT). Drawing is distinct from partial call since drawn bonds are chosen by lottery. Therefore, not every holder is affected in the same way.
# * `Dutchauction` - Action by a party wishing to acquire a security. Holders of the security are invited to make an offer to sell, within a specific price range. The acquiring party will buy from the holder with lowest offer.
# * `Earlyredemption` - This includes drawing, partial and full call, put.
# * `Exchange` - Exchange of holdings for other securities and/or cash. The exchange can be either mandatory or voluntary involving the exchange of outstanding securities for different securities and/or cash. For example "exchange offer", "capital reorganisation" or "funds separation".
# * `Exchangeoption` - Event is an option for the shareholders to exchange their securities for other securities and/or cash. Exchange options are mentioned in the terms and conditions of a security and are valid during the whole lifetime of a security.
# * `Extraordinarygeneralmeeting` - Extraordinary or Special General Meeting. Extraordinary or special general meeting.
# * `Finalmaturity` - Redemption of an entire issue outstanding of securities, for example, bonds, preferred equity, funds, by the issuer or its agent, for example, asset manager, at final maturity.
# * `Fullcall` - Redemption of an entire issue outstanding of securities, for example, bonds, preferred equity, funds, by the issuer or its agent, for example, asset manager, before final maturity.
# * `Increaseinvalue` - Increase in the face value of a single security. The number of circulating securities remains unchanged.
# * `Information` - Information provided by the issuer having no accounting/financial impact on the holder.
# * `Instalmentcall` - Instalment towards the purchase of equity capital, subject to an agreement between an issuer and a purchaser.
# * `Interestpayment` - Interest payment distributed to holders of an interest bearing asset.
# * `Interestpaymentwithprincipal` - Event which consists of two components, the decrease of the amortized value of a pool factor security and an interest payment.
# * `Intermediatesecuritiesdistribution` - Distribution of intermediate securities that gives the holder the right to take part in a future event.
# * `Liquidationdividend` - Distribution of cash, assets or both. Debt may be paid in order of priority based on preferred claims to assets specified by the security.
# * `Maturityextension` - As stipulated in the security's Terms and Conditions, the issuer or the holder may prolong the maturity date of a security. After extension, the security details may differ from the original issue. An issuer initiated extension may be subject to holder's approval.
# * `Merger` - Exchange of outstanding securities, initiated by the issuer which may include options, as the result of two or more companies combining assets, that is, an external, third party company. Cash payments may accompany share exchange.
# * `Namechange` - Event is a name change. The issuing company changes its name. The event shows the change from old name to new name and may involve surrendering physical shares with the old name to the registrar.
# * `Nonofficialoffer` - Offers that are not supervised or regulated by an official entity and being offered by a party, for example a broker, usually at a discount price, for example broker offer, mini-tender, mini odd lot offer or third party offer.
# * `Nonustefradcertification` - Non-US beneficial owner certification requirement for exchange of temporary to permanent notes.
# * `Oddlotsalepurchase` - Sale or purchase of odd-lots to/from the issuing company, initiated either by the holder of the security or through an offer made by the issuer.
# * `Ordinarygeneralmeeting` - Ordinary general meeting.
# * `Otherevent` - Other event, use only when no other event type applies, for example, a new event type.
# * `Paripassu` - Occurs when securities with different characteristics, for example, shares with different entitlements to dividend or voting rights, become identical in all respects, for example, pari-passu or assimilation. May be scheduled in advance, for example, shares resulting from a bonus may become fungible after a pre-set period of time, or may result from outside events, for example, merger, reorganisation, issue of supplementary tranches.
# * `Partialredemptionwithoutpoolfactorreduction` - Securities are redeemed in part before their scheduled final maturity date. It is done without any pool factor reduction. The redemption is reflected in a debit of the face amount (FAMT).
# * `Partialredemptionwithpoolfactorreduction` - Securities are redeemed in part before their scheduled final maturity date. The redemption is reflected in a pool factor reduction. No movement of securities occurs.
# * `Payinkind` - Interest payment, in any kind except cash, distributed to holders of an interest bearing asset.
# * `Placeofincorporation` - Changes in the state of incorporation for US companies and changes in the place of incorporation for foreign companies. Where shares need to be registered following the incorporation change, the holder(s) may have to elect the registrar.
# * `Prefunding` - Also called partial defeasance. Issuer has money set aside to redeem a portion of an issue and the indenture states that the securities could be called earlier than the stated maturity.
# * `Priorityissue` - Form of open or public offer where, due to a limited amount of securities available, priority is given to existing shareholders.
# * `Putredemption` - Early redemption of a security at the election of the holder subject to the terms and condition of the issue with no reduction in nominal value.
# * `Redenomination` - Event by which the unit (currency and/or nominal) of a security is restated, for example, nominal/par value of security in a national currency is restated in another currency.
# * `Remarketing` - Purchase and sale of remarketed preferred equities/bonds through the negotiation of interest rate between the issuers and the holders.
# * `Remarketingagreement` - Purchase and sale of remarketed preferred equities/bonds through the negotiation of interest rate between the issuers and the holders.
# * `Repurchaseoffer` - Repurchase offer / issuer bid / reverse rights. Offer to existing holders by the issuing company to repurchase its own securities. The objective of the offer is to reduce the number of outstanding securities.
# * `Reversestocksplit` - Decrease in a company's number of outstanding equities without any change in the shareholder's equity or the aggregate market value at the time of the split. Equity price and nominal value are increased accordingly.
# * `Rightsissue` - Offer to holders of a security to subscribe for additional securities via the distribution of an intermediate security. Both processes are included in the same event.
# * `Scripdividend` - Dividend or interest paid in the form of scrip.
# * `Securitiesholdersmeeting` - Ordinary or annual or extraordinary or special general meeting.
# * `Sharespremiumdividend` - Corporate event pays shareholders an amount in cash issued from the shares premium reserve. It is similar to a dividend but with different tax implications.
# * `Smallestnegotiableunit` - Modification of the smallest negotiable unit of shares in order to obtain a new negotiable unit.
# * `Spinoff` - Distribution of securities issued by another company. The distributed securities may either be of a newly created or of an existing company. For example, spin-off, demerger, unbundling, divestment.
# * `Stockdividend` - Dividend paid to shareholders in the form of equities of the issuing corporation.
# * `Stocksplit` - Increase in a corporation's number of outstanding equities without any change in the shareholder's equity or the aggregate market value at the time of the split. Equity price and nominal value are reduced accordingly.
# * `Subscription` - Ability for security holders to purchase (additional or new) securities at a certain price, in proportion to their holding.
# * `Taxonnondistributedproceeds` - Taxable component on non-distributed proceeds, for example, Australian deemed income or US 871m income regulation.
# * `Taxreclaim` - Event related to tax reclaim activities.
# * `Tender` - Offer made to holders by a third party, requesting them to sell (tender) or exchange their securities.
# * `Tradingstatusdelisted` - Security is no longer able to comply with the listing requirements of a stock exchange and is removed from official board quotation.
# * `Tradingstatussuspended` - Trading in the security has been suspended.
# * `Warrantexercise` - Option offered to holders to buy (call warrant) or to sell (put warrant) a specific amount of stock, cash, or commodity, at a predetermined price, during a predetermined period of time (which usually corresponds to the life of the issue).
# * `Withholdingtaxreliefcertification` - Certification process for withholding tax reduction or exemption based on the tax status of the holder.
# * `Worthless` - Booking out of valueless securities.
public type Corporateactiontypevalues "Dividendreinvestment"|"Accumulation"|"Activetradingstatus"|"Annualgeneralmeeting"|"Attachment"|"Bankruptcy"|"Bonddefault"|"Bonusissue"|"Callonintermediatesecurities"|"Capitaldistribution"|"Capitalgainsdistribution"|"Capitalisation"|"Cashdistributionfromnoneligiblesecuritiessales"|"Cashdividend"|"Change"|"Classactionproposedsettlement"|"Companyoption"|"Consent"|"Conversion"|"Couponstripping"|"Courtmeeting"|"Creditevent"|"Decreaseinvalue"|"Detachment"|"Disclosure"|"Dividendoption"|"Drawing"|"Dutchauction"|"Earlyredemption"|"Exchange"|"Exchangeoption"|"Extraordinarygeneralmeeting"|"Finalmaturity"|"Fullcall"|"Increaseinvalue"|"Information"|"Instalmentcall"|"Interestpayment"|"Interestpaymentwithprincipal"|"Intermediatesecuritiesdistribution"|"Liquidationdividend"|"Maturityextension"|"Merger"|"Namechange"|"Nonofficialoffer"|"Nonustefradcertification"|"Oddlotsalepurchase"|"Ordinarygeneralmeeting"|"Otherevent"|"Paripassu"|"Partialredemptionwithoutpoolfactorreduction"|"Partialredemptionwithpoolfactorreduction"|"Payinkind"|"Placeofincorporation"|"Prefunding"|"Priorityissue"|"Putredemption"|"Redenomination"|"Remarketing"|"Remarketingagreement"|"Repurchaseoffer"|"Reversestocksplit"|"Rightsissue"|"Scripdividend"|"Securitiesholdersmeeting"|"Sharespremiumdividend"|"Smallestnegotiableunit"|"Spinoff"|"Stockdividend"|"Stocksplit"|"Subscription"|"Taxonnondistributedproceeds"|"Taxreclaim"|"Tender"|"Tradingstatusdelisted"|"Tradingstatussuspended"|"Warrantexercise"|"Withholdingtaxreliefcertification"|"Worthless";

# Description of the fee calculation method for this fee type
public type ServiceModality record {
    # >
    # * `AllocationModality` - 
    # * `CalculationModality` - 
    # * `DerivationModality` - 
    # * `PaymentModality` - 
    # * `ProcessingModality` - 
    # * `ApplicationModality` - 
    # * `DeliveryModality` - 
    Modalitytypevalues ServiceModalityType?;
    # >
    # * `AllocationModality` - 
    # * `CalculationModality` - 
    # * `DerivationModality` - 
    # * `PaymentModality` - 
    # * `ProcessingModality` - 
    # * `ApplicationModality` - 
    # * `DeliveryModality` - 
    Modalitytypevalues FeatureModalityType?;
};

public type Paymenttransactionstatustypevalues "Acceptedtechnicalvalidation"|"Received"|"Partiallyaccepted"|"Rejected"|"Pending"|"Acceptedcustomerprofile"|"Acceptedsettlementinprocess"|"Acceptedsettlementcompleted"|"Accepted"|"Acceptedcancellationrequest"|"Rejectedcancellationrequest"|"Acceptedwithchange"|"Partiallyacceptedcancellationrequest"|"Pendingcancellationrequest"|"Acceptedcreditsettlementcompleted"|"Paymentcancelled"|"Nocancellationprocess";

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

public type CorporateActionOk record {|
    *http:Ok;
    # body
    CorporateAction body;
|};

public type DebitandCredit record {
    # The deposited amount
    common:Amount WihdrawalTransactionAmount?;
    # Identifies the target for the withdrawal
    string WithdrawalTransactionSourceReference?;
    # >
    # * `CashWithdrawal` - 
    # * `SecurityWithdrawal` - 
    Withdrawaltypevalues WithdrawalType?;
    # Any necessary details describing the purpose or reference properties of the withdrawal
    string WithdrawalTransactionDescription?;
    # Details of the withdrawal transaction
    PaymentTransaction WithdrawalTransaction?;
    # >
    # * `CashWithdrawal` - 
    # * `SecurityWithdrawal` - 
    Withdrawaltypevalues WithdrawalTransactionWithdrawalType?;
    # The handling options if a withdrawal results in a breach of an account limit
    string AccountLimitBreachResponse?;
    # The date and time the deposit was initiated
    common:Date WithdrawalTransactionDate?;
};

public type DebitandCreditOk record {|
    *http:Ok;
    DebitandCredit body;
|};

# >
# * `AccountIsParentAccountForAccount` - 
# * `AccountIsSubAccountForAccount` - 
# * `AccountIsLinkedToAccount` - 
public type Account_Accountrelationshiptypevalues "AccountIsParentAccountForAccount"|"AccountIsSubAccountForAccount"|"AccountIsLinkedToAccount";

public type InvestmentAccountAgreement record {
    # The date and time the deposit was initiated
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
    common:Datetimeperiod AgreementValidityPeriod?;
    string AgreementVersion?;
    # A characteristic of agreement which refers to the LifecycleStatus of agreement (e.g., potential, offered, confirmed, completed, signed, terminated).
    common:Agreementstatus AgreementStatus?;
    string AgreementSubjectMatter?;
    # An identifier that allows to uniquely refer to an instance of a transaction.
    common:Identifier AgreementIdentification?;
    # The date when the identifier became valid.
    common:Datetime AgreementDate?;
    string AgreementDescription?;
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
    common:Action ArrangementAction?;
    # The date when the identifier became valid.
    common:Datetime ArrangementStartDate?;
    # The date when the identifier became valid.
    common:Datetime ArrangementEndDate?;
    # A characteristic of arrangement which refers to the LifecycleStatus of arrangement (e.g., requested, proposed, offered, accepted, cancelled, terminated, fulfilled, etc.)
    common:Arrangementstatus ArrangementStatus?;
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
    # An identifier that allows to uniquely refer to an instance of a transaction.
    common:Identifier ArrangementIdentification?;
};

public type Corporateactiondatetimetypevalues "TradingDate"|"PariPassuDate"|"AnnouncementDate"|"EffectiveDate"|"LapsedDate"|"MarginFixingDate";

# The product features/services available with a financical facility
public type Deposit record {
    # The deposited amount
    common:Amount DepositTransactionAmount?;
    # Identifies the source of the deposit
    string DepositTransactionSourceReference?;
    # The date and time the deposit was initiated
    common:Date DepositTransactionDate?;
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
    common:Deposittypevalues DepositTransactionDepositType?;
    # Any necessary details describing the purpose or reference properties of the deposit
    string DepositTransactionDescription?;
    # Details of the deposit transaction
    DepositTransaction DepositTransaction?;
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
    common:Deposittypevalues DepositType?;
};

public type PartyObligationOrEntitlement record {
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
    Servicearrangementmodality ObligationOrEntitlementModality?;
    string ObligationOrEntitlementDefinition?;
    common:Action ArrangementAction?;
    # The date when the identifier became valid.
    common:Datetime ArrangementStartDate?;
    # The date when the identifier became valid.
    common:Datetime ArrangementEndDate?;
    # A characteristic of arrangement which refers to the LifecycleStatus of arrangement (e.g., requested, proposed, offered, accepted, cancelled, terminated, fulfilled, etc.)
    common:Arrangementstatus ArrangementStatus?;
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
    # An identifier that allows to uniquely refer to an instance of a transaction.
    common:Identifier ArrangementIdentification?;
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
    common:Arrangementtypevalues TermDepositArrangementType?;
    # Reference to the product feature applied in this arrangement 
    common:Productfeaturetype TermDepositArrangementProductFeatureType?;
    # The date when the identifier became valid.
    common:Datetime TermDepositMaturityDate?;
    # The date when the identifier became valid.
    common:Datetime TermDepositOpenDate?;
    # The deposited amount
    common:Amount TermDepositAmount?;
    common:Duration TermDepositDuration?;
    # The Period for which the TermDepositAmount needs ti stay deposited with the Bank
    string DepositTerm?;
};

public type Feecalculationfrequencyvalues "Onclosing"|"Onopening"|"Chargingperiod"|"Daily"|"Peritem"|"Monthly"|"Onanniversary"|"Other"|"Perhundredpounds"|"Perhour"|"Peroccurrence"|"Persheet"|"Pertransaction"|"Pertransactionamount"|"Pertransactionpercentage"|"Quarterly"|"Sixmonthly"|"Statementmonthly"|"Weekly"|"Yearly";

# Reference to the market where the instrument is quoted/traded (e.g. ISE Equities Marketplace)
public type Market record {
    # >
    # * `FinancialMarket` - 
    # * `GeneralMarket` - 
    Markettypevalues MarketType?;
    # An identifier that allows to uniquely refer to an instance of a transaction.
    common:Identifier MarketIdentification?;
    # Country in which a market operates. (ISO20022)
    Country MarketCountry?;
    #
    # Jurisdiction of the governing law for the trades on this market, for example, City of NY, County of NY, State of NY, regulatory SEC.(ISO20022)
    common:Jurisdiction MarketJurisdiction?;
};

# Details of the withdrawal transaction
public type PaymentTransaction record {
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
    common:Paymenttypevalues PaymentTransactionType?;
    # The deposited amount
    common:Amount PaymentTransactionAmount?;
    # An identifier that allows to uniquely refer to a Payment Transaction.
    common:Paymentidentification PaymentTransactionIdentification?;
    # The payment mechanism the bank decides to use in the transaction to execute a payment instruction 
    string PaymentTransactionUsedMechanism?;
    # PaymentTransactionDatetime
    common:Paymentdatetime PaymentTransactionDatetime?;
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
    common:Paymentpurposevalues PaymentTransactionPurpose?;
    # Specifies the status of a payment transaction at a specified time.
    # Elements
    Paymenttransactionstatus PaymentTransactionStatus?;
    # The deposited amount
    common:Amount PaymentTransactionAppliedFeeAmount?;
    # >
    # * `BaseCurrency` - Base currency of the account. (ISO20022)
    #
    # * `ReportingCurrency` - Currency used to calculate and report the balance and related entries of an account. (ISO20022)
    #
    # * `SecondaryCurrency` - 
    # * `TransferCurrency` - Currency of the amount to be transferred which may be different from the currency of the debtor's account. (ISO20022)
    # * `SettlementCurrency` - Specifies the currency used for settlement, if different from the account currency. 
    common:Currencytypevalues PaymentTransactionCurrency?;
    # >
    # * `Debit` - Transaction is a debt entry
    # * `Credit` - Transaction is a credit entry
    common:Debitcreditindicatortvalues PaymentTransactionCreditDebitIndicator?;
    # An identifier that allows to uniquely refer to an instance of a transaction.
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
    # The name of transaction.
    common:Name TransactionName?;
    # >
    # * `PaymentTransaction` - 
    # * `IssuingTransaction` - 
    # * `BookingTransaction` - 
    # * `CollateralAllocationTransaction` - 
    # * `TerminationTransaction` - 
    # * `AmendmentTransaction` - 
    common:Undertakingtransactiontypevalues UndertakingTransactionType?;
    # The deposited amount
    common:Amount MoneyTransferTransactionAmount?;
    # The currency of the money transfer amount
    string MoneyTransferTransactionCurrency?;
    # The account the money is transferred from.
    string MoneyTransferTransactionSourceAccount?;
    # The account the money is transferred to.
    string MoneyTransferTransactionTargetAccount?;
    # MoneyTransferInstructionReference
    string MoneyTransferInstructionReference?;
    # The method used to transfer money; Can be a payment network but also something physical.
    string MoneyTransferUsedMethod?;
    # The date on which the money is considerd to have left/have arrived become active can be used /strats to starts is considerd to be 
    string MoneyTransferValueDate?;
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
    # The deposited amount
    common:Amount FinancialTransactionAmount?;
    # FinancialTransactionFromAccount
    common:Account FinancialTransactionFromAccount?;
    # FinancialTransactionTargetAccount
    common:Account FinancialTransactionTargetAccount?;
    # The date when the identifier became valid.
    common:Datetime FinancialTransactionDateTime?;
};

public type Feecalculationbasistypevalues "Flat"|"Perunit"|"Percentage"|"Rateperbrackets"|"Ratewithminimumamount"|"Ratewithmaximumamount"|"Other"|"Grossamount"|"Netamount"|"Netassetvalueprice";

public type Corporateactionstatustypevalues "Active"|"Deactivated"|"Expired"|"Cancelled"|"Withdrawn"|"Inactive";

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

public type Modalitytypevalues "AllocationModality"|"CalculationModality"|"DerivationModality"|"PaymentModality"|"ProcessingModality"|"ApplicationModality"|"DeliveryModality";

public type InvestmentAccountFacilityOk record {|
    *http:Ok;
    InvestmentAccountFacility body;
|};
