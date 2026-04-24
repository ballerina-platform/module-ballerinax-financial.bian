import financial.bian.attribute.groups.common as common;

import ballerina/http;

# The outcome of the compliance check
public type compliancecheck record {
    # The type of compliance check performed
    string ComplianceCheckType?;
};

# Execute a well-bounded financial transaction/task, typically involving largely automated/structured fulfillment processing within Market Order. 
public type MarketOrderTransaction record {
    # The type of market order request (e.g. Managed Investment, Corporate Finance) ||
    # |
    common:Instructiontypevalues MarketOrderInstructionType?;
    # The employee/business unit placing the market order ||
    # |
    common:involvedparty CustomerReference?;
    # The employee/business unit placing the market order ||
    # |
    common:involvedparty EmployeeorBusinessUnitReference?;
    # Reference to the underlying cash account supporting the transaction GenericIdentification|GenericIdentification (https://www.iso20022.org/standardsrepository/type/GenericIdentification)|Standard|ISO20022 BM ()
    common:identifier InvestmentPortfolioInstanceReference?;
    # Any customer specific processing preferences or requirements ||
    # |
    common:Instruction CustomerMarketOrderProcessingInstruction?;
    # The document reference for the order confirmation notice ||
    # |
    common:documentdirectoryentry DocumentDirectoryEntryInstanceReference?;
    # Reference to the underlying cash account supporting the transaction GenericIdentification|GenericIdentification (https://www.iso20022.org/standardsrepository/type/GenericIdentification)|Standard|ISO20022 BM ()
    common:identifier CorrespondenceInstanceReference?;
    # The details of the market order transaction ||
    # |
    common:marketordertransaction MarketOrderTransaction?;
    # Reference to the underlying cash account supporting the transaction GenericIdentification|GenericIdentification (https://www.iso20022.org/standardsrepository/type/GenericIdentification)|Standard|ISO20022 BM ()
    common:identifier InvestmentAccountArrangementInstanceReference?;
    # Reference to the underlying cash account supporting the transaction GenericIdentification|GenericIdentification (https://www.iso20022.org/standardsrepository/type/GenericIdentification)|Standard|ISO20022 BM ()
    common:identifier CurrentAccountArrangementInstanceReference?;
    # The type of market order (e.g. Day Order. Order on Open/Close, Fill or Kill, Limit Order) ||
    # |
    common:text MarketOrderType?;
    # The security to be traded ||
    # |
    common:Securitytypevalues SecurityType?;
    # The volume of shares to be bought or sold CurrencyAndAmount|CurrencyAndAmount (https://www.iso20022.org/standardsrepository/type/CurrencyAndAmount)|Standard|ISO20022  ()
    common:amount Amount?;
    # Key dates associated with the transaction (e.g. order capture, trade execution, order completion) ||
    # |
    common:datetimetypevalues DateType?;
    # Value of the specific date type ISODateTime|ISODateTime (https://www.iso20022.org/standardsrepository/type/ISODateTime)|Standard|ISO20022 BM ()
    common:datetime Date?;
};

public type MarketOrderTransactionOk record {|
    *http:Ok;
    MarketOrderTransaction body;
|};

# >
# * `RegulatoryComplianceCheck` - 
# * `LegalComplianceCheck` - 
# * `GuidelineComplianceCheck` - 
public type compliancechecktypevalues "RegulatoryComplianceCheck"|"LegalComplianceCheck"|"GuidelineComplianceCheck";

# The outcome of the funds available check
public type fundingcheck record {
    # An assessment to check the fund is available
    string FundingCheck?;
};
