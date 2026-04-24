import financial.bian.attribute.groups.common as common;

import ballerina/http;

public type PricingTermsOk record {|
    *http:Ok;
    # body
    PricingTerms body;
|};

# Capture and maintain reference information about some type of entitity  within Special Pricing Conditions.
public type SpecialPricingConditionsDirectoryEntry record {
    # Documentation of Special Pricing Conditions Directory Entry
    string SpecialPricingConditionsDirectoryEntryDescription?;
    # The schedule and timing for which the property value is valid
    common:Schedule SpecialPricingConditionsDirectoryEntrySchedule?;
    # The version of Special Pricing Conditions Directory Entry
    # SpecialPricingConditionsDirectoryEntryVersion
    string SpecialPricingConditionsDirectoryEntryVersion?;
    # SpecialPricingConditionsDirectoryEntryStatus
    common:Status SpecialPricingConditionsDirectoryEntryStatus?;
    # Reference to the log of (usage) ativities/events  of Special Pricing Conditions Directory Entry
    # SpecialPricingConditionsDirectoryEntryUsageLog
    common:Log SpecialPricingConditionsDirectoryEntryUsageLog?;
    # Reference to the log of (usage) ativities/events  of Special Pricing Conditions Directory Entry
    # SpecialPricingConditionsDirectoryEntryUpdateLog
    common:Log SpecialPricingConditionsDirectoryEntryUpdateLog?;
    # The configuration of Special Pricing Conditions Directory Entry
    # SpecialPricingConditionsDirectoryEntryServiceConfiguration
    common:Arrangement SpecialPricingConditionsDirectoryEntryServiceConfiguration?;
};

# The Pricing Terms properties that represent a discrete aspect of the Pricing Terms
public type PricingTerms record {
    # The required status/situation before the property is valid/meaningful
    common:Condition Preconditions?;
    # The schedule and timing for which the property value is valid
    # Schedule
    common:Schedule Schedule?;
    # The version reference for the property value
    # VersionNumber
    string VersionNumber?;
    # The Pricing Terms specific  Business Service
    common:BusinessService BusinessService?;
    # The identifier of Condition
    # PricingTermsReference
    common:Identifier PricingTermsReference?;
    # The type of Pricing Terms
    # PricingTermsType
    string PricingTermsType?;
};

public type SpecialPricingConditionsDirectoryEntryOk record {|
    *http:Ok;
    # body
    SpecialPricingConditionsDirectoryEntry body;
|};

