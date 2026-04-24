import financial.bian.attribute.groups.common as common;

import ballerina/http;

# Oversee the working of a business unit, assign work, manage against a plan and troubleshoot issues within Advanced Voice Services Management.
public type VoiceChannelManagementPlan record {
    # The period covered by the analysis (from to date time)
    common:Datetimeperiod VChannelManagementPlanPeriod?;
    # The channel policies and guidelines for service users
    common:RuleSet VChannelUsagePoliciesAndGuidelines?;
    # The default channel service configuration (Note this can be updated during operations with service calls to the channel operations service domain)
    common:Arrangement VChannelServiceOperatingParameters?;
    # The target and expected performance goals for the channel service
    common:Goal VChannelServicePerformanceGoals?;
    # Planned platform maintenance and upgrade tasks (includes release and capacity upgrades)
    common:Schedule VChannelServiceSchedule?;
};

public type MaintenanceAndUpgradesOk record {|
    *http:Ok;
    # body
    MaintenanceAndUpgrades body;
|};

# A collection of one or more responsibilities or tasks under management
#
# Examples: Relationship development, Troubleshooting
public type MaintenanceAndUpgrades record {
    # Planned platform maintenance and upgrade tasks (includes release and capacity upgrades)
    common:Schedule VChannelMaintenanceandUpgradeSchedule?;
    # The type of work task (e.g. scheduled maintenance, version release, platform upgrade)
    string VChannelMaintenanceandUpgradeWorkTaskType?;
    # The make-up of the channel platform task performed, includes work plan, assignments, effort/expenditures and deliverables as appropriate
    common:Task VChannelMaintenanceandUpgradeWorkTask?;
    # File of consolidated work notes, testing results, agreements etc. for the work task
    common:Workproduct VChannelMaintenanceandUpgradeWorkTaskWorkProducts?;
    # The make-up of the channel platform task performed, includes work plan, assignments, effort/expenditures and deliverables as appropriate
    common:Task VChannelMaintenanceandUpgradeWorkTaskResult?;
    # The date when the identifier became valid.
    common:Datetime VChannelMaintenanceandUpgradeWorkTaskDateandTime?;
};

public type VoiceChannelManagementPlanOk record {|
    *http:Ok;
    # body
    VoiceChannelManagementPlan body;
|};

# A collection of one or more responsibilities or tasks under management
#
# Examples: Relationship development, Troubleshooting
public type CapacityPlanning record {
    # Record of the channel resource utilization and loading
    string VChannelPlatformUtilization?;
    # Estimated projected resource utilization and loading based on historical patterns and anticipated activity - used to identify the need for capacity upgrades
    string VChannelLoadingProjections?;
};
