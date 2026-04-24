import financial.bian.attribute.groups.common as common;

import ballerina/http;

# Set of rules for the purpose of deciding if or if not something is applicable
#
# Examples: Staff assignment, Facility allocation.
public type Allocation record {
    # Defines the type of allocation (e.g. next available, qualification based, future reservation)
    string AllocationRequestType?;
    # Contains details of servicing resource request. This can be simple for next available agent, or detail specific required qualifications and expertise
    common:Instruction CustomerServicingRequestRecord?;
    # Extracts from the active contact can be used to support more advance selection logic to identify the best available servicing specialist resource
    common:CustomerContact CustomerContactRecord?;
    # The result of the allocation task
    common:Task AllocationTaskResult?;
};

# Maintain an inventory or holding of some resource and make assignments/allocations as requested  within Contact Routing. 
# Example: Track the inventory and administer the distribution of central cash holdings throughout the branch & ATM network.
public type CustomerServicingResourceAllocation record {
    # The schedule of past and planned customer contacts
    common:Schedule ServicingResourceAllocationServiceSchedule?;
    # Reference to a servicing resource
    common:ServicingResource ServicingResourceReference?;
    # Reference to a servicing resource
    common:ServicingResource ServicingResourceRecord?;
    # Details the qualification, expertise and level of experience of a servicing specialist
    common:Profile ServicingResourceQualificationProfile?;
    # Reference to the assigned servicing position for the resource for the current session
    common:Position ServicingPositionReference?;
    # The schedule of past and planned customer contacts
    common:Schedule ServicingResourceAvailabilitySchedule?;
    # ServicingResourceStatus
    common:Status ServicingResourceStatus?;
    # Reference to a servicing session assignments made
    common:Session ServicingSessionReference?;
};

public type CustomerServicingResourceAllocationOk record {|
    *http:Ok;
    # body
    CustomerServicingResourceAllocation body;
|};
