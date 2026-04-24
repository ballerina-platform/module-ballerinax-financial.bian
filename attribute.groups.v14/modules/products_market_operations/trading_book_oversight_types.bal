import financial.bian.attribute.groups.common as common;

import ballerina/http;

# The Trading Book Analysis and Reporting Duty is a specific role or responsibility that is one aspect of Trading Book Analysis and Reporting Duty
public type TradingBookRiskMitigation record {
    # The required status/situation before the duty/obligation can be met
    common:condition Preconditions?;
    # Party who is involved in Trading Position Management Plan ||
    # |
    common:involvedparty BusinessUnitorEmployeeReference?;
    # The timing and key actions/milestones involved in fulfilling the duty
    common:schedule Schedule?;
    # The Trading Book Analysis and Reporting Duty specific Business Service
    common:businessservice BusinessService?;
    # The required status/situation before the duty/obligation can be met
    common:condition Postconditions?;
    # An unique reference to an item or an occurrence of Trading Position Management Plan ||
    # |
    common:plan TradingPositionManagementPlanReference?;
    # An action that is arranged in a plan for doing or achieving something 
    common:plannedaction TradingBookRiskMitigationDutyReference?;
    # Documentation of Trading Position Management Plan ||
    # |
    common:text TradingBookRiskMitigationDutyType?;
};

# >
# * `Adjustment` - Balance to be held in the settlement account in order to comply with the average reserve due, in the event that the bank's balance is equal to the reserve due during the remaining days of the maintenance period.
# * `Basecurrency` - Balance representing the amount in the domestic or base accounting currency.
# * `Blocked` - Balance representing the regulatory reserve that a financial institution must have with the account servicing institution, eg, the minimum credit balance a financial institution is to keep with its Central Bank for mandatory reserve purposes. In some countries, a blocked balance is known as a 'reserve' balance.
# * `Blockedfunds` - Balance representing funds that cannot be touched by the account owner.
# * `Daylightoverdraft` - Balance representing the intra day overdraft granted by the Central Bank to financial institutions participating in a RTGS system. This balance may vary over time and shall be offset at the end of the day.
# * `Eligibleassets` - Balance representing the potential loan a Central Bank would make in cash if the collateral is pledged, eg, securities available and eligible as collateral with the Central Bank.
# * `Firmcollateralization` - Balance representing the forecast of the cash-equivalent resulting from evaluation of existing holdings at CSD that are qualified to serve as collateral.
# * `Amountsthathavebeenusedtoserveasfirmcollateral` - Balance representing the cash equivalent resulting from evaluation of existing holdings at CSD that are qualified to serve as collateral and have been used as collateral.
# * `Securitiesforecast` - Balance representing the total of all balance types representing the forecast of transactions to settle, blocked items, custody transactions and corporate actions cash disbursements.
# * `Netfunding` - Balance representing the net amount to be funded resulting from the difference between the total of all transactions with a cash impact and the existing cash coverage.
# * `Intermediate` - Balance representing an intermediate amount such as the opening or closing balance incrementally carried forward from one page to the next in a multi-page statement or report.
# * `Localcurrency` - Balance representing the amount in the local market currency for which the asset is held.
# * `Limitrelated` - Balance of a specific limit value, eg, a bilateral balance is calculated in relation to a given bilateral limit.
# * `Reservedliquidity` - Balance representing the amount that a financial institution has set aside for a specific reason and which is therefore not available. In the context of CSDs, reservation of liquidity made to meet settlement obligations.
# * `Securitiespending` - Balance of securities pending delivery, such as orders to sell securities have been executed but settlement of the open transactions has not been confirmed.
# * `Payinpayout` - Balance representing the fictive amount of automated direct debits or payment based on standing arrangements between the CSD and the user. Usage: Pay-Ins and Pay-Outs can be different based on individual payment instructions or available funds.
# * `Progressiveaverage` - Average of the daily balances on the account used to fulfil the reserve requirements calculated from the beginning of the maintenance period.
# * `Reserve` - Balance representing the regulatory reserve that a financial institution must have with the account servicing institution, eg, the minimum credit balance a financial institution is to keep with its Central Bank for mandatory reserve purposes.
# * `Selfcollateralization` - Balance representing the forecast of the cash-equivalent resulting from evaluation of the net incoming balance of securities qualified to serve as collateral for which settlement instructions are held at.
# * `Amountsthathavebeenusedtoserveasselfcollateral` - Balance representing the cash-equivalent resulting from evaluation of incoming securities, qualified to serve as collateral and actually used as collateral, which have been settled during the settlement process.
# * `Threshold` - Balance representing the amount that will be destined for investment. Difference between available balance and threshold for investment limit.
public type balancesubtypevalues "Adjustment"|"Basecurrency"|"Blocked"|"Blockedfunds"|"Daylightoverdraft"|"Eligibleassets"|"Firmcollateralization"|"Amountsthathavebeenusedtoserveasfirmcollateral"|"Securitiesforecast"|"Netfunding"|"Intermediate"|"Localcurrency"|"Limitrelated"|"Reservedliquidity"|"Securitiespending"|"Payinpayout"|"Progressiveaverage"|"Reserve"|"Selfcollateralization"|"Amountsthathavebeenusedtoserveasselfcollateral"|"Threshold";

# >
# * `Bilateral` - Balance calculated regarding one member in the system. (ISO20022)
# * `Multilateral` - Balance calculated regarding all members in the system. (ISO20022)
public type balancecounterpartytypevalues "Bilateral"|"Multilateral";

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
public type balancetypevalues "OpeningBalance"|"ClosingBalance"|"CurrentBalance"|"AvailableBalance"|"LedgerBalance"|"ReserveBalance"|"FreeBalance"|"PrincipalBalance"|"ClosingAvailable"|"ClosingBooked"|"ForwardAvailable"|"Information"|"InterimAvailable"|"InterimBooked"|"OpeningAvailable"|"OpeningBooked"|"PreviouslyClosedBooked"|"Expected";

# The Trading Book Analysis and Reporting Duty is a specific role or responsibility that is one aspect of Trading Book Analysis and Reporting Duty
public type TradingBookAnalysisandReporting record {
    # The required status/situation before the duty/obligation can be met
    common:condition Preconditions?;
    # Party who is involved in Trading Position Management Plan ||
    # |
    common:involvedparty BusinessUnitorEmployeeReference?;
    # The timing and key actions/milestones involved in fulfilling the duty
    common:schedule Schedule?;
    # The Trading Book Analysis and Reporting Duty specific Business Service
    common:businessservice BusinessService?;
    # The required status/situation before the duty/obligation can be met
    common:condition Postconditions?;
    # An unique reference to an item or an occurrence of Trading Position Management Plan ||
    # |
    common:plan TradingPositionManagementPlanReference?;
    # An action that is arranged in a plan for doing or achieving something 
    common:plannedaction TradingBookAnalysisandReportingDutyReference?;
    # Documentation of Trading Position Management Plan ||
    # |
    common:text TradingBookAnalysisandReportingDutyType?;
};

# Balance of budget which is arranged whitin Trading Position Management Plan Balance|Balance (https://www.iso20022.org/standardsrepository/type/Balance)|Standard|ISO20022 BM ()
public type accountbalance record {
    # Amount of budget which is arranged whitin Trading Position Management Plan CurrencyAndAmount|CurrencyAndAmount (https://www.iso20022.org/standardsrepository/type/CurrencyAndAmount)|Standard|ISO20022  ()
    common:amount BalanceAmount?;
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
    balancetypevalues BalanceType?;
    # The date at which the balance value is applicable.
    common:datetime BalanceValueDate?;
    # >
    # * `Debit` - Transaction is a debt entry
    # * `Credit` - Transaction is a credit entry
    common:debitcreditindicatortvalues BalanceIndicator?;
    # >
    # * `Bilateral` - Balance calculated regarding one member in the system. (ISO20022)
    # * `Multilateral` - Balance calculated regarding all members in the system. (ISO20022)
    balancecounterpartytypevalues BalanceCounterpartyType?;
    # The date at which the balance calculation is performed.
    common:datetime BalanceCalculationDate?;
    # >
    # * `Adjustment` - Balance to be held in the settlement account in order to comply with the average reserve due, in the event that the bank's balance is equal to the reserve due during the remaining days of the maintenance period.
    # * `Basecurrency` - Balance representing the amount in the domestic or base accounting currency.
    # * `Blocked` - Balance representing the regulatory reserve that a financial institution must have with the account servicing institution, eg, the minimum credit balance a financial institution is to keep with its Central Bank for mandatory reserve purposes. In some countries, a blocked balance is known as a 'reserve' balance.
    # * `Blockedfunds` - Balance representing funds that cannot be touched by the account owner.
    # * `Daylightoverdraft` - Balance representing the intra day overdraft granted by the Central Bank to financial institutions participating in a RTGS system. This balance may vary over time and shall be offset at the end of the day.
    # * `Eligibleassets` - Balance representing the potential loan a Central Bank would make in cash if the collateral is pledged, eg, securities available and eligible as collateral with the Central Bank.
    # * `Firmcollateralization` - Balance representing the forecast of the cash-equivalent resulting from evaluation of existing holdings at CSD that are qualified to serve as collateral.
    # * `Amountsthathavebeenusedtoserveasfirmcollateral` - Balance representing the cash equivalent resulting from evaluation of existing holdings at CSD that are qualified to serve as collateral and have been used as collateral.
    # * `Securitiesforecast` - Balance representing the total of all balance types representing the forecast of transactions to settle, blocked items, custody transactions and corporate actions cash disbursements.
    # * `Netfunding` - Balance representing the net amount to be funded resulting from the difference between the total of all transactions with a cash impact and the existing cash coverage.
    # * `Intermediate` - Balance representing an intermediate amount such as the opening or closing balance incrementally carried forward from one page to the next in a multi-page statement or report.
    # * `Localcurrency` - Balance representing the amount in the local market currency for which the asset is held.
    # * `Limitrelated` - Balance of a specific limit value, eg, a bilateral balance is calculated in relation to a given bilateral limit.
    # * `Reservedliquidity` - Balance representing the amount that a financial institution has set aside for a specific reason and which is therefore not available. In the context of CSDs, reservation of liquidity made to meet settlement obligations.
    # * `Securitiespending` - Balance of securities pending delivery, such as orders to sell securities have been executed but settlement of the open transactions has not been confirmed.
    # * `Payinpayout` - Balance representing the fictive amount of automated direct debits or payment based on standing arrangements between the CSD and the user. Usage: Pay-Ins and Pay-Outs can be different based on individual payment instructions or available funds.
    # * `Progressiveaverage` - Average of the daily balances on the account used to fulfil the reserve requirements calculated from the beginning of the maintenance period.
    # * `Reserve` - Balance representing the regulatory reserve that a financial institution must have with the account servicing institution, eg, the minimum credit balance a financial institution is to keep with its Central Bank for mandatory reserve purposes.
    # * `Selfcollateralization` - Balance representing the forecast of the cash-equivalent resulting from evaluation of the net incoming balance of securities qualified to serve as collateral for which settlement instructions are held at.
    # * `Amountsthathavebeenusedtoserveasselfcollateral` - Balance representing the cash-equivalent resulting from evaluation of incoming securities, qualified to serve as collateral and actually used as collateral, which have been settled during the settlement process.
    # * `Threshold` - Balance representing the amount that will be destined for investment. Difference between available balance and threshold for investment limit.
    balancesubtypevalues BalanceSubType?;
};

# Oversee the working of a business unit, assign work, manage against a plan and troubleshoot issues within Trading Book Oversight.
public type TradingPositionManagementPlan record {
    # The type of Trading Position Management Plan ||
    # |
    common:plantype TradingPositionManagementPlanType?;
    # An unique reference to an item or an occurrence of Trading Position Management Plan ||
    # |
    common:plan TradingPositionManagementPlanReference?;
    # A Classification value that distinguishes between Budgets within Trading Position Management Plan according to the type of resource and/or activity that is budgetted ||
    # |
    common:budgettype TradingPositionManagementPlanBudgetType?;
    # Amount of budget which is arranged whitin Trading Position Management Plan CurrencyAndAmount|CurrencyAndAmount (https://www.iso20022.org/standardsrepository/type/CurrencyAndAmount)|Standard|ISO20022  ()
    common:amount TradingPositionManagementPlanBudget?;
    # The assignment of a required activity to a responsibe party in Trading Position Management Plan ||
    # |
    assignment TradingPositionManagementPlanAssignment?;
    # The set of management responsibilities defined in Trading Position Management Plan Obligation|Obligation (https://www.iso20022.org/standardsrepository/type/Obligation)|Standard|ISO20022 BM ()
    common:Arrangement TradingPositionManagementPlanDuty?;
    # Documentation of Trading Position Management Plan ||
    # |
    common:text TradingPositionManagementPlanDescription?;
    # Balance of budget which is arranged whitin Trading Position Management Plan Balance|Balance (https://www.iso20022.org/standardsrepository/type/Balance)|Standard|ISO20022 BM ()
    accountbalance TradingPositionManagementPlanBudgetBalance?;
    # Party who is involved in Trading Position Management Plan ||
    # |
    common:involvedparty TradingPositionManagementPlanAssociatedParty?;
    # The subject matter of Trading Position Management Plan
    string TradingPositionManagementPlanSubjectMatter?;
};

public type TradingPositionManagementPlanOk record {|
    *http:Ok;
    TradingPositionManagementPlan body;
|};

# The assignment of a required activity to a responsibe party in Trading Position Management Plan ||
# |
public type assignment record {
    # Reference to the party assigned to the activity.
    common:party PartyReference?;
    # Role of the party involved in the assignment.
    common:partyrole PartyInvolvement?;
    # Subject matter of the assigned activity.
    string SubjectMatter?;
};
