import financial.bian.attribute.groups.common as common;

import ballerina/http;

public type ResiliencyandPerformanceChecksOk record {|
    *http:Ok;
    # body
    ResiliencyandPerformanceChecks body;
|};

public type ProcessingErrorandIntegrityChecksOk record {|
    *http:Ok;
    # body
    ProcessingErrorandIntegrityChecks body;
|};

# The Processing Error and Integrity Checks test is one aspect that can be intergrated into the overall Processing Error and Integrity Checks
public type UsabilityChecks record {
    # The required status/situation before the test can be applied
    common:Condition Preconditions?;
    # The schedule and timing of the testing performed
    common:Schedule Schedule?;
    # The test version employed
    string VersionNumber?;
    # The Processing Error and Integrity Checks specific Business Service
    common:BusinessService BusinessService?;
    # Reference to Processing Error and Integrity Checks
    common:Assessment ProductandServiceAssessmentReference?;
    # Reference to Processing Error and Integrity Checks
    common:Test UsabilityChecksReference?;
    # The type of Usability Checks
    string UsabilityChecksType?;
};

# To test or assess an entity, possibly against some formal qualification or certification requirement within Product Quality Assurance. 
public type ProductandServiceAssessment record {
    # A Classification value that distinguishes between Assessments according to type of concern defined within Productand Service Assessment .
    string ProductandServiceAssessmentParameterType?;
    # A selected optional business service as subject matter of Productand Service Assessment
    common:Service ProductandServiceAssessmentSelectedOption?;
    # The type of Productand Service Assessment
    string ProductandServiceAssessmentType?;
    # Reference to Processing Error and Integrity Checks
    common:Assessment ProductandServiceAssessmentReference?;
    # Request to assess
    common:Instruction ProductandServiceAssessmentRequest?;
    # The schedule and timing of the testing performed
    common:Schedule ProductandServiceAssessmentSchedule?;
    # Status of the product and service assessment
    common:Status ProductandServiceAssessmentStatus?;
    # Usage log of the product and service assessment
    common:Log ProductandServiceAssessmentUsageLog?;
    # Reference to an entity that assigns and manages the identification.
    # tReference to the organization or agency that issued the identifier (e.g., DMV, Passport Office).
    common:Involvedparty ProductandServiceAssessmentRequesterReference?;
    # Reference to an entity that assigns and manages the identification.
    # tReference to the organization or agency that issued the identifier (e.g., DMV, Passport Office).
    common:Involvedparty ProductandServiceAssessmentAssociatedParty?;
    # Reference to an entity that assigns and manages the identification.
    # tReference to the organization or agency that issued the identifier (e.g., DMV, Passport Office).
    common:Involvedparty ProductandServiceAssessmentServiceProviderReference?;
};

# The Processing Error and Integrity Checks test is one aspect that can be intergrated into the overall Processing Error and Integrity Checks
public type FunctionalConsistencyChecks record {
    # The required status/situation before the test can be applied
    common:Condition Preconditions?;
    # The schedule and timing of the testing performed
    common:Schedule Schedule?;
    # The test version employed
    string VersionNumber?;
    # The Processing Error and Integrity Checks specific Business Service
    common:BusinessService BusinessService?;
    # Reference to Processing Error and Integrity Checks
    common:Assessment ProductandServiceAssessmentReference?;
    # Reference to Processing Error and Integrity Checks
    common:Test FunctionalConsistencyChecksReference?;
    # The type of Functional Consistency Checks
    string FunctionalConsistencyChecksType?;
};

public type FunctionalConsistencyChecksOk record {|
    *http:Ok;
    # body
    FunctionalConsistencyChecks body;
|};

public type ProductandServiceAssessmentOk record {|
    *http:Ok;
    # body
    ProductandServiceAssessment body;
|};

# The Processing Error and Integrity Checks test is one aspect that can be intergrated into the overall Processing Error and Integrity Checks
public type ProcessingErrorandIntegrityChecks record {
    # The required status/situation before the test can be applied
    common:Condition Preconditions?;
    # The schedule and timing of the testing performed
    common:Schedule Schedule?;
    # The test version employed
    string VersionNumber?;
    # The Processing Error and Integrity Checks specific Business Service
    common:BusinessService BusinessService?;
    # Reference to Processing Error and Integrity Checks
    common:Assessment ProductandServiceAssessmentReference?;
    # Reference to Processing Error and Integrity Checks
    common:Test ProcessingErrorandIntegrityChecksReference?;
    # The type of Processing Error and Integrity Checks
    string ProcessingErrorandIntegrityChecksType?;
};

public type UsabilityChecksOk record {|
    *http:Ok;
    # body
    UsabilityChecks body;
|};

# The Processing Error and Integrity Checks test is one aspect that can be intergrated into the overall Processing Error and Integrity Checks
public type ResiliencyandPerformanceChecks record {
    # The required status/situation before the test can be applied
    common:Condition Preconditions?;
    # The schedule and timing of the testing performed
    common:Schedule Schedule?;
    # The test version employed
    string VersionNumber?;
    # The Processing Error and Integrity Checks specific Business Service
    common:BusinessService BusinessService?;
    # Reference to Processing Error and Integrity Checks
    common:Assessment ProductandServiceAssessmentReference?;
    # Reference to Processing Error and Integrity Checks
    common:Test ResiliencyandPerformanceChecksReference?;
    # The type of Resiliency and Performance Checks
    string ResiliencyandPerformanceChecksType?;
};
