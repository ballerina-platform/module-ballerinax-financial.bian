import ballerina/http;
import financial.bian.attribute.groups.common as common;

// --- correspondent_bank_directory_types.bal ---

# Reference to the recording of the correspondent bank in the Legal Entity Directory
public type LegalEntityDirectory record {
    # DirectoryVersion
    string DirectoryVersion?;
    # DirectoryConfiguration
    string DirectoryConfiguration?;
    # Period of time during which the status is valid.
    common:datetimeperiod DirectoryValidPeriod?;
    # DirectoryStatus
    common:status DirectoryStatus?;
};

public type CorrespondentBankDirectoryEntryOk record {|
    *http:Ok;
    CorrespondentBankDirectoryEntry body;
|};

# Reference to the agreement with the correspondent bank as recorded by Party Reference Data Directory
public type CorrespondentBankingAgreement record {
    # common:Date on which the agreement was signed by all parties. (ISO20022)
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
    common:datetimeperiod AgreementValidityPeriod?;
    # AgreementVersion
    string AgreementVersion?;
    # A characteristic of agreement which refers to the LifecycleStatus of agreement (e.g., potential, offered, confirmed, completed, signed, terminated).
    common:Agreementstatus AgreementStatus?;
    # AgreementSubjectMatter
    string AgreementSubjectMatter?;
    # AgreementIdentification
    common:identifier AgreementIdentification?;
    # Date and time at which the status was assigned.
    common:datetime AgreementDate?;
    # AgreementDescription
    string AgreementDescription?;
};

# Reference to the recording of the correspondent bank in the Party Reference Data Directory
public type PartyReferenceDataDirectory record {
    # DirectoryVersion
    string DirectoryVersion?;
    # DirectoryConfiguration
    string DirectoryConfiguration?;
    # Period of time during which the status is valid.
    common:datetimeperiod DirectoryValidPeriod?;
    # DirectoryStatus
    common:status DirectoryStatus?;
};

# Capture and maintain reference information about some type of entitity within Correspondent Bank Data Management.
public type CorrespondentBankDirectoryEntry record {
    # Reference to the correspondent bank (e.g. BIC Codes)
    string CorrespondentBankReference?;
    # Contact details for key parties at the bank
    common:address ContactAddresses?;
    # Reference to the account that the correspondent bank has with this bank
    common:Account VostroAccountReference?;
    # Reference to the agreement with the correspondent bank as recorded by Party Reference Data Directory
    CorrespondentBankingAgreement CorrespondentBankAgreementReference?;
    # The name of account
    #
    # The account name is the name or names of the account owner(s) represented at an account level, as displayed by the ASPSP's online channels. Note, the account name is not the product name or the nickname of the account. (Open Banking)
    common:name CorrespondentBankName?;
    # BIC
    common:identifier BIC?;
    # NationalClearingCode
    common:identifier NationalClearingCode?;
    # Contact details for key parties at the bank
    common:address CorrespondentBankContactAddress?;
    # Reference to the recording of the correspondent bank in the Party Reference Data Directory
    PartyReferenceDataDirectory PartyReferenceDataDirectoryReference?;
    # Reference to the recording of the correspondent bank in the Legal Entity Directory
    LegalEntityDirectory LegalEntityDirectoryReference?;
    # Date and time at which the status was assigned.
    common:datetime PaymentProcessingTimes?;
    # Reference to the account that the correspondent bank has with this bank
    common:Account NostroAccountReference?;
    # Reference to a Party who plays a  specific role in the context of assigning a status.
    common:involvedparty RelatedBeneficiaryBankReference?;
    # The identifier of account like Account Number.
    common:Accountidentification RelatedBeneficiaryBankBIC?;
    # The name of account
    #
    # The account name is the name or names of the account owner(s) represented at an account level, as displayed by the ASPSP's online channels. Note, the account name is not the product name or the nickname of the account. (Open Banking)
    common:name RelatedBeneficiaryBankName?;
    # RelatedBeneficiaryBankCurrencyReference
    common:currencycode RelatedBeneficiaryBankCurrencyReference?;
};
