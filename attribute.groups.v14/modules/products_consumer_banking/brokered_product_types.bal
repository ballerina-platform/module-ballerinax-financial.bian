import financial.bian.attribute.groups.common as common;

import ballerina/http;

# >
# * `RefreshToken` - 
# * `AccessToken` - 
# * `SecurityToken` - 
# * `AuthenticationToken` - 
public type tokentypevalues "RefreshToken"|"AccessToken"|"SecurityToken"|"AuthenticationToken";

# >
# * `Software` - Software protection method.
# * `Trustedexectutionenvironment` - Trusted execution environment method.
# * `Secureelement` - Secure element method.
# * `Secureenclave` - Secure enclave method.
# * `Otherprivate` - Other privately assigned code.
# * `Othernational` - Other code assigned by national organisation.
# * `Trustedplatformmodule` - Trusted Platform Module (TPM).
# * `Virtualtrustedexecutionenvironment` - Virtual trusted execution environment
public type tokenprotectionmethodtypevalues "Software"|"Trustedexectutionenvironment"|"Secureelement"|"Secureenclave"|"Otherprivate"|"Othernational"|"Trustedplatformmodule"|"Virtualtrustedexecutionenvironment";

# >
# * `AssertedAuthentication` - 
# * `RiskBasedNoninteractiveAuthentication` - 
# * `InteractiveAuthentication` - 
public type tokenidentificationandverificationmethodtypevalues "AssertedAuthentication"|"RiskBasedNoninteractiveAuthentication"|"InteractiveAuthentication";

# Represents service access details for a brokered product
public type ServiceAccess record {
    # An unique reference to an item or an occurrence of Service Access
    # GenericIdentification|GenericIdentification (https://www.iso20022.org/standardsrepository/type/GenericIdentification)|Standard|ISO20022 BM ()
    common:identifier ServiceAccessIdentifier?;
    # The type of service access being provided
    common:text ServiceAccessType?;
};

# Oversee the working of a business unit, assign work, manage against a plan and troubleshoot issues within Brokered Product.
public type BrokeredProductFacility record {
    # Reference to the Customer's account ||
    # |
    accountaccessconsent ConsentReference?;
    # ||
    # |
    token ActiveAccessTokenReference?;
    # An unique reference to an item or an occurrence of <CR>
    # GenericIdentification|GenericIdentification (https://www.iso20022.org/standardsrepository/type/GenericIdentification)|Standard|ISO20022 BM ()
    common:identifier BrokeredProductFacilityReference?;
    # ||
    # |
    common:involvedparty ServiceProviderReference?;
    # ||
    # |
    common:involvedparty ServiceUserReference?;
    # ||
    # |
    common:involvedparty ThirdPartyProviderReference?;
};

# Represents a request for a token
public type tokenrequest record {
    # An unique reference to identify the token request
    # GenericIdentification|GenericIdentification (https://www.iso20022.org/standardsrepository/type/GenericIdentification)|Standard|ISO20022 BM ()
    common:identifier TokenRequestIdentification?;
    # The reason for the token request
    common:text TokenRequestReason?;
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
public type tokenstatustypevalues "Active"|"Expired"|"Cancelled"|"Generated"|"Stored"|"Mapped"|"Routed"|"Suspension"|"Updated";

# Represents a security token used for authentication and authorization
# ||
# |
public type token record {
    # An unique reference to an item or an occurrence of <CR>
    # GenericIdentification|GenericIdentification (https://www.iso20022.org/standardsrepository/type/GenericIdentification)|Standard|ISO20022 BM ()
    common:identifier TokenIdentification?;
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
    tokenstatustypevalues TokenStatus?;
    # >
    # * `AssertedAuthentication` - 
    # * `RiskBasedNoninteractiveAuthentication` - 
    # * `InteractiveAuthentication` - 
    tokenidentificationandverificationmethodtypevalues TokenIdentificationAndVerificationMethod?;
    # The date when the token status was last updated
    common:datetime TokenStatusDate?;
    # Reference to the device associated with this token
    common:Device TokenDeviceReference?;
    # Reference to the token request that initiated this token
    tokenrequest TokenRequestReference?;
    # >
    # * `Software` - Software protection method.
    # * `Trustedexectutionenvironment` - Trusted execution environment method.
    # * `Secureelement` - Secure element method.
    # * `Secureenclave` - Secure enclave method.
    # * `Otherprivate` - Other privately assigned code.
    # * `Othernational` - Other code assigned by national organisation.
    # * `Trustedplatformmodule` - Trusted Platform Module (TPM).
    # * `Virtualtrustedexecutionenvironment` - Virtual trusted execution environment
    tokenprotectionmethodtypevalues TokenProtectionMethod?;
    # >
    # * `Device` - Stored in device.
    # * `Onfile` - Storage is on file.
    # * `Cardacceptorwallet` - Storage is in wallet managed by card acceptor.
    # * `Issuerwallet` - Storage is in wallet managed by Issuer.
    # * `Thirdpartywallet` - Storage location is in wallet managed by a third party.
    # * `Otherprivate` - Code defined by private agreement.
    # * `Othernational` - Code defined by national standards organisation.
    tokenstoragelocationtypevalues TokenStorageLocation?;
    # >
    # * `RefreshToken` - 
    # * `AccessToken` - 
    # * `SecurityToken` - 
    # * `AuthenticationToken` - 
    tokentypevalues TokenType?;
};

# >
# * `Device` - Stored in device.
# * `Onfile` - Storage is on file.
# * `Cardacceptorwallet` - Storage is in wallet managed by card acceptor.
# * `Issuerwallet` - Storage is in wallet managed by Issuer.
# * `Thirdpartywallet` - Storage location is in wallet managed by a third party.
# * `Otherprivate` - Code defined by private agreement.
# * `Othernational` - Code defined by national standards organisation.
public type tokenstoragelocationtypevalues "Device"|"Onfile"|"Cardacceptorwallet"|"Issuerwallet"|"Thirdpartywallet"|"Otherprivate"|"Othernational";

# Reference to the Customer's account access consent
# Represents the consent provided by the customer for account access
public type accountaccessconsent record {
    # An unique reference to an item or an occurrence of <CR>
    # GenericIdentification|GenericIdentification (https://www.iso20022.org/standardsrepository/type/GenericIdentification)|Standard|ISO20022 BM ()
    common:identifier Identification?;
    # >
    # * `Authorised` - 
    # * `AwaitingAuthorization` - 
    # * `Rejected` - 
    # * `Revoked` - 
    consentstatustypevalues Status?;
    # The date and time when the consent expires
    common:datetime ExpirationDateTime?;
    # The date and time when the consent was created
    common:datetime CreationDateTime?;
    # Reference to the account covered by this consent
    common:ProductAgreement ConsentAccount?;
};

# >
# * `Authorised` - 
# * `AwaitingAuthorization` - 
# * `Rejected` - 
# * `Revoked` - 
public type consentstatustypevalues "Authorised"|"AwaitingAuthorization"|"Rejected"|"Revoked";

public type BrokeredProductFacilityOk record {|
    *http:Ok;
    BrokeredProductFacility body;
|};
