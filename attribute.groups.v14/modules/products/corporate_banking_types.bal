import ballerina/http;
import financial.bian.attribute.groups.common as common;

public type CashTransferOk record {|
    *http:Ok;
    CashTransfer body;
|};

# Fulfill any scheduled and ad-hoc obligations under a service arrangement, most typically for a financial product or facility within Cash Concentration. 
public type AccountBalanceSweepingFacility record {
    # A Classification value that distinguishes between arrangements according to the type of business services within Account Balance Sweeping Facility ||
    # |
    common:featuretypevalues AccountBalanceSweepingFacilityParameterType?;
    # A selected optional product feature as subject matter of Account Balance Sweeping Facility ||
    # |
    common:feature AccountBalanceSweepingFacilitySelectedOption?;
    # The type of Account Balance Sweeping Facility ||
    # |
    common:Bankingproducttype AccountBalanceSweepingFacilityType?;
    # Reference to the calendar used to fulfill Account Balance Sweeping Facility ||
    # |
    common:Calendar AccountBalanceSweepingFacilityCalendarReference?;
    # The status of Account Balance Sweeping Facility Status |Status  (https://www.iso20022.org/standardsrepository/type/Status)|Standard|ISO20022 BM ()
    common:status AccountBalanceSweepingFacilityStatus?;
    # Reference to the customer who is involved in Account Balance Sweeping Facility ||
    # |
    common:involvedparty AccountBalanceSweepingFacilityAssociatedParty?;
    # The curreny which is arranged in Account Balance Sweeping Facility CurrencyCode|CurrencyCode (https://www.iso20022.org/standardsrepository/type/CurrencyCode)|Standard|ISO20022 BM ()
    common:currencycode AccountBalanceSweepingFacilityCurrency?;
    # Reference to the regulation which is defined in Account Balance Sweeping Facility GovernanceRules|GovernanceRules (https://www.iso20022.org/standardsrepository/type/GovernanceRules)|Standard|ISO20022 BM ()
    common:RuleSet AccountBalanceSweepingFacilityRegulationReference?;
    # A Classification that distinguishes between the regularity domains of Account Balance Sweeping Facility ||
    # |
    common:Rulesettype AccountBalanceSweepingFacilityRegulationType?;
    # Reference to the jurisdiction that is assigned to Account Balance Sweeping Facility in case of legal dispute. Jurisdiction|Jurisdiction (https://www.iso20022.org/standardsrepository/type/Jurisdiction)|Standard|ISO20022 BM ()
    common:Jurisdiction AccountBalanceSweepingFacilityJurisdiction?;
    # The financial accounting unit into which the financial events, with regard to the origination and fulfillment of the agreement in the context of Account Balance Sweeping Facility, are entered. ||
    # |
    common:BusinessUnit AccountBalanceSweepingFacilityBookingLocation?;
    # The type of account which is linked to Account Balance Sweeping Facility OBExternalAccountSubType1Code| ()|Standard|UK Open Banking ()
    common:Accounttypevalues AccountBalanceSweepingFacilityAccountType?;
    # Reference to the account which is linked to Account Balance Sweeping Facility Account|Account  (https://www.iso20022.org/standardsrepository/type/Account)|Standard|ISO20022 BM ()
    common:Account AccountBalanceSweepingFacilityAccountReference?;
    # Reference to the customer who is involved in Account Balance Sweeping Facility ||
    # |
    common:involvedparty AccountBalanceSweepingFacilityCustomerReference?;
    # The position of Account Balance Sweeping Facility Position |Position  (https://www.iso20022.org/standardsrepository/type/Position)|Standard|ISO20022 BM ()
    common:Position AccountBalanceSweepingFacilityPosition?;
    # Reference to the product which is linked to Account Balance Sweeping Facility Product_x000D_
    # |Product (https://www.iso20022.org/standardsrepository/type/Product)|Standard|ISO20022 BM ()
    common:bankingproduct AccountBalanceSweepingFacilityProductReference?;
    # Reference to the limitation related to the position of Account Balance Sweeping Facility Limit|Limit (https://www.iso20022.org/standardsrepository/type/Limit)|Standard|ISO20022 (https://www.iso20022.org/)
    common:Limitarrangement AccountBalanceSweepingFacilityPositionLimit?;
    # An unique reference to an item or an occurrence of Account Balance Sweeping Facility ||
    # |
    common:FinancialFacility AccountBalanceSweepingFacilityReference?;
};

# The configuration and execution of Cash Position Monitoring and Transfer Fulfillment arrangement within the Cash Position Monitoring and Transfer Fulfillment
public type CashTransfer record {
    # The required status/situation prior to the implementation of the feature
    common:condition Preconditions?;
    # The timing and key actions/milestones involved in completing the fulfillment feature instance
    common:schedule Schedule?;
    # The Cash Position Monitoring and Transfer Fulfillment specific Business Service
    common:businessservice BusinessService?;
    # The required status/situation prior to the implementation of the feature
    common:condition Postconditions?;
    # An unique reference to an item or an occurrence of Account Balance Sweeping Facility ||
    # |
    common:FinancialFacility AccountBalanceSweepingFacilityReference?;
    # Reference to Cash Position Monitoring and Transfer Fulfillment
    string CashTransferReference?;
    # The particular date and time point in the progression of time
    common:text CashTransferType?;
};

# The product features/services available with a financical facility
public type PositivePay record {
    # The processing schedule for applying interest rates to the account
    common:schedule PositivePayCheckRegisterReportingSchedule?;
    # Details of the linked account ||
    # |
    common:text CheckRegister?;
    # The period during which the interest rate has been applied.
    common:datetimeperiod DateRange?;
    # Details of the linked account ||
    # |
    common:text CheckDetails?;
};

public type CashManagementAndAccountServicesFacilityOk record {|
    *http:Ok;
    CashManagementAndAccountServicesFacility body;
|};

# The type and purpose for the link ||
# |
public type account_accountrelationship record {
    # >
    # * `AccountIsParentAccountForAccount` - 
    # * `AccountIsSubAccountForAccount` - 
    # * `AccountIsLinkedToAccount` - 
    // common:account_accountrelationshiptypevalues Account_AccountRelationshipType?;
    # Definition of the associations to the account Account|Account  (https://www.iso20022.org/standardsrepository/type/Account)|Standard|ISO20022 BM ()
    common:Account FromAccount?;
    # Definition of the associations to the account Account|Account  (https://www.iso20022.org/standardsrepository/type/Account)|Standard|ISO20022 BM ()
    common:Account ToAccount?;
};

# Fulfill any scheduled and ad-hoc obligations under a service arrangement, most typically for a financial product or facility within Cash Management And Account Services. 
public type CashManagementAndAccountServicesFacility record {
    # Reference to the cash management & account services product instance ||
    # |
    common:ProductAgreement ProductInstanceReference?;
    # The associated cash management & account services account number in any suitable format (e.g. IBAN)
    string CashManagementAndAccountServicesAccountNumber?;
    # Reference to the account primary party/owner ||
    # |
    common:involvedparty CustomerReference?;
    # Bank branch associated with the account for booking purposes ||
    # |
    common:branch BankBranchLocationReference?;
    # The type of cash management and account services account (e.g. corporate, small business) OBExternalAccountSubType1Code| ()|Standard|UK Open Banking ()
    common:Accounttypevalues AccountType?;
    # The primary account currency CurrencyCode|CurrencyCode (https://www.iso20022.org/standardsrepository/type/CurrencyCode)|Standard|ISO20022 BM ()
    common:currencycode AccountCurrency?;
    # Reference identifier linking the account to appropriate tax handling Tax|Tax (https://www.iso20022.org/standardsrepository/type/Tax)|Standard|ISO20022 BM ()
    common:taxarrangement TaxReference?;
    # Description of the role, obligations or entitlements of the associated party ||
    # |
    common:partyobligationorentitlement EntitlementOptionDefinition?;
    # Description of the role, obligations or entitlements of the associated party ||
    # |
    common:partyobligationorentitlement EntitlementOptionSetting?;
    # The setting for the restriction option AccountRestriction_x000D_
    # |AccountRestriction (https://www.iso20022.org/standardsrepository/type/AccountRestriction)|Standard|ISO20022 BM  ()
    common:accountrestriction RestrictionOptionDefinition?;
    # The setting for the restriction option AccountRestriction_x000D_
    # |AccountRestriction (https://www.iso20022.org/standardsrepository/type/AccountRestriction)|Standard|ISO20022 BM  ()
    common:accountrestriction RestrictionOptionSetting?;
    # Definition of the associations to the account Account Party Role_x000D_
    # |Account Party Role (https://www.iso20022.org/standardsrepository/type/AccountPartyRole)|Standard|ISO20022 BM ()
    common:accountinvolvement Associations?;
    # The type of association (e.g. guarantor, co-signer) AccountPartyRole |AccountPartyRole  (https://www.iso20022.org/standardsrepository/type/AccountPartyRole)|Standard|ISO20022 BM ()
    // common:accountinvolvementtypevalues AssociationType?;
    # Description of the role, obligations or entitlements of the associated party ||
    # |
    common:partyobligationorentitlement AssociationObligationEntitlement?;
    # Reference to the associated party Party|Party (https://www.iso20022.org/standardsrepository/type/Party)|Standard|ISO20022BM ()
    common:party AssociationReference?;
    # Definition of the associations to the account Account|Account  (https://www.iso20022.org/standardsrepository/type/Account)|Standard|ISO20022 BM ()
    common:Account LinkedAccounts?;
    # The type and purpose for the link ||
    # |
    account_accountrelationship LinkType?;
    # Details of the linked account ||
    # |
    common:text AccountDetails?;
    # The type of limit LimitTypeCode|LimitTypeCode (https://www.iso20022.org/standardsrepository/type/LimitTypeCode)|Standard|ISO20022 BM ()
    common:Limittypevalues LimitType?;
    # The associated limit settings and rules Limit|Limit (https://www.iso20022.org/standardsrepository/type/Limit)|Standard|ISO20022 (https://www.iso20022.org/)
    common:Limitarrangement LimitSettings?;
    # The current calculated limit ||
    # |
    common:value LimitValue?;
    # Key dates associated with the account (e.g. opening date, closing date) Account/OpeningDate|Account/OpeningDate (https://www.iso20022.org/standardsrepository/type/Account)|Standard|ISO20022 BM ()
    common:Accountdatetimetypevalues AccountDateType?;
    # Value of the account date type ||
    # |
    common:datetime AccountDate?;
};

# A record of a clearing transaction
public type clearingtransaction record {
    # Transaction that is the result of fulfilling a clearing arrangement
    string ClearingTransaction?;
};

# Fulfill any scheduled and ad-hoc obligations under a service arrangement, most typically for a financial product or facility within Cheque Lock Box. 
public type LockBoxFacility record {
    # A Classification value that distinguishes between arrangements according to the type of business services within Lock Box Facility ||
    # |
    common:featuretypevalues LockBoxFacilityParameterType?;
    # A selected optional product feature as subject matter of Lock Box Facility ||
    # |
    common:feature LockBoxFacilitySelectedOption?;
    # The type of Lock Box Facility ||
    # |
    common:Bankingproducttype LockBoxFacilityType?;
    # Reference to the calendar used to fulfill Lock Box Facility ||
    # |
    common:Calendar LockBoxFacilityCalendarReference?;
    # The status of Lock Box Facility Status |Status  (https://www.iso20022.org/standardsrepository/type/Status)|Standard|ISO20022 BM ()
    common:status LockBoxFacilityStatus?;
    # Reference to the customer who is involved in Lock Box Facility ||
    # |
    common:involvedparty LockBoxFacilityAssociatedParty?;
    # The curreny which is arranged in Lock Box Facility CurrencyCode|CurrencyCode (https://www.iso20022.org/standardsrepository/type/CurrencyCode)|Standard|ISO20022 BM ()
    common:currencycode LockBoxFacilityCurrency?;
    # Reference to the regulation which is defined in Lock Box Facility GovernanceRules|GovernanceRules (https://www.iso20022.org/standardsrepository/type/GovernanceRules)|Standard|ISO20022 BM ()
    common:RuleSet LockBoxFacilityRegulationReference?;
    # A Classification that distinguishes between the regularity domains of Lock Box Facility ||
    # |
    common:Rulesettype LockBoxFacilityRegulationType?;
    # Reference to the jurisdiction that is assigned to Lock Box Facility in case of legal dispute. Jurisdiction|Jurisdiction (https://www.iso20022.org/standardsrepository/type/Jurisdiction)|Standard|ISO20022 BM ()
    common:Jurisdiction LockBoxFacilityJurisdiction?;
    # The financial accounting unit into which the financial events, with regard to the origination and fulfillment of the agreement in the context of Lock Box Facility, are entered. ||
    # |
    common:BusinessUnit LockBoxFacilityBookingLocation?;
    # The type of account which is linked to Lock Box Facility OBExternalAccountSubType1Code| ()|Standard|UK Open Banking ()
    common:Accounttypevalues LockBoxFacilityAccountType?;
    # Reference to the account which is linked to Lock Box Facility Account|Account  (https://www.iso20022.org/standardsrepository/type/Account)|Standard|ISO20022 BM ()
    common:Account LockBoxFacilityAccountReference?;
    # Reference to the customer who is involved in Lock Box Facility ||
    # |
    common:involvedparty LockBoxFacilityCustomerReference?;
    # The position of Lock Box Facility Position |Position  (https://www.iso20022.org/standardsrepository/type/Position)|Standard|ISO20022 BM ()
    common:Position LockBoxFacilityPosition?;
    # Reference to the product which is linked to Lock Box Facility Product_x000D_
    # |Product (https://www.iso20022.org/standardsrepository/type/Product)|Standard|ISO20022 BM ()
    common:bankingproduct LockBoxFacilityProductReference?;
    # Reference to the limitation related to the position of Lock Box Facility Limit|Limit (https://www.iso20022.org/standardsrepository/type/Limit)|Standard|ISO20022 (https://www.iso20022.org/)
    common:Limitarrangement LockBoxFacilityPositionLimit?;
    # An unique reference to an item or an occurrence of Lock Box Facility ||
    # |
    common:FinancialFacility LockBoxFacilityReference?;
};

public type TransactionBatchOk record {|
    *http:Ok;
    TransactionBatch body;
|};

# Reference to Transaction Batch
public type transactionbatch record {
    # The date and time of the batch transaction
    string BatchTransactionDateTime?;
};

# The configuration and execution of Paper Check Processing Fulfillment arrangement within the Paper Check Processing Fulfillment
public type TransactionBatch record {
    # The required status/situation prior to the implementation of the feature
    common:condition Preconditions?;
    # The timing and key actions/milestones involved in completing the fulfillment feature instance
    common:schedule Schedule?;
    # The specific Business Service
    common:businessservice BusinessService?;
    # The required status/situation prior to the implementation of the feature
    common:condition Postconditions?;
    # An unique reference to an item or an occurrence of Lock Box Facility ||
    # |
    common:FinancialFacility LockBoxFacilityReference?;
    # Reference to Transaction Batch
    transactionbatch TransactionBatchReference?;
    # The particular date and time point in the progression of time
    common:text TransactionBatchType?;
    # The identifier of Condition
    common:identifier TransactionBatchInstanceReference?;
    # Reference to the account which is linked to Lock Box Facility Account|Account  (https://www.iso20022.org/standardsrepository/type/Account)|Standard|ISO20022 BM ()
    common:Account MirrorNostroAccountReference?;
    # A record of a clearing transaction
    clearingtransaction ClearingTransaction?;
    # A record of a settlement transaction
    settlementtransaction SettlementTransaction?;
};

public type LockBoxFacilityOk record {|
    *http:Ok;
    LockBoxFacility body;
|};

# A record of a settlement transaction
public type settlementtransaction record {
    # Transaction that is the result of fulfilling a settlement arrangement
    string SettlementTransaction?;
};

# Reference to the corporate current account product instance ||
# |
public type currentaccountagreement record {
    # An agreement between bank and customer/client which regulates arrangements, terms and conditions for daily banking transactions as offered as services in the current account product. 
    string CurrentAccountAgreement?;
};

public type CorporateCurrentAccountFacilityOk record {|
    *http:Ok;
    CorporateCurrentAccountFacility body;
|};

# Fulfill any scheduled and ad-hoc obligations under a service arrangement, most typically for a financial product or facility within Corporate Current Account. 
public type CorporateCurrentAccountFacility record {
    # Reference to the corporate current account product instance ||
    # |
    currentaccountagreement ProductInstanceReference?;
    # The associated account number in any suitable format (e.g. IBAN) AccountIdentification |AccountIdentification  (https://www.iso20022.org/standardsrepository/type/AccountIdentification)|Standard|ISO20022 BM ()
    common:Accountidentification CorporateCurrentAccountNumber?;
    # Reference to the account primary party/owner ||
    # |
    common:involvedparty CustomerReference?;
    # Bank branch associated with the account for booking purposes ||
    # |
    common:branch BankBranchLocationReference?;
    # The type of corporate current account (e.g. corporate, small business) OBExternalAccountSubType1Code| ()|Standard|UK Open Banking ()
    common:Accounttypevalues AccountType?;
    # The primary account currency CurrencyCode|CurrencyCode (https://www.iso20022.org/standardsrepository/type/CurrencyCode)|Standard|ISO20022 BM ()
    common:Accountcurrency AccountCurrency?;
    # Reference identifier linking the account to appropriate tax handling GenericIdentification|GenericIdentification (https://www.iso20022.org/standardsrepository/type/GenericIdentification)|Standard|ISO20022 BM ()
    common:identifier TaxReference?;
    # Description of the role, obligations or entitlements of the associated party ||
    # |
    common:partyobligationorentitlement EntitlementOptionDefinition?;
    # Description of the role, obligations or entitlements of the associated party ||
    # |
    common:partyobligationorentitlement EntitlementOptionSetting?;
    # The setting for the restriction option AccountRestriction_x000D_
    # |AccountRestriction (https://www.iso20022.org/standardsrepository/type/AccountRestriction)|Standard|ISO20022 BM  ()
    common:accountrestriction RestrictionOptionDefinition?;
    # The setting for the restriction option AccountRestriction_x000D_
    # |AccountRestriction (https://www.iso20022.org/standardsrepository/type/AccountRestriction)|Standard|ISO20022 BM  ()
    common:accountrestriction RestrictionOptionSetting?;
    # Definition of the associations to the account Account Party Role_x000D_
    # |Account Party Role (https://www.iso20022.org/standardsrepository/type/AccountPartyRole)|Standard|ISO20022 BM ()
    common:accountinvolvement Associations?;
    # The type of association (e.g. guarantor, co-signer) AccountPartyRole |AccountPartyRole  (https://www.iso20022.org/standardsrepository/type/AccountPartyRole)|Standard|ISO20022 BM ()
    // common:accountinvolvementtypevalues AssociationType?;
    # Description of the role, obligations or entitlements of the associated party ||
    # |
    common:partyobligationorentitlement AssociationObligationEntitlement?;
    # Reference to the associated party Party|Party (https://www.iso20022.org/standardsrepository/type/Party)|Standard|ISO20022BM ()
    common:party AssociationReference?;
    # Details of the linked account Account|Account  (https://www.iso20022.org/standardsrepository/type/Account)|Standard|ISO20022 BM ()
    common:Account LinkedAccounts?;
    # The type and purpose for the link ||
    # |
    // common:account_accountrelationshiptypevalues LinkType?;
    # Details of the linked account Account|Account  (https://www.iso20022.org/standardsrepository/type/Account)|Standard|ISO20022 BM ()
    common:Account AccountDetails?;
    # Key dates associated with the account (e.g. opening date, closing date) Account/OpeningDate|Account/OpeningDate (https://www.iso20022.org/standardsrepository/type/Account)|Standard|ISO20022 BM ()
    common:Accountdatetimetypevalues AccountDateType?;
    # Value of the date type ISODateTime|ISODateTime (https://www.iso20022.org/standardsrepository/type/ISODateTime)|Standard|ISO20022 BM ()
    common:datetime AccountDate?;
    # The type of limit  LimitTypeCode|LimitTypeCode (https://www.iso20022.org/standardsrepository/type/LimitTypeCode)|Standard|ISO20022 BM ()
    common:Limittypevalues LimitType?;
    # The current calculated limit ||
    # |
    common:value LimitValue?;
    # The associated limit settings and rules Limit|Limit (https://www.iso20022.org/standardsrepository/type/Limit)|Standard|ISO20022 (https://www.iso20022.org/)
    common:Limitarrangement LimitSettings?;
};

public type EmployeePaymentServicesFacilityOk record {|
    *http:Ok;
    EmployeePaymentServicesFacility body;
|};

# Fulfill any scheduled and ad-hoc obligations under a service arrangement, most typically for a financial product or facility within Corporate Payroll Services. 
public type EmployeePaymentServicesFacility record {
    # A Classification value that distinguishes between arrangements according to the type of business services within Employee Payment Services Facility ||
    # |
    common:featuretypevalues EmployeePaymentServicesFacilityParameterType?;
    # A selected optional product feature as subject matter of Employee Payment Services Facility ||
    # |
    common:feature EmployeePaymentServicesFacilitySelectedOption?;
    # The type of Employee Payment Services Facility ||
    # |
    common:Bankingproducttype EmployeePaymentServicesFacilityType?;
    # Reference to the calendar used to fulfill Employee Payment Services Facility ||
    # |
    common:Calendar EmployeePaymentServicesFacilityCalendarReference?;
    # The status of Employee Payment Services Facility Status |Status  (https://www.iso20022.org/standardsrepository/type/Status)|Standard|ISO20022 BM ()
    common:status EmployeePaymentServicesFacilityStatus?;
    # Reference to the customer who is involved in Employee Payment Services Facility ||
    # |
    common:involvedparty EmployeePaymentServicesFacilityAssociatedParty?;
    # The curreny which is arranged in Employee Payment Services Facility CurrencyCode|CurrencyCode (https://www.iso20022.org/standardsrepository/type/CurrencyCode)|Standard|ISO20022 BM ()
    common:currencycode EmployeePaymentServicesFacilityCurrency?;
    # Reference to the regulation which is defined in Employee Payment Services Facility GovernanceRules|GovernanceRules (https://www.iso20022.org/standardsrepository/type/GovernanceRules)|Standard|ISO20022 BM ()
    common:RuleSet EmployeePaymentServicesFacilityRegulationReference?;
    # A Classification that distinguishes between the regularity domains of Employee Payment Services Facility ||
    # |
    common:Rulesettype EmployeePaymentServicesFacilityRegulationType?;
    # Reference to the jurisdiction that is assigned to Employee Payment Services Facility in case of legal dispute. Jurisdiction|Jurisdiction (https://www.iso20022.org/standardsrepository/type/Jurisdiction)|Standard|ISO20022 BM ()
    common:Jurisdiction EmployeePaymentServicesFacilityJurisdiction?;
    # The financial accounting unit into which the financial events, with regard to the origination and fulfillment of the agreement in the context of Employee Payment Services Facility, are entered. ||
    # |
    common:BusinessUnit EmployeePaymentServicesFacilityBookingLocation?;
    # The type of account which is linked to Employee Payment Services Facility OBExternalAccountSubType1Code| ()|Standard|UK Open Banking ()
    common:Accounttypevalues EmployeePaymentServicesFacilityAccountType?;
    # Reference to the account which is linked to Employee Payment Services Facility Account|Account  (https://www.iso20022.org/standardsrepository/type/Account)|Standard|ISO20022 BM ()
    common:Account EmployeePaymentServicesFacilityAccountReference?;
    # Reference to the customer who is involved in Employee Payment Services Facility ||
    # |
    common:involvedparty EmployeePaymentServicesFacilityCustomerReference?;
    # The position of Employee Payment Services Facility Position |Position  (https://www.iso20022.org/standardsrepository/type/Position)|Standard|ISO20022 BM ()
    common:Position EmployeePaymentServicesFacilityPosition?;
    # Reference to the product which is linked to Employee Payment Services Facility Product_x000D_
    # |Product (https://www.iso20022.org/standardsrepository/type/Product)|Standard|ISO20022 BM ()
    common:bankingproduct EmployeePaymentServicesFacilityProductReference?;
    # Reference to the limitation related to the position of Employee Payment Services Facility Limit|Limit (https://www.iso20022.org/standardsrepository/type/Limit)|Standard|ISO20022 (https://www.iso20022.org/)
    common:Limitarrangement EmployeePaymentServicesFacilityPositionLimit?;
    # An unique reference to an item or an occurrence of Employee Payment Services Facility ||
    # |
    common:FinancialFacility EmployeePaymentServicesFacilityReference?;
};

# The configuration and execution of Project Finance arrangement within the Service Domain
public type ProjectFinance record {
    # The required status/situation prior to the implementation of the feature
    common:condition Preconditions?;
    # The timing and key actions/milestones involved in completing the fulfillment feature instance
    common:schedule Schedule?;
    # The Project Finance specific Business Service
    common:businessservice BusinessService?;
    # The required status/situation prior to the implementation of the feature
    common:condition Postconditions?;
    # An unique reference to an item or an occurrence of Corporate Trust Services Facility ||
    # |
    common:FinancialFacility CorporateTrustServicesFacilityReference?;
    # Reference to Corporate Debt Issue Oversight Fulfillment
    string ProjectFinanceReference?;
    # The particular date and time point in the progression of time
    common:text ProjectFinanceType?;
};

public type ProjectFinanceOk record {|
    *http:Ok;
    ProjectFinance body;
|};

# The configuration and execution of Project Finance arrangement within the Service Domain
public type Escrow record {
    # The required status/situation prior to the implementation of the feature
    common:condition Preconditions?;
    # The timing and key actions/milestones involved in completing the fulfillment feature instance
    common:schedule Schedule?;
    # The Project Finance specific Business Service
    common:businessservice BusinessService?;
    # The required status/situation prior to the implementation of the feature
    common:condition Postconditions?;
    # An unique reference to an item or an occurrence of Corporate Trust Services Facility ||
    # |
    common:FinancialFacility CorporateTrustServicesFacilityReference?;
    # Reference to Escrow 
    string EscrowReference?;
    # The particular date and time point in the progression of time
    common:text EscrowType?;
};

public type EscrowOk record {|
    *http:Ok;
    Escrow body;
|};

public type PublicFinanceOk record {|
    *http:Ok;
    PublicFinance body;
|};

# The configuration and execution of Project Finance arrangement within the Service Domain
public type PublicFinance record {
    # The required status/situation prior to the implementation of the feature
    common:condition Preconditions?;
    # The timing and key actions/milestones involved in completing the fulfillment feature instance
    common:schedule Schedule?;
    # The Project Finance specific Business Service
    common:businessservice BusinessService?;
    # The required status/situation prior to the implementation of the feature
    common:condition Postconditions?;
    # An unique reference to an item or an occurrence of Corporate Trust Services Facility ||
    # |
    common:FinancialFacility CorporateTrustServicesFacilityReference?;
    # Reference to Public Finance
    string PublicFinanceReference?;
    # The particular date and time point in the progression of time
    common:text PublicFinanceType?;
};

# The configuration and execution of Project Finance arrangement within the Service Domain
public type CourtAdministration record {
    # The required status/situation prior to the implementation of the feature
    common:condition Preconditions?;
    # The timing and key actions/milestones involved in completing the fulfillment feature instance
    common:schedule Schedule?;
    # The Project Finance specific Business Service
    common:businessservice BusinessService?;
    # The required status/situation prior to the implementation of the feature
    common:condition Postconditions?;
    # An unique reference to an item or an occurrence of Corporate Trust Services Facility ||
    # |
    common:FinancialFacility CorporateTrustServicesFacilityReference?;
    # Reference to Court Administration 
    string CourtAdministrationReference?;
    # The particular date and time point in the progression of time
    common:text CourtAdministrationType?;
};

public type CourtAdministrationOk record {|
    *http:Ok;
    CourtAdministration body;
|};

# >
# * `CustomerProfitabilityRating` - A value of Customer Rating Type whereby customer profitability is measured.
#
# A customer profitability rating (CPR) is an assessment used by businesses to evaluate the profitability of individual customers or customer segments. This rating helps companies understand which customers contribute the most to their bottom line and enables them to tailor their strategies to maximize overall profitability.
# * `CustomerCreditRating` - A value of Customer Rating Type whereby customer creditability is measured.
#
# A customer credit rating is a numerical score or rating that represents the creditworthiness of an individual or a business. It indicates the likelihood that the borrower will repay their debt obligations on time
# * `CustomerRiskRating` - A customer risk rating is an assessment of the potential risk associated with a customer, often used in the context of anti-money laundering (AML) and know your customer (KYC) regulations. It evaluates the likelihood of a customer engaging in activities that could pose a legal, financial, or reputational risk to the institution.
public type customerratingtypevalues "CustomerProfitabilityRating"|"CustomerCreditRating"|"CustomerRiskRating";

# Type of this credit facility. Values are Fixed Amount, Decreasing, Revolving Fixed Amount, Revolving Decreasing ||
# |
public type creditfacilitytypevalues "Revolving"|"FixedAmount"|"Decreasing";

# Reference to a parent credit facility to which the current credit facility is attached.
public type creditfacility record {
    # Type of this credit facility. Values are Fixed Amount, Decreasing, Revolving Fixed Amount, Revolving Decreasing ||
    # |
    creditfacilitytypevalues CreditFacilityType?;
};

# Reference to the associated customer agreement ||
# |
public type customeragreement record {
    # An agreement between a bank and its customer. 
    string CustomerAgreement?;
};

public type ProductAssociationOk record {|
    *http:Ok;
    ProductAssociation body;
|};

public type CreditLineFacilityOk record {|
    *http:Ok;
    CreditLineFacility body;
|};

# The rate type to be applied to the credit facility ||
# |
public type creditfacilityratetypevalues "AvailabilityCommission";

public type assetclassificationtypevalues record {
    string Assetclassificationtypevalues?;
};

# Fulfill any scheduled and ad-hoc obligations under a service arrangement, most typically for a financial product or facility within Credit Facility. 
public type CreditLineFacility record {
    # Reference to the credit facility product instance ||
    # |
    creditfacilityagreement ProductInstanceReference?;
    # The associated credit facility account number in any suitable format
    # Identifier of the credit facility GenericIdentification|GenericIdentification (https://www.iso20022.org/standardsrepository/type/GenericIdentification)|Standard|ISO20022 BM ()
    common:identifier CreditFacilityNumber?;
    # Reference to the Party Reference Data Directory entry of the a party that is associated with the credit facility
    #
    # The legal entity reference for the borrower, likely to be the same as the corporate customer ||
    # |
    common:involvedparty CustomerReference?;
    # Reference to the Party Reference Data Directory entry of the a party that is associated with the credit facility
    #
    # The legal entity reference for the borrower, likely to be the same as the corporate customer ||
    # |
    common:involvedparty AssociatedPartyReference?;
    # Reference to the associated customer agreement ||
    # |
    customeragreement CustomerAgreementReference?;
    # Reference to the Customer Credit Rating instance of this customer ||
    # |
    customerrating CustomerCreditRatingReference?;
    # Reference to an insurance policy that covers the risks for the bank of this credit facility obligation  ||
    # |
    objectinsurancearrangement InsuranceReference?;
    # Reference to the brach that manages this credit facility ||
    # |
    common:branch BankBranchLocationReference?;
    # Reference to the general ledger account or sub-ledger account associated with this credit facility ||
    # |
    common:BusinessUnit BankAccountingUnitReference?;
    # Type of this credit facility. Values are Fixed Amount, Decreasing, Revolving Fixed Amount, Revolving Decreasing ||
    # |
    creditfacilitytypevalues CreditFacilityType?;
    # The amount of the amount block. Amount blocks on credit facility are final blocks. They are temporary and meant to be used to block an amount while  the attachment of an asset product ir being processed. CurrencyAndAmount|CurrencyAndAmount (https://www.iso20022.org/standardsrepository/type/CurrencyAndAmount)|Standard|ISO20022  ()
    common:amount CreditFacilityAmount?;
    # The currency for the facility CurrencyCode|CurrencyCode (https://www.iso20022.org/standardsrepository/type/CurrencyCode)|Standard|ISO20022 BM ()
    common:currencycode CreditFacilityCurrency?;
    # The rate type to be applied to the credit facility ||
    # |
    creditfacilityratetypevalues CreditFacilityRateType?;
    # Date on which the credit facility is closed ISODateTime|ISODateTime (https://www.iso20022.org/standardsrepository/type/ISODateTime)|Standard|ISO20022 BM ()
    common:datetime CreditFacilityMaturityDate?;
    # Reference to the tax unit that handles this credit facility Tax|Tax (https://www.iso20022.org/standardsrepository/type/Tax)|Standard|ISO20022 BM ()
    common:taxarrangement TaxReference?;
    # Description of the details of the obligation or entitlement that the associated party has ||
    # |
    common:partyobligationorentitlement EntitlementOptionDefinition?;
    # Description of the details of the obligation or entitlement that the associated party has ||
    # |
    common:partyobligationorentitlement EntitlementOptionSetting?;
    # The setting for the restriction option AccountRestriction_x000D_
    # |AccountRestriction (https://www.iso20022.org/standardsrepository/type/AccountRestriction)|Standard|ISO20022 BM  ()
    common:accountrestriction RestrictionOptionDefinition?;
    # The setting for the restriction option AccountRestriction_x000D_
    # |AccountRestriction (https://www.iso20022.org/standardsrepository/type/AccountRestriction)|Standard|ISO20022 BM  ()
    common:accountrestriction RestrictionOptionSetting?;
    # Type of association that an associated party has with the credit facility, e.g. guarantor Party/Role/PartyRole_x000D_
    # |Party/Role/PartyRole (https://www.iso20022.org/standardsrepository/type/Role)|Standard|ISO20022 BM () ()
    common:partyrole AssociatedPartyAssociationType?;
    # Description of the details of the obligation or entitlement that the associated party has ||
    # |
    common:partyobligationorentitlement AssociatedPartyAssociationObligation?;
    # A record of customer correspondence/feedback Presentation|Presentation (https://www.iso20022.org/standardsrepository/type/Presentation)|Standard|ISO20022 BM ()
    common:Correspondence CustomerCommentary?;
    # Credit Facilities have specific association types, the values of which do not hold for general associations between instances of Service Domains ||
    # |
    creditfacilityassociationtypevalues CreditFacilityAssociationType?;
    # If the Credit Facility Type is “decreasing”, the schedule by which the decreasing takes place is recorded in this attribute ||
    # |
    common:schedule CreditFacilityDecreasingSchedule?;
    # The amount of the amount block. Amount blocks on credit facility are final blocks. They are temporary and meant to be used to block an amount while  the attachment of an asset product ir being processed. CurrencyAndAmount|CurrencyAndAmount (https://www.iso20022.org/standardsrepository/type/CurrencyAndAmount)|Standard|ISO20022  ()
    common:amount AvailableAmount?;
    # The amount of the amount block. Amount blocks on credit facility are final blocks. They are temporary and meant to be used to block an amount while  the attachment of an asset product ir being processed. CurrencyAndAmount|CurrencyAndAmount (https://www.iso20022.org/standardsrepository/type/CurrencyAndAmount)|Standard|ISO20022  ()
    common:amount AmountBlockAmount?;
    # Date on which the credit facility is closed ISODateTime|ISODateTime (https://www.iso20022.org/standardsrepository/type/ISODateTime)|Standard|ISO20022 BM ()
    common:datetime AmountBlockStartDate?;
    # Date on which the credit facility is closed ISODateTime|ISODateTime (https://www.iso20022.org/standardsrepository/type/ISODateTime)|Standard|ISO20022 BM ()
    common:datetime AmountBlockExpiryDate?;
    # The status of the amount block. Active, expired, ended Status |Status  (https://www.iso20022.org/standardsrepository/type/Status)|Standard|ISO20022 BM ()
    common:status AmountBlockStatus?;
    # Date on which the credit facility is closed ISODateTime|ISODateTime (https://www.iso20022.org/standardsrepository/type/ISODateTime)|Standard|ISO20022 BM ()
    common:datetime CreditFacilityOpeningDate?;
    # Date on which the credit facility is closed ISODateTime|ISODateTime (https://www.iso20022.org/standardsrepository/type/ISODateTime)|Standard|ISO20022 BM ()
    common:datetime CreditFacilityClosedDate?;
    # Reference to the Sales Product Agreement instance of this credit facility ||
    # |
    common:ProductAgreement SalesProductAgreementReference?;
    # Conditions for associated products as part of the credit facility agreement. Can be a variety, from interest to ownership to duration. To be detailed during implementations.  ||
    # |
    producttermandcondition AssociatedProductConditions?;
    # OBAccountStatus1Code| ()|Standard|UK Open Banking ()
    common:Accountstatustypevalues CreditFacilityStatus?;
};

# Conditions for associated products as part of the credit facility agreement. Can be a variety, from interest to ownership to duration. To be detailed during implementations.  ||
# |
public type producttermandcondition record {
    # Type of product term and condition
    producttermandconditiontype ProductTermAndConditionType?;
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

# Reference to the credit facility product instance ||
# |
public type creditfacilityagreement record {
    # OBAccountStatus1Code| ()|Standard|UK Open Banking ()
    common:Accountstatustypevalues CreditFacilityStatus?;
};

# Credit Facilities have specific association types, the values of which do not hold for general associations between instances of Service Domains ||
# |
public type creditfacilityassociationtypevalues "AttachedLoanProduct"|"AttachedCollateral"|"ParentFacility"|"SubordinateFacility";

# Reference to the Customer Credit Rating instance of this customer ||
# |
public type customerrating record {
    # >
    # * `CustomerProfitabilityRating` - A value of Customer Rating Type whereby customer profitability is measured.
    #
    # A customer profitability rating (CPR) is an assessment used by businesses to evaluate the profitability of individual customers or customer segments. This rating helps companies understand which customers contribute the most to their bottom line and enables them to tailor their strategies to maximize overall profitability.
    # * `CustomerCreditRating` - A value of Customer Rating Type whereby customer creditability is measured.
    #
    # A customer credit rating is a numerical score or rating that represents the creditworthiness of an individual or a business. It indicates the likelihood that the borrower will repay their debt obligations on time
    # * `CustomerRiskRating` - A customer risk rating is an assessment of the potential risk associated with a customer, often used in the context of anti-money laundering (AML) and know your customer (KYC) regulations. It evaluates the likelihood of a customer engaging in activities that could pose a legal, financial, or reputational risk to the institution.
    customerratingtypevalues CustomerRatingType?;
    # The value of the customer rating
    common:value CustomerRatingValue?;
    # Description of the customer rating
    common:text CustomerRatingDescription?;
    # Date on which the credit facility is closed ISODateTime|ISODateTime (https://www.iso20022.org/standardsrepository/type/ISODateTime)|Standard|ISO20022 BM ()
    common:datetime CustomerRatingValueDate?;
    # The validity period for the customer rating
    common:datetimeperiod CustomerRatingValidityPeriod?;
};

# Reference to an asset product linked to this credit facility
public type asset record {
    # The title of the asset
    common:text AssetTitle?;
    # The associated credit facility account number in any suitable format
    # Identifier of the credit facility GenericIdentification|GenericIdentification (https://www.iso20022.org/standardsrepository/type/GenericIdentification)|Standard|ISO20022 BM ()
    common:identifier AssetIdentification?;
    # Classification of an asset according to a specific Asset classification hierarchy
    # Type of asset expressed in common language, like property, consumer durable, bank deposit and more
    assettypevalues AssetType?;
    # Description of the asset
    common:text AssetDescription?;
    # The status of the amount block. Active, expired, ended Status |Status  (https://www.iso20022.org/standardsrepository/type/Status)|Standard|ISO20022 BM ()
    common:status AssetStatus?;
    # Date on which the credit facility is closed ISODateTime|ISODateTime (https://www.iso20022.org/standardsrepository/type/ISODateTime)|Standard|ISO20022 BM ()
    common:datetime AssetDate?;
    # Classification of the asset
    common:text AssetClassification?;
    # Type of asset classification
    assetclassificationtypevalues AssetClassificationType?;
    # >
    # * `Subassetclass` - Sub-asset class.(ISO20022)
    # * `Timetomaturitybucket` - Time to maturity bucket.(ISO20022)
    # * `Optiontimetomaturitybucket` - Time to maturity bucket of the option.(ISO20022)
    # * `Swaptimetomaturitybucket` - Time to maturity bucket of the swap.(ISO20022)
    # * `Underlyinginstrumentidentification` - Underlying instrument identification, such as an ISIN code.(ISO20022)
    # * `Underlyingbondissuer` - Issuer of the underlying bond.(ISO20022)
    # * `Underlyinginterestrate` - Underlying interest rate.(ISO20022)
    # * `Underlyingbondterm` - Term of the underlying bond.(ISO20022)
    # * `Assetclass` - Asset class.(ISO20022)
    # * `Underlyingindexidentification` - Underlying index identification such as an ISIN or an index name.(ISO20022)
    # * `Interestratetermofcontract` - Interest rate term of contract.(ISO20022)
    # * `Underlyingreferenceentity` - Underlying reference entity.(ISO20022)
    # * `Sovereignandpublictypeissuer` - Issuer of sovereign and public type.(ISO20022)
    # * `Irdnotionalcurrency1` - Interest rate derivative notional currency 1.(ISO20022)
    # * `Fexnotionalcurrency1` - Foreign exchange derivative notional currency 1.(ISO20022)
    # * `Cfdnotionalcurrency1` - Contract for difference notional currency 1.(ISO20022)
    # * `Fexnotionalcurrency2` - Foreign exchange derivative notional currency 2.(ISO20022)
    # * `Irdnotionalcurrency2` - Interest rate derivative notional currency 2.(ISO20022)
    # * `Cfdnotionalcurrency2` - Contract for difference notional currency 2.(ISO20022)
    # * `Swaptionnotionalcurrency` - Notional currency of the swaption.(ISO20022)
    # * `Creditnotionalcurrency` - Credit derivative notional currency.(ISO20022)
    # * `Commoditynotionalcurrency` - Commodity derivative notional currency.(ISO20022)
    # * `Contracttype` - Contract type.(ISO20022)
    # * `Baseproduct` - Base product.(ISO20022)
    # * `Subproduct` - Sub product.(ISO20022)
    # * `Furthersubproduct` - Further sub product.(ISO20022)
    # * `Deliverycashlocation` - Delivery cash settlement location.(ISO20022)
    # * `Deliverysettlementtype` - Delivery settlement type.(ISO20022)
    # * `Sizespecificationrelatedtofreightsubtype` - Size specification related to freight subtype.(ISO20022)
    # * `Specificroutetimecharteraverage` - Specific route time charter average.(ISO20022)
    # * `Equityunderlyingtype` - Equity derivative underlying type.(ISO20022)
    # * `Parameter` - Parameter.(ISO20022)
    # * `Inflationindexcodename` - Inflation index code or name.(ISO20022)
    # * `ISIN` - Instrument identification.(ISO20022)
    # * `Underlyingindexcdssubclassidentification` - Sub class of the underlying index credit default swap (CDS).(ISO20022)
    # * `Underlyingtype` - Underlying type.(ISSO20022)
    assetsubclassificationtypevalues AssetSubClassificationType?;
    # Sub-classification of the asset
    common:text AssetSubClassification?;
};

# >
# * `Letterofcredit` - Instrument issued by a bank substituting its name and credit standing for that of its customer. A letter of credit is a written undertaking of the bank, issued for the account of a customer (the applicant), to honour a demand for payment, upon the beneficiary's compliance with the terms and conditions set forth in the undertaking.
# * `Cash` - Collateral type is cash.
# * `Securities` - Collateral type is securities.
# * `Physicalentities` - Collateral type are physical entities, for example, airplanes for debt issued by the airline industry.
# * `Insurance` - Collateral type is an insurance contract.
# * `Stockcertificate` - Collateral type is stock certificates.
# * `Bond` - Collateral type is bonds.
# * `Bankguarantee` - Collateral type is a bank guarantee.
# * `Other` - Other assets that could be used as collateral.
# * `Commodity` - Collateral type is commodities.
# * `Automobile` - Collateral type is automobile.
# * `Industrialvehicle` - Collateral type is industrial vehicle.
# * `Commercialtruck` - Collateral type is commercial track.
# * `Railvehicle` - Collateral type is rail vehicle.
# * `Nauticalcommercialvehicle` - Collateral type is nautical commercial vehicle.
# * `Nauticalleisurevehicle` - Collateral type is nautical leisure vehicle.
# * `Aeroplane` - Collateral type is aeroplane.
# * `Machinetool` - Collateral type is machine.
# * `Industrialequipment` - Collateral type is industrial equipment.
# * `Officeequipment` - Collateral type is office equipment.
# * `Itequipment` - Collateral type is IT equipment.
# * `Medicalequipment` - Collateral type is medical equipment.
# * `Energyrelatedequipment` - Collateral type is energy related equipment.
# * `Commercialbuilding` - Collateral type is commercial building.
public type collateraltypevalues "Letterofcredit"|"Cash"|"Securities"|"Physicalentities"|"Insurance"|"Stockcertificate"|"Bond"|"Bankguarantee"|"Other"|"Commodity"|"Automobile"|"Industrialvehicle"|"Commercialtruck"|"Railvehicle"|"Nauticalcommercialvehicle"|"Nauticalleisurevehicle"|"Aeroplane"|"Machinetool"|"Industrialequipment"|"Officeequipment"|"Itequipment"|"Medicalequipment"|"Energyrelatedequipment"|"Commercialbuilding";

# >
# * `Offered` - 
# * `UnderAssessment` - 
# * `Transferred` - 
# * `Allocated` - 
# * `FreeForAllocation` - 
# * `AllocatedToAnotherLoan` - 
# * `IssuedForExecution` - 
public type collateralassetstatustypevalues "Offered"|"UnderAssessment"|"Transferred"|"Allocated"|"FreeForAllocation"|"AllocatedToAnotherLoan"|"IssuedForExecution";

# >
# * `Subassetclass` - Sub-asset class.(ISO20022)
# * `Timetomaturitybucket` - Time to maturity bucket.(ISO20022)
# * `Optiontimetomaturitybucket` - Time to maturity bucket of the option.(ISO20022)
# * `Swaptimetomaturitybucket` - Time to maturity bucket of the swap.(ISO20022)
# * `Underlyinginstrumentidentification` - Underlying instrument identification, such as an ISIN code.(ISO20022)
# * `Underlyingbondissuer` - Issuer of the underlying bond.(ISO20022)
# * `Underlyinginterestrate` - Underlying interest rate.(ISO20022)
# * `Underlyingbondterm` - Term of the underlying bond.(ISO20022)
# * `Assetclass` - Asset class.(ISO20022)
# * `Underlyingindexidentification` - Underlying index identification such as an ISIN or an index name.(ISO20022)
# * `Interestratetermofcontract` - Interest rate term of contract.(ISO20022)
# * `Underlyingreferenceentity` - Underlying reference entity.(ISO20022)
# * `Sovereignandpublictypeissuer` - Issuer of sovereign and public type.(ISO20022)
# * `Irdnotionalcurrency1` - Interest rate derivative notional currency 1.(ISO20022)
# * `Fexnotionalcurrency1` - Foreign exchange derivative notional currency 1.(ISO20022)
# * `Cfdnotionalcurrency1` - Contract for difference notional currency 1.(ISO20022)
# * `Fexnotionalcurrency2` - Foreign exchange derivative notional currency 2.(ISO20022)
# * `Irdnotionalcurrency2` - Interest rate derivative notional currency 2.(ISO20022)
# * `Cfdnotionalcurrency2` - Contract for difference notional currency 2.(ISO20022)
# * `Swaptionnotionalcurrency` - Notional currency of the swaption.(ISO20022)
# * `Creditnotionalcurrency` - Credit derivative notional currency.(ISO20022)
# * `Commoditynotionalcurrency` - Commodity derivative notional currency.(ISO20022)
# * `Contracttype` - Contract type.(ISO20022)
# * `Baseproduct` - Base product.(ISO20022)
# * `Subproduct` - Sub product.(ISO20022)
# * `Furthersubproduct` - Further sub product.(ISO20022)
# * `Deliverycashlocation` - Delivery cash settlement location.(ISO20022)
# * `Deliverysettlementtype` - Delivery settlement type.(ISO20022)
# * `Sizespecificationrelatedtofreightsubtype` - Size specification related to freight subtype.(ISO20022)
# * `Specificroutetimecharteraverage` - Specific route time charter average.(ISO20022)
# * `Equityunderlyingtype` - Equity derivative underlying type.(ISO20022)
# * `Parameter` - Parameter.(ISO20022)
# * `Inflationindexcodename` - Inflation index code or name.(ISO20022)
# * `ISIN` - Instrument identification.(ISO20022)
# * `Underlyingindexcdssubclassidentification` - Sub class of the underlying index credit default swap (CDS).(ISO20022)
# * `Underlyingtype` - Underlying type.(ISSO20022)
public type assetsubclassificationtypevalues "Subassetclass"|"Timetomaturitybucket"|"Optiontimetomaturitybucket"|"Swaptimetomaturitybucket"|"Underlyinginstrumentidentification"|"Underlyingbondissuer"|"Underlyinginterestrate"|"Underlyingbondterm"|"Assetclass"|"Underlyingindexidentification"|"Interestratetermofcontract"|"Underlyingreferenceentity"|"Sovereignandpublictypeissuer"|"Irdnotionalcurrency1"|"Fexnotionalcurrency1"|"Cfdnotionalcurrency1"|"Fexnotionalcurrency2"|"Irdnotionalcurrency2"|"Cfdnotionalcurrency2"|"Swaptionnotionalcurrency"|"Creditnotionalcurrency"|"Commoditynotionalcurrency"|"Contracttype"|"Baseproduct"|"Subproduct"|"Furthersubproduct"|"Deliverycashlocation"|"Deliverysettlementtype"|"Sizespecificationrelatedtofreightsubtype"|"Specificroutetimecharteraverage"|"Equityunderlyingtype"|"Parameter"|"Inflationindexcodename"|"ISIN"|"Underlyingindexcdssubclassidentification"|"Underlyingtype";

# Reference to an insurance policy that covers the risks for the bank of this credit facility obligation  ||
# |
public type objectinsurancearrangement record {
    # An arrangement within an agreement where an Asset is insured against loss caused by certain types of risk. (BIAN)
    string ObjectInsuranceArrangement?;
};

public type ProductAssociation record {
    # Reference to an asset product linked to this credit facility
    asset AssociatedAssetProductInstanceReference?;
    # The amount of the amount block. Amount blocks on credit facility are final blocks. They are temporary and meant to be used to block an amount while  the attachment of an asset product ir being processed. CurrencyAndAmount|CurrencyAndAmount (https://www.iso20022.org/standardsrepository/type/CurrencyAndAmount)|Standard|ISO20022  ()
    common:amount AssociatedAssetProductAmountCoveredbyCreditFacility?;
    # Reference to the Collateral Asset Management instance linking a customer asset as collateral to this credit facility
    common:collateralasset AssociatedCollateralAssetManagementReference?;
    # Reference to a parent credit facility to which the current credit facility is attached.
    creditfacility ParentCreditFacilityReference?;
    # Date on which the credit facility is closed ISODateTime|ISODateTime (https://www.iso20022.org/standardsrepository/type/ISODateTime)|Standard|ISO20022 BM ()
    common:datetime StartDateAttachment?;
    # Date on which the credit facility is closed ISODateTime|ISODateTime (https://www.iso20022.org/standardsrepository/type/ISODateTime)|Standard|ISO20022 BM ()
    common:datetime ExpiryDateAttachment?;
    # Reference to a parent credit facility to which the current credit facility is attached.
    creditfacility PreviousCreditFacilityReference?;
    # Date on which the credit facility is closed ISODateTime|ISODateTime (https://www.iso20022.org/standardsrepository/type/ISODateTime)|Standard|ISO20022 BM ()
    common:datetime EndDateAttachment?;
    # Reference to a parent credit facility to which the current credit facility is attached.
    creditfacility NextCreditFacilityReference?;
    # Reference to a parent credit facility to which the current credit facility is attached.
    creditfacility SubordinateCreditFacilityReference?;
};

# Classification of an asset according to a specific Asset classification hierarchy
# Type of asset expressed in common language, like property, consumer durable, bank deposit and more
public type assettypevalues record {
    # A functional Classification Hierarchy that distinguishes between objects of value according to some criteria.
    # Comment: BIAN Has developed a classification hierarchy, but also other authorities have defined classification hierarchies.
    string Assettypevalues?;
};

# >
# * `Incorrectaccountnumber` - Format of the account number specified is not correct
# * `Closedaccountnumber` - Account number specified has been closed on the Receiver's books
# * `Blockedaccount` - Account specified is blocked, prohibiting posting of transactions against it.
# * `Transactionforbidden` - Transaction forbidden on this type of account (formerly NoAgreement)
# * `Invalidbankoperationcode` - Bank Operation code specified in the message is not valid for receiver
# * `Notallowedamount` - Specific transaction/message amount is greater than allowed maximum
# * `Notallowedcurrency` - Specified message amount is a non processable currency outside of existing agreement
# * `Duplication` - Duplication
# * `Inconsistenwithendcustomer` - Identification of end customer is not consistent with associated account number. (formerly CreditorConsistency).
# * `Missingcreditoraddress` - Specification of creditor's address, which is required for payment, is missing/not correct (formerly IncorrectCreditorAddress).
# * `Unrecognisedinitiatingparty` - Party who initiated the message is not recognised by the end customer
# * `Unknownendcustomer` - End customer specified is not known at associated Sort/National Bank Code or does no longer exist in the books
# * `Missingdebtoraddress` - Specification of debtor's address, which is required for payment, is missing/not correct.
# * `Invaliddate` - Invalid date (eg, wrong settlement date)
# * `Invalidfileformat` - File format incomplete or invalid
# * `Nomandate` - No Mandate
# * `Missingmandatoryinformationinmandate` - Mandate related information data required by the scheme is missing.
# * `Endcustomerdeceased` - End customer is deceased.
# * `Nomandateservicebyagent` - Receiving agent does not offer specified Mandate services
# * `Nomandateserviceoncustomer` - Account is not open to specified Mandates services
# * `Nomandateserviceforspecified` - Account is not open to specified Mandates services for this particular creditor
# * `Unrecognisedagent` - Agent to whom the message needs to be forwarded cannot be located
# * `Notuniquemandatereference` - Mandate identification is not unique to the creditor
# * `Incorrectcustomerauthentication` - There is a problem with the customer authentication
# * `Incorrectagent` - Agent in the payment workflow is incorrect
# * `Incorrectcurrency` - Currency of the transaction is incorrect
# * `Requestedbycustomer` - Cancellation/amendment requested by the debtor
# * `Requestedbyinitiatingparty` - Cancellation/amendment requested by the creditor
# * `Requestedbyinitiatingpartyandcustomer` - Cancellation/amendment requested by the creditor and the debtor
# * `Mandatecancelledduetoearlysettlement` - Mandate cancellation following early reimbursement of the debit by the debtor
# * `Mandateexpired` - Mandate cancellation following validity expiration
# * `Mandatecancelledduetofraud` - Mandate cancellation due to suspected fraud
# * `Mandateinitiationcancelled` - Mandate cancellation following mandate initiation cancellation
# * `Mandateamendmentcancelled` - Mandate cancellation following mandate amendment cancellation
# * `Notspecifiedreasoncustomergenerated` - Reason has not been specified by end customer
# * `Notspecifiedreasonagentgenerated` - Reason has not been specified by agent.
# * `Narrative` - Reason is provided as narrative information in the additional reason information.
# * `Bankidentifierincorrect` - Bank Identifier code specified in the message has an incorrect format (formerly IncorrectFormatForRoutingCode).
# * `Notuniquetransactionreference` - Transaction reference is not unique within the message.
# * `Missingdebtoraccountoridentification` - Specification of the debtor’s account or unique identification needed for reasons of regulatory requirements is insufficient or missing
# * `Missingdebtornameoraddress` - Specification of the debtor’s name and/or address needed for regulatory requirements is insufficient or missing.
# * `Missingcreditornameoraddress` - Specification of the creditor’s name and/or address needed for regulatory requirements is insufficient or missing.
# * `Regulatoryreason` - Regulatory Reason
# * `Specificserviceofferedbydebtoragent` - Due to specific service offered by the Debtor Agent
# * `Creditornotonwhitelistofdebtor` - Whitelisting service offered by the Debtor Agent; Debtor has not included the Creditor on its “Whitelist” (yet). In the Whitelist the Debtor may list all allowed Creditors to debit Debtor bank account.
# * `Creditoronblacklistofdebtor` - Blacklisting service offered by the Debtor Agent; Debtor included the Creditor on his “Blacklist”. In the Blacklist the Debtor may list all Creditors not allowed to debit Debtor bank account.
# * `Maximumnumberofdirectdebittransactionsexceeded` - Due to Maximum allowed Direct Debit Transactions per period service offered by the Debtor Agent.
# * `Maximumdirectdebittransactionamountexceeded` - Due to Maximum allowed Direct Debit Transaction amount service offered by the Debtor Agent.
public type mandatereasonvalues "Incorrectaccountnumber"|"Closedaccountnumber"|"Blockedaccount"|"Transactionforbidden"|"Invalidbankoperationcode"|"Notallowedamount"|"Notallowedcurrency"|"Duplication"|"Inconsistenwithendcustomer"|"Missingcreditoraddress"|"Unrecognisedinitiatingparty"|"Unknownendcustomer"|"Missingdebtoraddress"|"Invaliddate"|"Invalidfileformat"|"Nomandate"|"Missingmandatoryinformationinmandate"|"Endcustomerdeceased"|"Nomandateservicebyagent"|"Nomandateserviceoncustomer"|"Nomandateserviceforspecified"|"Unrecognisedagent"|"Notuniquemandatereference"|"Incorrectcustomerauthentication"|"Incorrectagent"|"Incorrectcurrency"|"Requestedbycustomer"|"Requestedbyinitiatingparty"|"Requestedbyinitiatingpartyandcustomer"|"Mandatecancelledduetoearlysettlement"|"Mandateexpired"|"Mandatecancelledduetofraud"|"Mandateinitiationcancelled"|"Mandateamendmentcancelled"|"Notspecifiedreasoncustomergenerated"|"Notspecifiedreasonagentgenerated"|"Narrative"|"Bankidentifierincorrect"|"Notuniquetransactionreference"|"Missingdebtoraccountoridentification"|"Missingdebtornameoraddress"|"Missingcreditornameoraddress"|"Regulatoryreason"|"Specificserviceofferedbydebtoragent"|"Creditornotonwhitelistofdebtor"|"Creditoronblacklistofdebtor"|"Maximumnumberofdirectdebittransactionsexceeded"|"Maximumdirectdebittransactionamountexceeded";

# Capture and maintain reference information about some type of entitity within Direct Debit Mandate.
public type DirectDebitMandateDirectoryEntry record {
    # Party that signs the mandate and to whom an amount of money is due. (ISO20022) ||
    # |
    common:involvedparty MandatedCustomerReference?;
    # Description of the purpose for this collection of customer mandates ||
    # |
    common:text MandateDescription?;
    # The date and time the mandate collection is valid from to (allows for duration limits) DateTimePeriod|DateTimePeriod (https://www.iso20022.org/standardsrepository/type/DateTimePeriod)|Standard|ISO20022 BM ()
    common:datetimeperiod MandateCollectionValidPeriod?;
    # DirectDebitMandate|DirectDebitMandate (https://www.iso20022.org/standardsrepository/type/DirectDebitMandate)|Standard|ISO20022 BM ()
    common:directdebitmandate DirectDebitMandateReference?;
    # A unique reference refers to an instance of CR GenericIdentification|GenericIdentification (https://www.iso20022.org/standardsrepository/type/GenericIdentification)|Standard|ISO20022 BM ()
    common:identifier DirectDebitMandateDirectoryEntryReference?;
    # ||
    # |
    common:ProductAgreement CustomerProductInstanceReference?;
    # Party that signs the mandate and to whom an amount of money is due. (ISO20022) ||
    # |
    common:involvedparty DirectDebitMandatePayeeReference?;
};

# A reference to the mandate request, as assigned by the initiating party.
public type directdebitinstruction record {
    # >
    # * `FixedAmount` - Direct debit amount is fixed.
    # * `VariableAmount` - Direct debit amount is variable.
    # * `UsagebasedAmont` - Direct debit amount is based on usage.
    # * `Paper` - This is a physical form that the customer fills out, signs, and returns to the organization
    # * `Emandate` - It can be completed and signed electronically, often through online forms or secure digital platforms.
    // common:directdebittypevalues DirectDebitType?;
    # The date and time when the prenotification was sent
    common:datetime PrenotificationDate?;
};

public type DirectDebitMandateDirectoryEntryOk record {|
    *http:Ok;
    DirectDebitMandateDirectoryEntry body;
|};

# "An assertion or statement with regard to a concept, a characteristic.
#
# Examples: Product pricing rules, Customer reference details
#
# A descriptor can be atomic or composed."
# Prospect Management
public type MandateRegistration record {
    # Party that signs the mandate and to whom an amount of money is due. (ISO20022) ||
    # |
    common:involvedparty DirectDebitMandateCustomerReference?;
    # Party that signs the mandate and to whom an amount of money is due. (ISO20022) ||
    # |
    common:involvedparty DirectDebitMandateCustomerPseudonym?;
    # Party that signs the mandate and to whom an amount of money is due. (ISO20022) ||
    # |
    common:involvedparty DirectDebitMandatePayerBankReference?;
    # Reference to the payer's account
    #
    #
    # Unambiguous identification of the account of the debtor, to which a debit entry will be made as a result of the transaction. (ISO20022)
    common:Account DirectDebitMandatePayerAccountReference?;
    # The date and time the mandate collection is valid from to (allows for duration limits) DateTimePeriod|DateTimePeriod (https://www.iso20022.org/standardsrepository/type/DateTimePeriod)|Standard|ISO20022 BM ()
    common:datetimeperiod DirectDebitMandateValidDates?;
    # Description of allowed usage details and restrictions that apply to use of the mandate (e.g. maximum amount and frequency)
    common:directdebitmandatearrangement DirectDebitMandateTerms?;
    # Reference to the correspondence generated and received with the maintenance of the mandate
    common:Correspondence CorrespondenceInstanceReference?;
    # Description of the purpose for this collection of customer mandates ||
    # |
    common:text CorrespondenceContent?;
    # The document reference for associated documents
    common:documentdirectoryentry DocumentDirectoryEntryInstanceReference?;
    # Description of the purpose for this collection of customer mandates ||
    # |
    common:text DocumentContent?;
    # Party that signs the mandate and to whom an amount of money is due. (ISO20022) ||
    # |
    common:involvedparty DirectDebitMandatePayeeBankReference?;
    # Reference to the payer's account
    #
    #
    # Unambiguous identification of the account of the debtor, to which a debit entry will be made as a result of the transaction. (ISO20022)
    common:Account DirectDebitMandatePayeeAccountReference?;
    # A unique reference refers to an instance of CR GenericIdentification|GenericIdentification (https://www.iso20022.org/standardsrepository/type/GenericIdentification)|Standard|ISO20022 BM ()
    common:identifier DirectDebitMandateIdentification?;
    # A reference to the mandate request, as assigned by the initiating party.
    directdebitinstruction DirectDebitMandateRequestReference?;
    # >
    # * `FixedAmount` - Direct debit amount is fixed.
    # * `VariableAmount` - Direct debit amount is variable.
    # * `UsagebasedAmont` - Direct debit amount is based on usage.
    # * `Paper` - This is a physical form that the customer fills out, signs, and returns to the organization
    # * `Emandate` - It can be completed and signed electronically, often through online forms or secure digital platforms.
    // common:directdebittypevalues DirectDebitMandateType?;
    # The amount specified in the direct debit mandate
    common:amount DirectDebitMandateAmount?;
    # Specifies the fee applied to the collection amount of a direct debit instruction.
    common:feearrangement DirectDebitMandateCharges?;
    # >
    # * `Incorrectaccountnumber` - Format of the account number specified is not correct
    # * `Closedaccountnumber` - Account number specified has been closed on the Receiver's books
    # * `Blockedaccount` - Account specified is blocked, prohibiting posting of transactions against it.
    # * `Transactionforbidden` - Transaction forbidden on this type of account (formerly NoAgreement)
    # * `Invalidbankoperationcode` - Bank Operation code specified in the message is not valid for receiver
    # * `Notallowedamount` - Specific transaction/message amount is greater than allowed maximum
    # * `Notallowedcurrency` - Specified message amount is a non processable currency outside of existing agreement
    # * `Duplication` - Duplication
    # * `Inconsistenwithendcustomer` - Identification of end customer is not consistent with associated account number. (formerly CreditorConsistency).
    # * `Missingcreditoraddress` - Specification of creditor's address, which is required for payment, is missing/not correct (formerly IncorrectCreditorAddress).
    # * `Unrecognisedinitiatingparty` - Party who initiated the message is not recognised by the end customer
    # * `Unknownendcustomer` - End customer specified is not known at associated Sort/National Bank Code or does no longer exist in the books
    # * `Missingdebtoraddress` - Specification of debtor's address, which is required for payment, is missing/not correct.
    # * `Invaliddate` - Invalid date (eg, wrong settlement date)
    # * `Invalidfileformat` - File format incomplete or invalid
    # * `Nomandate` - No Mandate
    # * `Missingmandatoryinformationinmandate` - Mandate related information data required by the scheme is missing.
    # * `Endcustomerdeceased` - End customer is deceased.
    # * `Nomandateservicebyagent` - Receiving agent does not offer specified Mandate services
    # * `Nomandateserviceoncustomer` - Account is not open to specified Mandates services
    # * `Nomandateserviceforspecified` - Account is not open to specified Mandates services for this particular creditor
    # * `Unrecognisedagent` - Agent to whom the message needs to be forwarded cannot be located
    # * `Notuniquemandatereference` - Mandate identification is not unique to the creditor
    # * `Incorrectcustomerauthentication` - There is a problem with the customer authentication
    # * `Incorrectagent` - Agent in the payment workflow is incorrect
    # * `Incorrectcurrency` - Currency of the transaction is incorrect
    # * `Requestedbycustomer` - Cancellation/amendment requested by the debtor
    # * `Requestedbyinitiatingparty` - Cancellation/amendment requested by the creditor
    # * `Requestedbyinitiatingpartyandcustomer` - Cancellation/amendment requested by the creditor and the debtor
    # * `Mandatecancelledduetoearlysettlement` - Mandate cancellation following early reimbursement of the debit by the debtor
    # * `Mandateexpired` - Mandate cancellation following validity expiration
    # * `Mandatecancelledduetofraud` - Mandate cancellation due to suspected fraud
    # * `Mandateinitiationcancelled` - Mandate cancellation following mandate initiation cancellation
    # * `Mandateamendmentcancelled` - Mandate cancellation following mandate amendment cancellation
    # * `Notspecifiedreasoncustomergenerated` - Reason has not been specified by end customer
    # * `Notspecifiedreasonagentgenerated` - Reason has not been specified by agent.
    # * `Narrative` - Reason is provided as narrative information in the additional reason information.
    # * `Bankidentifierincorrect` - Bank Identifier code specified in the message has an incorrect format (formerly IncorrectFormatForRoutingCode).
    # * `Notuniquetransactionreference` - Transaction reference is not unique within the message.
    # * `Missingdebtoraccountoridentification` - Specification of the debtor’s account or unique identification needed for reasons of regulatory requirements is insufficient or missing
    # * `Missingdebtornameoraddress` - Specification of the debtor’s name and/or address needed for regulatory requirements is insufficient or missing.
    # * `Missingcreditornameoraddress` - Specification of the creditor’s name and/or address needed for regulatory requirements is insufficient or missing.
    # * `Regulatoryreason` - Regulatory Reason
    # * `Specificserviceofferedbydebtoragent` - Due to specific service offered by the Debtor Agent
    # * `Creditornotonwhitelistofdebtor` - Whitelisting service offered by the Debtor Agent; Debtor has not included the Creditor on its “Whitelist” (yet). In the Whitelist the Debtor may list all allowed Creditors to debit Debtor bank account.
    # * `Creditoronblacklistofdebtor` - Blacklisting service offered by the Debtor Agent; Debtor included the Creditor on his “Blacklist”. In the Blacklist the Debtor may list all Creditors not allowed to debit Debtor bank account.
    # * `Maximumnumberofdirectdebittransactionsexceeded` - Due to Maximum allowed Direct Debit Transactions per period service offered by the Debtor Agent.
    # * `Maximumdirectdebittransactionamountexceeded` - Due to Maximum allowed Direct Debit Transaction amount service offered by the Debtor Agent.
    mandatereasonvalues DirectDebitMandateReason?;
};

public type MandateRegistrationOk record {|
    *http:Ok;
    MandateRegistration body;
|};

# Output: ReCR Retrieve details about any aspect of Direct Debit Facility
public type RetrieveDirectDebitFacilityResponse record {
    # Direct Debit Facility details
    RetrieveDirectDebitFacilityResponse_DirectDebitFacility DirectDebitFacility?;
};

public type RetrieveDirectDebitFacilityResponse_DirectDebitFacility record {
    # Reference to Direct Debit Arrangement DirectDebitMandate|DirectDebitMandate (https://www.iso20022.org/standardsrepository/type/DirectDebitMandate)|Standard|ISO20022 BM ()
    common:directdebitmandatearrangement DirectDebitFacilityParameterType?;
    # A selected optional business service as subject matter of Direct Debit Arrangement ||
    # |
    common:feature DirectDebitFacilitySelectedOption?;
    # Reference to Direct Debit Arrangement DirectDebitMandate|DirectDebitMandate (https://www.iso20022.org/standardsrepository/type/DirectDebitMandate)|Standard|ISO20022 BM ()
    common:directdebitmandatearrangement DirectDebitFacilityType?;
    # Reference to Direct Debit Arrangement DirectDebitMandate|DirectDebitMandate (https://www.iso20022.org/standardsrepository/type/DirectDebitMandate)|Standard|ISO20022 BM ()
    common:directdebitmandatearrangement DirectDebitFacilityReference?;
    # Timetable to fulfill Direct Debit Arrangement ||
    # |
    common:schedule DirectDebitFacilitySchedule?;
    # The status of Direct Debit Arrangement Status |Status  (https://www.iso20022.org/standardsrepository/type/Status)|Standard|ISO20022 BM ()
    common:status DirectDebitFacilityStatus?;
    # The curreny which is arranged in Direct Debit Arrangement CurrencyCode|CurrencyCode (https://www.iso20022.org/standardsrepository/type/CurrencyCode)|Standard|ISO20022 BM ()
    common:currencycode DirectDebitFacilityCurrency?;
    # Reference to the regulation which is defined in Direct Debit Arrangement GovernanceRules|GovernanceRules (https://www.iso20022.org/standardsrepository/type/GovernanceRules)|Standard|ISO20022 BM ()
    common:RuleSet DirectDebitFacilityRegulationReference?;
    # A Classification that distinguishes between the regularity domains of Direct Debit Arrangement ||
    # |
    common:Rulesettypevalues DirectDebitFacilityRegulationType?;
    # Reference to the jurisdiction that is assigned to Direct Debit Arrangement in case of legal dispute. Jurisdiction|Jurisdiction (https://www.iso20022.org/standardsrepository/type/Jurisdiction)|Standard|ISO20022 BM ()
    common:Jurisdiction DirectDebitFacilityJurisdiction?;
    # The financial accounting unit into which the financial events, with regard to the origination and fulfillment of the agreement in the context of Direct Debit Arrangement, are entered. Location/Address|Location/Address (https://www.iso20022.org/standardsrepository/type/Location)|Standard|ISO20022 BM ()
    common:address DirectDebitFacilityBookingLocation?;
    # The type of account which is linked to Direct Debit Arrangement OBExternalAccountSubType1Code| ()|Standard|UK Open Banking ()
    common:Accounttypevalues DirectDebitFacilityAccountType?;
    # Reference to the account which is linked to Direct Debit Arrangement Account|Account  (https://www.iso20022.org/standardsrepository/type/Account)|Standard|ISO20022 BM ()
    common:Account DirectDebitFacilityAccountReference?;
};

# Business Information for the set-up and execution of different types of payment from the facility, including regular payments, standing orders, direct debits and bill pay instructions.
public type FundsAvailableCheck record {
    # The required status/situation prior to the implementation of the feature
    common:condition Preconditions?;
    # Timetable to fulfill Direct Debit Arrangement ||
    # |
    common:schedule Schedule?;
    # The Payment Tracking specific Business Service
    common:businessservice BusinessService?;
    # The required status/situation prior to the implementation of the feature
    common:condition Postconditions?;
    # The identifier of Condition
    common:identifier DirectDebitFacilityReference?;
    # The identifier of Condition
    common:identifier FundsAvailableCheckReference?;
    # The particular date and time point in the progression of time
    common:text FundsAvailableCheckType?;
};

# Business Information for the set-up and execution of different types of payment from the facility, including regular payments, standing orders, direct debits and bill pay instructions.
public type PaymentInitiation record {
    # The required status/situation prior to the implementation of the feature
    common:condition Preconditions?;
    # Timetable to fulfill Direct Debit Arrangement ||
    # |
    common:schedule Schedule?;
    # The Payment Tracking specific Business Service
    common:businessservice BusinessService?;
    # The required status/situation prior to the implementation of the feature
    common:condition Postconditions?;
    # The identifier of Condition
    common:identifier DirectDebitFacilityReference?;
    # The identifier of Condition
    common:identifier PaymentInitiationReference?;
    # The particular date and time point in the progression of time
    common:text PaymentInitiationType?;
};

# Business Information for the set-up and execution of different types of payment from the facility, including regular payments, standing orders, direct debits and bill pay instructions.
public type BatchDebit record {
    # The required status/situation prior to the implementation of the feature
    common:condition Preconditions?;
    # Timetable to fulfill Direct Debit Arrangement ||
    # |
    common:schedule Schedule?;
    # The Payment Tracking specific Business Service
    common:businessservice BusinessService?;
    # The required status/situation prior to the implementation of the feature
    common:condition Postconditions?;
    # The identifier of Condition
    common:identifier DirectDebitFacilityReference?;
    # The identifier of Condition
    common:identifier BatchDebitReference?;
    # The particular date and time point in the progression of time
    common:text BatchDebitType?;
};

# Business Information for the set-up and execution of different types of payment from the facility, including regular payments, standing orders, direct debits and bill pay instructions.
public type PaymentTracking record {
    # The required status/situation prior to the implementation of the feature
    common:condition Preconditions?;
    # Timetable to fulfill Direct Debit Arrangement ||
    # |
    common:schedule Schedule?;
    # The Payment Tracking specific Business Service
    common:businessservice BusinessService?;
    # The required status/situation prior to the implementation of the feature
    common:condition Postconditions?;
    # The identifier of Condition
    common:identifier DirectDebitFacilityReference?;
    # The identifier of Condition
    common:identifier PaymentTrackingReference?;
    # The particular date and time point in the progression of time
    common:text PaymentTrackingType?;
};

# Fulfill any scheduled and ad-hoc obligations under a service arrangement, most typically for a financial product or facility  within Direct Debit. 
# Example: Perform the scheduled (e.g. statements, standing orders) and ad-hoc/requested (e.g. balance inquiries, fund transfers) fulfillment tasks for a customer current account facility.
public type DirectDebitFacility record {
    # Reference to Direct Debit Arrangement DirectDebitMandate|DirectDebitMandate (https://www.iso20022.org/standardsrepository/type/DirectDebitMandate)|Standard|ISO20022 BM ()
    common:directdebitmandatearrangement DirectDebitFacilityParameterType?;
    # A selected optional business service as subject matter of Direct Debit Arrangement ||
    # |
    common:feature DirectDebitFacilitySelectedOption?;
    # Reference to Direct Debit Arrangement DirectDebitMandate|DirectDebitMandate (https://www.iso20022.org/standardsrepository/type/DirectDebitMandate)|Standard|ISO20022 BM ()
    common:directdebitmandatearrangement DirectDebitFacilityType?;
    # Reference to Direct Debit Arrangement DirectDebitMandate|DirectDebitMandate (https://www.iso20022.org/standardsrepository/type/DirectDebitMandate)|Standard|ISO20022 BM ()
    common:directdebitmandatearrangement DirectDebitFacilityReference?;
    # Timetable to fulfill Direct Debit Arrangement ||
    # |
    common:schedule DirectDebitFacilitySchedule?;
    # The status of Direct Debit Arrangement Status |Status  (https://www.iso20022.org/standardsrepository/type/Status)|Standard|ISO20022 BM ()
    common:status DirectDebitFacilityStatus?;
    # The curreny which is arranged in Direct Debit Arrangement CurrencyCode|CurrencyCode (https://www.iso20022.org/standardsrepository/type/CurrencyCode)|Standard|ISO20022 BM ()
    common:currencycode DirectDebitFacilityCurrency?;
    # Reference to the regulation which is defined in Direct Debit Arrangement GovernanceRules|GovernanceRules (https://www.iso20022.org/standardsrepository/type/GovernanceRules)|Standard|ISO20022 BM ()
    common:RuleSet DirectDebitFacilityRegulationReference?;
    # A Classification that distinguishes between the regularity domains of Direct Debit Arrangement ||
    # |
    common:Rulesettypevalues DirectDebitFacilityRegulationType?;
    # Reference to the jurisdiction that is assigned to Direct Debit Arrangement in case of legal dispute. Jurisdiction|Jurisdiction (https://www.iso20022.org/standardsrepository/type/Jurisdiction)|Standard|ISO20022 BM ()
    common:Jurisdiction DirectDebitFacilityJurisdiction?;
    # The financial accounting unit into which the financial events, with regard to the origination and fulfillment of the agreement in the context of Direct Debit Arrangement, are entered. Location/Address|Location/Address (https://www.iso20022.org/standardsrepository/type/Location)|Standard|ISO20022 BM ()
    common:address DirectDebitFacilityBookingLocation?;
    # The type of account which is linked to Direct Debit Arrangement OBExternalAccountSubType1Code| ()|Standard|UK Open Banking ()
    common:Accounttypevalues DirectDebitFacilityAccountType?;
    # Reference to the account which is linked to Direct Debit Arrangement Account|Account  (https://www.iso20022.org/standardsrepository/type/Account)|Standard|ISO20022 BM ()
    common:Account DirectDebitFacilityAccountReference?;
};

public type ReportingOk record {|
    *http:Ok;
    Reporting body;
|};

public type DirectDebitFacilityOk record {|
    *http:Ok;
    DirectDebitFacility body;
|};

public type PaymentTrackingOk record {|
    *http:Ok;
    PaymentTracking body;
|};

# Business Information for the set-up and execution of different types of payment from the facility, including regular payments, standing orders, direct debits and bill pay instructions.
public type VerifyMandate record {
    # The required status/situation prior to the implementation of the feature
    common:condition Preconditions?;
    # Timetable to fulfill Direct Debit Arrangement ||
    # |
    common:schedule Schedule?;
    # The Payment Tracking specific Business Service
    common:businessservice BusinessService?;
    # The required status/situation prior to the implementation of the feature
    common:condition Postconditions?;
    # The identifier of Condition
    common:identifier DirectDebitFacilityReference?;
    # The identifier of Condition
    common:identifier VerifyMandateReference?;
    # The particular date and time point in the progression of time
    common:text VerifyMandateType?;
};

# Business Information for the set-up and execution of different types of payment from the facility, including regular payments, standing orders, direct debits and bill pay instructions.
public type Reporting record {
    # The required status/situation prior to the implementation of the feature
    common:condition Preconditions?;
    # Timetable to fulfill Direct Debit Arrangement ||
    # |
    common:schedule Schedule?;
    # The Payment Tracking specific Business Service
    common:businessservice BusinessService?;
    # The required status/situation prior to the implementation of the feature
    common:condition Postconditions?;
    # The identifier of Condition
    common:identifier DirectDebitFacilityReference?;
    # The identifier of Condition
    common:identifier ReportingReference?;
    # The particular date and time point in the progression of time
    common:text ReportingType?;
};

public type DirectDebitsServiceFacility record {
    # Code, issued by the local authority (National Adherence Support Organisation), that identifies the customer as being recorded for using direct debits as a payment instrument (name is SEPA standard) GenericIdentification|GenericIdentification (https://www.iso20022.org/standardsrepository/type/GenericIdentification)|Standard|ISO20022 BM ()
    common:identifier Identifier?;
    # Code, issued by the local authority (National Adherence Support Organisation), that identifies the customer as being recorded for using direct debits as a payment instrument (name is SEPA standard) GenericIdentification|GenericIdentification (https://www.iso20022.org/standardsrepository/type/GenericIdentification)|Standard|ISO20022 BM ()
    common:identifier CreditorIdentifier?;
    # Reference to the customer instance in Party Reference Data Directory ||
    # |
    common:involvedparty CustomerReference?;
    # Reference to the instance of Corporate Current Account into which the direct debit payments will be made Account|Account  (https://www.iso20022.org/standardsrepository/type/Account)|Standard|ISO20022 BM ()
    common:Account CreditorAccountReference?;
    # Date on which the Direct Debits Service ends ISODateTime|ISODateTime (https://www.iso20022.org/standardsrepository/type/ISODateTime)|Standard|ISO20022 BM ()
    common:datetime StartDate?;
    # Date on which the Direct Debits Service ends ISODateTime|ISODateTime (https://www.iso20022.org/standardsrepository/type/ISODateTime)|Standard|ISO20022 BM ()
    common:datetime EndDate?;
    # Reason for having the service, e.g. Telephone charges ||
    # |
    common:text Reason?;
    # Periodicity of the instructions of the direct debit. Values are: Single, Recurring fixed, Recurring variable OBExternalDirectDebitFrequency1Code|OBExternalDirectDebitFrequency1Code (https://openbankinguk.github.io/read-write-api-site3/v3.1.11/references/namespaced-enumerations.html#obexternaldirectdebitfrequency1code)|Standard|UK Open Banking ()
    // common:directdebitfrequencyvalues Periodicity?;
    # Reference to the currency of the amounts of the Direct Debits Service CurrencyCode|CurrencyCode (https://www.iso20022.org/standardsrepository/type/CurrencyCode)|Standard|ISO20022 BM ()
    common:currencycode CurrencyReference?;
    # Reference to the Sales Product Agreement for this Direct Debits Service ||
    # |
    common:ProductAgreement SalesProductAgreementReference?;
    # Details of the fee arrangement that the bank concluded with the customer Adjustment|Adjustment (https://www.iso20022.org/standardsrepository/type/Adjustment)|Standard|ISO20022 BM ()
    common:feearrangement FeeDetails?;
    # Name of the National Adherence Support Organisation that issued the Creditor Identifier. Name|Name (https://www.iso20022.org/standardsrepository/type/Name)|Standard|ISO20022 ()
    common:name NASOName?;
};

public type DirectDebitsServiceFacilityOk record {|
    *http:Ok;
    DirectDebitsServiceFacility body;
|};

public type AccountsReceivablePurchaseOk record {|
    *http:Ok;
    AccountsReceivablePurchase body;
|};

# The configuration and execution of Accounts Receivable Evaluation Fulfillment arrangement within the Accounts Receivable Evaluation Fulfillment
public type AccountReceivableFactoring record {
    # The required status/situation prior to the implementation of the feature
    common:condition Preconditions?;
    # The timing and key actions/milestones involved in completing the fulfillment feature instance
    common:schedule Schedule?;
    # The Accounts Receivable Evaluation Fulfillment specific Business Service
    common:businessservice BusinessService?;
    # The required status/situation prior to the implementation of the feature
    common:condition Postconditions?;
    # An unique reference to an item or an occurrence of Factoring Facility ||
    # |
    common:FinancialFacility FactoringFacilityReference?;
    # Reference to Accounts Receivable Evaluation Fulfillment
    common:Arrangement AccountReceivableFactoringFulfillmentReference?;
    # The particular date and time point in the progression of time
    common:text AccountReceivableFactoringFulfillmentType?;
};

# The configuration and execution of Accounts Receivable Evaluation Fulfillment arrangement within the Accounts Receivable Evaluation Fulfillment
public type AccountsReceivableEvaluation record {
    # The required status/situation prior to the implementation of the feature
    common:condition Preconditions?;
    # The timing and key actions/milestones involved in completing the fulfillment feature instance
    common:schedule Schedule?;
    # The Accounts Receivable Evaluation Fulfillment specific Business Service
    common:businessservice BusinessService?;
    # The required status/situation prior to the implementation of the feature
    common:condition Postconditions?;
    # An unique reference to an item or an occurrence of Factoring Facility ||
    # |
    common:FinancialFacility FactoringFacilityReference?;
    # Reference to Accounts Receivable Evaluation Fulfillment
    common:Arrangement AccountsReceivableEvaluationFulfillmentReference?;
    # The particular date and time point in the progression of time
    common:text AccountsReceivableEvaluationFulfillmentType?;
};

public type AccountsReceivableEvaluationOk record {|
    *http:Ok;
    AccountsReceivableEvaluation body;
|};

public type FactoringFacilityOk record {|
    *http:Ok;
    FactoringFacility body;
|};

# The configuration and execution of Accounts Receivable Evaluation Fulfillment arrangement within the Accounts Receivable Evaluation Fulfillment
public type AccountsReceivablePurchase record {
    # The required status/situation prior to the implementation of the feature
    common:condition Preconditions?;
    # The timing and key actions/milestones involved in completing the fulfillment feature instance
    common:schedule Schedule?;
    # The Accounts Receivable Evaluation Fulfillment specific Business Service
    common:businessservice BusinessService?;
    # The required status/situation prior to the implementation of the feature
    common:condition Postconditions?;
    # An unique reference to an item or an occurrence of Factoring Facility ||
    # |
    common:FinancialFacility FactoringFacilityReference?;
    # Reference to Accounts Receivable Evaluation Fulfillment
    common:Arrangement AccountsReceivablePurchaseFulfillmentReference?;
    # The particular date and time point in the progression of time
    common:text AccountsReceivablePurchaseFulfillmentType?;
};

# The configuration and execution of Accounts Receivable Evaluation Fulfillment arrangement within the Accounts Receivable Evaluation Fulfillment
public type AccountReceivableProcessing record {
    # The required status/situation prior to the implementation of the feature
    common:condition Preconditions?;
    # The timing and key actions/milestones involved in completing the fulfillment feature instance
    common:schedule Schedule?;
    # The Accounts Receivable Evaluation Fulfillment specific Business Service
    common:businessservice BusinessService?;
    # The required status/situation prior to the implementation of the feature
    common:condition Postconditions?;
    # An unique reference to an item or an occurrence of Factoring Facility ||
    # |
    common:FinancialFacility FactoringFacilityReference?;
    # Reference to Accounts Receivable Evaluation Fulfillment
    common:Arrangement AccountReceivableProcessingFulfillmentReference?;
    # The particular date and time point in the progression of time
    common:text AccountReceivableProcessingFulfillmentType?;
};

# Fulfill any scheduled and ad-hoc obligations under a service arrangement, most typically for a financial product or facility within Factoring. 
public type FactoringFacility record {
    # A Classification value that distinguishes between arrangements according to the type of business services within Factoring Facility ||
    # |
    common:featuretypevalues FactoringFacilityParameterType?;
    # A selected optional product feature as subject matter of Factoring Facility ||
    # |
    common:feature FactoringFacilitySelectedOption?;
    # The type of Factoring Facility ||
    # |
    common:Bankingproducttype FactoringFacilityType?;
    # Reference to the calendar used to fulfill Factoring Facility ||
    # |
    common:Calendar FactoringFacilityCalendarReference?;
    # The status of Factoring Facility Status |Status  (https://www.iso20022.org/standardsrepository/type/Status)|Standard|ISO20022 BM ()
    common:status FactoringFacilityStatus?;
    # Reference to the customer who is involved in Factoring Facility ||
    # |
    common:involvedparty FactoringFacilityAssociatedParty?;
    # The curreny which is arranged in Factoring Facility CurrencyCode|CurrencyCode (https://www.iso20022.org/standardsrepository/type/CurrencyCode)|Standard|ISO20022 BM ()
    common:currencycode FactoringFacilityCurrency?;
    # Reference to the regulation which is defined in Factoring Facility GovernanceRules|GovernanceRules (https://www.iso20022.org/standardsrepository/type/GovernanceRules)|Standard|ISO20022 BM ()
    common:RuleSet FactoringFacilityRegulationReference?;
    # A Classification that distinguishes between the regularity domains of Factoring Facility ||
    # |
    common:Rulesettype FactoringFacilityRegulationType?;
    # Reference to the jurisdiction that is assigned to Factoring Facility in case of legal dispute. Jurisdiction|Jurisdiction (https://www.iso20022.org/standardsrepository/type/Jurisdiction)|Standard|ISO20022 BM ()
    common:Jurisdiction FactoringFacilityJurisdiction?;
    # The financial accounting unit into which the financial events, with regard to the origination and fulfillment of the agreement in the context of Factoring Facility, are entered. ||
    # |
    common:BusinessUnit FactoringFacilityBookingLocation?;
    # The type of account which is linked to Factoring Facility OBExternalAccountSubType1Code| ()|Standard|UK Open Banking ()
    common:Accounttypevalues FactoringFacilityAccountType?;
    # Reference to the account which is linked to Factoring Facility Account|Account  (https://www.iso20022.org/standardsrepository/type/Account)|Standard|ISO20022 BM ()
    common:Account FactoringFacilityAccountReference?;
    # Reference to the customer who is involved in Factoring Facility ||
    # |
    common:involvedparty FactoringFacilityCustomerReference?;
    # The position of Factoring Facility Position |Position  (https://www.iso20022.org/standardsrepository/type/Position)|Standard|ISO20022 BM ()
    common:Position FactoringFacilityPosition?;
    # Reference to the product which is linked to Factoring Facility Product_x000D_
    # |Product (https://www.iso20022.org/standardsrepository/type/Product)|Standard|ISO20022 BM ()
    common:bankingproduct FactoringFacilityProductReference?;
    # Reference to the limitation related to the position of Factoring Facility Limit|Limit (https://www.iso20022.org/standardsrepository/type/Limit)|Standard|ISO20022 (https://www.iso20022.org/)
    common:Limitarrangement FactoringFacilityPositionLimit?;
    # An unique reference to an item or an occurrence of Factoring Facility ||
    # |
    common:FinancialFacility FactoringFacilityReference?;
};

public type AccountReceivableProcessingOk record {|
    *http:Ok;
    AccountReceivableProcessing body;
|};

public type AccountReceivableFactoringOk record {|
    *http:Ok;
    AccountReceivableFactoring body;
|};

# The configuration and execution of Notional Account Arrangement Fulfillment arrangement within the Notional Account Arrangement Fulfillment
public type NotionalAccountArrangement record {
    # The required status/situation prior to the implementation of the feature
    common:condition Preconditions?;
    # The timing and key actions/milestones involved in completing the fulfillment feature instance
    common:schedule Schedule?;
    # The Notional Account Arrangement Fulfillment specific Business Service
    common:businessservice BusinessService?;
    # The required status/situation prior to the implementation of the feature
    common:condition Postconditions?;
    # An unique reference to an item or an occurrence of Notional Pooling Facility ||
    # |
    common:FinancialFacility NotionalPoolingFacilityReference?;
    # Obligation|Obligation (https://www.iso20022.org/standardsrepository/type/Obligation)|Standard|ISO20022 BM ()
    common:Arrangement NotionalAccountArrangementFulfillmentReference?;
    # The particular date and time point in the progression of time
    common:text NotionalAccountArrangementFulfillmentType?;
};

# The configuration and execution of Notional Account Arrangement Fulfillment arrangement within the Notional Account Arrangement Fulfillment
public type NotionalAccountConsolidatedPosition record {
    # The required status/situation prior to the implementation of the feature
    common:condition Preconditions?;
    # The timing and key actions/milestones involved in completing the fulfillment feature instance
    common:schedule Schedule?;
    # The Notional Account Arrangement Fulfillment specific Business Service
    common:businessservice BusinessService?;
    # The required status/situation prior to the implementation of the feature
    common:condition Postconditions?;
    # An unique reference to an item or an occurrence of Notional Pooling Facility ||
    # |
    common:FinancialFacility NotionalPoolingFacilityReference?;
    # Obligation|Obligation (https://www.iso20022.org/standardsrepository/type/Obligation)|Standard|ISO20022 BM ()
    common:Arrangement NotionalAccountConsolidatedPositionFulfillmentReference?;
    # The particular date and time point in the progression of time
    common:text NotionalAccountConsolidatedPositionFulfillmentType?;
};

public type NotionalAccountConsolidatedPositionOk record {|
    *http:Ok;
    NotionalAccountConsolidatedPosition body;
|};

public type NotionalAccountInterestAllocationOk record {|
    *http:Ok;
    NotionalAccountInterestAllocation body;
|};

public type NotionalAccountArrangementOk record {|
    *http:Ok;
    NotionalAccountArrangement body;
|};

# The configuration and execution of Notional Account Arrangement Fulfillment arrangement within the Notional Account Arrangement Fulfillment
public type NotionalAccountInterestAllocation record {
    # The required status/situation prior to the implementation of the feature
    common:condition Preconditions?;
    # The timing and key actions/milestones involved in completing the fulfillment feature instance
    common:schedule Schedule?;
    # The Notional Account Arrangement Fulfillment specific Business Service
    common:businessservice BusinessService?;
    # The required status/situation prior to the implementation of the feature
    common:condition Postconditions?;
    # An unique reference to an item or an occurrence of Notional Pooling Facility ||
    # |
    common:FinancialFacility NotionalPoolingFacilityReference?;
    # Obligation|Obligation (https://www.iso20022.org/standardsrepository/type/Obligation)|Standard|ISO20022 BM ()
    common:Arrangement NotionalAccountInterestAllocationFulfillmentReference?;
    # The particular date and time point in the progression of time
    common:text NotionalAccountInterestAllocationFulfillmentType?;
};

# Fulfill any scheduled and ad-hoc obligations under a service arrangement, most typically for a financial product or facility within Notional Pooling. 
public type NotionalPoolingFacility record {
    # A Classification value that distinguishes between arrangements according to the type of business services within Notional Pooling Facility ||
    # |
    common:featuretypevalues NotionalPoolingFacilityParameterType?;
    # A selected optional product feature as subject matter of Notional Pooling Facility ||
    # |
    common:feature NotionalPoolingFacilitySelectedOption?;
    # The type of Notional Pooling Facility ||
    # |
    common:Bankingproducttype NotionalPoolingFacilityType?;
    # Reference to the calendar used to fulfill Notional Pooling Facility ||
    # |
    common:Calendar NotionalPoolingFacilityCalendarReference?;
    # The status of Notional Pooling Facility Status |Status  (https://www.iso20022.org/standardsrepository/type/Status)|Standard|ISO20022 BM ()
    common:status NotionalPoolingFacilityStatus?;
    # Reference to the customer who is involved in Notional Pooling Facility ||
    # |
    common:involvedparty NotionalPoolingFacilityAssociatedParty?;
    # The curreny which is arranged in Notional Pooling Facility CurrencyCode|CurrencyCode (https://www.iso20022.org/standardsrepository/type/CurrencyCode)|Standard|ISO20022 BM ()
    common:currencycode NotionalPoolingFacilityCurrency?;
    # Reference to the regulation which is defined in Notional Pooling Facility GovernanceRules|GovernanceRules (https://www.iso20022.org/standardsrepository/type/GovernanceRules)|Standard|ISO20022 BM ()
    common:RuleSet NotionalPoolingFacilityRegulationReference?;
    # A Classification that distinguishes between the regularity domains of Notional Pooling Facility ||
    # |
    common:Rulesettype NotionalPoolingFacilityRegulationType?;
    # Reference to the jurisdiction that is assigned to Notional Pooling Facility in case of legal dispute. Jurisdiction|Jurisdiction (https://www.iso20022.org/standardsrepository/type/Jurisdiction)|Standard|ISO20022 BM ()
    common:Jurisdiction NotionalPoolingFacilityJurisdiction?;
    # The financial accounting unit into which the financial events, with regard to the origination and fulfillment of the agreement in the context of Notional Pooling Facility, are entered. ||
    # |
    common:BusinessUnit NotionalPoolingFacilityBookingLocation?;
    # The type of account which is linked to Notional Pooling Facility OBExternalAccountSubType1Code| ()|Standard|UK Open Banking ()
    common:Accounttypevalues NotionalPoolingFacilityAccountType?;
    # Reference to the account which is linked to Notional Pooling Facility Account|Account  (https://www.iso20022.org/standardsrepository/type/Account)|Standard|ISO20022 BM ()
    common:Account NotionalPoolingFacilityAccountReference?;
    # Reference to the customer who is involved in Notional Pooling Facility ||
    # |
    common:involvedparty NotionalPoolingFacilityCustomerReference?;
    # The position of Notional Pooling Facility Position |Position  (https://www.iso20022.org/standardsrepository/type/Position)|Standard|ISO20022 BM ()
    common:Position NotionalPoolingFacilityPosition?;
    # Reference to the product which is linked to Notional Pooling Facility Product_x000D_
    # |Product (https://www.iso20022.org/standardsrepository/type/Product)|Standard|ISO20022 BM ()
    common:bankingproduct NotionalPoolingFacilityProductReference?;
    # Reference to the limitation related to the position of Notional Pooling Facility Limit|Limit (https://www.iso20022.org/standardsrepository/type/Limit)|Standard|ISO20022 (https://www.iso20022.org/)
    common:Limitarrangement NotionalPoolingFacilityPositionLimit?;
    # An unique reference to an item or an occurrence of Notional Pooling Facility ||
    # |
    common:FinancialFacility NotionalPoolingFacilityReference?;
    # Obligation|Obligation (https://www.iso20022.org/standardsrepository/type/Obligation)|Standard|ISO20022 BM ()
    common:Arrangement NotionalPoolingFacilityArrangementReference?;
};

public type NotionalPoolingFacilityOk record {|
    *http:Ok;
    NotionalPoolingFacility body;
|};

public type ProjectFinanceRepaymentOk record {|
    *http:Ok;
    ProjectFinanceRepayment body;
|};

public type ProjectFinancePlacementOk record {|
    *http:Ok;
    ProjectFinancePlacement body;
|};

# Fulfill any scheduled and ad-hoc obligations under a service arrangement, most typically for a financial product or facility within Project Finance. 
public type ProjectFinanceFacility record {
    # A Classification value that distinguishes between arrangements according to the type of business services within Project Finance Facility ||
    # |
    common:featuretypevalues ProjectFinanceFacilityParameterType?;
    # A selected optional product feature as subject matter of Project Finance Facility ||
    # |
    common:feature ProjectFinanceFacilitySelectedOption?;
    # The type of Project Finance Facility ||
    # |
    common:Bankingproducttype ProjectFinanceFacilityType?;
    # Reference to the calendar used to fulfill Project Finance Facility ||
    # |
    common:Calendar ProjectFinanceFacilityCalendarReference?;
    # The status of Project Finance Facility Status |Status  (https://www.iso20022.org/standardsrepository/type/Status)|Standard|ISO20022 BM ()
    common:status ProjectFinanceFacilityStatus?;
    # Reference to the customer who is involved in Project Finance Facility ||
    # |
    common:involvedparty ProjectFinanceFacilityAssociatedParty?;
    # The curreny which is arranged in Project Finance Facility CurrencyCode|CurrencyCode (https://www.iso20022.org/standardsrepository/type/CurrencyCode)|Standard|ISO20022 BM ()
    common:currencycode ProjectFinanceFacilityCurrency?;
    # Reference to the regulation which is defined in Project Finance Facility GovernanceRules|GovernanceRules (https://www.iso20022.org/standardsrepository/type/GovernanceRules)|Standard|ISO20022 BM ()
    common:RuleSet ProjectFinanceFacilityRegulationReference?;
    # A Classification that distinguishes between the regularity domains of Project Finance Facility ||
    # |
    common:Rulesettype ProjectFinanceFacilityRegulationType?;
    # Reference to the jurisdiction that is assigned to Project Finance Facility in case of legal dispute. Jurisdiction|Jurisdiction (https://www.iso20022.org/standardsrepository/type/Jurisdiction)|Standard|ISO20022 BM ()
    common:Jurisdiction ProjectFinanceFacilityJurisdiction?;
    # The financial accounting unit into which the financial events, with regard to the origination and fulfillment of the agreement in the context of Project Finance Facility, are entered. ||
    # |
    common:BusinessUnit ProjectFinanceFacilityBookingLocation?;
    # The type of account which is linked to Project Finance Facility OBExternalAccountSubType1Code| ()|Standard|UK Open Banking ()
    common:Accounttypevalues ProjectFinanceFacilityAccountType?;
    # Reference to the account which is linked to Project Finance Facility Account|Account  (https://www.iso20022.org/standardsrepository/type/Account)|Standard|ISO20022 BM ()
    common:Account ProjectFinanceFacilityAccountReference?;
    # Reference to the customer who is involved in Project Finance Facility ||
    # |
    common:involvedparty ProjectFinanceFacilityCustomerReference?;
    # The position of Project Finance Facility Position |Position  (https://www.iso20022.org/standardsrepository/type/Position)|Standard|ISO20022 BM ()
    common:Position ProjectFinanceFacilityPosition?;
    # Reference to the product which is linked to Project Finance Facility Product_x000D_
    # |Product (https://www.iso20022.org/standardsrepository/type/Product)|Standard|ISO20022 BM ()
    common:bankingproduct ProjectFinanceFacilityProductReference?;
    # Reference to the limitation related to the position of Project Finance Facility Limit|Limit (https://www.iso20022.org/standardsrepository/type/Limit)|Standard|ISO20022 (https://www.iso20022.org/)
    common:Limitarrangement ProjectFinanceFacilityPositionLimit?;
    # An unique reference to an item or an occurrence of Project Finance Facility ||
    # |
    common:FinancialFacility ProjectFinanceFacilityReference?;
};

# The configuration and execution of Project Finance Placement Fulfillment arrangement within the Project Finance Placement Fulfillment
public type ProjectFinancePlacement record {
    # The required status/situation prior to the implementation of the feature
    common:condition Preconditions?;
    # The timing and key actions/milestones involved in completing the fulfillment feature instance
    common:schedule Schedule?;
    # The Project Finance Placement Fulfillment specific Business Service
    common:businessservice BusinessService?;
    # The required status/situation prior to the implementation of the feature
    common:condition Postconditions?;
    # An unique reference to an item or an occurrence of Project Finance Facility ||
    # |
    common:FinancialFacility ProjectFinanceFacilityReference?;
    # Reference to Project Finance Placement Fulfillment
    common:Arrangement ProjectFinancePlacementFulfillmentReference?;
    # The particular date and time point in the progression of time
    common:text ProjectFinancePlacementFulfillmentType?;
};

public type ProjectFinanceFacilityOk record {|
    *http:Ok;
    ProjectFinanceFacility body;
|};

# The configuration and execution of Project Finance Placement Fulfillment arrangement within the Project Finance Placement Fulfillment
public type ProjectFinanceRepayment record {
    # The required status/situation prior to the implementation of the feature
    common:condition Preconditions?;
    # The timing and key actions/milestones involved in completing the fulfillment feature instance
    common:schedule Schedule?;
    # The Project Finance Placement Fulfillment specific Business Service
    common:businessservice BusinessService?;
    # The required status/situation prior to the implementation of the feature
    common:condition Postconditions?;
    # An unique reference to an item or an occurrence of Project Finance Facility ||
    # |
    common:FinancialFacility ProjectFinanceFacilityReference?;
    # Reference to Project Finance Placement Fulfillment
    common:Arrangement ProjectFinanceRepaymentFulfillmentReference?;
    # The particular date and time point in the progression of time
    common:text ProjectFinanceRepaymentFulfillmentType?;
    # An unique reference to an item or an occurance (data type is Object)
    string ReaymentFulfillmentInstanceReference?;
    # The type of repayment (e.g. scheduled repayment, balloon/early termination)
    string RepaymentTransactionType?;
    # Reference to the customer who is involved in Project Finance Facility ||
    # |
    common:involvedparty RepaymentTransactionPayerReference?;
    # Reference to the account where the payment is made from
    string RepaymentTransactionPayerProductInstanceReference?;
    # Reference to the customer who is involved in Project Finance Facility ||
    # |
    common:involvedparty RepaymentTransactionPayerBankReference?;
    # The amount of the repayment
    common:amount RepaymentTransactionAmount?;
    # The curreny which is arranged in Project Finance Facility CurrencyCode|CurrencyCode (https://www.iso20022.org/standardsrepository/type/CurrencyCode)|Standard|ISO20022 BM ()
    common:currencycode RepaymentTransactionCurrency?;
    # The value date for the repayment transaction
    common:Date RepaymentTransactionValueDate?;
};

public type ProjectFinanceArrangementOk record {|
    *http:Ok;
    ProjectFinanceArrangement body;
|};

# The configuration and execution of Project Finance Placement Fulfillment arrangement within the Project Finance Placement Fulfillment
public type ProjectFinanceSPV record {
    # The required status/situation prior to the implementation of the feature
    common:condition Preconditions?;
    # The timing and key actions/milestones involved in completing the fulfillment feature instance
    common:schedule Schedule?;
    # The Project Finance Placement Fulfillment specific Business Service
    common:businessservice BusinessService?;
    # The required status/situation prior to the implementation of the feature
    common:condition Postconditions?;
    # An unique reference to an item or an occurrence of Project Finance Facility ||
    # |
    common:FinancialFacility ProjectFinanceFacilityReference?;
    # Reference to Project Finance Placement Fulfillment
    common:Arrangement ProjectFinanceSPVFulfillmentReference?;
    # The particular date and time point in the progression of time
    common:text ProjectFinanceSPVFulfillmentType?;
};

# The configuration and execution of Project Finance Placement Fulfillment arrangement within the Project Finance Placement Fulfillment
public type ProjectFinanceArrangement record {
    # The required status/situation prior to the implementation of the feature
    common:condition Preconditions?;
    # The timing and key actions/milestones involved in completing the fulfillment feature instance
    common:schedule Schedule?;
    # The Project Finance Placement Fulfillment specific Business Service
    common:businessservice BusinessService?;
    # The required status/situation prior to the implementation of the feature
    common:condition Postconditions?;
    # An unique reference to an item or an occurrence of Project Finance Facility ||
    # |
    common:FinancialFacility ProjectFinanceFacilityReference?;
    # Reference to Project Finance Placement Fulfillment
    common:Arrangement ProjectFinanceArrangementFulfillmentReference?;
    # The particular date and time point in the progression of time
    common:text ProjectFinanceArrangementFulfillmentType?;
};

public type ProjectFinanceSPVOk record {|
    *http:Ok;
    ProjectFinanceSPV body;
|};

# ||
# |
public type virtualaccountarrangementtypevalues "InterestArrangement"|"StandingOrderArrangement"|"CreditTransferArrangement"|"DirectDebitArrangement"|"AccountStatementArrangement"|"AccountMaintenanceArrangement"|"AccountConfigurationArrangement"|"FeeArrangement";

# ||
# |
public type virtualaccountagreement record {
    # An agreement between bank and customer to open Virtual Account
    string VirtualAccountAgreement?;
};

public type VirtualAccountFacilityOk record {|
    *http:Ok;
    VirtualAccountFacility body;
|};

public type InterestOk record {|
    *http:Ok;
    common:Interest body;
|};

# The configuration and execution of Virtual Account Configuration Fulfillment arrangement within the Virtual Account Configuration Fulfillment
public type Statement record {
    # The required status/situation prior to the implementation of the feature
    common:condition Preconditions?;
    # ||
    # |
    common:schedule Schedule?;
    # The Virtual Account Configuration Fulfillment specific Business Service
    common:businessservice BusinessService?;
    # The required status/situation prior to the implementation of the feature
    common:condition Postconditions?;
    # The identifier of Condition
    common:identifier VirtualAccountFacilityReference?;
    # The identifier of Condition
    common:identifier StatementReference?;
    # The particular date and time point in the progression of time
    common:text StatementType?;
};

# The configuration and execution of Virtual Account Configuration Fulfillment arrangement within the Virtual Account Configuration Fulfillment
public type DirectDebit record {
    # The required status/situation prior to the implementation of the feature
    common:condition Preconditions?;
    # ||
    # |
    common:schedule Schedule?;
    # The Virtual Account Configuration Fulfillment specific Business Service
    common:businessservice BusinessService?;
    # The required status/situation prior to the implementation of the feature
    common:condition Postconditions?;
    # The identifier of Condition
    common:identifier VirtualAccountFacilityReference?;
    # The identifier of Condition
    common:identifier DirectDebitReference?;
    # The particular date and time point in the progression of time
    common:text DirectDebitType?;
};

public type StatementOk record {|
    *http:Ok;
    Statement body;
|};

# >
# * `UserDefinedStandingOrder` - Liquidity transfer standing order type, that has been customised or defined to the specific need of the user.(ISO20022)
# * `PredefinedStandingOrder` - Liquidity transfer standing order type, as predefined in the system. (ISO20022)
public type standingordertypevalues "UserDefinedStandingOrder"|"PredefinedStandingOrder";

public type DirectDebitOk record {|
    *http:Ok;
    DirectDebit body;
|};

# The configuration and execution of Virtual Account Configuration Fulfillment arrangement within the Virtual Account Configuration Fulfillment
public type AccountStatement record {
    # The required status/situation prior to the implementation of the feature
    common:condition Preconditions?;
    # ||
    # |
    common:schedule Schedule?;
    # The Virtual Account Configuration Fulfillment specific Business Service
    common:businessservice BusinessService?;
    # The required status/situation prior to the implementation of the feature
    common:condition Postconditions?;
    # The identifier of Condition
    common:identifier VirtualAccountFacilityReference?;
    # The identifier of Condition
    common:identifier AccountStatementReference?;
    # The particular date and time point in the progression of time
    common:text AccountStatementType?;
};

# ||
# |
public type virtualaccount record {
    # A Virtual Account is a bank account that is defined on an underlying real account .
    #
    # Comment: 
    # - Virtual accounts are temporary accounts that are used to transact on behalf of a real physical account. 
    string VirtualAccount?;
};

# The configuration and execution of Virtual Account Configuration Fulfillment arrangement within the Virtual Account Configuration Fulfillment
public type StandingOrder record {
    # The amount of the standing order
    common:amount StandingOrderAmount?;
    # Entity that assigns and manages the identification.
    common:involvedparty StandingOrderCreditorAgent?;
    # The identifier of Condition
    common:identifier StandingOrderIdentification?;
    # The validity period for the standing order
    common:datetimeperiod StandingOrderValidityPeriod?;
    # Entity that assigns and manages the identification.
    common:involvedparty StandingOrderCreditor?;
    # Reference to the account on which the amount is booked
    common:Account StandingOrderDebtorAccount?;
    # ||
    # |
    common:schedule StandingOrderSchedule?;
    # >
    # * `UserDefinedStandingOrder` - Liquidity transfer standing order type, that has been customised or defined to the specific need of the user.(ISO20022)
    # * `PredefinedStandingOrder` - Liquidity transfer standing order type, as predefined in the system. (ISO20022)
    standingordertypevalues StandingOrderType?;
    # Number of the payments that will be made in completing this frequency sequence including any executed since the sequence start date.
    string NumberofPayments?;
    # Reference to the account on which the amount is booked
    common:Account StandingOrderCreditorAccount?;
    # Periodicity with which the standing order will be executed, e.g. yearly, quarterly, monthly, weekly, every XX days,…….
    #
    # Regularity with which payment instructions are to be created and processed as a result of the standing order, such as daily, weekly, or monthly. (ISO20022)
    common:Frequency StandingOrderFrequency?;
    # Entity that assigns and manages the identification.
    common:involvedparty StandingOrderDebtor?;
    # Reference to the product which is linked to Standing Order Arrangement
    common:bankingproduct StandingOrderProductReference?;
    # Status |Status  (https://www.iso20022.org/standardsrepository/type/Status)|Standard|ISO20022 BM ()
    common:status StandingOrderStatus?;
    # CurrencyCode|CurrencyCode (https://www.iso20022.org/standardsrepository/type/CurrencyCode)|Standard|ISO20022 BM ()
    common:currencycode StandingOrderAmountCurrency?;
};

public type StandingOrderOk record {|
    *http:Ok;
    StandingOrder body;
|};

# ||
# |
public type regulation record {
    # The particular date and time point in the progression of time
    common:text RegulationDefinition?;
};

# Fulfill any scheduled and ad-hoc obligations under a service arrangement, most typically for a financial product or facility within Virtual Account. 
public type VirtualAccountFacility record {
    # ||
    # |
    common:featuretypevalues VirtualAccountFacilityParameterType?;
    # ||
    # |
    common:feature VirtualAccountFacilitySelectedOption?;
    # ||
    # |
    virtualaccountarrangementtypevalues VirtualAccountFacilityType?;
    # ||
    # |
    virtualaccountagreement VirtualAccountFacilityReference?;
    # ||
    # |
    common:schedule VirtualAccountFacilitySchedule?;
    # Status |Status  (https://www.iso20022.org/standardsrepository/type/Status)|Standard|ISO20022 BM ()
    common:status VirtualAccountFacilityStatus?;
    # CurrencyCode|CurrencyCode (https://www.iso20022.org/standardsrepository/type/CurrencyCode)|Standard|ISO20022 BM ()
    common:currencycode VirtualAccountFacilityCurrency?;
    # ||
    # |
    regulation VirtualAccountFacilityRegulationReference?;
    # ||
    # |
    common:Rulesettypevalues VirtualAccountFacilityRegulationType?;
    # Jurisdiction|Jurisdiction (https://www.iso20022.org/standardsrepository/type/Jurisdiction)|Standard|ISO20022 BM ()
    common:Jurisdiction VirtualAccountFacilityJurisdiction?;
    # Location|Location (https://www.iso20022.org/standardsrepository/type/Location)|Standard|ISO20022 BM  ()
    common:location VirtualAccountFacilityBookingLocation?;
    # OBExternalAccountSubType1Code| ()|Standard|UK Open Banking ()
    common:Accounttypevalues VirtualAccountFacilityAccountType?;
    # ||
    # |
    virtualaccount VirtualAccountFacilityAccountReference?;
};
