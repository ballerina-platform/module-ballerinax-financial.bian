import financial.bian.attribute.groups.common as common;

import ballerina/http;

public type RegulatoryComplianceAdministrativePlanOk record {|
    *http:Ok;
    # body
    RegulatoryComplianceAdministrativePlan body;
|};

# A collection of one or more clerical routines that are to be followed to administer the operational unit/function
#
# Examples: Time-sheet recording
public type Authoring record {
    # Details the production information/measurements required for reporting - includes reporting format
    string RegulatoryReportTypeComplianceReportingRequirements?;
    # Period of time during which the status is valid.
    common:Datetimeperiod ReportingPeriod?;
    # Refers to the company group or subsidiary covered by the regulatory report
    common:Organisation ReportingBusinessLegalEntityReference?;
    # The business unit being assessed for enquiry if appropriate
    common:BusinessUnit ReportingBusinessUnitReference?;
    # Refers to the regulatory report
    RegulatoryReport RegulatoryReportReference?;
    # Refers to the regulatory report
    RegulatoryReport RegulatoryReport?;
    # The document reference for all classified/archived documents from the enquiry
    common:Document RegulatoryReportDocumentReference?;
};

# Refers to the regulatory report
public type RegulatoryReport record {
    # >
    # * `FinancialReport` - 
    # * `BusinessReport` - 
    # * `ManagementReport` - 
    # * `Statement` - 
    # * `MaintenanceReport` - 
    # * `RegulatoryReport` - 
    # * `TaxReport` - 
    # * `AnalysisReport` - 
    common:Reporttypevalues ReportType?;
    # Period of time during which the status is valid.
    common:Datetimeperiod ReportValidityPeriod?;
    # ReportVersion
    string ReportVersion?;
    # The date when the identifier became valid.
    common:Datetime ReportDateTime?;
    # ReportFormat
    string ReportFormat?;
};

# A collection of one or more clerical routines that are to be followed to administer the operational unit/function
#
# Examples: Time-sheet recording
public type Consolidation record {
    # Description of the source content required for a report type
    string RegulatoryReportTypeContentRequirements?;
    # Reference to an entity that assigns and manages the identification.
    # tReference to the organization or agency that issued the identifier (e.g., DMV, Passport Office).
    common:Involvedparty SourceBusinessUnitorEmployeeReference?;
    # The instances of products/services being assessed if appropriate
    common:Product SourceProductandServiceReference?;
    # Reference to an entity that assigns and manages the identification.
    # tReference to the organization or agency that issued the identifier (e.g., DMV, Passport Office).
    common:Involvedparty SourceCustomerReference?;
    # The possibly extensive collection of production transaction records assembled for reporting
    string SourceTransactionRecords?;
};

# Handle and assign the day to day activities, capture time, costs and income for an operational unit within Regulatory Reporting. 
public type RegulatoryComplianceAdministrativePlan record {
    # Reference to the interested regulatory reporting authority
    common:RegulatoryAuthority RegulatoryAuthorityReference?;
    # The details of all regulatory reporting requirements and scheduled reporting tasks
    common:Schedule RegulatoryReportingSchedule?;
    # Reference to the regulation for which content is being collected
    common:Regulation RegulationReference?;
    # >
    # * `FinancialReport` - 
    # * `BusinessReport` - 
    # * `ManagementReport` - 
    # * `Statement` - 
    # * `MaintenanceReport` - 
    # * `RegulatoryReport` - 
    # * `TaxReport` - 
    # * `AnalysisReport` - 
    common:Reporttypevalues RegulatoryReportType?;
};

# A collection of one or more clerical routines that are to be followed to administer the operational unit/function
#
# Examples: Time-sheet recording
public type Enquiries record {
    # The description of the requested information for the regulatory enquiry
    string RegulatoryEnquiry?;
    # The business unit being assessed for enquiry if appropriate
    common:BusinessUnit EnquiryBusinessUnitReference?;
    # The instances of products/services being assessed if appropriate
    common:Product EnquiryProductandServiceReference?;
    # Reference to an entity that assigns and manages the identification.
    # tReference to the organization or agency that issued the identifier (e.g., DMV, Passport Office).
    common:Involvedparty EnquiryCustomerReference?;
    # The possibly extensive collection of production transaction records assembled for the enquiry
    string EnquiryTransactionRecords?;
    # Work documentation, forms and schedules produced and referenced during the enquiry
    common:Workproduct RegulatoryEnquiryWorkProducts?;
    # The record or report that is the outcome/result of the enquiry
    string RegulatoryEnquiryResult?;
    # The document reference for all classified/archived documents from the enquiry
    common:Document RegulatoryEnquiryDocumentReference?;
};
