import financial.bian.attribute.groups.common as common;

import ballerina/http;

# The consolidated book of the bank's loans and deposits
public type FinancialStatement record {
    # >
    # * `IncomeStatement` - 
    # * `BalanceSheet` - 
    # * `CashFlowsStatement` - A cash flow statement is a financial statement that shows how cash entered and exited a company during an accounting period.
    # * `DebtStatement` - 
    # * `AssetStatement` - 
    # * `AssetAndLiabilityStatement` - 
    Financialstatementtypevalues FinancialStatementType?;
    # >
    # * `FinancialReport` - 
    # * `BusinessReport` - 
    # * `ManagementReport` - 
    # * `Statement` - 
    # * `MaintenanceReport` - 
    # * `RegulatoryReport` - 
    # * `TaxReport` - 
    # * `AnalysisReport` - 
    common:Reporttypevalues ReportType?;
    # Period of time during which the status is valid.
    common:Datetimeperiod ReportValidityPeriod?;
    # ReportVersion
    string ReportVersion?;
    # The date when the identifier became valid.
    common:Datetime ReportDateTime?;
    # ReportFormat
    string ReportFormat?;
};

# >
# * `IncomeStatement` - 
# * `BalanceSheet` - 
# * `CashFlowsStatement` - A cash flow statement is a financial statement that shows how cash entered and exited a company during an accounting period.
# * `DebtStatement` - 
# * `AssetStatement` - 
# * `AssetAndLiabilityStatement` - 
public type Financialstatementtypevalues "IncomeStatement"|"BalanceSheet"|"CashFlowsStatement"|"DebtStatement"|"AssetStatement"|"AssetAndLiabilityStatement";

# A collection of goals and objectives for the enterprise and its main divisions
#
# Example: Increase marketshare
public type TransactionAlignment record {
    # Business unit responsible for proposing the major transaction
    common:BusinessUnit BusinessUnitReference?;
    # Identifies the source or originator of the transaction
    string ProposedTransactionOriginatorReference?;
    # >
    # * `FinancialTransaction` - 
    # * `BusinessTransaction` - 
    # * `BankingTransaction` - 
    # * `AccountingTransaction` - 
    # * `BookingTransaction` - 
    # * `AllocationTransaction` - 
    # * `DeliveryTransaction` - 
    # * `ProductionTransaction` - 
    common:Transactiontypevalues ProposedTransactionType?;
    # Any necessary details describing the purpose or reference properties of the transaction
    string ProposedTransactionDescription?;
    # The overall volume or value of the transaction included projected cash flows over the intended duration
    common:Amount ProposedTransactionAmount?;
    # An analysis of the financial risks associated with the transaction (e.g. market scenario based impact on P&L)
    common:Assessment ProposedTransactionRiskAssessment?;
    # Reference to associated documents
    common:DocumentDirectoryEntry DocumentDirectoryEntryInstanceReference?;
    # CorrespondenceInstanceReference
    common:Identifier CorrespondenceInstanceReference?;
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
    common:Datetimetypevalues DateType?;
    # The date when the identifier became valid.
    common:Datetime Date?;
    # An analysis of the financial risks associated with the transaction (e.g. market scenario based impact on P&L)
    common:Assessment AssetAndLiabilityAlignmentAssessment?;
};

public type TransactionAlignmentOk record {|
    *http:Ok;
    # body
    TransactionAlignment body;
|};

# Status Attributes
public type HTTPError record {
    # status_code
    string status_code?;
    # status
    string status?;
    # message
    string message?;
};

# An analysis of available bank capital covering the required allocations
public type Allocation record {
    # The overall volume or value of the transaction included projected cash flows over the intended duration
    common:Amount AllocationAmount?;
    # duration for which the allocation is enforced
    common:Duration AllocationDuration?;
    # Indication if it is an allocation or recall
    string AllocationDirection?;
    # AllocationStatus
    common:Status AllocationStatus?;
    # AllocationDescription
    string AllocationDescription?;
    # TransactionIdentification
    common:Identifier TransactionIdentification?;
    # The Date that the transaction has occurred or is planned to occur.
    # A characteristic of transaction which refers to the LifecycleDate of transaction (e.g., initiated date, executed date, fulfillment date). 
    common:Transactiondatetime TransactionDate?;
    # >
    # * `FinancialTransaction` - 
    # * `BusinessTransaction` - 
    # * `BankingTransaction` - 
    # * `AccountingTransaction` - 
    # * `BookingTransaction` - 
    # * `AllocationTransaction` - 
    # * `DeliveryTransaction` - 
    # * `ProductionTransaction` - 
    common:Transactiontypevalues TransactionType?;
    # A detailed explanation or commentary of transaction.
    string TransactionDescription?;
    # A characteristic of transaction which refers to the LifecycleStatus of transaction (e.g., initiated, executed, confirmed, cancelled, etc.) 
    common:Transactionstatus TransactionStatus?;
    # TransactionName
    common:Name TransactionName?;
};

# Define the policies, goals & objectives and strategies for an organizational entity or unit  within Asset And Liability Management. 
# Example: Direct a division of the enterprise.
public type AssetAndLiabilityPortfolioStrategy record {
    # The consolidated book of the bank's loans and deposits
    FinancialStatement AssetAndLiabilityBalanceSheet?;
    # An analysis of expected cash flows related to the book of business (used for long and short term liquidity management)
    string AssetAndLiabilityMaturityLadder?;
    # An analysis of available bank capital covering the required allocations
    Allocation AssetAndLiabilityCapitalAllocation?;
    # The policy formulation and assessment of the bank's book of business for a specific perspective/policy type
    common:Goal AssetAndLiabilityPolicyGoalRecord?;
    # >
    # * `SecurityPolicy` - 
    # * `AdministrativePolicy` - 
    # * `SocialPolicy` - 
    # * `RegulatoryPolicy` - 
    common:Policytypevalues AssetAndLiabilityPolicyType?;
    # A definition of how the policy type is defined and goals and assessments applied
    string AssetAndLiabilityPolicyTypeDefinition?;
    # The policy formulation and assessment of the bank's book of business for a specific perspective/policy type
    common:Goal AssetAndLiabilityPolicyTypeGoals?;
    # A consolidated assessment of the bank's current and projected position for the policy type dimension
    common:Position AssetAndLiabilityPolicyTypePosition?;
    # An analysis of the financial risks associated with the transaction (e.g. market scenario based impact on P&L)
    common:Assessment AssetAndLiabilityPolicyTypeSensitivityAssessment?;
};
