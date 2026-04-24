import financial.bian.attribute.groups.common as common;

import ballerina/http;

public type SalesSpecialistSupportAdministrativePlanOk record {|
    *http:Ok;
    # body
    SalesSpecialistSupportAdministrativePlan body;
|};

public type AssignmentOk record {|
    *http:Ok;
    # body
    common:Assignment body;
|};

# Reference to a sales specialist support resource
public type Resource record {
    # ResourceStatus
    string ResourceStatus?;
    # ResourceAvailabilitySchedule
    string ResourceAvailabilitySchedule?;
    # ResourceLocation
    string ResourceLocation?;
    # ResourceQualificationProfile
    string ResourceQualificationProfile?;
};

# Handle and assign the day to day activities, capture time, costs and income for an operational unit within Product Expert Sales Support. 
public type SalesSpecialistSupportAdministrativePlan record {
    # A schedule which is specified the first payment, last payment, next payment, etc. for a standing orde.
    common:Schedule SalesSpecialistSupportResourceAllocationServiceSchedule?;
    # Reference to a sales specialist support resource
    # SalesSpecialistSupportResourceReference
    Resource SalesSpecialistSupportResourceReference?;
    # Reference to a sales specialist support resource
    Resource SalesSpecialistSupportResourceRecord?;
    # Details the qualification, expertise and level of experience of a servicing specialist
    common:Profile SalesSpecialistSupportResourceQualificationProfile?;
    # SalesSpecialistSupportLocationReference
    common:Location SalesSpecialistSupportLocationReference?;
    # SalesSpecialistSupportResourceAvailabilitySchedule
    common:Schedule SalesSpecialistSupportResourceAvailabilitySchedule?;
    # SalesSpecialistSupportResourceStatus
    common:Status SalesSpecialistSupportResourceStatus?;
    # SalesSpecialistSupportResourceAssignmentRecord
    common:Assignment SalesSpecialistSupportResourceAssignmentRecord?;
};

