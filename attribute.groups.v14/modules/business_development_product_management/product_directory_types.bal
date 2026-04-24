import financial.bian.attribute.groups.common as common;

import ballerina/http;

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

# Any configuration settings for the directory entry (e.g. generally available, provisional)
public type ProductDirectoryEntry record {
    # The current version of the product referenced in the directory.
    string ProductVersion?;
    # >
    # * `OpenDate` - 
    # * `RefreshDate` - 
    common:Directoryentrydatetypevalues DirectoryEntryDateType?;
    # Date of the directory entry
    common:Date DirectoryEntryDate?;
    # The tracked status (e.g. under construction or repair, inhabited, vacant).
    common:Status DirectoryEntryStatus?;
};

# "An assertion or statement with regard to a concept, a characteristic.
#
# Examples: Product pricing rules, Customer reference details
#
# A descriptor can be atomic or composed."
# Prospect Management
public type Operations record {
    # The intended schedule of operational tasks and product service availability
    common:Schedule ProductandServiceOperatingSchedule?;
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
    common:Featuretypevalues ProductandServiceConfigurationParameterType?;
    # Description describing the purpose, options and impact of the parameter
    string ProductandServiceConfigurationParameterDescription?;
    # The default parameter setting and possible value range
    common:Arrangement ProductandServiceConfigurationParameterSetting?;
};

public type ServicingOk record {|
    *http:Ok;
    # body
    Servicing body;
|};

public type ProductDirectoryEntryOk record {|
    *http:Ok;
    # body
    ProductDirectoryEntry body;
|};

public type SalesandMarketingOk record {|
    *http:Ok;
    # body
    SalesandMarketing body;
|};

# Period of time during which the status is valid.

# "An assertion or statement with regard to a concept, a characteristic.
#
# Examples: Product pricing rules, Customer reference details
#
# A descriptor can be atomic or composed."
# Prospect Management
public type SalesandMarketing record {
    # Descriptive materials/brochures organized for selective access
    string ProductandServiceSalesMaterial?;
    # Selectable product or service feature associated with servicing a product or service
    common:ProductFeature ProductandServicesFeaturesAndOptions?;
    # Allowed price/rate ranges by credit grade/customer type (can be reviewed through simulation)
    ProductFeatureModality ProductandServicePricingTable?;
    # Allowed price/rate ranges by credit grade/customer type (can be reviewed through simulation)
    ProductFeatureModality ProductandServiceFeesPenaltiesTable?;
    # Explanation/guidelines for the product or service feature (can be assisted or self serve)
    common:RuleSet ProductSuitabilityGuide?;
    # Applicable legal or regulatory requirements governing eligibility
    CustomerProductEligibilityProfileClass ProductandServiceEligibilityType?;
    # Description/explanation of eligibility requirements, can include required disclosures
    string ProductandServiceEligibilityDescription?;
    # Details the tasks required to complete a customer offer
    ProductRequirement ProductandServiceOfferProcessingRequirements?;
};

# "An assertion or statement with regard to a concept, a characteristic.
#
# Examples: Product pricing rules, Customer reference details
#
# A descriptor can be atomic or composed."
# Prospect Management
public type Servicing record {
    # Selectable product or service feature associated with servicing a product or service
    common:ProductFeature ProductandServiceFeature?;
    # Explanation/guidelines for the product or service feature (can be assisted or self serve)
    common:RuleSet ProductandServiceFeatureGuideline?;
    # Diagnosis guide for addressing reported issues with a product or service feature
    Case ProductandServiceFeatureProblemDiagnosis?;
    # Resolution guide for resolving reported issue with a product or service feature
    CaseResolution ProductandServiceFeatureProblemResolution?;
};

public type ProductionOk record {|
    *http:Ok;
    # body
    common:Production body;
|};

# >
# * `ChannelAccess` - 
# * `ProductAndServiceAccess` - 
# * `DeviceAccess` - 
# * `APIAccess` - 
public type Pointofaccesstypevalues "ChannelAccess"|"ProductAndServiceAccess"|"DeviceAccess"|"APIAccess";

# The access channels and devices that are supported by the product or service
public type ServiceAccessArrangement record {
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
    # Action of the arrangement
    common:Action ArrangementAction?;
    # Start date of the arrangement
    common:Datetime ArrangementStartDate?;
    # End date of the arrangement
    common:Datetime ArrangementEndDate?;
    # A characteristic of arrangement which refers to the LifecycleStatus of arrangement (e.g., requested, proposed, offered, accepted, cancelled, terminated, fulfilled, etc.)
    common:Arrangementstatus ArrangementStatus?;
    # Subject matter of the arrangement
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
    # Identification of the arrangement
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

public type OperationsOk record {|
    *http:Ok;
    # body
    Operations body;
|};

# >
# * `Closed` - Case has been closed. (ISO20022)
# * `Assigned` - Case has been assigned to another party. (ISO20022)
# * `UnderInvestigation` - Case is currently under investigation. (ISO20022)
# * `Unknown` - Case has never been assigned before. (ISO20022)
# * `Overdue` - Investigation is taking too long. (ISO20022)
public type Casestatustypevalues "Closed"|"Assigned"|"UnderInvestigation"|"Unknown"|"Overdue";

# >
# * `FunctionalRequirement` -
# * `TechnicalRequirement` -
# * `OperationalRequirement` -
# * `LegalRequirement` -
# * `TestingRequirement` -
# * `SalesAndMarketingRequirement` -
# * `ServicingRequirement` -
# * `ProductionRequirement` -
# * `SuitabilityRequirement` -
# * `EligibilityRequirement` -
# * `ProcessingRequirement` -
public type Requirementtypevalues "FunctionalRequirement"|"TechnicalRequirement"|"OperationalRequirement"|"LegalRequirement"|"TestingRequirement"|"SalesAndMarketingRequirement"|"ServicingRequirement"|"ProductionRequirement"|"SuitabilityRequirement"|"EligibilityRequirement"|"ProcessingRequirement";

# Allowed price/rate ranges by credit grade/customer type (can be reviewed through simulation)
public type ProductFeatureModality record {
    # >
    # * `AllocationModality` -
    # * `CalculationModality` -
    # * `DerivationModality` -
    # * `PaymentModality` -
    # * `ProcessingModality` -
    # * `ApplicationModality` -
    # * `DeliveryModality` -
    common:Modalitytypevalues ProductFeatureModalityType?;
};

# Resolution guide for resolving reported issue with a product or service feature
public type CaseResolution record {
    # The intended schedule of operational tasks and product service availability
    common:Schedule ResolutionSchedule?;
    # The type of resolution (e.g. success, deferred, rejected)
    string ResolutionType?;
    # Description of the resolution of the investigation case
    string Description?;
};

# Details the tasks required to complete a customer offer
public type ProductRequirement record {
    # >
    # * `FunctionalRequirement` -
    # * `TechnicalRequirement` -
    # * `OperationalRequirement` -
    # * `LegalRequirement` -
    # * `TestingRequirement` -
    # * `SalesAndMarketingRequirement` -
    # * `ServicingRequirement` -
    # * `ProductionRequirement` -
    # * `SuitabilityRequirement` -
    # * `EligibilityRequirement` -
    # * `ProcessingRequirement` -
    Requirementtypevalues ProductRequirementType?;
    # Specification details for the product requirement
    string ProductRequirementSpecification?;
};

# Diagnosis guide for addressing reported issues with a product or service feature
public type Case record {
    # DateTime when the case was created
    common:Datetime CaseCreationDateTime?;
    # >
    # * `Card` -
    # * `Loan` -
    # * `Fraud` -
    # * `Payment` -
    # * `Market` -
    # * `Security` -
    # * `Other` -
    common:Casetypevalues CaseType?;
    # Location associated with the case
    common:Location CaseLocation?;
    # >
    # * `Closed` - Case has been closed. (ISO20022)
    # * `Assigned` - Case has been assigned to another party. (ISO20022)
    # * `UnderInvestigation` - Case is currently under investigation. (ISO20022)
    # * `Unknown` - Case has never been assigned before. (ISO20022)
    # * `Overdue` - Investigation is taking too long. (ISO20022)
    Casestatustypevalues CaseStatus?;
    # Document associated with the case
    common:Document CaseDocument?;
    # DateTime of the case
    common:Datetime CaseDateTime?;
};

# Applicable legal or regulatory requirements governing eligibility
public type CustomerProductEligibilityProfileClass record {
};
