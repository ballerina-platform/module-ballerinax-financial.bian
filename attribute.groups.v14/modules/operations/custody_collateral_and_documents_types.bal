import ballerina/http;
import financial.bian.attribute.groups.common as common;

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

# A Classification value that distinguishes between the type of services within Archive Operating Session

public type DocumentCaptureOk record {|
    *http:Ok;
    # body
    DocumentCapture body;
|};

# An operational service or function supported within the Document Retrieval Function for doing Document Retrieval Function
public type DocumentCapture record {
    # The required status/situation and or tasks that need to be completed prior to the invocation of the feature
    common:Condition Preconditions?;
    # The schedule and timing of the function
    common:Schedule Schedule?;
    # The Document Retrieval Function specific Business Service
    common:BusinessService BusinessService?;
    # Reference to Document Retrieval Function
    common:Session ArchiveOperatingSessionReference?;
    # Reference to Document Retrieval Function
    common:Function DocumentCaptureFunctionReference?;
    # The type of Document Capture Function
    string DocumentCaptureFunctionType?;
};

public type ArchiveOperatingSessionOk record {|
    *http:Ok;
    ArchiveOperatingSession body;
|};

# The configuration of Archive Operating Session
public type SystemConfigurationOption record {
    # Options for configuring the system or the function/feature of system.
    string SystemConfigurationOption?;
};

# An operational service or function supported within the Document Retrieval Function for doing Document Retrieval Function
public type DocumentRetrieval record {
    # The required status/situation and or tasks that need to be completed prior to the invocation of the feature
    common:Condition Preconditions?;
    # The schedule and timing of the function
    common:Schedule Schedule?;
    # The Document Retrieval Function specific Business Service
    common:BusinessService BusinessService?;
    # Reference to Document Retrieval Function
    common:Session ArchiveOperatingSessionReference?;
    # Reference to Document Retrieval Function
    common:Function DocumentRetrievalFunctionReference?;
    # The type of Document Retrieval Function
    string DocumentRetrievalFunctionType?;
};

# Operate equipment and/or a largely automated facility within Archive Services. 
public type ArchiveOperatingSession record {
    # The schedule and timing of the function
    common:Schedule ArchiveOperatingSessionSchedule?;
    # ArchiveOperatingSessionStatus
    common:Status ArchiveOperatingSessionStatus?;
    # Reference to the log of (usage) ativities/events  of Archive Operating Session
    common:Log ArchiveOperatingSessionUsageLog?;
    # Reference to an entity that assigns and manages the identification.
    # tReference to the organization or agency that issued the identifier (e.g., DMV, Passport Office).
    common:Involvedparty ArchiveOperatingSessionAssociatedPartyReference?;
    # Reference to an entity that assigns and manages the identification.
    # tReference to the organization or agency that issued the identifier (e.g., DMV, Passport Office).
    common:Involvedparty ArchiveOperatingSessionServiceProviderReference?;
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
    common:Sessiontypevalues ArchiveOperatingSessionType?;
    # The schedule and timing of the function
    common:Schedule ArchiveOperatingSessionServiceProviderSchedule?;
    # A Classification value that distinguishes between the type of services within Archive Operating Session
    Servicetype ArchiveOperatingSessionServiceType?;
    # The configuration of Archive Operating Session
    SystemConfigurationOption ArchiveOperatingSessionServiceConfiguration?;
    # Reference to Document Retrieval Function
    common:Session ArchiveOperatingSessionReference?;
    # Reference to the document that is archived and retrieved by Archive Service
    common:Document ArchiveOperatingSessionDocumentReference?;
};

public type DocumentMaintenanceOk record {|
    *http:Ok;
    DocumentMaintenance body;
|};

public type DocumentMaintenance record {
    # The required status/situation and or tasks that need to be completed prior to the invocation of the feature
    common:Condition Preconditions?;
    # The schedule and timing of the function
    common:Schedule Schedule?;
    # The Document Retrieval Function specific Business Service
    common:BusinessService BusinessService?;
    # Reference to Document Retrieval Function
    common:Session ArchiveOperatingSessionReference?;
    # Reference to Document Retrieval Function
    common:Function DocumentMaintenanceFunctionReference?;
    # The type of Document Maintenance Function
    string DocumentMaintenanceFunctionType?;
};

public type DocumentRetrievalOk record {|
    *http:Ok;
    DocumentRetrieval body;
|};

# The reference to a party asset as recorded by Party Asset Directory
public type PartyAssetDirectory record {
    # DirectoryVersion
    string DirectoryVersion?;
    # DirectoryConfiguration
    string DirectoryConfiguration?;
    # DirectoryValidPeriod
    common:Datetimeperiod DirectoryValidPeriod?;
    # DirectoryStatus
    common:Status DirectoryStatus?;
};

# Maintain an inventory or holding of some resource and make assignments/allocations as requested  within Collateral Allocation Management. 
# Example: Track the inventory and administer the distribution of central cash holdings throughout the branch & ATM network.
public type CollateralAssetAllocation record {
    # The amount for which this party asset serves as collateral for this product instance
    common:Amount CollateralAllocationAmount?;
    # The description of the purpose of the allocation of this party asset to this product instance as collateral
    string CollateralAllocationDescription?;
    # The date on which the allocation of this party asset to this lending product for this amount ends
    common:Datetime CollateralAllocationEndDate?;
    # The date on which the allocation of this party asset to this lending product for this amount ends
    common:Datetime CollateralAllocationStartDate?;
    # The amount for which this party asset serves as collateral for this product instance
    common:Amount CollateralAllocationRecallAmount?;
    # The schedule according to which the amount of the allocation of this party asset to this product instance as collateral is reduced
    common:Schedule CollateralAllocationRecallSchedule?;
    # A result of reducing the amount of the allocation of this party asset to this product instance as collateral
    string CollateralAllocationRecallResult?;
    # The amount for which this party asset serves as collateral for this product instance
    common:Amount CollateralCurrentValueAmount?;
    # The amount for which this party asset serves as collateral for this product instance
    common:Amount CollateralEarmarkedAmount?;
    # The date on which the allocation of this party asset to this lending product for this amount ends
    common:Datetime CollateralEarmarkedEndDate?;
    # The date on which the allocation of this party asset to this lending product for this amount ends
    common:Datetime CollateralEarmarkedStartDate?;
    # >
    # * `Offered` - 
    # * `UnderAssessment` - 
    # * `Transferred` - 
    # * `Allocated` - 
    # * `FreeForAllocation` - 
    # * `AllocatedToAnotherLoan` - 
    # * `IssuedForExecution` - 
    common:Collateralassetstatustypevalues CollateralStatus?;
    # The description of the asset as provided by the owner
    string PartyAssetDescription?;
    # The reference to a party asset as recorded by Party Asset Directory
    PartyAssetDirectory PartyAssetDirectoryReference?;
    # The name of the product to which the current party asset is allocated as collateral
    common:Name ProductInstanceName?;
    # The reference to the product to which the current party asset is allocated as collateral
    common:ProductAgreement ProductInstanceReference?;
    # The outcome of an evaluation of the acceptability of this party asset as collateral for this product instance; values are Accepted and Rejected
    string EvaluateAcceptabilityResultDescription?;
    # CollateralAssetAllocationStatus
    Allocationstatustypevalues CollateralAssetAllocationStatus?;
    # UndertakingTransactionType
    common:Undertakingtransactiontypevalues UndertakingTransactionType?;
    # AllocationAmount
    common:Amount AllocationAmount?;
    # AllocationDuration
    common:Duration AllocationDuration?;
    # AllocationDirection
    string AllocationDirection?;
    # AllocationStatus
    common:Status AllocationStatus?;
    # AllocationDescription
    string AllocationDescription?;
    # TransactionIdentification
    common:Identifier TransactionIdentification?;
    # TransactionDate
    common:Transactiondatetime TransactionDate?;
    # TransactionType
    common:Transactiontypevalues TransactionType?;
    # TransactionDescription
    string TransactionDescription?;
    # TransactionStatus
    common:Transactionstatus TransactionStatus?;
    # TransactionName
    common:Name TransactionName?;
};

public type ValuationOk record {|
    *http:Ok;
    Valuation body;
|};

public type CollateralAssetAdministrativePlanOk record {|
    *http:Ok;
    CollateralAssetAdministrativePlan body;
|};

public type Valuation record {
    # The type of valuation applied (e.g. mark to market, book value, agency)
    Assetvaluationtypevalues CollateralAssetValuationType?;
    # Reference to 3rd party valuation service provider (e.g. property, art specialist)
    common:Service CollateralAssetValuationServiceReference?;
    # The applied loan to value ratio used in determining collateral value
    string CollateralAssetLoantoValueRatio?;
    # The result of a valuation
    CollateralAssetValuation CollateralAssetValuation?;
    common:Datetime CollateralAssetValuationDate?;
};

# >
# * `FinancialDocument` - 
# * `CommercialDocument` - 
# * `BusinessDocument` - 
public type Documenttypevalues "FinancialDocument"|"CommercialDocument"|"BusinessDocument";

public type CollateralAssetAdministrativePlan record {
    # Reference to the collateral asset item
    CollateralAsset CollateralAssetReference?;
    # Reference to the collateral asset item
    CollateralAsset CollateralAssetRecord?;
    # >
    # * `TangibleAsset` - It has a physical form and can be touched or seen.
    # * `IntangibleAsset` - It doesn't have a physical form but hold value
    # * `OperatingAsset` - Used in the day-to-day operations of the business.
    # * `Non-OperatingAsset` - Not used in core business operations but still provide value
    # * `CurrentAsset` - Expected to be converted into cash within one year.
    # * `Non-Current(Fixed)Asset` - Provide value over the long term (more than one year).
    # * `PersonalAsset` - Owned by individuals and not related to a business.
    # * `BusinessAsset` - Owned by a business and used to generate revenue.
    common:Assettypevalues CollateralAssetType?;
    # A characteristic of service which refers 1) mainly to the function or condition of service. 2) to non-functional features like quality and security
    common:Feature CollateralAssetProperties?;
    # Description of significant details and properties of the asset
    string CollateralAssetDescription?;
    # Details of title
    string CollateralAssetTitle?;
    # Reference to a Party who plays a  specific role in the context of assigning a status.
    common:Involvedparty CollateralAssetOwnership?;
    # Reference to a Party who plays a  specific role in the context of assigning a status.
    common:Involvedparty CollateralAssetInterestedParties?;
    # The location the asset is stored
    common:Address CollateralAssetLocation?;
    # The jurisdiction that governs title and access to the asset
    common:Jurisdiction CollateralAssetJurisdiction?;
    # Document that provides background or corroborating information regarding an assessment(s).
    common:Document CollateralAssetDocumentReference?;
    # >
    # * `FinancialDocument` - 
    # * `CommercialDocument` - 
    # * `BusinessDocument` - 
    Documenttypevalues CollateralAssetDocumentType?;
    # Details of insurance arrangements covering the asset, including duration and renewal
    string CollateralAssetInsuranceReference?;
    common:Datetime CollateralAssetPledgedDate?;
    # The result of a valuation
    CollateralAssetValuation CollateralAssetValuationHistory?;
    common:Schedule CollateralAssetValuationSchedule?;
    common:Schedule CollateralAssetMaintenanceSchedule?;
    common:Status CollateralAssetStatus?;
    # PlanGoal
    common:Goal PlanGoal?;
    # PlanBudget
    common:Budgetarrangement PlanBudget?;
    # PlannedAction
    common:Plannedaction PlannedAction?;
    # PlanType
    common:Plantypevalues PlanType?;
    # PlanValidityPeriod
    common:Datetimeperiod PlanValidityPeriod?;
    # PlanDescription
    string PlanDescription?;
};

# The result of a valuation
public type CollateralAssetValuation record {
    # CollateralAssetValuationStatus
    common:Status CollateralAssetValuationStatus?;
    # CollateralAssetValuationDate
    common:Datetime CollateralAssetValuationDate?;
    # Base amount that would be applied when the service is requested. 
    common:Amount CollateralAssetValuationAmount?;
    # CollateralAssetValuationCurrency
    common:Currencycode CollateralAssetValuationCurrency?;
    # A value of some value aspect of an Asset. 
    string AssetValue?;
    # reference to the type of value expressed in the valuation.
    # this can be ratio, qualifier, amounts, etc.
    string AssetValueType?;
    # Type of a particular valuation. Possible types are ad hoc-external valuer, ad hoc-internal valuer, scheduö
    # led external valuer, scheduled internal valuer
    string AssetValuationType?;
    # AssetValuationDate
    common:Datetime AssetValuationDate?;
    # Rate used to calculate the amount of the adjustment, allowance, charge or fee. (ISO20022)
    common:Rate AssetValuationRate?;
    # AssetValuationStatus
    common:Status AssetValuationStatus?;
    # Period of time during which the status is valid.
    common:Datetimeperiod AssetValuationValidityPeriod?;
    # Base amount that would be applied when the service is requested. 
    common:Amount AsseValuationAmount?;
};

public type Maintenance record {
    # The type of action or check performed to oversee maintenance (e.g. insurance coverage, upkeep review)
    string CollateralAssetMaintenanceTaskType?;
    # Reference to 3rd party maintenance service provider (e.g. insurer, custodian)
    string CollateralAssetMaintenanceServiceProviderReference\(3rdpartyserviceprovider\)?;
    # A record of the verification checks performed against the schedule
    common:Assessment CollateralAssetVerificationandComplianceRecord?;
    # Record of any fees incurred in the collateral asset maintenance (e.g. 3rd party fees)
    FeeArrangement CollateralAssetMaintenanceSafekeepingFees?;
};

public type MaintenanceOk record {|
    *http:Ok;
    Maintenance body;
|};

# Record of any fees incurred in the collateral asset maintenance (e.g. 3rd party fees)
public type FeeArrangement record {
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
    common:feetypevalues FeeType?;
    # Base amount that would be applied when the service is requested. 
    common:Amount FeeAmount?;
    # Rate used to calculate the amount of the adjustment, allowance, charge or fee. (ISO20022)
    common:Rate FeeRate?;
    # Period of time during which the status is valid.
    common:Datetimeperiod FeeEffectivePeriod?;
    # FeeDueDate
    common:Datetime FeeDueDate?;
    # An arranged FeeRatePlan
    common:feeplan FeePlan?;
    # >
    # * `Debit` - Transaction is a debt entry
    # * `Credit` - Transaction is a credit entry
    common:Debitcreditindicatortvalues FeeCreditDebitIndicator?;
    # Reason for the amount adjustment (fee). 
    string FeeReason?;
    # >
    # * `Added` - Adjustment amount must be added to the total amount.
    # * `Substracted` - Adjustment amount must be substracted from the total amount.
    common:adjustmentdirectiontypevalues FeeDirection?;
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
    # Date when the assessment expires. (ISO20022)
    common:Date LoanOriginationDate?;
    # Date when the assessment expires. (ISO20022)
    common:Date LoanMaturityDate?;
    # Date when the assessment expires. (ISO20022)
    common:Date LoanEndDate?;
    # Base amount that would be applied when the service is requested. 
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
    # ArrangementStartDate
    common:Datetime ArrangementStartDate?;
    # ArrangementEndDate
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
    # An identifier that allows to uniquely refer to an instance of a Document.
    common:Identifier ArrangementIdentification?;
    # An identifier that allows to uniquely refer to an instance of a Document.
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
    # TermDepositMaturityDate
    common:Datetime TermDepositMaturityDate?;
    # TermDepositOpenDate
    common:Datetime TermDepositOpenDate?;
    # Base amount that would be applied when the service is requested. 
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
    # CreditFacilityDataTime
    common:Datetime CreditFacilityDataTime?;
    # >
    # * `Revolving` - 
    # * `FixedAmount` - 
    # * `Decreasing` - 
    common:Creditfacilitytypevalues CreditFacilityType?;
    # >
    # * `AvailabilityCommission` - 
    common:Creditfacilityratetypevalues CreditFacilityRateType?;
    # An identifier that allows to uniquely refer to an instance of a Document.
    common:Identifier CreditFacilityNumber?;
    # Base amount that would be applied when the service is requested. 
    common:Amount CreditFacilityAmount?;
    # Frequency at which the fee is charged
    common:Frequency StandingOrderFrequency?;
    # The purpose of a standing order
    string StandingOrderPurpose?;
    # Base amount that would be applied when the service is requested. 
    common:Amount StandingOrderAmount?;
    # StandingOrderCurrency
    common:Currencycode StandingOrderCurrency?;
    # Reference to a Party who plays a  specific role in the context of assigning a status.
    common:Involvedparty StandingOrderTargetAccountOwner?;
    # The identification of the target account of a standing order.
    common:Accountidentification StandingOrderTargetAccountIdentification?;
    # Reference to a Party who plays a  specific role in the context of assigning a status.
    common:Involvedparty StandingOrderTargetAccountBank?;
    # StandingOrderSourceAccount
    common:Account StandingOrderSourceAccount?;
    # Period of time during which the status is valid.
    common:Datetimeperiod StandingOrderValidityPeriod?;
    # StandingOrderDay
    common:Datetime StandingOrderDay?;
    # >
    # * `UserDefinedStandingOrder` - Liquidity transfer standing order type, that has been customised or defined to the specific need of the user.(ISO20022)
    # * `PredefinedStandingOrder` - Liquidity transfer standing order type, as predefined in the system. (ISO20022)
    common:Standingordertypevalues StandingOrderType?;
    # An identifier that allows to uniquely refer to an instance of a Document.
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
    # StandingOrderDate
    common:Datetime StandingOrderDate?;
    # StandingOrderStatus
    common:Status StandingOrderStatus?;
    # StandingOrderSchedule
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
    # Period of time during which the status is valid.
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
    # PaymentSchedule
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

# The type of valuation applied (e.g. mark to market, book value, agency)
public type Assetvaluationtypevalues record {
    # Assetvaluationtypevalues
    string Assetvaluationtypevalues?;
};

public type Dividend record {
    # The required status/situation prior to the implementation of the feature
    common:Condition Preconditions?;
    # The timing and key actions/milestones involved in completing the fulfillment feature instance
    common:Schedule Schedule?;
    # The Dividendsand Interest specific Business Service
    common:BusinessService BusinessService?;
    # The required status/situation prior to the implementation of the feature
    common:Condition Postconditions?;
    # The identifier of Condition
    common:Identifier CustodyFacilityReference?;
    # The identifier of Condition
    common:Identifier DividendReference?;
    # The type of Dividendsand Interest
    string DividendType?;
};

public type SettlementOk record {|
    *http:Ok;
    Settlement body;
|};

public type CustodyFacility record {
    # A Classification value that distinguishes between arrangements according to the type of business services within Custody Arrangement
    string CustodyFacilityParameterType?;
    # A selected optional business service as subject matter of Custody Arrangement
    common:Arrangement CustodyFacilitySelectedOption?;
    # The type of Custody Arrangement
    string CustodyFacilityType?;
    common:FinancialFacility CustodyFacilityReference?;
    # The timing and key actions/milestones involved in completing the fulfillment feature instance
    common:Schedule CustodyFacilitySchedule?;
    common:Status CustodyFacilityStatus?;
    # The curreny which is arranged in Custody Arrangement
    common:Currencycode CustodyFacilityCurrency?;
    # Reference to the regulation which is defined in Custody Arrangement
    common:Regulation CustodyFacilityRegulationReference?;
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
    common:Rulesettypevalues CustodyFacilityRegulationType?;
    # Reference to the jurisdiction that is assigned to Custody Arrangement in case of legal dispute.
    common:Jurisdiction CustodyFacilityJurisdiction?;
    common:Location CustodyFacilityBookingLocation?;
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
    common:Accounttypevalues CustodyFacilityAccountType?;
    # Reference to the account which is linked to Custody Arrangement
    common:Account CustodyFacilityAccountReference?;
};

# Business information about applying interest (a pricing element expressed in a percentage)  to a principal amount.
public type RegulatorySubmission record {
    # The required status/situation prior to the implementation of the feature
    common:Condition Preconditions?;
    # The timing and key actions/milestones involved in completing the fulfillment feature instance
    common:Schedule Schedule?;
    # The Dividendsand Interest specific Business Service
    common:BusinessService BusinessService?;
    # The required status/situation prior to the implementation of the feature
    common:Condition Postconditions?;
    # The identifier of Condition
    common:Identifier CustodyFacilityReference?;
    # The identifier of Condition
    common:Identifier RegulatorySubmissionReference?;
    # The type of Securities Reporting
    string RegulatorySubmissionType?;
};

public type RegulatorySubmissionOk record {|
    *http:Ok;
    RegulatorySubmission body;
|};

public type Settlement record {
    # The required status/situation prior to the implementation of the feature
    common:Condition Preconditions?;
    # The timing and key actions/milestones involved in completing the fulfillment feature instance
    common:Schedule Schedule?;
    # The Dividendsand Interest specific Business Service
    common:BusinessService BusinessService?;
    # The required status/situation prior to the implementation of the feature
    common:Condition Postconditions?;
    # The identifier of Condition
    common:Identifier CustodyFacilityReference?;
    # The identifier of Condition
    common:Identifier SettlementReference?;
    # The type of Settlement
    string SettlementType?;
};

# Business information about applying interest (a pricing element expressed in a percentage)  to a principal amount.
public type SafeKeeping record {
    # The required status/situation prior to the implementation of the feature
    common:Condition Preconditions?;
    # The timing and key actions/milestones involved in completing the fulfillment feature instance
    common:Schedule Schedule?;
    # The Dividendsand Interest specific Business Service
    common:BusinessService BusinessService?;
    # The required status/situation prior to the implementation of the feature
    common:Condition Postconditions?;
    # The identifier of Condition
    common:Identifier CustodyFacilityReference?;
    # The identifier of Condition
    common:Identifier SafeKeepingReference?;
    # The type of Safe Keeping
    string SafeKeepingType?;
};

public type DividendOk record {|
    *http:Ok;
    Dividend body;
|};

public type CustodyFacilityOk record {|
    *http:Ok;
    CustodyFacility body;
|};

# The Document Update History Properties properties that represent a discrete aspect of the Document Update History Properties
public type DocumentVersionProperties record {
    # The required status/situation before the property is valid/meaningful
    common:Condition Preconditions?;
    # The schedule and timing for which the property value is valid
    common:Schedule Schedule?;
    # The version reference for the property value
    string VersionNumber?;
    # The Document Update History Properties specific  Business Service
    common:BusinessService BusinessService?;
    # Reference to Document Update History Properties
    common:documentdirectoryentry DocumentDirectoryEntryReference?;
    # Reference to Document Update History Properties
    DocumentService DocumentVersionPropertiesReference?;
    # The type of Document Version Properties
    string DocumentVersionPropertiesType?;
};

# Reference to Document Update History Properties
public type DocumentService record {
    # >
    # * `DocumentProvisioning` - 
    # * `DocumentVerification` - 
    # * `DocumentAmendment` - 
    # * `DocumentArchiving` - 
    # * `DocumentImagingAndScanning` - 
    common:Documentservicetypevalues DocumentServiceType?;
    # The schedule and timing for which the property value is valid
    common:Schedule DocumentServiceSchedule?;
    # An external agency used to perform a document service
    common:Party DocumentServiceProvider?;
    # The name of Condition
    common:Name DocumentServiceName?;
    # DocumentServiceDescription
    string DocumentServiceDescription?;
    # DocumentServiceOutcome
    string DocumentServiceOutcome?;
    # DocumentServiceRequest
    common:Instruction DocumentServiceRequest?;
    # DocumentServiceFunction
    common:Function DocumentServiceFunction?;
};

public type DocumentVerificationProperties record {
    # The required status/situation before the property is valid/meaningful
    common:Condition Preconditions?;
    # The schedule and timing for which the property value is valid
    common:Schedule Schedule?;
    # The version reference for the property value
    string VersionNumber?;
    # The Document Update History Properties specific  Business Service
    common:BusinessService BusinessService?;
    # Reference to Document Update History Properties
    common:documentdirectoryentry DocumentDirectoryEntryReference?;
    # Reference to Document Update History Properties
    DocumentService DocumentVerificationPropertiesReference?;
    # The type of Document Verification Properties
    string DocumentVerificationPropertiesType?;
};

public type DocumentArchivingPropertiesOk record {|
    *http:Ok;
    DocumentArchivingProperties body;
|};

# >
# * `DueDate` - 
# * `ExecutionDate` - 
# * `FulfillmentDate` - 

public type DocumentUpdateHistoryProperties record {
    # The required status/situation before the property is valid/meaningful
    common:Condition Preconditions?;
    # The schedule and timing for which the property value is valid
    common:Schedule Schedule?;
    # The version reference for the property value
    string VersionNumber?;
    # The Document Update History Properties specific  Business Service
    common:BusinessService BusinessService?;
    # Reference to Document Update History Properties
    common:documentdirectoryentry DocumentDirectoryEntryReference?;
    # Reference to Document Update History Properties
    DocumentService DocumentUpdateHistoryPropertiesReference?;
    # The type of Document Update History Properties
    string DocumentUpdateHistoryPropertiesType?;
};

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

public type DocumentReferencePropertiesOk record {|
    *http:Ok;
    # body
    DocumentReferenceProperties body;
|};

# The Document Update History Properties properties that represent a discrete aspect of the Document Update History Properties
public type DocumentReferenceProperties record {
    # The required status/situation before the property is valid/meaningful
    common:Condition Preconditions?;
    # The schedule and timing for which the property value is valid
    common:Schedule Schedule?;
    # The version reference for the property value
    string VersionNumber?;
    # The Document Update History Properties specific  Business Service
    common:BusinessService BusinessService?;
    # Reference to Document Update History Properties
    common:documentdirectoryentry DocumentDirectoryEntryReference?;
    # Reference to Document Update History Properties
    DocumentService DocumentReferencePropertiesReference?;
    # The type of Document Reference Properties
    string DocumentReferencePropertiesType?;
};

public type DocumentAmendmentPropertiesOk record {|
    *http:Ok;
    DocumentAmendmentProperties body;
|};

public type DocumentVersionPropertiesOk record {|
    *http:Ok;
    DocumentVersionProperties body;
|};

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

public type DocumentVerificationPropertiesOk record {|
    *http:Ok;
    # body
    DocumentVerificationProperties body;
|};

# An external agency used to perform a document service

public type DocumentUpdateHistoryPropertiesOk record {|
    *http:Ok;
    # body
    DocumentUpdateHistoryProperties body;
|};

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

public type DocumentArchivingProperties record {
    # The required status/situation before the property is valid/meaningful
    common:Condition Preconditions?;
    # The schedule and timing for which the property value is valid
    common:Schedule Schedule?;
    # The version reference for the property value
    string VersionNumber?;
    # The Document Update History Properties specific  Business Service
    common:BusinessService BusinessService?;
    # Reference to Document Update History Properties
    common:documentdirectoryentry DocumentDirectoryEntryReference?;
    # Reference to Document Update History Properties
    DocumentService DocumentArchivingPropertiesReference?;
    # The type of Document Archiving Properties
    string DocumentArchivingPropertiesType?;
};

public type DocumentDirectoryEntryOk record {|
    *http:Ok;
    common:documentdirectoryentry body;
|};

# Reference to Document Update History Properties

public type DocumentAmendmentProperties record {
    # The required status/situation before the property is valid/meaningful
    common:Condition Preconditions?;
    # The schedule and timing for which the property value is valid
    common:Schedule Schedule?;
    # The version reference for the property value
    string VersionNumber?;
    # The Document Update History Properties specific  Business Service
    common:BusinessService BusinessService?;
    # Reference to Document Update History Properties
    common:documentdirectoryentry DocumentDirectoryEntryReference?;
    # Reference to Document Update History Properties
    DocumentService DocumentAmendmentPropertiesReference?;
    # The type of Document Amendment Properties
    string DocumentAmendmentPropertiesType?;
};

public type DocumentServiceProcedureOk record {|
    *http:Ok;
    # body
    DocumentServiceProcedure body;
|};

public type DocumentInvolvement record {
    # >
    # * `DocumentCapturer` - Party that captures a document.
    # * `DocumentIssuer` - Party that issues a document. 
    # * `DocumentResponsibleParty` - Identification of the party who is responsible for the certificate. ISO20022
    # * `DocumentSignatory` - Person who binds himself or herself, or the entity he or she is authorized to represent, by his or her signature on the document. ISO20022
    # * `DocumentNotifyingParty` - Identifies the party that notifies the content of a document to a third party. ISO20022
    # * `DocumentCheckingParty` - Identification of the person who checked the document and/or the signature. ISO20022
    # * `DocumentValidatingParty` - Identification of the person who validated the signature. ISO20022
    Documentinvolvementtypevalues DocumentInvolvementType?;
    # Reference to the document that is managed by Document Service Procedure
    common:Document DocumentReference?;
    # An external agency used to perform a document service
    common:Party PartyReference?;
    string PartyRoleType?;
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

# Complete work tasks following a defined procedure in support of general office activities and product and service delivery within Document Services. 
public type DocumentServiceProcedure record {
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
    common:Featuretypevalues DocumentServiceProcedureParameterType?;
    # A selected optional business service as subject matter of Document Service Procedure
    common:Feature DocumentServiceProcedureSelectedOption?;
    # Request to process something (most refers to Asset Type)
    common:Instruction DocumentServiceProcedureRequest?;
    # Timetable to process something (most refers to the Asset Type)
    common:Schedule DocumentServiceProcedureSchedule?;
    # DocumentServiceProcedureStatus
    common:Status DocumentServiceProcedureStatus?;
    # Reference to an entity that assigns and manages the identification.
    # tReference to the organization or agency that issued the identifier (e.g., DMV, Passport Office).
    common:Involvedparty DocumentServiceProcedureAssociatedPartyReference?;
    # Reference to an entity that assigns and manages the identification.
    # tReference to the organization or agency that issued the identifier (e.g., DMV, Passport Office).
    common:Involvedparty DocumentServiceProcedureBusinessUnitReference?;
    # Reference to an entity that assigns and manages the identification.
    # tReference to the organization or agency that issued the identifier (e.g., DMV, Passport Office).
    common:Involvedparty DocumentServiceProcedureServiceProviderReference?;
    # Reference to the Financial Facility related to Document Service Procedure
    common:FinancialFacility DocumentServiceProcedureFinancialFacilityReference?;
    # Reference to an entity that assigns and manages the identification.
    # tReference to the organization or agency that issued the identifier (e.g., DMV, Passport Office).
    common:Involvedparty DocumentServiceProcedureEmployeeReference?;
    # Reference to an entity that assigns and manages the identification.
    # tReference to the organization or agency that issued the identifier (e.g., DMV, Passport Office).
    common:Involvedparty DocumentServiceProcedureCustomerReference?;
    # A Classification value that distinguishes between the type of process undertaken within Document Service Procedure
    Proceduretype DocumentServiceProcedureType?;
    # Timetable to process something (most refers to the Asset Type)
    common:Schedule DocumentServiceProcedureServiceProviderSchedule?;
    # A Classification value that distinguishes between the type of services in Document Service Procedure
    Servicetype DocumentServiceProcedureServiceType?;
    # A Classification value that distinguishes between the type of products/services related to Document Service Procedure
    common:Bankingproducttype DocumentServiceProcedureProductandServiceType?;
    # Reference to the product or service that is related to Document Service Procedure
    common:Product DocumentServiceProcedureProductandServiceInstance?;
    # A Classification value that distinguishes between the type of transactions in Document Service Procedure
    Transactiontype DocumentServiceProcedureTransactionType?;
    # Reference to the transaction that is related to Document Service Procedure
    common:Transaction DocumentServiceProcedureTransaction?;
    # Reference to the Financial Transaction Arrangement that is related to Document Service Procedure
    common:Arrangement DocumentServiceProcedureFinancialTransactionArrangement?;
    # Reference to the Customer Agreement that is related to Document Service Procedure
    common:Agreement DocumentServiceProcedureCustomerAgreementReference?;
    # DocumentServiceProcedureReference
    Procedure DocumentServiceProcedureReference?;
    # Reference to the document that is managed by Document Service Procedure
    common:Document DocumentServiceProcedureDocumentReference?;
    # Reference to the service offering Verification, Amendment, Update, Archiving of document.
    DocumentService DocumentServiceProcedureDocumentServiceReference?;
    # DocumentServiceProcedureDocumentInvolvedPartyReference
    DocumentInvolvement DocumentServiceProcedureDocumentInvolvedPartyReference?;
};

public type Documentinvolvementtypevalues "DocumentCapturer"|"DocumentIssuer"|"DocumentResponsibleParty"|"DocumentSignatory"|"DocumentNotifyingParty"|"DocumentCheckingParty"|"DocumentValidatingParty";

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
