import financial.bian.attribute.groups.common as common;

import ballerina/http;

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

# Status of the restriction.
public type accountrestrictionstatus record {
    # Status of the bank guarantee. Values are Pending for approval, Issued, Expired, Ended, Claimed, more… Status |Status  (https://www.iso20022.org/standardsrepository/type/Status)|Standard|ISO20022 BM ()
    common:status AccountRestrictionStatus?;
    # >
    # * `Active` - Status of the restriction is active.
    # * `Inactive` - Status of the restriction is inactive.
    accountrestrictionstatustypevalues AccountRestrictionStatusType?;
};

public type subject record {
    # A thing that is discussed or dealt whit in agreement/arrangement about doing or not doing (as action) something.
    string Subject?;
};

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
# * `Revolving` - 
# * `FixedAmount` - 
# * `Decreasing` - 
public type creditfacilitytypevalues "Revolving"|"FixedAmount"|"Decreasing";

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

# Reference to the credit facility under which the bank guarantee is issued; if the guarantee is issued directly against collateral, this will be recorded by Collateral Allocation Management ||
# |
public type creditfacility record {
    # >
    # * `Revolving` - 
    # * `FixedAmount` - 
    # * `Decreasing` - 
    creditfacilitytypevalues CreditFacilityType?;
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

public type servicearrangementmodality record {
    # >
    # * `AllocationModality` - 
    # * `CalculationModality` - 
    # * `DerivationModality` - 
    # * `PaymentModality` - 
    # * `ProcessingModality` - 
    # * `ApplicationModality` - 
    # * `DeliveryModality` - 
    common:Modalitytypevalues ServiceArrangementModalityType?;
};

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

# >
# * `Active` - Status of the restriction is active.
# * `Inactive` - Status of the restriction is inactive.
public type accountrestrictionstatustypevalues "Active"|"Inactive";

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
