import ballerina/http;
import financial.bian.attribute.groups.common as common;

public type BankGuaranteedPaymentRemittanceOk record {|
    *http:Ok;
    BankGuaranteedPaymentRemittance body;
|};

public type BankGuaranteedPaymentSpecificationOk record {|
    *http:Ok;
    BankGuaranteedPaymentSpecification body;
|};

# The Bank Guaranteed Payment Specification Task is a discrete action or task that is required in the execution of the Bank Guaranteed Payment Specification Task
public type BankGuaranteedPaymentRemittance record {
    # The required status/situation prior to the execution of the task
    common:condition Preconditions?;
    # The timing and key actions/milestones involved in completing the transaction task
    common:schedule Schedule?;
    # The Bank Guaranteed Payment Specification Task specific Business Service
    common:businessservice BusinessService?;
    # The required status/situation prior to the execution of the task
    common:condition Postconditions?;
    # An unique reference to an item or an occurrence of Bearer Document Transaction ObligationFulfilment|ObligationFulfilment (https://www.iso20022.org/standardsrepository/type/ObligationFulfilment)|Standard|ISO20022 BM ()
    'common:Transaction BearerDocumentTransactionReference?;
    # Reference to Bank Guaranteed Payment Specification Task
    common:task BankGuaranteedPaymentRemittanceTaskReference?;
    # The particular date and time point in the progression of time
    common:text BankGuaranteedPaymentRemittanceTaskType?;
};

# The Bank Guaranteed Payment Specification Task is a discrete action or task that is required in the execution of the Bank Guaranteed Payment Specification Task
public type BankGuaranteedPaymentSpecification record {
    # The required status/situation prior to the execution of the task
    common:condition Preconditions?;
    # The timing and key actions/milestones involved in completing the transaction task
    common:schedule Schedule?;
    # The Bank Guaranteed Payment Specification Task specific Business Service
    common:businessservice BusinessService?;
    # The required status/situation prior to the execution of the task
    common:condition Postconditions?;
    # An unique reference to an item or an occurrence of Bearer Document Transaction ObligationFulfilment|ObligationFulfilment (https://www.iso20022.org/standardsrepository/type/ObligationFulfilment)|Standard|ISO20022 BM ()
    'common:Transaction BearerDocumentTransactionReference?;
    # Reference to Bank Guaranteed Payment Specification Task
    common:task BankGuaranteedPaymentSpecificationTaskReference?;
    # The particular date and time point in the progression of time
    common:text BankGuaranteedPaymentSpecificationTaskType?;
};

public type BearerDocumentTransactionOk record {|
    *http:Ok;
    BearerDocumentTransaction body;
|};

public type BearerDocumentCreationandRegistrationOk record {|
    *http:Ok;
    BearerDocumentCreationandRegistration body;
|};

# Execute a well-bounded financial transaction/task, typically involving largely automated/structured fulfillment processing within Bank Drafts. 
public type BearerDocumentTransaction record {
    # A Classification value that distinguishes between business service transaction within Bearer Document Transaction ||
    # |
    common:featuretypevalues BearerDocumentTransactionParameterType?;
    # A selected optional business service as subject matter of Bearer Document Transaction ||
    # |
    'common:Service BearerDocumentTransactionSelectedOption?;
    # The status of Bearer Document Transaction ||
    # |
    common:Transactionstatus BearerDocumentTransactionStatus?;
    # A Classification value that specifies type of transaction for this  Bearer Document Transaction ||
    # |
    actiontype BearerDocumentTransactionType?;
    # An unique reference to an item or an occurrence of Bearer Document Transaction ObligationFulfilment|ObligationFulfilment (https://www.iso20022.org/standardsrepository/type/ObligationFulfilment)|Standard|ISO20022 BM ()
    'common:Transaction BearerDocumentTransactionReference?;
    # Document _x000D_
    # |Document (https://www.iso20022.org/standardsrepository/type/Document)|Standard|ISO20022 BM ()
    common:Document BearerDocumentReference?;
    # Payment|Payment (https://www.iso20022.org/standardsrepository/type/Payment)|Standard|ISO20022 BM ()
    common:paymentinstruction BearerDocumentInstructionReference?;
    # ||
    # |
    common:involvedparty BearerDocumentInvolvedPartyReference?;
};

# The Bank Guaranteed Payment Specification Task is a discrete action or task that is required in the execution of the Bank Guaranteed Payment Specification Task
public type BearerDocumentCreationandRegistration record {
    # The required status/situation prior to the execution of the task
    common:condition Preconditions?;
    # The timing and key actions/milestones involved in completing the transaction task
    common:schedule Schedule?;
    # The Bank Guaranteed Payment Specification Task specific Business Service
    common:businessservice BusinessService?;
    # The required status/situation prior to the execution of the task
    common:condition Postconditions?;
    # An unique reference to an item or an occurrence of Bearer Document Transaction ObligationFulfilment|ObligationFulfilment (https://www.iso20022.org/standardsrepository/type/ObligationFulfilment)|Standard|ISO20022 BM ()
    'common:Transaction BearerDocumentTransactionReference?;
    # Reference to Bank Guaranteed Payment Specification Task
    common:task BearerDocumentCreationandRegistrationTaskReference?;
    # The particular date and time point in the progression of time
    common:text BearerDocumentCreationandRegistrationTaskType?;
};

// --- bank_guarantee_types.bal ---

# The Customer Collateral Allocation Task is a discrete action or task that is required in the execution of the Customer Collateral Allocation Task
public type BankGuaranteeDefinitionandPricing record {
    # The required status/situation prior to the execution of the task
    common:condition Preconditions?;
    # The timing and key actions/milestones involved in completing the transaction task
    common:schedule Schedule?;
    # The Customer Collateral Allocation Task specific Business Service
    common:businessservice BusinessService?;
    # The required status/situation prior to the execution of the task
    common:condition Postconditions?;
    # Reference to Customer Collateral Allocation Task
    'common:Transaction BankGuaranteeTransactionReference?;
    # Reference to Customer Collateral Allocation Task
    common:task BankGuaranteeDefinitionandPricingTaskReference?;
    # Record of customer contacts, correspondence, feedback ||
    # |
    common:text BankGuaranteeDefinitionandPricingTaskType?;
};

# >
# * `Fullyallocated` - 
# * `Partiallyallocated` - 
# * `Earmarked` - Not allocated, merely earmarked
public type allocationstatustypevalues "Fullyallocated"|"Partiallyallocated"|"Earmarked";

# Execute a well-bounded financial transaction/task, typically involving largely automated/structured fulfillment processing within Bank Guarantee. 
public type BankGuaranteeTransaction record {
    # Reference to the Party Reference Data Directory entry of the bank of the beneficiary of the bank guarantee ||
    # |
    common:involvedparty BankGuaranteeCustomerReference?;
    # Name of the beneficiary of the bank guarantee Name|Name (https://www.iso20022.org/standardsrepository/type/Name)|Standard|ISO20022 ()
    common:name BankGuaranteeCustomerName?;
    # Reference to the branch that manages the customer ||
    # |
    common:branch BankGuaranteeCustomerBranchReference?;
    # Reference to the Party Reference Data Directory entry of the bank of the beneficiary of the bank guarantee ||
    # |
    common:involvedparty BankGuaranteeBeneficiaryReference?;
    # Name of the beneficiary of the bank guarantee Name|Name (https://www.iso20022.org/standardsrepository/type/Name)|Standard|ISO20022 ()
    common:name BankGuaranteeBeneficiaryName?;
    # Reference to the Party Reference Data Directory entry of the bank of the beneficiary of the bank guarantee ||
    # |
    common:involvedparty BankGuaranteeBeneficiaryBankReference?;
    # Date on which the bank guarantee will expire ISODateTime|ISODateTime (https://www.iso20022.org/standardsrepository/type/ISODateTime)|Standard|ISO20022 BM ()
    common:datetime BankGuaranteeStartDate?;
    # Date on which the bank guarantee will expire ISODateTime|ISODateTime (https://www.iso20022.org/standardsrepository/type/ISODateTime)|Standard|ISO20022 BM ()
    common:datetime BankGuaranteeExpiryDate?;
    # Identifier of a SWIFT message that has been sent or is received for this guarantee GenericIdentification|GenericIdentification (https://www.iso20022.org/standardsrepository/type/GenericIdentification)|Standard|ISO20022 BM ()
    common:identifier CustomerTaxIdentifier?;
    # Amount of the bank guarantee CurrencyAndAmount|CurrencyAndAmount (https://www.iso20022.org/standardsrepository/type/CurrencyAndAmount)|Standard|ISO20022  ()
    common:amount BankGuaranteeAmount?;
    # Reference to the currency of the amount of the bank guarantee CurrencyCode|CurrencyCode (https://www.iso20022.org/standardsrepository/type/CurrencyCode)|Standard|ISO20022 BM ()
    common:currencycode BankGuaranteeCurrencyReference?;
    # Record of customer contacts, correspondence, feedback ||
    # |
    common:text BankGuaranteePurpose?;
    # Reference to the credit facility under which the bank guarantee is issued; if the guarantee is issued directly against collateral, this will be recorded by Collateral Allocation Management ||
    # |
    creditfacility CreditFacilityReference?;
    # Reference to the Collateral Allocation Management instances that link collateral to the bank guarantee ||
    # |
    common:collateralassetallocation CollateralAllocationManagementReference?;
    # Identifier of a SWIFT message that has been sent or is received for this guarantee GenericIdentification|GenericIdentification (https://www.iso20022.org/standardsrepository/type/GenericIdentification)|Standard|ISO20022 BM ()
    common:identifier SWIFTMessageID?;
    # Reference to the Document Directory entry of a document related to this guarantee ||
    # |
    documentdirectory DocumentDirectoryReference?;
    # Reference to the Sales Product Agreement for this Bank Guarantee Undertaking |Undertaking  (https://www.iso20022.org/standardsrepository/type/Undertaking)|Standard|ISO20022 BM ()
    bankguaranteeagreement SalesProductAgreementReference?;
    # Description of the role, obligations or entitlements of the associated party ||
    # |
    common:partyobligationorentitlement EntitlementOptionDefinition?;
    # Description of the role, obligations or entitlements of the associated party ||
    # |
    common:partyobligationorentitlement EntitlementOptionSetting?;
    # Setting of an applicable restriction option AccountRestriction_x000D_
    # |AccountRestriction (https://www.iso20022.org/standardsrepository/type/AccountRestriction)|Standard|ISO20022 BM  ()
    common:accountrestriction RestrictionOptionDefinition?;
    # Setting of an applicable restriction option AccountRestriction_x000D_
    # |AccountRestriction (https://www.iso20022.org/standardsrepository/type/AccountRestriction)|Standard|ISO20022 BM  ()
    common:accountrestriction RestrictionOptionSetting?;
    # Record of customer contacts, correspondence, feedback ||
    # |
    common:text CustomerCommentary?;
    # Type of association, e.g. co-signer ||
    # |
    bankguaranteeinvolvementtypevalues AssociationType?;
    # Description of the role, obligations or entitlements of the associated party ||
    # |
    common:partyobligationorentitlement AssociationObligation?;
    # Reference to the Party Reference Data Directory entry of the associated party Party|Party (https://www.iso20022.org/standardsrepository/type/Party)|Standard|ISO20022BM ()
    common:party AssociationReference?;
    # Status of the bank guarantee. Values are Pending for approval, Issued, Expired, Ended, Claimed, more… Status |Status  (https://www.iso20022.org/standardsrepository/type/Status)|Standard|ISO20022 BM ()
    common:status BankGuaranteeStatus?;
};

# The Customer Collateral Allocation Task is a discrete action or task that is required in the execution of the Customer Collateral Allocation Task
public type BankGuaranteeIssuanceandBooking record {
    # The required status/situation prior to the execution of the task
    common:condition Preconditions?;
    # The timing and key actions/milestones involved in completing the transaction task
    common:schedule Schedule?;
    # The Customer Collateral Allocation Task specific Business Service
    common:businessservice BusinessService?;
    # The required status/situation prior to the execution of the task
    common:condition Postconditions?;
    # Reference to Customer Collateral Allocation Task
    'common:Transaction BankGuaranteeTransactionReference?;
    # Reference to Customer Collateral Allocation Task
    common:task BankGuaranteeIssuanceandBookingTaskReference?;
    # Record of customer contacts, correspondence, feedback ||
    # |
    common:text BankGuaranteeIssuanceandBookingTaskType?;
};

public type BankGuaranteeDefinitionandPricingOk record {|
    *http:Ok;
    BankGuaranteeDefinitionandPricing body;
|};

public type BankGuaranteeTransactionOk record {|
    *http:Ok;
    BankGuaranteeTransaction body;
|};

public type BankGuaranteeIssuanceandBookingOk record {|
    *http:Ok;
    BankGuaranteeIssuanceandBooking body;
|};

public type BankGuaranteeCollectionsOk record {|
    *http:Ok;
    BankGuaranteeCollections body;
|};

# Type of association, e.g. co-signer ||
# |
public type bankguaranteeinvolvementtypevalues "Applicant"|"Beneficiary"|"Bank"|"Guarantor";

# The Customer Collateral Allocation Task is a discrete action or task that is required in the execution of the Customer Collateral Allocation Task
public type BankGuaranteePayout record {
    # The required status/situation prior to the execution of the task
    common:condition Preconditions?;
    # The timing and key actions/milestones involved in completing the transaction task
    common:schedule Schedule?;
    # The Customer Collateral Allocation Task specific Business Service
    common:businessservice BusinessService?;
    # The required status/situation prior to the execution of the task
    common:condition Postconditions?;
    # Reference to Customer Collateral Allocation Task
    'common:Transaction BankGuaranteeTransactionReference?;
    # Reference to Customer Collateral Allocation Task
    common:task BankGuaranteePayoutTaskReference?;
    # Record of customer contacts, correspondence, feedback ||
    # |
    common:text BankGuaranteePayoutTaskType?;
};

public type BankGuaranteePayoutOk record {|
    *http:Ok;
    BankGuaranteePayout body;
|};

# Reference to the Sales Product Agreement for this Bank Guarantee Undertaking |Undertaking  (https://www.iso20022.org/standardsrepository/type/Undertaking)|Standard|ISO20022 BM ()
public type bankguaranteeagreement record {
    # An agreement made by a bank or other financial instituation, where the bank assures or guarantees a beneficiary to pay a debt in case the actual customer who owes the money cannot pay.
    #
    #
    # Bank Guarantee vs Letter of Credit 
    #
    # - A bank guarantee is a promise from a lending institution that ensures the bank will step up if a debtor can't cover a debt.
    #
    # - Letters of credit are also financial promises on behalf of one party in a transaction and are especially significant in international trade.
    #
    # Letter of credit is an financial document for assured payments, i.e. an undertaking of the buyer's bank to make payment to seller, against the documents stated. A bank guarantee is a guarantee given by the bank to the beneficiary on behalf of the applicant, to effect payment, if the applicant defaults in payment.
    string BankGuaranteeAgreement?;
};

# The Customer Collateral Allocation Task is a discrete action or task that is required in the execution of the Customer Collateral Allocation Task
public type BankGuaranteeCollections record {
    # The required status/situation prior to the execution of the task
    common:condition Preconditions?;
    # The timing and key actions/milestones involved in completing the transaction task
    common:schedule Schedule?;
    # The Customer Collateral Allocation Task specific Business Service
    common:businessservice BusinessService?;
    # The required status/situation prior to the execution of the task
    common:condition Postconditions?;
    # Reference to Customer Collateral Allocation Task
    'common:Transaction BankGuaranteeTransactionReference?;
    # Reference to Customer Collateral Allocation Task
    common:task BankGuaranteeCollectionsTaskReference?;
    # Record of customer contacts, correspondence, feedback ||
    # |
    common:text BankGuaranteeCollectionsTaskType?;
};

# Reference to the Document Directory entry of a document related to this guarantee ||
# |
public type documentdirectory record {
    # A directory to record the document. 
    string DocumentDirectory?;
};

// --- letter_of_credit_types.bal ---

# UndertakingPartyRole|UndertakingPartyRole (https://www.iso20022.org/standardsrepository/type/UndertakingPartyRole)|Standard|ISO20022 BM ()
public type undertakinginvolvement record {
    # ||
    # |
    undertakinginvolvementtypevalues UndertakingInvolvementType?;
    # Reference to the party involved in the undertaking (Letter of Credit).
    common:party PartyReference?;
    # Undertaking|Undertaking (https://www.iso20022.org/standardsrepository/type/Undertaking)|Standard|ISO20022 BM ()
    undertaking LetterOfCreditReference?;
};

# >
# * `PricingArrangement` - 
# * `DemandPaymentArrangement` - 
# * `CollateralArrangement` - 
# * `PayoutArrangement` - 
# * `DeliveryArrangement` - 
# * `AmendmentArrangement` - 
# * `ExpiryArrangement` - 
# * `TerminationArrangement` - 
# * `IssuanceArrangement` - 
public type undertakingarrangementtypevalues "PricingArrangement"|"DemandPaymentArrangement"|"CollateralArrangement"|"PayoutArrangement"|"DeliveryArrangement"|"AmendmentArrangement"|"ExpiryArrangement"|"TerminationArrangement"|"IssuanceArrangement";

# Details related to terms and conditions for demanding payment under a demand guarantee or standby letter of credit.
public type undertakingdemandpaymentarrangement record {
    # The date on which the demand for payment is submitted.
    common:datetime DemandSubmissionDate?;
    # Details related to the amount of the undertaking (Letter of Credit).  CurrencyAndAmount|CurrencyAndAmount (https://www.iso20022.org/standardsrepository/type/CurrencyAndAmount)|Standard|ISO20022  ()
    common:amount DemandAmount?;
    # >
    # * `PayOnly` - 
    # * `PayOrExtend` - 
    undertakingdemandtypevalues DemandType?;
    # Arrangements for the debtor to pay the creditor an amount of cash.
    common:paymentarrangement DemandPaymentArrangement?;
    # Document or template enclosed in the undertaking (Letter of Credit) directly related to the undertaking (Letter of Credit) to be issued. Document _x000D_
    # |Document (https://www.iso20022.org/standardsrepository/type/Document)|Standard|ISO20022 BM ()
    common:Document DemantDocument?;
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

# >
# * `BankGuarantee` - 
# * `LetterOfCredit` - 
# * `StandbyLettersOfCredit` - Undertaking is a standby letter of credit.(ISO20022)
# * `DemandGuarantee` - Undertaking is a demand guarantee.(ISO20022)
public type undertakingtypevalues "BankGuarantee"|"LetterOfCredit"|"StandbyLettersOfCredit"|"DemandGuarantee";

# ||
# |
public type letterofcredit record {
    # Type of undertaking (Letter of Credit)
    # ||
    # |
    letterofcredittypevalues LetterOfCreditType?;
};

# >
# * `UndertakingTerminationDate` - Date when the undertaking terminates. (ISO20022)
# * `UndertakingAdviceDate` - Date on which the undertaking or its amendment is advised. (ISO20022)
# * `UndertakingExpiryDate` - Date and time when the expiry of the undertaking takes effect. (ISO20022)
# * `UndertakingIssuanceDate` - Date on which the undertaking is issued. (ISO20022)
public type undertakingdatetypevalues "UndertakingTerminationDate"|"UndertakingAdviceDate"|"UndertakingExpiryDate"|"UndertakingIssuanceDate";

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

# Details related to the issuance terms of the undertaking (Letter of Credit) ||
# |
public type undertakingissuancearrangement record {
    # >
    # * `Counterundertakingrequestforlocalundertaking` - Counter-undertaking issued to a correspondent with a request to issue a local undertaking.
    # * `Counterundertakingrequestforcounterundertaking` - Counter-undertaking issued to a correspondent with a request to issue another counter-undertaking.
    # * `Undertakingissueddirect` - Undertaking issued direct to the beneficiary.
    # * `Undertakingissuedviaconfirmingparty` - Undertaking issued to the beneficiary via a confirming party.
    # * `Undertakingviaadvisingparty` - Undertaking issued to the beneficiary via an advising party.
    undertakingissuancetypevalues Issuancetype?;
    # The date on which the Letter of Credit is issued.
    common:datetime IssuanceDate?;
    # The location where the Letter of Credit is issued.
    common:location PlaceOfIssue?;
};

public type LetterofCreditDefinitionandPricingOk record {|
    *http:Ok;
    LetterofCreditDefinitionandPricing body;
|};

# The Letter of Credit Definition and Pricing Task is a discrete action or task that is required in the execution of the Letter of Credit Definition and Pricing Task
public type SellerObligationConfirmation record {
    # The required status/situation prior to the execution of the task
    common:condition Preconditions?;
    # The timing and key actions/milestones involved in completing the transaction task
    common:schedule Schedule?;
    # The Letter of Credit Definition and Pricing Task specific Business Service
    common:businessservice BusinessService?;
    # The required status/situation prior to the execution of the task
    common:condition Postconditions?;
    # Details of the underlying transaction for which the undertaking (Letter of Credit) is issued. ObligationFulfilment|ObligationFulfilment (https://www.iso20022.org/standardsrepository/type/ObligationFulfilment)|Standard|ISO20022 BM ()
    'common:Transaction LetterOfCreditTransactionReference?;
    # Reference to Letter of Credit Definition and Pricing Task
    common:task SellerObligationConfirmationTaskReference?;
    # Brief description of the purpose of the undertaking (Letter of Credit) ||
    # |
    common:text SellerObligationConfirmationTaskType?;
};

public type LetterofCreditIssuanceOk record {|
    *http:Ok;
    LetterofCreditIssuance body;
|};

# >
# * `Counterundertakingrequestforlocalundertaking` - Counter-undertaking issued to a correspondent with a request to issue a local undertaking.
# * `Counterundertakingrequestforcounterundertaking` - Counter-undertaking issued to a correspondent with a request to issue another counter-undertaking.
# * `Undertakingissueddirect` - Undertaking issued direct to the beneficiary.
# * `Undertakingissuedviaconfirmingparty` - Undertaking issued to the beneficiary via a confirming party.
# * `Undertakingviaadvisingparty` - Undertaking issued to the beneficiary via an advising party.
public type undertakingissuancetypevalues "Counterundertakingrequestforlocalundertaking"|"Counterundertakingrequestforcounterundertaking"|"Undertakingissueddirect"|"Undertakingissuedviaconfirmingparty"|"Undertakingviaadvisingparty";

public type SellerObligationConfirmationOk record {|
    *http:Ok;
    SellerObligationConfirmation body;
|};

# Presentation details related to the undertaking (Letter of Credit) Presentation|Presentation (https://www.iso20022.org/standardsrepository/type/Presentation)|Standard|ISO20022 BM ()
public type correspondence record {
    # >
    # * `UnsolicitedMessage` - 
    # * `Complaint` - 
    correspondencetypevalues CorrespondenceType?;
    # The address for message delivery (needs to match channel selection)
    common:address CorrespondenceAddress?;
    # The date and time of the correspondence.
    common:datetime CorrespondenceDateTime?;
    # Brief description of the purpose of the undertaking (Letter of Credit) ||
    # |
    common:text CorrespondenceContent?;
    # Brief description of the purpose of the undertaking (Letter of Credit) ||
    # |
    common:text CorrespondenceTemplate?;
    # >
    # * `Fax` - Transmission by fax.
    # * `Email` - Transmission by e-mail.
    # * `Proprietary` - Transmission by proprietary method.
    # * `Online` - Transmission on line, for example, in a web portal.
    # * `Phone` - Transmission by telephone.
    # * `Postalservice` - Transmission by postal service.
    # * `File` - Transmission by file transfer.
    correspondencecommunicationmethodtypevalues CorrespondenceCommunicationMethod?;
    # >
    # * `PostalAddress` - 
    # * `GeolocationAddress` - 
    # * `LatitudeAddress` - 
    # * `LongitudeAddress` - 
    # * `ElectronicAddress` - 
    common:addresstypevalues CorrespondenceAddressType?;
    # >
    # * `Paper` - Presentation is made on paper.
    # * `Electronic` - Presentation is made electronically.
    # * `Paperelectronic` - Presentation is made on paper and/or electronically.
    # * `Biometric` - Biometric medium.
    correspondencemediumtypevalues CorrespondenceMedium?;
};

# Details of communication channel for delivery of the undertaking (Letter of Credit) ||
# |
public type communicationchannel record {
    # A pathway established via a communication medium.
    # A contact point by which the bank interacts with parties.
    string CommunicationChannel?;
};

public type contactpoint record {
    # >
    # * `ElectronicAddress` - Address which is accessed by electronic means. ISO20022
    # * `PostalAddress` - Information that locates and identifies a specific address. ISO20022
    # * `PhoneNumber` - Collection of information that identifies a phone address. ISO20022
    # * `Socialnetworkaddress` - A social network such as Facebook, Twitter, etc.
    contactpointtypevalues ContactPointType?;
};

# >
# * `UnsolicitedMessage` - 
# * `Complaint` - 
public type correspondencetypevalues "UnsolicitedMessage"|"Complaint";

public type LetterOfCreditTransactionOk record {|
    *http:Ok;
    LetterOfCreditTransaction body;
|};

# ||
# |
public type undertakinginvolvementtypevalues "UndertakingAdvisingParty"|"UndertakingApplicant"|"UndertakingBeneficiary"|"UndertakingConfirmer"|"UndertakingInstructingParty"|"UndertakingIssuer"|"UndertakingPresenter"|"UndertakingObligor";

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

# The Letter of Credit Definition and Pricing Task is a discrete action or task that is required in the execution of the Letter of Credit Definition and Pricing Task
public type LetterofCreditDefinitionandPricing record {
    # The required status/situation prior to the execution of the task
    common:condition Preconditions?;
    # The timing and key actions/milestones involved in completing the transaction task
    common:schedule Schedule?;
    # The Letter of Credit Definition and Pricing Task specific Business Service
    common:businessservice BusinessService?;
    # The required status/situation prior to the execution of the task
    common:condition Postconditions?;
    # Details of the underlying transaction for which the undertaking (Letter of Credit) is issued. ObligationFulfilment|ObligationFulfilment (https://www.iso20022.org/standardsrepository/type/ObligationFulfilment)|Standard|ISO20022 BM ()
    'common:Transaction LetterOfCreditTransactionReference?;
    # Reference to Letter of Credit Definition and Pricing Task
    common:task LetterofCreditDefinitionandPricingTaskReference?;
    # Brief description of the purpose of the undertaking (Letter of Credit) ||
    # |
    common:text LetterofCreditDefinitionandPricingTaskType?;
};

public type LetterofCreditDemandPaymentOk record {|
    *http:Ok;
    LetterofCreditDemandPayment body;
|};

# >
# * `PayOnly` - 
# * `PayOrExtend` - 
public type undertakingdemandtypevalues "PayOnly"|"PayOrExtend";

# An unique reference to an item or an occurrence of Letter Of Credit Transaction ||
# |
public type undertakingtransaction record {
    # A Classification value that specifies type of transaction for this  Letter Of Credit Transaction ||
    # |
    undertakingtransactiontypevalues UndertakingTransactionType?;
};

# The Letter of Credit Definition and Pricing Task is a discrete action or task that is required in the execution of the Letter of Credit Definition and Pricing Task
public type LetterofCreditIssuance record {
    # The required status/situation prior to the execution of the task
    common:condition Preconditions?;
    # The timing and key actions/milestones involved in completing the transaction task
    common:schedule Schedule?;
    # The Letter of Credit Definition and Pricing Task specific Business Service
    common:businessservice BusinessService?;
    # The required status/situation prior to the execution of the task
    common:condition Postconditions?;
    # Details of the underlying transaction for which the undertaking (Letter of Credit) is issued. ObligationFulfilment|ObligationFulfilment (https://www.iso20022.org/standardsrepository/type/ObligationFulfilment)|Standard|ISO20022 BM ()
    'common:Transaction LetterOfCreditTransactionReference?;
    # Reference to Letter of Credit Definition and Pricing Task
    common:task LetterofCreditIssuanceandBookingTaskReference?;
    # Brief description of the purpose of the undertaking (Letter of Credit) ||
    # |
    common:text LetterofCreditIssuanceandBookingTaskType?;
    # The address for message delivery (needs to match channel selection)
    common:address PlaceofIssue?;
    # The date on which the Letter of Credit is issued.
    common:datetime DateofIssuance?;
    # Details related to the issuance terms of the undertaking (Letter of Credit) ||
    # |
    undertakingissuancearrangement IssuanceTermandConditions?;
    # Undertaking|Undertaking (https://www.iso20022.org/standardsrepository/type/Undertaking)|Standard|ISO20022 BM ()
    undertaking UndertakingReference?;
    # >
    # * `Initiate` - 
    # * `Execute` - 
    # * `Create` - 
    # * `Transfer` - 
    # * `Pay` - 
    # * `Deliver` - 
    # * `Apply` - 
    # * `Calculate` - 
    common:Actiontypevalues IssuanceTransactionType?;
    # Details of the underlying transaction for which the undertaking (Letter of Credit) is issued. ObligationFulfilment|ObligationFulfilment (https://www.iso20022.org/standardsrepository/type/ObligationFulfilment)|Standard|ISO20022 BM ()
    'common:Transaction IssuanceTransaction?;
    # Details of the instruction related to the issuance of the Letter of Credit.
    instruction IssuanceInstruction?;
    # >
    # * `Counterundertakingrequestforlocalundertaking` - Counter-undertaking issued to a correspondent with a request to issue a local undertaking.
    # * `Counterundertakingrequestforcounterundertaking` - Counter-undertaking issued to a correspondent with a request to issue another counter-undertaking.
    # * `Undertakingissueddirect` - Undertaking issued direct to the beneficiary.
    # * `Undertakingissuedviaconfirmingparty` - Undertaking issued to the beneficiary via a confirming party.
    # * `Undertakingviaadvisingparty` - Undertaking issued to the beneficiary via an advising party.
    undertakingissuancetypevalues IssuanceType?;
};

# Details related to the termination terms of the undertaking (Letter of Credit) ||
# |
public type undertakingterminationarrangement record {
    # The date on which the undertaking (Letter of Credit) is terminated.
    common:datetime TerminationDate?;
};

# >
# * `Cheque` - Written order to a bank to pay a certain amount of money from one person to another person.
# * `Credittransfer` - Transfer of an amount of money in the books of the account servicer.
# * `Directdebit` - Collection of an amount of money from the debtor's bank account by the creditor. The amount of money and dates of collections may vary.
# * `Transferadvice` - Transfer of an amount of money in the books of the account servicer. An advice should be sent back to the account owner.
# * `Direct` - Direct method.
# * `Classical` - Classical method.
public type paymentmethodtypevalues "Cheque"|"Credittransfer"|"Directdebit"|"Transferadvice"|"Direct"|"Classical";

# Undertaking|Undertaking (https://www.iso20022.org/standardsrepository/type/Undertaking)|Standard|ISO20022 BM ()
public type undertakingarrangement record {
    # >
    # * `PricingArrangement` - 
    # * `DemandPaymentArrangement` - 
    # * `CollateralArrangement` - 
    # * `PayoutArrangement` - 
    # * `DeliveryArrangement` - 
    # * `AmendmentArrangement` - 
    # * `ExpiryArrangement` - 
    # * `TerminationArrangement` - 
    # * `IssuanceArrangement` - 
    undertakingarrangementtypevalues UndertakingArrangementType?;
    # Details related to the amount of the undertaking (Letter of Credit).  CurrencyAndAmount|CurrencyAndAmount (https://www.iso20022.org/standardsrepository/type/CurrencyAndAmount)|Standard|ISO20022  ()
    common:amount UndertakingAmount?;
    # Details related to the fee arrangement for the undertaking (Letter of Credit).
    common:feearrangement UndertakingFee?;
    # The required status/situation prior to the execution of the task
    common:condition UndertakingTermAndCondition?;
    # The date associated with the undertaking (Letter of Credit).
    common:datetime UndertakingDate?;
    # >
    # * `UndertakingTerminationDate` - Date when the undertaking terminates. (ISO20022)
    # * `UndertakingAdviceDate` - Date on which the undertaking or its amendment is advised. (ISO20022)
    # * `UndertakingExpiryDate` - Date and time when the expiry of the undertaking takes effect. (ISO20022)
    # * `UndertakingIssuanceDate` - Date on which the undertaking is issued. (ISO20022)
    undertakingdatetypevalues UndertakingDateType?;
};

# Status of the undertaking.
public type undertakingstatus record {
    # Refers to the lifecycle of a Condition
    common:status UndertakingStatus?;
    # >
    # * `Acceptedtechnicalvalidation` - Accepted in accordance with technical validation.
    # * `Accepted` - Accepted.
    # * `Pending` - Pending further processing.
    # * `Received` - Received.
    # * `Rejected` - Rejected.
    # * `Nonconfirmation` - Undertaking not confirmed.
    # * `Withdrawn` - Demand has been withdrawn.
    # * `Undertakingamountchange` - Change to undertaking amount.
    # * `Counterundertakingamountchange` - Change to counter-undertaking amount.
    undertakingstatustypevalues UndertakingStatusType?;
};

# Details related to the expiry terms of the undertaking (Letter of Credit) Expiry|Expiry (https://www.iso20022.org/standardsrepository/type/Expiry)|Standard|ISO20022 BM ()
public type undertakingexpiryarrangement record {
    # The expiry date and time of the undertaking (Letter of Credit).
    common:datetime ExpiryDateTime?;
    # The required status/situation prior to the execution of the task
    common:condition ExpiryCondition?;
    # The location where the expiry of the undertaking takes effect.
    common:location ExpiryPlace?;
};

# >
# * `Paper` - Presentation is made on paper.
# * `Electronic` - Presentation is made electronically.
# * `Paperelectronic` - Presentation is made on paper and/or electronically.
# * `Biometric` - Biometric medium.
public type correspondencemediumtypevalues "Paper"|"Electronic"|"Paperelectronic"|"Biometric";

# A Classification value that specifies type of transaction for this  Letter Of Credit Transaction ||
# |
public type undertakingtransactiontypevalues "PaymentTransaction"|"IssuingTransaction"|"BookingTransaction"|"CollateralAllocationTransaction"|"TerminationTransaction"|"AmendmentTransaction";

# The Letter of Credit Definition and Pricing Task is a discrete action or task that is required in the execution of the Letter of Credit Definition and Pricing Task
public type LetterofCreditDemandPayment record {
    # The required status/situation prior to the execution of the task
    common:condition Preconditions?;
    # The timing and key actions/milestones involved in completing the transaction task
    common:schedule Schedule?;
    # The Letter of Credit Definition and Pricing Task specific Business Service
    common:businessservice BusinessService?;
    # The required status/situation prior to the execution of the task
    common:condition Postconditions?;
    # Details of the underlying transaction for which the undertaking (Letter of Credit) is issued. ObligationFulfilment|ObligationFulfilment (https://www.iso20022.org/standardsrepository/type/ObligationFulfilment)|Standard|ISO20022 BM ()
    'common:Transaction LetterOfCreditTransactionReference?;
    # Reference to Letter of Credit Definition and Pricing Task
    common:task LetterofCreditPayoutTaskReference?;
    # Brief description of the purpose of the undertaking (Letter of Credit) ||
    # |
    common:text LetterofCreditPayoutTaskType?;
    # Details related to the amount of the undertaking (Letter of Credit).  CurrencyAndAmount|CurrencyAndAmount (https://www.iso20022.org/standardsrepository/type/CurrencyAndAmount)|Standard|ISO20022  ()
    common:amount DemandAmount?;
    # Unique and unambiguous identifier assigned to the undertaking (Letter of Credit) issued by the guarantor/issuer. This reference is used throughout the life cycle of the undertaking (Letter of Credit).  GenericIdentification|GenericIdentification (https://www.iso20022.org/standardsrepository/type/GenericIdentification)|Standard|ISO20022 BM ()
    common:identifier ConfirmerReferenceNumber?;
    # Unique and unambiguous identifier assigned to the undertaking (Letter of Credit) issued by the guarantor/issuer. This reference is used throughout the life cycle of the undertaking (Letter of Credit).  GenericIdentification|GenericIdentification (https://www.iso20022.org/standardsrepository/type/GenericIdentification)|Standard|ISO20022 BM ()
    common:identifier AdvisingPartyReferenceNumber?;
    # Reference to the account that is involved in the Letter of Credit such as: 
    #
    # Liability Account: Account nominated by the obligor to record the liability amount of the undertaking.
    #
    # Charge Account: Account nominated by the obligor for the settlement of charges related to the undertaking.
    #
    #
    # Settlement Account: Account nominated by the obligor for the settlement of the amount claimed under the undertaking. Account|Account  (https://www.iso20022.org/standardsrepository/type/Account)|Standard|ISO20022 BM ()
    account SettlementAccount?;
    # Document or template enclosed in the undertaking (Letter of Credit) directly related to the undertaking (Letter of Credit) to be issued. Document _x000D_
    # |Document (https://www.iso20022.org/standardsrepository/type/Document)|Standard|ISO20022 BM ()
    common:Document DemandDocumentation?;
    # >
    # * `PayOnly` - 
    # * `PayOrExtend` - 
    undertakingdemandtypevalues DemandType?;
    # Presentation details related to the undertaking (Letter of Credit) Presentation|Presentation (https://www.iso20022.org/standardsrepository/type/Presentation)|Standard|ISO20022 BM ()
    correspondence PresentationDetails?;
    # Brief description of the purpose of the undertaking (Letter of Credit) ||
    # |
    common:text AdditionalInformation?;
    # Unique and unambiguous identifier assigned to the undertaking (Letter of Credit) issued by the guarantor/issuer. This reference is used throughout the life cycle of the undertaking (Letter of Credit).  GenericIdentification|GenericIdentification (https://www.iso20022.org/standardsrepository/type/GenericIdentification)|Standard|ISO20022 BM ()
    common:identifier DemandIdentification?;
    # Undertaking|Undertaking (https://www.iso20022.org/standardsrepository/type/Undertaking)|Standard|ISO20022 BM ()
    undertaking UndertakingReference?;
    # Details of the payment instruction related to the Letter of Credit demand payment.
    common:paymentinstruction DemandPaymentInstruction?;
    # Unique and unambiguous identifier assigned to the undertaking (Letter of Credit) issued by the guarantor/issuer. This reference is used throughout the life cycle of the undertaking (Letter of Credit).  GenericIdentification|GenericIdentification (https://www.iso20022.org/standardsrepository/type/GenericIdentification)|Standard|ISO20022 BM ()
    common:identifier SecondAdvisingPartyReferenceNumber?;
    # >
    # * `Initiate` - 
    # * `Execute` - 
    # * `Create` - 
    # * `Transfer` - 
    # * `Pay` - 
    # * `Deliver` - 
    # * `Apply` - 
    # * `Calculate` - 
    common:Actiontypevalues DemandPaymentTransactionType?;
    # Details of the payment transaction related to the Letter of Credit demand payment.
    common:paymenttransaction DemandPaymentTransaction?;
    # The requested expiry date for the Letter of Credit demand payment.
    common:datetime RequestedExpiryDate?;
    # Details related to terms and conditions for demanding payment under a demand guarantee or standby letter of credit.
    undertakingdemandpaymentarrangement DemandPaymentTermsandConditions?;
};

# >
# * `Fax` - Transmission by fax.
# * `Email` - Transmission by e-mail.
# * `Proprietary` - Transmission by proprietary method.
# * `Online` - Transmission on line, for example, in a web portal.
# * `Phone` - Transmission by telephone.
# * `Postalservice` - Transmission by postal service.
# * `File` - Transmission by file transfer.
public type correspondencecommunicationmethodtypevalues "Fax"|"Email"|"Proprietary"|"Online"|"Phone"|"Postalservice"|"File";

# >
# * `ElectronicAddress` - Address which is accessed by electronic means. ISO20022
# * `PostalAddress` - Information that locates and identifies a specific address. ISO20022
# * `PhoneNumber` - Collection of information that identifies a phone address. ISO20022
# * `Socialnetworkaddress` - A social network such as Facebook, Twitter, etc.
public type contactpointtypevalues "ElectronicAddress"|"PostalAddress"|"PhoneNumber"|"Socialnetworkaddress";

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

# Type of undertaking (Letter of Credit)
# ||
# |
public type letterofcredittypevalues "CommercialLettersOfCredit"|"StandbyLettersOfCredit"|"RevocableLettersOfCredit"|"IrrevocableLettersOfCredit"|"RevolvingLettersOfCredit";

# Execute a well-bounded financial transaction/task, typically involving largely automated/structured fulfillment processing within Letter of Credit. 
public type LetterOfCreditTransaction record {
    # A Classification value that distinguishes between business service transaction within Letter Of Credit Transaction ||
    # |
    common:featuretypevalues LetterOfCreditTransactionParameterType?;
    # A selected optional business service as subject matter of Letter Of Credit Transaction ||
    # |
    'common:Service LetterOfCreditTransactionSelectedOption?;
    # The status of Letter Of Credit Transaction ||
    # |
    common:Transactionstatus LetterOfCreditTransactionStatus?;
    # A Classification value that specifies type of transaction for this  Letter Of Credit Transaction ||
    # |
    undertakingtransactiontypevalues LetterOfCreditTransactionType?;
    # An unique reference to an item or an occurrence of Letter Of Credit Transaction ||
    # |
    undertakingtransaction LetterOfCreditTransactionReference?;
    # Undertaking|Undertaking (https://www.iso20022.org/standardsrepository/type/Undertaking)|Standard|ISO20022 BM ()
    undertaking LetterOfCreditAgreementReference?;
    # UndertakingPartyRole|UndertakingPartyRole (https://www.iso20022.org/standardsrepository/type/UndertakingPartyRole)|Standard|ISO20022 BM ()
    undertakinginvolvement LetterOfCreditAdditionalInvolvedPartyReference?;
    # ||
    # |
    undertakinginvolvementtypevalues LetterOfCreditInvolvementType?;
    # Undertaking|Undertaking (https://www.iso20022.org/standardsrepository/type/Undertaking)|Standard|ISO20022 BM ()
    undertakingarrangement LetterOfCreditArrangementReference?;
    # ||
    # |
    letterofcredit LetterofCreditFinancialInstrumentReference?;
    # Unique and unambiguous identifier assigned to the undertaking (Letter of Credit) issued by the guarantor/issuer. This reference is used throughout the life cycle of the undertaking (Letter of Credit).  GenericIdentification|GenericIdentification (https://www.iso20022.org/standardsrepository/type/GenericIdentification)|Standard|ISO20022 BM ()
    common:identifier LetterofCreditIdentification?;
    # The name of Letter of Credit Name|Name (https://www.iso20022.org/standardsrepository/type/Name)|Standard|ISO20022 ()
    common:name LetterofCreditName?;
    # Brief description of the purpose of the undertaking (Letter of Credit) ||
    # |
    common:text LetterofCreditPurpose?;
    # Type of undertaking (Letter of Credit)
    # ||
    # |
    letterofcredittypevalues LetterofCreditType?;
    # Details related to the amount of the undertaking (Letter of Credit).  CurrencyAndAmount|CurrencyAndAmount (https://www.iso20022.org/standardsrepository/type/CurrencyAndAmount)|Standard|ISO20022  ()
    common:amount LetterofCreditAmount?;
    # Details related to the expiry terms of the undertaking (Letter of Credit) Expiry|Expiry (https://www.iso20022.org/standardsrepository/type/Expiry)|Standard|ISO20022 BM ()
    undertakingexpiryarrangement LetterofCreditExpiryTermsandConditions?;
    # Rules and laws governing the undertaking (Letter of Credit) GovernanceRules|GovernanceRules (https://www.iso20022.org/standardsrepository/type/GovernanceRules)|Standard|ISO20022 BM ()
    ruleset LetterofCreditGovernanceRulesandLaw?;
    # Details of the underlying transaction for which the undertaking (Letter of Credit) is issued. ObligationFulfilment|ObligationFulfilment (https://www.iso20022.org/standardsrepository/type/ObligationFulfilment)|Standard|ISO20022 BM ()
    'common:Transaction LetterofCreditUnderlyingTransaction?;
    # Presentation details related to the undertaking (Letter of Credit) Presentation|Presentation (https://www.iso20022.org/standardsrepository/type/Presentation)|Standard|ISO20022 BM ()
    correspondence LetterofCreditPresentationDetails?;
    # Document or template enclosed in the undertaking (Letter of Credit) directly related to the undertaking (Letter of Credit) to be issued. Document _x000D_
    # |Document (https://www.iso20022.org/standardsrepository/type/Document)|Standard|ISO20022 BM ()
    common:Document LetterofCreditEnclosedFile?;
    # Reference to the account that is involved in the Letter of Credit such as: 
    #
    # Liability Account: Account nominated by the obligor to record the liability amount of the undertaking.
    #
    # Charge Account: Account nominated by the obligor for the settlement of charges related to the undertaking.
    #
    #
    # Settlement Account: Account nominated by the obligor for the settlement of the amount claimed under the undertaking. Account|Account  (https://www.iso20022.org/standardsrepository/type/Account)|Standard|ISO20022 BM ()
    account LetterofCreditInvolvedAccountReference?;
    # Party asked to advise the undertaking (Letter of Credit) to the beneficiary or to another advising party. ||
    # |
    common:involvedparty LetterofCreditObligor?;
    # Party asked to advise the undertaking (Letter of Credit) to the beneficiary or to another advising party. ||
    # |
    common:involvedparty LetterofCreditApplicant?;
    # Party asked to advise the undertaking (Letter of Credit) to the beneficiary or to another advising party. ||
    # |
    common:involvedparty LetterofCreditIssuer?;
    # Party asked to advise the undertaking (Letter of Credit) to the beneficiary or to another advising party. ||
    # |
    common:involvedparty LetterofCreditBeneficiary?;
    # Party asked to advise the undertaking (Letter of Credit) to the beneficiary or to another advising party. ||
    # |
    common:involvedparty LetterofCreditAdvisingParty?;
    # Details related to the termination terms of the undertaking (Letter of Credit) ||
    # |
    undertakingterminationarrangement LetterofCreditTerminationTermsandConditions?;
    # Details related to the issuance terms of the undertaking (Letter of Credit) ||
    # |
    undertakingissuancearrangement LetterofCreditIssuanceTermsandConditions?;
    # Details of communication channel for delivery of the undertaking (Letter of Credit) ||
    # |
    communicationchannel LetterofCreditDeliveryChannel?;
};

# >
# * `Acceptedtechnicalvalidation` - Accepted in accordance with technical validation.
# * `Accepted` - Accepted.
# * `Pending` - Pending further processing.
# * `Received` - Received.
# * `Rejected` - Rejected.
# * `Nonconfirmation` - Undertaking not confirmed.
# * `Withdrawn` - Demand has been withdrawn.
# * `Undertakingamountchange` - Change to undertaking amount.
# * `Counterundertakingamountchange` - Change to counter-undertaking amount.
public type undertakingstatustypevalues "Acceptedtechnicalvalidation"|"Accepted"|"Pending"|"Received"|"Rejected"|"Nonconfirmation"|"Withdrawn"|"Undertakingamountchange"|"Counterundertakingamountchange";

# >
# * `Fax` - Remittance advice information must be faxed.
# * `Electronicdatainterchange` - Remittance advice information must be sent through Electronic Data Interchange (EDI).
# * `Uniformresourceidentifier` - Remittance advice information needs to be sent to a Uniform Resource Identifier (URI). URI is a compact string of characters that uniquely identify an abstract or physical resource. URI's are the super-set of identifiers, such as URLs, email addresses, ftp sites, etc, and as such, provide the syntax for all of the identification schemes.
# * `Email` - Remittance advice information must be sent through e-mail.
# * `Post` - Remittance advice information must be sent through postal services.
# * `SMS` - Remittance advice information must be sent through by phone as a short message service (SMS).
public type remittancedeliverymethodtypevalues "Fax"|"Electronicdatainterchange"|"Uniformresourceidentifier"|"Email"|"Post"|"SMS";

# Undertaking|Undertaking (https://www.iso20022.org/standardsrepository/type/Undertaking)|Standard|ISO20022 BM ()
public type undertaking record {
    # Unique and unambiguous identifier assigned to the undertaking (Letter of Credit) issued by the guarantor/issuer. This reference is used throughout the life cycle of the undertaking (Letter of Credit).  GenericIdentification|GenericIdentification (https://www.iso20022.org/standardsrepository/type/GenericIdentification)|Standard|ISO20022 BM ()
    common:identifier UndertakingIdentification?;
    # The name of Letter of Credit Name|Name (https://www.iso20022.org/standardsrepository/type/Name)|Standard|ISO20022 ()
    common:name UndertakingName?;
    # >
    # * `BankGuarantee` - 
    # * `LetterOfCredit` - 
    # * `StandbyLettersOfCredit` - Undertaking is a standby letter of credit.(ISO20022)
    # * `DemandGuarantee` - Undertaking is a demand guarantee.(ISO20022)
    undertakingtypevalues UndertakingType?;
    # Status of the undertaking.
    undertakingstatus UndertakingStatus?;
    # Brief description of the purpose of the undertaking (Letter of Credit) ||
    # |
    common:text UndertakingPurpose?;
    # Document or template enclosed in the undertaking (Letter of Credit) directly related to the undertaking (Letter of Credit) to be issued. Document _x000D_
    # |Document (https://www.iso20022.org/standardsrepository/type/Document)|Standard|ISO20022 BM ()
    common:Document UndertakingDocument?;
    # Presentation details related to the undertaking (Letter of Credit) Presentation|Presentation (https://www.iso20022.org/standardsrepository/type/Presentation)|Standard|ISO20022 BM ()
    correspondence UndertakingCorrespondence?;
    # Rules and laws governing the undertaking (Letter of Credit) GovernanceRules|GovernanceRules (https://www.iso20022.org/standardsrepository/type/GovernanceRules)|Standard|ISO20022 BM ()
    ruleset UndertakingGovernanceRulesAndLaw?;
    # Details of communication channel for delivery of the undertaking (Letter of Credit) ||
    # |
    communicationchannel UndertakingDeliveryChannel?;
};
