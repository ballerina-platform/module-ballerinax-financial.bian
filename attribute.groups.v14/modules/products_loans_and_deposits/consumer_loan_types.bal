import financial.bian.attribute.groups.common as common;

import ballerina/http;

public type ConsumerLoanFacilityOk record {|
    *http:Ok;
    ConsumerLoanFacility body;
|};

# Fulfill any scheduled and ad-hoc obligations under a service arrangement, most typically for a financial product or facility within Consumer Loan. 
public type ConsumerLoanFacility record {
    # Reference to the loan product instance Loan|Loan (https://www.iso20022.org/standardsrepository/type/Loan)|Standard|ISO20022 BM ()
    common:loanproduct ProductInstanceReference?;
    # The associated loan account number in any suitable format AccountIdentification |AccountIdentification  (https://www.iso20022.org/standardsrepository/type/AccountIdentification)|Standard|ISO20022 BM ()
    common:Accountidentification ConsumerLoanNumber?;
    # Reference identifier linking the account to appropriate tax handling ||
    # |
    common:involvedparty CustomerReference?;
    # Reference identifier linking the account to appropriate tax handling ||
    # |
    common:involvedparty PartyReference?;
    # Reference to the associated customer agreement ||
    # |
    common:CustomerAgreement CustomerAgreementReference?;
    # Reference to an associated credit assessment ||
    # |
    common:customercreditratingassessment CustomerCreditAssessmentReference?;
    # Reference to applicable insurance arrangements
    string InsuranceReference?;
    # Reference to collections/delinquency processing made against the loan
    string DelinquencyCollectionReference?;
    # Bank branch associated with the account for booking purposes ||
    # |
    common:branchlocation BankBranchLocationReference?;
    # Bank accounting unit associated with the account for booking purposes
    string BankAccountingUnitReference?;
    # The specific type of loan (e.g. term, revolving, evergreen) ||
    # |
    common:loanproducttypevalues LoanType?;
    # The amount of the loan CurrencyAndAmount|CurrencyAndAmount (https://www.iso20022.org/standardsrepository/type/CurrencyAndAmount)|Standard|ISO20022  ()
    common:amount LoanAmount?;
    # The currency for the loan account CurrencyCode|CurrencyCode (https://www.iso20022.org/standardsrepository/type/CurrencyCode)|Standard|ISO20022 BM ()
    common:currencycode LoanCurrency?;
    # The rate type to be applied to the loan RateTypeCode|RateTypeCode (https://www.iso20022.org/standardsrepository/type/RateTypeCode)|Standard|ISO20022 BM ()
    common:Ratetypevalues LoanRateType?;
    # The applicable rate for the loan PercentageRate|PercentageRate (https://www.iso20022.org/standardsrepository/type/PercentageRate)|Standard|ISO20022 BM ()
    common:rate LoanApplicableRate?;
    # The type of repayment arrangement in place (e.g. structured) PaymentTypeCode|PaymentTypeCode (https://www.iso20022.org/standardsrepository/type/PaymentTypeCode)|Standard|ISO20022 BM ()
    common:Paymenttypevalues RepaymentType?;
    # The type of interest to be applied (e.g. prime plus) InterestTypeCode|InterestTypeCode (https://www.iso20022.org/standardsrepository/type/InterestTypeCode)|Standard|ISO20022 BM ()
    common:Interesttypevalues InterestType?;
    # The accrual method applied to interest calculations InterestCalculation|InterestCalculation (https://www.iso20022.org/standardsrepository/type/InterestCalculation)|Standard|ISO20022 BM ()
    common:interestcalculationarrangementmodality InterestAccrualMethod?;
    # The planned maturity date of the loan ISODate|ISODate (https://www.iso20022.org/standardsrepository/type/ISODate)|Standard|ISO20022 BM ()
    common:Date LoanOriginationDate?;
    # The planned maturity date of the loan ISODate|ISODate (https://www.iso20022.org/standardsrepository/type/ISODate)|Standard|ISO20022 BM ()
    common:Date LoanMaturityDate?;
    # Reference to allocated collateral Collateral |Collateral  (https://www.iso20022.org/standardsrepository/type/Collateral)|Standard|ISO20022 BM ()
    common:collateralasset CollateralReference?;
    # The collateral value applied to the loan ||
    # |
    common:collateralassetallocation CollateralAllocation?;
    # Reference identifier linking the account to appropriate tax handling ||
    # |
    common:involvedparty TaxReference?;
    # Access terms that apply (e.g. allowed payments/withdrawals) ||
    # |
    common:accessarrangement LoanAccessTerms?;
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
    # Definition of the involved parties or associations to the account Account Party Role_x000D_
    # |Account Party Role (https://www.iso20022.org/standardsrepository/type/AccountPartyRole)|Standard|ISO20022 BM ()
    common:accountinvolvement Associations?;
    # The type of association (e.g. guarantor, co-signer) AccountPartyRole |AccountPartyRole  (https://www.iso20022.org/standardsrepository/type/AccountPartyRole)|Standard|ISO20022 BM ()
    common:accountinvolvementtypevalues AssociationType?;
    # Description of the role, obligations or entitlements of the associated party ||
    # |
    common:partyobligationorentitlement AssociationObligationEntitlement?;
    # Reference to the associated party Party|Party (https://www.iso20022.org/standardsrepository/type/Party)|Standard|ISO20022BM ()
    common:party AssociationReference?;
    # The schedule for loan repayments ||
    # |
    common:schedule LoanRepaymentSchedule?;
    # A statement maintained tracking repayments ||
    # |
    common:statement StagedRepaymentStatement?;
    # A record of customer correspondence/feedback Presentation|Presentation (https://www.iso20022.org/standardsrepository/type/Presentation)|Standard|ISO20022 BM ()
    common:Correspondence CustomerCommentary?;
    # The outstanding balance Balance|Balance (https://www.iso20022.org/standardsrepository/type/Balance)|Standard|ISO20022 BM ()
    common:Accountbalance LoanOutstandingBalance?;
    # Key dates associated with the account (e.g. opening date, closing date) Account/OpeningDate|Account/OpeningDate (https://www.iso20022.org/standardsrepository/type/Account)|Standard|ISO20022 BM ()
    common:Accountdatetimetypevalues AccountDateType?;
    # Value of the date type ISODateTime|ISODateTime (https://www.iso20022.org/standardsrepository/type/ISODateTime)|Standard|ISO20022 BM ()
    common:datetime AccountDate?;
};
