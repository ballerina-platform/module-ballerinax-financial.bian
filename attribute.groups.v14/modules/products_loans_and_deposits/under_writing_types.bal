import financial.bian.attribute.groups.common as common;

import ballerina/http;

# Reference details known about the customer Party/Persons/PersonProfile_x000D_
# |Party/Persons/PersonProfile (https://www.iso20022.org/standardsrepository/type/PersonProfile)|Standard|ISO20022 BM () ()
public type partyprofile record {
    # >
    # * `CommercialProfile` - 
    # * `KYCProfile` - 
    # * `RiskProfile` - 
    # * `FinancialProfile` - 
    partyprofiletypevalues PartyProfileType?;
    # Status of an identity check to prevent money laundering. This includes the counter-terrorism check. (ISO20022)
    string MoneyLaunderingCheck?;
    # Credit rating of the party
    string CreditRating?;
    # Specifies the customers money laundering risk. (ISO20022)
    string RiskLevel?;
    # Specifies the type of due diligence checks carried out on a party. 
    string DueDiligenceCheck?;
    # Indicates the main sources of the money. (ISO20022)
    string SourceOfWealth?;
    # Reference to the party
    common:party PartyReference?;
    # Reference to the profile
    profile ProfileReference?;
};

public type UnderwritingAssessmentOk record {|
    *http:Ok;
    UnderwritingAssessment body;
|};

# >
# * `Initiated` - 
# * `Executed` - 
# * `Cancelled` - 
# * `Confirmed` - 
# * `Suspended` - 
# * `Pending` - 
# * `Completed` - 
# * `Notified` - 
# * `Booked` - 
# * `Rejected` - 
public type transactionstatustypevalues "Initiated"|"Executed"|"Cancelled"|"Confirmed"|"Suspended"|"Pending"|"Completed"|"Notified"|"Booked"|"Rejected";

# >
# * `CommercialProfile` - 
# * `KYCProfile` - 
# * `RiskProfile` - 
# * `FinancialProfile` - 
public type partyprofiletypevalues "CommercialProfile"|"KYCProfile"|"RiskProfile"|"FinancialProfile";

public type profile record {
    # A brief description of the characteristics of something or someone. (Business Dictionary)
    string Profile?;
};

# The Date that the transaction has occurred or is planned to occur.
# A characteristic of transaction which refers to the LifecycleDate of transaction (e.g., initiated date, executed date, fulfillment date). 
public type transactiondatetime record {
    # The date and time when the transaction occurred or is planned to occur
    common:datetime TransactionDate?;
    # >
    # * `ExecutedDate` - 
    # * `FulfillmentDate` - 
    # * `InitiatedDate` - 
    # * `CancelledDate` - 
    # * `ApprovedDate` - 
    # * `ValueDate` - 
    # * `BookingDate` - 
    transactiondatetimetypevalues TransactionDateType?;
};

# To test or assess an entity, possibly against some formal qualification or certification requirement within Underwriting. 
public type UnderwritingAssessment record {
    # Guidelines provided for applying for an underwriting decision - list submission requirements GovernanceRules|GovernanceRules (https://www.iso20022.org/standardsrepository/type/GovernanceRules)|Standard|ISO20022 BM ()
    common:RuleSet UnderwritingGuidelines?;
    # Outlines the extent of the product usage history required ||
    # |
    common:Requirement RequiredCustomerEmploymentHistoryDetails?;
    # Outlines the extent of the product usage history required ||
    # |
    common:Requirement RequiredCustomerDebtAssetStatement?;
    # Outlines the extent of the product usage history required ||
    # |
    common:Requirement RequiredCustomerCreditAssessment?;
    # Outlines the extent of the product usage history required ||
    # |
    common:Requirement RequiredCollateralCoverage?;
    # Outlines the extent of the product usage history required ||
    # |
    common:Requirement RequiredCustomerProductandServicePaymentHistory?;
    # Reference to associated documents of significance Document _x000D_
    # |Document (https://www.iso20022.org/standardsrepository/type/Document)|Standard|ISO20022 BM ()
    common:Document RequiredCustomerDocuments?;
    # … ObligationFulfilment|ObligationFulfilment (https://www.iso20022.org/standardsrepository/type/ObligationFulfilment)|Standard|ISO20022 BM ()
    'transaction ProposedTransactionDetails?;
    # The associated product instance for the underwriting decision Product_x000D_
    # |Product (https://www.iso20022.org/standardsrepository/type/Product)|Standard|ISO20022 BM ()
    common:bankingproduct ProductInstanceReference?;
    # The proposed loan terms Loan|Loan (https://www.iso20022.org/standardsrepository/type/Loan)|Standard|ISO20022 BM ()
    common:loanarrangement ProposedLoanTerms?;
    # The proposed loan amount CurrencyAndAmount|CurrencyAndAmount (https://www.iso20022.org/standardsrepository/type/CurrencyAndAmount)|Standard|ISO20022  ()
    common:amount ProposedLoanAmount?;
    # The purpose for the loan  (e.g. mortgage for primary residence/rental) ||
    # |
    common:text LoanPurpose?;
    # Reference to the applying customer ||
    # |
    common:involvedparty CustomerReference?;
    # Reference details known about the customer Party/Persons/PersonProfile_x000D_
    # |Party/Persons/PersonProfile (https://www.iso20022.org/standardsrepository/type/PersonProfile)|Standard|ISO20022 BM () ()
    partyprofile CustomerReferenceDetails?;
    # Definition of the terms under which the customer eligible for the loan ||
    # |
    producttermandcondition CustomerProductEligibilityTerms?;
    # Reference to product reports covering payment history ||
    # |
    common:Report CustomerEmploymentHistory?;
    # Covers bank and known non-bank managed assets ||
    # |
    customerstatement CustomerIncomeStatement?;
    # Covers bank and known non-bank managed assets ||
    # |
    customerstatement CustomerDebtStatement?;
    # Covers bank and known non-bank managed assets ||
    # |
    customerstatement CustomerAssetStatement?;
    # Reference to the bank's credit assessment of the customer ||
    # |
    common:customercreditratingassessment CustomerCreditAssessment?;
    # Reference to product reports covering payment history ||
    # |
    common:Report CustomerProductandServicePaymentHistory?;
    # Reference to the customers collateral holdings that are available Collateral |Collateral  (https://www.iso20022.org/standardsrepository/type/Collateral)|Standard|ISO20022 BM ()
    common:collateralasset CollateralItemReference?;
    # The type of collateral CollateralTypeCode|CollateralTypeCode (https://www.iso20022.org/standardsrepository/type/CollateralTypeCode)|Standard|ISO20022 BM ()
    common:Collateraltypevalues CollateralItemType?;
    # The valuation of the collateral (applying the required loan to asset ratio) CollateralValuation |CollateralValuation  (https://www.iso20022.org/standardsrepository/type/CollateralValuation)|Standard|ISO20022 BM ()
    common:collateralassetvaluation CollateralItemValuation?;
    # Reference to associated documents of significance Document _x000D_
    # |Document (https://www.iso20022.org/standardsrepository/type/Document)|Standard|ISO20022 BM ()
    common:Document DocumentReference?;
    # Details of the underwriting decision ||
    # |
    underwritingassessment UnderwritingAssessmentDecision?;
    # Work documentation, forms and schedules produced and referenced during the task ||
    # |
    common:workproduct UnderwritingAssessmentWorkProduct?;
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

# Definition of the terms under which the customer eligible for the loan ||
# |
public type producttermandcondition record {
    # The type of product term and condition
    producttermandconditiontype ProductTermAndConditionType?;
};

# Covers bank and known non-bank managed assets ||
# |
public type customerstatement record {
    # The type of customer statement
    string CustomerStatementType?;
};

# >
# * `ProductGeneralTermAndCondition` - A value of Product TermAndCondition Type whereby product general terms and conditions will be defined.
# * `ProductContextSpecificTermAndCondition` - A value of Product TermAndCondition Type whereby product context specific terms and conditions (e.g., regulation, market, sale) will be defined.
#
# * `ProductCombinationTermAndCondition` - 
# * `ProductSpecificPricingTermAndCondition` - 
# * `ProductMatchingTermAndCondition` - 
# * `CustomerDefinedProductAndServiceTermAndCondition` - 
# * `BankDefinedProductAndServiceTermAndCondition` - 
# * `ProductEligibilityTermAndCondition` - 
public type producttermandconditiontypevalues "ProductGeneralTermAndCondition"|"ProductContextSpecificTermAndCondition"|"ProductCombinationTermAndCondition"|"ProductSpecificPricingTermAndCondition"|"ProductMatchingTermAndCondition"|"CustomerDefinedProductAndServiceTermAndCondition"|"BankDefinedProductAndServiceTermAndCondition"|"ProductEligibilityTermAndCondition";

# Details of the underwriting decision ||
# |
public type underwritingassessment record {
    # The unique identifier for the underwriting assessment
    common:identifier UnderwritingAssessmentIdentifier?;
};

public type producttermandconditiontype record {
    # >
    # * `ProductGeneralTermAndCondition` - A value of Product TermAndCondition Type whereby product general terms and conditions will be defined.
    # * `ProductContextSpecificTermAndCondition` - A value of Product TermAndCondition Type whereby product context specific terms and conditions (e.g., regulation, market, sale) will be defined.
    #
    # * `ProductCombinationTermAndCondition` - 
    # * `ProductSpecificPricingTermAndCondition` - 
    # * `ProductMatchingTermAndCondition` - 
    # * `CustomerDefinedProductAndServiceTermAndCondition` - 
    # * `BankDefinedProductAndServiceTermAndCondition` - 
    # * `ProductEligibilityTermAndCondition` - 
    producttermandconditiontypevalues ProductTermAndConditionTypeValues?;
    string ProductTermAndConditionTypeName?;
    string ProductTermAndConditionTypeDescription?;
};

# A characteristic of transaction which refers to the LifecycleStatus of transaction (e.g., initiated, executed, confirmed, cancelled, etc.) 
public type transactionstatus record {
    # The status of the transaction
    common:status TransactionStatus?;
    # >
    # * `Initiated` - 
    # * `Executed` - 
    # * `Cancelled` - 
    # * `Confirmed` - 
    # * `Suspended` - 
    # * `Pending` - 
    # * `Completed` - 
    # * `Notified` - 
    # * `Booked` - 
    # * `Rejected` - 
    transactionstatustypevalues TransactionStatusType?;
};

public type 'transaction record {
    common:identifier TransactionIdentification?;
    transactiondatetime TransactionDate?;
    transactiontypevalues TransactionType?;
    common:text TransactionDescription?;
    transactionstatus TransactionStatus?;
    common:name TransactionName?;
};

# >
# * `ExecutedDate` - 
# * `FulfillmentDate` - 
# * `InitiatedDate` - 
# * `CancelledDate` - 
# * `ApprovedDate` - 
# * `ValueDate` - 
# * `BookingDate` - 
public type transactiondatetimetypevalues "ExecutedDate"|"FulfillmentDate"|"InitiatedDate"|"CancelledDate"|"ApprovedDate"|"ValueDate"|"BookingDate";
