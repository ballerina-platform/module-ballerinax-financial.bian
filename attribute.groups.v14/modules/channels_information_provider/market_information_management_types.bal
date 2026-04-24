import financial.bian.attribute.groups.common as common;

import ballerina/http;

# Reference to the external sources of financial market information. Can be an ongoing service or some form of report
public type FinancialMarketInformationService record {
    # The way the Information Service is provided
    #
    # This has several dimensions that are not elaborated furthere.g. push, pull, request/replye.g. instance, file
    string InformationServiceMode?;
    # The type of information that is provided by the information service
    string InformationServiceContent?;
    # The type of information service (e.g. a regular feed, periodic report)
    string InformationServiceType?;
    # InformationServiceDescription
    string InformationServiceDescription?;
    # InformationServiceDateTime
    string InformationServiceDateTime?;
};

public type ReportingOk record {|
    *http:Ok;
    # body
    Reporting body;
|};

# >
# * `AdvisoryService` - A classification that distinguishes between instances of Information Services according to purpose of advising the destinee of the information.
#
# Advisory is the contracted service to deliver customized advice (once or regularly) in a specific way and for a specific purpose. This service is explicitly negotiated and agreed upon and therefore essentially different from a selling service. This does not mean that it should be priced separately as it can be integrated in a total offer towards clients. Advisory are all products that can be classified as decision support for the clients. In this sense there is an overlap with selling services as some selling services are also advisory although not (always) negotiated.
#
# Includes following services (e.g.)
# 1. Key Plan/Vario Plan
# 2. Financial Advisory
# 3. SME Advisory 
# 4. Portfolio Management
# 5. Client Care 
# 6. Subsidies Advisory
#
# Generic Services are:
# 1. Information Build
# This is the service where for the specific purpose of decision support, data is transformed to information that is structured in a way that the client can easily understand and overview his situation. E.g. a consolidated portfolio overview or a risk profile of the client
# 2. Knowledge Build
# The service where information is built into knowledge. Included are all analysis methods that give a client an in-depth knowledge of his (benchmarked) position. E.g. All different tools for risk analysis and portfolio ratios.
# 3. Personalized Advice
# Build on information about the clients situation and an analysis, a personalized advice can be delivered. An advice is the description of the actions that the client can take to optimize his position. E.g. advice to align portfolio on risk profile.
#
#
# * `ReportingService` - A classification that distinguishes between instances of Information Services according to purpose of reporting with regard to operational and managerial aspects of banking product or service agreements, relations, portfolio's, etc.
#
# Reporting are all the services, linked to a specific product or to the whole of the product portfolio that clients have bought. 
#
# Includes following services (e.g.)
# 1. Statement (Transactional Overview)
# 2. Balance Inquiry
# 3. Portfolio (Position Overview)
# 4. GSM alerts
#
# Generic Services are:
# 1. Transactions Reporting
# The reporting of all transactions that are done on the level of a client or a product (account). Distinction should be made for all channels that are used for the transactions.
# 2. Position Reporting
# The reporting of the (balance) position of an account or a set of accounts.
# 3. Event Reporting
# This service is linked to both services above. If a transaction cannot be executed because insufficient balance on the account is one example of an event.  This event reporting can be configured by the client.
# * `FinancialInformationService` - 
public type Informationservicetypevalues "AdvisoryService"|"ReportingService"|"FinancialInformationService";

# Reference to any agreement covering access to the external service
public type ServiceAgreement record {
    # Type
    string Type?;
    # ServiceReference
    common:Service ServiceReference?;
    # AgreementReference
    common:Agreement AgreementReference?;
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
    # AgreementValidityPeriod
    common:Datetimeperiod AgreementValidityPeriod?;
    # AgreementVersion
    string AgreementVersion?;
    # A characteristic of agreement which refers to the LifecycleStatus of agreement (e.g., potential, offered, confirmed, completed, signed, terminated).
    common:Agreementstatus AgreementStatus?;
    # AgreementSubjectMatter
    string AgreementSubjectMatter?;
    # AgreementIdentification
    common:Identifier AgreementIdentification?;
    # The date when the identifier became valid.
    common:Datetime AgreementDate?;
    # AgreementDescription
    string AgreementDescription?;
};

# A collection of one or more clerical routines that are to be followed to administer the operational unit/function
#
# Examples: Time-sheet recording
public type Improvement record {
    # Defines the type of technique used to improve the content (e.g. cross verification, pattern/anomaly detection)
    string FinancialMarketInformationImprovementTaskType?;
    # References to the different sources of financial market information used to improve the content (can be primary source and comparison data)
    string FinancialMarketInformationImprovementTaskSources?;
    # Work documentation, forms and schedules produced and referenced during the enquiry
    common:Workproduct FinancialMarketInformationImprovementTaskWorkProducts?;
    # Output of the improvement task that is recorded back to the Financial Market Information Database
    common:Task FinancialMarketInformationImprovementTaskResult?;
};

# A collection of one or more clerical routines that are to be followed to administer the operational unit/function
#
# Examples: Time-sheet recording
public type Consolidation record {
    # Refers to the content record provided by the external service provider in whatever form suitable
    common:Report FinancialMarketInformationServiceReport?;
    # Key properties of the report used in its improvement (e.g. date created, qualifications of integrity)
    common:Feature FinancialMarketInformationServiceReportProperties?;
};

public type FinancialMarketInformationAdministrativePlanOk record {|
    *http:Ok;
    # body
    FinancialMarketInformationAdministrativePlan body;
|};

# A collection of one or more clerical routines that are to be followed to administer the operational unit/function
#
# Examples: Time-sheet recording
public type Reporting record {
    # Refers to the content record provided by the external service provider in whatever form suitable
    common:Report FinancialMarketInformationReport?;
    # >
    # * `FinancialReport` - 
    # * `BusinessReport` - 
    # * `ManagementReport` - 
    # * `Statement` - 
    # * `MaintenanceReport` - 
    # * `RegulatoryReport` - 
    # * `TaxReport` - 
    # * `AnalysisReport` - 
    common:Reporttypevalues FinancialMarketInformationReportType?;
    # Is a detailed definition of the report contents, including properties that clarify the quality/integrity and timeliness of the content
    string FinancialMarketInformationReportDescription?;
    # Is the schedule for maintaining the report content
    common:Schedule FinancialMarketInformationReportSchedule?;
    # Is a log/record of access made to the report by bank users
    string FinancialMarketInformationReportAccessHistory?;
};

# Handle and assign the day to day activities, capture time, costs and income for an operational unit within Market Information Management. 
public type FinancialMarketInformationAdministrativePlan record {
    # Reference to the external sources of financial market information. Can be an ongoing service or some form of report
    FinancialMarketInformationService FinancialMarketInformationService?;
    # Reference to an entity that assigns and manages the identification.
    # tReference to the organization or agency that issued the identifier (e.g., DMV, Passport Office).
    common:Involvedparty FinancialMarketInformationProvider?;
    # Defines the scope/content of the financial market information
    string FinancialMarketinformationDescription?;
    # >
    # * `AdvisoryService` - A classification that distinguishes between instances of Information Services according to purpose of advising the destinee of the information.
    #
    # Advisory is the contracted service to deliver customized advice (once or regularly) in a specific way and for a specific purpose. This service is explicitly negotiated and agreed upon and therefore essentially different from a selling service. This does not mean that it should be priced separately as it can be integrated in a total offer towards clients. Advisory are all products that can be classified as decision support for the clients. In this sense there is an overlap with selling services as some selling services are also advisory although not (always) negotiated.
    #
    # Includes following services (e.g.)
    # 1. Key Plan/Vario Plan
    # 2. Financial Advisory
    # 3. SME Advisory 
    # 4. Portfolio Management
    # 5. Client Care 
    # 6. Subsidies Advisory
    #
    # Generic Services are:
    # 1. Information Build
    # This is the service where for the specific purpose of decision support, data is transformed to information that is structured in a way that the client can easily understand and overview his situation. E.g. a consolidated portfolio overview or a risk profile of the client
    # 2. Knowledge Build
    # The service where information is built into knowledge. Included are all analysis methods that give a client an in-depth knowledge of his (benchmarked) position. E.g. All different tools for risk analysis and portfolio ratios.
    # 3. Personalized Advice
    # Build on information about the clients situation and an analysis, a personalized advice can be delivered. An advice is the description of the actions that the client can take to optimize his position. E.g. advice to align portfolio on risk profile.
    #
    #
    # * `ReportingService` - A classification that distinguishes between instances of Information Services according to purpose of reporting with regard to operational and managerial aspects of banking product or service agreements, relations, portfolio's, etc.
    #
    # Reporting are all the services, linked to a specific product or to the whole of the product portfolio that clients have bought. 
    #
    # Includes following services (e.g.)
    # 1. Statement (Transactional Overview)
    # 2. Balance Inquiry
    # 3. Portfolio (Position Overview)
    # 4. GSM alerts
    #
    # Generic Services are:
    # 1. Transactions Reporting
    # The reporting of all transactions that are done on the level of a client or a product (account). Distinction should be made for all channels that are used for the transactions.
    # 2. Position Reporting
    # The reporting of the (balance) position of an account or a set of accounts.
    # 3. Event Reporting
    # This service is linked to both services above. If a transaction cannot be executed because insufficient balance on the account is one example of an event.  This event reporting can be configured by the client.
    # * `FinancialInformationService` - 
    Informationservicetypevalues FinancialMarketInformationServiceType?;
    # Is the schedule for maintaining the report content
    common:Schedule FinancialMarketInformationServiceSchedule?;
    # Reference to any agreement covering access to the external service
    ServiceAgreement FinancialMarketInformationServiceAgreement?;
    # Refers to the consolidated financial market information that is enhanced/improved by the bank for internal reference. This is a collection of different subject areas for which a bank perspective is maintained
    string FinancialMarketInformationDatabase?;
    # Refers to a maintained subject area
    common:Subject FinancialMarketInformationSubjectArea?;
    # A description of the information content of the subject area
    string FinancialMarketInformationSubjectAreaDescription?;
    # A record of the update history of the content
    string FinancialMarketInformationSubjectAreaUpdateHistory?;
    # Refers to a maintained subject area
    common:Subject FinancialMarketInformationSubjectAreaRecord?;
};
