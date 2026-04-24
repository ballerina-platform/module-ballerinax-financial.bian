import financial.bian.attribute.groups.common as common;

import ballerina/http;

# The Document Update History Properties properties that represent a discrete aspect of the Document Update History Properties
public type DocumentVersionProperties record {
    # The required status/situation before the property is valid/meaningful
    common:Condition Preconditions?;
    # The schedule and timing for which the property value is valid
    common:Schedule Schedule?;
    # The version reference for the property value
    string VersionNumber?;
    # The Document Update History Properties specific  Business Service
    common:BusinessService BusinessService?;
    # Reference to Document Update History Properties
    common:documentdirectoryentry DocumentDirectoryEntryReference?;
    # Reference to Document Update History Properties
    DocumentService DocumentVersionPropertiesReference?;
    # The type of Document Version Properties
    string DocumentVersionPropertiesType?;
};

# Reference to Document Update History Properties
public type DocumentService record {
    # >
    # * `DocumentProvisioning` - 
    # * `DocumentVerification` - 
    # * `DocumentAmendment` - 
    # * `DocumentArchiving` - 
    # * `DocumentImagingAndScanning` - 
    common:Documentservicetypevalues DocumentServiceType?;
    # The schedule and timing for which the property value is valid
    common:Schedule DocumentServiceSchedule?;
    # An external agency used to perform a document service
    common:Party DocumentServiceProvider?;
    # The name of Condition
    common:Name DocumentServiceName?;
    # DocumentServiceDescription
    string DocumentServiceDescription?;
    # DocumentServiceOutcome
    string DocumentServiceOutcome?;
    # DocumentServiceRequest
    common:Instruction DocumentServiceRequest?;
    # DocumentServiceFunction
    common:Function DocumentServiceFunction?;
};

public type DocumentVerificationProperties record {
    # The required status/situation before the property is valid/meaningful
    common:Condition Preconditions?;
    # The schedule and timing for which the property value is valid
    common:Schedule Schedule?;
    # The version reference for the property value
    string VersionNumber?;
    # The Document Update History Properties specific  Business Service
    common:BusinessService BusinessService?;
    # Reference to Document Update History Properties
    common:documentdirectoryentry DocumentDirectoryEntryReference?;
    # Reference to Document Update History Properties
    DocumentService DocumentVerificationPropertiesReference?;
    # The type of Document Verification Properties
    string DocumentVerificationPropertiesType?;
};

public type DocumentArchivingPropertiesOk record {|
    *http:Ok;
    DocumentArchivingProperties body;
|};

# >
# * `DueDate` - 
# * `ExecutionDate` - 
# * `FulfillmentDate` - 

public type DocumentUpdateHistoryProperties record {
    # The required status/situation before the property is valid/meaningful
    common:Condition Preconditions?;
    # The schedule and timing for which the property value is valid
    common:Schedule Schedule?;
    # The version reference for the property value
    string VersionNumber?;
    # The Document Update History Properties specific  Business Service
    common:BusinessService BusinessService?;
    # Reference to Document Update History Properties
    common:documentdirectoryentry DocumentDirectoryEntryReference?;
    # Reference to Document Update History Properties
    DocumentService DocumentUpdateHistoryPropertiesReference?;
    # The type of Document Update History Properties
    string DocumentUpdateHistoryPropertiesType?;
};

# >
# * `Taxidentificationnumber` - Number assigned by a tax authority to an entity.
# * `Nationalregistrationnumber` - Number assigned by a national registration authority to an entity. In Singapore this is known as the NRIC. (ISO20022)
# * `Registrationauthorityidentification` - An identifier for the Legal Entity in a business registry in the jurisdiction of legal registration, or in the appropriate registration authority. (ISO20022)
# * `LEI(LegalEntityIdentifier)` - 
# * `Alienregistrationnumber` - Number assigned by a government agency to identify foreign nationals.
# * `Passportnumber` - Number assigned by a passport authority.
# * `Taxexemptidentificationnumber` - Number assigned to a tax exempt entity.
# * `Corporateidentification` - Number assigned to a corporate entity.
# * `Driverlicensenumber` - Number assigned to a driver's license.
# * `Foreigninvestmentidentitynumber` - Number assigned to a foreign investor (other than the alien number).
# * `Socialsecuritynumber` - Number assigned by a social security agency.
# * `Identitycardnumber` - Number assigned by a national authority to an identity card.
# * `Concat` - Number assigned by an issuer to identify a customer via the concatenation of the birthdate and characters of the first name and surname.
# * `Nationalregistrationidentificationnumber` - National registration identification number. In Singapore this is known as the NRIC.

public type DocumentReferencePropertiesOk record {|
    *http:Ok;
    # body
    DocumentReferenceProperties body;
|};

# The Document Update History Properties properties that represent a discrete aspect of the Document Update History Properties
public type DocumentReferenceProperties record {
    # The required status/situation before the property is valid/meaningful
    common:Condition Preconditions?;
    # The schedule and timing for which the property value is valid
    common:Schedule Schedule?;
    # The version reference for the property value
    string VersionNumber?;
    # The Document Update History Properties specific  Business Service
    common:BusinessService BusinessService?;
    # Reference to Document Update History Properties
    common:documentdirectoryentry DocumentDirectoryEntryReference?;
    # Reference to Document Update History Properties
    DocumentService DocumentReferencePropertiesReference?;
    # The type of Document Reference Properties
    string DocumentReferencePropertiesType?;
};

public type DocumentAmendmentPropertiesOk record {|
    *http:Ok;
    DocumentAmendmentProperties body;
|};

public type DocumentVersionPropertiesOk record {|
    *http:Ok;
    DocumentVersionProperties body;
|};

# >
# * `Individual` - 
# * `CommunityInterestCompany` - 
# * `CharitableIncorporatedOrganisation` - 
# * `Co-Operative` - 
# * `Charity` - 
# * `GeneralPartnership` - 
# * `LimitedLiabilityPartnership` - 
# * `ScottishLimitedPartnership` - 
# * `LimitedPartnership` - 
# * `PrivateLimitedCompany` - 
# * `PublicLimitedCompany` - 
# * `Sole(SoleTrader)` - 

public type DocumentVerificationPropertiesOk record {|
    *http:Ok;
    # body
    DocumentVerificationProperties body;
|};

# An external agency used to perform a document service

public type DocumentUpdateHistoryPropertiesOk record {|
    *http:Ok;
    # body
    DocumentUpdateHistoryProperties body;
|};

# >
# * `Pendingprocessing` - Processing of the instruction is pending.
# * `Acknowledgedaccepted` - Instruction has been acknowledged and accepted and is validated for further processing.
# * `Rejected` - Instruction has been rejected.
# * `Accepted` - Instruction has been accepted and is validated for further processing.
# * `Completed` - Processing has been completed.
# * `Notreceived` - No instruction has been received (to be used in a reminder).
# * `Cancelled` - Instruction has been cancelled.
# * `Beingcancelled` - Cancel request is being processed.
# * `Receivedbyissuerorregistrar` - Instruction has been received by Issuer.
# * `Pending` - Instruction is pending.
# * `Standinginstruction` - Standing instruction is applied.
# * `Queued` - Instruction is queued.
# * `Cancelledbysubcustodian` - Instruction has been cancelled by the agent, for example, due to an event deadline extension.
# * `Forwarded` - Accepted and sent along the chain.

public type DocumentArchivingProperties record {
    # The required status/situation before the property is valid/meaningful
    common:Condition Preconditions?;
    # The schedule and timing for which the property value is valid
    common:Schedule Schedule?;
    # The version reference for the property value
    string VersionNumber?;
    # The Document Update History Properties specific  Business Service
    common:BusinessService BusinessService?;
    # Reference to Document Update History Properties
    common:documentdirectoryentry DocumentDirectoryEntryReference?;
    # Reference to Document Update History Properties
    DocumentService DocumentArchivingPropertiesReference?;
    # The type of Document Archiving Properties
    string DocumentArchivingPropertiesType?;
};

public type DocumentDirectoryEntryOk record {|
    *http:Ok;
    common:documentdirectoryentry body;
|};

# Reference to Document Update History Properties

public type DocumentAmendmentProperties record {
    # The required status/situation before the property is valid/meaningful
    common:Condition Preconditions?;
    # The schedule and timing for which the property value is valid
    common:Schedule Schedule?;
    # The version reference for the property value
    string VersionNumber?;
    # The Document Update History Properties specific  Business Service
    common:BusinessService BusinessService?;
    # Reference to Document Update History Properties
    common:documentdirectoryentry DocumentDirectoryEntryReference?;
    # Reference to Document Update History Properties
    DocumentService DocumentAmendmentPropertiesReference?;
    # The type of Document Amendment Properties
    string DocumentAmendmentPropertiesType?;
};

