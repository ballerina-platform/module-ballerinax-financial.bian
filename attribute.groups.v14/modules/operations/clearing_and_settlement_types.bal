// Copyright (c) 2026, WSO2 LLC. (https://www.wso2.com).
//
// WSO2 LLC. licenses this file to you under the Apache License,
// Version 2.0 (the "License"); you may not use this file except
// in compliance with the License.
// You may obtain a copy of the License at
//
//    http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing,
// software distributed under the License is distributed on an
// "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
// KIND, either express or implied. See the License for the
// specific language governing permissions and limitations
// under the License.

import ballerina/http;
import financial.bian.attribute.groups.common as common;

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
