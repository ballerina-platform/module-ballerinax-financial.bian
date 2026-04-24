import financial.bian.attribute.groups.common as common;

import ballerina/http;

public type ContactCenterManagementPlanOk record {|
    *http:Ok;
    # body
    ContactCenterManagementPlan body;
|};

# A collection of one or more responsibilities or tasks under management
#
# Examples: Relationship development, Troubleshooting
public type Performance record {
    # Record of the contact center position target and actual utilization
    string ContactCenterPositionUtilization?;
    # Estimated projected contact center resource requirements and utilization and loading based on historical patterns and anticipated activity
    string ContactCenterLoadingProjections?;
    # Tracked activity and performance statistics used to manage the contact center set-up and to inform staff training
    string ContactCenterServiceStatistics?;
    # The type of activity that is tracked and analyzed (e.g. wait time, average handle time, dropped call ratio, resolution rate)
    string ContactCenterServiceStatisticType?;
    # The statistical analysis that can include historical and trended views of the activity
    common:Amount ContactCenterServiceStatisticValue?;
    # The evaluation of the root cause or comparative assessments of the analysis
    string ContactCenterServiceStatisticInterpretation?;
    # Service/configuration amendment recommendations arising from the statistical analysis
    string ContactCenterServiceStatisticRecommendation?;
};

# Oversee the working of a business unit, assign work, manage against a plan and troubleshoot issues within Contact Center Management.
public type ContactCenterManagementPlan record {
    # The time period addressed by the management plan (typically this will include setting the default daily operating goals and arrangements for the contact center that is periodically updated)
    common:Datetimeperiod ContactCenterManagementPlanPeriod?;
    # The policies and guidelines for contact center employees and service users
    common:RuleSet ContactCenterUsagePoliciesAndGuidelines?;
    # The target and actual service performance goals that are tracked by contact center management
    common:Goal ContactCenterServicePerformanceGoals?;
    # The target and actual contact center service schedule - recording planned and actual service availability and outages (includes any partial service access constraints or restrictions for a 24/7 service)
    common:Schedule ContactCenterServiceSchedule?;
    # The default contact center operational configuration (Note this can include some latitude for position assignment changes to be made during day to day operations with service calls to the Contact Center Operations service domain)
    common:Arrangement ContactCenterServiceOperatingConfiguration?;
    # Details the number and skill profile of the contact center staff (target and actual)
    common:Plan ContactCenterResourcePlan?;
    # Details the number and skill profile of the contact center staff (target and actual)
    common:Plan ContactCenterTrainingPlan?;
};
