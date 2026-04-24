import financial.bian.attribute.groups.common as common;

import ballerina/http;

# >
# * `CustomerAgreement` - 
# * `SupplierAgreement` - 
# * `BrokerAgreement` - 
# * `SalesAgreement` - 
# * `PurchaseAgreement` - 
# * `MaintenanceAgreement` - 
# * `ProductAgreement` - 
# * `ProductSalesAgreement` - 
# * `ResourceAgreement` - 
public type agreementtypevalues "CustomerAgreement"|"SupplierAgreement"|"BrokerAgreement"|"SalesAgreement"|"PurchaseAgreement"|"MaintenanceAgreement"|"ProductAgreement"|"ProductSalesAgreement"|"ResourceAgreement";

# Reference to the Customer Agreement that is related to Quotation Procedure Agreement_x000D_
# |Agreement (https://www.iso20022.org/standardsrepository/type/Agreement)|Standard|ISO20022 BM ()
public type agreement record {
    # Date on which the agreement was signed by all parties. (ISO20022)
    common:Date AgreementSignedDate?;
    # >
    # * `CustomerAgreement` - 
    # * `SupplierAgreement` - 
    # * `BrokerAgreement` - 
    # * `SalesAgreement` - 
    # * `PurchaseAgreement` - 
    # * `MaintenanceAgreement` - 
    # * `ProductAgreement` - 
    # * `ProductSalesAgreement` - 
    # * `ResourceAgreement` - 
    agreementtypevalues AgreementType?;
    # The period during which the agreement is valid.
    common:datetimeperiod AgreementValidityPeriod?;
    # The particular date and time point in the progression of time
    common:text AgreementVersion?;
    # A characteristic of agreement which refers to the LifecycleStatus of agreement (e.g., potential, offered, confirmed, completed, signed, terminated).
    agreementstatus AgreementStatus?;
    # The particular date and time point in the progression of time
    common:text AgreementSubjectMatter?;
    # The identifier of Condition
    common:identifier AgreementIdentification?;
    # The date on which the agreement was created.
    common:datetime AgreementDate?;
    # The particular date and time point in the progression of time
    common:text AgreementDescription?;
};

public type QuotationProcedureOk record {|
    *http:Ok;
    QuotationProcedure body;
|};

# A Classification value that distinguishes between the type of process undertaken within Procedure
public type proceduretypevalues record {
    # A Classification value that distinguishes between the type of process undertaken within Procedure
    string Proceduretypevalues?;
};

public type MarketQuoteSelectionOk record {|
    *http:Ok;
    MarketQuoteSelection body;
|};

# A characteristic of agreement which refers to the LifecycleStatus of agreement (e.g., potential, offered, confirmed, completed, signed, terminated).
public type agreementstatus record {
    # The status of Quotation Procedure Status |Status  (https://www.iso20022.org/standardsrepository/type/Status)|Standard|ISO20022 BM ()
    common:status AgreementStatus?;
    # >
    # * `Offered` - 
    # * `Confirmed` - 
    # * `Completed` - 
    # * `Signed` - 
    # * `Terminated` - 
    # * `Rejected` - 
    agreementstatustypevalues AgreementStatusType?;
};

# A course of action for doing Market Quote Selection Workstep in the context of executing the Market Quote Selection Workstep
public type MarketQuoteRequest record {
    # The required status/situation and or tasks that need to be completed prior to the initiation of the workstep
    common:condition Preconditions?;
    # Reference to the customer who is involved in Quotation Procedure ||
    # |
    common:involvedparty BusinessUnitorEmployeeReference?;
    # The schedule according to which the service provider will process the Quotation Procedure ||
    # |
    common:schedule Schedule?;
    # The Market Quote Selection Workstep specific Business Service
    common:businessservice BusinessService?;
    # The required status/situation and or tasks that need to be completed prior to the initiation of the workstep
    common:condition Postconditions?;
    # An unique reference to an item or an occurrence of Quotation Procedure ||
    # |
    common:procedure QuotationProcedureReference?;
    # Reference to Market Quote Selection Workstep
    common:workstep MarketQuoteRequestWorkstepReference?;
    # The particular date and time point in the progression of time
    common:text MarketQuoteRequestWorkstepType?;
};

# >
# * `Offered` - 
# * `Confirmed` - 
# * `Completed` - 
# * `Signed` - 
# * `Terminated` - 
# * `Rejected` - 
public type agreementstatustypevalues "Offered"|"Confirmed"|"Completed"|"Signed"|"Terminated"|"Rejected";

# Complete work tasks following a defined procedure in support of general office activities and product and service delivery within Quote Management. 
public type QuotationProcedure record {
    # A Classification value that distinguishes between Procedures according to the type of business services and/or type of concern defined within Quotation Procedure ||
    # |
    common:featuretypevalues QuotationProcedureParameterType?;
    # A selected optional business service as subject matter of Quotation Procedure ||
    # |
    common:feature QuotationProcedureSelectedOption?;
    # Request to process Quotation Procedure ||
    # |
    common:Instruction QuotationProcedureRequest?;
    # The schedule according to which the service provider will process the Quotation Procedure ||
    # |
    common:schedule QuotationProcedureSchedule?;
    # The status of Quotation Procedure Status |Status  (https://www.iso20022.org/standardsrepository/type/Status)|Standard|ISO20022 BM ()
    common:status QuotationProcedureStatus?;
    # Reference to the customer who is involved in Quotation Procedure ||
    # |
    common:involvedparty QuotationProcedureAssociatedPartyReference?;
    # Reference to the customer who is involved in Quotation Procedure ||
    # |
    common:involvedparty QuotationProcedureBusinessUnitReference?;
    # Reference to the customer who is involved in Quotation Procedure ||
    # |
    common:involvedparty QuotationProcedureServiceProviderReference?;
    # Reference to the Financial Facility related to Quotation Procedure ||
    # |
    common:FinancialFacility QuotationProcedureFinancialFacilityReference?;
    # Reference to the customer who is involved in Quotation Procedure ||
    # |
    common:involvedparty QuotationProcedureEmployeeReference?;
    # Reference to the customer who is involved in Quotation Procedure ||
    # |
    common:involvedparty QuotationProcedureCustomerReference?;
    # A Classification value that distinguishes between the type of process undertaken within Quotation Procedure ||
    # |
    common:proceduretype QuotationProcedureType?;
    # The schedule according to which the service provider will process the Quotation Procedure ||
    # |
    common:schedule QuotationProcedureServiceProviderSchedule?;
    # A Classification value that distinguishes between the type of services in Quotation Procedure ||
    # |
    common:servicetype QuotationProcedureServiceType?;
    # A Classification value that distinguishes between the type of products/services related to Quotation Procedure ||
    # |
    common:Bankingproducttype QuotationProcedureProductandServiceType?;
    # Reference to the product or service that is related to Quotation Procedure Product_x000D_
    # |Product (https://www.iso20022.org/standardsrepository/type/Product)|Standard|ISO20022 BM ()
    common:bankingproduct QuotationProcedureProductandServiceInstance?;
    # A Classification value that distinguishes between the type of transactions in Quotation Procedure ||
    # |
    common:transactiontype QuotationProcedureTransactionType?;
    # Reference to the transaction that is related to Quotation Procedure ObligationFulfilment|ObligationFulfilment (https://www.iso20022.org/standardsrepository/type/ObligationFulfilment)|Standard|ISO20022 BM ()
    'transaction QuotationProcedureTransaction?;
    # Reference to the Financial Transaction Arrangement that is related to Quotation Procedure Obligation|Obligation (https://www.iso20022.org/standardsrepository/type/Obligation)|Standard|ISO20022 BM ()
    common:Arrangement QuotationProcedureFinancialTransactionArrangement?;
    # Reference to the Customer Agreement that is related to Quotation Procedure Agreement_x000D_
    # |Agreement (https://www.iso20022.org/standardsrepository/type/Agreement)|Standard|ISO20022 BM ()
    agreement QuotationProcedureCustomerAgreementReference?;
    # An unique reference to an item or an occurrence of Quotation Procedure ||
    # |
    common:procedure QuotationProcedureReference?;
};

# A Classification value that distinguishes between the type of workstep undertaken within Procedure
public type worksteptypevalues record {
    # A Classification value that distinguishes between the type of workstep undertaken within Procedure
    string Worksteptypevalues?;
};

# A course of action for doing Market Quote Selection Workstep in the context of executing the Market Quote Selection Workstep
public type MarketQuoteSelection record {
    # The required status/situation and or tasks that need to be completed prior to the initiation of the workstep
    common:condition Preconditions?;
    # Reference to the customer who is involved in Quotation Procedure ||
    # |
    common:involvedparty BusinessUnitorEmployeeReference?;
    # The schedule according to which the service provider will process the Quotation Procedure ||
    # |
    common:schedule Schedule?;
    # The Market Quote Selection Workstep specific Business Service
    common:businessservice BusinessService?;
    # The required status/situation and or tasks that need to be completed prior to the initiation of the workstep
    common:condition Postconditions?;
    # An unique reference to an item or an occurrence of Quotation Procedure ||
    # |
    common:procedure QuotationProcedureReference?;
    # Reference to Market Quote Selection Workstep
    common:workstep MarketQuoteSelectionWorkstepReference?;
    # The particular date and time point in the progression of time
    common:text MarketQuoteSelectionWorkstepType?;
};
