import financial.bian.attribute.groups.common as common;

import ballerina/http;

# The outcome of the case root cause analysis
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
# >
# * `Cheque` - Written order to a bank to pay a certain amount of money from one person to another person.
# * `Credittransfer` - Transfer of an amount of money in the books of the account servicer.
# * `Directdebit` - Collection of an amount of money from the debtor's bank account by the creditor. The amount of money and dates of collections may vary.
# * `Transferadvice` - Transfer of an amount of money in the books of the account servicer. An advice should be sent back to the account owner.
# * `Direct` - Direct method.
# * `Classical` - Classical method.
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
# Reference to the physical address or electronic venue the customer case was detected
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
# The contact record contains all details of the initial case submission
# >
# * `InstructedAmountAndCurrency` - The amount the debtor asks their bank to transfer (e.g., “Send 100 EUR”).
# * `EquivalentAmountAndCurrency` - If the debtor’s account is in a different currency, this is the converted equivalent (e.g., 100 USD = 91 EUR).
# * `DebtorAccountAmountAndCurrency` - The actual amount debited from the debtor’s account (after currency conversion, possibly including charges).
# * `InterbankSettlementAmountAndCurrency` - The amount exchanged/settled between the banks (may be in a different settlement currency, e.g., USD).
# * `CreditorAccountAmountAndCurrency` - The amount credited to the creditor’s account in their account currency (e.g., GBP).
# * `Net/ReceivedAmountAndCurrency` - The final amount the creditor actually receives after any deductions (e.g., fees).
# An identifier that allows to uniquely refer to an instance of a Payment Instruction.
# Name (label) of the location. (ISO20022)
# Complete work tasks following a defined procedure in support of general office activities and product and service delivery within Customer Case. 
public type CustomerCaseProcedure record {
    # >
    # * `Card` - 
    # * `Loan` - 
    # * `Fraud` - 
    # * `Payment` - 
    # * `Market` - 
    # * `Security` - 
    # * `Other` - 
    common:Casetypevalues CustomerCaseType?;
    # Reference to a specific product instance associated with the case
    common:ProductAgreement ProductInstanceReference?;
    # Reference to a Party who plays a  specific role in the context of assigning a status.
    # CustomerReference
    common:Involvedparty CustomerReference?;
    # The contact record contains all details of the initial case submission
    # CustomerContactRecordReference
    common:CustomerContact CustomerContactRecordReference?;
    # Reference to one or more product transactions associated with the case
    # ProductTransactionReference
    common:Transaction ProductTransactionReference?;
    # Reference to one or more product transactions associated with the case
    # ProductTransactionRecord
    common:Transaction ProductTransactionRecord?;
    # Reference to the physical address or electronic venue the customer case was detected
    # CaseLocation
    common:Address CaseLocation?;
    # The start and end date times for the contact
    # Date
    common:Datetime Date?;
    # Business unit responsible for the customer case resolution actions
    # EmployeeBusinessUnitReference
    common:BusinessUnit EmployeeBusinessUnitReference?;
    # The schedule of past and planned customer contacts
    # CustomerCaseResolutionSchedule
    common:Schedule CustomerCaseResolutionSchedule?;
};

# >
# * `CurrentAccountAgreement` - 
# * `SavingsAccountAgreement` - 
# * `BrokeredProductAgreement` - 
# * `ConsumerLoanAgreement` - 
# * `MortgageLoanAgreement` - 
# * `DirectDebitServiceAgreement` - 
# * `TermDepositAgreement` - 
# >
# * `Offered` - 
# * `Confirmed` - 
# * `Completed` - 
# * `Signed` - 
# * `Terminated` - 
# * `Rejected` - 
# >
# * `BaseCurrency` - Base currency of the account. (ISO20022)
#
# * `ReportingCurrency` - Currency used to calculate and report the balance and related entries of an account. (ISO20022)
#
# * `SecondaryCurrency` - 
# * `TransferCurrency` - Currency of the amount to be transferred which may be different from the currency of the debtor's account. (ISO20022)
# * `SettlementCurrency` - Specifies the currency used for settlement, if different from the account currency. 
# A characteristic of instruction which refers to the LifecycleStatus of instruction (e.g., requested, executed, fulfilled, etc.); 
# >
# * `OpenDate` - 
# * `RefreshDate` - 
# The main worsteps to be followed in th eexecution of the procedure
#
# Examples: Invoice generation
# A characteristic of transaction which refers to the LifecycleStatus of transaction (e.g., initiated, executed, confirmed, cancelled, etc.) 
# >
# * `ExecutedDate` - 
# * `FulfillmentDate` - 
# * `InitiatedDate` - 
# * `CancelledDate` - 
# * `ApprovedDate` - 
# * `ValueDate` - 
# * `BookingDate` - 
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
# >
# * `Android` - Android operating system.
# * `Ios` - iOS operating system.
# * `Windows` - Windows operating system.
# * `Blackberry` - Blackberry operating system.
# * `Tizen` - Tizen operating system.
# * `Othernational` - Other nationally defined code.
# * `Otherprivate` - Other privately defined code.
# An identifier that allows to uniquely refer to an instance of an Instruction.
# Reference to the resolution payment order when financial adjustments are required to resolve the customer case
public type PaymentInstruction record {
    # A classification of an instance of a payment instruction as an inbound or outbound payment.
    string PaymentInstructionDirectionType?;
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
    common:Paymenttypevalues PaymentInstructionType?;
    # The payment system requested to be used in a payment instruction.
    # PaymentInstructionRequestedMechanism
    string PaymentInstructionRequestedMechanism?;
    # Period of time during which the status is valid.
    common:Datetimeperiod PaymentInstructionProcessingValidityTime?;
    # >
    # * `Urgent` - Priority level is urgent (highest priority possible).
    # * `High` - Priority level is high.
    # * `Normal` - Priority level is normal.
    # * `Low` - Priority level is low.
    common:Priorityvaluetypes PaymentInstructionPriority?;
    # >
    # * `Realtimegrosssettlementsystem` - Clearing channel is a real-time gross settlement system.
    # * `Realtimenetsettlementsystem` - Clearing channel is a real-time net settlement system.
    # * `Masspaymentnetsystem` - Clearing channel is a mass payment net settlement system.
    # * `Booktransfer` - Payment through internal book transfer.
    Clearingchanneltypevalues PaymentInstructionClearingChannel?;
    # >
    # * `Debit` - Transaction is a debt entry
    # * `Credit` - Transaction is a credit entry
    common:Debitcreditindicatortvalues PaymentInstructionCreditDebitIndicator?;
    # PaymentInstructionStatus
    common:Paymentinstructionstatus PaymentInstructionStatus?;
    # PaymentInstructionAmountAndCurrency
    common:Paymentamountandcurrency PaymentInstructionAmountAndCurrency?;
    # PaymentInstructionDateAndTime
    common:Paymentdatetime PaymentInstructionDateAndTime?;
    # PaymentInstructionIdentification
    common:Paymentidentification PaymentInstructionIdentification?;
    # >
    # * `Cheque` - Written order to a bank to pay a certain amount of money from one person to another person.
    # * `Credittransfer` - Transfer of an amount of money in the books of the account servicer.
    # * `Directdebit` - Collection of an amount of money from the debtor's bank account by the creditor. The amount of money and dates of collections may vary.
    # * `Transferadvice` - Transfer of an amount of money in the books of the account servicer. An advice should be sent back to the account owner.
    # * `Direct` - Direct method.
    # * `Classical` - Classical method.
    common:Paymentmethodtypevalues PaymentInstructionMethod?;
    # Remittance Information is the descriptive data included in a payment order that explains the purpose of the payment and enables the beneficiary to reconcile the incoming funds with the corresponding invoice, contract, or obligation.
    #
    # Comment: 
    # Structured → Formal codes or fields defined by standards (e.g., ISO 20022 structured remittance, tax references, purpose codes).
    # Unstructured → Free-text description provided by the payer (e.g., Payment for Invoice 12345).
    string PaymentInstructionDescription?;
    # InstructionDate
    common:Instructiondatetime InstructionDate?;
    # A characteristic of instruction which refers to the LifecycleStatus of instruction (e.g., requested, executed, fulfilled, etc.); 
    # InstructionStatus
    common:Instructionstatus InstructionStatus?;
    # An identifier that allows to uniquely refer to an instance of an Instruction.
    # InstructionIdentification
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
    # >
    # * `PaymentInstruction` - 
    # * `IssuingInstruction` - 
    # * `BookingInstruction` - 
    # * `CollateralAllocationInstruction` - 
    # * `AmendmentInstruction` - 
    # * `TerminationInstruction` - 
    common:Undertakinginstructiontypevalues UndertakingInstructionType?;
    # Classification of the Money Transfer Instruction according to the event that lead to the instruction
    #
    # e.g. withdrawal, interest disbursement, direct debit, card payment.
    string MoneyTransferInstructionType?;
    # Amount of money to be transferred.
    string MoneyTransferInstructionAmount?;
    # Currency in which the transfer amount is expressed.
    string MoneyTransferInstructionAmountCurrency?;
    # The reason why the instruction is given
    #
    # can be reference to a lot of information, concerning e.g. a purchase, an arrangement fulfillment event, a billing period...
    string MoneyTransferInstructionPurpose?;
    # The network to be used for the processing of the money transfer instruction as requested in the instruction.
    # e.g. instant SEPA?
    string MoneyTransferInstructionRequestedMechanism?;
    # A characteristic of instruction which refers to the LifecycleStatus of instruction (e.g., requested, executed, fulfilled, etc.); 
    common:Instructionstatus MoneyTransferInstructionStatus?;
    # Reference to the contact channel that was used to give the money transfer instruction
    # MoneyTransferInstructionChannelReference
    string MoneyTransferInstructionChannelReference?;
    # InstructionAmount
    common:Amount InstructionAmount?;
    # InstructionCurrency
    common:Accountcurrency InstructionCurrency?;
    # * `DepositInstruction` - 
    # * `WithdrawInstruction` - 
    # * `MoneyTransferInstruction` - 
    # * `StandingOrder/Instruction` - 
    # * `SettlementInstruction` - 
    # * `PaymentInstruction` - 
    # * `RepaymentInstruction` - 
    common:Financialinstructiontypevalues FinancialInstructionType?;
};

# >
# * `DepositInstruction` - 
# * `WithdrawInstruction` - 
# * `MoneyTransferInstruction` - 
# * `StandingOrder/Instruction` - 
# * `SettlementInstruction` - 
# * `PaymentInstruction` - 
# * `RepaymentInstruction` - 
# >
# * `IMEI` - International Mobile Equipment Identity.
# * `Serialnumber` - Device serial number.
# * `Secureelementidentification` - Secure element ID.
# * `Othernational` - Other nationally assigned code.
# * `Otherprivate` - Other privately assigned code.
# The main worsteps to be followed in th eexecution of the procedure
#
# Examples: Invoice generation
public type Determination record {
    # CustomerAgreementInstanceReference
    common:Identifier CustomerAgreementInstanceReference?;
    # The agreement is accessed to support the determination of the resolution approach
    # CustomerAgreement
    common:CustomerAgreement CustomerAgreement?;
    # Work documentation, forms and schedules produced and referenced during the analysis
    # CaseDeterminationWorkProduct
    common:Workproduct CaseDeterminationWorkProduct?;
    # The outcome of the case root cause analysis
    # CaseDeterminationWorkTaskResult
    common:Task CaseDeterminationWorkTaskResult?;
};

# >
# * `FinancialTransaction` - 
# * `BusinessTransaction` - 
# * `BankingTransaction` - 
# * `AccountingTransaction` - 
# * `BookingTransaction` - 
# * `AllocationTransaction` - 
# * `DeliveryTransaction` - 
# * `ProductionTransaction` - 
# >
# * `ShortName` - 
# * `TradingName` - 
# * `LegalName` - 
# * `AcceptanceDate` - Date and time at which all processing conditions for execution of the payment are met and adequate financial cover is available at the account servicing agent. ISO20022
# * `CreationDate` - Date and time at which the payment execution was created by the instructing agent. ISO20022
# * `ValueDate` - Date on which a payment must be executed (ISO20022)
# * `DueDate` - Due date for the payment. (ISO20022)
#
# Latest date whereby the amount of money must be paid. (ISO20022)
# * `ExpiryDate` - 
# * `ExpectedDate` - Expected date whereby the amount must be paid.
# * `PoolingAdjustmentDate` - Date used for the correction of the value date of a cash pool movement that has been posted with a different value date. (ISO20022)
# >
# * `Document` - 
# * `WorkingPaper` - 
# * `ActivityLog` - 
# * `Form` - 
# * `File` - File of consolidated notes, evaluations and recommendations for the work task
# * `MeetingSchedule` - 
# * `MeetingMinute` - 
# The start and end date times for the contact
# >
# * `Debit` - Transaction is a debt entry
# * `Credit` - Transaction is a credit entry
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
# Date on which the agreement was signed by all parties. (ISO20022)
public type CustomerCaseProcedureOk record {|
    *http:Ok;
    # body
    CustomerCaseProcedure body;
|};
