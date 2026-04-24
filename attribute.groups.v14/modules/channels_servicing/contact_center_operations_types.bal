import financial.bian.attribute.groups.common as common;

import ballerina/http;

# A collection of one or more clerical routines that are to be followed to administer the operational unit/function
#
# Examples: Time-sheet recording
public type PeakLoad record {
    # Tracked activity and performance statistics used to manage the contact center resource assignments and menu configuration
    string ContactCenterServiceStatistics?;
    # The type of activity that is tracked and analyze (e.g. wait time, average handle time, dropped call ratio, resolution rate)
    string ContactCenterServiceStatisticType?;
    # The task undertaken to address a detected peak load condition
    common:Task PeakLoadResponseTask?;
    # The type of response (e.g. staff reassignment)
    string PeakLoadResponseTaskType?;
    # Description of the action taken and impact to service performance
    string PeakLoadResponseDescription?;
};

public type AssignmentOk record {|
    *http:Ok;
    # body
    common:Assignment body;
|};

# Handle and assign the day to day activities, capture time, costs and income for an operational unit within Contact Center Operations. 
public type ContactCenterAdministrativePlan record {
    # The default contact center operational configuration as defined by Contact Center Management (Note this can include some latitude for position assignment changes to be made during day to day operations by this service domain)
    common:Arrangement ContactCenterServiceOperatingConfiguration?;
    # Planned and actual servicing activity at the position during the session (records inbound contact details and allows for pre-assigned servicing actions e.g. outbound customer contacts for issue resolution/sales)
    common:Schedule CustomerServicingRepresentativeAllocationSchedule?;
    # Reference to the servicing representative
    common:Involvedparty CustomerServicingRepresentativeReference?;
    # Reference to the servicing representative
    common:Involvedparty CustomerServicingRepresentativeRecord?;
    # Details any specific properties for the assigned servicing position (e.g. type of product/service covered, required qualifications/certifications/experience)
    common:Profile CustomerServicingRepresentativeQualificationProfile?;
    # Reference to the locations the customer servicing representative can work from (can include remote working arrangements and time zone availability)
    common:Address CustomerServicingRepresentativeLocation?;
    # Planned and actual servicing activity at the position during the session (records inbound contact details and allows for pre-assigned servicing actions e.g. outbound customer contacts for issue resolution/sales)
    common:Schedule CustomerServicingRepresentativeAvailabilitySchedule?;
    # The tracked status (e.g. under construction or repair, inhabited, vacant).
    common:Status CustomerServicingRepresentativeStatus?;
    # A collection of one or more clerical routines that are to be followed to administer the operational unit/function
    #
    # Examples: Time-sheet recording
    common:Assignment CustomerServicingRepresentativeAssignmentRecord?;
};

public type ContactCenterAdministrativePlanOk record {|
    *http:Ok;
    # body
    ContactCenterAdministrativePlan body;
|};
