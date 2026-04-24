import financial.bian.attribute.groups.common as common;

import ballerina/http;

public type SWUpdateOk record {|
    *http:Ok;
    # body
    SWUpdate body;
|};

public type BroadcastOk record {|
    *http:Ok;
    # body
    Broadcast body;
|};

public type ContactOk record {|
    *http:Ok;
    # body
    Contact body;
|};

# The collection of operational serivces/functions offered by the operational facility
#
# Examples: messages, capture, routines
public type Broadcast record {
    # Text of the broadcast message
    string CustomerWorkbenchBroadcastRecord?;
    # Date and time at which the range starts. (ISO20022)
    common:Datetime CustomerWorkbenchBroadcastRecordDateandTime?;
};

public type ProductandServiceAccessOk record {|
    *http:Ok;
    # body
    ProductandServiceAccess body;
|};

# Operate equipment and/or a largely automated facility within Customer Workbench. 
public type CustomerWorkbenchOperatingSession record {
    # Reference to an entity that assigns and manages the identification.
    # tReference to the organization or agency that issued the identifier (e.g., DMV, Passport Office).
    common:Involvedparty CustomerReference?;
    # >
    # * `Securecardreader` - Secure card reader attached to the customer device
    # * `Nonsecurecardreader` - Non-secure card reader attached to the customer device.
    # * `Mobile` - Mobile phone
    # * `Tablet` - Tablet
    # * `Personalcomputer` - Personal computer
    # * `Othernational` - Other device defined at national level
    # * `Otherprivate` - Other device defined in a private way.
    # * `Wearable` - Wearable device.
    # * `Vehicle` - Vehicle.
    # * `Embedded` - Embedded in a device.
    # * `Keyfob` - Key Fob
    # * `Jewellery` - Jewellery
    # * `Sticker` - Sticker
    # * `Gamingdevice` - Gaming Device
    # * `Watch` - Watch
    # * `Unknown` - Device type unknown
    # * `BiometricDevice` - A biometric device is a security identification and authentication device. Such devices use automated methods of verifying or recognising the identity of a living person based on a physiological or behavioral characteristic.
    # https://en.wikipedia.org/wiki/Biometric_device
    #
    common:Devicetypevalues CustomerWorkbenchDeviceType?;
    # Reference to device properties used to identify the device  (e.g. URL, ANI, serial number)
    string CustomerWorkbenchDeviceRegistration?;
    # The make of the device if known
    string CustomerWorkbenchDeviceManufacturer?;
    # The operating system type and version (use to match downloaded software)
    string CustomerWorkbenchDeviceOperatingSystemVersionNumber?;
    # The bank's access permissions (e.g. local storage access, administrator permissions, system download permission)
    common:Arrangement CustomerWorkbenchDeviceAccessPermissions?;
    # Details of the local bank applications
    string InstalledBankApplicationType?;
    # The version number(s) of device resident bank software
    string InstalledBankApplicationVersionNumber?;
    # The last update date time stamp for local bank software
    string LastUpdateDateandTime?;
};

# The collection of operational serivces/functions offered by the operational facility
#
# Examples: messages, capture, routines
public type ProductandServiceAccess record {
    # Locally maintained values used for auto-fill and local validation
    string CustomerDetailsPreferences?;
    # Locally maintained structured dialogue to access bank services as appropriate
    string ProductandServiceMenu?;
    # Locally record of product/service screen access
    common:Log ProductandServiceMenuAccessLog?;
    # Date and time at which the range starts. (ISO20022)
    common:Datetime AccessStartEndTime?;
    # Local copies of requested information, application forms etc.
    string CustomerResidentFiles?;
};

# The collection of operational serivces/functions offered by the operational facility
#
# Examples: messages, capture, routines
public type Browsing record {
    # The device URL can be used to detect known and repeat customer access
    string CustomerURL?;
    # The access URL to the public web based bank information
    string BankWebsiteURL?;
};

# The collection of operational serivces/functions offered by the operational facility
#
# Examples: messages, capture, routines
public type SWUpdate record {
    # The name of the bank application that is downloaded
    string SWUpdateApplication?;
    # The version number downloaded
    string SWUpdateVersion?;
    # The downloaded executable image
    string SWUpdateImage?;
    # Date and time at which the range starts. (ISO20022)
    common:Datetime Date?;
};

public type BrowsingOk record {|
    *http:Ok;
    # body
    Browsing body;
|};

# The collection of operational serivces/functions offered by the operational facility
#
# Examples: messages, capture, routines
public type Contact record {
    # Date and time at which the range starts. (ISO20022)
    common:Datetime ContactStartEndTime?;
    # Locally record of product/service screen access
    common:Log ContactActivityLog?;
};

public type CustomerWorkbenchOperatingSessionOk record {|
    *http:Ok;
    # body
    CustomerWorkbenchOperatingSession body;
|};
