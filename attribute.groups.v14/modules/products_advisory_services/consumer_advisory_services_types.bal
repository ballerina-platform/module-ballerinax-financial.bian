import financial.bian.attribute.groups.common as common;

import ballerina/http;

# Fulfill any scheduled and ad-hoc obligations under a service arrangement, most typically for a financial product or facility within Consumer Advisory Services. 
public type ConsumerAdviceFacility record {
    # Reference to the advisory service session ||
    # |
    productagreement ProductInstanceReference?;
    # Business unit and or employee reference to the source of the financial advice ||
    # |
    common:involvedparty CustomerReference?;
    # Bank branch associated with the customer account/relationship for booking purposes ||
    # |
    common:branchlocation BankBranchLocationReference?;
    # Business unit and or employee reference to the source of the financial advice ||
    # |
    common:involvedparty EmployeeorBusinessUnitReference?;
    # File of consolidated notes, forms and documents for the advisory session ||
    # |
    common:workproduct ConsumerAdviceWorkProducts?;
    # The document reference for associated documents such as disclosures and acceptance records ||
    # |
    common:documentdirectoryentry DocumentDirectoryEntryInstanceReference?;
    # Target and actual dates for tasks performed (includes any specialist sessions) ||
    # |
    common:schedule ConsumerAdviceSessionSchedule?;
    # Details the types of consumer advice that are combined into the overall evaluation ||
    # |
    profile ConsumerAdviceProfile?;
    # Reference to the different types of advice ||
    # |
    common:text AdviceType?;
    # The combination of the different customer advisory assessments provided to the customer
    string ConsumerAdviceConsolidationRecord?;
    # Key dates and times associated with the advisory session (e.g. booking date, start date/time) ||
    # |
    common:datetimetypevalues DateType?;
    # Value of the date type ISODateTime|ISODateTime (https://www.iso20022.org/standardsrepository/type/ISODateTime)|Standard|ISO20022 BM ()
    common:datetime Date?;
};

# >
# * `ITService` - 
# * `AdministrativeService` - 
# * `SystemService` - 
# * `FinancialService` - 
# * `InformationService` - 
# * `BusinessService` - 
public type servicetypevalues "ITService"|"AdministrativeService"|"SystemService"|"FinancialService"|"InformationService"|"BusinessService";

# Reference to the advisory service session ||
# |
public type productagreement record {
    # >
    # * `CurrentAccountAgreement` - 
    # * `SavingsAccountAgreement` - 
    # * `BrokeredProductAgreement` - 
    # * `ConsumerLoanAgreement` - 
    # * `MortgageLoanAgreement` - 
    # * `DirectDebitServiceAgreement` - 
    # * `TermDepositAgreement` - 
    productagreementtypevalues ProductAgreementType?;
};

# >
# * `CurrentAccountAgreement` - 
# * `SavingsAccountAgreement` - 
# * `BrokeredProductAgreement` - 
# * `ConsumerLoanAgreement` - 
# * `MortgageLoanAgreement` - 
# * `DirectDebitServiceAgreement` - 
# * `TermDepositAgreement` - 
public type productagreementtypevalues "CurrentAccountAgreement"|"SavingsAccountAgreement"|"BrokeredProductAgreement"|"ConsumerLoanAgreement"|"MortgageLoanAgreement"|"DirectDebitServiceAgreement"|"TermDepositAgreement";

# Details the types of consumer advice that are combined into the overall evaluation ||
# |
public type profile record {
    # A brief description of the characteristics of something or someone. (Business Dictionary)
    string Profile?;
};

# The product features/services available with a financical facility
public type FinancialPlanning record {
    # Reference to the financial planning advisory service (used to access guidance materials)
    'service ProductandServiceReference?;
    # Reference to the different types of advice ||
    # |
    common:text FinancialPlanningAdviceResult?;
};

public type ProductGuidanceOk record {|
    *http:Ok;
    ProductGuidance body;
|};

public type 'service record {
    common:name ServiceName?;
    common:text ServiceDescription?;
    servicetypevalues ServiceType?;
    common:identifier ServiceIdentification?;
    common:status ServiceLifecycleStatus?;
    common:feature ServiceFeature?;
};

# The product features/services available with a financical facility
public type ProductGuidance record {
    # Reference to the financial planning advisory service (used to access guidance materials)
    'service ProductandServiceReference?;
    # A record of engaging a product specialist to liaise with the customer
    common:task SpecialistSupportTask?;
    # Business unit and or employee reference to the source of the financial advice ||
    # |
    common:involvedparty SpecialistEmployeeorBusinessUnitReference?;
    # Reference to the different types of advice ||
    # |
    common:text SpecialistAdviceDescription?;
    # The derived fee amount to be charged
    common:feearrangement SpecialistAdviceCharge?;
    # Reference to the different types of advice ||
    # |
    common:text ProductGuidanceAdviceResult?;
};

# >
# * `FinancialTransaction` - 
# * `BusinessTransaction` - 
# * `BankingTransaction` - 
# * `AccountingTransaction` - 
# * `BookingTransaction` - 
# * `AllocationTransaction` - 
# * `DeliveryTransaction` - 
# * `ProductionTransaction` - 
public type transactiontypevalues "FinancialTransaction"|"BusinessTransaction"|"BankingTransaction"|"AccountingTransaction"|"BookingTransaction"|"AllocationTransaction"|"DeliveryTransaction"|"ProductionTransaction";

public type FinancialPlanningOk record {|
    *http:Ok;
    FinancialPlanning body;
|};

public type ConsumerAdviceFacilityOk record {|
    *http:Ok;
    ConsumerAdviceFacility body;
|};
