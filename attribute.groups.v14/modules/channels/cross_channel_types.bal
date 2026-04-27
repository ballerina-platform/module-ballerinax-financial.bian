import ballerina/http;
import financial.bian.attribute.groups.common as common;

public type ChannelActivityLogOk record {|
    *http:Ok;
    # body
    ChannelActivityLog body;
|};

# Maintain a log of transactions or activity, typically a financial account/journal or a log of activity to support behavioral analysis within Channel Activity History. 
public type ChannelActivityLog record {
    # CustomerReference
    common:Involvedparty CustomerReference?;
    # Date
    common:Datetime Date?;
};

# >
# * `Success` - Action executed successfully, requested result delivered.
# * `Pending` - Action accepted but not yet fully executed; requires background processing.
# * `Requires_Authentication` - Action cannot proceed until customer re-authenticates.
# * `Requires_Approval` - Action paused awaiting manual or automated approval.
# * `Failed_Validation` - Request failed due to invalid/missing input parameters.
# * `Failed_Authentication` - Request failed due to incorrect or missing authentication.
# * `Rejected` - Action explicitly denied due to business rules or risk controls.
# * `Cancelled` - Action was initiated but then stopped before completion.
# * `Error_System` - Request could not be completed due to a technical/system error.
# * `Error_Unknown` - Request failed for an unspecified or unexpected reason.
public type Dialoguesessionrequestedactionoutcomestatustypevalues "Success"|"Pending"|"Requires_Authentication"|"Requires_Approval"|"Failed_Validation"|"Failed_Authentication"|"Rejected"|"Cancelled"|"Error_System"|"Error_Unknown";

# Operate equipment and/or a largely automated facility within Contact Handler. 
public type CustomerContactOperatingSession record {
    # Indicates whether this is an inbound or outbound contact (inbound is customer initiated, outbound is servicing resource initiated)
    common:Yesnoindicator CustomerContactInboundorOutboundIndicator?;
    # An indicator of how the session was concluded (e.g. customer completed, hang-up, further servicing required)
    common:Session eBranchOperatingSessionReference?;
    # An indicator of how the session was concluded (e.g. customer completed, hang-up, further servicing required)
    common:Session AdvancedVoiceServiceOperatingSessionReference?;
    # Reference to the contact record assembled during the customer contact
    common:CustomerContact CustomerContactRecordReference?;
    # Reference to the contact record assembled during the customer contact
    common:CustomerContact CustomerContactRecord?;
    # Reference to a Party who plays a  specific role in the context of assigning a status.
    common:Involvedparty CustomerContactRecordCustomerReference?;
    # CustomerContactRecordContactDevice
    common:Device CustomerContactRecordContactDevice?;
    # CustomerContactRecordAuthenticationStatus
    common:Status CustomerContactRecordAuthenticationStatus?;
    # CustomerContactRecordRoutingSelectionStatus
    common:Status CustomerContactRecordRoutingSelectionStatus?;
    # The requested service from a menu option can be indicated by the customer when initiating or during contact
    string CustomerContactRecordMenuSelection?;
    # The customer may provide details of servicing resource request when initiating or during contact
    common:Instruction CustomerContactRecordServicingRequest?;
    # Contact Handler can reference recent servicing activity for routing, security and servicing purposes (obtained from Service Domain Channel Activity History)
    string CustomerContactRecordServicingEventHistory?;
    # Reference to the servicing position - can be where an inbound contact is routed, or the source of an outbound contact request
    common:Position CustomerContactRecordServicingPositionReference?;
    # Reference to the servicing resource - can be to handle an inbound contact or the source of an outbound contact request
    common:ServicingResource CustomerContactRecordServicingResourceReference?;
    # Records the actions performed during contact, including all dialogue sessions
    common:CustomerEventLog CustomerContactRecordActivityRecord?;
    # Reference to any contact session dialogue records created during the contact - there can be several
    DialogueSession CustomerSessionDialogueReference?;
    # The customer session dialogue details and log
    string CustomerSessionDialogueRecord?;
    # The time the session was active
    common:Duration CustomerContactRecordDuration?;
    # Describes the interpreted result of the contact (e.g. completed, customer terminated, timed-out)
    string CustomerContactRecordResult?;
};

public type CustomerContactOperatingSessionOk record {|
    *http:Ok;
    # body
    CustomerContactOperatingSession body;
|};

# The collection of operational serivces/functions offered by the operational facility
#
# Examples: messages, capture, routines
public type Routing record {
    # The task updates the contact record authentication status field and handles the interaction with the Party Authentication service domain to get the required level of authentication for the contact
    common:Task RoutingTaskRecord?;
};

public type SessionOk record {|
    *http:Ok;
    # body
    common:Session body;
|};

# Reference to any contact session dialogue records created during the contact - there can be several
public type DialogueSession record {
    # Payload of the exchange.
    string DialogueContent?;
    # A unique identifier assigned to each Session to distinguish it from all other sessions.
    common:Identifier DialogueSessionIdentification?;
    # The purpose, need, or goal identified from the customers inputs during the session. Examples include request for information, complaint, order placement, or troubleshooting.
    string DialoguePurpose?;
    # Action executed during the session, such as processing service requests, placing orders, delivering notifications, or updating customer data.
    common:Action DialogueSessionRequestedAction?;
    # >
    # * `Success` - Action executed successfully, requested result delivered.
    # * `Pending` - Action accepted but not yet fully executed; requires background processing.
    # * `Requires_Authentication` - Action cannot proceed until customer re-authenticates.
    # * `Requires_Approval` - Action paused awaiting manual or automated approval.
    # * `Failed_Validation` - Request failed due to invalid/missing input parameters.
    # * `Failed_Authentication` - Request failed due to incorrect or missing authentication.
    # * `Rejected` - Action explicitly denied due to business rules or risk controls.
    # * `Cancelled` - Action was initiated but then stopped before completion.
    # * `Error_System` - Request could not be completed due to a technical/system error.
    # * `Error_Unknown` - Request failed for an unspecified or unexpected reason.
    Dialoguesessionrequestedactionoutcomestatustypevalues DialogueSessionOutcome?;
    # DialogueSessionUsedDevice
    common:Device DialogueSessionUsedDevice?;
    # The communication medium through which the party (e.g., customer) interacts with the enterprise during the session. Examples include voice call, chat, email, social media message, or self-service porta
    Communicationchannel DialogueSessionUsedChannel?;
    # Key dates and times for the session
    common:Datetime DialogueSessionStartDateAndTime?;
    # Key dates and times for the session
    common:Datetime DialogueSessionEndDateAndTime?;
    # The time the session was active
    common:Duration DialogueSessionDuration?;
    # DialogueSessionStatus
    common:Status DialogueSessionStatus?;
    # DialogueSessionLog
    common:Log DialogueSessionLog?;
    # The time the session was active
    common:Duration SessionDuration?;
    # Key dates and times for the session
    common:Datetime SessionDateAndTime?;
    # SessionStatus
    common:Status SessionStatus?;
    # Specifies the classification of session like Customer Contact Session, Channel Operating Session, Device Operating Session, etc.
    common:Sessiontype SessionType?;
    # SessionScheduel
    common:Schedule SessionScheduel?;
    # A unique identifier assigned to each Session to distinguish it from all other sessions.
    common:Identifier SessionIdentification?;
};

# Maintain an inventory or holding of some resource and make assignments/allocations as requested  within Contact Routing. 
# Example: Track the inventory and administer the distribution of central cash holdings throughout the branch & ATM network.
public type CustomerServicingResourceAllocation record {
    # The schedule of past and planned customer contacts
    common:Schedule ServicingResourceAllocationServiceSchedule?;
    # Reference to a servicing resource
    common:ServicingResource ServicingResourceReference?;
    # Reference to a servicing resource
    common:ServicingResource ServicingResourceRecord?;
    # Details the qualification, expertise and level of experience of a servicing specialist
    common:Profile ServicingResourceQualificationProfile?;
    # Reference to the assigned servicing position for the resource for the current session
    common:Position ServicingPositionReference?;
    # The schedule of past and planned customer contacts
    common:Schedule ServicingResourceAvailabilitySchedule?;
    # ServicingResourceStatus
    common:Status ServicingResourceStatus?;
    # Reference to a servicing session assignments made
    common:Session ServicingSessionReference?;
};

public type CustomerServicingResourceAllocationOk record {|
    *http:Ok;
    # body
    CustomerServicingResourceAllocation body;
|};

# The overall access profile, combining the restrictions and preferences from subordinate qualifiers
public type CustomerAccessAgreement record {
    # CustomerAccessAgreementIdentification
    common:Identifier CustomerAccessAgreementIdentification?;
    # Date on which the agreement was signed by all parties. (ISO20022)
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
    # AgreementVersion
    string AgreementVersion?;
    # A characteristic of agreement which refers to the LifecycleStatus of agreement (e.g., potential, offered, confirmed, completed, signed, terminated).
    common:Agreementstatus AgreementStatus?;
    # AgreementSubjectMatter
    string AgreementSubjectMatter?;
    # AgreementIdentification
    common:Identifier AgreementIdentification?;
    # AgreementDate
    common:Datetime AgreementDate?;
    # AgreementDescription
    string AgreementDescription?;
};

# >
# * `PartyWhoGivesTheAccessToParty` - 
# * `PartyWhoTakesTheAccessFromParty` - 
# * `PartyWhoAuthoriseTheAccessForParty` - 
public type Accessarrangementinvolvementtypevalues "PartyWhoGivesTheAccessToParty"|"PartyWhoTakesTheAccessFromParty"|"PartyWhoAuthoriseTheAccessForParty";

# Assembles a number of channel access preferences
public type AccessPreferenceArrangement record {
    # The type of preference (e.g. for correspondence)
    string AccessPreferenceType?;
    # Details the specific device or channel with the preference
    string PreferencedChannelDevice?;
    # The types of product and service to which this preference applies
    string ProductServiceType?;
    # Details the preference (e.g. no paper correspondence, no solicitations)
    string AccessPreferenceDescription?;
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
    # ArrangementIdentification
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

# Details allowed products/services and associated features
public type ChannelUsage record {
    # The use of a channel by a customer (in a specific customer relationship) over a specified time period.
    string ChannelUsage?;
};

# A collection of terms (within some jurisdiction) that can be selected and configured to define a contract /agreement
#
# Examples: Required disclosures
public type Restrictions record {
    # Assembles the array of channel access constraints
    ChannelAccessArrangement ChannelAccessRestrictionsRecord?;
    # Details allowed products/services and associated features
    ChannelUsage ChannelAccessProductandServiceTypeUsage?;
    # Details restrictions on allowed product/services by channel/device
    AccessRestrictionArrangement ChannelAccessProductandServiceChannelDeviceRestrictions?;
    # Details restrictions on allowed product/services by channel/device
    AccessRestrictionArrangement ChannelAccessProductandServiceLocationRestrictions?;
    # Details restrictions on allowed product/services by channel/device
    AccessRestrictionArrangement ChannelAccessProductandServiceFrequencyLimitRestrictions?;
    # Details restrictions on allowed product/services by channel/device
    AccessRestrictionArrangement ChannelAccessProductandServiceTimeDurationRestrictions?;
};

public type PreferencesOk record {|
    *http:Ok;
    # body
    Preferences body;
|};

# Maintain the terms and conditions that apply to a commercial relationship within Customer Access Entitlement.
public type CustomerAccessProfileAgreement record {
    # Reference to a Party who plays a  specific role in the context of assigning a status.
    common:Involvedparty CustomerReference?;
    # The overall access profile, combining the restrictions and preferences from subordinate qualifiers
    CustomerAccessAgreement CustomerAccessProfileRecord?;
    # Period of time during which the status is valid.
    common:Datetimeperiod CustomerAccessAgreementValidFromToDate?;
    # Reference to signatories as appropriate
    AccessArrangementInvolvement CustomerAccessAgreementSignaturesResponsibleParties?;
    # Reference to any associated documents
    common:DocumentDirectoryEntry DocumentDirectoryEntryInstanceReference?;
    # Arrangements that allow or restrict the access to a service or product, channel or device for a customer
    AccessArrangement CustomerAccessArrangement?;
};

# Assembles the array of channel access constraints
public type ChannelAccessArrangement record {
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

# >
# * `Accessrestrictionbychanneldevice` - 
# * `Accessrestrictionbylocation` - 
# * `Accessrestrictionbyfrequency/Limit` - 
# * `Accessrestrictionbytime/Duration` - 
public type Accessrestrictiontypevalues "Accessrestrictionbychanneldevice"|"Accessrestrictionbylocation"|"Accessrestrictionbyfrequency/Limit"|"Accessrestrictionbytime/Duration";

public type RestrictionsOk record {|
    *http:Ok;
    # body
    Restrictions body;
|};

# A collection of terms (within some jurisdiction) that can be selected and configured to define a contract /agreement
#
# Examples: Required disclosures
public type Preferences record {
    # Assembles a number of channel access preferences
    AccessPreferenceArrangement ChannelAccessPreferencesRecord?;
    # Assembles a number of channel access preferences
    AccessPreferenceArrangement ChannelAccessPreferenceReference?;
    # The type of preference (e.g. for correspondence)
    string ChannelAccessPreferenceType?;
    # Consolidates details of the preference
    common:Profile ChannelAccessPreferenceProfile?;
    # >
    # * `CommunicationChannel` - 
    # * `AuthenticationChannel` - 
    common:Channeltypevalues ChannelAccessChannelDeviceType?;
    # Assembles a number of channel access preferences
    AccessPreferenceArrangement ChannelAccessChannelDeviceTypePreference?;
    # >
    # * `ITService` - 
    # * `AdministrativeService` - 
    # * `SystemService` - 
    # * `FinancialService` - 
    # * `InformationService` - 
    # * `BusinessService` - 
    common:Servicetypevalues ProductandServiceType?;
};

# >
# * `ChannelAccess` - 
# * `ProductAndServiceAccess` - 
# * `DeviceAccess` - 
# * `APIAccess` - 
public type Pointofaccesstypevalues "ChannelAccess"|"ProductAndServiceAccess"|"DeviceAccess"|"APIAccess";

# Reference to signatories as appropriate
public type AccessArrangementInvolvement record {
    # AccessAgreementInvolvementIdentification
    common:Identifier AccessAgreementInvolvementIdentification?;
    # >
    # * `PartyWhoGivesTheAccessToParty` - 
    # * `PartyWhoTakesTheAccessFromParty` - 
    # * `PartyWhoAuthoriseTheAccessForParty` - 
    Accessarrangementinvolvementtypevalues InvolvementType?;
    # PartyRoleType
    string PartyRoleType?;
    # Name (label) of the location. (ISO20022)
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

public type CustomerAccessProfileAgreementOk record {|
    *http:Ok;
    # body
    CustomerAccessProfileAgreement body;
|};

# Details restrictions on allowed product/services by channel/device
public type AccessRestrictionArrangement record {
    # >
    # * `Accessrestrictionbychanneldevice` - 
    # * `Accessrestrictionbylocation` - 
    # * `Accessrestrictionbyfrequency/Limit` - 
    # * `Accessrestrictionbytime/Duration` - 
    Accessrestrictiontypevalues AccessRestrictionType?;
    # Details restrictions on allowed product/services
    string AccessRestrictionDescription?;
    # Details allowed products/services and associated features
    string AllowedProductService?;
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
    # ArrangementIdentification
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

# Arrangements that allow or restrict the access to a service or product, channel or device for a customer
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
    # *`Passiveauthentication` - Authentication based on statistical cardholder behaviour.
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
    # ArrangementIdentification
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

public type SWUpdateOk record {|
    *http:Ok;
    # body
    SWUpdate body;
|};

public type BroadcastOk record {|
    *http:Ok;
    # body
    Broadcast body;
|};

public type ContactOk record {|
    *http:Ok;
    # body
    Contact body;
|};

# The collection of operational serivces/functions offered by the operational facility
#
# Examples: messages, capture, routines
public type Broadcast record {
    # Text of the broadcast message
    string CustomerWorkbenchBroadcastRecord?;
    # Date and time at which the range starts. (ISO20022)
    common:Datetime CustomerWorkbenchBroadcastRecordDateandTime?;
};

public type ProductandServiceAccessOk record {|
    *http:Ok;
    # body
    ProductandServiceAccess body;
|};

# Operate equipment and/or a largely automated facility within Customer Workbench. 
public type CustomerWorkbenchOperatingSession record {
    # Reference to an entity that assigns and manages the identification.
    # tReference to the organization or agency that issued the identifier (e.g., DMV, Passport Office).
    common:Involvedparty CustomerReference?;
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
    common:Devicetypevalues CustomerWorkbenchDeviceType?;
    # Reference to device properties used to identify the device  (e.g. URL, ANI, serial number)
    string CustomerWorkbenchDeviceRegistration?;
    # The make of the device if known
    string CustomerWorkbenchDeviceManufacturer?;
    # The operating system type and version (use to match downloaded software)
    string CustomerWorkbenchDeviceOperatingSystemVersionNumber?;
    # The bank's access permissions (e.g. local storage access, administrator permissions, system download permission)
    common:Arrangement CustomerWorkbenchDeviceAccessPermissions?;
    # Details of the local bank applications
    string InstalledBankApplicationType?;
    # The version number(s) of device resident bank software
    string InstalledBankApplicationVersionNumber?;
    # The last update date time stamp for local bank software
    string LastUpdateDateandTime?;
};

# The collection of operational serivces/functions offered by the operational facility
#
# Examples: messages, capture, routines
public type ProductandServiceAccess record {
    # Locally maintained values used for auto-fill and local validation
    string CustomerDetailsPreferences?;
    # Locally maintained structured dialogue to access bank services as appropriate
    string ProductandServiceMenu?;
    # Locally record of product/service screen access
    common:Log ProductandServiceMenuAccessLog?;
    # Date and time at which the range starts. (ISO20022)
    common:Datetime AccessStartEndTime?;
    # Local copies of requested information, application forms etc.
    string CustomerResidentFiles?;
};

# The collection of operational serivces/functions offered by the operational facility
#
# Examples: messages, capture, routines
public type Browsing record {
    # The device URL can be used to detect known and repeat customer access
    string CustomerURL?;
    # The access URL to the public web based bank information
    string BankWebsiteURL?;
};

# The collection of operational serivces/functions offered by the operational facility
#
# Examples: messages, capture, routines
public type SWUpdate record {
    # The name of the bank application that is downloaded
    string SWUpdateApplication?;
    # The version number downloaded
    string SWUpdateVersion?;
    # The downloaded executable image
    string SWUpdateImage?;
    # Date and time at which the range starts. (ISO20022)
    common:Datetime Date?;
};

public type BrowsingOk record {|
    *http:Ok;
    # body
    Browsing body;
|};

# The collection of operational serivces/functions offered by the operational facility
#
# Examples: messages, capture, routines
public type Contact record {
    # Date and time at which the range starts. (ISO20022)
    common:Datetime ContactStartEndTime?;
    # Locally record of product/service screen access
    common:Log ContactActivityLog?;
};

public type CustomerWorkbenchOperatingSessionOk record {|
    *http:Ok;
    # body
    CustomerWorkbenchOperatingSession body;
|};

# The biometric record submitted for authentication (e.g. face scan, fingerprint, signature)
public type BiometricData record {
    # >
    # * `PhysiologicalBiometricData` - 
    # * `BehavioralBiometricData` - 
    Biometricdatatypevalues BiometricDataType?;
};

# All kind of verifications 
#
# Examples: Password verification
public type Biometric record {
    # >
    # * `PhysiologicalBiometricData` - 
    # * `BehavioralBiometricData` - 
    Biometricdatatypevalues AuthenticationBiometricType?;
    # The biometric record submitted for authentication (e.g. face scan, fingerprint, signature)
    BiometricData AuthenticationBiometricRecord?;
    # The biometric record submitted for authentication (e.g. face scan, fingerprint, signature)
    BiometricData RegisteredBiometricInstanceReference?;
    # The result of the reference data and password checks
    common:Test BiometricTestResult?;
};

public type DeviceOk record {|
    *http:Ok;
    # body
    common:Device body;
|};

public type Token record {
    # An identifier that allows to uniquely refer to an instance of a Document.
    common:Identifier TokenIdentification?;
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
    # >
    # * `AssertedAuthentication` - 
    # * `RiskBasedNoninteractiveAuthentication` - 
    # * `InteractiveAuthentication` - 
    Tokenidentificationandverificationmethodtypevalues TokenIdentificationAndVerificationMethod?;
    # Date and time at which the range starts. (ISO20022)
    common:Datetime TokenStatusDate?;
    # Reference to the device being used for authentication
    common:Device TokenDeviceReference?;
    # TokenRequestReference
    Tokenrequest TokenRequestReference?;
    # >
    # * `Software` - Software protection method.
    # * `Trustedexectutionenvironment` - Trusted execution environment method.
    # * `Secureelement` - Secure element method.
    # * `Secureenclave` - Secure enclave method.
    # * `Otherprivate` - Other privately assigned code.
    # * `Othernational` - Other code assigned by national organisation.
    # * `Trustedplatformmodule` - Trusted Platform Module (TPM).
    # * `Virtualtrustedexecutionenvironment` - Virtual trusted execution environment
    Tokenprotectionmethodtypevalues TokenProtectionMethod?;
    # >
    # * `Device` - Stored in device.
    # * `Onfile` - Storage is on file.
    # * `Cardacceptorwallet` - Storage is in wallet managed by card acceptor.
    # * `Issuerwallet` - Storage is in wallet managed by Issuer.
    # * `Thirdpartywallet` - Storage location is in wallet managed by a third party.
    # * `Otherprivate` - Code defined by private agreement.
    # * `Othernational` - Code defined by national standards organisation.
    Tokenstoragelocationtypevalues TokenStorageLocation?;
    # >
    # * `RefreshToken` - 
    # * `AccessToken` - 
    # * `SecurityToken` - 
    # * `AuthenticationToken` - 
    Tokentypevalues TokenType?;
};

public type BehaviorOk record {|
    *http:Ok;
    # body
    Behavior body;
|};

# All kind of verifications 
#
# Examples: Password verification
public type Behavior record {
    # The type of behavioral record being used for authentication
    string AuthenticationBehaviorType?;
    # The behavioral record submitted for authentication
    BehavioralData AuthenticationBehaviorRecord?;
    # The behavioral record submitted for authentication
    BehavioralData RegisteredBehaviorInstanceReference?;
    # The result of the reference data and password checks
    common:Test BehaviorTestResult?;
};

public type Tokenrequest record {
    # An identifier that allows to uniquely refer to an instance of a Document.
    common:Identifier TokenRequestIdentification?;
    # TokenRequestReason
    string TokenRequestReason?;
    # InstructionDate
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
    # InstructionResult
    string InstructionResult?;
    # InstructionDescription
    string InstructionDescription?;
    # InstructionLog
    common:Log InstructionLog?;
    # InstructionPurpose
    string InstructionPurpose?;
};

public type PasswordOk record {|
    *http:Ok;
    # body
    Password body;
|};

# >
# * `ICC` - Application in the chip card (Integrated Circuit Card), for instance an offline PIN verification.
# * `Authorisedagent` - Authorisation agent of the issuer.
# * `Merchant` - Merchant (for example signature verification by the attendant).
# * `Acquirer` - Acquirer of the transaction.
# * `Issuer` - Card issuer.
# * `Terminal` - Secure application in the terminal.
public type Authenticationentitytypevalues "ICC"|"Authorisedagent"|"Merchant"|"Acquirer"|"Issuer"|"Terminal";

public type PartyAuthenticationAssessmentOk record {|
    *http:Ok;
    # body
    PartyAuthenticationAssessment body;
|};

# Reference to the selected secret question
public type SecretQuestion record {
    # SecretQuestionTemplate
    string SecretQuestionTemplate?;
    # SecretQuestionValue
    string SecretQuestionValue?;
};

# To test or assess an entity, possibly against some formal qualification or certification requirement within Party Authentication. 
public type PartyAuthenticationAssessment record {
    # Reference to an entity that assigns and manages the identification.
    # tReference to the organization or agency that issued the identifier (e.g., DMV, Passport Office).
    common:Involvedparty CustomerReference?;
    # Reference to an entity that assigns and manages the identification.
    # tReference to the organization or agency that issued the identifier (e.g., DMV, Passport Office).
    common:Involvedparty PartyReference?;
    # Details the types of authentication assessments that are combined into the overall evaluation
    PartyAuthentication PartyAuthenticationAssessmentProfile?;
    # >
    # * `Knowledge-BasedAuthentication` - 
    # * `Token-BasedAuthentication` - 
    # * `BiometricAuthentication` - 
    # * `Certificate-BasedAuthentication` - 
    # * `AdaptiveAuthentication` - 
    Authenticationtypevalues AuthenticationType?;
    # The combination of the different assessment results used in the authentication determination
    string PartyAuthenticationConsolidationRecord?;
    # >
    # * `BasicAuthentication` - 
    # * `Two-FactorAuthentication` - 
    # * `Multi-FactorAuthentication` - 
    # * `AdvancedAuthentication` - 
    Authenticationleveltypevalues CustomerContactAuthenticationLevel?;
    # AuthorisationTokenReference
    Token AuthorisationTokenReference?;
    # RefreshTokenReference
    Token RefreshTokenReference?;
};

public type QuestionOk record {|
    *http:Ok;
    # body
    Question body;
|};

# Details the types of authentication assessments that are combined into the overall evaluation
public type PartyAuthentication record {
    # >
    # * `Denial` - The authentication didn’t succeed.
    # * `Nonparticipation` - The card does not participate in the authentication programme.
    # * `Unabletoauthenticate` - The authentication couldn’t be carried out.
    # * `Merchantnotenroled` - Merchant not enrolled in the authentication programme.
    # * `Withcryptogram` - Authentication succeeded with a cryptogram.
    # * `Withoutcryptogram` - Authentication succeeded without a cryptogram.
    Authenticationresulttypevalues PartyAuthenticationResult?;
    # >
    # * `BasicAuthentication` - 
    # * `Two-FactorAuthentication` - 
    # * `Multi-FactorAuthentication` - 
    # * `AdvancedAuthentication` - 
    Authenticationleveltypevalues PartyAuthenticationLevel?;
    # An identifier that allows to uniquely refer to an instance of a Document.
    common:Identifier PIN?;
    # Value used to authenticate the party 
    string PartyAuthenticationValue?;
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
    common:Authenticationmethodtypevalues PartyAuthenticationMethod?;
    # >
    # * `ICC` - Application in the chip card (Integrated Circuit Card), for instance an offline PIN verification.
    # * `Authorisedagent` - Authorisation agent of the issuer.
    # * `Merchant` - Merchant (for example signature verification by the attendant).
    # * `Acquirer` - Acquirer of the transaction.
    # * `Issuer` - Card issuer.
    # * `Terminal` - Secure application in the terminal.
    Authenticationentitytypevalues PartyAuthenticationEntity?;
    # >
    # * `Knowledge-BasedAuthentication` - 
    # * `Token-BasedAuthentication` - 
    # * `BiometricAuthentication` - 
    # * `Certificate-BasedAuthentication` - 
    # * `AdaptiveAuthentication` - 
    Authenticationtypevalues PartyAuthenticationType?;
    # >
    # * `BasicAuthentication` - 
    # * `Two-FactorAuthentication` - 
    # * `Multi-FactorAuthentication` - 
    # * `AdvancedAuthentication` - 
    Authenticationleveltypevalues AuthenticationLevel?;
    # >
    # * `ICC` - Application in the chip card (Integrated Circuit Card), for instance an offline PIN verification.
    # * `Authorisedagent` - Authorisation agent of the issuer.
    # * `Merchant` - Merchant (for example signature verification by the attendant).
    # * `Acquirer` - Acquirer of the transaction.
    # * `Issuer` - Card issuer.
    # * `Terminal` - Secure application in the terminal.
    Authenticationentitytypevalues AuthenticationEntity?;
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
    common:Authenticationmethodtypevalues AuthenticationMethod?;
    # Value used to authenticate the party or system
    string AuthenticationValue?;
    # >
    # * `Denial` - The authentication didn’t succeed.
    # * `Nonparticipation` - The card does not participate in the authentication programme.
    # * `Unabletoauthenticate` - The authentication couldn’t be carried out.
    # * `Merchantnotenroled` - Merchant not enrolled in the authentication programme.
    # * `Withcryptogram` - Authentication succeeded with a cryptogram.
    # * `Withoutcryptogram` - Authentication succeeded without a cryptogram.
    Authenticationresulttypevalues AuthenticationResult?;
    # >
    # * `Knowledge-BasedAuthentication` - 
    # * `Token-BasedAuthentication` - 
    # * `BiometricAuthentication` - 
    # * `Certificate-BasedAuthentication` - 
    # * `AdaptiveAuthentication` - 
    Authenticationtypevalues AuthenticationType?;
    # >
    # * `Valuation` - 
    # * `Matching` - 
    # * `Authorization` - An evaluation whether a party or system is allowed to do something.
    #
    # The consent given by a participant (or a third party acting on behalf of that participant) in order to transfer funds or securities. (ECB)
    #
    # Authorization is a mechanism by which a computer system determines whether to allow or deny specific action to a user. Authorization is often controlled by rather complex rules and algorithms, usually specified as part of an access control model. Authorization often follows (and required) authentication, however, authentication and authorization are two separate mechanisms. In rare cases, "authorization" is understood as a process of allowing access, granting permissions or giving approval. Such as "authorization" of a request to join a group. (ISO/IEC 24760-1:2019 - IT Security and Privacy)
    # * `Authentication` - An evaluation whether a party or system is what it claims to be.
    #
    # A security mechanism for verifying: 1) the identity of an individual or other entity (including verification by means of a computer or computer application); and 2) the level of authority of that person or entity (i.e. the ability of that person or entity to perform specific tasks or activities). (ECB)
    #
    # Authentication is a mechanism by which a computer system checks that the user is really the one she or he claims to be. Authentication can be implemented by a broad variety of mechanisms broadly divided into three categories: something you know, something you have, something you are. Traditionally, authentication is done by the means of by username and password. Authentication is often followed by authorization, however, authentication and authorization are two separate mechanisms. (ISO/IEC 24760-1:2019 - IT Security and Privacy)
    # * `QualityAssurance` - 
    # * `Audit` - 
    # * `ComplianceCheck` - 
    # * `FundingCheck` - 
    # * `SuitabilityCheck` - 
    # * `PerformanceCheck` - 
    # * `ImpactAssessment` - 
    # * `RiskAssessment` - 
    # * `Rating` - 
    # * `UnderwritingAssessment` - 
    # * `Qualification` - 
    # * `Verification` - A process establishing that a particular information is correct, while the meaning of "information" and "correct" varies from context to context. When dealing with identity information, this usually means formal verification of identity attributes, checking the schema, identifier uniqueness and referential integrity. However, verification may mean deeper verification, such as checking that the information is true and up-to-date.  (ISO/IEC 24760-1:2019 - IT Security and Privacy)
    #
    # * `KYCAssessment` - An assessment conducted by businesses and financial institutions to verify and confirm the identity of their customers or clients. The primary purpose of a KYC check is to prevent illegal activities, such as money laundering, terrorist financing, and fraud, by ensuring that customers are who they claim to be.
    # * `PEPAssessment` - A PEP check, or "Politically Exposed Person" check, is an assessment conducted by used by businesses, financial institutions, and government agencies to identify individuals who hold prominent public positions or have significant political influence. The purpose of a PEP check is to assess and manage the potential risks associated with doing business with these individuals, as they may be more susceptible to corruption, money laundering, or other illicit activities.
    # * `AMLAssessment` - An AML (Anti-Money Laundering) check is an assessment conducted by businesses, financial institutions, and other organizations to prevent and detect money laundering and the financing of criminal activities. The main purpose of an AML check is to ensure that financial transactions and business relationships are not being used to disguise the illegal origins of funds.
    # * `EligibilityCheck` - Determines whether a person or case meets the criteria or preconditions to qualify for a benefit, service, or action.
    # * `ExternalAgencyCheck` - 
    # * `EntitlementCheck` - Determines what benefit, amount, or service the person is actually entitled to receive once eligibility is confirmed.
    common:Assessmenttypevalues AssessmentType?;
    # AssessmentMethod
    string AssessmentMethod?;
    # AssessmentSchedule
    common:Schedule AssessmentSchedule?;
    # AssessmentDescription
    string AssessmentDescription?;
    # AssessmentModel
    common:Model AssessmentModel?;
    # Date and time at which the range starts. (ISO20022)
    common:Datetime AssessmentDateTime?;
    # AssessmentResult
    string AssessmentResult?;
    # Reference to the document and document type being presented for authentication
    common:Document AssessmentSupportingDocument?;
    # Reference to the document and document type being presented for authentication
    common:Document AssessmentRepresentingDocument?;
    # Change that the assessment reveals is needed.
    string AssessmentRequiredAdjustment?;
    # AssessmentRequirement
    common:Requirement AssessmentRequirement?;
    # AssessmentExpiryDate
    common:Date AssessmentExpiryDate?;
    # Status of the document (e.g. delivered, paid, etc.). ISO20022
    common:Status AssessmentStatus?;
    # An identifier that allows to uniquely refer to an instance of a Document.
    common:Identifier AssessmentIdentification?;
};

# The behavioral record submitted for authentication
public type BehavioralData record {
};

# >
# * `Device` - Stored in device.
# * `Onfile` - Storage is on file.
# * `Cardacceptorwallet` - Storage is in wallet managed by card acceptor.
# * `Issuerwallet` - Storage is in wallet managed by Issuer.
# * `Thirdpartywallet` - Storage location is in wallet managed by a third party.
# * `Otherprivate` - Code defined by private agreement.
# * `Othernational` - Code defined by national standards organisation.
public type Tokenstoragelocationtypevalues "Device"|"Onfile"|"Cardacceptorwallet"|"Issuerwallet"|"Thirdpartywallet"|"Otherprivate"|"Othernational";

# >
# * `Software` - Software protection method.
# * `Trustedexectutionenvironment` - Trusted execution environment method.
# * `Secureelement` - Secure element method.
# * `Secureenclave` - Secure enclave method.
# * `Otherprivate` - Other privately assigned code.
# * `Othernational` - Other code assigned by national organisation.
# * `Trustedplatformmodule` - Trusted Platform Module (TPM).
# * `Virtualtrustedexecutionenvironment` - Virtual trusted execution environment
public type Tokenprotectionmethodtypevalues "Software"|"Trustedexectutionenvironment"|"Secureelement"|"Secureenclave"|"Otherprivate"|"Othernational"|"Trustedplatformmodule"|"Virtualtrustedexecutionenvironment";

public type DocumentOk record {|
    *http:Ok;
    # body
    common:Document body;
|};

# >
# * `PhysiologicalBiometricData` - 
# * `BehavioralBiometricData` - 
public type Biometricdatatypevalues "PhysiologicalBiometricData"|"BehavioralBiometricData";

# >
# * `RefreshToken` - 
# * `AccessToken` - 
# * `SecurityToken` - 
# * `AuthenticationToken` - 
public type Tokentypevalues "RefreshToken"|"AccessToken"|"SecurityToken"|"AuthenticationToken";

# All kind of verifications 
#
# Examples: Password verification
public type Question record {
    # Reference to the selected secret question
    SecretQuestion AuthenticationSecretQuestionReference?;
    # Template includes the question text and provided customer response - given value is compared to the stored value
    string AuthenticationSecretQuestionTemplate?;
    # This is the stored value, the provided value is compared to this
    string AuthenticationSecretQuestionValue?;
    # The result of the reference data and password checks
    common:Test SecretQuestionTestResult?;
};

# Reference to an issued password
public type Password record {
    # PasswordValidityPeriod
    common:Datetimeperiod PasswordValidityPeriod?;
    # PasswordFormat
    string PasswordFormat?;
    # PasswordValue
    string PasswordValue?;
};

# >
# * `Knowledge-BasedAuthentication` - 
# * `Token-BasedAuthentication` - 
# * `BiometricAuthentication` - 
# * `Certificate-BasedAuthentication` - 
# * `AdaptiveAuthentication` - 
public type Authenticationtypevalues "Knowledge-BasedAuthentication"|"Token-BasedAuthentication"|"BiometricAuthentication"|"Certificate-BasedAuthentication"|"AdaptiveAuthentication";

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
# * `AssertedAuthentication` - 
# * `RiskBasedNoninteractiveAuthentication` - 
# * `InteractiveAuthentication` - 
public type Tokenidentificationandverificationmethodtypevalues "AssertedAuthentication"|"RiskBasedNoninteractiveAuthentication"|"InteractiveAuthentication";

# >
# * `BasicAuthentication` - 
# * `Two-FactorAuthentication` - 
# * `Multi-FactorAuthentication` - 
# * `AdvancedAuthentication` - 
public type Authenticationleveltypevalues "BasicAuthentication"|"Two-FactorAuthentication"|"Multi-FactorAuthentication"|"AdvancedAuthentication";

public type BiometricOk record {|
    *http:Ok;
    # body
    Biometric body;
|};

# >
# * `Denial` - The authentication didn’t succeed.
# * `Nonparticipation` - The card does not participate in the authentication programme.
# * `Unabletoauthenticate` - The authentication couldn’t be carried out.
# * `Merchantnotenroled` - Merchant not enrolled in the authentication programme.
# * `Withcryptogram` - Authentication succeeded with a cryptogram.
# * `Withoutcryptogram` - Authentication succeeded without a cryptogram.
public type Authenticationresulttypevalues "Denial"|"Nonparticipation"|"Unabletoauthenticate"|"Merchantnotenroled"|"Withcryptogram"|"Withoutcryptogram";

# A collection of information feeds/measures that can be used to track the status of one or more items/entitites
#
# Examples: Composite position, Customer alert
public type Rating record {
    # Defines the type of rating (e.g. credit rating)
    string CustomerRelationshipRatingType?;
    # The maintained rating value (historical values may be retained as appropriate)
    string CustomerRelationshipRating?;
    # Explanation/description for given rating value if necessary
    string CustomerRelationshipRatingNarrative?;
    # Indication when the rate value is updated and time until given value applies/is relevant as appropriate
    common:Datetime CustomerRelationshipRatingValidFromToDate?;
};

# The maintained alert value (historical values may be retained as appropriate)
public type CustomerRelationshipAlert record {
    # EventType
    string EventType?;
    # Indication when the rate value is updated and time until given value applies/is relevant as appropriate
    common:Datetime EventDateTime?;
    # EventDescription
    string EventDescription?;
    # EventSource
    string EventSource?;
    # EventLocation
    common:Location EventLocation?;
    # EventAction
    common:Action EventAction?;
    # The tracked status (e.g. under construction or repair, inhabited, vacant).
    common:Status EventStatus?;
    # EventValue
    string EventValue?;
    # Period of time during which the status is valid.
    common:Datetimeperiod EventValidityPeriod?;
    # EventIdentification
    common:Identifier EventIdentification?;
};

public type PartyStateOk record {|
    *http:Ok;
    # body
    PartyState body;
|};

# Monitor and define the status/rating of some entity within Customer Profile.
public type PartyState record {
    # Reference to a Party who plays a  specific role in the context of assigning a status.
    common:Involvedparty CustomerReference?;
};

# A collection of information feeds/measures that can be used to track the status of one or more items/entitites
#
# Examples: Composite position, Customer alert
public type Alert record {
    # Defines the type of alert (e.g. detected potential fraud)
    string CustomerRelationshipAlertType?;
    # The maintained alert value (historical values may be retained as appropriate)
    CustomerRelationshipAlert CustomerRelationshipAlert?;
    # Explanation/description for given alert value if necessary
    string CustomerRelationshipAlertNarrative?;
    # Indication when the rate value is updated and time until given value applies/is relevant as appropriate
    common:Datetime CustomerRelationshipAlertValidFromToDate?;
};

public type StatusOk record {|
    *http:Ok;
    # body
    common:Status body;
|};

# A Classification value that distinguishes between the type of transactions in Processing Order Procedure.
public type Transactiontype record {
    # TransactionTypeName
    common:Name TransactionTypeName?;
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
};

# The main worsteps to be followed in th eexecution of the procedure
# 
# Examples: Invoice generation
public type Case record {
    # Reference to a specific product instance provided by the customer
    common:productagreement ProductInstanceReference?;
    # >
    # * `Card` - 
    # * `Loan` - 
    # * `Fraud` - 
    # * `Payment` - 
    # * `Market` - 
    # * `Security` - 
    # * `Other` - 
    common:casetypevalues CustomerCaseType?;
    # The result of the invoked offer procedure (e.g. abandoned, in process/pending, offer accepted)
    common:task CaseTaskResult?;
};

public type ProcessingOrderProcedureOk record {|
    *http:Ok;
    # body
    ProcessingOrderProcedure body;
|};

# Complete work tasks following a defined procedure in support of general office activities and product and service delivery within Processing Order.
public type ProcessingOrderProcedure record {
    # A Classification value that distinguishes between Procedures according to the type of business services and/or type of concern defined within Processing Order Procedure.
    string ProcessingOrderProcedureParameterType?;
    # A selected optional business service as subject matter of Processing Order Procedure.
    common:Feature ProcessingOrderProcedureSelectedOption?;
    # Request to process something (most refers to Asset Type)
    common:Instruction ProcessingOrderProcedureRequest?;
    # Timetable to process something (most refers to the Asset Type)
    common:Schedule ProcessingOrderProcedureSchedule?;
    # ProcessingOrderProcedureStatus
    common:Status ProcessingOrderProcedureStatus?;
    # Reference to an entity that assigns and manages the identification.
    # tReference to the organization or agency that issued the identifier (e.g., DMV, Passport Office).
    common:Involvedparty ProcessingOrderProcedureAssociatedPartyReference?;
    # Reference to an entity that assigns and manages the identification.
    # tReference to the organization or agency that issued the identifier (e.g., DMV, Passport Office).
    common:Involvedparty ProcessingOrderProcedureBusinessUnitReference?;
    # Reference to an entity that assigns and manages the identification.
    # tReference to the organization or agency that issued the identifier (e.g., DMV, Passport Office).
    common:Involvedparty ProcessingOrderProcedureServiceProviderReference?;
    # Reference to the Financial Facility related to Processing Order Procedure.
    common:FinancialFacility ProcessingOrderProcedureFinancialFacilityReference?;
    # Reference to an entity that assigns and manages the identification.
    # tReference to the organization or agency that issued the identifier (e.g., DMV, Passport Office).
    common:Involvedparty ProcessingOrderProcedureEmployeeReference?;
    # Reference to an entity that assigns and manages the identification.
    # tReference to the organization or agency that issued the identifier (e.g., DMV, Passport Office).
    common:Involvedparty ProcessingOrderProcedureCustomerReference?;
    # A Classification value that distinguishes between the type of process undertaken within Processing Order Procedure.
    Proceduretype ProcessingOrderProcedureType?;
    # Timetable to process something (most refers to the Asset Type)
    common:Schedule ProcessingOrderProcedureServiceProviderSchedule?;
    # A Classification value that distinguishes between the type of services in Processing Order Procedure.
    Servicetype ProcessingOrderProcedureServiceType?;
    # A Classification value that distinguishes between the type of products/services related to Processing Order Procedure.
    common:Bankingproducttype ProcessingOrderProcedureProductandServiceType?;
    # Reference to the product or service that is related to Processing Order Procedure.
    common:Product ProcessingOrderProcedureProductandServiceInstance?;
    # A Classification value that distinguishes between the type of transactions in Processing Order Procedure.
    Transactiontype ProcessingOrderProcedureTransactionType?;
    # Reference to the transaction that is related to Processing Order Procedure.
    common:Transaction ProcessingOrderProcedureTransaction?;
    # Reference to the Financial Transaction Arrangement that is related to Processing Order Procedure.
    common:Arrangement ProcessingOrderProcedureFinancialTransactionArrangement?;
    # Reference to the Customer Agreement that is related to Processing Order Procedure.
    common:Agreement ProcessingOrderProcedureCustomerAgreementReference?;
    # ProcessingOrderProcedureReference
    Procedure ProcessingOrderProcedureReference?;
};

# A Classification value that distinguishes between the type of process undertaken within Account Reconciliation Procedure
public type Proceduretype record {
    # The name of Condition
    common:Name ProcedureTypeName?;
    # A Classification value that distinguishes between the type of process undertaken within Procedure
    Proceduretypevalues ProcedureType?;
};

# The main worsteps to be followed in th eexecution of the procedure
#
# Examples: Invoice generation
public type Query record {
    # The type of question/answer addressed in the session - e.g. branch location/hours
    string QueryType?;
    # Details the response and any customer reaction
    common:Task QueryTaskResult?;
};

# The main worsteps to be followed in th eexecution of the procedure
#
# Examples: Invoice generation
public type Intelligence record {
    # An optional interaction within the session - to capture customer insights such as detected life events and or product and service preferences or concerns
    string IntelligenceRecord?;
    # >
    # * `CustomerBehavioralInsight` - Understanding how customers interact with products, services, and brands.
    # * `CustomerDemographicInsight` - Analyzing customer characteristics such as age, gender, income, education, and location.
    # * `CustomerPsychographicInsight` - Exploring customers' lifestyles, values, interests, and attitudes.
    # * `CustomerTransactionalInsight` - Examining purchase history, order frequency, average transaction value, and payment methods
    # * `CustomerFeedbackAndSentimentInsight` - Gathering and analyzing customer feedback through surveys, reviews, social media, and customer support interactions
    # * `CustomerJourneyInsight` - Mapping the entire customer journey from awareness to purchase and beyond
    # * `CustomerRetentionAndChurnInsight` - Understanding the factors that influence customer retention and attrition
    # * `CustomerFinancialInsight` - Customer financial insights refer to the analysis and understanding of the financial aspects related to customer interactions and behaviors. 
    common:Customerinsighttypevalues CustomerInsightType?;
    # The derived value of the specific insight for the customer and past values if appropriate
    common:CustomerInsight CustomerInsight?;
    # Details the response and any customer reaction
    common:Task InsightTaskResult?;
};

# The main worsteps to be followed in th eexecution of the procedure
#
# Examples: Invoice generation
public type ProductorService record {
    # Reference to a specific product instance provided by the customer
    common:ProductAgreement ProductInstanceReference?;
    # Details the response and any customer reaction
    common:Task ProductandServiceTaskResult?;
};

# The main worsteps to be followed in th eexecution of the procedure
#
# Examples: Invoice generation
public type Order record {
    # Reference to a specific type of customer order (e.g. consolidated balance, change of address, simple product/service guidance)
    string OrderType?;
    # Details the response and any customer reaction
    common:Task OrderTaskRecord?;
    # Forms and actions agreed and registered during the order
    common:Workproduct OrderTaskWorkProducts?;
    # The result of the order task (e.g. order completed, actions pending)
    string OrderTaskWorkResult?;
};

public type SalesOk record {|
    *http:Ok;
    # body
    Sales body;
|};

public type IntelligenceOk record {|
    *http:Ok;
    # body
    Intelligence body;
|};

// public type CaseOk record {|
//     *http:Ok;
//     # body
//     Case body;
// |};

# The main worsteps to be followed in th eexecution of the procedure
#
# Examples: Invoice generation
public type Offer record {
    # The selected product/service
    string ProductandServiceType?;
    # Details the response and any customer reaction
    common:Task OfferTaskResult?;
};

public type CustomerContactSessionProcedureOk record {|
    *http:Ok;
    # body
    CustomerContactSessionProcedure body;
|};

# Complete work tasks following a defined procedure in support of general office activities and product and service delivery within Session Dialogue. 
public type CustomerContactSessionProcedure record {
    # Reference to an entity that assigns and manages the identification.
    # tReference to the organization or agency that issued the identifier (e.g., DMV, Passport Office).
    common:Involvedparty CustomerReference?;
    # Reference to the servicing agent
    common:Employee EmployeeReference?;
    # Reference to the servicing location/desk for assisted customer exchanges
    common:Position ServicingPositionReference?;
    # The type of channel device involved in the session exchange (e.g. web, phone, chat, video, VOIP, face to face at a branch - note there can be concurrent sessions within a single customer contact)
    common:Session SessionMechanism?;
    # The date when the identifier became valid.
    common:Datetime SessionStartEndTime?;
    # The type of channel device involved in the session exchange (e.g. web, phone, chat, video, VOIP, face to face at a branch - note there can be concurrent sessions within a single customer contact)
    common:Session SessionDialogueRecord?;
    # The general type of customer exchange (e.g. verified customer, anonymous contact, topic - used to structure/script dialogue)
    string SessionDialogueType?;
    # In cases a prompt or script can provided to structure the interaction for self-service and assisted interactions
    string SessionDialogueScript?;
    # Reference to a dialogue log that is built up
    common:SessionDialogueLog SessionDialogueLogReference?;
    # Reference to a dialogue log that is built up
    common:SessionDialogueLog SessionDialogueLog?;
    # The type of channel device involved in the session exchange (e.g. web, phone, chat, video, VOIP, face to face at a branch - note there can be concurrent sessions within a single customer contact)
    common:Session SessionDialogueResult?;
};

# The main worsteps to be followed in th eexecution of the procedure
#
# Examples: Invoice generation
public type Sales record {
    # A description of the type of product of interest (e.g. lending or deposit products)
    string ProductandServiceType?;
    # A description of the selected product's features and options desired
    common:Feature ProductandServiceProperties?;
    # Details the response and any customer reaction
    common:Task SalesTaskResult?;
};

public type OfferOk record {|
    *http:Ok;
    # body
    Offer body;
|};

public type QueryOk record {|
    *http:Ok;
    # body
    Query body;
|};

public type ProductorServiceOk record {|
    *http:Ok;
    # body
    ProductorService body;
|};

public type OrderOk record {|
    *http:Ok;
    # body
    Order body;
|};

# Indicates success or failure or required increased authentication level to be acquired for authorization
public type TransactionAuthorization record {
    # TransactionAuthorization
    string TransactionAuthorization?;
};

# To test or assess an entity, possibly against some formal qualification or certification requirement within Transaction Authorization. 
public type InteractiveTransactionAssessment record {
    # Reference to the customer requesting the transaction
    common:Involvedparty CustomerReference?;
    # The servicing resource for assisted customer exchanges
    common:Employee EmployeeReference?;
    # The type of product involved
    common:Product ProductReference?;
    # Reference to the specific product accessed by the proposed transaction
    common:ProductAgreement ProductInstanceReference?;
    # >
    # * `FinancialTransaction` - 
    # * `BusinessTransaction` - 
    # * `BankingTransaction` - 
    # * `AccountingTransaction` - 
    # * `BookingTransaction` - 
    # * `AllocationTransaction` - 
    # * `DeliveryTransaction` - 
    # * `ProductionTransaction` - 
    common:Transactiontypevalues ProposedTransactionType?;
    # Details key values in the transaction (e.g. amount for a payment, dates for reporting, counterparties)
    common:Amount ProposedTransactionValue?;
    # Reference to the contact record for the active contact where the transaction is sourced
    common:CustomerContact CustomerContactRecordReference?;
    # Reference to the contact record for the active contact where the transaction is sourced
    common:CustomerContact CustomerContactRecord?;
    # Reference to the customer requesting the transaction
    common:Involvedparty CustomerContactRecordCustomerReference?;
    # CustomerContactRecordContactDevice
    common:Device CustomerContactRecordContactDevice?;
    # The contact authentication level is determined by the authentication function and can be updated during the contact
    string CustomerContactRecordAuthenticationStatus\(asobtainedbySD\-ContactHandler\)?;
    # CustomerContactRecordRoutingSelectionStatus
    common:Status CustomerContactRecordRoutingSelectionStatus?;
    # The requested service from a menu option can be indicated by the customer when initiating or during contact
    string CustomerContactRecordMenuSelection?;
    # The customer may provide details of servicing resource request when initiating or during contact
    common:Instruction CustomerContactRecordServicingRequest?;
    # Contact Handler can reference recent servicing activity for routing, security and servicing purposes (obtained from Service Domain Channel Activity History)
    string CustomerContactRecordServicingEventHistory?;
    # Reference to the servicing position - can be where an inbound contact is routed, or the source of an outbound contact request
    common:Position CustomerContactRecordServicingPositionReference?;
    # Reference to the servicing resource - can be to handle an inbound contact or the source of an outbound contact request
    common:ServicingResource CustomerContactRecordServicingResourceReference?;
    # Records the actions performed during contact, including all dialogue sessions
    common:CustomerEventLog CustomerContactRecordActivityRecord?;
    # Reference to any contact session dialogue records created during the contact - there can be several
    common:Session CustomerSessionDialogueReference?;
    # Reference to any contact session dialogue records created during the contact - there can be several
    common:Session CustomerSessionDialogueRecord?;
    # The general type of customer exchange (e.g. verified customer, anonymous contact, topic - used to structure/script dialogue)
    string SessionDialogueType?;
    # Reference to any contact session dialogue records created during the contact - there can be several
    common:Session SessionDialogueScript?;
    # Reference to a dialogue log that is built up
    common:SessionDialogueLog SessionDialogueLogReference?;
    # Reference to a dialogue log that is built up
    common:SessionDialogueLog SessionDialogueLog?;
    # Reference to any contact session dialogue records created during the contact - there can be several
    common:Session SessionDialogueSessionMechanism?;
    # The date when the identifier became valid.
    common:Datetime SessionDialogueRecordSessionStartEndTime?;
    # The outcome of the dialogue (e.g. customer satisfied, on-ward routing, hang-up)
    string SessionDialogueResult?;
    # The time the session was active
    common:Duration CustomerContactRecordDuration?;
    # Description of all actions performed during the contact, including all sessions
    string CustomerContactActivityRecord?;
    # Reference to the contact record for the active contact where the transaction is sourced
    common:CustomerContact CustomerContactResult?;
    # Reference to a channel activity report extracted for the customer
    common:Report ChannelActivityHistoryReportReference?;
    # Period of time during which the status is valid.
    common:Datetimeperiod ChannelActivityHistoryReportFromto?;
    # Reference to a channel activity report extracted for the customer
    common:Report ChannelActivityHistoryReport?;
    # In case of failure, the guidance explains reason and details if additional information can be considered
    common:RuleSet TransactionAuthorizationGuidance?;
    # Indicates success or failure or required increased authentication level to be acquired for authorization
    TransactionAuthorization TransactionAuthorizationResult?;
};

public type InteractiveTransactionAssessmentOk record {|
    *http:Ok;
    # body
    InteractiveTransactionAssessment body;
|};
