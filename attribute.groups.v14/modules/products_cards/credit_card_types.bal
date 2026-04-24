import financial.bian.attribute.groups.common as common;

import ballerina/http;

public type CreditPlanOk record {|
    *http:Ok;
    CreditPlan body;
|};

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

# >
# * `StandardRatePlan` -
# * `AdjustmentRatePlan` -
# * `FinalRatePlan` -
public type rateplantypevalues "StandardRatePlan"|"AdjustmentRatePlan"|"FinalRatePlan";

# An arranged InterestRatePlan
public type rateplan record {
    # The name of the rate plan
    string RatePlanName?;
    # >
    # * `StandardRatePlan` - 
    # * `AdjustmentRatePlan` - 
    # * `FinalRatePlan` - 
    rateplantypevalues RatePlanType?;
    # The rate plan details
    string RatePlan?;
};

# A record of applied interest
public type interesttransaction record {
    # The amount of interest (to be applied or applied)
    common:amount InterestTransactionAmount?;
    # Definition of a specific product feature provided as an option ||
    # |
    common:text InterestTransactionDescription?;
    # >
    # * `InterestAllocationTransaction` - 
    # * `InterestPaymentTransaction` - 
    # * `InterestAdjustmentTransaction` - 
    interesttransactiontypevalues InterestTransactionType?;
    # The rate of interest (to be applied or applied)
    common:rate AppliedInterestRate?;
    # >
    # * `Fixed` - Indicates that the type of interest is fixed.
    # * `Floatingratenote` - Indicates that the type of interest is a floating rate note.
    # * `Dualbasis` - Indicates that the type of interest is a dual basis.
    # * `Index` - Indicates that the type of interest is index.
    # * `Discounted` - Indicates that the type of interest is discounted.
    # * `Zerocoupon` - Indicates that the type of interest is a zero coupon.
    # * `Exinterest` - Indicates deal price excluding accrued interest.
    # * `Cuminterest` - Indicates deal price including accrued interest.
    interesttypevalues AppliedInteretType?;
    # >
    # * `Debit` - Transaction is a debt entry
    # * `Credit` - Transaction is a credit entry
    common:debitcreditindicatortvalues InterestCreditDebitIndicator?;
};

# >
# * `InvoiceFactor` - 
# * `Invoicee` - Party who receives the invoice. 
#
# * `InvoiceIssuer` - Party who creates an invoice and claiming payment for goods or services rendered to the customer.
# * `Invoicer` - 
public type invoiceinvolvementtypevaleus "InvoiceFactor"|"Invoicee"|"InvoiceIssuer"|"Invoicer";

# Fulfill any scheduled and ad-hoc obligations under a service arrangement, most typically for a financial product or facility within Credit Card. 
public type CreditCardFacility record {
    # Reference to the credit/charge card account product instance CardPayment|CardPayment (https://www.iso20022.org/standardsrepository/type/CardPayment)|Standard|ISO20022 BM ()
    common:cardpaymentagreement ProductInstanceReference?;
    # Reference identifier linking the account to appropriate tax handling ||
    # |
    common:involvedparty CustomerReference?;
    # Reference identifier linking the account to appropriate tax handling ||
    # |
    common:involvedparty PartyReference?;
    # Bank branch associated with the card account for booking purposes ||
    # |
    common:branchlocation BankBranchLocationReference?;
    # Required for dual currency accounts CurrencyCode|CurrencyCode (https://www.iso20022.org/standardsrepository/type/CurrencyCode)|Standard|ISO20022 BM ()
    common:currencycode AccountCurrency?;
    # Required for dual currency accounts CurrencyCode|CurrencyCode (https://www.iso20022.org/standardsrepository/type/CurrencyCode)|Standard|ISO20022 BM ()
    common:currencycode SecondaryBillingCurrency?;
    # Reference identifier linking the account to appropriate tax handling ||
    # |
    common:involvedparty TaxReference?;
    # Description of the role, obligations or entitlements of the associated party ||
    # |
    common:partyobligationorentitlement EntitlementOptionDefinition?;
    # Description of the role, obligations or entitlements of the associated party ||
    # |
    common:partyobligationorentitlement EntitlementOptionSetting?;
    # The setting for the restriction option AccountRestriction_x000D_
    # |AccountRestriction (https://www.iso20022.org/standardsrepository/type/AccountRestriction)|Standard|ISO20022 BM  ()
    common:accountrestriction RestrictionOptionDefinition?;
    # The setting for the restriction option AccountRestriction_x000D_
    # |AccountRestriction (https://www.iso20022.org/standardsrepository/type/AccountRestriction)|Standard|ISO20022 BM  ()
    common:accountrestriction RestrictionOptionSetting?;
    # Defines allowed access paths/channels supported (e.g. POS, ATM, Local/International, Merchant Categories) ||
    # |
    common:accessarrangement AllowedAccess?;
    # Different product features (e.g. Card Scheme, Product Type [credit, charge, debit], Dual currency billing, transaction processing options, billing options, credit plan consolidation options, payment application options etc.) ||
    # |
    agreementconfigurationoption ConfigurationOptions?;
    # Definition of a specific product feature provided as an option ||
    # |
    common:text CreditCardFacilityOptionDefinition?;
    # The selected option value for this instance CardPayment|CardPayment (https://www.iso20022.org/standardsrepository/type/CardPayment)|Standard|ISO20022 BM ()
    cardpaymentarrangement CreditCardFacilityOptionSetting?;
    # Any involved parties and the nature of their associations to the card account Account Party Role_x000D_
    # |Account Party Role (https://www.iso20022.org/standardsrepository/type/AccountPartyRole)|Standard|ISO20022 BM ()
    common:accountinvolvement Associations?;
    # The type of association (e.g. guarantor, co-signer) AccountPartyRole |AccountPartyRole  (https://www.iso20022.org/standardsrepository/type/AccountPartyRole)|Standard|ISO20022 BM ()
    common:accountinvolvementtypevalues AssociationType?;
    # Description of the role, obligations or entitlements of the associated party ||
    # |
    common:partyobligationorentitlement AssociationObligationEntitlement?;
    # Reference to the associated party Party|Party (https://www.iso20022.org/standardsrepository/type/Party)|Standard|ISO20022BM ()
    common:party AssociationReference?;
    # Details of the linked account Account|Account  (https://www.iso20022.org/standardsrepository/type/Account)|Standard|ISO20022 BM ()
    common:Account LinkedAccounts?;
    # The type and purpose for the link ||
    # |
    common:account_accountrelationshiptypevalues LinkType?;
    # Details of the linked account Account|Account  (https://www.iso20022.org/standardsrepository/type/Account)|Standard|ISO20022 BM ()
    common:Account AccountDetails?;
    # Key dates associated with the account (e.g. opening date, closing date) Account/OpeningDate|Account/OpeningDate (https://www.iso20022.org/standardsrepository/type/Account)|Standard|ISO20022 BM ()
    common:Accountdatetimetypevalues DateType?;
    # Value of the date type ||
    # |
    common:datetime Date?;
    # The schedule for generating product statements to schedule ||
    # |
    common:schedule StatementsSchedule?;
    # The types of scheduled statement (e.g. balance/mini-statement/annual) ||
    # |
    common:statementtypevalues StatementType?;
    # The types of transactions and transaction details to be included ||
    # |
    common:Transactiontypevalues StatementTransactionType?;
    # The reporting period covered by the statement DateTimePeriod|DateTimePeriod (https://www.iso20022.org/standardsrepository/type/DateTimePeriod)|Standard|ISO20022 BM ()
    common:datetimeperiod StatementPeriod?;
    # The statement content ||
    # |
    report StatementReport?;
    # The associated limit settings and rules Limit|Limit (https://www.iso20022.org/standardsrepository/type/Limit)|Standard|ISO20022 (https://www.iso20022.org/)
    common:Limitarrangement LimitSettings?;
    # The current calculated limit ||
    # |
    common:value LimitValue?;
    # The type of limit  LimitTypeCode|LimitTypeCode (https://www.iso20022.org/standardsrepository/type/LimitTypeCode)|Standard|ISO20022 BM ()
    common:Limittypevalues LimitType?;
};

# >
# * `Active` - Status of the restriction is active.
# * `Inactive` - Status of the restriction is inactive.
public type accountrestrictionstatustypevalues "Active"|"Inactive";

# The product features/services available with a financical facility
public type IssuedDevice record {
    # Reference identifier linking the account to appropriate tax handling ||
    # |
    common:involvedparty CustomerReference?;
    # Tracked property of the issued device (e.g. card number)
    common:feature DevicePropertyType?;
    # Reference to the device instance in Issued Device Administration
    common:Device IssuedDeviceAdministrationReference?;
    # Value of the date type ||
    # |
    common:datetime DeviceValidfromDate?;
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
    # The processing option setting
    common:Arrangement DeviceOptionSetting?;
    # The processing and handling guidelines and rules
    common:RuleSet DeviceProcessingGuidelinesandRules?;
    # Reference identifier linking the account to appropriate tax handling ||
    # |
    common:involvedparty DevicePartyReference?;
    # Value of the date type ||
    # |
    common:datetime DeviceIssueDate?;
    # >
    # * `Issued` - 
    # * `IssuedButNotActivated` - 
    # * `Activated` - 
    # * `Suspended` - 
    # * `Retrieved` - 
    // common:issueddevicestatustypevalues DeviceStatus?;
    # External account number identifier
    common:identifier AccountExternalAccountNumber?;
    # The property setting
    string DevicePropertySetting?;
    # The identifier of the account to which the Issued Device will be attached
    common:Accountidentification AccountIdentifier?;
    # Definition of a specific product feature provided as an option ||
    # |
    common:text DeviceDeliveryMethod?;
    # The name of the branch where the customer will collect the device
    common:branch DeviceCollectLocation?;
    # Tracked property of the issued device (e.g. card number)
    common:feature DeviceOptionDefinition?;
    # Value of the date type ||
    # |
    common:datetime DeviceValidtoDate?;
    # The processing option setting
    common:Arrangement DeviceAssociatedPermissions?;
    // # `CardDesign` - 
    // common:devicecustomizationtypevalues DeviceCustomerCustomizationReference?;
};

public type taxidentification record {
    common:identifier TaxIdentification?;
    # >
    # * `TaxIdentificationNumber` - 
    # * `GlobalIntermediaryIdentificationNumber` - 
    taxidentificationtypevalues TaxIdentificationType?;
};

# >
# * `Simple` - Calculation method by which interest is calculated on the original principal only. Accumulated interest from prior periods is not used in calculations for the following periods. (ISO20022)
#
# * `Compounding` - Calculation method by which interest is calculated each period on the original principal and all interest accumulated during past periods. (ISO20022)
public type interestcalculationmethodtypevalues "Simple"|"Compounding";

# Defines the set-up for the billing processing (e.g. cycle date, type of billing, etc.)
public type billingarrangement record {
    # Billing arrangement configuration details
    string BillingArrangement?;
};

# >
# * `TaxIdentificationNumber` - 
# * `GlobalIntermediaryIdentificationNumber` - 
public type taxidentificationtypevalues "TaxIdentificationNumber"|"GlobalIntermediaryIdentificationNumber";

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

# The statement content ||
# |
public type report record {
    # >
    # * `FinancialReport` - 
    # * `BusinessReport` - 
    # * `ManagementReport` - 
    # * `Statement` - 
    # * `MaintenanceReport` - 
    # * `RegulatoryReport` - 
    # * `TaxReport` - 
    # * `AnalysisReport` - 
    reporttypevalues ReportType?;
    # The reporting period covered by the statement DateTimePeriod|DateTimePeriod (https://www.iso20022.org/standardsrepository/type/DateTimePeriod)|Standard|ISO20022 BM ()
    common:datetimeperiod ReportValidityPeriod?;
    # The version of the report
    string ReportVersion?;
    # Value of the date type ||
    # |
    common:datetime ReportDateTime?;
    # Definition of a specific product feature provided as an option ||
    # |
    common:text ReportFormat?;
};

# Status of the restriction.
public type accountrestrictionstatus record {
    # The status of the account restriction
    common:status AccountRestrictionStatus?;
    # >
    # * `Active` - Status of the restriction is active.
    # * `Inactive` - Status of the restriction is inactive.
    accountrestrictionstatustypevalues AccountRestrictionStatusType?;
};

# The product features/services available with a financical facility
public type Repayment record {
    # The billing instance
    'common:Transaction RepaymentTransaction?;
    # The types of transactions and transaction details to be included ||
    # |
    common:Transactiontypevalues RepaymentTransactionType?;
    # The billing/invoicing transaction details
    invoice BillingInstanceReference?;
    # Reference identifier linking the account to appropriate tax handling ||
    # |
    common:involvedparty RepaymentTransactionPayerReference?;
    # Reference to the account where the payment is made from
    common:ProductAgreement RepaymentTransactionPayerProductInstanceReference?;
    # Reference identifier linking the account to appropriate tax handling ||
    # |
    common:involvedparty RepaymentTransactionPayerBankReference?;
    # The amount of interest (to be applied or applied)
    common:amount RepaymentTransactionAmount?;
    # Required for dual currency accounts CurrencyCode|CurrencyCode (https://www.iso20022.org/standardsrepository/type/CurrencyCode)|Standard|ISO20022 BM ()
    common:currencycode RepaymentTransactionCurrency?;
    # Transaction authorisation deadline to complete the related payment. (ISO20022)
    common:Date RepaymentTransactionValueDate?;
};

# The selected option value for this instance CardPayment|CardPayment (https://www.iso20022.org/standardsrepository/type/CardPayment)|Standard|ISO20022 BM ()
public type cardpaymentarrangement record {
    # Unique identifier for the payment card arrangement
    common:identifier PaymentCardArrangementIdentifier?;
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
    common:Arrangementtypevalues CardPaymentArrangementType?;
};

public type IssuedDeviceOk record {|
    *http:Ok;
    IssuedDevice body;
|};

# Different product features (e.g. Card Scheme, Product Type [credit, charge, debit], Dual currency billing, transaction processing options, billing options, credit plan consolidation options, payment application options etc.) ||
# |
public type agreementconfigurationoption record {
    # Options for configuring the agreement or the arrangement of agreement.
    string AgreementConfigurationOption?;
};

# >
# * `ChannelAccess` - 
# * `ProductAndServiceAccess` - 
# * `DeviceAccess` - 
# * `APIAccess` - 
public type pointofaccesstypevalues "ChannelAccess"|"ProductAndServiceAccess"|"DeviceAccess"|"APIAccess";

# The product features/services available with a financical facility
public type CardTransaction record {
    # The card transaction record
    common:cardpaymenttransaction CardTransaction?;
    # Reference to the credit/charge card account product instance CardPayment|CardPayment (https://www.iso20022.org/standardsrepository/type/CardPayment)|Standard|ISO20022 BM ()
    common:cardpaymentagreement CardTransactionProductInstanceReference?;
    # Network used for handling the card payment transaction.
    common:cardnetwork CardTransactionNetworkReference?;
    # Refers to the card holder's issuing bank
    common:cardpaymenttransactioninvolvement CardTransactionIssuingBankReference?;
    # Refers to the card holder's issuing bank
    common:cardpaymenttransactioninvolvement CardTransactionMerchantAcquiringBankReference?;
    # The card transaction record
    common:cardpaymenttransaction CardTransactionType?;
    # Required for dual currency accounts CurrencyCode|CurrencyCode (https://www.iso20022.org/standardsrepository/type/CurrencyCode)|Standard|ISO20022 BM ()
    common:currencycode CardTransactionCurrency?;
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
    common:amounttypevalues CardTransactionAmountType?;
    # The amount of interest (to be applied or applied)
    common:amount CardTransactionAmount?;
    # Refers to the card holder's issuing bank
    common:cardpaymenttransactioninvolvement CardTransactionMerchantReference?;
    # Geographical location of the device.
    common:location CardTransactionLocationReference?;
    # Product on which a tax is applied.
    common:bankingproduct CardTransactionProductandServiceReference?;
    # Significant dates and times associated with the transaction
    string CardTransactionDateandTime?;
    # Specifies the adjustments subject to a tax.
    common:feearrangement CardTransactionFXConversionCharge?;
    # Specifies the adjustments subject to a tax.
    common:feearrangement CardTransactionInterchargeFee?;
    # Details the reference, amount, timestamp of the transaction authorization)
    common:cardpaymentauthorization CardTransactionAuthorizationRecord?;
};

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

# The product features/services available with a financical facility
public type CreditPlan record {
    # Definition of a specific product feature provided as an option ||
    # |
    common:text CreditPlanType?;
    # The processing option setting
    common:Arrangement CreditPlanTerms?;
    # Details of the linked account Account|Account  (https://www.iso20022.org/standardsrepository/type/Account)|Standard|ISO20022 BM ()
    common:Account CreditPlanAccountReference?;
};

# >
# * `InterestAllocationTransaction` - 
# * `InterestPaymentTransaction` - 
# * `InterestAdjustmentTransaction` - 
public type interesttransactiontypevalues "InterestAllocationTransaction"|"InterestPaymentTransaction"|"InterestAdjustmentTransaction";

public type CreditCardFacilityOk record {|
    *http:Ok;
    CreditCardFacility body;
|};

# Interest for which a tax is specified.
public type interestarrangement record {
    # >
    # * `Fixed` - Indicates that the type of interest is fixed.
    # * `Floatingratenote` - Indicates that the type of interest is a floating rate note.
    # * `Dualbasis` - Indicates that the type of interest is a dual basis.
    # * `Index` - Indicates that the type of interest is index.
    # * `Discounted` - Indicates that the type of interest is discounted.
    # * `Zerocoupon` - Indicates that the type of interest is a zero coupon.
    # * `Exinterest` - Indicates deal price excluding accrued interest.
    # * `Cuminterest` - Indicates deal price including accrued interest.
    interesttypevalues InterestType?;
    # The rate of interest (to be applied or applied)
    common:rate InterestRate?;
    # Definition of a specific product feature provided as an option ||
    # |
    common:text InterestDefinition?;
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
    interestratetypevalues InterestRateType?;
    # The reporting period covered by the statement DateTimePeriod|DateTimePeriod (https://www.iso20022.org/standardsrepository/type/DateTimePeriod)|Standard|ISO20022 BM ()
    common:datetimeperiod InterestPeriod?;
    # An arranged InterestRatePlan
    rateplan InterestRatePlan?;
    # The schedule for generating product statements to schedule ||
    # |
    common:schedule InterestSchedule?;
};

# >
# * `FinancialReport` - 
# * `BusinessReport` - 
# * `ManagementReport` - 
# * `Statement` - 
# * `MaintenanceReport` - 
# * `RegulatoryReport` - 
# * `TaxReport` - 
# * `AnalysisReport` - 
public type reporttypevalues "FinancialReport"|"BusinessReport"|"ManagementReport"|"Statement"|"MaintenanceReport"|"RegulatoryReport"|"TaxReport"|"AnalysisReport";

# The product features/services available with a financical facility
public type Fees record {
    # Details of the linked account Account|Account  (https://www.iso20022.org/standardsrepository/type/Account)|Standard|ISO20022 BM ()
    common:Account FeeCreditAccount?;
    # Description of the fee calculation method for this fee type
    // common:servicemodality FeeCalculationMethod?;
    # The rate of interest (to be applied or applied)
    common:rate FeeRate?;
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
    # >
    # * `Bornebydebtor` - All transaction charges are to be borne by the debtor.
    # * `Bornebycreditor` - All transaction charges are to be borne by the creditor.
    # * `Shared` - In a credit transfer context, means that transaction charges on the sender side are to be borne by the debtor, transaction charges on the receiver side are to be borne by the creditor. In a direct debit context, means that transaction charges on the sender side are to be borne by the creditor, transaction charges on the receiver side are to be borne by the debtor.
    # * `Followingservicelevel` - Charges are to be applied following the rules agreed in the service level and/or scheme.
    common:chargebearertypevalues ChargeBearerType?;
    # Reference identifier linking the account to appropriate tax handling ||
    # |
    common:involvedparty ChargeBearerReference?;
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
    // common:feeapplicationfrequencyvalues FeeApplicationFrequency?;
    # The amount of interest (to be applied or applied)
    common:amount FeeAmount?;
    # The amount of interest (to be applied or applied)
    common:amount AccrualFeeAmount?;
    # Details of the linked account Account|Account  (https://www.iso20022.org/standardsrepository/type/Account)|Standard|ISO20022 BM ()
    common:Account FeeDebitAccount?;
    # Description of the fee calculation method for this fee type
    // common:servicemodality FeePaymentMethod?;
    # >
    # * `Debit` - Transaction is a debt entry
    # * `Credit` - Transaction is a credit entry
    common:debitcreditindicatortvalues AccruedCreditDebitIndicator?;
    # >
    # * `Flat` - Charge/tax basis is a lump sum.
    # * `Perunit` - Charges/tax basis is per unit of financial instrument.
    # * `Percentage` - Charge/tax basis is a percentage.
    # * `Rateperbrackets` - Charge/tax basis is a percentage which depends on the tax brackets.
    # * `Ratewithminimumamount` - Rate with a minimum amount.
    # * `Ratewithmaximumamount` - Rate with a maximum amount.
    # * `Other` - Another type of taxation basis.
    # * `Grossamount` - Charge/Commission/tax basis is based on the gross amount.
    # * `Netamount` - Charge/commission/tax basis is based on the net amount.
    # * `Netassetvalueprice` - Charge/tax basis is the price.
    // common:feecalculationmethodtypevalues FeeCalculationMethodType?;
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
    // common:feecalculationfrequencyvalues FeeCalculationFrequency?;
    # >
    # * `Cash` - Payment is with cash.
    # * `Unit` - Units are redeemed to cover payment.
    common:Feepaymentmethodtypevalues FeePaymentMethodType?;
    # The amount of interest (to be applied or applied)
    common:amount FeeApplicationAmount?;
    # Value of the date type ||
    # |
    common:datetime FeeApplicationDate?;
    # >
    # * `Debit` - Transaction is a debt entry
    # * `Credit` - Transaction is a credit entry
    common:debitcreditindicatortvalues FeeApplicationCreditDebitIndicator?;
};

# The product features/services available with a financical facility
public type Billing record {
    # Defines the set-up for the billing processing (e.g. cycle date, type of billing, etc.)
    billingarrangement BillingParameters?;
    # The billing/invoicing transaction details
    invoice BillingTransaction?;
    # The target for the invoice, typically the card holder
    invoiceinvolvement BillingTransactionParty?;
    # The billing address for the transaction
    common:address BillingTransactionAddress?;
    # The reporting period covered by the statement DateTimePeriod|DateTimePeriod (https://www.iso20022.org/standardsrepository/type/DateTimePeriod)|Standard|ISO20022 BM ()
    common:datetimeperiod BillingTransactionPeriod?;
    # Reference to an associated statement (that is included in the generated invoice)
    common:statement BillingTransactionStatementReference?;
    # The amount of interest (to be applied or applied)
    common:amount BillingTransactionAmount?;
    # The amount of interest (to be applied or applied)
    common:amount BillingTransactionMinimumRequiredPayment?;
    # Transaction authorisation deadline to complete the related payment. (ISO20022)
    common:Date BillingTransactionPaymentDueDate?;
};

# The target for the invoice, typically the card holder
public type invoiceinvolvement record {
    # >
    # * `InvoiceFactor` - 
    # * `Invoicee` - Party who receives the invoice. 
    #
    # * `InvoiceIssuer` - Party who creates an invoice and claiming payment for goods or services rendered to the customer.
    # * `Invoicer` - 
    invoiceinvolvementtypevaleus InvoiceInvolvementType?;
    # Reference to the associated party Party|Party (https://www.iso20022.org/standardsrepository/type/Party)|Standard|ISO20022BM ()
    common:party PartyReference?;
    # The billing/invoicing transaction details
    invoice InvoiceReference?;
};

# The billing/invoicing transaction details
public type invoice record {
    # Unique identifier for the invoice
    common:identifier InvoiceIdentification?;
    # Definition of a specific product feature provided as an option ||
    # |
    common:text InvoiceType?;
    # Value of the date type ||
    # |
    common:datetime InvoiceDueDate?;
    # The reporting period covered by the statement DateTimePeriod|DateTimePeriod (https://www.iso20022.org/standardsrepository/type/DateTimePeriod)|Standard|ISO20022 BM ()
    common:datetimeperiod InvoicePeriod?;
    # The billing address for the invoice
    common:address InvoiceAdress?;
    # The document assigned to the invoice
    common:Document InvoiceAssignedDocument?;
    # The amount of interest (to be applied or applied)
    common:amount InvoiceAmount?;
    # The current status of the invoice
    common:status InvoiceStatus?;
    # The amount of interest (to be applied or applied)
    common:amount CreditDebitNoteAmount?;
    # The amount of interest (to be applied or applied)
    common:amount TotalTaxAmount?;
    # The amount of interest (to be applied or applied)
    common:amount TotalInvoiceAmount?;
    # Required for dual currency accounts CurrencyCode|CurrencyCode (https://www.iso20022.org/standardsrepository/type/CurrencyCode)|Standard|ISO20022 BM ()
    common:currencycode InvoiceCurrency?;
    # The amount of interest (to be applied or applied)
    common:amount TotalCharge?;
    # The amount of interest (to be applied or applied)
    common:amount TotalPrepaidAmount?;
    # The amount of interest (to be applied or applied)
    common:amount TotalNetAmount?;
    # >
    # * `Debit` - Transaction is a debt entry
    # * `Credit` - Transaction is a credit entry
    common:debitcreditindicatortvalues CreditDebitIndicator?;
    # The amount of interest (to be applied or applied)
    common:amount RemittedAmount?;
    # Value of the date type ||
    # |
    common:datetime InvoiceIssueDate?;
};
