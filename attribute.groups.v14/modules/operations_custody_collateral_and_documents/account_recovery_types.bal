import financial.bian.attribute.groups.common as common;

import ballerina/http;

# >
# * `InstructedAmountAndCurrency` - The amount the debtor asks their bank to transfer (e.g., “Send 100 EUR”).
# * `EquivalentAmountAndCurrency` - If the debtor’s account is in a different currency, this is the converted equivalent (e.g., 100 USD = 91 EUR).
# * `DebtorAccountAmountAndCurrency` - The actual amount debited from the debtor’s account (after currency conversion, possibly including charges).
# * `InterbankSettlementAmountAndCurrency` - The amount exchanged/settled between the banks (may be in a different settlement currency, e.g., USD).
# * `CreditorAccountAmountAndCurrency` - The amount credited to the creditor’s account in their account currency (e.g., GBP).
# * `Net/ReceivedAmountAndCurrency` - The final amount the creditor actually receives after any deductions (e.g., fees).

public type Negotiation record {
    # Defines bank's policies and guidelines for account recovery/write down handling
    common:RuleSet AccountRecoveryGuidelines?;
    # Reference to negotiation/confirmation messages sent to involved parties, includes internal and external legal/law enforcement authorities
    common:Correspondence CorrespondenceReference?;
    # Copies of correspondence content as appropriate
    string CorrespondenceContent?;
    # Reference to legal documents created & referenced during the account recovery negotiation process
    common:Document DocumentReference?;
    # Copies of document copy/content as appropriate
    string DocumentContent?;
    # Processing record for the restructuring task within the account recovery process
    common:task AccountRecoveryCaseNegotiationTaskRecord?;
};

# Complete work tasks following a defined procedure in support of general office activities and product and service delivery within Account Recovery. 
public type AccountRecoveryProcedure record {
    # >
    # * `Card` - 
    # * `Loan` - 
    # * `Fraud` - 
    # * `Payment` - 
    # * `Market` - 
    # * `Security` - 
    # * `Other` - 
    common:Casetypevalues AccountRecoveryCaseType?;
    # Refers to the product instance associated with the account recovery case
    common:ProductAgreement ProductInstanceReference?;
    # Refers to the product instance associated with the account recovery case
    common:ProductAgreement LinkedProductInstanceReference?;
    # Reference to an entity that assigns and manages the identification.
    # tReference to the organization or agency that issued the identifier (e.g., DMV, Passport Office).
    common:Involvedparty CustomerReference?;
    # The assigned customer relationship manager or unit for the case
    common:BusinessUnit EmployeeBusinessUnitReference?;
    # Reference to the underlying account for the product instance being recovered
    string AccountNumber?;
    # Location where the business is booked for reporting purposes
    BranchLocation BankBranchLocationReference?;
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
    # Reference to involved and interested parties (e.g. guarantor/cosigner)
    common:Party InvolvedPartyReference?;
    # Details the involved party's role/association with the account/account holder
    common:Arrangement InvolvedPartyObligationEntitlement?;
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
    common:Accounttypevalues AccountType?;
    # The currency for the account
    common:Currencycode AccountCurrency?;
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
    common:Limittypevalues AccountLimitType?;
    # Current position against limits
    common:LimitArrangement AccountLimit?;
    # Any additional parties given access to the account  (allowed roles and actions against the product)
    AccessArrangement AllowedAccess?;
    # An identifier that allows to uniquely refer to an instance of a transaction.
    common:Identifier TaxReference?;
    # AccountStatus
    common:Status AccountStatus?;
    # Lists the customer's collateral asset allocation status against different loan products known to the bank
    common:Profile CollateralAssetAllocationProfile?;
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
    common:Collateraltypevalues CollateralType?;
    # Description of significant details and properties of the asset
    string CollateralAssetDescription?;
    # Booking to the appropriate asset/liability account required to reflect anticipated loss
    common:Transaction TransactionRecord?;
    # AccountRecoveryCaseWorkProducts
    common:Workproduct AccountRecoveryCaseWorkProducts?;
    # Reference to legal documents created & referenced during the account recovery negotiation process
    common:Document DocumentReference?;
    # Record of customer correspondence/feedback associated with the account recovery process
    string CustomerCommentary?;
    # Target dates for account restructuring/set-up added to the Account Recovery Case Resolution Schedule
    common:Schedule AccountRecoveryCaseResolutionSchedule?;
    # AccountRecoveryCaseStatus
    common:Status AccountRecoveryCaseStatus?;
};

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

public type Planning record {
    # Recovery tasks and targets added to the Account Recovery Case Resolution Schedule
    AccountRecoveryPlan AccountRecoveryPlan?;
    # Processing record for the restructuring task within the account recovery process
    common:task AccountRecoveryCasePlanningTaskRecord?;
};

# An arranged InterestRatePlan

public type Modification record {
    # Target dates for account restructuring/set-up added to the Account Recovery Case Resolution Schedule
    common:Schedule AccountRecoveryRestructuringSchedule?;
    # Processing record for the restructuring task within the account recovery process
    common:task AccountRecoveryCaseRestructuringTaskRecord?;
};

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

public type Writedown record {
    # Booking to the appropriate asset/liability account required to reflect anticipated loss
    common:Transaction Accountwrite\-downtransaction?;
    # Processing record for the restructuring task within the account recovery process
    common:task AccountRecoveryCaseWrite\-downTaskRecord?;
};

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

public type AccessArrangement record {
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
    common:Arrangementtypevalues ProductArrangementType?;
};

# >
# * `Cheque` - Written order to a bank to pay a certain amount of money from one person to another person.
# * `Credittransfer` - Transfer of an amount of money in the books of the account servicer.
# * `Directdebit` - Collection of an amount of money from the debtor's bank account by the creditor. The amount of money and dates of collections may vary.
# * `Transferadvice` - Transfer of an amount of money in the books of the account servicer. An advice should be sent back to the account owner.
# * `Direct` - Direct method.
# * `Classical` - Classical method.

public type AccountRecoveryPlan record {
    # A plan (tasks and targets) added to the Account Recovery Case Resolution Schedule.
    string AccountRecoveryPlan?;
};

# >
# * `Fax` - Remittance advice information must be faxed.
# * `Electronicdatainterchange` - Remittance advice information must be sent through Electronic Data Interchange (EDI).
# * `Uniformresourceidentifier` - Remittance advice information needs to be sent to a Uniform Resource Identifier (URI). URI is a compact string of characters that uniquely identify an abstract or physical resource. URI's are the super-set of identifiers, such as URLs, email addresses, ftp sites, etc, and as such, provide the syntax for all of the identification schemes.
# * `Email` - Remittance advice information must be sent through e-mail.
# * `Post` - Remittance advice information must be sent through postal services.
# * `SMS` - Remittance advice information must be sent through by phone as a short message service (SMS).

public type AccountRecoveryProcedureOk record {|
    *http:Ok;
    # body
    AccountRecoveryProcedure body;
|};

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

public type BranchLocation record {
    # BranchReference
    common:Branch BranchReference?;
    # LocationReference
    common:Location LocationReference?;
};

# >
# * `ChannelAccess` - 
# * `ProductAndServiceAccess` - 
# * `DeviceAccess` - 
# * `APIAccess` - 
public type Pointofaccesstypevalues "ChannelAccess"|"ProductAndServiceAccess"|"DeviceAccess"|"APIAccess";
