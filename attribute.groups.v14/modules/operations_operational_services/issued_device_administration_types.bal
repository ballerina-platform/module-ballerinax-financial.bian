import financial.bian.attribute.groups.common as common;

import ballerina/http;

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
# * `ChannelAccess` - 
# * `ProductAndServiceAccess` - 
# * `DeviceAccess` - 
# * `APIAccess` - 
public type Pointofaccesstypevalues "ChannelAccess"|"ProductAndServiceAccess"|"DeviceAccess"|"APIAccess";

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
