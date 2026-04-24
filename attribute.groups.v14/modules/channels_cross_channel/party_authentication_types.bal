import financial.bian.attribute.groups.common as common;

import ballerina/http;

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
