import financial.bian.attribute.groups.common as common;

import ballerina/http;

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
