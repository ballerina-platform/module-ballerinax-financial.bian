import financial.bian.attribute.groups.common as common;

import ballerina/http;

# An indication or description of the commercial value of the intellectual property asset. This can combine a 'replacement' valuation and an licensing/assignment income assessment. The value can be an estimate and include actual realized income
public type AssetValuation record {
    # A value of some value aspect of an Asset. 
    string AssetValue?;
    # reference to the type of value expressed in the valuation.
    # this can be ratio, qualifier, amounts, etc.
    string AssetValueType?;
    # Type of a particular valuation. Possible types are ad hoc-external valuer, ad hoc-internal valuer, scheduö
    # led external valuer, scheduled internal valuer
    string AssetValuationType?;
    # The date when the identifier became valid.
    common:Datetime AssetValuationDate?;
    # Description of AssetValuationRate
    common:Rate AssetValuationRate?;
    # Description of AssetValuationStatus
    common:Status AssetValuationStatus?;
    # Period of time during which the status is valid.
    common:Datetimeperiod AssetValuationValidityPeriod?;
    # Amount at which the asset has been valued at a particular valuation
    common:Amount AsseValuationAmount?;
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
    # Description of AssessmentMethod
    string AssessmentMethod?;
    # The schedule for maintenance tasks performed and to be performed (e.g. patent renewals)
    common:Schedule AssessmentSchedule?;
    # Description of AssessmentDescription
    string AssessmentDescription?;
    # Description of AssessmentModel
    common:Model AssessmentModel?;
    # The date when the identifier became valid.
    common:Datetime AssessmentDateTime?;
    # Description of AssessmentResult
    string AssessmentResult?;
    # Document that provides background or corroborating information regarding an assessment(s).
    common:Document AssessmentSupportingDocument?;
    # Document that provides background or corroborating information regarding an assessment(s).
    common:Document AssessmentRepresentingDocument?;
    # Change that the assessment reveals is needed.
    string AssessmentRequiredAdjustment?;
    # Description of AssessmentRequirement
    common:Requirement AssessmentRequirement?;
    # Description of AssessmentExpiryDate
    common:Date AssessmentExpiryDate?;
    # Description of AssessmentStatus
    common:Status AssessmentStatus?;
    # Description of AssessmentIdentification
    common:Identifier AssessmentIdentification?;
};

# Reference to the intellectual property asset item
public type Asset record {
    # Description of AssetTitle
    string AssetTitle?;
    # Description of AssetIdentification
    common:Identifier AssetIdentification?;
    # >
    # * `TangibleAsset` - It has a physical form and can be touched or seen.
    # * `IntangibleAsset` - It doesn't have a physical form but hold value
    # * `OperatingAsset` - Used in the day-to-day operations of the business.
    # * `Non-OperatingAsset` - Not used in core business operations but still provide value
    # * `CurrentAsset` - Expected to be converted into cash within one year.
    # * `Non-Current(Fixed)Asset` - Provide value over the long term (more than one year).
    # * `PersonalAsset` - Owned by individuals and not related to a business.
    # * `BusinessAsset` - Owned by a business and used to generate revenue.
    common:Assettypevalues AssetType?;
    # Description of the asset 
    string AssetDescription?;
    # Description of AssetStatus
    common:Status AssetStatus?;
    # The date when the identifier became valid.
    common:Datetime AssetDate?;
    # Classification of the asset.(ISO20022)
    string AssetClassification?;
    # Description of AssetClassificationType
    common:Assetclassificationtypevalues AssetClassificationType?;
    # >
    # * `Subassetclass` - Sub-asset class.(ISO20022)
    # * `Timetomaturitybucket` - Time to maturity bucket.(ISO20022)
    # * `Optiontimetomaturitybucket` - Time to maturity bucket of the option.(ISO20022)
    # * `Swaptimetomaturitybucket` - Time to maturity bucket of the swap.(ISO20022)
    # * `Underlyinginstrumentidentification` - Underlying instrument identification, such as an ISIN code.(ISO20022)
    # * `Underlyingbondissuer` - Issuer of the underlying bond.(ISO20022)
    # * `Underlyinginterestrate` - Underlying interest rate.(ISO20022)
    # * `Underlyingbondterm` - Term of the underlying bond.(ISO20022)
    # * `Assetclass` - Asset class.(ISO20022)
    # * `Underlyingindexidentification` - Underlying index identification such as an ISIN or an index name.(ISO20022)
    # * `Interestratetermofcontract` - Interest rate term of contract.(ISO20022)
    # * `Underlyingreferenceentity` - Underlying reference entity.(ISO20022)
    # * `Sovereignandpublictypeissuer` - Issuer of sovereign and public type.(ISO20022)
    # * `Irdnotionalcurrency1` - Interest rate derivative notional currency 1.(ISO20022)
    # * `Fexnotionalcurrency1` - Foreign exchange derivative notional currency 1.(ISO20022)
    # * `Cfdnotionalcurrency1` - Contract for difference notional currency 1.(ISO20022)
    # * `Fexnotionalcurrency2` - Foreign exchange derivative notional currency 2.(ISO20022)
    # * `Irdnotionalcurrency2` - Interest rate derivative notional currency 2.(ISO20022)
    # * `Cfdnotionalcurrency2` - Contract for difference notional currency 2.(ISO20022)
    # * `Swaptionnotionalcurrency` - Notional currency of the swaption.(ISO20022)
    # * `Creditnotionalcurrency` - Credit derivative notional currency.(ISO20022)
    # * `Commoditynotionalcurrency` - Commodity derivative notional currency.(ISO20022)
    # * `Contracttype` - Contract type.(ISO20022)
    # * `Baseproduct` - Base product.(ISO20022)
    # * `Subproduct` - Sub product.(ISO20022)
    # * `Furthersubproduct` - Further sub product.(ISO20022)
    # * `Deliverycashlocation` - Delivery cash settlement location.(ISO20022)
    # * `Deliverysettlementtype` - Delivery settlement type.(ISO20022)
    # * `Sizespecificationrelatedtofreightsubtype` - Size specification related to freight subtype.(ISO20022)
    # * `Specificroutetimecharteraverage` - Specific route time charter average.(ISO20022)
    # * `Equityunderlyingtype` - Equity derivative underlying type.(ISO20022)
    # * `Parameter` - Parameter.(ISO20022)
    # * `Inflationindexcodename` - Inflation index code or name.(ISO20022)
    # * `ISIN` - Instrument identification.(ISO20022)
    # * `Underlyingindexcdssubclassidentification` - Sub class of the underlying index credit default swap (CDS).(ISO20022)
    # * `Underlyingtype` - Underlying type.(ISSO20022)
    common:Assetsubclassificationtypevalues AssetSubClassificationType?;
    # Description of AssetSubClassification
    string AssetSubClassification?;
};

public type AssignmentOk record {|
    *http:Ok;
    # Description of body
    common:Assignment body;
|};

public type IntellectualPropertyAdministrativePlanOk record {|
    *http:Ok;
    # Description of body
    IntellectualPropertyAdministrativePlan body;
|};

# A collection of one or more clerical routines that are to be followed to administer the operational unit/function
#
# Examples: Time-sheet recording
public type Maintenance record {
    # The schedule for maintenance tasks performed and to be performed (e.g. patent renewals)
    common:Schedule IntellectualPropertyAssetMaintenanceSchedule?;
    # Reference to the intellectual property protection mechanism employed (e.g. copyright, trademark or patent reference number)
    string IntellectualPropertyAssetProtectionReference?;
    # Reference to the registration entity for the intellectual property protection mechanism (e.g. U.S. Patent Office)
    string IntellectualPropertyAssetRegistrationReference?;
    # A record of payments and other actions taken to maintain the asset
    common:Task IntellectualPropertyAssetMaintenanceTaskRecord?;
    # The type of maintenance task (e.g. annual renewal)
    string IntellectualPropertyAssetMaintenanceTaskType?;
    # Description of the task performed
    string IntellectualPropertyAssetMaintenanceTaskDescription?;
    # File of consolidated notes, forms and documents for the maintenance task
    common:Workproduct IntellectualPropertyAssetMaintenanceTaskWorkProducts?;
    # Reference to associated documents
    common:DocumentDirectoryEntry DocumentDirectoryEntryInstanceReference?;
    # Details of any payments made as part of maintenance
    common:Transaction IntellectualPropertyAssetMaintenanceTransaction?;
};

public type MaintenanceOk record {|
    *http:Ok;
    # Description of body
    Maintenance body;
|};

# Handle and assign the day to day activities, capture time, costs and income for an operational unit within Intellectual Property Portfolio. 
public type IntellectualPropertyAdministrativePlan record {
    # Reference to the intellectual property asset item
    Asset IntellectualPropertyAssetReference?;
    # Reference to the intellectual property asset item
    Asset IntellectualPropertyAssetRecord?;
    # >
    # * `TangibleAsset` - It has a physical form and can be touched or seen.
    # * `IntangibleAsset` - It doesn't have a physical form but hold value
    # * `OperatingAsset` - Used in the day-to-day operations of the business.
    # * `Non-OperatingAsset` - Not used in core business operations but still provide value
    # * `CurrentAsset` - Expected to be converted into cash within one year.
    # * `Non-Current(Fixed)Asset` - Provide value over the long term (more than one year).
    # * `PersonalAsset` - Owned by individuals and not related to a business.
    # * `BusinessAsset` - Owned by a business and used to generate revenue.
    common:Assettypevalues IntellectualPropertyAssetType?;
    # Description of significant details and properties of the intellectual property asset
    string IntellectualPropertyAssetDescription?;
    # Details of title ownership, including assigned usage rights
    string IntellectualPropertyAssetTitle?;
    # Details of scope of coverage of the intellectual property asset (e.g. geographic coverage, allowed usage type coverage)
    common:Jurisdiction IntellectualPropertyAssetJurisdiction?;
    # Reference to an entity that assigns and manages the identification.
    # tReference to the organization or agency that issued the identifier (e.g., DMV, Passport Office).
    common:Involvedparty IntellectualPropertyAssetCreator?;
    # An indication or description of the commercial value of the intellectual property asset. This can combine a 'replacement' valuation and an licensing/assignment income assessment. The value can be an estimate and include actual realized income
    AssetValuation IntellectualPropertyAssetValuation?;
    # Reference to associated documents
    common:DocumentDirectoryEntry DocumentDirectoryEntryInstanceReference?;
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
    common:Datetimetypevalues DateType?;
    # The date when the identifier became valid.
    common:Datetime Date?;
};
