import financial.bian.attribute.groups.common as common;

import ballerina/http;

# Reference to the administration record of the asset item
public type CollateralAssetAdministrativePlan record {
    # PlanGoal
    common:Goal PlanGoal?;
    # PlanBudget
    common:Budgetarrangement PlanBudget?;
    # PlannedAction
    common:Plannedaction PlannedAction?;
    # PlanType
    common:Plantypevalues PlanType?;
    # PlanValidityPeriod
    common:Datetimeperiod PlanValidityPeriod?;
    # PlanDescription
    string PlanDescription?;
};

# A collection of information feeds/measures that can be used to track the status of one or more items/entitites
#
# Examples: Composite position, Customer alert
public type CollateralAllocation record {
    # CustomerReference
    common:Involvedparty CustomerReference?;
    # CollateralAssetType
    common:Assettypevalues CollateralAssetType?;
    # CollateralAssetReference
    CollateralAsset CollateralAssetReference?;
    # CollateralAssetDescription
    string CollateralAssetDescription?;
    # CollateralAssetAdministrationInstanceReference
    CollateralAssetAdministrativePlan CollateralAssetAdministrationInstanceReference?;
    # CollateralAssetStatus
    common:Collateralassetstatustypevalues CollateralAssetStatus?;
    # CollateralAssetValuation
    AssetValuation CollateralAssetValuation?;
    # CollateralAssetAllocationProfile
    CollateralAssetAllocation CollateralAssetAllocationProfile?;
    # CollateralAssetValuationDate
    common:Datetime CollateralAssetValuationDate?;
    # CollateralAssetLoantoValueRatio
    string CollateralAssetLoantoValueRatio?;
    # CustomerCollateralPositionAnalysisRecord
    common:Analysis CustomerCollateralPositionAnalysisRecord?;
};

# Reference to the collateral item (e.g. address, account reference)
public type CollateralAsset record {
    # CollateralAssetIdentification
    common:Identifier CollateralAssetIdentification?;
    # CollateralAssetType
    common:Collateraltypevalues CollateralAssetType?;
    # CollateralAssetStatus
   common:Collateralassetstatustypevalues CollateralAssetStatus?;
    # AssetTitle
    string AssetTitle?;
    # AssetIdentification
    common:Identifier AssetIdentification?;
    # AssetType
    common:Assettypevalues AssetType?;
    # AssetDescription
    string AssetDescription?;
    # AssetStatus
    common:Status AssetStatus?;
    # AssetDate
    common:Datetime AssetDate?;
    # AssetClassification
    string AssetClassification?;
    # AssetClassificationType
    common:Assetclassificationtypevalues AssetClassificationType?;
    # AssetSubClassificationType
    common:Assetsubclassificationtypevalues AssetSubClassificationType?;
    # AssetSubClassification
    string AssetSubClassification?;
};

# The current and historical valuation of the asset
public type AssetValuation record {
    # AssetValue
    string AssetValue?;
    # AssetValueType
    string AssetValueType?;
    # AssetValuationType
    string AssetValuationType?;
    # AssetValuationDate
    common:Datetime AssetValuationDate?;
    # AssetValuationRate
    common:Rate AssetValuationRate?;
    # AssetValuationStatus
    common:Status AssetValuationStatus?;
    # AssetValuationValidityPeriod
    common:Datetimeperiod AssetValuationValidityPeriod?;
    # AsseValuationAmount
    common:Amount AsseValuationAmount?;
    # AssessmentType
    common:Assessmenttypevalues AssessmentType?;
    # AssessmentMethod
    string AssessmentMethod?;
    # AssessmentSchedule
    common:Schedule AssessmentSchedule?;
    # AssessmentDescription
    string AssessmentDescription?;
    # AssessmentModel
    common:Model AssessmentModel?;
    # AssessmentDateTime
    common:Datetime AssessmentDateTime?;
    # AssessmentResult
    string AssessmentResult?;
    # AssessmentSupportingDocument
    common:Document AssessmentSupportingDocument?;
    # AssessmentRepresentingDocument
    common:Document AssessmentRepresentingDocument?;
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

# Monitor and define the status/rating of some entity within Customer Position. 
public type CustomerPositionState record {
    # CustomerReference
    common:Involvedparty CustomerReference?;
    # CustomerPositioReference
    CustomerPosition CustomerPositioReference?;
    # AccountReference
    common:ProductAgreement AccountReference?;
    # CustomerPositionStateReference
    common:Identifier CustomerPositionStateReference?;
};

public type CashflowOk record {|
    *http:Ok;
    Cashflow body;
|};

# A collection of information feeds/measures that can be used to track the status of one or more items/entitites
#
# Examples: Composite position, Customer alert
public type Cashflow record {
    # ProductInstanceReference
    common:ProductAgreement ProductInstanceReference?;
    # ProductArrangementInstanceReportType
    common:Reporttypevalues ProductArrangementInstanceReportType?;
    # ProductArrangementInstanceReport
    common:Report ProductArrangementInstanceReport?;
    # ReportOptionsSelectionCriteria
    ReportingArrangement ReportOptionsSelectionCriteria?;
    # ReportPeriod
    common:Datetimeperiod ReportPeriod?;
    # ReportFormatTemplate
    string ReportFormatTemplate?;
    # Report
    common:Report Report?;
    # CustomerCashflowPositionAnalysisRecord
    common:Analysis CustomerCashflowPositionAnalysisRecord?;
    # CustomerProductType
    common:Productagreementtypevalues CustomerProductType?;
    # CustomerAccountBalance
    common:Accountbalance CustomerAccountBalance?;
};

# A collection of information feeds/measures that can be used to track the status of one or more items/entitites
#
# Examples: Composite position, Customer alert
public type Credit record {
    # CustomerCreditRatingAssessment
    CustomerCreditRatingAssessment CustomerCreditRatingAssessment?;
    # CustomerCreditRatingAssessmentType
    Creditratingassessmenttype CustomerCreditRatingAssessmentType?;
    # CustomerCreditRatingNarrative
    string CustomerCreditRatingNarrative?;
    # CustomerCreditPositionAnalysisRecord
    common:Analysis CustomerCreditPositionAnalysisRecord?;
};

# The internal bank credit rating/assessment
public type CustomerCreditRatingAssessment record {
    # CreditRatingAssessmentType
    string CreditRatingAssessmentType?;
    # AssessmentType
    common:Assessmenttypevalues AssessmentType?;
    # AssessmentMethod
    string AssessmentMethod?;
    # AssessmentSchedule
    common:Schedule AssessmentSchedule?;
    # AssessmentDescription
    string AssessmentDescription?;
    # AssessmentModel
    common:Model AssessmentModel?;
    # AssessmentDateTime
    common:Datetime AssessmentDateTime?;
    # AssessmentResult
    string AssessmentResult?;
    # AssessmentSupportingDocument
    common:Document AssessmentSupportingDocument?;
    # AssessmentRepresentingDocument
    common:Document AssessmentRepresentingDocument?;
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

public type CreditOk record {|
    *http:Ok;
    Credit body;
|};

public type CustomerPositionStateOk record {|
    *http:Ok;
    CustomerPositionState body;
|};

# A record of past and current allocations of the collateral asset
public type CollateralAssetAllocation record {
    # CollateralAssetAllocationStatus
    Allocationstatustypevalues CollateralAssetAllocationStatus?;
    # UndertakingTransactionType
    common:Undertakingtransactiontypevalues UndertakingTransactionType?;
    # AllocationAmount
    common:Amount AllocationAmount?;
    # AllocationDuration
    common:Duration AllocationDuration?;
    # AllocationDirection
    string AllocationDirection?;
    # AllocationStatus
    common:Status AllocationStatus?;
    # AllocationDescription
    string AllocationDescription?;
    # TransactionIdentification
    common:Identifier TransactionIdentification?;
    # TransactionDate
    common:Transactiondatetime TransactionDate?;
    # TransactionType
    common:Transactiontypevalues TransactionType?;
    # TransactionDescription
    string TransactionDescription?;
    # TransactionStatus
    common:Transactionstatus TransactionStatus?;
    # TransactionName
    common:Name TransactionName?;
};

# Credit assessment type (e.g. consumer, small business, corporate)
public type Creditratingassessmenttype record {
    # Creditratingassessmenttype
    string Creditratingassessmenttype?;
};

# The consolidated position state that is tracked for the customer - combines analysis from all  measures
public type CustomerPosition record {
    # PositionType
    common:Positiontypevalues PositionType?;
    # EventReference
    string EventReference?;
};

# Defines content/transaction types to be included in the report extract
public type ReportingArrangement record {
    # ReportingChannel
    Channel ReportingChannel?;
    # ReportingFrequency
    common:Frequencytypevalues ReportingFrequency?;
    # ArrangementAction
    common:Action ArrangementAction?;
    # ArrangementStartDate
    common:Datetime ArrangementStartDate?;
    # ArrangementEndDate
    common:Datetime ArrangementEndDate?;
    # ArrangementStatus
    common:Arrangementstatus ArrangementStatus?;
    # ArrangementSubjectMatter
    common:Subject ArrangementSubjectMatter?;
    # Arrangementtype
    common:Arrangementtypevalues Arrangementtype?;
    # ArrangementIdentification
    common:Identifier ArrangementIdentification?;
};

# Specifies the channel through which the report must be made available to the  information recipient.
public type Channel record {
    # >
    # * `CommunicationChannel` - 
    # * `AuthenticationChannel` - 
    common:Channeltypevalues ChannelType?;
};

# >
# * `Fullyallocated` - 
# * `Partiallyallocated` - 
# * `Earmarked` - Not allocated, merely earmarked
public type Allocationstatustypevalues "Fullyallocated"|"Partiallyallocated"|"Earmarked";
