import financial.bian.attribute.groups.common as common;

import ballerina/http;

# Details the instruction received from Card Case to book chargeback for the transaction - could be partial chargeback - amount is detailed in instruction
public type chargebackinstruction record {
    # An instruction to book chargeback for the transaction. 
    string ChargebackInstruction?;
};

# Fulfill any scheduled and ad-hoc obligations under a service arrangement, most typically for a financial product or facility within Merchant Acquiring Facility. 
public type MerchantAcquiringFacility record {
    # Reference to the merchant facility product instance ||
    # |
    merchantagreement ProductInstanceReference?;
    # Reference to the legal entity (typically the customer) ||
    # |
    common:involvedparty CustomerReference?;
    # Reference to the legal entity (typically the customer) ||
    # |
    common:involvedparty PartyReference?;
    # Bank branch associated with the merchant account for booking purposes ||
    # |
    common:branch BankBranchLocationReference?;
    # The billing currency for the merchant acquiring facility account CurrencyCode|CurrencyCode (https://www.iso20022.org/standardsrepository/type/CurrencyCode)|Standard|ISO20022 BM ()
    common:currencycode AccountCurrency?;
    # Reference identifier linking the account to appropriate tax handling GenericIdentification|GenericIdentification (https://www.iso20022.org/standardsrepository/type/GenericIdentification)|Standard|ISO20022 BM ()
    common:identifier TaxReference?;
    # Operational terms governing the merchant facility Obligation|Obligation (https://www.iso20022.org/standardsrepository/type/Obligation)|Standard|ISO20022 BM ()
    common:Arrangement MerchantAcquiringFacilityOperationalTerms?;
    # The associated limit settings and rules Limit|Limit (https://www.iso20022.org/standardsrepository/type/Limit)|Standard|ISO20022 (https://www.iso20022.org/)
    common:Limitarrangement LimitSettings?;
    # The current calculated limit ||
    # |
    common:value LimitValue?;
    # The type of limit  LimitTypeCode|LimitTypeCode (https://www.iso20022.org/standardsrepository/type/LimitTypeCode)|Standard|ISO20022 BM ()
    common:Limittypevalues LimitType?;
};

public type MerchantAcquiringFacilityOk record {|
    *http:Ok;
    MerchantAcquiringFacility body;
|};

# The product features/services available with a financical facility
// public type Clearing record {
//     # Reference to the card transaction as recorded by issuer and/or acquirer
//     common:cardpaymenttransaction CardTransactionRecordReference?;
//     # The account number associated with the card transaction
//     common:ProductAgreement CardTransactionProductInstanceReference?;
//     # Reference to the legal entity (typically the customer) ||
//     # |
//     common:involvedparty CardHolderReference?;
//     # Reference to the issued device submitted to authorize the transaction (e.g. card number)
//     issueddevice CardTransactionIssuedDeviceReference?;
//     # Network used for handling the card payment transaction.
//     common:cardnetwork CardTransactionNetworkReference?;
//     # Reference to the legal entity (typically the customer) ||
//     # |
//     common:involvedparty CardTransactionIssuingBankReference?;
//     # Reference to the legal entity (typically the customer) ||
//     # |
//     common:involvedparty CardTransactionMerchantAcquiringBankReference?;
//     # >
//     # * `FinancialTransaction` - 
//     # * `BusinessTransaction` - 
//     # * `BankingTransaction` - 
//     # * `AccountingTransaction` - 
//     # * `BookingTransaction` - 
//     # * `AllocationTransaction` - 
//     # * `DeliveryTransaction` - 
//     # * `ProductionTransaction` - 
//     common:Transactiontypevalues CardTransactionType?;
//     # The billing currency for the merchant acquiring facility account CurrencyCode|CurrencyCode (https://www.iso20022.org/standardsrepository/type/CurrencyCode)|Standard|ISO20022 BM ()
//     common:currencycode CardTransactionCurrency?;
//     # >
//     # * `Principal` - 
//     # * `Actual` - Actual amount.
//     # * `Estimated` - Estimated amount (the final amount could be above or below).
//     # * `Maximum` - Maximum amount (the final amount must be less or equal).
//     # * `Default` - Default amount.
//     # * `Replacement` - Replacement amount.
//     # * `Incremental` - Incremental amount for reservation.
//     # * `Decremental` - Decremental amount for reservation.
//     # * `Reserved` - Reserved or updated reserved amount for reservation.
//     # * `Available` - 
//     # * `Used` - 
//     # * `DuePayable` - 
//     # * `Minimum` - 
//     # * `Open` - The amount is open.(ISO20022)
//     # * `Unknown` - The amount is unkown.(ISO20022)
//     # * `Fixed` - The amount represents a fixed value.(ISO20022)
//     common:amounttypevalues CardTransactionAmountType?;
//     # The monetary amount of the card transaction
//     common:amount CardTransactionAmount?;
//     # Reference to the legal entity (typically the customer) ||
//     # |
//     common:involvedparty CardTransactionMerchantReference?;
//     # Place where the merchant actually performed the transaction. (ISO20022)
//     common:location CardTransactionLocationReference?;
//     # The product or service to which the Issued Device will be attached
//     common:bankingproduct CardTransactionProductandServiceReference?;
//     # Date and time at which the status was assigned.
//     common:datetime CardTransactionDateandTime?;
//     # The applied currency conversion charge
//     common:feearrangement CardTransactionFXConversionCharge?;
//     # The applied currency conversion charge
//     common:feearrangement CardTransactionInterchargeFee?;
//     # Details the reference, amount, timestamp of the transaction authorization
//     common:authorization CardTransactionAuthorizationRecord?;
// };

# The product features/services available with a financical facility
public type Settlement record {
    # Reference to the legal entity (typically the customer) ||
    # |
    common:involvedparty ParticipantMerchantAcquirerBankReference?;
    # Reference to the legal entity (typically the customer) ||
    # |
    common:involvedparty ParticipantIssuerBankReference?;
    # Specifies the reasons for the status.
    common:text CardFinancialSettlementServicePaymentAdviceRecord?;
    # Reference to the card transaction as recorded by issuer and/or acquirer
    common:cardpaymenttransaction ParticipantPaymentTransaction?;
    # The settlement account statement for the processing window - used to confirm payments
    accountstatement ParticipantAcquirerBankSettlementAccountStatement?;
};

# The settlement account statement for the processing window - used to confirm payments
public type accountstatement record {
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
    common:Balancetypevalues AccountStatementBalanceType?;
    # The state of the obligations managed on the account, the result of all entries on the account.
    #
    # Numerical representation of the net increases and decreases in an account at a specific point in time. (ISO20022)
    #
    # Banking: Amount available in an account for withdrawal or use.
    # Read more: http://www.businessdictionary.com/definition/balance.html
    #
    # Bookkeeping: Difference between the debit and credit sides of an account.
    # Read more: http://www.businessdictionary.com/definition/balance.html
    common:Accountbalance AccountStatementBalance?;
    # Reference identifier linking the account to appropriate tax handling GenericIdentification|GenericIdentification (https://www.iso20022.org/standardsrepository/type/GenericIdentification)|Standard|ISO20022 BM ()
    common:identifier AccountStatementIdentification?;
    # >
    # * `AccountClosure` - 
    # * `AccountOpening` - 
    # * `Annual` - 
    # * `Interim` - 
    # * `RegularPeriodic` - 
    accountstatementtypevalues AccountStatementType?;
    # Specifies the reasons for the status.
    common:text AccountStatementContentType?;
    # Period of time during which the status is valid.
    common:datetimeperiod AccountStatementPeriod?;
    # Specifies the reasons for the status.
    common:text AccountStatementContent?;
    # Date and time at which the status was assigned.
    common:datetime AccountStatementCreationDate?;
};

# Reference to the issued device submitted to authorize the transaction (e.g. card number)
// public type issueddevice record {
//     # >
//     # * `Issued` - 
//     # * `IssuedButNotActivated` - 
//     # * `Activated` - 
//     # * `Suspended` - 
//     # * `Retrieved` - 
//     common:Issueddevicestatustypevalues IssuedDeviceStatus?;
//     # Reference to the party to whom the device is issued
//     common:party IssuedDevicePartyReference?;
//     # Specifies the reasons for the status.
//     common:text IssuedDeviceConfiguration?;
//     # Reference to the device that is issued
//     common:Device IssuedDeviceReference?;
//     # Period of time during which the status is valid.
//     common:datetimeperiod IssuedDeviceValidityPeriod?;
//     # Specifies the reasons for the status.
//     common:text IssuedDeviceDeliveryMethod?;
//     # Date and time at which the status was assigned.
//     common:datetime DeviceIssueDate?;
//     # Bank branch associated with the merchant account for booking purposes ||
//     # |
//     common:branch IssuedDeviceCollectLocation?;
//     # The product or service to which the Issued Device will be attached
//     common:bankingproduct IssuedDeviceProductReference?;
//     # >
//     # * `CardDesign` - 
//     common:devicecustomizationtypevalues IssedDeviceCustomizationType?;
// };

# >
# * `AccountClosure` - 
# * `AccountOpening` - 
# * `Annual` - 
# * `Interim` - 
# * `RegularPeriodic` - 
public type accountstatementtypevalues "AccountClosure"|"AccountOpening"|"Annual"|"Interim"|"RegularPeriodic";

# Reference to the merchant facility product instance ||
# |
public type merchantagreement record {
    # An agreement between Acquiring Bank and Merchant for handling the Merchant Account and the specific terms and conditions for the merchant. 
    #
    # A written contract between a merchant and an acquirer to honor or accept credit cards, or to transmit or process for payment credit card payments, for the purchase of goods or services or a charitable contribution. (Law and Legal Definition)
    string MerchantAgreement?;
};

// # The product features/services available with a financical facility
// public type Chargeback record {
//     # Reference to the card transaction as recorded by issuer and/or acquirer
//     common:cardpaymenttransaction CardTransactionRecordReference?;
//     # Details the instruction received from Card Case to book chargeback for the transaction - could be partial chargeback - amount is detailed in instruction
//     chargebackinstruction ChargebackInstruction?;
//     # The account number associated with the card transaction
//     common:ProductAgreement CardTransactionProductInstanceReference?;
//     # The identity of the account holder submitting the transaction
//     cardholder CardHolderReference?;
//     # Reference to the issued device submitted to authorize the transaction (e.g. card number)
//     issueddevice CardTransactionIssuedDeviceReference?;
//     # Network used for handling the card payment transaction.
//     common:cardnetwork CardTransactionNetworkReference?;
//     # Reference to the legal entity (typically the customer) ||
//     # |
//     common:involvedparty CardTransactionIssuingBankReference?;
//     # Reference to the legal entity (typically the customer) ||
//     # |
//     common:involvedparty CardTransactionMerchantAcquiringBankReference?;
//     # >
//     # * `FinancialTransaction` - 
//     # * `BusinessTransaction` - 
//     # * `BankingTransaction` - 
//     # * `AccountingTransaction` - 
//     # * `BookingTransaction` - 
//     # * `AllocationTransaction` - 
//     # * `DeliveryTransaction` - 
//     # * `ProductionTransaction` - 
//     common:Transactiontypevalues CardTransactionType?;
//     # The billing currency for the merchant acquiring facility account CurrencyCode|CurrencyCode (https://www.iso20022.org/standardsrepository/type/CurrencyCode)|Standard|ISO20022 BM ()
//     common:currencycode CardTransactionCurrency?;
//     # >
//     # * `Principal` - 
//     # * `Actual` - Actual amount.
//     # * `Estimated` - Estimated amount (the final amount could be above or below).
//     # * `Maximum` - Maximum amount (the final amount must be less or equal).
//     # * `Default` - Default amount.
//     # * `Replacement` - Replacement amount.
//     # * `Incremental` - Incremental amount for reservation.
//     # * `Decremental` - Decremental amount for reservation.
//     # * `Reserved` - Reserved or updated reserved amount for reservation.
//     # * `Available` - 
//     # * `Used` - 
//     # * `DuePayable` - 
//     # * `Minimum` - 
//     # * `Open` - The amount is open.(ISO20022)
//     # * `Unknown` - The amount is unkown.(ISO20022)
//     # * `Fixed` - The amount represents a fixed value.(ISO20022)
//     common:amounttypevalues CardTransactionAmountType?;
//     # The monetary amount of the card transaction
//     common:amount CardTransactionAmount?;
//     # Reference to the legal entity (typically the customer) ||
//     # |
//     common:involvedparty CardTransactionMerchantReference?;
//     # Place where the merchant actually performed the transaction. (ISO20022)
//     common:location CardTransactionLocationReference?;
//     # The product or service to which the Issued Device will be attached
//     common:bankingproduct CardTransactionProductandServiceReference?;
//     # Date and time at which the status was assigned.
//     common:datetime CardTransactionDateandTime?;
//     # The applied currency conversion charge
//     common:feearrangement CardTransactionFXConversionCharge?;
//     # The applied currency conversion charge
//     common:feearrangement CardTransactionInterchargeFee?;
//     # Details the reference, amount, timestamp of the transaction authorization
//     common:authorization CardTransactionAuthorizationRecord?;
// };

# The product features/services available with a financical facility
public type MerchantAccount record {
    # Reference to the posting transaction against the merchant account
    'common:Transaction MerchantAccountPostingTransaction?;
    # Specifies the reasons for the status.
    common:text MerchantAcquiringAccountPostingPurpose?;
    # The monetary amount being posted to the merchant acquiring account
    common:amount MerchantAcquiringAccountPostingAmount?;
    # The value date for the posting
    common:Date MerchantAcquiringAccountPostingValueDate?;
    # Specifies the reasons for the status.
    common:text MerchantAcquiringAccountPostingResult?;
};

# The identity of the account holder submitting the transaction
public type cardholder record {
    # Identifier of the card holder. 
    string CardHolderIdentifier?;
};
