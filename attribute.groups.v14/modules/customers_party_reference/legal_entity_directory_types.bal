import financial.bian.attribute.groups.common as common;

import ballerina/http;

# Capture and maintain reference information about some type of entitity within Legal Entity Directory.
public type LegalEntityDirectoryEntry record {
    # Reference the parent entity if applicable
    common:Organisation LegalEntityReference?;
    # Reference to the associated entity (e.g. company or individual)
    # PartyReference
    common:Party PartyReference?;
    # >
    # * `MaturityDate` - 
    # * `InitiatedDate` - 
    # * `RequestedDate` - 
    # * `ExecutedDate` - 
    # * `OpenDate` - 
    # * `CloseDate` - 
    # * `ExpiryDate` - 
    # * `EffectiveDate` - 
    # * `CreatingDate` - 
    # * `ActivationDate` - 
    # * `DeactivationDate` - 
    # * `BlockingDate` - 
    # * `SendingDate` - 
    # * `ValidFromDate` - 
    # * `ValidToDate` - 
    # * `ReceivingDate` - 
    # * `SigningDate` - 
    # * `DueDate` - 
    # * `ValueDate` - 
    # * `FulfillmentDate` - 
    # * `EntryDate` - 
    common:Datetimetypevalues DirectoryEntryDateType?;
    # DirectoryEntryDate
    common:Datetime DirectoryEntryDate?;
};

public type LegalEntityDirectoryEntryOk record {|
    *http:Ok;
    # body
    LegalEntityDirectoryEntry body;
|};

