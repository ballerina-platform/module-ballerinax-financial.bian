import ballerina/http;
import financial.bian.attribute.groups.common as common;

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

# Reference to the party who is involved in Corporate Lease Arrangement ||
# |
public type leaseagreement record {
    # >
    # * `FinancingLease` - The long-term lease of a capital asset. To the lessee, a capital lease is the same as owning the asset. Accounting rules require that the leased asset and the present value of the lease payments be recorded on the lessee's balance sheet. For the lessor, a capital lease is treated as a sale of the asset.
    # https://financial-dictionary.thefreedictionary.com/capital+lease
    #
    # A capital lease is a contract entitling a renter to the temporary use of an asset, and such a lease has the economic characteristics of asset ownership for accounting purposes.
    # The capital lease requires a renter to book assets and liabilities associated with the lease if the rental contract meets specific requirements.
    # An operating lease is different in structure and accounting treatment from a capital lease. An operating lease is a contract that allows for the use of an asset but does not convey any ownership rights of the asset.
    # https://www.investopedia.com/terms/c/capitallease.asp
    #
    #
    # A finance lease (also known as a capital lease or a sales lease) is a type of lease in which a finance company is typically the legal owner of the asset for the duration of the lease, while the lessee not only has operating control over the asset, but also some share of the economic risks and returns from the change in the valuation of the underlying asset. 
    # https://en.wikipedia.org/wiki/Finance_lease
    #
    # Financial Leasing is an alternative way of financing whereby a licensed leasing company (the Lessor) purchases an asset on behalf of its customer (the Lessee) in return for a contractually agreed series of payments which usually include an element of interest. The lessor maintains ownership of the asset while the lessee enjoys the use of the asset for the duration of the lease agreement, usually accompanied by an option to buy the asset at the end of the contract. The lessee bears all costs and risks associated with the use of the leased asset.
    # https://www2.deloitte.com/cy/en/pages/financial-services/articles/finance-leasing.html
    #
    # * `OperatingLease` - Short-term, cancelable lease. A type of lease in which the contract period is shorter than the life of the equipment, and the lessor pays all maintenance and servicing costs.
    # https://financial-dictionary.thefreedictionary.com/operating+lease 
    #
    #
    # An operating lease is a contract that permits the use of an asset but does not convey ownership rights of the asset. 
    # https://www.investopedia.com/terms/o/operatinglease.asp#:~:text=An%20operating%20lease%20is%20a,on%20a%20company's%20balance%20sheet.
    leasingtypevalues LeaseAgreementType?;
};

public type CorporateLeaseFacilityOk record {|
    *http:Ok;
    CorporateLeaseFacility body;
|};

# Fulfill any scheduled and ad-hoc obligations under a service arrangement, most typically for a financial product or facility  within Corporate Lease. 
# Example: Perform the scheduled (e.g. statements, standing orders) and ad-hoc/requested (e.g. balance inquiries, fund transfers) fulfillment tasks for a customer current account facility.
public type CorporateLeaseFacility record {
    # A Classification value that distinguishes between arrangements according to the type of business services within Corporate Lease Arrangement ||
    # |
    common:featuretypevalues CorporateLeaseFacilityParameterType?;
    # A selected optional business service as subject matter of Corporate Lease Arrangement ||
    # |
    common:feature CorporateLeaseFacilitySelectedOption?;
    # The type of Corporate Lease Arrangement ||
    # |
    common:loanproducttypevalues CorporateLeaseFacilityType?;
    # Timetable to fulfill Corporate Lease Arrangement ||
    # |
    common:schedule CorporateLeaseFacilitySchedule?;
    # The status of Corporate Lease Arrangement Status |Status  (https://www.iso20022.org/standardsrepository/type/Status)|Standard|ISO20022 BM ()
    common:status CorporateLeaseFacilityStatus?;
    # Reference to the party who is involved in Corporate Lease Arrangement ||
    # |
    leaseagreement CorporateLeaseFacilityReference?;
    # The curreny which is arranged in Corporate Lease Arrangement CurrencyCode|CurrencyCode (https://www.iso20022.org/standardsrepository/type/CurrencyCode)|Standard|ISO20022 BM ()
    common:currencycode CorporateLeaseFacilityCurrency?;
    # Reference to the regulation which is defined in Corporate Lease Arrangement ||
    # |
    common:Regulation CorporateLeaseFacilityRegulationReference?;
    # A Classification that distinguishes between the regularity domains of Corporate Lease Arrangement ||
    # |
    common:Rulesettypevalues CorporateLeaseFacilityRegulationType?;
    # Reference to the jurisdiction that is assigned to Corporate Lease Arrangement in case of legal dispute. Jurisdiction|Jurisdiction (https://www.iso20022.org/standardsrepository/type/Jurisdiction)|Standard|ISO20022 BM ()
    common:Jurisdiction CorporateLeaseFacilityJurisdiction?;
    # The financial accounting unit into which the financial events, with regard to the origination and fulfillment of the agreement in the context of Corporate Lease Arrangement, are entered. ||
    # |
    common:text CorporateLeaseFacilityBookingLocation?;
    # The type of account which is linked to Corporate Lease Arrangement OBExternalAccountSubType1Code| ()|Standard|UK Open Banking ()
    common:Accounttypevalues CorporateLeaseFacilityAccountType?;
    # Reference to the account which is linked to Corporate Lease Arrangement Account|Account  (https://www.iso20022.org/standardsrepository/type/Account)|Standard|ISO20022 BM ()
    common:Account CorporateLeaseFacilityAccountReference?;
};

# >
# * `FinancingLease` - The long-term lease of a capital asset. To the lessee, a capital lease is the same as owning the asset. Accounting rules require that the leased asset and the present value of the lease payments be recorded on the lessee's balance sheet. For the lessor, a capital lease is treated as a sale of the asset.
# https://financial-dictionary.thefreedictionary.com/capital+lease
#
# A capital lease is a contract entitling a renter to the temporary use of an asset, and such a lease has the economic characteristics of asset ownership for accounting purposes.
# The capital lease requires a renter to book assets and liabilities associated with the lease if the rental contract meets specific requirements.
# An operating lease is different in structure and accounting treatment from a capital lease. An operating lease is a contract that allows for the use of an asset but does not convey any ownership rights of the asset.
# https://www.investopedia.com/terms/c/capitallease.asp
#
#
# A finance lease (also known as a capital lease or a sales lease) is a type of lease in which a finance company is typically the legal owner of the asset for the duration of the lease, while the lessee not only has operating control over the asset, but also some share of the economic risks and returns from the change in the valuation of the underlying asset. 
# https://en.wikipedia.org/wiki/Finance_lease
#
# Financial Leasing is an alternative way of financing whereby a licensed leasing company (the Lessor) purchases an asset on behalf of its customer (the Lessee) in return for a contractually agreed series of payments which usually include an element of interest. The lessor maintains ownership of the asset while the lessee enjoys the use of the asset for the duration of the lease agreement, usually accompanied by an option to buy the asset at the end of the contract. The lessee bears all costs and risks associated with the use of the leased asset.
# https://www2.deloitte.com/cy/en/pages/financial-services/articles/finance-leasing.html
#
# * `OperatingLease` - Short-term, cancelable lease. A type of lease in which the contract period is shorter than the life of the equipment, and the lessor pays all maintenance and servicing costs.
# https://financial-dictionary.thefreedictionary.com/operating+lease 
#
#
# An operating lease is a contract that permits the use of an asset but does not convey ownership rights of the asset. 
# https://www.investopedia.com/terms/o/operatinglease.asp#:~:text=An%20operating%20lease%20is%20a,on%20a%20company's%20balance%20sheet.
public type leasingtypevalues "FinancingLease"|"OperatingLease";

# Fulfill any scheduled and ad-hoc obligations under a service arrangement, most typically for a financial product or facility within Corporate Loan. 
public type CorporateLoanFacility record {
    # Reference to the loan product instance Loan|Loan (https://www.iso20022.org/standardsrepository/type/Loan)|Standard|ISO20022 ()
    loanagreement ProductInstanceReference?;
    # The associated loan account number in any suitable format AccountIdentification |AccountIdentification  (https://www.iso20022.org/standardsrepository/type/AccountIdentification)|Standard|ISO20022 BM ()
    common:Accountidentification CorporateLoanNumber?;
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
    common:Accountdatetimetypevalues DateType?;
    # Value of the date type ||
    # |
    common:datetime Date?;
};

public type CorporateLoanFacilityOk record {|
    *http:Ok;
    CorporateLoanFacility body;
|};

# Reference to Fiduciary Relationship Arrangement ||
# |
# Fulfill any scheduled and ad-hoc obligations under a service arrangement, most typically for a financial product or facility  within Fiduciary Agreement. 
# Example: Perform the scheduled (e.g. statements, standing orders) and ad-hoc/requested (e.g. balance inquiries, fund transfers) fulfillment tasks for a customer current account facility.
public type FiduciaryRelationshipFacility record {
    # A Classification value that distinguishes between arrangements according to the type of business services within Fiduciary Relationship Arrangement ||
    # |
    common:featuretypevalues FiduciaryRelationshipFacilityParameterType?;
    # A selected optional business service as subject matter of Fiduciary Relationship Arrangement ||
    # |
    common:feature FiduciaryRelationshipFacilitySelectedOption?;
    # The type of Fiduciary Relationship Arrangement ||
    # |
    common:text FiduciaryRelationshipFacilityType?;
    # Reference to Fiduciary Relationship Arrangement ||
    # |
    common:FinancialFacility FiduciaryRelationshipFacilityReference?;
    # Timetable to fulfill Fiduciary Relationship Arrangement ||
    # |
    common:schedule FiduciaryRelationshipFacilitySchedule?;
    # The status of Fiduciary Relationship Arrangement Status |Status  (https://www.iso20022.org/standardsrepository/type/Status)|Standard|ISO20022 BM ()
    common:status FiduciaryRelationshipFacilityStatus?;
    # The curreny which is arranged in Fiduciary Relationship Arrangement CurrencyCode|CurrencyCode (https://www.iso20022.org/standardsrepository/type/CurrencyCode)|Standard|ISO20022 BM ()
    common:currencycode FiduciaryRelationshipFacilityCurrency?;
    # Reference to the regulation which is defined in Fiduciary Relationship Arrangement ||
    # |
    common:Regulation FiduciaryRelationshipFacilityRegulationReference?;
    # A Classification that distinguishes between the regularity domains of Fiduciary Relationship Arrangement ||
    # |
    common:Rulesettypevalues FiduciaryRelationshipFacilityRegulationType?;
    # Reference to the jurisdiction that is assigned to Fiduciary Relationship Arrangement in case of legal dispute. Jurisdiction|Jurisdiction (https://www.iso20022.org/standardsrepository/type/Jurisdiction)|Standard|ISO20022 BM ()
    common:Jurisdiction FiduciaryRelationshipFacilityJurisdiction?;
    # The financial accounting unit into which the financial events, with regard to the origination and fulfillment of the agreement in the context of Fiduciary Relationship Arrangement, are entered. Location/Address|Location/Address (https://www.iso20022.org/standardsrepository/type/Location)|Standard|ISO20022 BM ()
    common:address FiduciaryRelationshipFacilityBookingLocation?;
    # The type of account which is linked to Fiduciary Relationship Arrangement OBExternalAccountSubType1Code| ()|Standard|UK Open Banking ()
    common:Accounttypevalues FiduciaryRelationshipFacilityAccountType?;
    # Reference to the account which is linked to Fiduciary Relationship Arrangement Account|Account  (https://www.iso20022.org/standardsrepository/type/Account)|Standard|ISO20022 BM ()
    common:Account FiduciaryRelationshipFacilityAccountReference?;
};

# >
# * `PostalAddress` - 
# * `GeolocationAddress` - 
# * `LatitudeAddress` - 
# * `LongitudeAddress` - 
# * `ElectronicAddress` - 
# >
# * `Bilateral` - Balance calculated regarding one member in the system. (ISO20022)
# * `Multilateral` - Balance calculated regarding all members in the system. (ISO20022)
# >
# * `OpeningBalance` - Book balance of the account at the beginning of the account servicer's business day. It always equals the closing book balance from the previous business day. Note: the available balance at the beginning of the account servicer's business day may be different from the closing book balance from the previous business day. (ISO20022)
# * `ClosingBalance` - Balance of the account at the end of the account servicer's business day. It is the sum of the opening balance at the beginning of the day and all entries booked to the account during the account servicer's business day. (ISO20022)
# * `CurrentBalance` - Balance of the account at a precise moment in time. (ISO20022)
# * `AvailableBalance` - Balance of money or securities that is at the disposal of the account owner on the date specified. (ISO20022)
# * `LedgerBalance` - Ledger balance refers to posted transactions (e.g. limit authorisation amount - posted transactions). (ISO20022)
# * `ReserveBalance` - 
# * `FreeBalance` - 
# * `PrincipalBalance` - 
# * `ClosingAvailable` - Closing balance of amount of money that is at the disposal of the account owner on the date specified.
# * `ClosingBooked` - Balance of the account at the end of the pre-agreed account reporting period. It is the sum of the opening booked balance at the beginning of the period and all entries booked to the account during the pre-agreed account reporting period.
# * `ForwardAvailable` - Forward available balance of money that is at the disposal of the account owner on the date specified.
# * `Information` - Balance for informational purposes.
# * `InterimAvailable` - Available balance calculated in the course of the account servicer's business day, at the time specified, and subject to further changes during the business day. The interim balance is calculated on the basis of booked credit and debit items during the calculation time/period specified.
# * `InterimBooked` - Balance calculated in the course of the account servicer's business day, at the time specified, and subject to further changes during the business day. The interim balance is calculated on the basis of booked credit and debit items during the calculation time/period specified.
# * `OpeningAvailable` - Opening balance of amount of money that is at the disposal of the account owner on the date specified.
# * `OpeningBooked` - Book balance of the account at the beginning of the account reporting period. It always equals the closing book balance from the previous report.
# * `PreviouslyClosedBooked` - Balance of the account at the previously closed account reporting period. The opening booked balance for the new period has to be equal to this balance.
# Usage: the previously booked closing balance should equal (inclusive date) the booked closing balance of the date it references and equal the actual booked opening balance of the current date.
# * `Expected` - Balance, composed of booked entries and pending items known at the time of calculation, which projects the end of day balance if everything is booked on the account and no other entry is posted.
# A selected optional business service as subject matter of Fiduciary Relationship Arrangement ||
# |
# The state of the obligations managed on the account, the result of all entries on the account.
#
# Numerical representation of the net increases and decreases in an account at a specific point in time. (ISO20022)
#
# Banking: Amount available in an account for withdrawal or use.
# Read more: http://www.businessdictionary.com/definition/balance.html
#
# Bookkeeping: Difference between the debit and credit sides of an account.
# Read more: http://www.businessdictionary.com/definition/balance.html
public type FiduciaryRelationshipFacilityOk record {|
    *http:Ok;
    # The Fiduciary Relationship Facility details
    FiduciaryRelationshipFacility body;
|};

# Timetable to fulfill Fiduciary Relationship Arrangement ||
# |
# Reference to the regulation which is defined in Fiduciary Relationship Arrangement ||
# |
public type RetrieveFiduciaryRelationshipFacilityResponse_FiduciaryRelationshipFacility record {
    # A Classification value that distinguishes between arrangements according to the type of business services within Fiduciary Relationship Arrangement ||
    # |
    common:featuretypevalues FiduciaryRelationshipFacilityParameterType?;
    # A selected optional business service as subject matter of Fiduciary Relationship Arrangement ||
    # |
    common:feature FiduciaryRelationshipFacilitySelectedOption?;
    # The type of Fiduciary Relationship Arrangement ||
    # |
    common:text FiduciaryRelationshipFacilityType?;
    # Reference to Fiduciary Relationship Arrangement ||
    # |
    common:FinancialFacility FiduciaryRelationshipFacilityReference?;
    # Timetable to fulfill Fiduciary Relationship Arrangement ||
    # |
    common:schedule FiduciaryRelationshipFacilitySchedule?;
    # The status of Fiduciary Relationship Arrangement Status |Status  (https://www.iso20022.org/standardsrepository/type/Status)|Standard|ISO20022 BM ()
    common:status FiduciaryRelationshipFacilityStatus?;
    # The curreny which is arranged in Fiduciary Relationship Arrangement CurrencyCode|CurrencyCode (https://www.iso20022.org/standardsrepository/type/CurrencyCode)|Standard|ISO20022 BM ()
    common:currencycode FiduciaryRelationshipFacilityCurrency?;
    # Reference to the regulation which is defined in Fiduciary Relationship Arrangement ||
    # |
    common:Regulation FiduciaryRelationshipFacilityRegulationReference?;
    # A Classification that distinguishes between the regularity domains of Fiduciary Relationship Arrangement ||
    # |
    common:Rulesettypevalues FiduciaryRelationshipFacilityRegulationType?;
    # Reference to the jurisdiction that is assigned to Fiduciary Relationship Arrangement in case of legal dispute. Jurisdiction|Jurisdiction (https://www.iso20022.org/standardsrepository/type/Jurisdiction)|Standard|ISO20022 BM ()
    common:Jurisdiction FiduciaryRelationshipFacilityJurisdiction?;
    # The financial accounting unit into which the financial events, with regard to the origination and fulfillment of the agreement in the context of Fiduciary Relationship Arrangement, are entered. Location/Address|Location/Address (https://www.iso20022.org/standardsrepository/type/Location)|Standard|ISO20022 BM ()
    common:address FiduciaryRelationshipFacilityBookingLocation?;
    # The type of account which is linked to Fiduciary Relationship Arrangement OBExternalAccountSubType1Code| ()|Standard|UK Open Banking ()
    common:Accounttypevalues FiduciaryRelationshipFacilityAccountType?;
    # Reference to the account which is linked to Fiduciary Relationship Arrangement Account|Account  (https://www.iso20022.org/standardsrepository/type/Account)|Standard|ISO20022 BM ()
    common:Account FiduciaryRelationshipFacilityAccountReference?;
};

# Output: ReCR Retrieve details about any aspect of Fiduciary Relationship Facility
public type RetrieveFiduciaryRelationshipFacilityResponse record {
    # The Fiduciary Relationship Facility details
    RetrieveFiduciaryRelationshipFacilityResponse_FiduciaryRelationshipFacility FiduciaryRelationshipFacility?;
};

# Output: CaCR Capture Leasing Item Administrative Plan activity or event related information
public type CaptureLeasingItemAdministrativePlanResponse record {
    # Leasing Item Administrative Plan details
    CaptureLeasingItemAdministrativePlanResponse_LeasingItemAdministrativePlan LeasingItemAdministrativePlan?;
};

public type CaptureLeasingItemAdministrativePlanRequest_LeasingItemAdministrativePlan record {
    # A Classification value that distinguishes between Budgets within Leasing Item Administrative Plan according to the type of resource and/or activity that is budgetted ||
    # |
    common:budgettypevalues LeasingItemAdministrativePlanBudgetType?;
    # The allocation of someone or something which is specified for Leasing Item Administrative Plan ||
    # |
    assignment LeasingItemAdministrativePlanAssignment?;
    # Party who is involved in  Leasing Item Administrative Plan ||
    # |
    leasingitemadministrativeplan LeasingItemAdministrativePlan?;
    # Party who is involved in  Leasing Item Administrative Plan ||
    # |
    leasingitemadministrativeplan LeasingItemAdministrativePlanReference?;
};

# Input: UpCR Update details relating to Leasing Item Administrative Plan
public type UpdateLeasingItemAdministrativePlanRequest record {
    # Leasing Item Administrative Plan details
    CaptureLeasingItemAdministrativePlanRequest_LeasingItemAdministrativePlan LeasingItemAdministrativePlan?;
};

# Output: RqCR Request manual intervention or a decision with respect to Leasing Item Administrative Plan
public type RequestLeasingItemAdministrativePlanResponse record {
    # Leasing Item Administrative Plan details
    CaptureLeasingItemAdministrativePlanResponse_LeasingItemAdministrativePlan LeasingItemAdministrativePlan?;
};

# Input: CoCR Control the processing of Leasing Item Administrative Plan
public type ControlLeasingItemAdministrativePlanRequest record {
    # Leasing Item Administrative Plan details
    CaptureLeasingItemAdministrativePlanRequest_LeasingItemAdministrativePlan LeasingItemAdministrativePlan?;
};

# Output: ReCR Retrieve details about any aspect of Leasing Item Administrative Plan
public type RetrieveLeasingItemAdministrativePlanResponse record {
    # Leasing Item Administrative Plan details
    CaptureLeasingItemAdministrativePlanRequest_LeasingItemAdministrativePlan LeasingItemAdministrativePlan?;
};

public type CaptureLeasingItemAdministrativePlanResponse_LeasingItemAdministrativePlan record {
    # A Classification value that distinguishes between Budgets within Leasing Item Administrative Plan according to the type of resource and/or activity that is budgetted ||
    # |
    common:budgettypevalues LeasingItemAdministrativePlanBudgetType?;
    # The allocation of someone or something which is specified for Leasing Item Administrative Plan ||
    # |
    assignment LeasingItemAdministrativePlanAssignment?;
    # Party who is involved in  Leasing Item Administrative Plan ||
    # |
    leasingitemadministrativeplan LeasingItemAdministrativePlan?;
};

public type InitiateLeasingItemAdministrativePlanResponseOk record {|
    *http:Ok;
    InitiateLeasingItemAdministrativePlanResponse body;
|};

# Input: RqCR Request manual intervention or a decision with respect to Leasing Item Administrative Plan
public type RequestLeasingItemAdministrativePlanRequest record {
    # Leasing Item Administrative Plan details
    CaptureLeasingItemAdministrativePlanRequest_LeasingItemAdministrativePlan LeasingItemAdministrativePlan?;
};

# Output: EcCR Accept, verify, etc. aspects of Leasing Item Administrative Plan processing
public type ExchangeLeasingItemAdministrativePlanResponse record {
    # Leasing Item Administrative Plan details
    CaptureLeasingItemAdministrativePlanResponse_LeasingItemAdministrativePlan LeasingItemAdministrativePlan?;
};

# The allocation of someone or something which is specified for Leasing Item Administrative Plan ||
# |
public type assignment record {
    # Reference to the party involved in the assignment
    common:party PartyReference?;
    # Role of the party in the assignment
    common:partyrole PartyInvolvement?;
    # Subject matter of the assignment
    string SubjectMatter?;
};

# Input: CaCR Capture Leasing Item Administrative Plan activity or event related information
public type CaptureLeasingItemAdministrativePlanRequest record {
    # Leasing Item Administrative Plan details
    CaptureLeasingItemAdministrativePlanRequest_LeasingItemAdministrativePlan LeasingItemAdministrativePlan?;
};

# Output: UpCR Update details relating to Leasing Item Administrative Plan
public type UpdateLeasingItemAdministrativePlanResponse record {
    # Leasing Item Administrative Plan details
    CaptureLeasingItemAdministrativePlanResponse_LeasingItemAdministrativePlan LeasingItemAdministrativePlan?;
};

# Output: CoCR Control the processing of Leasing Item Administrative Plan
public type ControlLeasingItemAdministrativePlanResponse record {
    # Leasing Item Administrative Plan details
    CaptureLeasingItemAdministrativePlanResponse_LeasingItemAdministrativePlan LeasingItemAdministrativePlan?;
};

# Party who is involved in  Leasing Item Administrative Plan ||
# |
public type leasingitemadministrativeplan record {
    # A plan for administration of a leased item that is the subject of a leasing agreement financed through the bank.
    string LeasingItemAdministrativePlan?;
};

# Input: EcCR Accept, verify, etc. aspects of Leasing Item Administrative Plan processing
public type ExchangeLeasingItemAdministrativePlanRequest record {
    # Leasing Item Administrative Plan details
    CaptureLeasingItemAdministrativePlanRequest_LeasingItemAdministrativePlan LeasingItemAdministrativePlan?;
};

# Input: GrCR Obtain permission to act in relation to Leasing Item Administrative Plan
public type GrantLeasingItemAdministrativePlanRequest record {
    # Leasing Item Administrative Plan details
    CaptureLeasingItemAdministrativePlanRequest_LeasingItemAdministrativePlan LeasingItemAdministrativePlan?;
};

# Output: InCR Instantiate a new Leasing Item Administrative Plan
public type InitiateLeasingItemAdministrativePlanResponse record {
    # Leasing Item Administrative Plan details
    CaptureLeasingItemAdministrativePlanResponse_LeasingItemAdministrativePlan LeasingItemAdministrativePlan?;
};

# Input: InCR Instantiate a new Leasing Item Administrative Plan
public type InitiateLeasingItemAdministrativePlanRequest record {
    # Leasing Item Administrative Plan details
    CaptureLeasingItemAdministrativePlanRequest_LeasingItemAdministrativePlan LeasingItemAdministrativePlan?;
};

# Output: GrCR Obtain permission to act in relation to Leasing Item Administrative Plan
public type GrantLeasingItemAdministrativePlanResponse record {
    # Leasing Item Administrative Plan details
    CaptureLeasingItemAdministrativePlanResponse_LeasingItemAdministrativePlan LeasingItemAdministrativePlan?;
};

# The type of Leasing Arrangement ||
# |
# Fulfill any scheduled and ad-hoc obligations under a service arrangement, most typically for a financial product or facility  within Leasing. 
# Example: Perform the scheduled (e.g. statements, standing orders) and ad-hoc/requested (e.g. balance inquiries, fund transfers) fulfillment tasks for a customer current account facility.
public type LeasingFacility record {
    # A Classification value that distinguishes between arrangements according to the type of business services within Leasing Arrangement ||
    # |
    common:featuretypevalues LeasingFacilityParameterType?;
    # A selected optional business service as subject matter of Leasing Arrangement ||
    # |
    common:feature LeasingFacilitySelectedOption?;
    # The type of Leasing Arrangement ||
    # |
    common:loanproducttypevalues LeasingFacilityType?;
    # Reference to Leasing Arrangement ||
    # |
    leasearrangement LeasingFacilityReference?;
    # Timetable to fulfill Leasing Arrangement ||
    # |
    common:schedule LeasingFacilitySchedule?;
    # The status of Leasing Arrangement Status |Status  (https://www.iso20022.org/standardsrepository/type/Status)|Standard|ISO20022 BM ()
    common:status LeasingFacilityStatus?;
    # The curreny which is arranged in Leasing Arrangement CurrencyCode|CurrencyCode (https://www.iso20022.org/standardsrepository/type/CurrencyCode)|Standard|ISO20022 BM ()
    common:currencycode LeasingFacilityCurrency?;
    # Reference to the regulation which is defined in Leasing Arrangement ||
    # |
    common:Regulation LeasingFacilityRegulationReference?;
    # A Classification that distinguishes between the regularity domains of Leasing Arrangement ||
    # |
    common:Rulesettypevalues LeasingFacilityRegulationType?;
    # Reference to the jurisdiction that is assigned to Leasing Arrangement in case of legal dispute. Jurisdiction|Jurisdiction (https://www.iso20022.org/standardsrepository/type/Jurisdiction)|Standard|ISO20022 BM ()
    common:Jurisdiction LeasingFacilityJurisdiction?;
    # The financial accounting unit into which the financial events, with regard to the origination and fulfillment of the agreement in the context of Leasing Arrangement, are entered.
    string LeasingFacilityBookingLocation?;
    # The type of account which is linked to Leasing Arrangement OBExternalAccountSubType1Code| ()|Standard|UK Open Banking ()
    common:Accounttypevalues LeasingFacilityAccountType?;
    # Reference to the account which is linked to Leasing Arrangement Account|Account  (https://www.iso20022.org/standardsrepository/type/Account)|Standard|ISO20022 BM ()
    common:Account LeasingFacilityAccountReference?;
};

public type LeasingFacilityOk record {|
    *http:Ok;
    LeasingFacility body;
|};

# Reference to Leasing Arrangement ||
# |
public type leasearrangement record {
    # The type of Leasing Arrangement
    string LeasingArrangementType?;
};

public type LoanFacilityOk record {|
    *http:Ok;
    LoanFacility body;
|};

# Fulfill any scheduled and ad-hoc obligations under a service arrangement, most typically for a financial product or facility within Loan. 
public type LoanFacility record {
    # Reference to the loan product instance Loan|Loan (https://www.iso20022.org/standardsrepository/type/Loan)|Standard|ISO20022 BM ()
    common:loanproduct ProductInstanceReference?;
    # The associated loan account number in any suitable format AccountIdentification |AccountIdentification  (https://www.iso20022.org/standardsrepository/type/AccountIdentification)|Standard|ISO20022 BM ()
    common:Accountidentification LoanNumber?;
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
    # Reference to applicable insurance arrangements ||
    # |
    insuranceagreement InsuranceReference?;
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
    common:Accountdatetimetypevalues DateType?;
    # Value of the date type ISODateTime|ISODateTime (https://www.iso20022.org/standardsrepository/type/ISODateTime)|Standard|ISO20022 BM ()
    common:datetime Date?;
};

# The product features/services available with a financical facility
public type Restructuring record {
    # Description of the restructuring required
    common:task RestructuringTask?;
    # Definition of issue to resolve and the restructuring solution with associated changes to loan terms and the assessed impact
    common:Assessment RestructuringEvaluation?;
    # Definition of issue to resolve and the restructuring solution with associated changes to loan terms and the assessed impact
    common:Assessment RestructuringWriteDown?;
};

public type RestructuringOk record {|
    *http:Ok;
    Restructuring body;
|};

# Reference to applicable insurance arrangements ||
# |
public type insuranceagreement record {
    # An identifier that allows to uniquely refer to an instance of an Insurance Agreement.
    string InsuranceAgreementIdentifier?;
};

public type MerchandisingLoanFacilityOk record {|
    *http:Ok;
    # The merchandising loan facility response body
    MerchandisingLoanFacility body;
|};

# Fulfill any scheduled and ad-hoc obligations under a service arrangement, most typically for a financial product or facility  within Merchandising Loan. 
# Example: Perform the scheduled (e.g. statements, standing orders) and ad-hoc/requested (e.g. balance inquiries, fund transfers) fulfillment tasks for a customer current account facility.
public type MerchandisingLoanFacility record {
    # A Classification value that distinguishes between arrangements according to the type of business services within Merchandising Loan Arrangement ||
    # |
    common:featuretypevalues MerchandisingLoanFacilityParameterType?;
    # A selected optional business service as subject matter of Merchandising Loan Arrangement ||
    # |
    common:feature MerchandisingLoanFacilitySelectedOption?;
    # The type of Merchandising Loan Arrangement ||
    # |
    common:loanproducttypevalues MerchandisingLoanFacilityType?;
    # Reference to Merchandising Loan Arrangement Loan|Loan (https://www.iso20022.org/standardsrepository/type/Loan)|Standard|ISO20022 BM ()
    common:loanarrangement MerchandisingLoanFacilityReference?;
    # Timetable to fulfill Merchandising Loan Arrangement ||
    # |
    common:schedule MerchandisingLoanFacilitySchedule?;
    # The status of Merchandising Loan Arrangement Status |Status  (https://www.iso20022.org/standardsrepository/type/Status)|Standard|ISO20022 BM ()
    common:status MerchandisingLoanFacilityStatus?;
    # Reference to the party who is involved in Merchandising Loan Arrangement Party|Party (https://www.iso20022.org/standardsrepository/type/Party)|Standard|ISO20022BM ()
    common:party MerchandisingLoanFacilityAssociatedParty?;
    # The curreny which is arranged in Merchandising Loan Arrangement CurrencyCode|CurrencyCode (https://www.iso20022.org/standardsrepository/type/CurrencyCode)|Standard|ISO20022 BM ()
    common:currencycode MerchandisingLoanFacilityCurrency?;
    # Reference to the regulation which is defined in Merchandising Loan Arrangement GovernanceRules|GovernanceRules (https://www.iso20022.org/standardsrepository/type/GovernanceRules)|Standard|ISO20022 BM ()
    common:RuleSet MerchandisingLoanFacilityRegulationReference?;
    # A Classification that distinguishes between the regularity domains of Merchandising Loan Arrangement ||
    # |
    common:Rulesettypevalues MerchandisingLoanFacilityRegulationType?;
    # Reference to the jurisdiction that is assigned to Merchandising Loan Arrangement in case of legal dispute. Jurisdiction|Jurisdiction (https://www.iso20022.org/standardsrepository/type/Jurisdiction)|Standard|ISO20022 BM ()
    common:Jurisdiction MerchandisingLoanFacilityJurisdiction?;
    # The financial accounting unit into which the financial events, with regard to the origination and fulfillment of the agreement in the context of Merchandising Loan Arrangement, are entered. Location|Location (https://www.iso20022.org/standardsrepository/type/Location)|Standard|ISO20022 BM  ()
    common:location MerchandisingLoanFacilityBookingLocation?;
    # The type of account which is linked to Merchandising Loan Arrangement OBExternalAccountSubType1Code| ()|Standard|UK Open Banking ()
    common:Accounttypevalues MerchandisingLoanFacilityAccountType?;
    # Reference to the account which is linked to Merchandising Loan Arrangement Account|Account  (https://www.iso20022.org/standardsrepository/type/Account)|Standard|ISO20022 BM ()
    common:Account MerchandisingLoanFacilityAccountReference?;
};

public type MortgageLoanFacilityOk record {|
    *http:Ok;
    MortgageLoanFacility body;
|};

public type MortgageLoanFacility record {
    # A Classification value that distinguishes between arrangements according to the type of business services within Mortgage Loan Arrangement ||
    # |
    common:featuretypevalues MortgageLoanFacilityParameterType?;
    # A selected optional business service as subject matter of Mortgage Loan Arrangement ||
    # |
    common:feature MortgageLoanFacilitySelectedOption?;
    # The type of Mortgage Loan Arrangement ||
    # |
    common:loanproducttypevalues MortgageLoanFacilityType?;
    # Reference to Mortgage Loan Arrangement Loan|Loan (https://www.iso20022.org/standardsrepository/type/Loan)|Standard|ISO20022 BM ()
    common:loanarrangement MortgageLoanFacilityReference?;
    # Timetable to fulfill Mortgage Loan Arrangement ||
    # |
    common:schedule MortgageLoanFacilitySchedule?;
    # The status of Mortgage Loan Arrangement Status |Status  (https://www.iso20022.org/standardsrepository/type/Status)|Standard|ISO20022 BM ()
    common:status MortgageLoanFacilityStatus?;
    # The curreny which is arranged in Mortgage Loan Arrangement CurrencyCode|CurrencyCode (https://www.iso20022.org/standardsrepository/type/CurrencyCode)|Standard|ISO20022 BM ()
    common:currencycode MortgageLoanFacilityCurrency?;
    # Reference to the regulation which is defined in Mortgage Loan Arrangement ||
    # |
    common:Regulation MortgageLoanFacilityRegulationReference?;
    # A Classification that distinguishes between the regularity domains of Mortgage Loan Arrangement ||
    # |
    common:Rulesettypevalues MortgageLoanFacilityRegulationType?;
    # Reference to the jurisdiction that is assigned to Mortgage Loan Arrangement in case of legal dispute. Jurisdiction|Jurisdiction (https://www.iso20022.org/standardsrepository/type/Jurisdiction)|Standard|ISO20022 BM ()
    common:Jurisdiction MortgageLoanFacilityJurisdiction?;
    # The financial accounting unit into which the financial events, with regard to the origination and fulfillment of the agreement in the context of Mortgage Loan Arrangement, are entered. ||
    # |
    common:text MortgageLoanFacilityBookingLocation?;
    # The type of account which is linked to Mortgage Loan Arrangement OBExternalAccountSubType1Code| ()|Standard|UK Open Banking ()
    common:Accounttypevalues MortgageLoanFacilityAccountType?;
    # Reference to the account which is linked to Mortgage Loan Arrangement Account|Account  (https://www.iso20022.org/standardsrepository/type/Account)|Standard|ISO20022 BM ()
    common:Account MortgageLoanFacilityAccountReference?;
};

public type SavingsAccountFacilityOk record {|
    *http:Ok;
    SavingsAccountFacility body;
|};

# Reference to the savings account product instance
public type savingsaccountagreement record {
    # Specifies terms and conditions.
    common:condition SavingsAccountTermAndCondition?;
};

public type SavingsAccountFacility record {
    # Reference to the savings account product instance |CashAccountContract (https://www.iso20022.org/standardsrepository/type/CashAccountContract)|Standard|ISO20022 BM ()
    savingsaccountagreement ProductInstanceReference?;
    # The associated account number in any suitable format (e.g. IBAN) AccountIdentification |AccountIdentification  (https://www.iso20022.org/standardsrepository/type/AccountIdentification)|Standard|ISO20022 BM ()
    common:Accountidentification SavingsAccountNumber?;
    # Reference to the account primary party/owner ||
    # |
    common:involvedparty CustomerReference?;
    # Bank branch associated with the account for booking purposes ||
    # |
    common:branch BankBranchLocationReference?;
    # The type of savings account (e.g. checking, student, small business) OBExternalAccountSubType1Code| ()|Standard|UK Open Banking ()
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
    common:accountinvolvementtypevalues AssociationType?;
    # Description of the role, obligations or entitlements of the associated party ||
    # |
    common:partyobligationorentitlement AssociationObligationEntitlement?;
    # Reference to the associated party Party|Party (https://www.iso20022.org/standardsrepository/type/Party)|Standard|ISO20022BM ()
    common:party AssociationReference?;
    # Details of the linked account Account|Account  (https://www.iso20022.org/standardsrepository/type/Account)|Standard|ISO20022 BM ()
    common:Account LinkedAccounts?;
    # The type and purpose for the link ||
    # |
    common:account_accountrelationshiptypevalues LinkType?;
    # Details of the linked account Account|Account  (https://www.iso20022.org/standardsrepository/type/Account)|Standard|ISO20022 BM ()
    common:Account AccountDetails?;
    # Key dates associated with the account (e.g. opening date, closing date) Account/OpeningDate|Account/OpeningDate (https://www.iso20022.org/standardsrepository/type/Account)|Standard|ISO20022 BM ()
    common:Accountdatetimetypevalues AccountDateType?;
    # Value of the date type ISODateTime|ISODateTime (https://www.iso20022.org/standardsrepository/type/ISODateTime)|Standard|ISO20022 BM ()
    common:datetime AccountDate?;
    # The current calculated limit ||
    # |
    common:value LimitValue?;
    # The type of limit  LimitTypeCode|LimitTypeCode (https://www.iso20022.org/standardsrepository/type/LimitTypeCode)|Standard|ISO20022 BM ()
    common:Limittypevalues LimitType?;
    # The associated limit settings and rules Limit|Limit (https://www.iso20022.org/standardsrepository/type/Limit)|Standard|ISO20022 (https://www.iso20022.org/)
    common:Limitarrangement LimitSettings?;
};

# The configuration and execution of Standing Order Fulfillment arrangement within the Standing Order Fulfillment
public type StandingOrderPayment record {
    # The required status/situation prior to the implementation of the feature
    common:condition StandingOrderPaymentPreconditions?;
    # A schedule which is specified the first payment, last payment, next payment, etc. for a standing orde ||
    # |
    common:schedule StandingOrderPaymentFeatureSchedule?;
    # The Standing Order Fulfillment specific Business Service
    common:businessservice BusinessService?;
    # The required status/situation prior to the implementation of the feature
    common:condition StandingOrderPaymentPostconditions?;
    # >
    # * `CreditTransferService` - A payment service allowing a payer to transfer fund to a beneficiary. (a proposed definition for BIAN BOM adapted from ECB)
    # * `StandingOrderService` - A credit transfer service to make regular transfers on given dates to a named beneﬁciary. (a proposed definition for BIAN BOM adapted from ISO20022)
    # * `DirectDebitService` - A payment service for debiting a payer's payment account, where a payment transaction is initiated by the payee on the basis of the payer's consent given to the payee, to the payee's payment service provider or to the payer's own payment service provider. (a proposed definition for BIAN BOM adapted from PSD)
    # * `CardPaymentService` - A payment service to execute payment transactions through a payment card, including online payments. (a proposed definition for BIAN BOM adapted from PSD)
    # * `WithdrawService` - A payment service to take fund out of an account. (a proposed definition for BIAN BOM)
    # * `DepositService` - A payment service to place funds into an account for safekeeping. (a proposed definition for BIAN BOM)
    # * `OverdraftService` - A payment service that allows fund transfer even if there is no provision on the account. (a proposed definition for BIAN BOM)
    # * `MoneyRemittanceService` - A payment service where funds are received from a payer, without any payment accounts being created in the name of the payer or the payee, for the sole purpose of transferring a corresponding amount to a payee or to another payment service provider acting on behalf of the payee, and/or where such funds are received on behalf of and made available to the payee. (a proposed definition for BIAN BOM adapted from PSD)
    # * `StatementService` - A reporting service on payment transactions registered on an account. (a proposed definition for BIAN BOM)
    common:Paymentservicetypevalues StandingOrderPaymentServiceType?;
    # The particular date and time point in the progression of time
    common:text StandingOrderPaymentServiceDescription?;
    # The particular date and time point in the progression of time
    common:text StandingOrderPaymentServiceInputsandOuputs?;
    # Documentation, meeting schedules, notes, reasearch. calculations and any other work products produced by the business service
    common:workproduct StandingOrderPaymentServiceWorkProduct?;
    # Name by which a party is known and which is usually used to identify that party. (ISO20022)
    common:name StandingOrderPaymentServiceName?;
    # The date and time when the standing order is executed
    common:datetime StandingOrderExecutionDate?;
    # The particular date and time point in the progression of time
    common:text StandingOrderExecutionResultType?;
    # The particular date and time point in the progression of time
    common:text StandingOrderExecutionNotExecutedReasonDescription?;
    # Fee amount charged for the execution of the standing order CurrencyAndAmount|CurrencyAndAmount (https://www.iso20022.org/standardsrepository/type/CurrencyAndAmount)|Standard|ISO20022  ()
    common:amount StandingOrderExecutionPrincipalAmount?;
    # Fee amount charged for the execution of the standing order CurrencyAndAmount|CurrencyAndAmount (https://www.iso20022.org/standardsrepository/type/CurrencyAndAmount)|Standard|ISO20022  ()
    common:amount StandingOrderExecutionFeeAmount?;
};

public type StandingOrderPaymentOk record {|
    *http:Ok;
    StandingOrderPayment body;
|};

public type StandingOrderFacilityOk record {|
    *http:Ok;
    StandingOrderFacility body;
|};

# Fulfill any scheduled and ad-hoc obligations under a service arrangement, most typically for a financial product or facility  within Standing Order. 
# Example: Perform the scheduled (e.g. statements, standing orders) and ad-hoc/requested (e.g. balance inquiries, fund transfers) fulfillment tasks for a customer current account facility.
public type StandingOrderFacility record {
    # Reference to the regulation which is defined in Standing Order Arrangement GovernanceRules|GovernanceRules (https://www.iso20022.org/standardsrepository/type/GovernanceRules)|Standard|ISO20022 BM ()
    common:RuleSet StandingOrderRegulationReference?;
    # A Classification that distinguishes between the regularity domains of Standing Order Arrangement ||
    # |
    common:Rulesettypevalues StandingOrderRegulationType?;
    # Reference to the jurisdiction that is assigned to Standing Order Arrangement in case of legal dispute. Jurisdiction|Jurisdiction (https://www.iso20022.org/standardsrepository/type/Jurisdiction)|Standard|ISO20022 BM ()
    common:Jurisdiction StandingOrderJurisdiction?;
    # Reference to the product which is linked to Standing Order Arrangement ||
    # |
    common:ProductAgreement StandingOrderProductReference?;
    # A reference to the account resource.  (Open Banking) Account|Account  (https://www.iso20022.org/standardsrepository/type/Account)|Standard|ISO20022 BM ()
    common:Account FeeAccountReference?;
    # Fee amount charged for the execution of the standing order CurrencyAndAmount|CurrencyAndAmount (https://www.iso20022.org/standardsrepository/type/CurrencyAndAmount)|Standard|ISO20022  ()
    common:amount StandingOrderAmount?;
    # Fee amount charged for the execution of the standing order CurrencyAndAmount|CurrencyAndAmount (https://www.iso20022.org/standardsrepository/type/CurrencyAndAmount)|Standard|ISO20022  ()
    common:amount FeeAmount?;
    # Payment details that will be added to the credit transfer or request to pay during execution of the standing order PaymentTerms|PaymentTerms (https://www.iso20022.org/standardsrepository/type/PaymentTerms)|Standard|ISO20022 BM ()
    common:paymentarrangement PaymentDetailsDescription?;
    # Periodicity with which the standing order will be executed, e.g. yearly, quarterly, monthly, weekly, every XX days,…….
    #
    # Regularity with which payment instructions are to be created and processed as a result of the standing order, such as daily, weekly, or monthly. (ISO20022) FrequencyCode|FrequencyCode (https://www.iso20022.org/standardsrepository/type/FrequencyCode)|Standard|ISO20022 ()
    common:Frequency StandingOrderFrequency?;
    # Unique and unambiguous identification for a standing order, as assigned by the account servicer or the account owner. (ISO20022) GenericIdentification|GenericIdentification (https://www.iso20022.org/standardsrepository/type/GenericIdentification)|Standard|ISO20022 BM ()
    common:identifier StandingOrderIdentification?;
    # The status of standing order Status |Status  (https://www.iso20022.org/standardsrepository/type/Status)|Standard|ISO20022 BM ()
    common:status StandingOrderStatus?;
    # A schedule which is specified the first payment, last payment, next payment, etc. for a standing orde ||
    # |
    common:schedule StandingOrderSchedule?;
    # Party that owes an amount of money to the (ultimate) creditor. (ISO20022) ||
    # |
    common:involvedparty StandingOrderCreditorAgent?;
    # A reference to the account resource.  (Open Banking) Account|Account  (https://www.iso20022.org/standardsrepository/type/Account)|Standard|ISO20022 BM ()
    common:Account StandingOrderCreditorAccount?;
    # A reference to the account resource.  (Open Banking) Account|Account  (https://www.iso20022.org/standardsrepository/type/Account)|Standard|ISO20022 BM ()
    common:Account StandingOrderDebtorAccount?;
    # Party that owes an amount of money to the (ultimate) creditor. (ISO20022) ||
    # |
    common:involvedparty StandingOrderCreditor?;
    # Party that owes an amount of money to the (ultimate) creditor. (ISO20022) ||
    # |
    common:involvedparty StandingOrderDebtor?;
    # THe currency of Standing Order Amount CurrencyCode|CurrencyCode (https://www.iso20022.org/standardsrepository/type/CurrencyCode)|Standard|ISO20022 BM ()
    common:currencycode StandingOrderAmountCurrency?;
    # Dates during which the standing order is in effect. (ISO20022) DateTimePeriod|DateTimePeriod (https://www.iso20022.org/standardsrepository/type/DateTimePeriod)|Standard|ISO20022 BM ()
    common:datetimeperiod StandingOrderValidityPeriod?;
    # Type of the standing order. StandingOrderTypeCode|StandingOrderTypeCode (https://www.iso20022.org/standardsrepository/type/StandingOrderTypeCode)|Standard|ISO20022 BM ()
    standingordertypevalues StandingOrderType?;
    # Number of the payments that will be made in completing this frequency sequence including any executed since the sequence start date.
    string NumberofPayments?;
    # A reference to the account resource.  (Open Banking) Account|Account  (https://www.iso20022.org/standardsrepository/type/Account)|Standard|ISO20022 BM ()
    common:Account StandingOrderAccountReference?;
    # A reference to the payment transaction. (Open Banking) Payment|Payment (https://www.iso20022.org/standardsrepository/type/Payment)|Standard|ISO20022 BM ()
    common:paymenttransaction StandingOrderPaymentTransactionReference?;
};

# The type of Syndicated Loan Arrangement ||
# |
public type SyndicatedLoanFacilityOk record {|
    *http:Ok;
    # The Syndicated Loan Facility response body
    SyndicatedLoanFacility body;
|};

# Fulfill any scheduled and ad-hoc obligations under a service arrangement, most typically for a financial product or facility  within Syndicated Loan. 
# Example: Perform the scheduled (e.g. statements, standing orders) and ad-hoc/requested (e.g. balance inquiries, fund transfers) fulfillment tasks for a customer current account facility.
public type SyndicatedLoanFacility record {
    # A Classification value that distinguishes between arrangements according to the type of business services within Syndicated Loan Arrangement ||
    # |
    common:featuretypevalues SyndicatedLoanFacilityParameterType?;
    # A selected optional business service as subject matter of Syndicated Loan Arrangement ||
    # |
    common:feature SyndicatedLoanFacilitySelectedOption?;
    # The type of Syndicated Loan Arrangement ||
    # |
    common:loanproducttypevalues SyndicatedLoanFacilityType?;
    # Reference to Syndicated Loan Arrangement Loan|Loan (https://www.iso20022.org/standardsrepository/type/Loan)|Standard|ISO20022 BM ()
    common:loanarrangement SyndicatedLoanFacilityReference?;
    # Timetable to fulfill Syndicated Loan Arrangement ||
    # |
    common:schedule SyndicatedLoanFacilitySchedule?;
    # The status of Syndicated Loan Arrangement Status |Status  (https://www.iso20022.org/standardsrepository/type/Status)|Standard|ISO20022 BM ()
    common:status SyndicatedLoanFacilityStatus?;
    # The curreny which is arranged in Syndicated Loan Arrangement CurrencyCode|CurrencyCode (https://www.iso20022.org/standardsrepository/type/CurrencyCode)|Standard|ISO20022 BM ()
    common:currencycode SyndicatedLoanFacilityCurrency?;
    # Reference to the regulation which is defined in Syndicated Loan Arrangement ||
    # |
    common:Regulation SyndicatedLoanFacilityRegulationReference?;
    # A Classification that distinguishes between the regularity domains of Syndicated Loan Arrangement ||
    # |
    common:Rulesettypevalues SyndicatedLoanFacilityRegulationType?;
    # Reference to the jurisdiction that is assigned to Syndicated Loan Arrangement in case of legal dispute. Jurisdiction|Jurisdiction (https://www.iso20022.org/standardsrepository/type/Jurisdiction)|Standard|ISO20022 BM ()
    common:Jurisdiction SyndicatedLoanFacilityJurisdiction?;
    # The financial accounting unit into which the financial events, with regard to the origination and fulfillment of the agreement in the context of Syndicated Loan Arrangement, are entered. ||
    # |
    common:text SyndicatedLoanFacilityBookingLocation?;
    # The type of account which is linked to Syndicated Loan Arrangement OBExternalAccountSubType1Code| ()|Standard|UK Open Banking ()
    common:Accounttypevalues SyndicatedLoanFacilityAccountType?;
    # Reference to the account which is linked to Syndicated Loan Arrangement Account|Account  (https://www.iso20022.org/standardsrepository/type/Account)|Standard|ISO20022 BM ()
    common:Account SyndicatedLoanFacilityAccountReference?;
};

# Fulfill any scheduled and ad-hoc obligations under a service arrangement, most typically for a financial product or facility within Term Deposit. 
public type TermDepositFacility record {
    # Reference to the corporate deposit account product instance ||
    # |
    termdepositagreement ProductInstanceReference?;
    # External account number of the account of the beneficiary AccountIdentification |AccountIdentification  (https://www.iso20022.org/standardsrepository/type/AccountIdentification)|Standard|ISO20022 BM ()
    common:Accountidentification AccountNumber?;
    # Reference to the bank of the beneficiary account (BIC) ||
    # |
    common:involvedparty CustomerReference?;
    # Bank branch associated with the account for booking purposes ||
    # |
    common:branch BankBranchLocationReference?;
    # The type of corporate deposit account (e.g. checking, student, small business) OBExternalAccountSubType1Code| ()|Standard|UK Open Banking ()
    common:Accounttypevalues AccountType?;
    # The primary account currency CurrencyCode|CurrencyCode (https://www.iso20022.org/standardsrepository/type/CurrencyCode)|Standard|ISO20022 BM ()
    common:Accountcurrency AccountCurrency?;
    # This attribute specifies the contract number of the transaction from the sender's viewpoint.  (SWIFT Standard ISO15022/MT320)
    # GenericIdentification|GenericIdentification (https://www.iso20022.org/standardsrepository/type/GenericIdentification)|Standard|ISO20022 BM ()
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
    common:accountinvolvementtypevalues AssociationType?;
    # Description of the role, obligations or entitlements of the associated party ||
    # |
    common:partyobligationorentitlement AssociationObligationEntitlement?;
    # Reference to the associated party Party|Party (https://www.iso20022.org/standardsrepository/type/Party)|Standard|ISO20022BM ()
    common:party AssociationReference?;
    # Reference to the account of the beneficiary party (if in this bank) Account|Account  (https://www.iso20022.org/standardsrepository/type/Account)|Standard|ISO20022 BM ()
    common:Account LinkedAccounts?;
    # The type and purpose for the link ||
    # |
    common:account_accountrelationshiptypevalues LinkType?;
    # Reference to the account of the beneficiary party (if in this bank) Account|Account  (https://www.iso20022.org/standardsrepository/type/Account)|Standard|ISO20022 BM ()
    common:Account AccountDetails?;
    # The associated limit settings and rules Limit|Limit (https://www.iso20022.org/standardsrepository/type/Limit)|Standard|ISO20022 (https://www.iso20022.org/)
    common:Limitarrangement PositionLimits?;
    # The type of limit  LimitTypeCode|LimitTypeCode (https://www.iso20022.org/standardsrepository/type/LimitTypeCode)|Standard|ISO20022 BM ()
    common:Limittypevalues PositionLimitType?;
    # The associated limit settings and rules Limit|Limit (https://www.iso20022.org/standardsrepository/type/Limit)|Standard|ISO20022 (https://www.iso20022.org/)
    common:Limitarrangement PositionLimitSettings?;
    # The current calculated limit ||
    # |
    common:value PositionLimitValue?;
    # Key dates associated with the account (e.g. opening date, closing date) Account/OpeningDate|Account/OpeningDate (https://www.iso20022.org/standardsrepository/type/Account)|Standard|ISO20022 BM ()
    common:Accountdatetimetypevalues AccountDateType?;
    # Value date of the deposit ISODateTime|ISODateTime (https://www.iso20022.org/standardsrepository/type/ISODateTime)|Standard|ISO20022 BM ()
    common:datetime AccountDate?;
    # The schedule for generating product statements to schedule ||
    # |
    common:schedule StatementsSchedule?;
    # The types of transactions and transaction details to be included ||
    # |
    common:statementtypevalues StatementType?;
    # The types of transactions and transaction details to be included ||
    # |
    common:statementtypevalues StatementTransactionType?;
    # Duration of deposit DateTimePeriod|DateTimePeriod (https://www.iso20022.org/standardsrepository/type/DateTimePeriod)|Standard|ISO20022 BM ()
    common:datetimeperiod StatementPeriod?;
    # The statement content ||
    # |
    common:Report StatementReport?;
    # Principal amount to be paid back CurrencyAndAmount|CurrencyAndAmount (https://www.iso20022.org/standardsrepository/type/CurrencyAndAmount)|Standard|ISO20022  ()
    common:amount TermDepositAmount?;
    # Duration of deposit DateTimePeriod|DateTimePeriod (https://www.iso20022.org/standardsrepository/type/DateTimePeriod)|Standard|ISO20022 BM ()
    common:datetimeperiod TermDepositDuration?;
    # Value date of the deposit ISODateTime|ISODateTime (https://www.iso20022.org/standardsrepository/type/ISODateTime)|Standard|ISO20022 BM ()
    common:datetime TermDepositMaturityDate?;
    # Value date of the deposit ISODateTime|ISODateTime (https://www.iso20022.org/standardsrepository/type/ISODateTime)|Standard|ISO20022 BM ()
    common:datetime TermDepositOpenDate?;
    # Reference to the bank of the beneficiary account (BIC) ||
    # |
    common:involvedparty InitialDepositPayerReference?;
    # Name of the beneficiary party Name|Name (https://www.iso20022.org/standardsrepository/type/Name)|Standard|ISO20022 ()
    common:name InitialDepositPayerName?;
    # Reference to the account of the beneficiary party (if in this bank) Account|Account  (https://www.iso20022.org/standardsrepository/type/Account)|Standard|ISO20022 BM ()
    common:Account InitialDepositPayerAccountReference?;
    # Reference to the bank of the beneficiary account (BIC) ||
    # |
    common:involvedparty InitialDepositPayerBankReference?;
    # Principal amount to be paid back CurrencyAndAmount|CurrencyAndAmount (https://www.iso20022.org/standardsrepository/type/CurrencyAndAmount)|Standard|ISO20022  ()
    common:amount InitialDepositAmount?;
    # Value date of the deposit ISODateTime|ISODateTime (https://www.iso20022.org/standardsrepository/type/ISODateTime)|Standard|ISO20022 BM ()
    common:datetime InitialDepositValueDate?;
    # Principal amount to be paid back CurrencyAndAmount|CurrencyAndAmount (https://www.iso20022.org/standardsrepository/type/CurrencyAndAmount)|Standard|ISO20022  ()
    common:amount EarlyTerminationFeeAmount?;
    # Reference to a document in Document Library Document _x000D_
    # |Document (https://www.iso20022.org/standardsrepository/type/Document)|Standard|ISO20022 BM ()
    common:Document EarlyTerminationDocumentReference?;
    # Summary of the content of the document in the Document Library ||
    # |
    common:text EarlyTerminationDocumentSummary?;
    # Reference to the bank of the beneficiary account (BIC) ||
    # |
    common:involvedparty ClosingSettlementPayeeReference?;
    # Name of the beneficiary party Name|Name (https://www.iso20022.org/standardsrepository/type/Name)|Standard|ISO20022 ()
    common:name ClosingSettlementPayeeName?;
    # Reference to the account of the beneficiary party (if in this bank) Account|Account  (https://www.iso20022.org/standardsrepository/type/Account)|Standard|ISO20022 BM ()
    common:Account ClosingSettlementPayeeAccountReference?;
    # External account number of the account of the beneficiary AccountIdentification |AccountIdentification  (https://www.iso20022.org/standardsrepository/type/AccountIdentification)|Standard|ISO20022 BM ()
    common:Accountidentification ClosingSettlementPayeeExternalAccountNumber?;
    # Reference to the bank of the beneficiary account (BIC) ||
    # |
    common:involvedparty ClosingSettlementPayeeBankReference?;
    # Principal amount to be paid back CurrencyAndAmount|CurrencyAndAmount (https://www.iso20022.org/standardsrepository/type/CurrencyAndAmount)|Standard|ISO20022  ()
    common:amount ClosingSettlementAmount?;
    # Payment mechanism, e.g. clearing, internal, SWIFT ||
    # |
    paymentmechanismtypevalues ClosingSettlementPaymentMechanismType?;
    # Reference to the Sales Product Agreement of this Term Deposit ||
    # |
    common:ProductAgreement SalesProductAgreementReference?;
    # This attribute specifies the contract number of the transaction from the sender's viewpoint.  (SWIFT Standard ISO15022/MT320)
    # GenericIdentification|GenericIdentification (https://www.iso20022.org/standardsrepository/type/GenericIdentification)|Standard|ISO20022 BM ()
    common:identifier ContractNumberofPayer?;
    # The associated limit settings and rules Limit|Limit (https://www.iso20022.org/standardsrepository/type/Limit)|Standard|ISO20022 (https://www.iso20022.org/)
    common:Limitarrangement LimitSettings?;
    # The current calculated limit ||
    # |
    common:value LimitValue?;
    # The type of limit  LimitTypeCode|LimitTypeCode (https://www.iso20022.org/standardsrepository/type/LimitTypeCode)|Standard|ISO20022 BM ()
    common:Limittypevalues LimitType?;
};

# Reference to the corporate deposit account product instance ||
# |
public type termdepositagreement record {
    # This attribute specifies the contract number of the transaction from the sender's viewpoint.  (SWIFT Standard ISO15022/MT320)
    # GenericIdentification|GenericIdentification (https://www.iso20022.org/standardsrepository/type/GenericIdentification)|Standard|ISO20022 BM ()
    common:identifier TermDepositAgreementIdentification?;
    # >
    # * `TermDepositAgreement` - 
    # * `TermDepositFrameworkAgreement` - 
    termdepositagreementtypevalues TermDepositAgreementType?;
};

# >
# * `TermDepositAgreement` - 
# * `TermDepositFrameworkAgreement` - 
public type termdepositagreementtypevalues "TermDepositAgreement"|"TermDepositFrameworkAgreement";

public type TermDepositFacilityOk record {|
    *http:Ok;
    TermDepositFacility body;
|};

public type PaymentsOk record {|
    *http:Ok;
    Payments body;
|};

# The product features/services available with a financical facility
public type Payments record {
    # >
    # * `Salarypayment` - Transaction is the payment of salaries.
    # * `Treasurypayment` - Transaction is related to treasury operations.
    # * `Advancepayment` - Transaction is an advance payment.
    # * `Agriculturaltransfer` - Transaction is related to the agricultural domain.
    # * `Alimonypayment` - Transaction is the payment of alimony.
    # * `Childbenefit` - Transaction is related to a payment made to assist parent/guardian to maintain child.
    # * `Unemploymentdisabilitybenefit` - Transaction is related to a payment to a person who is unemployed/disabled.
    # * `Bonuspayment.` - Transaction is related to payment of a bonus.
    # * `Cashmanagementtransfer` - Transaction is a general cash management instruction.
    # * `Capitalbuilding` - Transaction is related to capital building fringe fortune, ie capital building for retirement.
    # * `Charitypayment` - Transaction is a payment for charity reasons.
    # * `Collectionpayment` - Transaction is a collection of funds initiated via a credit transfer or direct debit.
    # * `Commoditytransfer` - Transaction is payment of commodities.
    # * `Commercialpayment` - Transaction is related to a payment of commercial credit or debit. (formerly CommercialCredit).
    # * `Commission` - Transaction is payment of commission.
    # * `Costs` - Transaction is related to payment of costs.
    # * `Copyright` - Transaction is payment of copyright.
    # * `Dividend` - Transaction is payment of dividends.
    # * `Foreignexchange` - Transaction is related to a foreign exchange operation.
    # * `Purchasesaleofgoods` - Transaction is related to purchase and sale of goods.
    # * `Governmentpayment` - Transaction is a payment to or from a government department.
    # * `Instalmenthirepurchaseagreement` - Transaction is payment for an installment/hire-purchase agreement.
    # * `Intracompanypayment` - Transaction is an intra-company payment, ie, a payment between two companies belonging to the same group.
    # * `Insurancepremium` - Transaction is payment of an insurance premium.
    # * `Interest` - Transaction is payment of interest.
    # * `Licensefee` - Transaction is payment of a license fee.
    # * `Loan` - Transaction is related to transfer of loan to borrower.
    # * `Loanrepayment` - Transaction is related to repayment of loan to lender.
    # * `Netting` - Transaction is related to a netting operation.
    # * `Payroll` - Transaction is related to the payment of payroll.
    # * `Pensionpayment` - Transaction is the payment of pension.
    # * `Refund` - Transaction is the payment of a refund.
    # * `Rent` - Transaction is the payment of rent.
    # * `Royalties` - Transaction is the payment of royalties.
    # * `Purchasesaleofservices` - Transaction is related to purchase and sale of services.
    # * `Securities` - Transaction is the payment of securities.
    # * `Socialsecuritybenefit` - Transaction is a social security benefit, ie payment made by a government to support individuals.
    # * `Subscription` - Transaction is related to a payment of information or entertainment services either in printed or electronic form.
    # * `Taxpayment` - Transaction is the payment of taxes.
    # * `Valueaddedtaxpayment` - Transaction is the payment of value added tax.
    # * `Consumerthirdpartyconsolidatedpayment` - Transaction is a payment used by a third party who can collect funds to pay on behalf of consumers, ie credit counseling or bill payment companies.
    # * `Debitcollectionpayment` - Collection of funds initiated via a debit transfer.
    # * `Supplierpayment` - Transaction is related to a payment to a supplier.
    # * `Hedging` - Transaction is related to a hedging operation.
    # * `Multipleservicetypes` - Transaction is related to a payment for multiple service types.
    # * `Nototherwisespecified` - Transaction is related to a payment for type of services not specified elsewhere.
    # * `Cardpayment` - Transaction is related to a payment of credit card account.
    # * `Creditcardbill` - Transaction is related to a payment of credit card bill.
    # * `Ferry` - Transaction is a payment for ferry related business.
    # * `Air` - Transaction is a payment for air transport related business.
    # * `Bus` - Transaction is a payment for bus transport related business.
    # * `Railway` - Transaction is a payment for railway transport related business.
    # * `Convalescentcarefacility` - Transaction is a payment for convalescence care facility services.
    # * `Dentalservices` - Transaction is a payment for dental services.
    # * `Anesthesiaservices` - Transaction is a payment for anesthesia services.
    # * `Homehealthcare` - Transaction is a payment for home health care services.
    # * `Hospitalcare` - Transaction is a payment for hospital care services.
    # * `Intermediatecarefacility` - Transaction is a payment for intermediate care facility services.
    # * `Longtermcarefacility` - Transaction is a payment for long-term care facility services.
    # * `Medicalservices` - Transaction is a payment for medical care services.
    # * `Visioncare` - Transaction is a payment for vision care services.
    # * `Durablemedicaleequipment` - Transaction is a payment is for use of durable medical equipment.
    # * `Cabletvbill` - Transaction is related to a payment of cable TV bill.
    # * `Electricitybill` - Transaction is related to a payment of electricity bill.
    # * `Gasbill` - Transaction is related to a payment of gas bill.
    # * `Telephonebill` - Transaction is related to a payment of telephone bill.
    # * `Othertelecomrelatedbill` - Transaction is related to a payment of other telecom related bill.
    # * `Waterbill` - Transaction is related to a payment of water bill.
    # * `Study` - Transaction is related to a payment of study/tuition costs.
    # * `Pricepayment` - Transaction is related to a payment of a price.
    # * `Installment` - Transaction is related to a payment of an installment.
    # * `Recurringinstallmentpayment` - Transaction is related to a payment of a recurring installment made at regular intervals.
    # * `Openingfee` - Transaction is related to a payment of opening fee.
    # * `Cancellationfee` - Transaction is related to a payment of cancellation fee.
    # * `Governmentinsurance` - Transaction is related to a payment of government insurance.
    # * `Insurancepremiumcar` - Transaction is a payment of car insurance premium.
    # * `Laborinsurance` - Transaction is a payment of labor insurance.
    # * `Lifeinsurance` - Transaction is a payment of life insurance.
    # * `Propertyinsurance` - Transaction is a payment of property insurance.
    # * `Healthinsurance` - Transaction is a payment of health insurance.
    # * `Carloanprincipalrepayment` - Transaction is a payment of car loan principal payment.
    # * `Housingloanrepayment` - Transaction is related to a payment of housing loan.
    # * `Companysocialloanpaymenttobank` - Transaction is a payment by a company to a bank for financing social loans to employees.
    # * `Estatetax` - Transaction is related to a payment of estate tax.
    # * `Housingtax` - Transaction is related to a payment of housing tax.
    # * `Incometax` - Transaction is related to a payment of income tax.
    # * `Netincometax` - Transaction is related to a payment of net income tax.
    # * `Businessexpenses` - Transaction is related to a payment of business expenses.
    # * `Trustfund` - Transaction is related to a payment of a trust fund.
    # * `Networkcharge` - Transaction is related to a payment of network charges.
    # * `Networkcommunication` - Transaction is related to a payment of network communication.
    # * `Receiptpayment` - Transaction is related to a payment of receipt.
    # * `Paymentterms` - Transaction is related to payment terms specifications.
    # * `Other` - Other payment purpose.
    # * `Withholding` - Transaction is related to a payment of withholding tax.
    common:Paymentpurposevalues PaymentTransactionPaymentPurpose?;
    # >
    # * `Acceptedtechnicalvalidation` - Authentication and syntactical and semantical validation are successful.
    # * `Received` - Payment initiation has been received by the receiving agent.
    # * `Partiallyaccepted` - A number of transactions have been accepted, whereas another number of transactions have not yet achieved 'accepted' status.
    # * `Rejected` - Payment initiation or individual transaction included in the payment initiation has been rejected.
    # * `Pending` - Payment initiation or individual transaction included in the payment initiation is pending.  Further checks and status update will be performed.
    # * `Acceptedcustomerprofile` - Preceding check of technical validation was successful. Customer profile check was also successful.
    # * `Acceptedsettlementinprocess` - All preceding checks such as technical validation and customer profile were successful and therefore the payment initiation has been accepted for execution.
    # * `Acceptedsettlementcompleted` - Settlement on the debtor's account has been completed.
    # * `Accepted` - Request is accepted.
    # * `Acceptedcancellationrequest` - Cancellation is accepted.
    # * `Rejectedcancellationrequest` - Cancellation request is rejected
    # * `Acceptedwithchange` - Instruction is accepted but a change will be made, such as date or remittance not sent.
    # * `Partiallyacceptedcancellationrequest` - Cancellation is partially accepted.
    # * `Pendingcancellationrequest` - Cancellation request is pending.
    # * `Acceptedcreditsettlementcompleted` - Settlement on the creditor's account has been completed.
    # * `Paymentcancelled` - Payment is cancelled.
    # * `Nocancellationprocess` - There is no cancellation process ongoing
    common:paymenttransactionstatustypevalues PaymentTransactionStatus?;
    # Definition of the processing option and impact (e.g. frequency and cumulative amount constraints)
    common:paymentprocessingarrangementmodality PaymentProcessinngOptionDefinition?;
    # >
    # * `Cashtransaction` - Transaction is a withdrawal/deposit of cash.
    # * `Domesticpayment` - Payment has an origin and a destination in the same country, and is made in the currency of that country.
    # * `Domestichighvaluepayment` - Transaction is a high value payment that has an origin and a destination in the same country and is made in the currency of that country.
    # * `Domesticprioritypayment` - Transaction is a priority payment that has an origin and a destination in the same country and is made in the currency of that country.
    # * `Crossborderpayment` - Payment has an origin in one country, a destination in another, and is made in the currency of either the origin or destination country.
    # * `Crossborderprioritypayment` - Transaction is a priority payment that has an origin in one country and a destination in another and is made in the currency of either the origin or destination country.
    # * `Crossborderhighvaluepayment` - Transaction is a high value payment that has an origin in one country and a destination in another country and is made in the currency of either the origin or destination country.
    # * `Thirdcurrencypayment` - Transaction is a payment that is made in a third currency to the origin and destination countries. The origin and destination countries may be one and the same country.
    # * `Thirdcurrencyhighvaluepayment` - Transaction is a high value payment that is made in a third currency to the origin and destination countries. The origin and destination countries may be one and the same country.
    # * `Thirdcurrencyprioritypayment` - Payment is made in a third currency to the origin and destination countries. The origin and destination countries may be the same country.
    # * `Tradesettlementpayment` - Transaction is the settlement of a trade, eg, a securities transaction.
    # * `Foreignexchange` - Transaction isthe settlement of a foreign exchange deal.
    # * `Equivalentamount` - Transaction is an equivalent amount relative to a currency conversion.
    # * `Loan` - Transaction is the payment of a specific amount of money lent by a creditor/lender.
    # * `Loanrepayment` - Transaction is an amount of money transferred in repayment of loan.
    # * `Securities` - Transaction is a payment of securities.
    # * `Lockbox` - Transaction is a payment(s) resulting from a lock box service.
    # * `Dividend` - Transaction is a payment of dividends.
    # * `Crossedcheque` - Transaction is a crossed cheque. A crossed check has two parallel lines across its face, indicating that the cheque must be paid into an account and not cashed over the counter.
    # * `Opencheque` - Transaction is an uncrossed cheque that can be cashed at the bank of origin.
    # * `Ordercheque` - Transaction is a cheque made payable to a named recipient 'or order' enabling the creditor to either deposit it in an account or endorse it to a third party, ie, transfer the rights to the cheque by signing it on the reverse.
    # * `Circularcheque` - Transaction is an instruction from a bank to its correspondent bank to pay the creditor a stated sum of money on presentation of a means of identification.
    # * `Travellerscheques` - Transaction is a payment resulting from travellers cheques.
    # * `Bankdraft` - Transaction is a cheque drawn by a bank on itself or its agent. A person who owes money to another buys the draft from a bank for cash and hands it to the creditor who need have no fear that it might be dishonoured.
    # * `Cashletter` - Transaction is a cash letter. A cash letter is a payment instrument in the form of a covering letter, whereby a financial institution, ie, the remitting bank, requests credit for one or more financial documents under usual reserve, ie, subject to final payment.
    # * `Documentarycredit` - Transaction is a documentary credit from one banker to another, authorising the payment of a specified sum of money to the person named in the document, based on specified conditions.
    # * `Billofexchange` - Transaction is a written order from a drawer to a drawee to pay a specified sum of money upon demand, or on a specified date, to the drawer or to a third party specified by the drawer. A bill of exchange is also called a draft.
    # * `Collection` - Transaction is a collection. A collection is the act of sending a cheque, bill of exchange or another financial instrument to the prospective financial institution for payment.
    # * `Cashmanagementtransfer` - Transaction is a general cash management instruction.
    # * `Sweepaccount` - Transaction relates to a cash management instruction, requesting a sweep of the account of the debtor.
    # * `Topaccount` - Transaction is a cash management instruction, requesting to top the account of the debtor above a certain floor amount. The floor amount, if not pre-agreed by the parties involved, may be specified.
    # * `Zerobalanceaccount` - Transaction is a cash management instruction, requesting to zero balance the account of the debtor.
    # * `Standingfacilities` - Payment is linked to overnight deposits and the marginal lending facility.
    # * `Swiftpayservicelevelcredit` - Transaction is a credit transfer to be processed according to the SWIFTPay Service Level.
    # * `Priorityservicelevelcredit` - Transaction is a credit transfer to be processed according to the Priority Service Level.
    # * `Standardservicelevelcredit` - Transaction is a credit transfer to be processed according to the Standard Service Level.
    # * `Liquiditytransfer` - Payment is made to transfer liquidity to/from the settlement account of a member, to/from the current account held at the central institution or any other institution.
    # * `Advancepayment` - Transaction is a payment made in advance or as an advance.
    # * `Valuedateadjustment` - Transaction reverses a previously incorrectly value dated entry.
    # * `Dvpgross` - Gross cash payment offsetting the amount owed/due for a securities transaction settlement.
    # * `Dvpnet` - Net payment offsetting the cash balance due/owed for a series of securities transactions settlement.
    # * `Netting` - Transaction is a netting operation.
    # * `Limitpayment` - Transaction is a payment that is processed when the pool of liquidity exceeds the minimum value reserved for an express payment in the RTGSPlus system.
    # * `Backup` - Payment is made under the recovery procedure to move liquidity to/from the settlement account of a member according to the specifications of the system.
    # * `Expresspayment` - Transaction is a payment that is processed whenever liquidity is available on the settlement account of a member of the RTGSPlus system.
    # * `Centralbankoperation` - Payment is made to settle an operation made with the central bank.
    # * `Clspayment` - Payment is linked to CLS activities.
    # * `Eurodomesticpayment` - Transaction is a credit transfer in Euro with its country of origin and country of destination within the European Union. The origin and destination countries may be one and the same country.
    # * `Agriculturaltransfer` - Transaction is related to the agricultural domain.
    # * `Alimonypayment` - Transaction is a payment(s) made by one spouse to the other after a separation or divorce. An alimony payment may be applied to other family relationships.
    # * `Balanceretail` - Transaction is a payment offsetting the net cash balance owed/due in a retail payment system.
    # * `Bonuspayment.` - Net cash payment offsetting the balance due/owed in a retail payment system.
    # * `Brokeragefee` - Transaction is charges levied by a broker.
    # * `Capitalbuilding` - Transaction is payment into a personal pension scheme for retirement.
    # * `Charitypayment` - Transaction is a payment for charity reasons.
    # * `Childbenefit` - Transaction is a payment made to a parent/guardian to help maintain a child.
    # * `Commercialcredit` - Transaction is settlement of a commercial credit.
    # * `Commission` - Transaction is payment of a fee for executing a transaction.
    # * `Commoditytransfer` - Transaction is a payment of products traded on a commodity exchange.
    # * `Costs` - Transaction is apayment of costs.
    # * `Copyright` - Transaction is a payment of copyright.
    # * `Governmentpayment` - Transaction is apayment to or from a government department.
    # * `Instalmenthirepurchaseagreement` - Transaction is a payment of an instalment or to the settlement of a hire-purchase agreement.
    # * `Insurancepremium` - Transaction is a payment of an insurance premium.
    # * `Intracompanypayment` - Transaction is an intra-company payment, ie, a payment between two companies belonging to the same group.
    # * `Interest` - Transaction is a payment of interest.
    # * `Licensefee` - Transaction is a payment of a license fee.
    # * `Metals` - Transaction is a purchase or sale of metals.
    # * `Pensionpayment` - Transaction is a payment of a pension allowance.
    # * `Purchasesaleofgoods` - Transaction is a payment for the purchase and sale of goods.
    # * `Refund` - Transaction is a repayment of funds.
    # * `Rent` - Transaction is a payment of rent.
    # * `Royalties` - Transaction is a payment of royalties.
    # * `Purchasesaleofservices` - Transaction is a payment for the purchase and sale of services.
    # * `Salarypayment` - Transaction is a payment of salaries.
    # * `Socialsecuritybenefit` - Transaction is a social security benefit, a payment made by a government to support individuals.
    # * `Standingorder` - Transaction is a standing order. A standing order is an instruction given by a party having explicit authority on the account to debit, ie, either debit account owner or originating party, to a first agent to process cash transfers at specified intervals during an implicit or explicit period of time. It is given once, and is valid for an open or closed period of time.
    # * `Subscription` - Transaction is a payment of a subscription.
    # * `Treasurystatepayment` - Payment is linked to the Treasury State.
    # * `Unemploymentdisabilitybenefit` - Transaction is a payment made to an unemployed/disabled person.
    # * `Valueaddedtaxpayment` - Transaction is apayment of value added tax.
    # * `Withholdingtax` - Transaction is a payment of withholding tax.
    # * `Taxpayment` - Transaction is a payment of taxes.
    # * `Miscellaneous` - Transaction is for an unspecified reason. Miscellaneous is to be used only when no explicit code is available.
    # * `Overnightdeposit` - Transaction is linked to an overnight deposit.
    # * `Marginallending` - Transaction is linked to the marginal lending facility.
    # * `Other` - Specifies that a proprietary code must be indicated.
    # * `Upfront` - Transaction is an initial payment made by one of the counterparties  either to bring a transaction to fair value or for any other reason that may be the cause of an off-market transaction.
    # * `Unwind` - Transaction is the final settlement payment made when a transaction is unwound prior to its end date or a payment that may result due to the full termination of derivative transaction(s).
    # * `Principalexchange` - Transaction is an exchange of notional values for cross-currency swaps.
    common:Paymenttypevalues PaymentType?;
    # Definition of the processing option and impact (e.g. frequency and cumulative amount constraints)
    common:paymentprocessingarrangementmodality PaymentProcessingOptionSetting?;
    # Summary of the content of the document in the Document Library ||
    # |
    common:text PaymentTransactionPaymentMechanism?;
    # >
    # * `Accountingfee` - Fee paid for accounting services rendered.
    # * `Adrfee` - Charge linked to an ADR (American Depositary Receipt).
    # * `Advisoryfee` - Fee paid for advisory services rendered.
    # * `Airwaybillfee` - Charge is an airway bill fee.
    # * `Backendload` - Sales charge paid by the investor when redeeming an investment such as an investment fund.
    # * `Brokeragefee` - Fee paid to a broker for services provided.
    # * `Clearanceandhandlingatdestination` - Charge is for clearance and handling of goods at destination.
    # * `Clearanceandhandlingatorigin` - Charge is for clearance and handling of goods at origin.
    # * `Collectfreight` - Charge is for the collection of the freight.
    # * `Commission` - Fee paid for services provided.
    # * `Contingencydeferredsalescharge` - Deferred sales charge.
    # * `Correspondentbankcharge` - In investment funds, the charge of the correspondent bank for transferring money.
    # * `Custodyfee` - Fee paid to a custodian in respect of custodial services.
    # * `Dangerousgoodsfee` - Charge is for dangerous goods.
    # * `Dilutionlevy` - In investment funds, a charge payable by the investor covering bid-offer spreads and dealing charges for the underlying investments. The dilution levy is paid to the fund for the benefit of other unit holders.
    # * `Discount` - Charge that has been reduced from the standard initial charge levied by a fund, eg, during a launch period or as negotiated by a funds supermarket / discount broker.
    # * `Equalisation` - The part of an investor's subscription amount that is held by the fund in order to pay incentive or performance fees at the end of the fiscal year.
    # * `Frontendload` - Sales charge paid immediately by the investor when subscribing to an investment such as an investment fund.
    # * `Initial` - Charge paid at the time of the first subscription.
    # * `Insurancepremium` - Charge is a premium for insurance.
    # * `Issuancecancellationfee` - Fee linked to the cancellation of an issuance.
    # * `Issuancefee` - Charge linked to the issuance of security.
    # * `Managementfee` - Fee paid to an investment manager for services. The fee usually includes fund administration costs and investor relationship management. Typically, the amount paid is a percentage of the assets under management.
    # * `Matchingfees` - Fee charged for matching and/or confirmation.
    # * `Miscellaneousfee` - Miscellaneous fee.
    # * `Other` - Another type of charge.
    # * `Packaging` - Charge is for packaging of goods.
    # * `Partacquis` - Portion of charge that the fund is entitled to receive, that cannot be reduced by an intermediary.
    # * `Penalty` - Fee charged to the investor for early redemption of the fund.
    # * `Pickup` - Charge is for pick-up of goods.
    # * `Postagecharge` - Charge paid for the postage.
    # * `Premium` - In investment funds, pre-arranged addition to the trade amount based on the published net asset value.
    # * `Publicationfee` - Fee paid in respect of publications made.
    # * `Regulatoryfee` - Fee charged by a regulatory authority, eg, Securities and Exchange fees.
    # * `Securitycharge` - Charge is for security.
    # * `Serviceprovisionfee` - Fee paid for the provision of financial services.
    # * `Shippingcharge` - Charge for shipping, including the insurance of securities.
    # * `Signatureservice` - Charge is for signature services.
    # * `Specialconcessions` - Charges, drawdown, or other reduction from or in addition to the deal price.
    # * `Speciallyagreedfrontendload` - Specially agreed front-end load.
    # * `Storageatdestination` - Charge is for storage of goods at destination.
    # * `Storageatorigin` - Charge is for storage of goods at origin.
    # * `Switch` - In investment funds, charge related to a switch transaction.
    # * `Transferfee` - In investment funds, a fee charged for the transfer of ownership of an investment fund.
    # * `Transportcharges` - Charge is for transport.
    # * `Ucitscommission` - Charges paid by the investor to the Fund Company for subscription and redemption orders.
    # * `ChequeRelatedFee` - 
    common:feetypevalues PaymentTransactionFeeType?;
    # Geographical location of the device.
    common:location PaymentTransactionBankBranchLocationReference?;
    # Principal amount to be paid back CurrencyAndAmount|CurrencyAndAmount (https://www.iso20022.org/standardsrepository/type/CurrencyAndAmount)|Standard|ISO20022  ()
    common:amount PaymentTransactionFeeCharge?;
    # >
    # * `Cashtransaction` - Transaction is a withdrawal/deposit of cash.
    # * `Domesticpayment` - Payment has an origin and a destination in the same country, and is made in the currency of that country.
    # * `Domestichighvaluepayment` - Transaction is a high value payment that has an origin and a destination in the same country and is made in the currency of that country.
    # * `Domesticprioritypayment` - Transaction is a priority payment that has an origin and a destination in the same country and is made in the currency of that country.
    # * `Crossborderpayment` - Payment has an origin in one country, a destination in another, and is made in the currency of either the origin or destination country.
    # * `Crossborderprioritypayment` - Transaction is a priority payment that has an origin in one country and a destination in another and is made in the currency of either the origin or destination country.
    # * `Crossborderhighvaluepayment` - Transaction is a high value payment that has an origin in one country and a destination in another country and is made in the currency of either the origin or destination country.
    # * `Thirdcurrencypayment` - Transaction is a payment that is made in a third currency to the origin and destination countries. The origin and destination countries may be one and the same country.
    # * `Thirdcurrencyhighvaluepayment` - Transaction is a high value payment that is made in a third currency to the origin and destination countries. The origin and destination countries may be one and the same country.
    # * `Thirdcurrencyprioritypayment` - Payment is made in a third currency to the origin and destination countries. The origin and destination countries may be the same country.
    # * `Tradesettlementpayment` - Transaction is the settlement of a trade, eg, a securities transaction.
    # * `Foreignexchange` - Transaction isthe settlement of a foreign exchange deal.
    # * `Equivalentamount` - Transaction is an equivalent amount relative to a currency conversion.
    # * `Loan` - Transaction is the payment of a specific amount of money lent by a creditor/lender.
    # * `Loanrepayment` - Transaction is an amount of money transferred in repayment of loan.
    # * `Securities` - Transaction is a payment of securities.
    # * `Lockbox` - Transaction is a payment(s) resulting from a lock box service.
    # * `Dividend` - Transaction is a payment of dividends.
    # * `Crossedcheque` - Transaction is a crossed cheque. A crossed check has two parallel lines across its face, indicating that the cheque must be paid into an account and not cashed over the counter.
    # * `Opencheque` - Transaction is an uncrossed cheque that can be cashed at the bank of origin.
    # * `Ordercheque` - Transaction is a cheque made payable to a named recipient 'or order' enabling the creditor to either deposit it in an account or endorse it to a third party, ie, transfer the rights to the cheque by signing it on the reverse.
    # * `Circularcheque` - Transaction is an instruction from a bank to its correspondent bank to pay the creditor a stated sum of money on presentation of a means of identification.
    # * `Travellerscheques` - Transaction is a payment resulting from travellers cheques.
    # * `Bankdraft` - Transaction is a cheque drawn by a bank on itself or its agent. A person who owes money to another buys the draft from a bank for cash and hands it to the creditor who need have no fear that it might be dishonoured.
    # * `Cashletter` - Transaction is a cash letter. A cash letter is a payment instrument in the form of a covering letter, whereby a financial institution, ie, the remitting bank, requests credit for one or more financial documents under usual reserve, ie, subject to final payment.
    # * `Documentarycredit` - Transaction is a documentary credit from one banker to another, authorising the payment of a specified sum of money to the person named in the document, based on specified conditions.
    # * `Billofexchange` - Transaction is a written order from a drawer to a drawee to pay a specified sum of money upon demand, or on a specified date, to the drawer or to a third party specified by the drawer. A bill of exchange is also called a draft.
    # * `Collection` - Transaction is a collection. A collection is the act of sending a cheque, bill of exchange or another financial instrument to the prospective financial institution for payment.
    # * `Cashmanagementtransfer` - Transaction is a general cash management instruction.
    # * `Sweepaccount` - Transaction relates to a cash management instruction, requesting a sweep of the account of the debtor.
    # * `Topaccount` - Transaction is a cash management instruction, requesting to top the account of the debtor above a certain floor amount. The floor amount, if not pre-agreed by the parties involved, may be specified.
    # * `Zerobalanceaccount` - Transaction is a cash management instruction, requesting to zero balance the account of the debtor.
    # * `Standingfacilities` - Payment is linked to overnight deposits and the marginal lending facility.
    # * `Swiftpayservicelevelcredit` - Transaction is a credit transfer to be processed according to the SWIFTPay Service Level.
    # * `Priorityservicelevelcredit` - Transaction is a credit transfer to be processed according to the Priority Service Level.
    # * `Standardservicelevelcredit` - Transaction is a credit transfer to be processed according to the Standard Service Level.
    # * `Liquiditytransfer` - Payment is made to transfer liquidity to/from the settlement account of a member, to/from the current account held at the central institution or any other institution.
    # * `Advancepayment` - Transaction is a payment made in advance or as an advance.
    # * `Valuedateadjustment` - Transaction reverses a previously incorrectly value dated entry.
    # * `Dvpgross` - Gross cash payment offsetting the amount owed/due for a securities transaction settlement.
    # * `Dvpnet` - Net payment offsetting the cash balance due/owed for a series of securities transactions settlement.
    # * `Netting` - Transaction is a netting operation.
    # * `Limitpayment` - Transaction is a payment that is processed when the pool of liquidity exceeds the minimum value reserved for an express payment in the RTGSPlus system.
    # * `Backup` - Payment is made under the recovery procedure to move liquidity to/from the settlement account of a member according to the specifications of the system.
    # * `Expresspayment` - Transaction is a payment that is processed whenever liquidity is available on the settlement account of a member of the RTGSPlus system.
    # * `Centralbankoperation` - Payment is made to settle an operation made with the central bank.
    # * `Clspayment` - Payment is linked to CLS activities.
    # * `Eurodomesticpayment` - Transaction is a credit transfer in Euro with its country of origin and country of destination within the European Union. The origin and destination countries may be one and the same country.
    # * `Agriculturaltransfer` - Transaction is related to the agricultural domain.
    # * `Alimonypayment` - Transaction is a payment(s) made by one spouse to the other after a separation or divorce. An alimony payment may be applied to other family relationships.
    # * `Balanceretail` - Transaction is a payment offsetting the net cash balance owed/due in a retail payment system.
    # * `Bonuspayment.` - Net cash payment offsetting the balance due/owed in a retail payment system.
    # * `Brokeragefee` - Transaction is charges levied by a broker.
    # * `Capitalbuilding` - Transaction is payment into a personal pension scheme for retirement.
    # * `Charitypayment` - Transaction is a payment for charity reasons.
    # * `Childbenefit` - Transaction is a payment made to a parent/guardian to help maintain a child.
    # * `Commercialcredit` - Transaction is settlement of a commercial credit.
    # * `Commission` - Transaction is payment of a fee for executing a transaction.
    # * `Commoditytransfer` - Transaction is a payment of products traded on a commodity exchange.
    # * `Costs` - Transaction is apayment of costs.
    # * `Copyright` - Transaction is a payment of copyright.
    # * `Governmentpayment` - Transaction is apayment to or from a government department.
    # * `Instalmenthirepurchaseagreement` - Transaction is a payment of an instalment or to the settlement of a hire-purchase agreement.
    # * `Insurancepremium` - Transaction is a payment of an insurance premium.
    # * `Intracompanypayment` - Transaction is an intra-company payment, ie, a payment between two companies belonging to the same group.
    # * `Interest` - Transaction is a payment of interest.
    # * `Licensefee` - Transaction is a payment of a license fee.
    # * `Metals` - Transaction is a purchase or sale of metals.
    # * `Pensionpayment` - Transaction is a payment of a pension allowance.
    # * `Purchasesaleofgoods` - Transaction is a payment for the purchase and sale of goods.
    # * `Refund` - Transaction is a repayment of funds.
    # * `Rent` - Transaction is a payment of rent.
    # * `Royalties` - Transaction is a payment of royalties.
    # * `Purchasesaleofservices` - Transaction is a payment for the purchase and sale of services.
    # * `Salarypayment` - Transaction is a payment of salaries.
    # * `Socialsecuritybenefit` - Transaction is a social security benefit, a payment made by a government to support individuals.
    # * `Standingorder` - Transaction is a standing order. A standing order is an instruction given by a party having explicit authority on the account to debit, ie, either debit account owner or originating party, to a first agent to process cash transfers at specified intervals during an implicit or explicit period of time. It is given once, and is valid for an open or closed period of time.
    # * `Subscription` - Transaction is a payment of a subscription.
    # * `Treasurystatepayment` - Payment is linked to the Treasury State.
    # * `Unemploymentdisabilitybenefit` - Transaction is a payment made to an unemployed/disabled person.
    # * `Valueaddedtaxpayment` - Transaction is apayment of value added tax.
    # * `Withholdingtax` - Transaction is a payment of withholding tax.
    # * `Taxpayment` - Transaction is a payment of taxes.
    # * `Miscellaneous` - Transaction is for an unspecified reason. Miscellaneous is to be used only when no explicit code is available.
    # * `Overnightdeposit` - Transaction is linked to an overnight deposit.
    # * `Marginallending` - Transaction is linked to the marginal lending facility.
    # * `Other` - Specifies that a proprietary code must be indicated.
    # * `Upfront` - Transaction is an initial payment made by one of the counterparties  either to bring a transaction to fair value or for any other reason that may be the cause of an off-market transaction.
    # * `Unwind` - Transaction is the final settlement payment made when a transaction is unwound prior to its end date or a payment that may result due to the full termination of derivative transaction(s).
    # * `Principalexchange` - Transaction is an exchange of notional values for cross-currency swaps.
    common:Paymenttypevalues PaymentTransactionType?;
    # Reference to the applicable mandate for direct debits
    common:directdebitmandate DirectDebitMandateReference?;
    # >
    # * `RequestedExecutionDate` - Date at which the initiating party requests the clearing agent to process the payment. ISO20022
    # Usage: This is the date on which the debtor's account is to be debited. If payment by cheque, the date when the cheque must be generated by the bank. 
    # * `AcceptanceDate` - Date and time at which all processing conditions for execution of the payment are met and adequate financial cover is available at the account servicing agent. ISO20022
    # * `CreationDate` - Date and time at which the payment execution was created by the instructing agent. ISO20022
    # * `ValueDate` - Date on which a payment must be executed (ISO20022)
    # * `DueDate` - Due date for the payment. (ISO20022)
    # * `ExpiryDate` - 
    common:Paymentdatetimetypevalues PaymentTransactionDateType?;
    # Reference to the applicable mandate for bill pay transactions
    common:billpaymandate BillPayMandateReference?;
    # Processing settings governing bill pay transactions
    common:billpaymandatefacilityarrangement BilPayMandateSettings?;
    # Reference to the bank of the beneficiary account (BIC) ||
    # |
    common:involvedparty PaymentTransactionPayeeBankReference?;
    # Principal amount to be paid back CurrencyAndAmount|CurrencyAndAmount (https://www.iso20022.org/standardsrepository/type/CurrencyAndAmount)|Standard|ISO20022  ()
    common:amount PaymentTransactionAmount?;
    # The schedule for generating product statements to schedule ||
    # |
    common:schedule PaymentSchedule?;
    # >
    # * `Payer/Debtor` - Party who holds a payment account and allows a payment order from that payment account, or, where there is no payment account, a party who gives a payment order.
    # * `PayeeBank/CreditorAgent` - Financial institution servicing an account for the payee.
    # * `Payee/Creditor` - Party who is the intended recipient of funds which have been the subject of a payment transaction.
    # * `PayerBank/DebtorAgent` - Financial institution servicing an account for the payer.
    # * `Initiator` - Party initiating the payment to an agent.
    # * `PSU` - PSU means a natural or legal person making use of a payment service in the capacity of payer or payee; (PSD)
    # * `PSP` - PSP means a payment service provider falling under any of the categories referred to in Article 1(1) of Directive 2007/64/EC and the legal and natural persons referred to in Article 26 of Directive 2007/64/EC, but excludes the bodies listed in Article 2 of Directive 2006/48/EC of the European Parliament and of the Council of 14 June 2006 relating to the taking up and pursuit of the business of credit institutions ( 1 ) benefiting from a waiver under Article 2(3) of Directive 2007/64/EC; (PSD)
    # * `UltimateDebtor` - Ultimate party that owes an amount of money to the (ultimate) creditor.
    # * `UltimateCreditor` - Ultimate party to which an amount of money is due.
    common:paymentinvolvementtypevalues PaymentInvolvementType?;
    # Summary of the content of the document in the Document Library ||
    # |
    common:text PaymentDefinition?;
    # Configuration setting for various payment transaction types
    common:paymentarrangement PaymentConfiguration?;
    # Processing settings governing direct debits
    common:directdebitmandatearrangement DirectDebitMandateSettings?;
    # Reference to the associated party Party|Party (https://www.iso20022.org/standardsrepository/type/Party)|Standard|ISO20022BM ()
    common:party PaymentInvolvedPartyReference?;
    # Value date of the deposit ISODateTime|ISODateTime (https://www.iso20022.org/standardsrepository/type/ISODateTime)|Standard|ISO20022 BM ()
    common:datetime PaymentTransactionDate?;
    # Reference to the account of the beneficiary party (if in this bank) Account|Account  (https://www.iso20022.org/standardsrepository/type/Account)|Standard|ISO20022 BM ()
    common:Account PaymentTransactionPayeeAccountReference?;
    # Reference to the bank of the beneficiary account (BIC) ||
    # |
    common:involvedparty PaymentTransactionPayeeReference?;
    # Details of the withdrawal transaction
    common:paymenttransaction PaymentTransaction?;
};

# The product features/services available with a financical facility
public type Renewal record {
    # This attribute specifies the contract number of the transaction from the sender's viewpoint.  (SWIFT Standard ISO15022/MT320)
    # GenericIdentification|GenericIdentification (https://www.iso20022.org/standardsrepository/type/GenericIdentification)|Standard|ISO20022 BM ()
    common:identifier NewTermDepositReference?;
    # Reference to a document in Document Library Document _x000D_
    # |Document (https://www.iso20022.org/standardsrepository/type/Document)|Standard|ISO20022 BM ()
    common:Document RenewalDocumentReference?;
    # Summary of the content of the document in the Document Library ||
    # |
    common:text RenewalDocumentSummary?;
};

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
# * `CommercialProfile` - 
# * `KYCProfile` - 
# * `RiskProfile` - 
# * `FinancialProfile` - 
public type partyprofiletypevalues "CommercialProfile"|"KYCProfile"|"RiskProfile"|"FinancialProfile";

public type profile record {
    # A brief description of the characteristics of something or someone. (Business Dictionary)
    string Profile?;
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

# Covers bank and known non-bank managed assets ||
# |
public type customerstatement record {
    # The type of customer statement
    string CustomerStatementType?;
};

# Details of the underwriting decision ||
# |
public type underwritingassessment record {
    # The unique identifier for the underwriting assessment
    common:identifier UnderwritingAssessmentIdentifier?;
};
