import financial.bian.attribute.groups.common as common;

import ballerina/http;

# Oversee the working of a business unit, assign work, manage against a plan and troubleshoot issues within eBranch Management.
public type eBranchChannelManagementPlan record {
    # The time period addressed by the management plan
    common:Datetimeperiod eBranchChannelManagementPlanPeriod?;
    # The channel policies and guidelines for service users
    common:RuleSet eBranchChannelUsagePoliciesAndGuidelines?;
    # The default channel service configuration (Note this can be updated during operations with service calls to the channel operations service domain)
    common:Arrangement eBranchChannelServiceOperatingParameters?;
    # The target and actual service performance goals that are tracked by channel management
    common:Goal eBranchChannelServicePerformanceGoals?;
    # Planned platform maintenance and upgrade tasks (includes release and capacity upgrades)
    common:Schedule eBranchChannelServiceSchedule?;
};

public type EBranchChannelManagementPlanOk record {|
    *http:Ok;
    # body
    eBranchChannelManagementPlan body;
|};
