import financial.bian.attribute.groups.common as common;

import ballerina/http;

# A course of action for doing Identity Proofing in the context of executing the Service Domain
#
# A course of action conducted for confirming that an individual's claimed identity is accurate and valid.
public type Precedents record {
    # The type of party property tracked (e.g. residential status, marital status, military, in a disaster location, etc.)
    string PrecedentType?;
    # Reference to the tracked value
    PartyPrecedent CustomerPrecedentReference?;
    # Current (and historical) value of the precedent
    string CustomerPrecedentValue?;
    # CustomerPrecedentValueDate
    common:Date CustomerPrecedentValueDate?;
};

# >
# * `PartyIsParentOfParty` - 
# * `PartyIsSubsidiaryOfParty` - 
# * `PartyIsCertifiedByParty` - 
# * `PartyIsMarriedToParty` - 
# * `PartyActsOnBehalfOfParty` - 
# * `PartyIsContactPointForParty` - 
# * `PartyIsTrustedByParty` - 
# * `PartyIsThePowerOfAttorneyForParty` - 
# * `PartyReceivesBenefitsFromAParty` - 
public type Party_Partyrelationshiptypevalues "PartyIsParentOfParty"|"PartyIsSubsidiaryOfParty"|"PartyIsCertifiedByParty"|"PartyIsMarriedToParty"|"PartyActsOnBehalfOfParty"|"PartyIsContactPointForParty"|"PartyIsTrustedByParty"|"PartyIsThePowerOfAttorneyForParty"|"PartyReceivesBenefitsFromAParty";

# A course of action for doing Identity Proofing in the context of executing the Service Domain
#
# A course of action conducted for confirming that an individual's claimed identity is accurate and valid.
public type Documentation record {
    # Reference to documents used for verification
    common:DocumentDirectoryEntry PartyLife\-cycleRequiredDocumentation?;
    # PartyLife\-cycleDocumentSchedule
    common:Schedule PartyLife\-cycleDocumentSchedule?;
    # DocumentDirectoryEntryInstanceReference
    common:DocumentDirectoryEntry DocumentDirectoryEntryInstanceReference?;
};

# >
# * `Technicalerror` - Device or entity to perform the verification was unavailable.
# * `Successful` - Verification was successful.
# * `Partialmatch` - Verification was partially successful.
# * `Notperformed` - Verification has not been performed.
# * `Missing` - Information required to perform the verification was missing.
# * `Failed` - Verification failed.
# * `Furtheraction` - Further action required.
# * `Othernational` - Other result of verification defined at national level.
# * `Otherprivate` - Other result of verification defined at private level.
# * `Notsupported` - Not support the verification type
public type Verificationresulttypevalues "Technicalerror"|"Successful"|"Partialmatch"|"Notperformed"|"Missing"|"Failed"|"Furtheraction"|"Othernational"|"Otherprivate"|"Notsupported";

# >
# * `IdentityVerification/Proofing` - Identity proofing, also known as identity verification or identity authentication, is the process of confirming that an individual's claimed identity is accurate and valid.
# * `DocumentVerification` - Document verification is a process of verifying the authenticity and validity of documents presented by individuals or entities.
public type Verificationtypevalues "IdentityVerification/Proofing"|"DocumentVerification";

# A course of action for doing Identity Proofing in the context of executing the Service Domain
#
# A course of action conducted for confirming that an individual's claimed identity is accurate and valid.
public type Qualification record {
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
    common:Assessmenttypevalues QualificationType?;
    # Reference to an external verification source (e.g. for registered address/location verification)
    # PublicDirectoryReference
    Directory PublicDirectoryReference?;
    # Reference to an external verification service (e.g. to perform background verification checks)
    common:Service SpecialistAgencyServiceReference?;
    # The record of a specific verification task
    # QualificationTaskRecord
    common:Task QualificationTaskRecord?;
    # Description of the approach taken
    # QualificationTaskDescription
    string QualificationTaskDescription?;
    # Result from the verification service request
    common:Instruction SpecialistAgencyRegulatorServiceRequestResult?;
    # Reference to documents used for verification
    # DocumentDirectoryEntryInstanceReference
    common:DocumentDirectoryEntry DocumentDirectoryEntryInstanceReference?;
    # Work documentation, forms and schedules produced and referenced during the analysis
    # QualificationTaskWorkProducts
    common:Workproduct QualificationTaskWorkProducts?;
    # The outcome of the qualification workstep
    # QualificationTaskResult
    common:Assessment QualificationTaskResult?;
};

# Reference to the tracked value
public type PartyPrecedent record {
    # e.g. residential status, marital status, military, in a disaster location, etc.
    string PrecedentType?;
    # PrecedentValue
    string PrecedentValue?;
    # Date and time at which the range starts. (ISO20022)
    common:Datetime PrecedentValueDate?;
    # EventType
    string EventType?;
    # Date and time at which the range starts. (ISO20022)
    common:Datetime EventDateTime?;
    # EventDescription
    string EventDescription?;
    # EventSource
    string EventSource?;
    # EventLocation
    common:Location EventLocation?;
    # EventAction
    common:Action EventAction?;
    # EventStatus
    common:Status EventStatus?;
    # EventValue
    string EventValue?;
    # EventValidityPeriod
    common:Datetimeperiod EventValidityPeriod?;
    # The identifier of service.
    # EventIdentification
    common:Identifier EventIdentification?;
};

# A course of action for doing Identity Proofing in the context of executing the Service Domain
#
# A course of action conducted for confirming that an individual's claimed identity is accurate and valid.
public type IdentityProofing record {
    # >
    # * `IdentityVerification/Proofing` - Identity proofing, also known as identity verification or identity authentication, is the process of confirming that an individual's claimed identity is accurate and valid.
    # * `DocumentVerification` - Document verification is a process of verifying the authenticity and validity of documents presented by individuals or entities.
    Verificationtypevalues IdentityProofingType?;
    # Reference to an external verification source (e.g. for registered address/location verification)
    Directory PublicDirectoryReference?;
    # Reference to an external verification service (e.g. to perform background verification checks)
    common:Service SpecialistAgencyServiceReference?;
    # The record of a specific verification task
    # IdentityProofingTaskRecord
    common:Task IdentityProofingTaskRecord?;
    # Description of the verification routine
    # IdentityProofingTaskDescription
    string IdentityProofingTaskDescription?;
    # Result from the verification service request
    common:Instruction SpecialistAgencyServiceRequestResult?;
    # Reference to documents used for verification
    # DocumentDirectoryEntryInstanceReference
    common:DocumentDirectoryEntry DocumentDirectoryEntryInstanceReference?;
    # Work documentation, forms and schedules produced and referenced during the analysis
    # IdentityProofingTaskWorkProducts
    common:Workproduct IdentityProofingTaskWorkProducts?;
    # The outcome of the verification routine
    # IdentityProofingTaskResult
    Verification IdentityProofingTaskResult?;
    # The identifier of service.
    common:Identifier IdentityProofingReference?;
};

public type PartyRelationshipAdministrativePlan record {
    # Reference to a Party who plays a  specific role in the context of assigning a status.
    common:Involvedparty CustomerReference?;
    # Reference to the legal entity (typically the customer)
    # PartyReference
    common:Party PartyReference?;
    # >
    # * `PartyIsParentOfParty` - 
    # * `PartyIsSubsidiaryOfParty` - 
    # * `PartyIsCertifiedByParty` - 
    # * `PartyIsMarriedToParty` - 
    # * `PartyActsOnBehalfOfParty` - 
    # * `PartyIsContactPointForParty` - 
    # * `PartyIsTrustedByParty` - 
    # * `PartyIsThePowerOfAttorneyForParty` - 
    # * `PartyReceivesBenefitsFromAParty` - 
    Party_Partyrelationshiptypevalues PartyRelationshipType?;
    # PartyLife\-cycleMaintenanceSchedule
    common:Schedule PartyLife\-cycleMaintenanceSchedule?;
    # The record of a specific verification task
    # PartyLife\-cycleMaintenanceTask
    common:Task PartyLife\-cycleMaintenanceTask?;
    # The type of task performed (e.g. on-boarding check, periodic refresh)
    # PartyLife\-cycleMaintenanceTaskType
    string PartyLife\-cycleMaintenanceTaskType?;
    # Work documentation, forms and schedules produced and referenced during the analysis
    common:Workproduct PartyLife\-cycleMaintenanceWorkProducts?;
    # The outcome of the task  (will be used to update the Status and Status Record)
    # PartyLife\-cycleMaintenanceTaskResult
    string PartyLife\-cycleMaintenanceTaskResult?;
    # CustomerPrecedentProfileUpdateLog
    common:Log CustomerPrecedentProfileUpdateLog?;
    # PartyRelationshipLifecycleStatus
    common:Status PartyRelationshipLifecycleStatus?;
    # PartyRelationshipLifecyclePhase
    common:PartyRelationshipLifecyclePhase PartyRelationshipLifecyclePhase?;
};

# Contains end time of the verification that has been performed. 
public type Time record {
    # Time is a time of day to various common resolutions - hour, minute, second and fractions thereof. (UN/CEFACT)
    #
    # A particular point in the progression of time in a calendar day expressed in either UTC time format (hh:mm:ss.sssZ), local time with UTC offset format (hh:mm:ss.sss+/-hh:mm), or local time format (hh:mm:ss.sss). These representations are defined in "XML Schema Part 2: Datatypes Second Edition - W3C Recommendation 28 October 2004" which is aligned with ISO 8601. (ISO20022)
    # Note on the time format:
    # 1) beginning / end of calendar day
    # 00:00:00 = the beginning of a calendar day
    # 24:00:00 = the end of a calendar day
    # 2) fractions of second in time format
    # Decimal fractions of seconds may be included. In this case, the involved parties shall agree on the maximum number of digits that are allowed.
    string Time?;
};

public type PartyRelationshipAdministrativePlanOk record {|
    *http:Ok;
    # body
    PartyRelationshipAdministrativePlan body;
|};

# >
# * `Acquirer` - Acquirer of the transaction.
# * `Agent` - Entity providing card payment processing services acting as an intermediary between (or on behalf of) an acquirer and an issuer.
# * `Issuer` - Card issuer.
# * `Acceptor` - Acceptor (for example signature verification by the attendant).
# * `Othernational` - Other type of authentication entity defined at national level.
# * `Otherprivate` - Other type of authentication entity defined at private level.
# * `Terminal` - Secure application in the terminal.
# * `Cardapplication` - Application in the smart card.
# * `Acceptancedevice` - Type of Device to accept payment
public type Verificationentitytypevalues "Acquirer"|"Agent"|"Issuer"|"Acceptor"|"Othernational"|"Otherprivate"|"Terminal"|"Cardapplication"|"Acceptancedevice";

# Reference to an external verification source (e.g. for registered address/location verification)
public type Directory record {
    # DirectoryVersion
    string DirectoryVersion?;
    # DirectoryConfiguration
    string DirectoryConfiguration?;
    # DirectoryValidPeriod
    common:Datetimeperiod DirectoryValidPeriod?;
    # DirectoryStatus
    common:Status DirectoryStatus?;
};

# The outcome of the verification routine
public type Verification record {
    # >
    # * `IdentityVerification/Proofing` - Identity proofing, also known as identity verification or identity authentication, is the process of confirming that an individual's claimed identity is accurate and valid.
    # * `DocumentVerification` - Document verification is a process of verifying the authenticity and validity of documents presented by individuals or entities.
    Verificationtypevalues VerificationType?;
    # >
    # * `Acquirer` - Acquirer of the transaction.
    # * `Agent` - Entity providing card payment processing services acting as an intermediary between (or on behalf of) an acquirer and an issuer.
    # * `Issuer` - Card issuer.
    # * `Acceptor` - Acceptor (for example signature verification by the attendant).
    # * `Othernational` - Other type of authentication entity defined at national level.
    # * `Otherprivate` - Other type of authentication entity defined at private level.
    # * `Terminal` - Secure application in the terminal.
    # * `Cardapplication` - Application in the smart card.
    # * `Acceptancedevice` - Type of Device to accept payment
    Verificationentitytypevalues VerificationEtity?;
    # >
    # * `Technicalerror` - Device or entity to perform the verification was unavailable.
    # * `Successful` - Verification was successful.
    # * `Partialmatch` - Verification was partially successful.
    # * `Notperformed` - Verification has not been performed.
    # * `Missing` - Information required to perform the verification was missing.
    # * `Failed` - Verification failed.
    # * `Furtheraction` - Further action required.
    # * `Othernational` - Other result of verification defined at national level.
    # * `Otherprivate` - Other result of verification defined at private level.
    # * `Notsupported` - Not support the verification type
    Verificationresulttypevalues VerificationResult?;
    # Date and time at which the range starts. (ISO20022)
    common:Datetime VerificationDateTime?;
    # Reason to perform the verification. (ISO20022)
    # VerificationReason
    string VerificationReason?;
    # VerificationValidityEndDate
    common:Date VerificationValidityEndDate?;
    # Contains end time of the verification that has been performed. 
    # VerificationValidityEndTime
    Time VerificationValidityEndTime?;
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
    # AssessmentDateTime
    common:Datetime AssessmentDateTime?;
    # AssessmentResult
    string AssessmentResult?;
    # Document that provides background or corroborating information regarding an assessment(s).
    common:Document AssessmentSupportingDocument?;
    # Document that provides background or corroborating information regarding an assessment(s).
    # AssessmentRepresentingDocument
    common:Document AssessmentRepresentingDocument?;
    # Change that the assessment reveals is needed.
    # AssessmentRequiredAdjustment
    string AssessmentRequiredAdjustment?;
    # AssessmentRequirement
    common:Requirement AssessmentRequirement?;
    # AssessmentExpiryDate
    common:Date AssessmentExpiryDate?;
    # AssessmentStatus
    common:Status AssessmentStatus?;
    # AssessmentIdentification
    common:Identifier AssessmentIdentification?;
};

